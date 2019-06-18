Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59B3D497FC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 06:15:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=utljvqEhWSsZk8wiFT0Ce48mXrY9MzhBAzaMqXySwHs=; b=lX5nK7MYwE8SCc
	L5VsWjv+oaBCtvRxVnkpEg+tZnxmGJDp+DhVyDRGx8JmqGFD11fO+9FDEcadjkbjhD2osPxOllWFZ
	5JdCIFe+n533SL2JYl4JTMSH3ek0k1RAb7bNfiPgFM5j7LzKL/ObPgjvo0o9FBr2AFPBmznH/O0Yv
	dPjC9tSUaO3MdyuVyl/J112W17kK8LV5yrQ6wQ7yh6iD1k35HXzMrUOU4brnSaUxBZGQwauA5+m1I
	fSatR/6NHJNCo6eLe+/QOjczS2j4gS/BXPjtZjswE5VynTtQY1MBITqToFvQPmIB/7BbI2+Yzslqr
	jVXTLRtlXuuumEtqz2PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd5XC-0005uY-A9; Tue, 18 Jun 2019 04:15:50 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd5Wj-0005f7-Ek
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 04:15:23 +0000
Received: by mail-pg1-x543.google.com with SMTP id 83so6916139pgg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 21:15:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bI5TZZVVWddYzi+zG+c3/8d//MTYrG/SEFr1ZVygmWI=;
 b=Va3jlYRkO6XmYcP4WnDmEIjixZAh3JbumkQtut9GDOvuenRaczimujEG27I18JsxS2
 ncBOEaSo94X4oYO9UZBS9xTsnVzpLHPPTsrbJ4wELh8r5HHNAYSoYjZ2NJ4cmB5Lhhfl
 6uiLdLYWXPCgYg8LF2nD84jyITT/UANOAWUhE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bI5TZZVVWddYzi+zG+c3/8d//MTYrG/SEFr1ZVygmWI=;
 b=AvGZiTKOJZr+wmGYvMELSHeOpG4xrnCjQQQOHTfxAdw2K1/JhNn0Ic5mgBdbDi+O9+
 FQbIPJ7ow7YKuIPBIJCGfnNkqYmuYUnnKAGQHL+jUoA/e3qLPD09p9s2o14pLuWPDK7Y
 Mac74Hhnf53OudFBGALMRaCRWEEUMd//wE6ja6XrmnTx3eg0mIS8h+X3V5clM0BymBIl
 o9W/aUvNwGt5vQNEavcFswCT7ITrP2QnFAVzG87p8sVjvoedPNHhoJlWquw+RyaMQM/Z
 1Nh7X+d5ijG5rzTWPth+GzksJ8wK849n6XQrQGB+/oG082qogg5daPS367elWo/D6knq
 UJpA==
X-Gm-Message-State: APjAAAV+ZgYZMJL242/UiUHDr7TdJbectG4FZ0Y1/yX9VHwG9H7ClMrk
 nBrcHNeopxWNzH4RNMGfWqbFAwVuakoJwQ==
X-Google-Smtp-Source: APXvYqwrFMYT6lCjebCRGps6DV03B4EN/FXJdD3P3q9sNrtIL19XuUD7DrcPdmrtB7AyuciVYfJ49Q==
X-Received: by 2002:a62:ee04:: with SMTP id e4mr1380578pfi.232.1560831320142; 
 Mon, 17 Jun 2019 21:15:20 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com
 ([2401:fa00:1:10:b852:bd51:9305:4261])
 by smtp.gmail.com with ESMTPSA id 25sm13590685pfp.76.2019.06.17.21.15.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 17 Jun 2019 21:15:19 -0700 (PDT)
From: Hsin-Yi Wang <hsinyi@chromium.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH RFC 2/2] devfreq: mt8183-cci: using cpufreq-map governor in
 cci dvfs driver
Date: Tue, 18 Jun 2019 12:14:36 +0800
Message-Id: <20190618041433.245629-3-hsinyi@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190618041433.245629-1-hsinyi@chromium.org>
References: <20190618041433.245629-1-hsinyi@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_211521_555043_05E5341C 
X-CRM114-Status: GOOD (  18.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Saravana Kannan <skannan@codeaurora.org>,
 "Andrew-sh . Cheng" <andrew-sh.cheng@mediatek.com>, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Hsin-Yi Wang <hsinyi@chromium.org>

This is based on mediatek's devfreq patches[1].

In MT8183 SoC, CCI and little core cluster share same regulator. In original
implementation, CCI frequency depends on regulator voltage, which results in
bad memory access performance if tasks are loaded on other cpus other than
little cluster (cpus 0-3).

Using cpufreq-map mt8183-cci's devfreq governor can improve this situation,
since in most cases, higher cpufreq implies higher loadings on the CCI, and CCI
should consider all cpu loadings instead of only the little cluster.

[1] https://patchwork.kernel.org/patch/10946063/

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 drivers/devfreq/mt8183-cci-devfreq.c | 194 +--------------------------
 1 file changed, 4 insertions(+), 190 deletions(-)

diff --git a/drivers/devfreq/mt8183-cci-devfreq.c b/drivers/devfreq/mt8183-cci-devfreq.c
index 250c963789f3..a153adee033e 100644
--- a/drivers/devfreq/mt8183-cci-devfreq.c
+++ b/drivers/devfreq/mt8183-cci-devfreq.c
@@ -17,164 +17,7 @@
 struct cci_devfreq {
 	struct devfreq *devfreq;
 	struct regulator *proc_reg;
-	unsigned long proc_reg_uV;
 	struct clk *cci_clk;
-	unsigned long freq;
-	struct notifier_block nb;
-	struct notifier_block opp_nb;
-	int cci_min_freq;
-};
-
-static int cci_devfreq_regulator_notifier(struct notifier_block *nb,
-					  unsigned long val, void *data)
-{
-	int ret;
-	struct cci_devfreq *cci_df =
-		container_of(nb, struct cci_devfreq, nb);
-
-	/* deal with reduce frequency */
-	if (val & REGULATOR_EVENT_PRE_VOLTAGE_CHANGE) {
-		struct pre_voltage_change_data *pvc_data = data;
-
-		if (pvc_data->min_uV < pvc_data->old_uV) {
-			cci_df->proc_reg_uV =
-				(unsigned long)(pvc_data->min_uV);
-			mutex_lock(&cci_df->devfreq->lock);
-			ret = update_devfreq(cci_df->devfreq);
-			if (ret)
-				pr_err("Fail to reduce cci frequency: %d\n",
-				       ret);
-			mutex_unlock(&cci_df->devfreq->lock);
-		}
-	} else if ((val & REGULATOR_EVENT_ABORT_VOLTAGE_CHANGE) &&
-	    ((unsigned long)data > cci_df->proc_reg_uV)) {
-		cci_df->proc_reg_uV = (unsigned long)data;
-		mutex_lock(&cci_df->devfreq->lock);
-		ret = update_devfreq(cci_df->devfreq);
-		if (ret)
-			pr_err("Fail to raise cci frequency back: %d\n", ret);
-		mutex_unlock(&cci_df->devfreq->lock);
-	} else if ((val & REGULATOR_EVENT_VOLTAGE_CHANGE) &&
-	    (cci_df->proc_reg_uV < (unsigned long)data)) {
-		/* deal with increase frequency */
-		cci_df->proc_reg_uV = (unsigned long)data;
-		mutex_lock(&cci_df->devfreq->lock);
-		ret = update_devfreq(cci_df->devfreq);
-		if (ret)
-			pr_err("Fail to raise cci frequency: %d\n", ret);
-		mutex_unlock(&cci_df->devfreq->lock);
-	}
-
-	return 0;
-}
-
-static int ccidevfreq_opp_notifier(struct notifier_block *nb,
-unsigned long event, void *data)
-{
-	int ret;
-	struct dev_pm_opp *opp = data;
-	struct cci_devfreq *cci_df = container_of(nb, struct cci_devfreq,
-						  opp_nb);
-	unsigned long	freq, volt, cur_volt;
-
-	if (event == OPP_EVENT_ADJUST_VOLTAGE) {
-		freq = dev_pm_opp_get_freq(opp);
-		/* current opp item is changed */
-		if (freq == cci_df->freq) {
-			volt = dev_pm_opp_get_voltage(opp);
-			cur_volt = regulator_get_voltage(cci_df->proc_reg);
-
-			if (volt > cur_volt) {
-				/* need reduce freq */
-				mutex_lock(&cci_df->devfreq->lock);
-				ret = update_devfreq(cci_df->devfreq);
-				if (ret)
-					pr_err("Fail to reduce cci frequency by opp notification: %d\n",
-					       ret);
-				mutex_unlock(&cci_df->devfreq->lock);
-			}
-		}
-
-		if (freq == cci_df->cci_min_freq) {
-			volt = dev_pm_opp_get_voltage(opp);
-			regulator_set_voltage(cci_df->proc_reg, volt, INT_MAX);
-		}
-	} else if (event == OPP_EVENT_DISABLE) {
-	}
-
-	return 0;
-}
-
-
-static int mtk_cci_governor_get_target(struct devfreq *devfreq,
-				       unsigned long *freq)
-{
-	struct cci_devfreq *cci_df;
-	struct dev_pm_opp *opp;
-	int ret;
-
-	cci_df = dev_get_drvdata(devfreq->dev.parent);
-
-	/* find available frequency */
-	opp = dev_pm_opp_find_freq_ceil_by_volt(devfreq->dev.parent,
-						cci_df->proc_reg_uV);
-	ret = PTR_ERR_OR_ZERO(opp);
-	if (ret) {
-		pr_err("%s[%d], cannot find opp with voltage=%d: %d\n",
-		       __func__, __LINE__, cci_df->proc_reg_uV, ret);
-		return ret;
-	}
-	*freq = dev_pm_opp_get_freq(opp);
-
-	return 0;
-}
-
-static int mtk_cci_governor_event_handler(struct devfreq *devfreq,
-					  unsigned int event, void *data)
-{
-	int ret;
-	struct cci_devfreq *cci_df;
-	struct notifier_block *nb;
-	struct notifier_block *opp_nb;
-
-	cci_df = dev_get_drvdata(devfreq->dev.parent);
-	nb = &cci_df->nb;
-	opp_nb = &cci_df->opp_nb;
-
-	switch (event) {
-	case DEVFREQ_GOV_START:
-	case DEVFREQ_GOV_RESUME:
-		nb->notifier_call = cci_devfreq_regulator_notifier;
-		ret = regulator_register_notifier(cci_df->proc_reg,
-						  nb);
-		if (ret)
-			pr_err("%s: failed to add governor: %d\n", __func__,
-			       ret);
-		opp_nb->notifier_call = ccidevfreq_opp_notifier;
-		dev_pm_opp_register_notifier(devfreq->dev.parent, opp_nb);
-		break;
-
-	case DEVFREQ_GOV_STOP:
-	case DEVFREQ_GOV_SUSPEND:
-		ret = regulator_unregister_notifier(cci_df->proc_reg,
-						    nb);
-		if (ret)
-			pr_err("%s: failed to add governor: %d\n", __func__,
-			       ret);
-		break;
-
-	default:
-		break;
-	}
-
-	return 0;
-}
-
-static struct devfreq_governor mtk_cci_devfreq_governor = {
-	.name = "mtk_cci_vmon",
-	.get_target_freq = mtk_cci_governor_get_target,
-	.event_handler = mtk_cci_governor_event_handler,
-	.immutable = true
 };
 
 static int mtk_cci_devfreq_target(struct device *dev, unsigned long *freq,
@@ -193,8 +36,6 @@ static int mtk_cci_devfreq_target(struct device *dev, unsigned long *freq,
 		return ret;
 	}
 
-	cci_df->freq = *freq;
-
 	return 0;
 }
 
@@ -206,8 +47,6 @@ static int mtk_cci_devfreq_probe(struct platform_device *pdev)
 {
 	struct device *cci_dev = &pdev->dev;
 	struct cci_devfreq *cci_df;
-	unsigned long freq, volt;
-	struct dev_pm_opp *opp;
 	int ret;
 
 	cci_df = devm_kzalloc(cci_dev, sizeof(*cci_df), GFP_KERNEL);
@@ -237,19 +76,12 @@ static int mtk_cci_devfreq_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	/* set voltage lower bound */
-	freq = 1;
-	opp = dev_pm_opp_find_freq_ceil(cci_dev, &freq);
-	cci_df->cci_min_freq = dev_pm_opp_get_freq(opp);
-	volt = dev_pm_opp_get_voltage(opp);
-	dev_pm_opp_put(opp);
-
 	platform_set_drvdata(pdev, cci_df);
 
 	cci_df->devfreq = devm_devfreq_add_device(cci_dev,
-						  &cci_devfreq_profile,
-						  "mtk_cci_vmon",
-						  NULL);
+						&cci_devfreq_profile,
+						"cpufreq-map",
+						NULL);
 	if (IS_ERR(cci_df->devfreq)) {
 		ret = PTR_ERR(cci_df->devfreq);
 		dev_err(cci_dev, "cannot create cci devfreq device:%d\n", ret);
@@ -277,30 +109,12 @@ static struct platform_driver cci_devfreq_driver = {
 
 static int __init mtk_cci_devfreq_init(void)
 {
-	int ret;
-
-	ret = devfreq_add_governor(&mtk_cci_devfreq_governor);
-	if (ret) {
-		pr_err("%s: failed to add governor: %d\n", __func__, ret);
-		return ret;
-	}
-
-	ret = platform_driver_register(&cci_devfreq_driver);
-	if (ret)
-		devfreq_remove_governor(&mtk_cci_devfreq_governor);
-
-	return ret;
+	return platform_driver_register(&cci_devfreq_driver);
 }
 module_init(mtk_cci_devfreq_init)
 
 static void __exit mtk_cci_devfreq_exit(void)
 {
-	int ret;
-
-	ret = devfreq_remove_governor(&mtk_cci_devfreq_governor);
-	if (ret)
-		pr_err("%s: failed to remove governor: %d\n", __func__, ret);
-
 	platform_driver_unregister(&cci_devfreq_driver);
 }
 module_exit(mtk_cci_devfreq_exit)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
