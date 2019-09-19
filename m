Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C105B7764
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 12:26:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tuucIxd2gAy5qOEY66KkumI6Ef0hnnwG2+lCSdBIzeI=; b=Zdi0mJIZ/e3IYG
	W6SnnDQ7aRPooqDRX0oiVpdg8Ebaw8sWInErmOFsnptcvWok+nG2s19WNePr9xCj498QdQB3KYi6x
	Sn3OsUg0u7eblakfWZ0bYo3yNBXyRjj7XaPK7mXM3BKNilvxJMFMPNDW588sSjQYFV0UsCLB2+DVv
	mk0lkvEIUpnXThlfZAHs3oCTXw2XVkiEEKNxG2SyRAwmKg+MLyO/aVYfE6eB4HIbn9HTy9V++iA4u
	hrhW/fE+5w81peZa9wfzAJYZ0ioctX4g1aLQYLylCw9ISOQZMC7fiyH69P5T70DY6CQpmvAODfhOt
	0JbQcnqD4Kc4OaHAADkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAtdi-0003UX-H5; Thu, 19 Sep 2019 10:26:19 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAtcs-0002wp-5r
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 10:25:27 +0000
Received: by mail-wr1-x443.google.com with SMTP id l11so2505123wrx.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 03:25:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OfVN9sS5ICyBISD9/bSWhyU3cvwrbDco1DEGdifcoMw=;
 b=Zgf+CpZxtIoGz/4c7gSJv4YQIT/AIZGYY5ONX3aWeXVn+UltgLZQP7rUIMGKJGcA/5
 3hAwcCcqR4JO27SBuv0gUBe+2soEpC0+Ywl6RVlxx9GS6D2SX88/urlqxokJhMh2ypHP
 vaa5wjrtEgY+NUGLyaq8920OPXWIYrzhavXJoRIv7FNwEKbeCk6ZHpybUNoUwdCI2OgO
 gALZrQmDYTi/6bwt+K9Safk+8yqSpole+FRyuciLFFYW0nnK+voIq0J1HQIk0tw7lLmq
 BVOsYEg28zw1zKZoI/0S2JRXFho5o79D97lrKXJziR7O480vfv89VmD/AptN9cuFXywH
 GTbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OfVN9sS5ICyBISD9/bSWhyU3cvwrbDco1DEGdifcoMw=;
 b=Ur4lyF379LGVXJrhpJEQi/36O1sEslgmw+Up0pD2m9Qh7oWLLNmdA3+Hv4TCEOG5e6
 citbter9yaDs9LlI7U+UajFWs/DpYlr4ikPU86R+Zfe/iHoeVgVurjuJGlMKTD0YoaDZ
 KYHVgv94q65muaDTwJA9pmSWQL4dnOL/rEXDd8PM+4o7Wx+ih+FMt8w1M20k1xGUQVRy
 k8w1EFW9ykOZRWQPMt/4CdnYSX4ueAI8LHethrgR1vv2vpxpeyZnXVu7xTLM1DPRcPpi
 pUJMsjMC0j5iZ9ApKVU/AwhwaV0qZTMs1T3HQQ/KCfiMTaF5UerBwOwpzUMaUaitpRdz
 CL5A==
X-Gm-Message-State: APjAAAUdm1+D5njkQmSMWqHxm+qEJ0cJS9Fri5M9JYCK1JZihReIogr8
 GspVwRugd0f7+IJ9MeSFMyrI5w==
X-Google-Smtp-Source: APXvYqz5GUMlGa0iJ43OkLkqJuHmVrUcsQGvNUSJgX9WQP+bvNX6a0EK/ak4iYRlIe/z7cwDlrDXeg==
X-Received: by 2002:a5d:62c6:: with SMTP id o6mr6940968wrv.243.1568888724854; 
 Thu, 19 Sep 2019 03:25:24 -0700 (PDT)
Received: from bender.baylibre.local
 (wal59-h01-176-150-251-154.dsl.sta.abo.bbox.fr. [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id a18sm19542000wrh.25.2019.09.19.03.25.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Sep 2019 03:25:24 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: sboyd@kernel.org,
	jbrunet@baylibre.com,
	mturquette@baylibre.com
Subject: [PATCH RFC 2/2] clk: meson: g12a: add suspend-resume hooks
Date: Thu, 19 Sep 2019 12:25:18 +0200
Message-Id: <20190919102518.25126-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190919102518.25126-1-narmstrong@baylibre.com>
References: <20190919102518.25126-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_032526_229982_475F470C 
X-CRM114-Status: GOOD (  16.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add suspend and resume hooks used to refresh the CPU clock tree
when resuming from suspend, in the case where the PSCI firmware
alters the clock tree.

In the Amlogic G12A suspend/resume case, the PSCI firmware will
alter the Fixed PLL dyn tree when entering with the CPU clock from
this same tree, but using a different path to achieve the same rate.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/clk/meson/g12a.c | 71 +++++++++++++++++++++++++++++++++++-----
 1 file changed, 63 insertions(+), 8 deletions(-)

diff --git a/drivers/clk/meson/g12a.c b/drivers/clk/meson/g12a.c
index b3af61cc6fb9..9f6f634225b7 100644
--- a/drivers/clk/meson/g12a.c
+++ b/drivers/clk/meson/g12a.c
@@ -4992,6 +4992,19 @@ static int meson_g12b_dvfs_setup(struct platform_device *pdev)
 	return 0;
 }
 
+static int meson_g12b_resume(struct device *dev)
+{
+	u32 ret;
+
+	ret = clk_invalidate_rate(
+			__clk_lookup(clk_hw_get_name(&g12b_cpu_clk.hw)));
+	if (ret)
+		return ret;
+
+	return clk_invalidate_rate(
+			__clk_lookup(clk_hw_get_name(&g12b_cpub_clk.hw)));
+}
+
 static int meson_g12a_dvfs_setup(struct platform_device *pdev)
 {
 	struct clk_hw **hws = g12a_hw_onecell_data.hws;
@@ -5024,34 +5037,68 @@ static int meson_g12a_dvfs_setup(struct platform_device *pdev)
 	return 0;
 }
 
+static int meson_g12a_resume(struct device *dev)
+{
+	return clk_invalidate_rate(
+			__clk_lookup(clk_hw_get_name(&g12a_cpu_clk.hw)));
+}
+
 struct meson_g12a_data {
 	const struct meson_eeclkc_data eeclkc_data;
 	int (*dvfs_setup)(struct platform_device *pdev);
+	int (*resume)(struct device *dev);
 };
 
+static const struct
+meson_g12a_data *meson_g12a_get_data(struct device *dev)
+{
+	const struct meson_eeclkc_data *eeclkc_data =
+			of_device_get_match_data(dev);
+
+	if (!eeclkc_data)
+		return ERR_PTR(-EINVAL);
+
+	return container_of(eeclkc_data, struct meson_g12a_data,
+			    eeclkc_data);
+}
+
 static int meson_g12a_probe(struct platform_device *pdev)
 {
-	const struct meson_eeclkc_data *eeclkc_data;
-	const struct meson_g12a_data *g12a_data;
 	int ret;
+	const struct meson_g12a_data *g12a_data =
+			meson_g12a_get_data(&pdev->dev);
 
-	eeclkc_data = of_device_get_match_data(&pdev->dev);
-	if (!eeclkc_data)
-		return -EINVAL;
+	if (IS_ERR(g12a_data))
+		return PTR_ERR(g12a_data);
 
 	ret = meson_eeclkc_probe(pdev);
 	if (ret)
 		return ret;
 
-	g12a_data = container_of(eeclkc_data, struct meson_g12a_data,
-				 eeclkc_data);
-
 	if (g12a_data->dvfs_setup)
 		return g12a_data->dvfs_setup(pdev);
 
 	return 0;
 }
 
+static int __maybe_unused g12a_clkc_suspend(struct device *dev)
+{
+	return 0;
+}
+
+static int __maybe_unused g12a_clkc_resume(struct device *dev)
+{
+	const struct meson_g12a_data *g12a_data = meson_g12a_get_data(dev);
+
+	if (IS_ERR(g12a_data))
+		return PTR_ERR(g12a_data);
+
+	if (g12a_data->resume)
+		return g12a_data->resume(dev);
+
+	return 0;
+}
+
 static const struct meson_g12a_data g12a_clkc_data = {
 	.eeclkc_data = {
 		.regmap_clks = g12a_clk_regmaps,
@@ -5061,6 +5108,7 @@ static const struct meson_g12a_data g12a_clkc_data = {
 		.init_count = ARRAY_SIZE(g12a_init_regs),
 	},
 	.dvfs_setup = meson_g12a_dvfs_setup,
+	.resume = meson_g12a_resume,
 };
 
 static const struct meson_g12a_data g12b_clkc_data = {
@@ -5070,6 +5118,7 @@ static const struct meson_g12a_data g12b_clkc_data = {
 		.hw_onecell_data = &g12b_hw_onecell_data,
 	},
 	.dvfs_setup = meson_g12b_dvfs_setup,
+	.resume = meson_g12b_resume,
 };
 
 static const struct meson_g12a_data sm1_clkc_data = {
@@ -5079,6 +5128,11 @@ static const struct meson_g12a_data sm1_clkc_data = {
 		.hw_onecell_data = &sm1_hw_onecell_data,
 	},
 	.dvfs_setup = meson_g12a_dvfs_setup,
+	.resume = meson_g12a_resume,
+};
+
+static const struct dev_pm_ops g12a_clkc_dev_pm_ops = {
+	SET_SYSTEM_SLEEP_PM_OPS(g12a_clkc_suspend, g12a_clkc_resume)
 };
 
 static const struct of_device_id clkc_match_table[] = {
@@ -5102,6 +5156,7 @@ static struct platform_driver g12a_driver = {
 	.driver		= {
 		.name	= "g12a-clkc",
 		.of_match_table = clkc_match_table,
+		.pm	= &g12a_clkc_dev_pm_ops,
 	},
 };
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
