Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 456E71E9FBC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 10:03:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NSUNpoCA0UuNAKMLMiMaRzYOOnGChvAx+jjLProES38=; b=OpKvDAGV9CTdF4
	uYiHhE8MTPPeUqyqOrWOhGbBTzszhtJgJMZWbdE/rO3Rnd3WNSaC4ucb1+YpgORJ1ENzzVeytDAfu
	9mbwRrFrKjEgUYgae8EHvsS0kwa+qAd1rUDphTqRafDsu7D6dAHM5GG9h0podvNyRLfYD6Z78KAYm
	DE5wVP7gACsRqAcrKI0d9hHwTMMCPbcl9qEth5uAjp0ZP85zfr/zu06VcwFBlI16GUD/U+ZWps3c2
	LvmAjaRwzMmlwkargStyTk/HawJ1IxIzEq1mlD/B/EgjAyWyS0xtdNIgZ7qUjdTaO44itwYPtPF4j
	QARUHObK+ruz0Sk9PUYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jffPi-0008GJ-SG; Mon, 01 Jun 2020 08:03:18 +0000
Received: from m43-7.mailgun.net ([69.72.43.7])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jffPG-0007u4-Tp
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 08:02:52 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1590998570; h=Content-Transfer-Encoding: MIME-Version:
 References: In-Reply-To: Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=LEKS/74F7RefcDNr/l7WbEzdVIxJuTzSqOTKEqUX2tg=;
 b=MJN0K0Dtg8SDx3uPARn2qoWLCtaVfLWAdJ0+zFf+WVk2+6vaHkxR0mQXBHvXlZanK/+23d6K
 tinL4+I48/+rHe1taOFExVEYtmTg3xzMsPkP5ZxGvNMPsird2F09KSYslbArprCFLQ92r945
 6zvI5GspUZ8RDtXlZFAO8bCIjnE=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n10.prod.us-east-1.postgun.com with SMTP id
 5ed4b62ac0031c71c21eb909 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Mon, 01 Jun 2020 08:02:50
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 8D11EC433BA; Mon,  1 Jun 2020 08:02:49 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from blr-ubuntu-253.qualcomm.com
 (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 65BDFC433AD;
 Mon,  1 Jun 2020 08:02:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 65BDFC433AD
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mike Leach <mike.leach@linaro.org>
Subject: [PATCH 2/2] coresight: tmc: Add shutdown callback for TMC ETR/ETF
Date: Mon,  1 Jun 2020 13:32:26 +0530
Message-Id: <28123d1e19f235f97555ee36a5ed8b52d20cbdea.1590947174.git.saiprakash.ranjan@codeaurora.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <cover.1590947174.git.saiprakash.ranjan@codeaurora.org>
References: <cover.1590947174.git.saiprakash.ranjan@codeaurora.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_010251_025844_60FA7F90 
X-CRM114-Status: GOOD (  17.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [69.72.43.7 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [69.72.43.7 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 linux-arm-msm@vger.kernel.org, coresight@lists.linaro.org,
 linux-kernel@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Implement a shutdown callback to ensure ETR/ETF hardware is
properly shutdown in reboot/shutdown path. This is required
for ETR/ETF which has SMMU address translation enabled like
on SC7180 SoC and few others. If the hardware is still accessing
memory after SMMU translation is disabled as part of SMMU
shutdown callback in system reboot or shutdown path, then
IOVAs(I/O virtual address) which it was using will go on the bus
as the physical addresses which might result in unknown crashes
(NoC/interconnect errors). So we make sure from this shutdown
callback that the ETR/ETF is shutdown before SMMU translation is
disabled and device_link in SMMU driver will take care of ordering
of shutdown callbacks such that SMMU shutdown callback is not
called before any of its consumer shutdown callbacks.

Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
---
 .../hwtracing/coresight/coresight-tmc-etf.c   |  4 +--
 .../hwtracing/coresight/coresight-tmc-etr.c   |  2 +-
 drivers/hwtracing/coresight/coresight-tmc.c   | 29 +++++++++++++++++++
 drivers/hwtracing/coresight/coresight-tmc.h   |  3 ++
 4 files changed, 35 insertions(+), 3 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-etf.c b/drivers/hwtracing/coresight/coresight-tmc-etf.c
index 36cce2bfb744..cba3e7592820 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etf.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etf.c
@@ -85,7 +85,7 @@ static void __tmc_etb_disable_hw(struct tmc_drvdata *drvdata)
 	CS_LOCK(drvdata->base);
 }
 
-static void tmc_etb_disable_hw(struct tmc_drvdata *drvdata)
+void tmc_etb_disable_hw(struct tmc_drvdata *drvdata)
 {
 	__tmc_etb_disable_hw(drvdata);
 	coresight_disclaim_device(drvdata->base);
@@ -118,7 +118,7 @@ static int tmc_etf_enable_hw(struct tmc_drvdata *drvdata)
 	return 0;
 }
 
-static void tmc_etf_disable_hw(struct tmc_drvdata *drvdata)
+void tmc_etf_disable_hw(struct tmc_drvdata *drvdata)
 {
 	CS_UNLOCK(drvdata->base);
 
diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
index 625882bc8b08..b29c2db94d96 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
@@ -1110,7 +1110,7 @@ static void __tmc_etr_disable_hw(struct tmc_drvdata *drvdata)
 
 }
 
-static void tmc_etr_disable_hw(struct tmc_drvdata *drvdata)
+void tmc_etr_disable_hw(struct tmc_drvdata *drvdata)
 {
 	__tmc_etr_disable_hw(drvdata);
 	/* Disable CATU device if this ETR is connected to one */
diff --git a/drivers/hwtracing/coresight/coresight-tmc.c b/drivers/hwtracing/coresight/coresight-tmc.c
index 5a271ebc4585..7e687a356fe0 100644
--- a/drivers/hwtracing/coresight/coresight-tmc.c
+++ b/drivers/hwtracing/coresight/coresight-tmc.c
@@ -540,6 +540,34 @@ static int tmc_probe(struct amba_device *adev, const struct amba_id *id)
 	return ret;
 }
 
+static void tmc_shutdown(struct amba_device *adev)
+{
+	struct tmc_drvdata *drvdata = amba_get_drvdata(adev);
+
+	if (!drvdata->enable)
+		goto out;
+
+	/*
+	 * We do not care about the active trace sessions here
+	 * since the system is going down unlike remove callback,
+	 * just make sure that the hardware is shutdown.
+	 */
+	switch (drvdata->config_type) {
+	case TMC_CONFIG_TYPE_ETB:
+		tmc_etb_disable_hw(drvdata);
+		break;
+	case TMC_CONFIG_TYPE_ETF:
+		tmc_etf_disable_hw(drvdata);
+		break;
+	case TMC_CONFIG_TYPE_ETR:
+		tmc_etr_disable_hw(drvdata);
+	}
+
+out:
+	misc_deregister(&drvdata->miscdev);
+	coresight_unregister(drvdata->csdev);
+}
+
 static const struct amba_id tmc_ids[] = {
 	CS_AMBA_ID(0x000bb961),
 	/* Coresight SoC 600 TMC-ETR/ETS */
@@ -558,6 +586,7 @@ static struct amba_driver tmc_driver = {
 		.suppress_bind_attrs = true,
 	},
 	.probe		= tmc_probe,
+	.shutdown	= tmc_shutdown,
 	.id_table	= tmc_ids,
 };
 builtin_amba_driver(tmc_driver);
diff --git a/drivers/hwtracing/coresight/coresight-tmc.h b/drivers/hwtracing/coresight/coresight-tmc.h
index d156860495c7..f4f56c474e58 100644
--- a/drivers/hwtracing/coresight/coresight-tmc.h
+++ b/drivers/hwtracing/coresight/coresight-tmc.h
@@ -262,6 +262,8 @@ u32 tmc_get_memwidth_mask(struct tmc_drvdata *drvdata);
 /* ETB/ETF functions */
 int tmc_read_prepare_etb(struct tmc_drvdata *drvdata);
 int tmc_read_unprepare_etb(struct tmc_drvdata *drvdata);
+void tmc_etb_disable_hw(struct tmc_drvdata *drvdata);
+void tmc_etf_disable_hw(struct tmc_drvdata *drvdata);
 extern const struct coresight_ops tmc_etb_cs_ops;
 extern const struct coresight_ops tmc_etf_cs_ops;
 
@@ -270,6 +272,7 @@ ssize_t tmc_etb_get_sysfs_trace(struct tmc_drvdata *drvdata,
 /* ETR functions */
 int tmc_read_prepare_etr(struct tmc_drvdata *drvdata);
 int tmc_read_unprepare_etr(struct tmc_drvdata *drvdata);
+void tmc_etr_disable_hw(struct tmc_drvdata *drvdata);
 extern const struct coresight_ops tmc_etr_cs_ops;
 ssize_t tmc_etr_get_sysfs_trace(struct tmc_drvdata *drvdata,
 				loff_t pos, size_t len, char **bufpp);
-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
