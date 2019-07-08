Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23C0F62557
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 17:50:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mt0NkpcR/FVm1XLf1Zkp7faZy7r4cdlpnAI07Es5Kbo=; b=gHcYrkkmM3AYFwJ23AMly/ZDpu
	1aufFWQT9RuKTrSCUx1Ko9kvJobW2kDHnhPxK6QElfYQk5k/e3+xChwXxgrNN89mAE/vfS1hN8AmC
	NR5HLN0kFR/KbteLWmJK0X7bhOcMJh6mk6klk1emdM9MUWTuDclzMq6NWONabbzGGi3tarlQYJ9KZ
	9n8b/FnXJ6NmYozBiLjysVqrgqbJfrt5WAfKy1kqeIpcUSJAAMAXgBBCt6DkC6Nm+3RetCzhWZWFP
	yw4ITXSD12BpSEkG8TYan+CeFzNCuhEvTDxDwE+bTOeC9DcCd0u8pB8ukTFwNhab00RVHaXlGgMkw
	KIdb9UVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkVuN-00072D-Fw; Mon, 08 Jul 2019 15:50:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hkVrr-00048A-G8
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 15:47:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5BF301516;
 Mon,  8 Jul 2019 08:47:51 -0700 (PDT)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 22E9F3F59C;
 Mon,  8 Jul 2019 08:47:50 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 08/11] firmware: arm_scmi: Drop async flag in
 sensor_ops->reading_get
Date: Mon,  8 Jul 2019 16:47:27 +0100
Message-Id: <20190708154730.16643-9-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190708154730.16643-1-sudeep.holla@arm.com>
References: <20190708154730.16643-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_084751_638562_7E585BE9 
X-CRM114-Status: GOOD (  12.98  )
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
Cc: linux-hwmon@vger.kernel.org, Peng Fan <peng.fan@nxp.com>,
 linux-kernel@vger.kernel.org, Bo Zhang <bozhang.zhang@broadcom.com>,
 Jim Quinlan <james.quinlan@broadcom.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Volodymyr Babchuk <volodymyr_babchuk@epam.com>,
 Guenter Roeck <linux@roeck-us.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SENSOR_DESCRIPTION_GET provides attributes to indicate if the sensor
supports asynchronous read. Ideally we should be able to read that flag
and use asynchronous reads for any sensors with that attribute set.

In order to add that support, let's drop the async flag passed to
sensor_ops->reading_get and dynamically switch between sync and async
flags based on the attributes as provided by the firmware.

Cc: Guenter Roeck <linux@roeck-us.net>
Cc: linux-hwmon@vger.kernel.org
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/firmware/arm_scmi/sensors.c | 4 ++--
 drivers/hwmon/scmi-hwmon.c          | 2 +-
 include/linux/scmi_protocol.h       | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/firmware/arm_scmi/sensors.c b/drivers/firmware/arm_scmi/sensors.c
index 17dbabd8a94a..1b5757c77a35 100644
--- a/drivers/firmware/arm_scmi/sensors.c
+++ b/drivers/firmware/arm_scmi/sensors.c
@@ -211,7 +211,7 @@ scmi_sensor_trip_point_config(const struct scmi_handle *handle, u32 sensor_id,
 }
 
 static int scmi_sensor_reading_get(const struct scmi_handle *handle,
-				   u32 sensor_id, bool async, u64 *value)
+				   u32 sensor_id, u64 *value)
 {
 	int ret;
 	struct scmi_xfer *t;
@@ -225,7 +225,7 @@ static int scmi_sensor_reading_get(const struct scmi_handle *handle,
 
 	sensor = t->tx.buf;
 	sensor->id = cpu_to_le32(sensor_id);
-	sensor->flags = cpu_to_le32(async ? SENSOR_READ_ASYNC : 0);
+	sensor->flags = cpu_to_le32(0);
 
 	ret = scmi_do_xfer(handle, t);
 	if (!ret) {
diff --git a/drivers/hwmon/scmi-hwmon.c b/drivers/hwmon/scmi-hwmon.c
index 0c93fc5ca762..8a7732c0bef3 100644
--- a/drivers/hwmon/scmi-hwmon.c
+++ b/drivers/hwmon/scmi-hwmon.c
@@ -72,7 +72,7 @@ static int scmi_hwmon_read(struct device *dev, enum hwmon_sensor_types type,
 	const struct scmi_handle *h = scmi_sensors->handle;
 
 	sensor = *(scmi_sensors->info[type] + channel);
-	ret = h->sensor_ops->reading_get(h, sensor->id, false, &value);
+	ret = h->sensor_ops->reading_get(h, sensor->id, &value);
 	if (ret)
 		return ret;
 
diff --git a/include/linux/scmi_protocol.h b/include/linux/scmi_protocol.h
index ea6b72018752..697e30fb9004 100644
--- a/include/linux/scmi_protocol.h
+++ b/include/linux/scmi_protocol.h
@@ -182,7 +182,7 @@ struct scmi_sensor_ops {
 	int (*trip_point_config)(const struct scmi_handle *handle,
 				 u32 sensor_id, u8 trip_id, u64 trip_value);
 	int (*reading_get)(const struct scmi_handle *handle, u32 sensor_id,
-			   bool async, u64 *value);
+			   u64 *value);
 };
 
 /**
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
