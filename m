Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C73B1DA943
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 06:31:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ya0M1AboSiaDtPgNU5OObAh70tOwCb65nlkEyR1grls=; b=ihjNK1sWHrAlcS
	drM3q0g8ei6/h2E/+tdC7l/uTuMyXVwT4vflkl9GvsM/gM7OuiOLKQp4zeY5NXk3cQuKkGcDXipOg
	09qZNnOqlmw9LoHdWmBu5I1Y0yLow23GLByMY+jCJNNniVTdRbibwwCQFQiW8Kt8Bj7eTVl7alIQS
	BEQLiHxxEMAr2sQ5F7FTBzZMjB463FwoK5lG3kE5SKhKhP1kWinpvKL+sKzXmgwZjbmZ5thyGybZc
	OAOSRvwoopzPXiCaC1CLhaY3mydiBJbaRL0h+PFLQS5B8ZNFEChL1Q2+XmsA8PmrtWxZj4c7nl/qR
	b3PcWMWbF3Rty0o1vu4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbGOL-0002gm-1f; Wed, 20 May 2020 04:31:41 +0000
Received: from gate2.alliedtelesis.co.nz ([2001:df5:b000:5::4])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbGOC-0002ec-GE
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 04:31:34 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 125F48066C;
 Wed, 20 May 2020 16:31:24 +1200 (NZST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1589949084;
 bh=HYil0aCAK5+cV7uSyh8qqAy3CoMjINfwMnZ5mKZOyJY=;
 h=From:To:Cc:Subject:Date;
 b=wnFPDkwlnxE7l21Sb9GAbJZ+A4pZIzashwqsB3ngY6yzLVnI5amSFVPnzR+1dIJEQ
 Hgt0HzYpPYXR7ndeRDCQ5qzj1OHypN1NVtMrYDdVBV/e6QX5G27dJq9P7A/sXgzIbb
 Rhoa4owNYgIunsFoyY5JapdSZrS0EnNcz4YgTG7hXKg4FR8FbvY+KeOT75PRcGj9SC
 EcgEbc9HVATgUlcTcWsc9H7L31SGWvMkwZtfGtGbuSVDJpjcVfMKiMpogi4XypkWIm
 aT041vMpVGX6l0/HmEnW0nIXh0eLLiEnML0uKzan0AdEWeWfzjDMQ8FYZhBQGbuw04
 vOIBeoY/EG9Fg==
Received: from smtp (Not Verified[10.32.16.33]) by mmarshal3.atlnz.lc with
 Trustwave SEG (v7, 5, 8, 10121)
 id <B5ec4b29b0000>; Wed, 20 May 2020 16:31:23 +1200
Received: from hamishm-dl.ws.atlnz.lc (hamishm-dl.ws.atlnz.lc [10.33.24.30])
 by smtp (Postfix) with ESMTP id 7C97D13ED56;
 Wed, 20 May 2020 16:31:22 +1200 (NZST)
Received: by hamishm-dl.ws.atlnz.lc (Postfix, from userid 1133)
 id 761965407CD; Wed, 20 May 2020 16:31:23 +1200 (NZST)
From: Hamish Martin <hamish.martin@alliedtelesis.co.nz>
To: robh+dt@kernel.org,
	rjui@broadcom.com,
	sbranden@broadcom.com
Subject: [PATCH] ARM: dts: bcm: HR2: Fix PPI interrupt types
Date: Wed, 20 May 2020 16:30:42 +1200
Message-Id: <20200520043042.7281-1-hamish.martin@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
x-atlnz-ls: pat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_213132_912350_AF592128 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Hamish Martin <hamish.martin@alliedtelesis.co.nz>, f.fainelli@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

These error messages are output when booting on a BCM HR2 system:
    GIC: PPI11 is secure or misconfigured
    GIC: PPI13 is secure or misconfigured

Per ARM documentation these interrupts are triggered on a rising edge.
See ARM Cortex A-9 MPCore Technical Reference Manual, Revision r4p1,
Section 3.3.8 Interrupt Configuration Registers.

The same issue was resolved for NSP systems in commit 5f1aa51c7a1e
("ARM: dts: NSP: Fix PPI interrupt types").

Signed-off-by: Hamish Martin <hamish.martin@alliedtelesis.co.nz>
---
 arch/arm/boot/dts/bcm-hr2.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/bcm-hr2.dtsi b/arch/arm/boot/dts/bcm-hr2.dtsi
index 6142c672811e..5e5f5ca3c86f 100644
--- a/arch/arm/boot/dts/bcm-hr2.dtsi
+++ b/arch/arm/boot/dts/bcm-hr2.dtsi
@@ -75,7 +75,7 @@ a9pll: arm_clk@0 {
 		timer@20200 {
 			compatible = "arm,cortex-a9-global-timer";
 			reg = <0x20200 0x100>;
-			interrupts = <GIC_PPI 11 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <GIC_PPI 11 IRQ_TYPE_EDGE_RISING>;
 			clocks = <&periph_clk>;
 		};
 
@@ -83,7 +83,7 @@ twd-timer@20600 {
 			compatible = "arm,cortex-a9-twd-timer";
 			reg = <0x20600 0x20>;
 			interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(1) |
-						  IRQ_TYPE_LEVEL_HIGH)>;
+						  IRQ_TYPE_EDGE_RISING)>;
 			clocks = <&periph_clk>;
 		};
 
@@ -91,7 +91,7 @@ twd-watchdog@20620 {
 			compatible = "arm,cortex-a9-twd-wdt";
 			reg = <0x20620 0x20>;
 			interrupts = <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(1) |
-						  IRQ_TYPE_LEVEL_HIGH)>;
+						  IRQ_TYPE_EDGE_RISING)>;
 			clocks = <&periph_clk>;
 		};
 
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
