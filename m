Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50F581648D2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 16:40:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=BxwR94OT8r0IUk+p8d7YJBQg1fAkoumKlf26DBP2D64=; b=F1/
	ROjPx+yQNs7HUPSCOTEDWRAlkAj3bmleqzinnHiNYy3wIC8Yd2yoBskzOZTn+b/3x1PuE1vP5bB2U
	UBoDkznqvJWqIMwozHlPf88TFt1REuJb94VIhQnFuGpj4pvtDux2PTRJsRuDgVrDjQOH3eLE3RgUX
	cN1brzkxze8vCDn4IuTMn/FcvHoVAr1QXiNbQc5nNf+39vKuOqYwlGcBcoWatYsjx1l1R7IStkC5g
	svwITCUYbk9JW4jP+A1bLY9TVLDAYuXLSG6tgVAZm/7MTNzOtNl7yJ3iCVqwFHPu+aV0JVUwoomxZ
	GlwT62U6fu6DxO/CeKyuCLVYs1v7zOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4RSC-0005nA-Qh; Wed, 19 Feb 2020 15:40:00 +0000
Received: from albert.telenet-ops.be ([2a02:1800:110:4::f00:1a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4RS4-0005mQ-3Q
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 15:39:54 +0000
Received: from ramsan ([84.195.182.253]) by albert.telenet-ops.be with bizsmtp
 id 4ffX220055USYZQ06ffXFp; Wed, 19 Feb 2020 16:39:32 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1j4RRj-0004Ls-1B; Wed, 19 Feb 2020 16:39:31 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1j4RRi-0002tK-Vl; Wed, 19 Feb 2020 16:39:31 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Magnus Damm <magnus.damm@gmail.com>
Subject: [PATCH] ARM: dts: r8a7779: Remove deprecated "renesas,
 rcar-sata" compatible value
Date: Wed, 19 Feb 2020 16:39:29 +0100
Message-Id: <20200219153929.11073-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_073952_297056_02B31371 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: -0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:1a listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The "renesas,rcar-sata" compatible value was deprecated by
"renesas,sata-r8a7779" many years ago, in commit e67adb4e669db834
("sata_rcar: Add R-Car Gen2 SATA PHY support").  Drop it.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
To be queued in renesas-fixes for v5.6, as not having to care about the
deprecated value will simplify the json-schema conversion.
---
 arch/arm/boot/dts/r8a7779.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/r8a7779.dtsi b/arch/arm/boot/dts/r8a7779.dtsi
index beb9885e6ffca7a5..c0999e27e9b145e3 100644
--- a/arch/arm/boot/dts/r8a7779.dtsi
+++ b/arch/arm/boot/dts/r8a7779.dtsi
@@ -377,7 +377,7 @@
 	};
 
 	sata: sata@fc600000 {
-		compatible = "renesas,sata-r8a7779", "renesas,rcar-sata";
+		compatible = "renesas,sata-r8a7779";
 		reg = <0xfc600000 0x200000>;
 		interrupts = <GIC_SPI 100 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&mstp1_clks R8A7779_CLK_SATA>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
