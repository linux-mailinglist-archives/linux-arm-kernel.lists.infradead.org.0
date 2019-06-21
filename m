Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 964A84E353
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 11:20:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FfhYf4wWZrMFloFDFJeiSGZvGD0EKvW8ChZZNHHLDjM=; b=qf3bokbbcnvftPFkhmdNJHitt5
	biw/74VynXmQ5I/cxEAe+LDd51vZpeS3hD+Z4hcVbJLZ519p6ROsaFRSbOyytQXKBLmMtBBHu1mIR
	twEW8dJ0aj0GrYZavi22Q3Ozo8+H7pX7PdVOIflMpN6Iyk6okrpV/m+3Jq9Ni1AIhWvVeZiX1uDy6
	+Lic1Gz9yPJkvvmkHU2vMTMziVnDT+A+xUPezdfxLvNxiX6gMiBi7LHwNfjUXZyBa2V6NYUpj0l8c
	6ZGgfkxmMPjTP2Zx3vsi259x1DcCIOLDCJqBMBPpoJnRvhjhz9LiLtMEuQq66o/5Z6wraXOxCoeSx
	yskePRCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heFis-0006RY-Fd; Fri, 21 Jun 2019 09:20:42 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heFcQ-0008OY-6m
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 09:14:07 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id A849B25BE01;
 Fri, 21 Jun 2019 19:13:52 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id B0EB1940ACC; Fri, 21 Jun 2019 11:13:50 +0200 (CEST)
From: Simon Horman <horms+renesas@verge.net.au>
To: linux-renesas-soc@vger.kernel.org
Subject: [PATCH 04/22] ARM: dts: r7s9210: Add SDHI support
Date: Fri, 21 Jun 2019 11:13:31 +0200
Message-Id: <a49f76cddaee89ffe7e72cf6e38c3635b97058b8.1561104194.git.horms+renesas@verge.net.au>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1561104194.git.horms+renesas@verge.net.au>
References: <cover.1561104194.git.horms+renesas@verge.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_021402_427832_B0F58B57 
X-CRM114-Status: UNSURE (   9.69  )
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

Add SDHI support for the R7S9210 (RZ/A2) SoC.

Signed-off-by: Chris Brandt <chris.brandt@renesas.com>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Simon Horman <horms+renesas@verge.net.au>
---
 arch/arm/boot/dts/r7s9210.dtsi | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm/boot/dts/r7s9210.dtsi b/arch/arm/boot/dts/r7s9210.dtsi
index 1cd982c9920f..2eaa5eeba509 100644
--- a/arch/arm/boot/dts/r7s9210.dtsi
+++ b/arch/arm/boot/dts/r7s9210.dtsi
@@ -322,6 +322,30 @@
 			status = "disabled";
 		};
 
+		sdhi0: sd@e8228000 {
+			compatible = "renesas,sdhi-r7s9210";
+			reg = <0xe8228000 0x8c0>;
+			interrupts = <GIC_SPI 322 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD 103>, <&cpg CPG_MOD 102>;
+			clock-names = "core", "cd";
+			power-domains = <&cpg>;
+			cap-sd-highspeed;
+			cap-sdio-irq;
+			status = "disabled";
+		};
+
+		sdhi1: sd@e822a000 {
+			compatible = "renesas,sdhi-r7s9210";
+			reg = <0xe822a000 0x8c0>;
+			interrupts = <GIC_SPI 324 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cpg CPG_MOD 101>, <&cpg CPG_MOD 100>;
+			clock-names = "core", "cd";
+			power-domains = <&cpg>;
+			cap-sd-highspeed;
+			cap-sdio-irq;
+			status = "disabled";
+		};
+
 		gic: interrupt-controller@e8221000 {
 			compatible = "arm,gic-400";
 			#interrupt-cells = <3>;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
