Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 408EA200A71
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 15:41:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=A3kFMT7CxnBUpH88V/eqA1wVW6w5i0ZGEjgfBj58jQg=; b=Fjlkmuy6Xfce4+GMHJX/jtul2b
	4zxAvNCguZTJ36JQpidpHEP80k2+F63QL7R30vs97HtynPyz6IVZfPdgmFrFF0hkI4U7tpRk1bUSr
	sUgg+qVuWmynRuGYWD8zEz0c/D7KU+Bw05CVUHbFbkb88FSSwRj5m99oymNcHbZA43OUQXOleDoLc
	mGb360ILchtE+9cabiwvsoG+sIQjmsWyII53B+xhhC12P2pspMGJ5xf/P3NVM0u3q8l72gmIwpl+h
	yzyHIJy7sH4HUPnejEZp+Ico7ctYkGUvQfc10EiJiVQrenlUY+b5n++H1ciG6YVq9mlkrSceMsRsC
	tqRzRe7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmHH6-0007Cq-3G; Fri, 19 Jun 2020 13:41:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmHEV-0002wY-Fj
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 13:39:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EABBF1435;
 Fri, 19 Jun 2020 06:39:02 -0700 (PDT)
Received: from e120937-lin.home (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DAE943F6CF;
 Fri, 19 Jun 2020 06:39:01 -0700 (PDT)
From: Cristian Marussi <cristian.marussi@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v10 7/9] firmware: arm_scmi: Add Sensor notifications support
Date: Fri, 19 Jun 2020 14:38:32 +0100
Message-Id: <20200619133834.18497-8-cristian.marussi@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200619133834.18497-1-cristian.marussi@arm.com>
References: <20200619133834.18497-1-cristian.marussi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_063903_653108_B83D4440 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Jonathan.Cameron@Huawei.com, cristian.marussi@arm.com,
 james.quinlan@broadcom.com, lukasz.luba@arm.com, sudeep.holla@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Make SCMI Sensor protocol register with the notification core.

Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
---
V8 --> V9
- moved pr_info to pr_debug
- removed switch()
- use SCMI_PROTO_QUEUE_SZ
V6 --> V7
- fixed report.timestamp type
- removed trip_point_notify from .sensor_ops
- fixed max_payld_sz initialization
- expose SCMI_EVENT_ in linux/scmi_protocol.h
V5 --> V6
- added handle argument to fill_custom_report()
V4 --> V5
- fixed unsual return construct
V3 --> V4
- scmi_event field renamed
V2 --> V3
- added handle awareness
V1 --> V2
- simplified .set_notify_enabled() implementation moving the ALL_SRCIDs
  logic out of protocol. ALL_SRCIDs logic is now in charge of the
  notification core, together with proper reference counting of enables
- switched to devres protocol-registration
---
 drivers/firmware/arm_scmi/sensors.c | 69 ++++++++++++++++++++++++++---
 include/linux/scmi_protocol.h       | 13 +++---
 2 files changed, 72 insertions(+), 10 deletions(-)

diff --git a/drivers/firmware/arm_scmi/sensors.c b/drivers/firmware/arm_scmi/sensors.c
index db1b1ab303da..f88b3d422f45 100644
--- a/drivers/firmware/arm_scmi/sensors.c
+++ b/drivers/firmware/arm_scmi/sensors.c
@@ -5,7 +5,12 @@
  * Copyright (C) 2018 ARM Ltd.
  */
 
+#define pr_fmt(fmt) "SCMI Notifications SENSOR - " fmt
+
+#include <linux/scmi_protocol.h>
+
 #include "common.h"
+#include "notify.h"
 
 enum scmi_sensor_protocol_cmd {
 	SENSOR_DESCRIPTION_GET = 0x3,
@@ -14,10 +19,6 @@ enum scmi_sensor_protocol_cmd {
 	SENSOR_READING_GET = 0x6,
 };
 
-enum scmi_sensor_protocol_notify {
-	SENSOR_TRIP_POINT_EVENT = 0x0,
-};
-
 struct scmi_msg_resp_sensor_attributes {
 	__le16 num_sensors;
 	u8 max_requests;
@@ -71,6 +72,12 @@ struct scmi_msg_sensor_reading_get {
 #define SENSOR_READ_ASYNC	BIT(0)
 };
 
+struct scmi_sensor_trip_notify_payld {
+	__le32 agent_id;
+	__le32 sensor_id;
+	__le32 trip_point_desc;
+};
+
 struct sensors_info {
 	u32 version;
 	int num_sensors;
@@ -271,11 +278,57 @@ static int scmi_sensor_count_get(const struct scmi_handle *handle)
 static struct scmi_sensor_ops sensor_ops = {
 	.count_get = scmi_sensor_count_get,
 	.info_get = scmi_sensor_info_get,
-	.trip_point_notify = scmi_sensor_trip_point_notify,
 	.trip_point_config = scmi_sensor_trip_point_config,
 	.reading_get = scmi_sensor_reading_get,
 };
 
+static bool scmi_sensor_set_notify_enabled(const struct scmi_handle *handle,
+					   u8 evt_id, u32 src_id, bool enable)
+{
+	int ret;
+
+	ret = scmi_sensor_trip_point_notify(handle, src_id, enable);
+	if (ret)
+		pr_debug("FAIL_ENABLED - evt[%X] dom[%d] - ret:%d\n",
+			 evt_id, src_id, ret);
+
+	return !ret;
+}
+
+static void *scmi_sensor_fill_custom_report(const struct scmi_handle *handle,
+					    u8 evt_id, u64 timestamp,
+					    const void *payld, size_t payld_sz,
+					    void *report, u32 *src_id)
+{
+	const struct scmi_sensor_trip_notify_payld *p = payld;
+	struct scmi_sensor_trip_point_report *r = report;
+
+	if (evt_id != SCMI_EVENT_SENSOR_TRIP_POINT_EVENT ||
+	     sizeof(*p) != payld_sz)
+		return NULL;
+
+	r->timestamp = timestamp;
+	r->agent_id = le32_to_cpu(p->agent_id);
+	r->sensor_id = le32_to_cpu(p->sensor_id);
+	r->trip_point_desc = le32_to_cpu(p->trip_point_desc);
+	*src_id = r->sensor_id;
+
+	return r;
+}
+
+static const struct scmi_event sensor_events[] = {
+	{
+		.id = SCMI_EVENT_SENSOR_TRIP_POINT_EVENT,
+		.max_payld_sz = sizeof(struct scmi_sensor_trip_notify_payld),
+		.max_report_sz = sizeof(struct scmi_sensor_trip_point_report),
+	},
+};
+
+static const struct scmi_event_ops sensor_event_ops = {
+	.set_notify_enabled = scmi_sensor_set_notify_enabled,
+	.fill_custom_report = scmi_sensor_fill_custom_report,
+};
+
 static int scmi_sensors_protocol_init(struct scmi_handle *handle)
 {
 	u32 version;
@@ -299,6 +352,12 @@ static int scmi_sensors_protocol_init(struct scmi_handle *handle)
 
 	scmi_sensor_description_get(handle, sinfo);
 
+	scmi_register_protocol_events(handle,
+				      SCMI_PROTOCOL_SENSOR, SCMI_PROTO_QUEUE_SZ,
+				      &sensor_event_ops, sensor_events,
+				      ARRAY_SIZE(sensor_events),
+				      sinfo->num_sensors);
+
 	sinfo->version = version;
 	handle->sensor_ops = &sensor_ops;
 	handle->sensor_priv = sinfo;
diff --git a/include/linux/scmi_protocol.h b/include/linux/scmi_protocol.h
index 65ad83ddde70..d0ea4a5037e7 100644
--- a/include/linux/scmi_protocol.h
+++ b/include/linux/scmi_protocol.h
@@ -176,18 +176,13 @@ enum scmi_sensor_class {
  *
  * @count_get: get the count of sensors provided by SCMI
  * @info_get: get the information of the specified sensor
- * @trip_point_notify: control notifications on cross-over events for
- *	the trip-points
  * @trip_point_config: selects and configures a trip-point of interest
  * @reading_get: gets the current value of the sensor
  */
 struct scmi_sensor_ops {
 	int (*count_get)(const struct scmi_handle *handle);
-
 	const struct scmi_sensor_info *(*info_get)
 		(const struct scmi_handle *handle, u32 sensor_id);
-	int (*trip_point_notify)(const struct scmi_handle *handle,
-				 u32 sensor_id, bool enable);
 	int (*trip_point_config)(const struct scmi_handle *handle,
 				 u32 sensor_id, u8 trip_id, u64 trip_value);
 	int (*reading_get)(const struct scmi_handle *handle, u32 sensor_id,
@@ -380,6 +375,7 @@ enum scmi_notification_events {
 	SCMI_EVENT_POWER_STATE_CHANGED = 0x0,
 	SCMI_EVENT_PERFORMANCE_LIMITS_CHANGED = 0x0,
 	SCMI_EVENT_PERFORMANCE_LEVEL_CHANGED = 0x1,
+	SCMI_EVENT_SENSOR_TRIP_POINT_EVENT = 0x0,
 };
 
 struct scmi_power_state_changed_report {
@@ -404,4 +400,11 @@ struct scmi_perf_level_report {
 	u32 performance_level;
 };
 
+struct scmi_sensor_trip_point_report {
+	u64 timestamp;
+	u32 agent_id;
+	u32 sensor_id;
+	u32 trip_point_desc;
+};
+
 #endif /* _LINUX_SCMI_PROTOCOL_H */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
