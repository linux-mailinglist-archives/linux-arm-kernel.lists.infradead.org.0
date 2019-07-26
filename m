Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4646769C2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 15:54:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hHOSnIFTOopmU9IowJ4HhL87hne/LC4EhaVhicL0TYA=; b=s1n94jdo/SNXYxoacWg7sZgnBA
	PugyMDxGFVH0F5/wzqRI2WXyBk7m5tdnU4JVRghVMAh9VKBGH4s8jXgml04YuPKu3Z3J44rooKyCP
	Iie0s9kFZavgYLyenfKeEfj6N+rSKWZR3z2d339AfL4W+OivLeNKhVjqgNOR2rbVWwfUANc9LyHO3
	fGpl/+xRG3wgfCVqHzwJFy9Qzmxcu6chxMyOGE06Hsi01pczGg1rA115AIYnCufZdnX8pMPGXwUIk
	9HpmwYiEJFk8WeXVF3HP0eiJYx9eS4YGhGUdAvuDgVv5Em5usER5/VG46Rb49FyZQ3CeYIh6Gvew4
	9sOCaEYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr0fx-0001Cu-0j; Fri, 26 Jul 2019 13:54:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hr0da-0007Yr-Qb
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 13:52:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A800015A2;
 Fri, 26 Jul 2019 06:51:58 -0700 (PDT)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 6ECD53F694;
 Fri, 26 Jul 2019 06:51:57 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 08/10] firmware: arm_scmi: Add asynchronous sensor read if
 it supports
Date: Fri, 26 Jul 2019 14:51:36 +0100
Message-Id: <20190726135138.9858-9-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190726135138.9858-1-sudeep.holla@arm.com>
References: <20190726135138.9858-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_065159_225255_4CF91731 
X-CRM114-Status: GOOD (  12.78  )
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

SENSOR_DESCRIPTION_GET provides attributes to indicate if the sensor
supports asynchronous read. We can read that flag and use asynchronous
reads for any sensors with that attribute set.

Let's use the new scmi_do_xfer_with_response to support asynchronous
sensor reads.

Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/firmware/arm_scmi/sensors.c | 30 +++++++++++++++++++++--------
 include/linux/scmi_protocol.h       |  2 ++
 2 files changed, 24 insertions(+), 8 deletions(-)

diff --git a/drivers/firmware/arm_scmi/sensors.c b/drivers/firmware/arm_scmi/sensors.c
index 1b5757c77a35..7570308a16a0 100644
--- a/drivers/firmware/arm_scmi/sensors.c
+++ b/drivers/firmware/arm_scmi/sensors.c
@@ -136,9 +136,10 @@ static int scmi_sensor_description_get(const struct scmi_handle *handle,
 		}
 
 		for (cnt = 0; cnt < num_returned; cnt++) {
-			u32 attrh;
+			u32 attrh, attrl;
 			struct scmi_sensor_info *s;
 
+			attrl = le32_to_cpu(buf->desc[cnt].attributes_low);
 			attrh = le32_to_cpu(buf->desc[cnt].attributes_high);
 			s = &si->sensors[desc_index + cnt];
 			s->id = le32_to_cpu(buf->desc[cnt].id);
@@ -147,6 +148,8 @@ static int scmi_sensor_description_get(const struct scmi_handle *handle,
 			/* Sign extend to a full s8 */
 			if (s->scale & SENSOR_SCALE_SIGN)
 				s->scale |= SENSOR_SCALE_EXTEND;
+			s->async = SUPPORTS_ASYNC_READ(attrl);
+			s->num_trip_points = NUM_TRIP_POINTS(attrl);
 			strlcpy(s->name, buf->desc[cnt].name, SCMI_MAX_STR_SIZE);
 		}
 
@@ -214,8 +217,11 @@ static int scmi_sensor_reading_get(const struct scmi_handle *handle,
 				   u32 sensor_id, u64 *value)
 {
 	int ret;
+	__le32 *pval;
 	struct scmi_xfer *t;
 	struct scmi_msg_sensor_reading_get *sensor;
+	struct sensors_info *si = handle->sensor_priv;
+	struct scmi_sensor_info *s = si->sensors + sensor_id;
 
 	ret = scmi_xfer_get_init(handle, SENSOR_READING_GET,
 				 SCMI_PROTOCOL_SENSOR, sizeof(*sensor),
@@ -223,16 +229,24 @@ static int scmi_sensor_reading_get(const struct scmi_handle *handle,
 	if (ret)
 		return ret;
 
+	pval = t->rx.buf;
 	sensor = t->tx.buf;
 	sensor->id = cpu_to_le32(sensor_id);
-	sensor->flags = cpu_to_le32(0);
-
-	ret = scmi_do_xfer(handle, t);
-	if (!ret) {
-		__le32 *pval = t->rx.buf;
 
-		*value = le32_to_cpu(*pval);
-		*value |= (u64)le32_to_cpu(*(pval + 1)) << 32;
+	if (s->async) {
+		sensor->flags = cpu_to_le32(SENSOR_READ_ASYNC);
+		ret = scmi_do_xfer_with_response(handle, t);
+		if (!ret) {
+			*value = le32_to_cpu(*(pval + 1));
+			*value |= (u64)le32_to_cpu(*(pval + 2)) << 32;
+		}
+	} else {
+		sensor->flags = cpu_to_le32(0);
+		ret = scmi_do_xfer(handle, t);
+		if (!ret) {
+			*value = le32_to_cpu(*pval);
+			*value |= (u64)le32_to_cpu(*(pval + 1)) << 32;
+		}
 	}
 
 	scmi_xfer_put(handle, t);
diff --git a/include/linux/scmi_protocol.h b/include/linux/scmi_protocol.h
index 2ace5af210ad..ae7381413f1f 100644
--- a/include/linux/scmi_protocol.h
+++ b/include/linux/scmi_protocol.h
@@ -145,6 +145,8 @@ struct scmi_sensor_info {
 	u32 id;
 	u8 type;
 	s8 scale;
+	u8 num_trip_points;
+	bool async;
 	char name[SCMI_MAX_STR_SIZE];
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
