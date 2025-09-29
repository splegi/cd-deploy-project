{{- define "flask-hello.fullname" -}}
{{ include "flask-hello.name" . }}
{{- end }}

{{- define "flask-hello.name" -}}
{{ .Chart.Name }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "flask-hello.labels" -}}
app.kubernetes.io/name: {{ include "flask-hello.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}
{{- end }}
