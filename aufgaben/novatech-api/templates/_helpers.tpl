{{- define "novatech-api.fullname" -}}
{{- .Release.Name }}-{{ .Chart.Name }}
{{- end }}
