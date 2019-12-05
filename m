Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3935114220
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 15:01:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yEsr/r4H3BSQR4M5D5izx3oxKuKY2PzD0S8G/1WKE0o=; b=QYsfhWDkERUtmwfxJ4j/kxhtbJ
	xuN8pIprbz4rxUsJ3anPFSmCQdjpbk5PVh6d5wRzj+L3LZxzmCBp9sDJqX8Sq3x0jpazdp8bWWPLN
	q7W5xNRrBM9XrBwaiD1hptX63NdAJ3XvkzyL9ZqRmDeUagULzF+9HN1b2bWMgPntgU1gBMyRNmCNG
	HercAsNiEAeKDXmRhBGsTAoya3tNabH94w8U/v6gv0t3l6iFKbw1tR+S+e7gG9IIs9JSeDIwZ0aUp
	Fe5yv6mhkQ5IV0Y74GLIzUEq0E/LIDu1skinOVFHxhCu6BmqFAp93ApUysjJhTa18xP30iSyyVRoo
	8Aw/XOcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icrga-0001KT-26; Thu, 05 Dec 2019 14:00:52 +0000
Received: from baptiste.telenet-ops.be ([2a02:1800:120:4::f00:13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icrfX-0007fr-3k
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 13:59:49 +0000
Received: from ramsan ([84.195.182.253])
 by baptiste.telenet-ops.be with bizsmtp
 id aDzY210065USYZQ01DzYcN; Thu, 05 Dec 2019 14:59:33 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1icrfI-0002Kv-2N; Thu, 05 Dec 2019 14:59:32 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1icrfI-0001x8-12; Thu, 05 Dec 2019 14:59:32 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Magnus Damm <magnus.damm@gmail.com>
Subject: [PATCH 2/6] arm64: dts: renesas: r8a77961: Add GPIO nodes
Date: Thu,  5 Dec 2019 14:59:26 +0100
Message-Id: <20191205135930.7454-3-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191205135930.7454-1-geert+renesas@glider.be>
References: <20191205135930.7454-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_055947_307880_CB22A0BB 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:13 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-renesas-soc@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Eugeniu Rosca <erosca@de.adit-jv.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add device nodes for the GPIO controllers on the Renesas R-Car M3-W+
(r8a77961) SoC.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
Test procedure (with "[PATCH 3/6] arm64: dts: renesas: r8a77961: Add
RAVB node"):
  1. "ifconfig eth0 1.2.3.4",
  2. "watch grep e6052000.gpio /proc/interrupts",
  3. See interrupt count increase when Ethernet link goes up.
---
 arch/arm64/boot/dts/renesas/r8a77961.dtsi | 85 +++++++++++++++++++++--
 1 file changed, 80 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/r8a77961.dtsi b/arch/arm64/boot/dts/renesas/r8a77961.dtsi
index ea2c6445977f3d99..10e768ce2bc70e0c 100644
--- a/arch/arm64/boot/dts/renesas/r8a77961.dtsi
+++ b/arch/arm64/boot/dts/renesas/r8a77961.dtsi
@@ -328,49 +328,124 @@
 			status = "disabled";
 		};
 
+		gpio0: gpio@e6050000 {
+			compatible = "renesas,gpio-r8a77961",
+				     "renesas,rcar-gen3-gpio";
+			reg = <0 0xe6050000 0 0x50>;
+			interrupts = <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>;
+			#gpio-cells = <2>;
+			gpio-controller;
+			gpio-ranges = <&pfc 0 0 16>;
+			#interrupt-cells = <2>;
+			interrupt-controller;
+			clocks = <&cpg CPG_MOD 912>;
+			power-domains = <&sysc R8A77961_PD_ALWAYS_ON>;
+			resets = <&cpg 912>;
+		};
+
+		gpio1: gpio@e6051000 {
+			compatible = "renesas,gpio-r8a77961",
+				     "renesas,rcar-gen3-gpio";
+			reg = <0 0xe6051000 0 0x50>;
+			interrupts = <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>;
+			#gpio-cells = <2>;
+			gpio-controller;
+			gpio-ranges = <&pfc 0 32 29>;
+			#interrupt-cells = <2>;
+			interrupt-controller;
+			clocks = <&cpg CPG_MOD 911>;
+			power-domains = <&sysc R8A77961_PD_ALWAYS_ON>;
+			resets = <&cpg 911>;
+		};
+
 		gpio2: gpio@e6052000 {
+			compatible = "renesas,gpio-r8a77961",
+				     "renesas,rcar-gen3-gpio";
 			reg = <0 0xe6052000 0 0x50>;
+			interrupts = <GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>;
 			#gpio-cells = <2>;
 			gpio-controller;
+			gpio-ranges = <&pfc 0 64 15>;
 			#interrupt-cells = <2>;
 			interrupt-controller;
-			/* placeholder */
+			clocks = <&cpg CPG_MOD 910>;
+			power-domains = <&sysc R8A77961_PD_ALWAYS_ON>;
+			resets = <&cpg 910>;
 		};
 
 		gpio3: gpio@e6053000 {
+			compatible = "renesas,gpio-r8a77961",
+				     "renesas,rcar-gen3-gpio";
 			reg = <0 0xe6053000 0 0x50>;
+			interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
 			#gpio-cells = <2>;
 			gpio-controller;
+			gpio-ranges = <&pfc 0 96 16>;
 			#interrupt-cells = <2>;
 			interrupt-controller;
-			/* placeholder */
+			clocks = <&cpg CPG_MOD 909>;
+			power-domains = <&sysc R8A77961_PD_ALWAYS_ON>;
+			resets = <&cpg 909>;
 		};
 
 		gpio4: gpio@e6054000 {
+			compatible = "renesas,gpio-r8a77961",
+				     "renesas,rcar-gen3-gpio";
 			reg = <0 0xe6054000 0 0x50>;
+			interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
 			#gpio-cells = <2>;
 			gpio-controller;
+			gpio-ranges = <&pfc 0 128 18>;
 			#interrupt-cells = <2>;
 			interrupt-controller;
-			/* placeholder */
+			clocks = <&cpg CPG_MOD 908>;
+			power-domains = <&sysc R8A77961_PD_ALWAYS_ON>;
+			resets = <&cpg 908>;
 		};
 
 		gpio5: gpio@e6055000 {
+			compatible = "renesas,gpio-r8a77961",
+				     "renesas,rcar-gen3-gpio";
 			reg = <0 0xe6055000 0 0x50>;
+			interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>;
 			#gpio-cells = <2>;
 			gpio-controller;
+			gpio-ranges = <&pfc 0 160 26>;
 			#interrupt-cells = <2>;
 			interrupt-controller;
-			/* placeholder */
+			clocks = <&cpg CPG_MOD 907>;
+			power-domains = <&sysc R8A77961_PD_ALWAYS_ON>;
+			resets = <&cpg 907>;
 		};
 
 		gpio6: gpio@e6055400 {
+			compatible = "renesas,gpio-r8a77961",
+				     "renesas,rcar-gen3-gpio";
 			reg = <0 0xe6055400 0 0x50>;
+			interrupts = <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>;
 			#gpio-cells = <2>;
 			gpio-controller;
+			gpio-ranges = <&pfc 0 192 32>;
 			#interrupt-cells = <2>;
 			interrupt-controller;
-			/* placeholder */
+			clocks = <&cpg CPG_MOD 906>;
+			power-domains = <&sysc R8A77961_PD_ALWAYS_ON>;
+			resets = <&cpg 906>;
+		};
+
+		gpio7: gpio@e6055800 {
+			compatible = "renesas,gpio-r8a77961",
+				     "renesas,rcar-gen3-gpio";
+			reg = <0 0xe6055800 0 0x50>;
+			interrupts = <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>;
+			#gpio-cells = <2>;
+			gpio-controller;
+			gpio-ranges = <&pfc 0 224 4>;
+			#interrupt-cells = <2>;
+			interrupt-controller;
+			clocks = <&cpg CPG_MOD 905>;
+			power-domains = <&sysc R8A77961_PD_ALWAYS_ON>;
+			resets = <&cpg 905>;
 		};
 
 		pfc: pin-controller@e6060000 {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
