Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A1541AE83F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Apr 2020 00:29:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OfGH6QT1jOF4QB0D/UBPUgtrCCCJDE16U9KfE8DFrJc=; b=c7FeWqo/WvrXfn
	fTGE8dgjCw4vzj1MxTXdSPHYxbebCiYV2kdyOU21TkmAdhwXgWZ55tIHpv7Ln7LMnN8/YoFZP+ovp
	rzUCzdnN1xpP8t37guhwcdVt0prAPZ6y1NF90DvIU4inC+ryGXx+x54TYYFi1XALYQ4tiDU0wOYRL
	MI4FcYn+sLW2YMnQVWdaodA3DptpugaPXsM8KgjpMI1miHzS4iNkK3l0ZfajYnhvfbFDCuX9vHTd7
	kfDx7XVoFXXYJMiB4TvLXRRSUnrtKhJzWsO8OEODkL8BXNy5a+QK508yaYWK7bBQb5GSymYXSxDYx
	xXsBnHxkuUB+fofLawNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPZUU-00063b-LZ; Fri, 17 Apr 2020 22:29:42 +0000
Received: from plaes.org ([188.166.43.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPZU3-0005tz-D3
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 22:29:16 +0000
Received: from localhost (unknown [IPv6:2001:1530:1000:9d4d:940e:6b9e:3deb:4])
 by plaes.org (Postfix) with ESMTPSA id C54B6412C2;
 Fri, 17 Apr 2020 22:17:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=plaes.org; s=mail;
 t=1587161878; bh=CuWTSWogL5JToClyKPKUHBYOUHXu6/mkEKPAV4YLbVw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=lZETRBcXeQXm8yzTNezI5LpsawhmT8InxOuYc/djy0Tr2ewY2eL3Q+CgV/M37HiTY
 Ok5hFWQ1wLhPv9cQyKOStSWzVJECt3nCDoVnfLaJymnL7tNDHDfYUgofkRBISORYZX
 YTGqG+6yh+QsHUxyvv2R9w5PGq758CdpEN2AxZ4WGZHJMSI4OZB8M4CEsCq7GoCUQZ
 AO1JX/rsW7h7DA5GdvIV9JNnZHAVv3TMtr3uHtDi+M2WTvv99yvTs/NpqwaN3gMoHQ
 wBSjctLImhQRE6JQ6TsAsjOKKEDxr9+Bm+T6QjHN8iIl30QWBRj6bovCWEtQLLTbqI
 4gY/XgaRPPfmA==
From: Priit Laes <plaes@plaes.org>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-sunxi@googlegroups.com
Subject: [PATCH 4/4] ARM: dts: sun7i: Use syscon-based implementation for gmac
Date: Sat, 18 Apr 2020 01:17:30 +0300
Message-Id: <20200417221730.555954-5-plaes@plaes.org>
X-Mailer: git-send-email 2.25.2
In-Reply-To: <20200417221730.555954-1-plaes@plaes.org>
References: <20200417221730.555954-1-plaes@plaes.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_152915_594594_1FAE1977 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
register, instead of relying on a custom clock driver.

As a bonus, we can now drop the custom clock implementation
and dummy clocks making sun7i fully CCU-compatible.

Signed-off-by: Priit Laes <plaes@plaes.org>
---
 arch/arm/boot/dts/sun7i-a20.dtsi | 36 +++-----------------------------
 1 file changed, 3 insertions(+), 33 deletions(-)

diff --git a/arch/arm/boot/dts/sun7i-a20.dtsi b/arch/arm/boot/dts/sun7i-a20.dtsi
index ffe1d10a1a84..750962a94fad 100644
--- a/arch/arm/boot/dts/sun7i-a20.dtsi
+++ b/arch/arm/boot/dts/sun7i-a20.dtsi
@@ -219,37 +219,6 @@ osc32k: clk-32k {
 			clock-frequency = <32768>;
 			clock-output-names = "osc32k";
 		};
-
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
-		gmac_tx_clk: clk@1c20164 {
-			#clock-cells = <0>;
-			compatible = "allwinner,sun7i-a20-gmac-clk";
-			reg = <0x01c20164 0x4>;
-			clocks = <&mii_phy_tx_clk>, <&gmac_int_tx_clk>;
-			clock-output-names = "gmac_tx";
-		};
 	};
 
 
@@ -1511,11 +1480,12 @@ mali: gpu@1c40000 {
 
 		gmac: ethernet@1c50000 {
 			compatible = "allwinner,sun7i-a20-gmac";
+			syscon = <&ccu>;
 			reg = <0x01c50000 0x10000>;
 			interrupts = <GIC_SPI 85 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "macirq";
-			clocks = <&ccu CLK_AHB_GMAC>, <&gmac_tx_clk>;
-			clock-names = "stmmaceth", "allwinner_gmac_tx";
+			clocks = <&ccu CLK_AHB_GMAC>;
+			clock-names = "stmmaceth";
 			snps,pbl = <2>;
 			snps,fixed-burst;
 			snps,force_sf_dma_mode;
-- 
2.25.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
