Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7108B180563
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 18:48:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Q5pipVNvZnsAKofNsVbiBJE5BqXksJotctuBTNGivU=; b=isjb94n0u6WPCn
	Q0Fpy6hL1d48DuLqBrvFPn7etpjy+vhR6ooCL2qBuv2B5JTUltQqYU04bfRaZ44pQgut4o0IekbPu
	/QlazCPyM7p/lXwO+SR0ExmMNEQK+1QuRLYvP5IgQr55DSxcVcXkzrI5LkcXEZbbSVCv/OcAePlRp
	CvHY1rxZpuSLmUPqSw+/vfguJEy+zrELIZpE1G/rNEp1rS/S2MaRng4jhQNi+8PvBSHr9lI2G2tC+
	WBmOUK6Gk/Xh/Ve5h6dD0eN7R0B5XjkrOgn6p0Lup7yY9RdSN/k+z8ztbrdB70hTEax7mHJpUVt3Y
	iHCktXmC1y45Y7Rg2OHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBiyv-0008U3-GY; Tue, 10 Mar 2020 17:47:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBiyH-00082o-VB
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 17:47:16 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C6996222C3;
 Tue, 10 Mar 2020 17:47:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583862432;
 bh=GOx4OHBvG32/cclcjnBNpdMqfGpHrRJvLJMaBmsudos=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=qt2AfPD5pSEEtyxk692KetnfrHYUOfrynhczQwxVq0/FhgZ/z+cHZkIUaUf9YWSUs
 q6UjCdeF/4XigqzSsjpyfLDD5wF2PoN50Lag8JuwFF81zHVvZqu/bvWN4ytqyBp41a
 CpiATD3FXlngWnL3zTf55p2iY7kuR/I05ie5dI5A=
Received: by wens.tw (Postfix, from userid 1000)
 id 20CDA604FD; Wed, 11 Mar 2020 01:47:10 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Maxime Ripard <mripard@kernel.org>
Subject: [PATCH 2/3] ARM: dts: sun8i: r40: Fix register base address for SPI2
 and SPI3
Date: Wed, 11 Mar 2020 01:47:08 +0800
Message-Id: <20200310174709.24174-3-wens@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200310174709.24174-1-wens@kernel.org>
References: <20200310174709.24174-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_104714_052931_9E196C1D 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

When the SPI device nodes were added, SPI2 and SPI3 had incorrect
register base addresses.

Fix the base address for both of them.

Fixes: 554581b79139 ("ARM: dts: sun8i: R40: Add SPI controllers nodes and pinmuxes")
Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 arch/arm/boot/dts/sun8i-r40.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi b/arch/arm/boot/dts/sun8i-r40.dtsi
index b278686d0c22..81cc92ddc78b 100644
--- a/arch/arm/boot/dts/sun8i-r40.dtsi
+++ b/arch/arm/boot/dts/sun8i-r40.dtsi
@@ -718,10 +718,10 @@ spi1: spi@1c06000 {
 			#size-cells = <0>;
 		};
 
-		spi2: spi@1c07000 {
+		spi2: spi@1c17000 {
 			compatible = "allwinner,sun8i-r40-spi",
 				     "allwinner,sun8i-h3-spi";
-			reg = <0x01c07000 0x1000>;
+			reg = <0x01c17000 0x1000>;
 			interrupts = <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&ccu CLK_BUS_SPI2>, <&ccu CLK_SPI2>;
 			clock-names = "ahb", "mod";
@@ -731,10 +731,10 @@ spi2: spi@1c07000 {
 			#size-cells = <0>;
 		};
 
-		spi3: spi@1c0f000 {
+		spi3: spi@1c1f000 {
 			compatible = "allwinner,sun8i-r40-spi",
 				     "allwinner,sun8i-h3-spi";
-			reg = <0x01c0f000 0x1000>;
+			reg = <0x01c1f000 0x1000>;
 			interrupts = <GIC_SPI 50 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&ccu CLK_BUS_SPI3>, <&ccu CLK_SPI3>;
 			clock-names = "ahb", "mod";
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
