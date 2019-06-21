Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F0CD4E34F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 11:20:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tjofUG37nJet+4ph89VtmmJy++CoNqntg86W+FLmvlA=; b=WeuRbP+/2gCvlvppJX9XiQSUy7
	OhunHfKGtgDnfLMiTrmknKDDm7NV17cb/AX/oSdozlDHEtwfM+GAy//20PZRdC613nQl5je0C8Uze
	dW8sFM92+qjU7x37p3iteAOMPeJNtWcR0KrCpVBSFdRc1jaXs6IqjSw9kqoPlxUSLFlerSw2jcERB
	rvNbTHt9SzVmJn2tPmE6vHzuH2Z2GP5k9e0hX9Xf5fJLwgXR2vbgxhXf8XFAntZxko2oL5eUwPiJ/
	vaTyFpN2mz72J61TDuaJ1eaV41p/y2maFrFYxqThlHcZeMLkCIYxUYa5a0zL/SxfOzr5BJsLtX/+w
	bSjw85oQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heFiY-00050A-5k; Fri, 21 Jun 2019 09:20:22 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heFcO-0008OY-1n
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 09:14:01 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id A1EA825B7E0;
 Fri, 21 Jun 2019 19:13:52 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id A11B4940A59; Fri, 21 Jun 2019 11:13:50 +0200 (CEST)
From: Simon Horman <horms+renesas@verge.net.au>
To: linux-renesas-soc@vger.kernel.org
Subject: [PATCH 03/22] ARM: dts: r7s9210: Add RIIC support
Date: Fri, 21 Jun 2019 11:13:30 +0200
Message-Id: <49da03c67c36134363b9fee558e86d39db8147d4.1561104194.git.horms+renesas@verge.net.au>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1561104194.git.horms+renesas@verge.net.au>
References: <cover.1561104194.git.horms+renesas@verge.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_021400_538581_E0B504F0 
X-CRM114-Status: UNSURE (   9.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Simon Horman <horms+renesas@verge.net.au>,
 Chris Brandt <chris.brandt@renesas.com>, Magnus Damm <magnus.damm@gmail.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chris Brandt <chris.brandt@renesas.com>

Add I2C support for the R7S9210 (RZ/A2) SoC.

Signed-off-by: Chris Brandt <chris.brandt@renesas.com>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Simon Horman <horms+renesas@verge.net.au>
---
 arch/arm/boot/dts/r7s9210.dtsi | 76 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 76 insertions(+)

diff --git a/arch/arm/boot/dts/r7s9210.dtsi b/arch/arm/boot/dts/r7s9210.dtsi
index 8e9738467bfa..1cd982c9920f 100644
--- a/arch/arm/boot/dts/r7s9210.dtsi
+++ b/arch/arm/boot/dts/r7s9210.dtsi
@@ -216,6 +216,82 @@
 			status = "disabled";
 		};
 
+		i2c0: i2c@e803a000 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			compatible = "renesas,riic-r7s9210", "renesas,riic-rz";
+			reg = <0xe803a000 0x44>;
+			interrupts = <GIC_SPI 232 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 233 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 234 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 235 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 236 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 237 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 238 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 239 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD 87>;
+			power-domains = <&cpg>;
+			clock-frequency = <100000>;
+			status = "disabled";
+		};
+
+		i2c1: i2c@e803a400 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			compatible = "renesas,riic-r7s9210", "renesas,riic-rz";
+			reg = <0xe803a400 0x44>;
+			interrupts = <GIC_SPI 240 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 241 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 242 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 243 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 244 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 245 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 246 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 247 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD 86>;
+			power-domains = <&cpg>;
+			clock-frequency = <100000>;
+			status = "disabled";
+		};
+
+		i2c2: i2c@e803a800 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			compatible = "renesas,riic-r7s9210", "renesas,riic-rz";
+			reg = <0xe803a800 0x44>;
+			interrupts = <GIC_SPI 248 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 249 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 250 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 251 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 252 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 253 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 254 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 255 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD 85>;
+			power-domains = <&cpg>;
+			clock-frequency = <100000>;
+			status = "disabled";
+		};
+
+		i2c3: i2c@e803ac00 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			compatible = "renesas,riic-r7s9210", "renesas,riic-rz";
+			reg = <0xe803ac00 0x44>;
+			interrupts = <GIC_SPI 256 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 257 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 258 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 259 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 260 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 261 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 262 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 263 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD 84>;
+			power-domains = <&cpg>;
+			clock-frequency = <100000>;
+			status = "disabled";
+		};
+
 		ostm0: timer@e803b000 {
 			compatible = "renesas,r7s9210-ostm", "renesas,ostm";
 			reg = <0xe803b000 0x30>;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
