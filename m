Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BCD7768BF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 15:47:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2dyqGYYgP2v1/jXzwviSpfG8QBtuKQy9bGAFITqMpGI=; b=nHCgn+rLkTQTNs25wWhSl2Oifx
	uCmyHKYyVJ1C/Td2Fyx4TP7ssBNKjwevKGxMRZIrJvwCGSw4FZvG+bPapp34gmzydebiQZe+bo2bn
	WMGGxRoQddF+IcnuBlPqpg2FUhhyN4RIyWTEsIXHjiqmEUi9tkZGJFDFkAOstCDIOO3A0ist3Kogz
	UgJJOkXq2RFaQuNG+Auw3L++nlW7Dz1N5m4Jcr/BulrYzsUWSNjUJu3ewKsfBP0oU5XoH3H5Bl8ms
	N+ARRuT/iFSet4gDrd1T0KoVv7EBBOUQHs8ZCplnc7X4kKCZ5EtJ9eNwQ8shSnbpV+jHqNk54lcHs
	S84zUKRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr0Yk-0003pD-6H; Fri, 26 Jul 2019 13:46:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hr0Xv-0003Gb-GJ
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 13:46:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1756015BF;
 Fri, 26 Jul 2019 06:46:07 -0700 (PDT)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id D1F893F694;
 Fri, 26 Jul 2019 06:46:05 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 2/6] firmware: arm_scmi: Align few names in sensors
 protocol with SCMI specification
Date: Fri, 26 Jul 2019 14:45:27 +0100
Message-Id: <20190726134531.8928-3-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190726134531.8928-1-sudeep.holla@arm.com>
References: <20190726134531.8928-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_064607_666984_4725879E 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Peng Fan <peng.fan@nxp.com>, Etienne Carriere <etienne.carriere@linaro.org>,
 linux-kernel@vger.kernel.org, Bo Zhang <bozhang.zhang@broadcom.com>,
 Jim Quinlan <james.quinlan@broadcom.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Gaku Inami <gaku.inami.xh@renesas.com>,
 Volodymyr Babchuk <volodymyr_babchuk@epam.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Looks like more code developed during the draft versions of the
specification slipped through and they don't match the final
released version. This seem to have happened only with sensor
protocol.

Renaming few command and function names here to match exactly with
the released version of SCMI specification for ease of maintenance.

Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/firmware/arm_scmi/sensors.c | 28 +++++++++++++++-------------
 include/linux/scmi_protocol.h       | 12 ++++++------
 2 files changed, 21 insertions(+), 19 deletions(-)

diff --git a/drivers/firmware/arm_scmi/sensors.c b/drivers/firmware/arm_scmi/sensors.c
index 0e94ab56f679..17dbabd8a94a 100644
--- a/drivers/firmware/arm_scmi/sensors.c
+++ b/drivers/firmware/arm_scmi/sensors.c
@@ -9,8 +9,8 @@
 
 enum scmi_sensor_protocol_cmd {
 	SENSOR_DESCRIPTION_GET = 0x3,
-	SENSOR_CONFIG_SET = 0x4,
-	SENSOR_TRIP_POINT_SET = 0x5,
+	SENSOR_TRIP_POINT_NOTIFY = 0x4,
+	SENSOR_TRIP_POINT_CONFIG = 0x5,
 	SENSOR_READING_GET = 0x6,
 };
 
@@ -42,9 +42,10 @@ struct scmi_msg_resp_sensor_description {
 	} desc[0];
 };
 
-struct scmi_msg_set_sensor_config {
+struct scmi_msg_sensor_trip_point_notify {
 	__le32 id;
 	__le32 event_control;
+#define SENSOR_TP_NOTIFY_ALL	BIT(0)
 };
 
 struct scmi_msg_set_sensor_trip_point {
@@ -160,15 +161,15 @@ static int scmi_sensor_description_get(const struct scmi_handle *handle,
 	return ret;
 }
 
-static int
-scmi_sensor_configuration_set(const struct scmi_handle *handle, u32 sensor_id)
+static int scmi_sensor_trip_point_notify(const struct scmi_handle *handle,
+					 u32 sensor_id, bool enable)
 {
 	int ret;
-	u32 evt_cntl = BIT(0);
+	u32 evt_cntl = enable ? SENSOR_TP_NOTIFY_ALL : 0;
 	struct scmi_xfer *t;
-	struct scmi_msg_set_sensor_config *cfg;
+	struct scmi_msg_sensor_trip_point_notify *cfg;
 
-	ret = scmi_xfer_get_init(handle, SENSOR_CONFIG_SET,
+	ret = scmi_xfer_get_init(handle, SENSOR_TRIP_POINT_NOTIFY,
 				 SCMI_PROTOCOL_SENSOR, sizeof(*cfg), 0, &t);
 	if (ret)
 		return ret;
@@ -183,15 +184,16 @@ scmi_sensor_configuration_set(const struct scmi_handle *handle, u32 sensor_id)
 	return ret;
 }
 
-static int scmi_sensor_trip_point_set(const struct scmi_handle *handle,
-				      u32 sensor_id, u8 trip_id, u64 trip_value)
+static int
+scmi_sensor_trip_point_config(const struct scmi_handle *handle, u32 sensor_id,
+			      u8 trip_id, u64 trip_value)
 {
 	int ret;
 	u32 evt_cntl = SENSOR_TP_BOTH;
 	struct scmi_xfer *t;
 	struct scmi_msg_set_sensor_trip_point *trip;
 
-	ret = scmi_xfer_get_init(handle, SENSOR_TRIP_POINT_SET,
+	ret = scmi_xfer_get_init(handle, SENSOR_TRIP_POINT_CONFIG,
 				 SCMI_PROTOCOL_SENSOR, sizeof(*trip), 0, &t);
 	if (ret)
 		return ret;
@@ -255,8 +257,8 @@ static int scmi_sensor_count_get(const struct scmi_handle *handle)
 static struct scmi_sensor_ops sensor_ops = {
 	.count_get = scmi_sensor_count_get,
 	.info_get = scmi_sensor_info_get,
-	.configuration_set = scmi_sensor_configuration_set,
-	.trip_point_set = scmi_sensor_trip_point_set,
+	.trip_point_notify = scmi_sensor_trip_point_notify,
+	.trip_point_config = scmi_sensor_trip_point_config,
 	.reading_get = scmi_sensor_reading_get,
 };
 
diff --git a/include/linux/scmi_protocol.h b/include/linux/scmi_protocol.h
index aa1e791779b4..1383d47e6435 100644
--- a/include/linux/scmi_protocol.h
+++ b/include/linux/scmi_protocol.h
@@ -167,9 +167,9 @@ enum scmi_sensor_class {
  *
  * @count_get: get the count of sensors provided by SCMI
  * @info_get: get the information of the specified sensor
- * @configuration_set: control notifications on cross-over events for
+ * @trip_point_notify: control notifications on cross-over events for
  *	the trip-points
- * @trip_point_set: selects and configures a trip-point of interest
+ * @trip_point_config: selects and configures a trip-point of interest
  * @reading_get: gets the current value of the sensor
  */
 struct scmi_sensor_ops {
@@ -177,10 +177,10 @@ struct scmi_sensor_ops {
 
 	const struct scmi_sensor_info *(*info_get)
 		(const struct scmi_handle *handle, u32 sensor_id);
-	int (*configuration_set)(const struct scmi_handle *handle,
-				 u32 sensor_id);
-	int (*trip_point_set)(const struct scmi_handle *handle, u32 sensor_id,
-			      u8 trip_id, u64 trip_value);
+	int (*trip_point_notify)(const struct scmi_handle *handle,
+				 u32 sensor_id, bool enable);
+	int (*trip_point_config)(const struct scmi_handle *handle,
+				 u32 sensor_id, u8 trip_id, u64 trip_value);
 	int (*reading_get)(const struct scmi_handle *handle, u32 sensor_id,
 			   bool async, u64 *value);
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
