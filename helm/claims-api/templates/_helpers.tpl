{{/*
Expand the name of the chart.
*/}}
{{- define "claims-api.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "claims-api.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "claims-api.labels" -}}
helm.sh/chart: {{ include "claims-api.chart" . }}
{{ include "claims-api.selectorLabels" . }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "claims-api.selectorLabels" -}}
app.kubernetes.io/name: {{ include "claims-api.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}