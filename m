Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 497D1118BC7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 15:58:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=R/+XCUNenaI8sLNzYvUBRHhsyUM5ioSXJEcsQdoOX0A=; b=WOrsQDLnM8pj6JC8n3JISYHPKA
	SFgaWxh+Dbsb3JaHntEDEW2l9om/Mb6qMnT6PBLGlEkJ2nJ7eYcBEzrpOFhzEizOFVdpE6uxDCL8V
	rXpji+MJ2ydT7NSgXi8NBmOWydOLqhU+ang6MiacicQ6D+uDezjE4dJ0NcXberIG0r6YThaUcoAnl
	nEtd1BcIzuRpoEs53/v95RTPlUj1vuchJN4ZUZG32w4ufok98BlXPINRGTD5N/QUxS3uP4e5L3jp7
	dFYRTnZJw/CEGCjrcJDL2aTvY8Egk9y/WWZomOVY3WAsFoinSbMC/A/jH9cc8k2H8R0tYlJTcPcKi
	9otPD0pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iegxd-0001tO-N4; Tue, 10 Dec 2019 14:58:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iegtx-00064B-VU
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 14:54:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A394511B3;
 Tue, 10 Dec 2019 06:54:13 -0800 (PST)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 00CA03F67D;
 Tue, 10 Dec 2019 06:54:12 -0800 (PST)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 10/15] firmware: arm_scmi: Drop logging individual scmi
 protocol version
Date: Tue, 10 Dec 2019 14:53:40 +0000
Message-Id: <20191210145345.11616-11-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191210145345.11616-1-sudeep.holla@arm.com>
References: <20191210145345.11616-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_065414_126906_6AD902FF 
X-CRM114-Status: UNSURE (   7.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Cristian Marussi <cristian.marussi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SCMI firmware and individual protocol versions and other attributes are
now exposed as device attributes through sysfs entries. These debug logs
can be dropped as the same information is available through sysfs.

Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/firmware/arm_scmi/clock.c   | 3 ---
 drivers/firmware/arm_scmi/perf.c    | 3 ---
 drivers/firmware/arm_scmi/power.c   | 3 ---
 drivers/firmware/arm_scmi/reset.c   | 3 ---
 drivers/firmware/arm_scmi/sensors.c | 3 ---
 5 files changed, 15 deletions(-)

diff --git a/drivers/firmware/arm_scmi/clock.c b/drivers/firmware/arm_scmi/clock.c
index b68736ae7f88..ce8cbefb0aa6 100644
--- a/drivers/firmware/arm_scmi/clock.c
+++ b/drivers/firmware/arm_scmi/clock.c
@@ -326,9 +326,6 @@ static int scmi_clock_protocol_init(struct scmi_device *dev)

 	scmi_version_get(handle, SCMI_PROTOCOL_CLOCK, &version);

-	dev_dbg(handle->dev, "Clock Version %d.%d\n",
-		PROTOCOL_REV_MAJOR(version), PROTOCOL_REV_MINOR(version));
-
 	cinfo = devm_kzalloc(handle->dev, sizeof(*cinfo), GFP_KERNEL);
 	if (!cinfo)
 		return -ENOMEM;
diff --git a/drivers/firmware/arm_scmi/perf.c b/drivers/firmware/arm_scmi/perf.c
index 8a02dc453894..2ad3bc792692 100644
--- a/drivers/firmware/arm_scmi/perf.c
+++ b/drivers/firmware/arm_scmi/perf.c
@@ -720,9 +720,6 @@ static int scmi_perf_protocol_init(struct scmi_device *dev)

 	scmi_version_get(handle, SCMI_PROTOCOL_PERF, &version);

-	dev_dbg(handle->dev, "Performance Version %d.%d\n",
-		PROTOCOL_REV_MAJOR(version), PROTOCOL_REV_MINOR(version));
-
 	pinfo = devm_kzalloc(handle->dev, sizeof(*pinfo), GFP_KERNEL);
 	if (!pinfo)
 		return -ENOMEM;
diff --git a/drivers/firmware/arm_scmi/power.c b/drivers/firmware/arm_scmi/power.c
index 6267111e38e6..29d72fa7d085 100644
--- a/drivers/firmware/arm_scmi/power.c
+++ b/drivers/firmware/arm_scmi/power.c
@@ -195,9 +195,6 @@ static int scmi_power_protocol_init(struct scmi_device *dev)

 	scmi_version_get(handle, SCMI_PROTOCOL_POWER, &version);

-	dev_dbg(handle->dev, "Power Version %d.%d\n",
-		PROTOCOL_REV_MAJOR(version), PROTOCOL_REV_MINOR(version));
-
 	pinfo = devm_kzalloc(handle->dev, sizeof(*pinfo), GFP_KERNEL);
 	if (!pinfo)
 		return -ENOMEM;
diff --git a/drivers/firmware/arm_scmi/reset.c b/drivers/firmware/arm_scmi/reset.c
index 76f1cee85a06..a49155628ccf 100644
--- a/drivers/firmware/arm_scmi/reset.c
+++ b/drivers/firmware/arm_scmi/reset.c
@@ -205,9 +205,6 @@ static int scmi_reset_protocol_init(struct scmi_device *dev)

 	scmi_version_get(handle, SCMI_PROTOCOL_RESET, &version);

-	dev_dbg(handle->dev, "Reset Version %d.%d\n",
-		PROTOCOL_REV_MAJOR(version), PROTOCOL_REV_MINOR(version));
-
 	pinfo = devm_kzalloc(handle->dev, sizeof(*pinfo), GFP_KERNEL);
 	if (!pinfo)
 		return -ENOMEM;
diff --git a/drivers/firmware/arm_scmi/sensors.c b/drivers/firmware/arm_scmi/sensors.c
index fb3bed4cb171..61e12f2fb587 100644
--- a/drivers/firmware/arm_scmi/sensors.c
+++ b/drivers/firmware/arm_scmi/sensors.c
@@ -286,9 +286,6 @@ static int scmi_sensors_protocol_init(struct scmi_device *dev)

 	scmi_version_get(handle, SCMI_PROTOCOL_SENSOR, &version);

-	dev_dbg(handle->dev, "Sensor Version %d.%d\n",
-		PROTOCOL_REV_MAJOR(version), PROTOCOL_REV_MINOR(version));
-
 	sinfo = devm_kzalloc(handle->dev, sizeof(*sinfo), GFP_KERNEL);
 	if (!sinfo)
 		return -ENOMEM;
--
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
