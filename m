Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9701F118BB9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 15:55:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eq87q/AMZD7LFVRelATFgnQixqkXPbOXhG6Ec367kfU=; b=FeiWQoePaa2ZSinh5wfFuCtq7i
	S9tXVCFvrluyeQOdJDbs4LzdachBYd9mZ2xYn3LiGQYLD0HHwQzL6tLmWjcbu0sgOKgC2OExl0l4n
	Big79HnQIUOsotM7zxUF9Xbg/V6iaCxyHKMLzNs5bJSCre3w+mt6tXGAArjYnT0lVcdXxYW3QojN7
	wFfxHwbLlsrO9U7d1xocEipi4vzBgpS4WvS0Jnm/+DkGwU6TqbIs5bKPDOsoSu5VlQzD4ldbz1N8u
	qzdQsfZVaid0S4w0/loCtoDrLPBYPn8/KqkC6/fBS7EhRkbaXn8z30TzRjMvuh4LjV/1bYlgk1knB
	Buqrb11Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iegvP-0008W6-R8; Tue, 10 Dec 2019 14:55:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iegtt-00061t-FG
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 14:54:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7E4F811B3;
 Tue, 10 Dec 2019 06:54:07 -0800 (PST)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id CF7023F67D;
 Tue, 10 Dec 2019 06:54:06 -0800 (PST)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 03/15] firmware: arm_scmi: Skip protocol initialisation for
 additional devices
Date: Tue, 10 Dec 2019 14:53:33 +0000
Message-Id: <20191210145345.11616-4-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191210145345.11616-1-sudeep.holla@arm.com>
References: <20191210145345.11616-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_065409_622691_448BA678 
X-CRM114-Status: UNSURE (   9.19  )
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

The scmi bus now supports adding multiple devices per protocol,
and since scmi_protocol_init is called for each scmi device created,
we must avoid allocating protocol private data and initialising the
protocol itself if it is already initialised.

Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/firmware/arm_scmi/clock.c   | 3 +++
 drivers/firmware/arm_scmi/perf.c    | 3 +++
 drivers/firmware/arm_scmi/power.c   | 3 +++
 drivers/firmware/arm_scmi/reset.c   | 3 +++
 drivers/firmware/arm_scmi/sensors.c | 3 +++
 5 files changed, 15 insertions(+)

diff --git a/drivers/firmware/arm_scmi/clock.c b/drivers/firmware/arm_scmi/clock.c
index 32526a793f3a..922b22aaaf84 100644
--- a/drivers/firmware/arm_scmi/clock.c
+++ b/drivers/firmware/arm_scmi/clock.c
@@ -316,6 +316,9 @@ static int scmi_clock_protocol_init(struct scmi_handle *handle)
 	int clkid, ret;
 	struct clock_info *cinfo;

+	if (handle->clk_ops && handle->clk_priv)
+		return 0; /* initialised already for the first device */
+
 	scmi_version_get(handle, SCMI_PROTOCOL_CLOCK, &version);

 	dev_dbg(handle->dev, "Clock Version %d.%d\n",
diff --git a/drivers/firmware/arm_scmi/perf.c b/drivers/firmware/arm_scmi/perf.c
index 601af4edad5e..55c2a4c21ccb 100644
--- a/drivers/firmware/arm_scmi/perf.c
+++ b/drivers/firmware/arm_scmi/perf.c
@@ -710,6 +710,9 @@ static int scmi_perf_protocol_init(struct scmi_handle *handle)
 	u32 version;
 	struct scmi_perf_info *pinfo;

+	if (handle->perf_ops && handle->perf_priv)
+		return 0; /* initialised already for the first device */
+
 	scmi_version_get(handle, SCMI_PROTOCOL_PERF, &version);

 	dev_dbg(handle->dev, "Performance Version %d.%d\n",
diff --git a/drivers/firmware/arm_scmi/power.c b/drivers/firmware/arm_scmi/power.c
index 5abef7079c0a..9a7593238b8f 100644
--- a/drivers/firmware/arm_scmi/power.c
+++ b/drivers/firmware/arm_scmi/power.c
@@ -185,6 +185,9 @@ static int scmi_power_protocol_init(struct scmi_handle *handle)
 	u32 version;
 	struct scmi_power_info *pinfo;

+	if (handle->power_ops && handle->power_priv)
+		return 0; /* initialised already for the first device */
+
 	scmi_version_get(handle, SCMI_PROTOCOL_POWER, &version);

 	dev_dbg(handle->dev, "Power Version %d.%d\n",
diff --git a/drivers/firmware/arm_scmi/reset.c b/drivers/firmware/arm_scmi/reset.c
index ab42c21c5517..809dc8faee1e 100644
--- a/drivers/firmware/arm_scmi/reset.c
+++ b/drivers/firmware/arm_scmi/reset.c
@@ -195,6 +195,9 @@ static int scmi_reset_protocol_init(struct scmi_handle *handle)
 	u32 version;
 	struct scmi_reset_info *pinfo;

+	if (handle->reset_ops && handle->reset_priv)
+		return 0; /* initialised already for the first device */
+
 	scmi_version_get(handle, SCMI_PROTOCOL_RESET, &version);

 	dev_dbg(handle->dev, "Reset Version %d.%d\n",
diff --git a/drivers/firmware/arm_scmi/sensors.c b/drivers/firmware/arm_scmi/sensors.c
index a400ea805fc2..b7f92c37c8a4 100644
--- a/drivers/firmware/arm_scmi/sensors.c
+++ b/drivers/firmware/arm_scmi/sensors.c
@@ -276,6 +276,9 @@ static int scmi_sensors_protocol_init(struct scmi_handle *handle)
 	u32 version;
 	struct sensors_info *sinfo;

+	if (handle->sensor_ops && handle->sensor_priv)
+		return 0; /* initialised already for the first device */
+
 	scmi_version_get(handle, SCMI_PROTOCOL_SENSOR, &version);

 	dev_dbg(handle->dev, "Sensor Version %d.%d\n",
--
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
