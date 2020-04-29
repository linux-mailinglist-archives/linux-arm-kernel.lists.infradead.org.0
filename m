Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB5C51BE911
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 22:48:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C6D/qdh+w3TMNMBWQOHOG8ZOfs4QXelvJTYvvpSxKxQ=; b=gcVr7OLgTc0F74
	HFN2JtCFVobfmF7Cy1Fyg2hLPzLHbC39DNqXXxfAgYKRIuCuUIrUt5PmL3fVQ3ozHsttoVFQ5Plf/
	Fc9jT7rOZfRpsqTa/PM5LQX3JBzQbB2wYm3xIeLdt779vAwTpXb8FzzKVjkXZQhd7dSlURShP6c21
	a5/SzpvvqjilS3oZZ7ZgOTEO321SPBQQ8OJtyaMhFyxDB7TrqR1lYcRR21rGkVjG+Hfe4fwENK2en
	iipLmO6bntiz4uSGLIZwB5ib3qIHa1KhC5itC6fsBBVLha73nZHWx5HkSx46IUi4HPqjRxUwTN1zt
	SDqi1i9oRCQdKa5wk/1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTtdA-0006aQ-8s; Wed, 29 Apr 2020 20:48:32 +0000
Received: from plaes.org ([188.166.43.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTtbh-0005Nz-Es
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 20:47:09 +0000
Received: from localhost (unknown [IPv6:2001:1530:1000:d397:940e:6b9e:3deb:3])
 by plaes.org (Postfix) with ESMTPSA id 27C2F406D2;
 Wed, 29 Apr 2020 20:46:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=plaes.org; s=mail;
 t=1588193189; bh=hD8MO8nZG7cWOQMyvrg2gESOCiX1BXG9t5neHczu/iA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=iXIpe3Y+PbIFsrKy3pI5oWGv70swaGWQqS0jNKqF7Fa+apASm3B0MrhusmrrJct93
 apTgFtSE9y10wyorWdpzYyKvpYnoAoLHS9WsVhI85vFWnpdNgOY6X3m1BMjVnXWNvi
 o9575D9Z3tGZHvKXj4E9BCpabTbKzYDx3kxJieWWTIz+bw1eYx7+SFBxvcnxfwyRke
 OXvYI21clbu6d52frM234CHwkvxIq8JelPajlOQmVK8uCWFAbvK1X2ftMF/7VhUjmn
 qPy3JuXulTak3ZaFlnenKIVtgdGLHxoTW8F2s/59pxl+bzI1SOLS1ErlzZsOONWpzY
 ywl/yvEglystw==
From: Priit Laes <plaes@plaes.org>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-sunxi@googlegroups.com
Subject: [PATCH v2 6/6] ARM: dts: sun6i: Use syscon-based implementation for
 gmac
Date: Wed, 29 Apr 2020 23:46:12 +0300
Message-Id: <20200429204612.31883-7-plaes@plaes.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200429204612.31883-1-plaes@plaes.org>
References: <20200429204612.31883-1-plaes@plaes.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_134701_681535_A3E04504 
X-CRM114-Status: GOOD (  10.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Priit Laes <plaes@plaes.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use syscon-based approach to access gmac clock configuration
register instead of relying on a custom clock driver.

As a bonus, we can now drop the custom clock implementation
and the dummy clocks.

Signed-off-by: Priit Laes <plaes@plaes.org>
---
 arch/arm/boot/dts/sun6i-a31.dtsi | 35 +++-----------------------------
 1 file changed, 3 insertions(+), 32 deletions(-)

diff --git a/arch/arm/boot/dts/sun6i-a31.dtsi b/arch/arm/boot/dts/sun6i-a31.dtsi
index f3425a66fc0a..fcf8a242741f 100644
--- a/arch/arm/boot/dts/sun6i-a31.dtsi
+++ b/arch/arm/boot/dts/sun6i-a31.dtsi
@@ -228,36 +228,6 @@ osc32k: clk-32k {
 			clock-output-names = "ext_osc32k";
 		};
 
-		/*
-		 * The following two are dummy clocks, placeholders
-		 * used in the gmac_tx clock. The gmac driver will
-		 * choose one parent depending on the PHY interface
-		 * mode, using clk_set_rate auto-reparenting.
-		 *
-		 * The actual TX clock rate is not controlled by the
-		 * gmac_tx clock.
-		 */
-		mii_phy_tx_clk: clk-mii-phy-tx {
-			#clock-cells = <0>;
-			compatible = "fixed-clock";
-			clock-frequency = <25000000>;
-			clock-output-names = "mii_phy_tx";
-		};
-
-		gmac_int_tx_clk: clk-gmac-int-tx {
-			#clock-cells = <0>;
-			compatible = "fixed-clock";
-			clock-frequency = <125000000>;
-			clock-output-names = "gmac_int_tx";
-		};
-
-		gmac_tx_clk: clk@1c200d0 {
-			#clock-cells = <0>;
-			compatible = "allwinner,sun7i-a20-gmac-clk";
-			reg = <0x01c200d0 0x4>;
-			clocks = <&mii_phy_tx_clk>, <&gmac_int_tx_clk>;
-			clock-output-names = "gmac_tx";
-		};
 	};
 
 	de: display-engine {
@@ -943,11 +913,12 @@ i2c3: i2c@1c2b800 {
 
 		gmac: ethernet@1c30000 {
 			compatible = "allwinner,sun7i-a20-gmac";
+			syscon = <&ccu>;
 			reg = <0x01c30000 0x1054>;
 			interrupts = <GIC_SPI 82 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "macirq";
-			clocks = <&ccu CLK_AHB1_EMAC>, <&gmac_tx_clk>;
-			clock-names = "stmmaceth", "allwinner_gmac_tx";
+			clocks = <&ccu CLK_AHB1_EMAC>;
+			clock-names = "stmmaceth";
 			resets = <&ccu RST_AHB1_EMAC>;
 			reset-names = "stmmaceth";
 			snps,pbl = <2>;
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
