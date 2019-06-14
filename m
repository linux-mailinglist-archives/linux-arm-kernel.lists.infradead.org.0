Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B8B7464C4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 18:45:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VQc+gD0VgVguVG0vOvDR687bYY8g13l/zOjPTNioXUU=; b=IRVdsh3b5snkUo
	hVCHEu32wjwNTSQyi0gUlApFfmxmcYRy94ygzWscF6QyBaeShXiBsxhAXGpy/XWXymJ+iGbCnHhdt
	p0I+G7BN5pKM4BTCvkJFxSKsS/Qb0sEJH0DiS2u14zjGwbev338/h2SKrCjyanKcAoMSbMNG7ukGp
	02BjY75ComAnoLgo9AM9JRkVkbhsC5WNLQ/BhAvATDEVWghDdJc0ph9onbXQbWvYAi4kx8nC3wfP4
	5ly4seNKL7NcNZSbW9sKkIXvW2zoHBluh5tY9cY4W9WHDdbHEtZ6pznaKsqrf4EtjBAzOyr3RYF6q
	TCJd1oJ+pLjZWwkS40FA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbpKp-0002gL-1u; Fri, 14 Jun 2019 16:45:51 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbpJ4-0007UM-Fc
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 16:44:04 +0000
Received: by mail-pg1-x541.google.com with SMTP id s21so1839781pga.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 09:44:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=McEpOMxF1Vqb5MJSgPkNba+7ZuPO/C5gMlpl5BrKm+A=;
 b=Omtw/7fqRACdWb3zRgWBPH7EAE2HAfbPSZ2rNPxyrMfcrOvdFYkSFohGF4Ohfaasdp
 7f9VvcNqpcAkJ2IOqcijPmAnLsmJ9C5Dis36l0V0HjciBE5O4bepOtik7swQAd4gb8dr
 jAa437e0YKrxrgEUlm1JoqaR10yDDYdzfv1e8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=McEpOMxF1Vqb5MJSgPkNba+7ZuPO/C5gMlpl5BrKm+A=;
 b=m/yCTxs18o7d/yFIw8df5CIaKQBoqaH12sx4MvpXDVsk8hQqp+iKKzDefBsO19hRhE
 5NhZQZkbZ2ArW+t33diUYZTUG9ZERiQYzSExHAA+UKcotLNs1c0raOpGycWzKNa73ouM
 nQJ09qK1135EC+sTgoW0LBsw6HLl1/k6QoYqKpOEFLA6iyoE81XUWTT2nCVJqOOmfFOY
 WPoty/BbVwZH3WXgQoC2J/5T3py+wd/7/zGtlVPYXyL3M/kI/MRu5unCQ+xYyEWT7WCS
 LEvNV4mvmlWc6uCBecnSXpm4RHh6zxlHB6HhdstgzzdkG6NJi9fKPvyBEavBYld5n/0E
 I+VA==
X-Gm-Message-State: APjAAAXFmvVnMMeSObpEQf3jKbo1dwsJJDnazGYpOHvYEGv6lz0xJW9z
 LePO/kPIbUoDFoeEQhnrGC9n7g==
X-Google-Smtp-Source: APXvYqzzA+CXCBhKMf8rKwu5vgA3fMFWJoxmx7tNZQBVGL/nc+y3J9OVfW6PCTjNCi7M0y2RH+py1w==
X-Received: by 2002:a17:90a:26a1:: with SMTP id
 m30mr12317652pje.59.1560530641316; 
 Fri, 14 Jun 2019 09:44:01 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
 by smtp.gmail.com with ESMTPSA id 85sm1639583pfv.130.2019.06.14.09.43.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 14 Jun 2019 09:44:00 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Chen-Yu Tsai <wens@csie.org>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>
Subject: [PATCH v2 5/9] drm/sun4i: tcon_top: Register clock gates in probe
Date: Fri, 14 Jun 2019 22:13:20 +0530
Message-Id: <20190614164324.9427-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190614164324.9427-1-jagan@amarulasolutions.com>
References: <20190614164324.9427-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_094402_541798_1E6EF2C5 
X-CRM114-Status: GOOD (  16.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-sunxi@googlegroups.com,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TCON TOP have clock gates for TV0, TV1, dsi and right
now these are register during bind call.

Of which, dsi clock gate would required during DPHY probe
but same can miss to get since tcon top is not bound at
that time.

To solve, this circular dependency move the clock gate
registration from bind to probe so-that DPHY can get the
dsi gate clock on time.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/gpu/drm/sun4i/sun8i_tcon_top.c | 94 ++++++++++++++------------
 1 file changed, 49 insertions(+), 45 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun8i_tcon_top.c b/drivers/gpu/drm/sun4i/sun8i_tcon_top.c
index 465e9b0cdfee..a8978b3fe851 100644
--- a/drivers/gpu/drm/sun4i/sun8i_tcon_top.c
+++ b/drivers/gpu/drm/sun4i/sun8i_tcon_top.c
@@ -124,7 +124,53 @@ static struct clk_hw *sun8i_tcon_top_register_gate(struct device *dev,
 static int sun8i_tcon_top_bind(struct device *dev, struct device *master,
 			       void *data)
 {
-	struct platform_device *pdev = to_platform_device(dev);
+	struct sun8i_tcon_top *tcon_top = dev_get_drvdata(dev);
+	int ret;
+
+	ret = reset_control_deassert(tcon_top->rst);
+	if (ret) {
+		dev_err(dev, "Could not deassert ctrl reset control\n");
+		return ret;
+	}
+
+	ret = clk_prepare_enable(tcon_top->bus);
+	if (ret) {
+		dev_err(dev, "Could not enable bus clock\n");
+		goto err_assert_reset;
+	}
+
+	return 0;
+
+err_assert_reset:
+	reset_control_assert(tcon_top->rst);
+
+	return ret;
+}
+
+static void sun8i_tcon_top_unbind(struct device *dev, struct device *master,
+				  void *data)
+{
+	struct sun8i_tcon_top *tcon_top = dev_get_drvdata(dev);
+	struct clk_hw_onecell_data *clk_data = tcon_top->clk_data;
+	int i;
+
+	of_clk_del_provider(dev->of_node);
+	for (i = 0; i < CLK_NUM; i++)
+		if (clk_data->hws[i])
+			clk_hw_unregister_gate(clk_data->hws[i]);
+
+	clk_disable_unprepare(tcon_top->bus);
+	reset_control_assert(tcon_top->rst);
+}
+
+static const struct component_ops sun8i_tcon_top_ops = {
+	.bind	= sun8i_tcon_top_bind,
+	.unbind	= sun8i_tcon_top_unbind,
+};
+
+static int sun8i_tcon_top_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
 	struct clk_hw_onecell_data *clk_data;
 	struct sun8i_tcon_top *tcon_top;
 	const struct sun8i_tcon_top_quirks *quirks;
@@ -132,7 +178,7 @@ static int sun8i_tcon_top_bind(struct device *dev, struct device *master,
 	void __iomem *regs;
 	int ret, i;
 
-	quirks = of_device_get_match_data(&pdev->dev);
+	quirks = of_device_get_match_data(dev);
 
 	tcon_top = devm_kzalloc(dev, sizeof(*tcon_top), GFP_KERNEL);
 	if (!tcon_top)
@@ -164,18 +210,6 @@ static int sun8i_tcon_top_bind(struct device *dev, struct device *master,
 	if (IS_ERR(regs))
 		return PTR_ERR(regs);
 
-	ret = reset_control_deassert(tcon_top->rst);
-	if (ret) {
-		dev_err(dev, "Could not deassert ctrl reset control\n");
-		return ret;
-	}
-
-	ret = clk_prepare_enable(tcon_top->bus);
-	if (ret) {
-		dev_err(dev, "Could not enable bus clock\n");
-		goto err_assert_reset;
-	}
-
 	/*
 	 * At least on H6, some registers have some bits set by default
 	 * which may cause issues. Clear them here.
@@ -226,45 +260,15 @@ static int sun8i_tcon_top_bind(struct device *dev, struct device *master,
 
 	dev_set_drvdata(dev, tcon_top);
 
-	return 0;
+	return component_add(dev, &sun8i_tcon_top_ops);
 
 err_unregister_gates:
 	for (i = 0; i < CLK_NUM; i++)
 		if (!IS_ERR_OR_NULL(clk_data->hws[i]))
 			clk_hw_unregister_gate(clk_data->hws[i]);
-	clk_disable_unprepare(tcon_top->bus);
-err_assert_reset:
-	reset_control_assert(tcon_top->rst);
-
 	return ret;
 }
 
-static void sun8i_tcon_top_unbind(struct device *dev, struct device *master,
-				  void *data)
-{
-	struct sun8i_tcon_top *tcon_top = dev_get_drvdata(dev);
-	struct clk_hw_onecell_data *clk_data = tcon_top->clk_data;
-	int i;
-
-	of_clk_del_provider(dev->of_node);
-	for (i = 0; i < CLK_NUM; i++)
-		if (clk_data->hws[i])
-			clk_hw_unregister_gate(clk_data->hws[i]);
-
-	clk_disable_unprepare(tcon_top->bus);
-	reset_control_assert(tcon_top->rst);
-}
-
-static const struct component_ops sun8i_tcon_top_ops = {
-	.bind	= sun8i_tcon_top_bind,
-	.unbind	= sun8i_tcon_top_unbind,
-};
-
-static int sun8i_tcon_top_probe(struct platform_device *pdev)
-{
-	return component_add(&pdev->dev, &sun8i_tcon_top_ops);
-}
-
 static int sun8i_tcon_top_remove(struct platform_device *pdev)
 {
 	component_del(&pdev->dev, &sun8i_tcon_top_ops);
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
