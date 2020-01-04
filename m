Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 123CE130137
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Jan 2020 07:35:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qnzWQ15xbgQV0xYY2tmqFlURzKXVA9e+hWazerQaqJo=; b=JRArmoz9yhHNgy
	JmS96iRtBC+KwBohgt0g9ywnu3lmG4ATpZWjgZ/WGrtkKZo3Cd3yaaw90atLhQ0r7blAMy2AbeoNO
	4d7kjsXT7EBxzT2rnPao4bGORUZthNZEf9FRT1fYfTHBs2Jx62b+d1BZbUPSb5JADOpCZtPmfCJmL
	O1NRHvn0jNhvfqlHFjzvTKRoWmV0/mLVQpUQcdFXVemiphGnNrv5G3dDJKJ5/KKeiZEVTjYgWAd7d
	ILj3jxd9ROrUmhU1GOye+Oz2yMvMcdg4m6g29c2tC/eHA++lobOuhM0nYKKdfNOd3+4uaMuU9cReY
	iAqrb949d+ujdUATngyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ind2C-0001bQ-8T; Sat, 04 Jan 2020 06:35:40 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ind1o-0001V7-68
 for linux-arm-kernel@lists.infradead.org; Sat, 04 Jan 2020 06:35:17 +0000
Received: by mail-pf1-x444.google.com with SMTP id z16so24489061pfk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Jan 2020 22:35:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SloPzaQUm48i+euJ9SPgozPrNYGcAsYY8nvYw6D2HVg=;
 b=Y1wY7mauLBv7oaOllvmoHt99Z978+COG6HD/v3ZS9aRqidQWRBkkI9tf1M8ukgmWst
 AuruzHyn6ayI1c+1wqkA8ddbjl7wx+a9iKgAztxNlPcOKOQZc6g7MrZmYr5GJ8N8NTgN
 gv837uuURUGlAopvFZYTNTSjErozvuOQh9RflUcrzg9cc2Idul8rDTerV884kMbOtLUR
 tORJnoCo1YOFtfBaQQT7m1OWvaOjNVPQ+7ZrI54+5PPzS4EHJj2KFYxjYYaC+qQY8W/6
 mq146l/vhc6g1KxupAoW4PpoyXVQkMIp89JtodfVSKz2cax1KNWsCwEmgKTg94MaqVVD
 qtFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SloPzaQUm48i+euJ9SPgozPrNYGcAsYY8nvYw6D2HVg=;
 b=PjWj5twJ9O3veA8K2aPZU//K6mXNXym4sh9n1mvT30prFHA9tuwZzunQXrPo5VICmS
 SZ1srGDNIbBSB1ucsuo4Jh+Gc1tgGeyXc+wYSDolhnWcY2xvpSnBHQuaEXVZt45HqWWf
 iFmYjAf2sE4SRMa7/S6yyA91zNjY0ohPvf2E6cra2OU3UsYZDfUnAQcXFTDae+5sJNcm
 9kEXIVapRf22UO3p6vs+2D+NfxLi9V4sSpZRldEcDydJSpJnhj6EoinpVLN8I0I/cu9m
 xiVflZF8+XIs8llFm0JN3YQG2Hc2FDzLyN1uPkpSqbNHGuorQDryLqUkqVD9c5oioFdz
 8vEQ==
X-Gm-Message-State: APjAAAXduuUe3176l2lHtt0pPRjkmZYOz48LwQAZ5i+GLnkTNdnyVTmn
 2TSGvzY3dbbmN3u84BYusV4=
X-Google-Smtp-Source: APXvYqyRc2s3lo5lzbr/lBfdxvyvN66VWXyPfn741RO3s8zgkT2sjHUqc0sisIUEK81fxn9ePs6wzQ==
X-Received: by 2002:a63:770c:: with SMTP id s12mr103738254pgc.25.1578119715439; 
 Fri, 03 Jan 2020 22:35:15 -0800 (PST)
Received: from anarsoul-thinkpad.lan (216-71-213-236.dyn.novuscom.net.
 [216.71.213.236])
 by smtp.gmail.com with ESMTPSA id u2sm64761580pgc.19.2020.01.03.22.35.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Jan 2020 22:35:15 -0800 (PST)
From: Vasily Khoruzhick <anarsoul@gmail.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org
Subject: [PATCH 1/3] clk: sunxi-ng: add mux and pll notifiers for A64 CPU clock
Date: Fri,  3 Jan 2020 22:35:03 -0800
Message-Id: <20200104063505.219030-2-anarsoul@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200104063505.219030-1-anarsoul@gmail.com>
References: <20200104063505.219030-1-anarsoul@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_223516_225475_2A05D493 
X-CRM114-Status: GOOD (  13.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Vasily Khoruzhick <vasilykh@arista.com>, Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Icenowy Zheng <icenowy@aosc.io>

The A64 PLL_CPU clock has the same instability if some factor changed
without the PLL gated like other SoCs with sun6i-style CCU, e.g. A33,
H3.

Add the mux and pll notifiers for A64 CPU clock to workaround the
problem.

Fixes: c6a0637460c2 ("clk: sunxi-ng: Add A64 clocks")
Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
Signed-off-by: Vasily Khoruzhick <vasilykh@arista.com>
---
 drivers/clk/sunxi-ng/ccu-sun50i-a64.c | 28 ++++++++++++++++++++++++++-
 1 file changed, 27 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/sunxi-ng/ccu-sun50i-a64.c b/drivers/clk/sunxi-ng/ccu-sun50i-a64.c
index 49bd7a4c015c..5f66bf879772 100644
--- a/drivers/clk/sunxi-ng/ccu-sun50i-a64.c
+++ b/drivers/clk/sunxi-ng/ccu-sun50i-a64.c
@@ -921,11 +921,26 @@ static const struct sunxi_ccu_desc sun50i_a64_ccu_desc = {
 	.num_resets	= ARRAY_SIZE(sun50i_a64_ccu_resets),
 };
 
+static struct ccu_pll_nb sun50i_a64_pll_cpu_nb = {
+	.common	= &pll_cpux_clk.common,
+	/* copy from pll_cpux_clk */
+	.enable	= BIT(31),
+	.lock	= BIT(28),
+};
+
+static struct ccu_mux_nb sun50i_a64_cpu_nb = {
+	.common		= &cpux_clk.common,
+	.cm		= &cpux_clk.mux,
+	.delay_us	= 1, /* > 8 clock cycles at 24 MHz */
+	.bypass_index	= 1, /* index of 24 MHz oscillator */
+};
+
 static int sun50i_a64_ccu_probe(struct platform_device *pdev)
 {
 	struct resource *res;
 	void __iomem *reg;
 	u32 val;
+	int ret;
 
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	reg = devm_ioremap_resource(&pdev->dev, res);
@@ -939,7 +954,18 @@ static int sun50i_a64_ccu_probe(struct platform_device *pdev)
 
 	writel(0x515, reg + SUN50I_A64_PLL_MIPI_REG);
 
-	return sunxi_ccu_probe(pdev->dev.of_node, reg, &sun50i_a64_ccu_desc);
+	ret = sunxi_ccu_probe(pdev->dev.of_node, reg, &sun50i_a64_ccu_desc);
+	if (ret)
+		return ret;
+
+	/* Gate then ungate PLL CPU after any rate changes */
+	ccu_pll_notifier_register(&sun50i_a64_pll_cpu_nb);
+
+	/* Reparent CPU during PLL CPU rate changes */
+	ccu_mux_notifier_register(pll_cpux_clk.common.hw.clk,
+				  &sun50i_a64_cpu_nb);
+
+	return 0;
 }
 
 static const struct of_device_id sun50i_a64_ccu_ids[] = {
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
