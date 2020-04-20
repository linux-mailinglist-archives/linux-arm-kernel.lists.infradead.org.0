Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2CBA1B0FB8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 17:16:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=O1hU1wj0Bm20p7oEJ7m94ERzr1/T4H/OTw2l3kULAi8=; b=rYs
	c8/o96inwUYBSJ5dB1Fh/aSJpqBralhU/f6SmrbDRF0SOQrwSErvTNoiwRTKoTm5keKQupiGr/GCW
	nrG913gS2ABxgHXM0rhjyShoWkFAIvdjznqCa1vfNu8YdO8slMtfFf59hXnZYPbkAo/C+bGkCy+vo
	L5eSDfzf1TQ857w+JFewlCWBuQO6iP5fzpRhYG3Q9//JS56ScVcBCwCH6RmLdssJAlXeG9ZdzjbEL
	Szh+WN3WMdpRGeez9wu5zAI3969ILzIL9HDoUCX+Yt5SxmJ75QI3IZoxe1CliBal8nRIL8sKIndEI
	IX9R0cfN0u7/T/JATUOOGnp3EdcUQyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQY9s-0002vo-NW; Mon, 20 Apr 2020 15:16:28 +0000
Received: from michel.telenet-ops.be ([2a02:1800:110:4::f00:18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQY9i-0002s1-Km
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 15:16:20 +0000
Received: from ramsan ([IPv6:2a02:1810:ac12:ed60:124:221f:3928:ed52])
 by michel.telenet-ops.be with bizsmtp
 id V3Fu2200b079KS6063FuWm; Mon, 20 Apr 2020 17:15:58 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jQY9K-0002Dv-Rx; Mon, 20 Apr 2020 17:15:54 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jQY9K-0005zO-PC; Mon, 20 Apr 2020 17:15:54 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Magnus Damm <magnus.damm@gmail.com>
Subject: [PATCH] ARM: dts: shmobile: Update CMT1 compatible values
Date: Mon, 20 Apr 2020 17:15:53 +0200
Message-Id: <20200420151553.22975-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_081618_823038_35B7A51F 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:18 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-renesas-soc@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

New compatible values were introduced for the 48-bit CMT devices on
SH-Mobile AG5 and R-Mobile A1, and the old "cmt-48"-based values were
deprecated.  However, the actual DTS files were never updated.

See also commits:
  - 81b604c39997de91 ("dt-bindings: timer: renesas, cmt: Update CMT1 on
    sh73a0 and r8a7740"),
  - 8c1afba285a86b9d ("clocksource/drivers/sh_cmt: r8a7740 and sh73a0
    SoC-specific match"),
  - 19d608458f4f3bb3 ("clocksource/drivers/sh_cmt: Document "cmt-48" as
    deprecated").

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
Aforementioned commits are present in v5.4 and later.

To be queued in renesas-devel for v5.8.
---
 arch/arm/boot/dts/r8a7740.dtsi | 2 +-
 arch/arm/boot/dts/sh73a0.dtsi  | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/r8a7740.dtsi b/arch/arm/boot/dts/r8a7740.dtsi
index ebc1ff64f530d42c..014805894ea71f41 100644
--- a/arch/arm/boot/dts/r8a7740.dtsi
+++ b/arch/arm/boot/dts/r8a7740.dtsi
@@ -83,7 +83,7 @@
 	};
 
 	cmt1: timer@e6138000 {
-		compatible = "renesas,cmt-48-r8a7740", "renesas,cmt-48";
+		compatible = "renesas,r8a7740-cmt1";
 		reg = <0xe6138000 0x170>;
 		interrupts = <GIC_SPI 58 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&mstp3_clks R8A7740_CLK_CMT1>;
diff --git a/arch/arm/boot/dts/sh73a0.dtsi b/arch/arm/boot/dts/sh73a0.dtsi
index fa5108f142ca974b..99503dd7f55c9cd2 100644
--- a/arch/arm/boot/dts/sh73a0.dtsi
+++ b/arch/arm/boot/dts/sh73a0.dtsi
@@ -104,7 +104,7 @@
 	};
 
 	cmt1: timer@e6138000 {
-		compatible = "renesas,cmt-48-sh73a0", "renesas,cmt-48";
+		compatible = "renesas,sh73a0-cmt1";
 		reg = <0xe6138000 0x200>;
 		interrupts = <GIC_SPI 65 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&mstp3_clks SH73A0_CLK_CMT1>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
