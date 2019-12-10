Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF41E118BC2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 15:57:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dxUKcK64h+aMJyZSQ8A6qidPK+P1Or5F8P9Q3/wZ26U=; b=PM7W8Hq/IKoAXVQrSI3QSXb4MI
	0Rzitc/UJCJBBpMjks22GDgDfySHwDDGrEPkxRXkKnjqvNfJ4f7LEwYwKEiBFv13v1Z++gUoa/EOy
	dzV/cHoWFN3YQ97y/ZWcpTLczdKkIDOzRehjH7hkfrHSvpUvGuE2kjeBxazRolw+CkvsmmlwR+rGW
	0NfAzRozkgda+vy3yEtprdN/hw84GiHxkZm5gCZtQSPCPPZoPDc87Eo1CPFWurYlTotwy+gR9OtaA
	blUZX2GeO7OvloUTWrtFem25UqBdG9Pj0EeOXXEjMY3K5W++Dhrdwmr9Z50JnFxgElCWRjHdVTuL6
	esW2dDBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iegwt-0001Lh-Cr; Tue, 10 Dec 2019 14:57:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iegtw-000660-Gn
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 14:54:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DF42C13D5;
 Tue, 10 Dec 2019 06:54:11 -0800 (PST)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 3C6303F67D;
 Tue, 10 Dec 2019 06:54:11 -0800 (PST)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 08/15] firmware: arm_scmi: Add and initialise protocol version
 to scmi_device structure
Date: Tue, 10 Dec 2019 14:53:38 +0000
Message-Id: <20191210145345.11616-9-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191210145345.11616-1-sudeep.holla@arm.com>
References: <20191210145345.11616-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_065412_692988_E2C08199 
X-CRM114-Status: GOOD (  12.46  )
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

It's useful to keep track of scmi protocol version in the scmi device
structure along with the protocol id. These can be used to expose the
information to the userspace via bus dev_groups attributes as well.

Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/firmware/arm_scmi/clock.c   | 6 +++++-
 drivers/firmware/arm_scmi/perf.c    | 6 +++++-
 drivers/firmware/arm_scmi/power.c   | 6 +++++-
 drivers/firmware/arm_scmi/reset.c   | 6 +++++-
 drivers/firmware/arm_scmi/sensors.c | 6 +++++-
 include/linux/scmi_protocol.h       | 1 +
 6 files changed, 26 insertions(+), 5 deletions(-)

diff --git a/drivers/firmware/arm_scmi/clock.c b/drivers/firmware/arm_scmi/clock.c
index b567ec03f711..b68736ae7f88 100644
--- a/drivers/firmware/arm_scmi/clock.c
+++ b/drivers/firmware/arm_scmi/clock.c
@@ -318,8 +318,11 @@ static int scmi_clock_protocol_init(struct scmi_device *dev)
 	struct clock_info *cinfo;
 	struct scmi_handle *handle = dev->handle;

-	if (handle->clk_ops && handle->clk_priv)
+	if (handle->clk_ops && handle->clk_priv) {
+		cinfo = handle->clk_priv;
+		dev->version = cinfo->version;
 		return 0; /* initialised already for the first device */
+	}

 	scmi_version_get(handle, SCMI_PROTOCOL_CLOCK, &version);

@@ -345,6 +348,7 @@ static int scmi_clock_protocol_init(struct scmi_device *dev)
 			scmi_clock_describe_rates_get(handle, clkid, clk);
 	}

+	dev->version = version;
 	cinfo->version = version;
 	handle->clk_ops = &clk_ops;
 	handle->clk_priv = cinfo;
diff --git a/drivers/firmware/arm_scmi/perf.c b/drivers/firmware/arm_scmi/perf.c
index b1de6197f61c..8a02dc453894 100644
--- a/drivers/firmware/arm_scmi/perf.c
+++ b/drivers/firmware/arm_scmi/perf.c
@@ -712,8 +712,11 @@ static int scmi_perf_protocol_init(struct scmi_device *dev)
 	struct scmi_perf_info *pinfo;
 	struct scmi_handle *handle = dev->handle;

-	if (handle->perf_ops && handle->perf_priv)
+	if (handle->perf_ops && handle->perf_priv) {
+		pinfo = handle->perf_priv;
+		dev->version = pinfo->version;
 		return 0; /* initialised already for the first device */
+	}

 	scmi_version_get(handle, SCMI_PROTOCOL_PERF, &version);

@@ -741,6 +744,7 @@ static int scmi_perf_protocol_init(struct scmi_device *dev)
 			scmi_perf_domain_init_fc(handle, domain, &dom->fc_info);
 	}

+	dev->version = version;
 	pinfo->version = version;
 	handle->perf_ops = &perf_ops;
 	handle->perf_priv = pinfo;
diff --git a/drivers/firmware/arm_scmi/power.c b/drivers/firmware/arm_scmi/power.c
index d11c6cd6bbab..6267111e38e6 100644
--- a/drivers/firmware/arm_scmi/power.c
+++ b/drivers/firmware/arm_scmi/power.c
@@ -187,8 +187,11 @@ static int scmi_power_protocol_init(struct scmi_device *dev)
 	struct scmi_power_info *pinfo;
 	struct scmi_handle *handle = dev->handle;

-	if (handle->power_ops && handle->power_priv)
+	if (handle->power_ops && handle->power_priv) {
+		pinfo = handle->power_priv;
+		dev->version = pinfo->version;
 		return 0; /* initialised already for the first device */
+	}

 	scmi_version_get(handle, SCMI_PROTOCOL_POWER, &version);

@@ -212,6 +215,7 @@ static int scmi_power_protocol_init(struct scmi_device *dev)
 		scmi_power_domain_attributes_get(handle, domain, dom);
 	}

+	dev->version = version;
 	pinfo->version = version;
 	handle->power_ops = &power_ops;
 	handle->power_priv = pinfo;
diff --git a/drivers/firmware/arm_scmi/reset.c b/drivers/firmware/arm_scmi/reset.c
index dce103781b3f..76f1cee85a06 100644
--- a/drivers/firmware/arm_scmi/reset.c
+++ b/drivers/firmware/arm_scmi/reset.c
@@ -197,8 +197,11 @@ static int scmi_reset_protocol_init(struct scmi_device *dev)
 	struct scmi_reset_info *pinfo;
 	struct scmi_handle *handle = dev->handle;

-	if (handle->reset_ops && handle->reset_priv)
+	if (handle->reset_ops && handle->reset_priv) {
+		pinfo = handle->reset_priv;
+		dev->version = pinfo->version;
 		return 0; /* initialised already for the first device */
+	}

 	scmi_version_get(handle, SCMI_PROTOCOL_RESET, &version);

@@ -222,6 +225,7 @@ static int scmi_reset_protocol_init(struct scmi_device *dev)
 		scmi_reset_domain_attributes_get(handle, domain, dom);
 	}

+	dev->version = version;
 	pinfo->version = version;
 	handle->reset_ops = &reset_ops;
 	handle->reset_priv = pinfo;
diff --git a/drivers/firmware/arm_scmi/sensors.c b/drivers/firmware/arm_scmi/sensors.c
index aac0243e2880..fb3bed4cb171 100644
--- a/drivers/firmware/arm_scmi/sensors.c
+++ b/drivers/firmware/arm_scmi/sensors.c
@@ -278,8 +278,11 @@ static int scmi_sensors_protocol_init(struct scmi_device *dev)
 	struct sensors_info *sinfo;
 	struct scmi_handle *handle = dev->handle;

-	if (handle->sensor_ops && handle->sensor_priv)
+	if (handle->sensor_ops && handle->sensor_priv) {
+		sinfo = handle->sensor_priv;
+		dev->version = sinfo->version;
 		return 0; /* initialised already for the first device */
+	}

 	scmi_version_get(handle, SCMI_PROTOCOL_SENSOR, &version);

@@ -299,6 +302,7 @@ static int scmi_sensors_protocol_init(struct scmi_device *dev)

 	scmi_sensor_description_get(handle, sinfo);

+	dev->version = version;
 	sinfo->version = version;
 	handle->sensor_ops = &sensor_ops;
 	handle->sensor_priv = sinfo;
diff --git a/include/linux/scmi_protocol.h b/include/linux/scmi_protocol.h
index b676825e6eb0..a863bc0cdf28 100644
--- a/include/linux/scmi_protocol.h
+++ b/include/linux/scmi_protocol.h
@@ -256,6 +256,7 @@ enum scmi_std_protocol {

 struct scmi_device {
 	u32 id;
+	u32 version;
 	u8 protocol_id;
 	const char *name;
 	struct device dev;
--
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
