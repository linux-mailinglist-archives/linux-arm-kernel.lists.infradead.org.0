Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7929415E8B1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 18:02:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zOMedoeZn4N30PHSXkEiDy5WfnOSPw3mcMl2pNjLrns=; b=dcrihKaOmSFLq3
	U+7vhDjXSJvnnSO4a9ROvrRyZ9dkaYr8/PFoCPoPl1Wc+THdzpq1/jBuEbAuu/F/5jhRIFqKS6pmb
	EHRmW9/qf2uZ7yUeQyJvdwhEATDle9mMV5W44l/NWipzi/R7Uu89V7O79qjlj83vUcrCzy5LTbg8m
	2ZDKttUU5gIIYuHUEsMD1LU90Xtb88sQGPbkqidLnO0xvd46mwRoLhsZYHKhNpkgcbEa1FDxgEOKh
	MkvxnDsEFmKKRbQXOR0viTVbZGMR9ekUfx81Wd79Up0Pev6q9FCw3y/329MC86oZpzznuH4bHZuul
	lW+kvuSULDQvgvo+qGPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2eLp-0003FN-KN; Fri, 14 Feb 2020 17:02:01 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2e78-0000Bo-Sr
 for linux-arm-kernel@bombadil.infradead.org; Fri, 14 Feb 2020 16:46:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=HJlLLHXqSPMD8WaLFMJN0JIck3cK6L7Hgiky29ouBGs=; b=BikhnGB85z4GQDsTMwjXcSwcrm
 G/2n5hy/YTgrnP6hOcbY64Ikby4crAfKYEUDqgjlLQvqyUecuoJHRlTUTFsgqyoV3P6ChRcjbK3ZN
 /NlQRli4qTvsRKXcJJe5dhTiASapA6NR2yoMfQlOQR9yjAijkg7Bz7Fw8ONzTnxh/1qLaxBUSMhJR
 HTarU/0aONjmanMQQmSLNcq6zZLZ07RStV5GB2dEatpAvRua8dJzlPrGtVvRF+bgCo8Uoy9Hwakj/
 0rDTGuewm0J1kPhxw55aeIkmrPfI9Eb/xpn8/42FWWUturAGU3ZxJyGi5Lll7u40UM9r6lQW8Cc0t
 47RR0IAw==;
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2dbq-0007Tq-2s
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 16:14:31 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 50BC7246C9;
 Fri, 14 Feb 2020 16:14:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581696869;
 bh=tUg751Affnoyn3FW3QZPYI49oz153hfQFyw6kq9w/7c=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=DydkC+POnT3dwBRP3WzbOSYRIJm3ycCArGZZRur2iv0aLxxzycsHcvHbMN0/0bLqM
 m5Caq6g6/LQdbAPqKKt0o9hqwUfMXbI3CHlik0zXyr7kXe2SMyxY4AWe1x0wrpVQNs
 8Nx25fE/Q8nNDhHA3tEnX5gtFIaHkXhDNF5D6tWA=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 127/252] clk: sunxi-ng: add mux and pll notifiers
 for A64 CPU clock
Date: Fri, 14 Feb 2020 11:09:42 -0500
Message-Id: <20200214161147.15842-127-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214161147.15842-1-sashal@kernel.org>
References: <20200214161147.15842-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sasha Levin <sashal@kernel.org>, Maxime Ripard <maxime@cerno.tech>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Icenowy Zheng <icenowy@aosc.io>

[ Upstream commit ec97faff743b398e21f74a54c81333f3390093aa ]

The A64 PLL_CPU clock has the same instability if some factor changed
without the PLL gated like other SoCs with sun6i-style CCU, e.g. A33,
H3.

Add the mux and pll notifiers for A64 CPU clock to workaround the
problem.

Fixes: c6a0637460c2 ("clk: sunxi-ng: Add A64 clocks")
Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/clk/sunxi-ng/ccu-sun50i-a64.c | 28 ++++++++++++++++++++++++++-
 1 file changed, 27 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/sunxi-ng/ccu-sun50i-a64.c b/drivers/clk/sunxi-ng/ccu-sun50i-a64.c
index dec4a130390a3..9ac6c299e0744 100644
--- a/drivers/clk/sunxi-ng/ccu-sun50i-a64.c
+++ b/drivers/clk/sunxi-ng/ccu-sun50i-a64.c
@@ -901,11 +901,26 @@ static const struct sunxi_ccu_desc sun50i_a64_ccu_desc = {
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
@@ -919,7 +934,18 @@ static int sun50i_a64_ccu_probe(struct platform_device *pdev)
 
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
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
