Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDF9F180555
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 18:47:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OLoSIUhfD0xjAXXOuHHzpc68TvKSwywUk0WKbA2TEcA=; b=hPQzeTGAlztNGi
	VQGUQMo6aqm1HRncIw5luHZlUWYMenHsNkA09DERMnFuveL0iQEMuCdNG2Ts9ROqGKdzLbkc9jq0o
	lo9sTjcizv/1MCnI2RwdY7JOfK7hrUvX4vXDqhnGlwlDA7+iKwke7HdkrT72FNFkxFUwa7sPep5ln
	b0Fsy/Z5gyJZd3p4yPeVeguKECOfcQDxc1CO3foPM/EKGCtLvHZpmp5Q868O6pE8n0Ylsc/6ZO3yS
	y/9A5eioB8OqudNds0RzMcGoiKf9JZ5+6tHpM2rNFReNvb1eirkMsEs4wMTnJjbzO40wThx4B2jsF
	l8wmDrl7JPs2BVXqVFPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBiyg-0008F3-31; Tue, 10 Mar 2020 17:47:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBiyH-00082n-SD
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 17:47:15 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C0C4121D7E;
 Tue, 10 Mar 2020 17:47:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583862432;
 bh=L/g69189loolLa5gwwsa6SGkomtLZ00efuDIf4aB4kk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Q9vL0XX/mfnj7A/ngBoRrJFrke2SgqrL6rNIKO8ipP5EycnLce+R+zi6GpfsvDK4K
 rhFg9MEplTMdnx7eZb3bvcQkonOPuqtF0xkijYIafz9k3xyu3NF/E3ByXWmXjifSvH
 sYABcsJGTdMGe3SoSZCXbvfDZQzzi21aOtdmsI1o=
Received: by wens.tw (Postfix, from userid 1000)
 id 2AC5A604E2; Wed, 11 Mar 2020 01:47:09 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Maxime Ripard <mripard@kernel.org>
Subject: [PATCH 1/3] ARM: dts: sun8i: r40: Move AHCI device node based on
 address order
Date: Wed, 11 Mar 2020 01:47:07 +0800
Message-Id: <20200310174709.24174-2-wens@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200310174709.24174-1-wens@kernel.org>
References: <20200310174709.24174-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_104713_933257_D2BF8865 
X-CRM114-Status: GOOD (  13.21  )
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

When the AHCI device node was added, it was added in the wrong location
in the device tree file. The device nodes should be sorted by register
address.

Move the device node to before EHCI1, where it belongs.

Fixes: 41c64d3318aa ("ARM: dts: sun8i: r40: add sata node")
Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 arch/arm/boot/dts/sun8i-r40.dtsi | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi b/arch/arm/boot/dts/sun8i-r40.dtsi
index d5442b5b6fd2..b278686d0c22 100644
--- a/arch/arm/boot/dts/sun8i-r40.dtsi
+++ b/arch/arm/boot/dts/sun8i-r40.dtsi
@@ -307,6 +307,17 @@ crypto: crypto@1c15000 {
 			resets = <&ccu RST_BUS_CE>;
 		};
 
+		ahci: sata@1c18000 {
+			compatible = "allwinner,sun8i-r40-ahci";
+			reg = <0x01c18000 0x1000>;
+			interrupts = <GIC_SPI 56 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_SATA>, <&ccu CLK_SATA>;
+			resets = <&ccu RST_BUS_SATA>;
+			reset-names = "ahci";
+			status = "disabled";
+
+		};
+
 		ehci1: usb@1c19000 {
 			compatible = "allwinner,sun8i-r40-ehci", "generic-ehci";
 			reg = <0x01c19000 0x100>;
@@ -733,17 +744,6 @@ spi3: spi@1c0f000 {
 			#size-cells = <0>;
 		};
 
-		ahci: sata@1c18000 {
-			compatible = "allwinner,sun8i-r40-ahci";
-			reg = <0x01c18000 0x1000>;
-			interrupts = <GIC_SPI 56 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&ccu CLK_BUS_SATA>, <&ccu CLK_SATA>;
-			resets = <&ccu RST_BUS_SATA>;
-			reset-names = "ahci";
-			status = "disabled";
-
-		};
-
 		gmac: ethernet@1c50000 {
 			compatible = "allwinner,sun8i-r40-gmac";
 			syscon = <&ccu>;
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
