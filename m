Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 140BC150780
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 14:38:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1b/JskNQt5XlVi+ENL2tD84L5Cfcq4k0SlhN7YI3UIQ=; b=NOBcskjxLr+RSoynsbn80h+0Xk
	TaN70hX+ZqCUcAhcsrcvMKfbC7I6uB2y12XFTS0nQtzeF9jg7vJkfzHe12OjaL7bmbhFvHLks4AAO
	xQHaYsM5PyTQEtOldFcLLwR1ONTqFrrvs+I25DfakV/CASoyIKQrWsxDGJVfMkU37ra4yEX8HwrtA
	L1scd04K9wYWZaVF5z7m1cHBj//mCV7777ob2X7MDw5LLaskRGcv8Nq7p+w4sOsVLq3f8ieLTBwhn
	fSVgh+qelGqDNCEKSS1KFek/RwUzs141uxcnTa+IwMtB0w8H5fabhznlTkHigDbO/IUdRcg71y2KH
	TtA+nIzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iybvR-00056W-He; Mon, 03 Feb 2020 13:38:05 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iybuq-0004QY-Kr
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 13:37:32 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1580737048; h=References: In-Reply-To: Message-Id: Date:
 Subject: Cc: To: From: Sender;
 bh=3oBp+GQXIvHz9eMsTaJ9GKjk778UhbK5cdSMUYMH/24=;
 b=LWu/SqoyiWtY7JwyeUhy8Jom3a+6DTdycC2WdaT31PPEVnnL5QlwJ4meWQR0JWGciLrMyaqX
 c20ys+IMf6QM01rdgTrwwWeRwMOGPzezcTC1sGTu13AqzD+lEoUW/o4tT02wphyBb8dWrvET
 AulbLZfSOhHoY4Mo9PILd9JsbAs=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e382217.7f0666142d88-smtp-out-n02;
 Mon, 03 Feb 2020 13:37:27 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id EFA03C447A5; Mon,  3 Feb 2020 13:37:26 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE,
 URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mkshah-linux.qualcomm.com
 (blr-c-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: mkshah)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 14511C433CB;
 Mon,  3 Feb 2020 13:37:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 14511C433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=mkshah@codeaurora.org
From: Maulik Shah <mkshah@codeaurora.org>
To: swboyd@chromium.org, agross@kernel.org, david.brown@linaro.org,
 sudeep.holla@arm.com, Lorenzo.Pieralisi@arm.com
Subject: [PATCH v3 4/7] drivers: qcom: rpmh-rsc: Add RSC power domain support
Date: Mon,  3 Feb 2020 19:05:37 +0530
Message-Id: <1580736940-6985-5-git-send-email-mkshah@codeaurora.org>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1580736940-6985-1-git-send-email-mkshah@codeaurora.org>
References: <1580736940-6985-1-git-send-email-mkshah@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_053728_833003_0E13DC06 
X-CRM114-Status: GOOD (  15.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.25 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Maulik Shah <mkshah@codeaurora.org>, lsrao@codeaurora.org,
 dianders@chromium.org, rnayak@codeaurora.org, linux-pm@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 evgreen@chromium.org, bjorn.andersson@linaro.org, ilina@codeaurora.org,
 ulf.hansson@linaro.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add RSC power domain support. RSC is top level power domain in
hireachical CPU LPM modes. Once the rsc domain is down flush all
cached sleep and wake votes from controller.

Signed-off-by: Maulik Shah <mkshah@codeaurora.org>
---
 drivers/soc/qcom/rpmh-internal.h |  2 +
 drivers/soc/qcom/rpmh-rsc.c      | 81 ++++++++++++++++++++++++++++++++++++++++
 2 files changed, 83 insertions(+)

diff --git a/drivers/soc/qcom/rpmh-internal.h b/drivers/soc/qcom/rpmh-internal.h
index 6eec32b..3736c14 100644
--- a/drivers/soc/qcom/rpmh-internal.h
+++ b/drivers/soc/qcom/rpmh-internal.h
@@ -8,6 +8,7 @@
 #define __RPM_INTERNAL_H__
 
 #include <linux/bitmap.h>
+#include <linux/pm_domain.h>
 #include <soc/qcom/tcs.h>
 
 #define TCS_TYPE_NR			4
@@ -102,6 +103,7 @@ struct rsc_drv {
 	DECLARE_BITMAP(tcs_in_use, MAX_TCS_NR);
 	spinlock_t lock;
 	struct rpmh_ctrlr client;
+	struct generic_pm_domain rsc_pd;
 };
 
 int rpmh_rsc_send_data(struct rsc_drv *drv, const struct tcs_request *msg);
diff --git a/drivers/soc/qcom/rpmh-rsc.c b/drivers/soc/qcom/rpmh-rsc.c
index e278fc1..92bca4c 100644
--- a/drivers/soc/qcom/rpmh-rsc.c
+++ b/drivers/soc/qcom/rpmh-rsc.c
@@ -499,6 +499,32 @@ static int tcs_ctrl_write(struct rsc_drv *drv, const struct tcs_request *msg)
 }
 
 /**
+ * rpmh_rsc_ctrlr_is_idle: Check if any of the AMCs are busy.
+ *
+ * @drv: The controller
+ *
+ * Return: false if the TCSes are engaged in handling requests, True otherwise.
+ */
+static bool rpmh_rsc_ctrlr_is_idle(struct rsc_drv *drv)
+{
+	int m;
+	struct tcs_group *tcs = get_tcs_of_type(drv, ACTIVE_TCS);
+	bool ret = true;
+	unsigned long flags;
+
+	spin_lock_irqsave(&drv->lock, flags);
+	for (m = tcs->offset; m < tcs->offset + tcs->num_tcs; m++) {
+		if (!tcs_is_free(drv, m)) {
+			ret = false;
+			break;
+		}
+	}
+	spin_unlock_irqrestore(&drv->lock, flags);
+
+	return ret;
+}
+
+/**
  * rpmh_rsc_write_ctrl_data: Write request to the controller
  *
  * @drv: the controller
@@ -521,6 +547,50 @@ int rpmh_rsc_write_ctrl_data(struct rsc_drv *drv, const struct tcs_request *msg)
 	return tcs_ctrl_write(drv, msg);
 }
 
+static int rpmh_domain_power_off(struct generic_pm_domain *rsc_pd)
+{
+	struct rsc_drv *drv = container_of(rsc_pd, struct rsc_drv, rsc_pd);
+
+	/*
+	 * RPMh domain can not be powered off when there is pending ACK for
+	 * ACTIVE_TCS request. Exit when controller is busy.
+	 */
+	if (!rpmh_rsc_ctrlr_is_idle(drv))
+		return -EBUSY;
+
+	return rpmh_flush(&drv->client);
+}
+
+static int rpmh_probe_power_domain(struct platform_device *pdev,
+				   struct rsc_drv *drv)
+{
+	int ret;
+	struct generic_pm_domain *rsc_pd = &drv->rsc_pd;
+	struct device_node *dn = pdev->dev.of_node;
+
+	rsc_pd->name = devm_kasprintf(&pdev->dev, GFP_KERNEL, "%s", dn->name);
+	if (!rsc_pd->name)
+		return -ENOMEM;
+
+	rsc_pd->name = kbasename(rsc_pd->name);
+	rsc_pd->power_off = rpmh_domain_power_off;
+	rsc_pd->flags |= GENPD_FLAG_IRQ_SAFE;
+
+	ret = pm_genpd_init(rsc_pd, NULL, false);
+	if (ret)
+		return ret;
+
+	ret = of_genpd_add_provider_simple(dn, rsc_pd);
+	if (ret)
+		goto remove_pd;
+
+	return ret;
+
+remove_pd:
+	pm_genpd_remove(rsc_pd);
+	return ret;
+}
+
 static int rpmh_probe_tcs_config(struct platform_device *pdev,
 				 struct rsc_drv *drv)
 {
@@ -663,6 +733,17 @@ static int rpmh_rsc_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
+	/*
+	 * Power domain is not required for controllers that support 'solver'
+	 * mode where they can be in autonomous mode executing low power mode
+	 * to power down.
+	 */
+	if (of_property_read_bool(dn, "#power-domain-cells")) {
+		ret = rpmh_probe_power_domain(pdev, drv);
+		if (ret)
+			return ret;
+	}
+
 	/* Enable the active TCS to send requests immediately */
 	write_tcs_reg(drv, RSC_DRV_IRQ_ENABLE, 0, drv->tcs[ACTIVE_TCS].mask);
 
-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
