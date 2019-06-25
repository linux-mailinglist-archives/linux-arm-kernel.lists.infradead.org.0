Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1CC755520
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 18:51:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eKVMXyylUrFG7sBPDW7WzzjY6Ug/QZamYPu5olYBZiU=; b=PU4gi+od8iPdi6
	tkwVRVztgh4tBYzvoQyhizrJaL2C6pmme0Z4aKJ0InDUXdlvLiDoay3hIxWUjCQNPh3Nb/fpHMtFf
	8eEgvXwKa6wm0GWQ+cs2TipPng4rLXR2JrUUemXLJDorGcZflavncLo5SPa7jfh6reluzJeWYkKVZ
	Kf7ieUumM0oK6+/Y/Av7os65Fvw3SvyeNKYC3s7A+yd4/NvfYedIs3IwP4nidU5LiYzwSsdjHbpmj
	pdod5GkAcMkZ61uLqTxnssQ4WDkVDT1cAK6ZfCDqTtMBOwjLIYL0sVfgXnolhZmkRFfI1UAWbsE3L
	jwR9VMUPthhBFHKNornA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfofF-00066p-3T; Tue, 25 Jun 2019 16:51:25 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfobj-0002Fp-LR
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 16:47:49 +0000
Received: by mail-wr1-x441.google.com with SMTP id p13so18655183wru.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 09:47:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9dd7VfnDPDvx2vEwLGJ7RznkwWv5Ux/A/r7vpBAXcyw=;
 b=OrnMtF5KkknOxMO4HEIDwyQjyl0zrLgZXm8uI7cIqAfyS/Gecd3mdZ/D75IgqhNZJq
 lmvRq75sAhzmxQYYqgA9bQfBYppESBBqFKNRLnye3S0WXREjvJzDwnpUKwl9y467wiRs
 IT9MYvXyvJDcZPbRJD41iEFLuGbwrDHGQVo5fgl8cYkXt9lN7bqCy+1C0CmjZqs1EMcB
 T+Iq/GhvHvRiH4oUsL3mgj472MsxWcUd1eeFqJxJ87QML294aLT95zD3hTsYv9cDzMLl
 rMLH7qyQEgaFPgpt149uJNlle24WbrWY0BEUOXWDvWh1DzRx7sAvFTf5HI5fBkVo2ZHb
 j56w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9dd7VfnDPDvx2vEwLGJ7RznkwWv5Ux/A/r7vpBAXcyw=;
 b=L7BmayxXvVE1B95pf5zP5CYtggf3DLQ8oyRcAzt5SVjKgZr0WKwnLvAe+Zoqfg4zu9
 Xq2BxStxkxHvcEWdy82T+iGd1dNImp72SxaUzXHx0/fpYtt45UPjhTfovL/uoql1KvmY
 rgbqtoMrPU+3/wi7OGxhBXA2ONK2XqgLpzHsyrkBp6dLtZddYZFAwDnL7yq6FX9E+X9j
 6HftM5uF1MEAIq8R0jFg1lmly/4TynP0wa94TMAZJLuRTIscYXjUeHt2yN5+4nykAIqN
 kLIAd/JUtjhpV/Cbb9NR0nosiXrmCHFPN7B1pFCAO1MvkAvnWmRK9Npzs5EjZbuCTphl
 M5hw==
X-Gm-Message-State: APjAAAUUNAcQASMNPeLiFFmpc+7q0TZeu4d3OCLMPMWU1WTKOhsKo67I
 fQTBok9v8qC+AjoDsS+d+R1RAQ==
X-Google-Smtp-Source: APXvYqz8vAEXUQHGsG1vxPMKOB9yycSZAepMNHXYYIhf7Yy2fRj2IbkklOflF8y8vuYoPxhZyl0zmw==
X-Received: by 2002:adf:afe8:: with SMTP id y40mr34623139wrd.328.1561481266251; 
 Tue, 25 Jun 2019 09:47:46 -0700 (PDT)
Received: from localhost.localdomain (30.red-83-34-200.dynamicip.rima-tde.net.
 [83.34.200.30])
 by smtp.gmail.com with ESMTPSA id d18sm42594476wrb.90.2019.06.25.09.47.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 25 Jun 2019 09:47:45 -0700 (PDT)
From: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
To: jorge.ramirez-ortiz@linaro.org, sboyd@kernel.org,
 bjorn.andersson@linaro.org, david.brown@linaro.org,
 jassisinghbrar@gmail.com, mark.rutland@arm.com, mturquette@baylibre.com,
 robh+dt@kernel.org, will.deacon@arm.com, arnd@arndb.de,
 horms+renesas@verge.net.au, heiko@sntech.de, sibis@codeaurora.org,
 enric.balletbo@collabora.com, jagan@amarulasolutions.com, olof@lixom.net
Subject: [PATCH v3 05/14] clk: qcom: apcs-msm8916: get parent clock names from
 DT
Date: Tue, 25 Jun 2019 18:47:24 +0200
Message-Id: <20190625164733.11091-6-jorge.ramirez-ortiz@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190625164733.11091-1-jorge.ramirez-ortiz@linaro.org>
References: <20190625164733.11091-1-jorge.ramirez-ortiz@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_094748_193097_585A718B 
X-CRM114-Status: GOOD (  16.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 khasim.mohammed@linaro.org, linux-kernel@vger.kernel.org,
 amit.kucheria@linaro.org, linux-clk@vger.kernel.org, vkoul@kernel.org,
 niklas.cassel@linaro.org, georgi.djakov@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Allow accessing the parent clock names required for the driver
operation by using the device tree node.

This permits extending the driver to other platforms without having to
modify its source code.

For backwards compatibility leave previous values as default.

Co-developed-by: Niklas Cassel <niklas.cassel@linaro.org>
Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez-ortiz@linaro.org>
---
 drivers/clk/qcom/apcs-msm8916.c | 23 ++++++++++++++++++++---
 1 file changed, 20 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/qcom/apcs-msm8916.c b/drivers/clk/qcom/apcs-msm8916.c
index a6c89a310b18..dd82eb1e5202 100644
--- a/drivers/clk/qcom/apcs-msm8916.c
+++ b/drivers/clk/qcom/apcs-msm8916.c
@@ -19,7 +19,7 @@
 
 static const u32 gpll0_a53cc_map[] = { 4, 5 };
 
-static const char * const gpll0_a53cc[] = {
+static const char *gpll0_a53cc[] = {
 	"gpll0_vote",
 	"a53pll",
 };
@@ -50,6 +50,8 @@ static int qcom_apcs_msm8916_clk_probe(struct platform_device *pdev)
 	struct regmap *regmap;
 	struct clk_init_data init = { };
 	int ret = -ENODEV;
+	const char *parents[2];
+	int pll_index = 0;
 
 	regmap = dev_get_regmap(parent, NULL);
 	if (!regmap) {
@@ -61,6 +63,16 @@ static int qcom_apcs_msm8916_clk_probe(struct platform_device *pdev)
 	if (!a53cc)
 		return -ENOMEM;
 
+	/* legacy bindings only defined the pll parent clock (index = 0) with no
+	 * name; when both of the parents are specified in the bindings, the
+	 * pll is the second one (index = 1).
+	 */
+	if (of_clk_parent_fill(parent->of_node, parents, 2) == 2) {
+		gpll0_a53cc[0] = parents[0];
+		gpll0_a53cc[1] = parents[1];
+		pll_index = 1;
+	}
+
 	init.name = "a53mux";
 	init.parent_names = gpll0_a53cc;
 	init.num_parents = ARRAY_SIZE(gpll0_a53cc);
@@ -76,10 +88,11 @@ static int qcom_apcs_msm8916_clk_probe(struct platform_device *pdev)
 	a53cc->src_shift = 8;
 	a53cc->parent_map = gpll0_a53cc_map;
 
-	a53cc->pclk = devm_clk_get(parent, NULL);
+	a53cc->pclk = of_clk_get(parent->of_node, pll_index);
 	if (IS_ERR(a53cc->pclk)) {
 		ret = PTR_ERR(a53cc->pclk);
-		dev_err(dev, "failed to get clk: %d\n", ret);
+		if (ret != -EPROBE_DEFER)
+			dev_err(dev, "failed to get clk: %d\n", ret);
 		return ret;
 	}
 
@@ -87,6 +100,7 @@ static int qcom_apcs_msm8916_clk_probe(struct platform_device *pdev)
 	ret = clk_notifier_register(a53cc->pclk, &a53cc->clk_nb);
 	if (ret) {
 		dev_err(dev, "failed to register clock notifier: %d\n", ret);
+		clk_put(a53cc->pclk);
 		return ret;
 	}
 
@@ -109,6 +123,8 @@ static int qcom_apcs_msm8916_clk_probe(struct platform_device *pdev)
 
 err:
 	clk_notifier_unregister(a53cc->pclk, &a53cc->clk_nb);
+	clk_put(a53cc->pclk);
+
 	return ret;
 }
 
@@ -117,6 +133,7 @@ static int qcom_apcs_msm8916_clk_remove(struct platform_device *pdev)
 	struct clk_regmap_mux_div *a53cc = platform_get_drvdata(pdev);
 
 	clk_notifier_unregister(a53cc->pclk, &a53cc->clk_nb);
+	clk_put(a53cc->pclk);
 
 	return 0;
 }
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
