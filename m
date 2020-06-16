Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C6BA1FA80B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 06:57:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TFH94t4xlAmVYctS02iX5CeJ1ZnWohe9y4A6PANc+/k=; b=omPVZXoGzPLinF
	nMW0uO5WIbNDAMMYxUC329GHejYqp+C7E21+Kamj1qSrclZJ3/CIJjrI9Sh4rneItg3EpD0Y1JVRI
	aIfVgUqEzUDlwzgnPCXauemnGrAnyFOuNCp6RMpP9eLRq86Ra2o83FkAlmAJCRQtAqyEtWdZAPTAb
	xtOd/IrrSni/5uVKQtpKvSrymNfEIOaxy3YNnuAiSU2xKzdOvk5kUCY+omOp9Rhc9vFeuCUccgKJp
	zQW8K2ta2IwzfQuGWfXQbU6dMf5OXlRC5bhkELL6bE9SJhXAo+4EFKW3nyEtS1ZkJ7JnTEgLnCf4B
	WlsHw9M1FljQDgYlN2Bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl3f5-0001gF-GA; Tue, 16 Jun 2020 04:57:27 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl3et-0001f1-Sx
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 04:57:20 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1592283439; h=Content-Transfer-Encoding: MIME-Version:
 Message-Id: Date: Subject: Cc: To: From: Sender;
 bh=xj0QXgPdzyD1jjd0ssAYzkZjR6nTCw3RYzCQM0RrXN4=;
 b=hOi3Fuagszv3OwQVRYSu9z815ViYdZ/2W96OScIqonoaQ4nGJPfVqvBX6LSf2KBj3rI31BTK
 cMKpWTnDYXPpGDytZAUYFU27G5CC59w+XenZIDrYPDkJleosIIK+JY+wJ30AZppCSunQgCiZ
 5nSP++O4oMj7I9nrtOxx9ai2lIM=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n05.prod.us-west-2.postgun.com with SMTP id
 5ee8510bad153efa3407ac68 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Tue, 16 Jun 2020 04:56:43
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 6D42BC43387; Tue, 16 Jun 2020 04:56:43 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from blr-ubuntu-253.qualcomm.com
 (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 1A0CFC433CA;
 Tue, 16 Jun 2020 04:56:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 1A0CFC433CA
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mike Leach <mike.leach@linaro.org>
Subject: [PATCHv3] coresight: tmc: Add shutdown callback for TMC ETR
Date: Tue, 16 Jun 2020 10:26:23 +0530
Message-Id: <20200616045623.27549-1-saiprakash.ranjan@codeaurora.org>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_215719_329814_9FB11F0D 
X-CRM114-Status: GOOD (  15.91  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.27 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Implement a shutdown callback to ensure ETR hardware is
properly shutdown in reboot/shutdown path. This is required
for ETR which has SMMU address translation enabled like on
SC7180 SoC and few others. If the hardware is still accessing
memory after SMMU translation is disabled as part of SMMU
shutdown callback in system reboot or shutdown path, then
IOVAs(I/O virtual address) which it was using will go on the
bus as the physical addresses which might result in unknown
crashes (NoC/interconnect errors). So we make sure from this
shutdown callback that the ETR is shutdown before SMMU translation
is disabled and device_link in SMMU driver will take care of
ordering of shutdown callbacks such that SMMU shutdown callback
is not called before any of its consumer shutdown callbacks.

Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
---

Changes since v2:
 * Remove ETF/ETB disable as suggested by Mathieu and Mike since they are
   not really affected.
 * Remove coresight and misc device unregister since it is not required
   for shutdown callback unlike remove callback and userspace is long gone
   by this time.

Changes since v1:
 * Use mode flag and drop enable flag as Mike suggested.
 * Use spinlock before tmc hw disable as Mike suggested.

---
 .../hwtracing/coresight/coresight-tmc-etr.c   |  2 +-
 drivers/hwtracing/coresight/coresight-tmc.c   | 23 +++++++++++++++++++
 drivers/hwtracing/coresight/coresight-tmc.h   |  1 +
 3 files changed, 25 insertions(+), 1 deletion(-)

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
index 39fba1d16e6e..b13ce0daa572 100644
--- a/drivers/hwtracing/coresight/coresight-tmc.c
+++ b/drivers/hwtracing/coresight/coresight-tmc.c
@@ -538,6 +538,28 @@ static int tmc_probe(struct amba_device *adev, const struct amba_id *id)
 	return ret;
 }
 
+static void tmc_shutdown(struct amba_device *adev)
+{
+	unsigned long flags;
+	struct tmc_drvdata *drvdata = amba_get_drvdata(adev);
+
+	spin_lock_irqsave(&drvdata->spinlock, flags);
+
+	if (drvdata->mode == CS_MODE_DISABLED)
+		goto out;
+
+	if (drvdata->config_type == TMC_CONFIG_TYPE_ETR)
+		tmc_etr_disable_hw(drvdata);
+
+	/*
+	 * We do not care about coresight unregister here unlike remove
+	 * callback which is required for making coresight modular since
+	 * the system is going down after this.
+	 */
+out:
+	spin_unlock_irqrestore(&drvdata->spinlock, flags);
+}
+
 static const struct amba_id tmc_ids[] = {
 	CS_AMBA_ID(0x000bb961),
 	/* Coresight SoC 600 TMC-ETR/ETS */
@@ -556,6 +578,7 @@ static struct amba_driver tmc_driver = {
 		.suppress_bind_attrs = true,
 	},
 	.probe		= tmc_probe,
+	.shutdown	= tmc_shutdown,
 	.id_table	= tmc_ids,
 };
 builtin_amba_driver(tmc_driver);
diff --git a/drivers/hwtracing/coresight/coresight-tmc.h b/drivers/hwtracing/coresight/coresight-tmc.h
index 71de978575f3..6e8d2dc33d17 100644
--- a/drivers/hwtracing/coresight/coresight-tmc.h
+++ b/drivers/hwtracing/coresight/coresight-tmc.h
@@ -268,6 +268,7 @@ ssize_t tmc_etb_get_sysfs_trace(struct tmc_drvdata *drvdata,
 /* ETR functions */
 int tmc_read_prepare_etr(struct tmc_drvdata *drvdata);
 int tmc_read_unprepare_etr(struct tmc_drvdata *drvdata);
+void tmc_etr_disable_hw(struct tmc_drvdata *drvdata);
 extern const struct coresight_ops tmc_etr_cs_ops;
 ssize_t tmc_etr_get_sysfs_trace(struct tmc_drvdata *drvdata,
 				loff_t pos, size_t len, char **bufpp);

base-commit: 059e38815950dbec65beafe03757bce9436e89a4
-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
