Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4A7CE1AA7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 14:34:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=DrbB3OHuDzaKZwETLGs8gcCaurbFcluIQHMq0Y5pDi0=; b=gje
	LY4DqjG5ZXvv2f0mlEU73D1hBYSk6GyESVLieOPOUgNxGMUc1vRSFrtmgsQKoYdf2/GsFIZI88ArW
	B58atMZCaGG2QpQJJxWG5xI08+fEaGMS+bh4d8+omFShPh7nvr1v/wSswrGCXSL13R4wwt1D6A9kB
	neQdBTATlULS2xxubwHDn8hSxILyheIUVSz5CcRMzGkNuTK+rPN3bzczG92C73D+oFZO+DOAWTF9x
	ajdFADuP3UBvAJQZEEWPYDjaloi8YqT30JpyOURlhGjf4eUn4k9sC9BqeGj4ZYp6976ntogh1acot
	fOP9cGrQozw9VrlqUMXj9Y96ZAOPT1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNFqV-00072u-4e; Wed, 23 Oct 2019 12:34:35 +0000
Received: from andre.telenet-ops.be ([2a02:1800:120:4::f00:15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNFm3-00021g-B5
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 12:30:04 +0000
Received: from ramsan ([84.194.98.4]) by andre.telenet-ops.be with bizsmtp
 id H0Vy2100b05gfCL010Vyd5; Wed, 23 Oct 2019 14:29:58 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iNFm2-0000oy-Hw; Wed, 23 Oct 2019 14:29:58 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iNFm2-0003F6-Gb; Wed, 23 Oct 2019 14:29:58 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 0/3] pinctrl: sh-pfc: Add r8a77961 support
Date: Wed, 23 Oct 2019 14:29:52 +0200
Message-Id: <20191023122955.12420-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_052959_590746_49972E0A 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:15 listed in]
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
Cc: devicetree@vger.kernel.org, Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-renesas-soc@vger.kernel.org, linux-gpio@vger.kernel.org,
 Eugeniu Rosca <erosca@de.adit-jv.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

	Hi all,

This patch series adds support for the Pin Function Controller in the
Renesas R-Car M3-W+ (R8A77961) SoC.  As R-Car M3-W+ is very similar to
R-Car M3-W (R8A77960), the existing driver for R-Car M3-W is updated to
handle both.

To avoid confusion between R-Car M3-W and M3-W+, the existing config
symbol for M3-W is renamed to PINCTRL_PFC_R8A77960 in a dependency-free
way, and references to r8a7796 are updated.

Changes compared to v1[1]:
  - Split in per-subsystem series,
  - Add Reviewed-by, Tested-by,
  - Rename PINCTRL_PFC_R8A7796,
  - Update r8a7796 references,

I intend to queue this series in sh-pfc-for-v5.5.

Thanks for your comments!

[1] "[PATCH/RFC 00/19] arm64: dts: renesas: Initial support for R-Car M3-W+"
    https://lore.kernel.org/linux-renesas-soc/20191007102332.12196-1-geert+renesas@glider.be/

Geert Uytterhoeven (3):
  dt-bindings: pinctrl: sh-pfc: Document r8a77961 support
  pinctrl: sh-pfc: Rename PINCTRL_PFC_R8A7796 to PINCTRL_PFC_R8A77960
  pinctrl: sh-pfc: r8a7796: Add R8A77961 PFC support

 .../bindings/pinctrl/renesas,pfc-pinctrl.txt  |  3 +-
 drivers/pinctrl/sh-pfc/Kconfig                |  8 +++--
 drivers/pinctrl/sh-pfc/Makefile               |  3 +-
 drivers/pinctrl/sh-pfc/core.c                 | 10 ++++--
 drivers/pinctrl/sh-pfc/pfc-r8a7796.c          | 33 +++++++++++++++++--
 drivers/pinctrl/sh-pfc/sh_pfc.h               |  3 +-
 6 files changed, 50 insertions(+), 10 deletions(-)

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
