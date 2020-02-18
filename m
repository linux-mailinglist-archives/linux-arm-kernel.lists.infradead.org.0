Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC50B162725
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 14:31:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=xxQqGu7iqpH8x6b9wHoyHMFaLIiNTRdFKgk7xTdLzWk=; b=MnU
	08xL01qgSnCb+u0F0GRVuJ/2w5Vql1dAVDgYmR/DqwdFQx8L7K0EUF8mXcP9tGwmhOnOfYw36A4s7
	4YQ1JvDainDJZwcw0VTb7c8dyq53bsIqrjPfNh0RD+UsUCEn/het9kGWFyymgrNbens+oloGxAZRk
	edMiYFQGxuQnWuRoF1zkYGGSscDuBGZDT1OwtOqGyUO7gNSZCddeXJbZWpdSM/gbQ2/X5J+CPH+1F
	n4A4ncCpZC+zq5cbUZMfExLkoY4I5PxrvQJnJxWQCnDdTaHcS2uTLqlklFiXwJHE5fp0EZICoYLsA
	R1CJ96siA+mddI2NA3HHa9S88VxU41Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j42xy-0005FE-Jd; Tue, 18 Feb 2020 13:31:10 +0000
Received: from andre.telenet-ops.be ([2a02:1800:120:4::f00:15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j42xK-0004iX-8U
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 13:30:33 +0000
Received: from ramsan ([84.195.182.253]) by andre.telenet-ops.be with bizsmtp
 id 4DWN2200a5USYZQ01DWNbV; Tue, 18 Feb 2020 14:30:22 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1j42xC-0005cY-LV; Tue, 18 Feb 2020 14:30:22 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1j42xC-0005oW-JV; Tue, 18 Feb 2020 14:30:22 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Magnus Damm <magnus.damm@gmail.com>
Subject: [PATCH v2 0/4] arm: dts: renesas: Add reset control properties for
 display
Date: Tue, 18 Feb 2020 14:30:15 +0100
Message-Id: <20200218133019.22299-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_053030_499470_BF2C9DD4 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:15 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

	Hi all,

This patch series adds reset control properties to the device nodes for
the Display Units on all supported R-Car Gen2 and Gen3, RZ/G1, and RZ/G2
SoCs.

Changes compared to v1:
  - Use "du.0" resp. "du.2" instead of "du.0-1" resp. "du.2-3",
  - Drop LVDS reset, as LVDS is now a separate node,
  - Extend from R-Car H3 to all supported R-Car Gen2/3, RZ/G1, RZ/G2.

I intend to queue this in renesas-devel for v5.7.
Thanks!

Geert Uytterhoeven (4):
  ARM: dts: rcar-gen2: Add reset control properties for display
  ARM: dts: rzg1: Add reset control properties for display
  arm64: dts: renesas: rcar-gen3: Add reset control properties for
    display
  arm64: dts: renesas: rzg2: Add reset control properties for display

 arch/arm/boot/dts/r8a7743.dtsi            | 5 +++--
 arch/arm/boot/dts/r8a7744.dtsi            | 5 +++--
 arch/arm/boot/dts/r8a7745.dtsi            | 2 ++
 arch/arm/boot/dts/r8a77470.dtsi           | 5 +++--
 arch/arm/boot/dts/r8a7790.dtsi            | 2 ++
 arch/arm/boot/dts/r8a7791.dtsi            | 5 +++--
 arch/arm/boot/dts/r8a7792.dtsi            | 5 +++--
 arch/arm/boot/dts/r8a7793.dtsi            | 5 +++--
 arch/arm/boot/dts/r8a7794.dtsi            | 2 ++
 arch/arm64/boot/dts/renesas/r8a774a1.dtsi | 5 +++--
 arch/arm64/boot/dts/renesas/r8a774b1.dtsi | 5 +++--
 arch/arm64/boot/dts/renesas/r8a774c0.dtsi | 5 +++--
 arch/arm64/boot/dts/renesas/r8a77951.dtsi | 8 ++++----
 arch/arm64/boot/dts/renesas/r8a77960.dtsi | 5 +++--
 arch/arm64/boot/dts/renesas/r8a77965.dtsi | 5 +++--
 arch/arm64/boot/dts/renesas/r8a77970.dtsi | 1 +
 arch/arm64/boot/dts/renesas/r8a77980.dtsi | 1 +
 arch/arm64/boot/dts/renesas/r8a77990.dtsi | 3 +--
 arch/arm64/boot/dts/renesas/r8a77995.dtsi | 3 +--
 19 files changed, 47 insertions(+), 30 deletions(-)

-- 
2.17.1

Gr{oetje,eeting}s,

						Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
							    -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
