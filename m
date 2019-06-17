Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 352D147F41
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 12:06:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wWAAlg8NC0c7xqeGtXTB5bnx39TCtHU/GCJeMjkSuM4=; b=mpZC2dLqB5mFqF
	EiWiq24rCwMik6yLJ33lmBgU/hNvVreZZAQZ/DFbC0q85ccq0SS0Gymm+LD4F7QfzaPBUCxd6E8qG
	oR06MRKZLCpsvzhkvwh3z71DBVe/JqahqqXK09DYG/eN4DQJ3lk3TRI+ou9m+xO8Siu4+iUxy9tsF
	qU76B7OE0RXAhJjE/jdgxTXlCydj8uMjQLSQqYHpnF2BjM7FGfVBYKjtmo9z+FR9EW33aDZ05pjgo
	AfrbtC6CGKYk/3SKZUGMIFz1qlhrccgIiHOTfTd3PjKV3eGA6Exa9iNncgLeNILdD6GllyquR6V0+
	s8DCENrJVHNigj3MXkag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcoWo-0005vL-2p; Mon, 17 Jun 2019 10:06:18 +0000
Received: from gate2.alliedtelesis.co.nz ([2001:df5:b000:5::4])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcoVU-0003lk-Jn
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 10:04:59 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id DFEF2891AB;
 Mon, 17 Jun 2019 22:04:44 +1200 (NZST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1560765884;
 bh=wqBkEYXWtPPxu4J3I2mSTeb2gWRTtAdwWYpWsZ0Pz5w=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=kTFmqq8TYh5IsmqlGGqsjJuGggnRyLewB5suQn6SKcuuvkb9BgrP1R1bW9XVU3c9k
 dx9OkXrMFR+Fcx+TmhFIPZSPifHMNkfG9hA9L4utzAxbt3hgcFxNfYqfNpjazhXYA+
 sjp7FWA8dFtEkEjoswYzDjfWxEZcizWKZuIu/h60iTgjr8l/D5OTTqxSW1wB88UW1B
 +wUx29ZtQQ1Y55KtKe5Z5uUqRvCyazqwxo1ICvYPrqsx54v1LPiuJfGeAbnQE2gW0H
 e96D2nk1j+y/rsKo66nYN2jU6JIbosHbCr1VUUa1NvfLKd+lwalsw2PAKQ4VZIo/KW
 qZzz5hWVpYtHA==
Received: from smtp (Not Verified[10.32.16.33]) by mmarshal3.atlnz.lc with
 Trustwave SEG (v7, 5, 8, 10121)
 id <B5d0765bc0004>; Mon, 17 Jun 2019 22:04:44 +1200
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.30])
 by smtp (Postfix) with ESMTP id BAF9913EED3;
 Mon, 17 Jun 2019 22:04:45 +1200 (NZST)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
 id 921251E04F0; Mon, 17 Jun 2019 22:04:44 +1200 (NZST)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, linus.walleij@linaro.org, jason@lakedaemon.net,
 andrew@lunn.ch, gregory.clement@bootlin.com,
 sebastian.hesselbarth@gmail.com, linux-gpio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 4/4] clk: kirkwood: Add support for MV98DX1135
Date: Mon, 17 Jun 2019 22:04:32 +1200
Message-Id: <20190617100432.13037-5-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190617100432.13037-1-chris.packham@alliedtelesis.co.nz>
References: <20190617100432.13037-1-chris.packham@alliedtelesis.co.nz>
MIME-Version: 1.0
x-atlnz-ls: pat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_030457_022579_E8AA7F16 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org,
 Chris Packham <chris.packham@alliedtelesis.co.nz>, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The 98DX1135 is a switch chip with an integrated CPU. This is similar to
the 98DX4122 except that the core clock speed is fixed to 166Mhz.

Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
---
 drivers/clk/mvebu/kirkwood.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/clk/mvebu/kirkwood.c b/drivers/clk/mvebu/kirkwood.c
index 35af3aa18f1c..47680237d0be 100644
--- a/drivers/clk/mvebu/kirkwood.c
+++ b/drivers/clk/mvebu/kirkwood.c
@@ -185,6 +185,11 @@ static void __init mv88f6180_get_clk_ratio(
 	}
 }
 
+static u32 __init mv98dx1135_get_tclk_freq(void __iomem *sar)
+{
+	return 166666667;
+}
+
 static const struct coreclk_soc_desc kirkwood_coreclks = {
 	.get_tclk_freq = kirkwood_get_tclk_freq,
 	.get_cpu_freq = kirkwood_get_cpu_freq,
@@ -201,6 +206,14 @@ static const struct coreclk_soc_desc mv88f6180_coreclks = {
 	.num_ratios = ARRAY_SIZE(kirkwood_coreclk_ratios),
 };
 
+static const struct coreclk_soc_desc mv98dx1135_coreclks = {
+	.get_tclk_freq = mv98dx1135_get_tclk_freq,
+	.get_cpu_freq = kirkwood_get_cpu_freq,
+	.get_clk_ratio = kirkwood_get_clk_ratio,
+	.ratios = kirkwood_coreclk_ratios,
+	.num_ratios = ARRAY_SIZE(kirkwood_coreclk_ratios),
+};
+
 /*
  * Clock Gating Control
  */
@@ -325,6 +338,8 @@ static void __init kirkwood_clk_init(struct device_node *np)
 
 	if (of_device_is_compatible(np, "marvell,mv88f6180-core-clock"))
 		mvebu_coreclk_setup(np, &mv88f6180_coreclks);
+	else if (of_device_is_compatible(np, "marvell,mv98dx1135-core-clock"))
+		mvebu_coreclk_setup(np, &mv98dx1135_coreclks);
 	else
 		mvebu_coreclk_setup(np, &kirkwood_coreclks);
 
@@ -339,3 +354,5 @@ CLK_OF_DECLARE(kirkwood_clk, "marvell,kirkwood-core-clock",
 	       kirkwood_clk_init);
 CLK_OF_DECLARE(mv88f6180_clk, "marvell,mv88f6180-core-clock",
 	       kirkwood_clk_init);
+CLK_OF_DECLARE(98dx1135_clk, "marvell,mv98dx1135-core-clock",
+	       kirkwood_clk_init);
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
