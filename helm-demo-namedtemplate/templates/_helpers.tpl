{{- define "helm-demo-namedtemplate.labels"  }}
  labels:
    generator: helm
    date: {{ now | htmlDate }}
    ChartName: {{ .Chart.Name }}
    ChartVersion: {{ .Chart.Version  }}
{{- end }}

{{- define "helm-demo-namedtemplate.redhood" }}
{{- range $key, $val := .Values.RedHood  }}
{{ $key }}: {{ $val }}
{{- end }}
{{- end }}
