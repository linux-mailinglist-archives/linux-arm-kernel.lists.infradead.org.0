Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF09E12351F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 19:40:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Yt//Eo3Ri9emFgsSs0KuCEXEeyNSgNKl/OcPNhnjYdg=; b=Lks
	FN6SPaT63E9yknhuQCFql6Q5rr0WOqEoESOwaOWXdXRZdk5Esce8es5pyPRDIWOsKhCCt4uDyBino
	QmOgpjz2Plk5ZNstcdLd1uVytAFypApJpcf9yV5HLDlblE+u3bSTmgg3ZiPMBHuXdXVmkUtfQ4j1Y
	N6dRfZM3KS7GYysGaBJPO6U4chL8PQw4wmbSn0yUnLfMOL/zlhf4j2gLph8fiEX7+MEhgHnbBfJ31
	tkbuYq7HUGwmBp+xVfAO/jtPX0UzeiUZXhcFAmECXfSjkcN7USEiTalnzuKDAjnxqXyXDZcbzv+fg
	19B2g3nMvtZrXgFx5fmVRwknXrUUg9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihHlm-0005cM-2D; Tue, 17 Dec 2019 18:40:30 +0000
Received: from baptiste.telenet-ops.be ([2a02:1800:120:4::f00:13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihHkB-0003EP-8T
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 18:38:55 +0000
Received: from ramsan ([84.195.182.253])
 by baptiste.telenet-ops.be with bizsmtp
 id f6ei2100B5USYZQ016eiwo; Tue, 17 Dec 2019 19:38:47 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1ihHk2-0003aF-Io; Tue, 17 Dec 2019 19:38:42 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1ihHk2-00007v-FM; Tue, 17 Dec 2019 19:38:42 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Magnus Damm <magnus.damm@gmail.com>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Eugeniu Rosca <erosca@de.adit-jv.com>
Subject: [PATCH 0/5] arm64: renesas: Split/rename R-Car H3 support
Date: Tue, 17 Dec 2019 19:38:36 +0100
Message-Id: <20191217183841.432-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_103851_496232_2D13A080 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:13 listed in]
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
Cc: linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

	Hi all,

Despite using the same compatible values ("r8a7795"-based) because of
historical reasons, R-Car H3 ES1.x (R8A77950) and R-Car H3 ES2.0+
(R8A77951) are really different SoCs, with different part numbers.

Hence this patch series splits the config symbols for R-Car H3, and
renames the related DTS files, to maintain a clear separation between
early (ES1.x) and later (ES2.0+) SoC revisions.  This will pave the way
for configuring out support for early SoC revisions, which can reduce
kernel size, especially in the pin control subsystem.
This is similar to the recent split of R8A7796 symbols for R-Car M3-W
(R8A77960) and M3-W+ (R8A77961)[1], and the related DTS file renames[2],
but different due to the sharing of compatible values between R-Car H3
ES1.x and H3 ES2.0+.

This series also includes the rename/cleanup of the ULCB DTS file names,
as suggested by Eugeniu Rosca.  As DTS files are already being renamed
for v5.6[2], it makes sense to combine them with other renames, to avoid
inconveniencing the user with multiple renames in multiple kernel
versions.

The pin control part will be handled in a separate patch.

For your convenience, all of this is available in the
topic/r8a7795-rename-v1 branch of my renesas-drivers git repository at
git://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-drivers.git.

Thanks for your comments!

References:
  [1] "[PATCH v2 00/11] arm64: renesas: Add r8a77961 support"
      https://lore.kernel.org/linux-renesas-soc/20191023123342.13100-1-geert+renesas@glider.be/
  [2] "[PATCH/RFC] arm64: dts: renesas: Rename r8a7796* to r8a77960*"
      https://lore.kernel.org/linux-renesas-soc/20191211131311.23661-1-geert+renesas@glider.be/

Geert Uytterhoeven (5):
  arm64: dts: renesas: Rename r8a7795{-es1,}* to r8a7795[01]*
  arm64: dts: renesas: Drop redudant SoC prefixes from ULCB DTS file
    names
  arm64: dts: renesas: Sort DTBs in Makefile
  arm64: dts: renesas: Prepare for split of ARCH_R8A7795 into
    ARCH_R8A7795[01]
  soc: renesas: Add ARCH_R8A7795[01] for existing R-Car H3

 arch/arm64/boot/dts/renesas/Makefile          | 21 ++++++++++---------
 ...salvator-x.dts => r8a77950-salvator-x.dts} |  4 ++--
 ...795-h3ulcb-kf.dts => r8a77950-ulcb-kf.dts} |  4 ++--
 ...a7795-es1-h3ulcb.dts => r8a77950-ulcb.dts} |  4 ++--
 .../{r8a7795-es1.dtsi => r8a77950.dtsi}       |  4 ++--
 ...salvator-x.dts => r8a77951-salvator-x.dts} |  4 ++--
 ...lvator-xs.dts => r8a77951-salvator-xs.dts} |  8 +++----
 ...es1-h3ulcb-kf.dts => r8a77951-ulcb-kf.dts} |  4 ++--
 .../{r8a7795-h3ulcb.dts => r8a77951-ulcb.dts} |  4 ++--
 .../renesas/{r8a7795.dtsi => r8a77951.dtsi}   |  2 +-
 ...960-m3ulcb-kf.dts => r8a77960-ulcb-kf.dts} |  2 +-
 ...{r8a77960-m3ulcb.dts => r8a77960-ulcb.dts} |  0
 ...65-m3nulcb-kf.dts => r8a77965-ulcb-kf.dts} |  2 +-
 ...r8a77965-m3nulcb.dts => r8a77965-ulcb.dts} |  0
 drivers/soc/renesas/Kconfig                   |  8 +++++++
 15 files changed, 40 insertions(+), 31 deletions(-)
 rename arch/arm64/boot/dts/renesas/{r8a7795-es1-salvator-x.dts => r8a77950-salvator-x.dts} (96%)
 rename arch/arm64/boot/dts/renesas/{r8a7795-h3ulcb-kf.dts => r8a77950-ulcb-kf.dts} (75%)
 rename arch/arm64/boot/dts/renesas/{r8a7795-es1-h3ulcb.dts => r8a77950-ulcb.dts} (89%)
 rename arch/arm64/boot/dts/renesas/{r8a7795-es1.dtsi => r8a77950.dtsi} (98%)
 rename arch/arm64/boot/dts/renesas/{r8a7795-salvator-x.dts => r8a77951-salvator-x.dts} (96%)
 rename arch/arm64/boot/dts/renesas/{r8a7795-salvator-xs.dts => r8a77951-salvator-xs.dts} (96%)
 rename arch/arm64/boot/dts/renesas/{r8a7795-es1-h3ulcb-kf.dts => r8a77951-ulcb-kf.dts} (75%)
 rename arch/arm64/boot/dts/renesas/{r8a7795-h3ulcb.dts => r8a77951-ulcb.dts} (92%)
 rename arch/arm64/boot/dts/renesas/{r8a7795.dtsi => r8a77951.dtsi} (99%)
 rename arch/arm64/boot/dts/renesas/{r8a77960-m3ulcb-kf.dts => r8a77960-ulcb-kf.dts} (92%)
 rename arch/arm64/boot/dts/renesas/{r8a77960-m3ulcb.dts => r8a77960-ulcb.dts} (100%)
 rename arch/arm64/boot/dts/renesas/{r8a77965-m3nulcb-kf.dts => r8a77965-ulcb-kf.dts} (92%)
 rename arch/arm64/boot/dts/renesas/{r8a77965-m3nulcb.dts => r8a77965-ulcb.dts} (100%)

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
