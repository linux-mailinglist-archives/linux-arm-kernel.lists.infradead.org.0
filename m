Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F4337BAC8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 09:38:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=2HUwzR/fsXx/IInC69qjRJCCpLNJY7563yL8GbnBGQw=; b=IyR
	oeWOv7wu/z5+S493BMImEuZbzQICo9ep4KMSNtGbH7rLbiqCpuQl8LROHtOLppqhsmTnTDtdtRN4u
	hyXqJZA5WXqaaRY93btBobfNRAnpKL+o33vaGuX07UhXY4EDuBpn6saZvNjZ18aZsQFvgyDhqZTu5
	WvXPAm5xhXfZNqmFz2jYV3aqJus/w4t4qBJA2/bXT91xpdSfvPpyVN9P9cftpITEKLgl4SpGy6CZJ
	wIdG/f9kq334r5NpgLQKR5EIAPATtcZ2MWime9M2LP5Nxnu5V2lnIYUXuWWP2ERLMsigj3xlWb+up
	s7hzGiRZmeyeu4Mh29lFdvCcXF8Xc6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsjBb-0005ZA-Q9; Wed, 31 Jul 2019 07:38:12 +0000
Received: from xavier.telenet-ops.be ([2a02:1800:120:4::f00:14])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsjBO-0005Yb-Ao
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 07:38:00 +0000
Received: from ramsan ([84.194.98.4]) by xavier.telenet-ops.be with bizsmtp
 id jKdl2000s05gfCL01Kdl8g; Wed, 31 Jul 2019 09:37:50 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1hsjBB-0006tB-SD; Wed, 31 Jul 2019 09:37:45 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1hsjBB-0003dy-Qu; Wed, 31 Jul 2019 09:37:45 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Simon Horman <horms@verge.net.au>,
	Magnus Damm <magnus.damm@gmail.com>
Subject: [PATCH] arm64: dts: renesas: r8a77995: draak: Fix backlight regulator
 name
Date: Wed, 31 Jul 2019 09:37:44 +0200
Message-Id: <20190731073744.13963-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_003758_529072_4FECAFEF 
X-CRM114-Status: GOOD (  10.94  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:14 listed in]
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
Cc: linux-renesas-soc@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently there are two nodes named "regulator1" in the Draak DTS: a
3.3V regulator for the eMMC and the LVDS decoder, and a 12V regulator
for the backlight.  This causes the former to be overwritten by the
latter.

Fix this by renaming all regulators with numerical suffixes to use named
suffixes, which are less likely to conflict.

Fixes: 4fbd4158fe8967e9 ("arm64: dts: renesas: r8a77995: draak: Add backlight")
Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
I guess this is a fix for v5.3?

This fix takes a slightly different approach than commit
12105cec654cf906 ("arm64: dts: renesas: r8a77990: ebisu: Fix backlight
regulator numbering"), which just fixed the conflicting numerical
suffix.
---
 arch/arm64/boot/dts/renesas/r8a77995-draak.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/r8a77995-draak.dts b/arch/arm64/boot/dts/renesas/r8a77995-draak.dts
index 0711170b26b1fe1c..3aa2564dfdc25fff 100644
--- a/arch/arm64/boot/dts/renesas/r8a77995-draak.dts
+++ b/arch/arm64/boot/dts/renesas/r8a77995-draak.dts
@@ -97,7 +97,7 @@
 		reg = <0x0 0x48000000 0x0 0x18000000>;
 	};
 
-	reg_1p8v: regulator0 {
+	reg_1p8v: regulator-1p8v {
 		compatible = "regulator-fixed";
 		regulator-name = "fixed-1.8V";
 		regulator-min-microvolt = <1800000>;
@@ -106,7 +106,7 @@
 		regulator-always-on;
 	};
 
-	reg_3p3v: regulator1 {
+	reg_3p3v: regulator-3p3v {
 		compatible = "regulator-fixed";
 		regulator-name = "fixed-3.3V";
 		regulator-min-microvolt = <3300000>;
@@ -115,7 +115,7 @@
 		regulator-always-on;
 	};
 
-	reg_12p0v: regulator1 {
+	reg_12p0v: regulator-12p0v {
 		compatible = "regulator-fixed";
 		regulator-name = "D12.0V";
 		regulator-min-microvolt = <12000000>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
