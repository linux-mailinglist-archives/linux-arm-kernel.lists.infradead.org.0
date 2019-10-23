Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94B16E1A56
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 14:32:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=wDNI7+LjB1uyj1nc7FiYghjlhnaLv/tDmGQkgS6Fkq4=; b=Di1
	r3W9hBAn6WEgygGCeqHtJ1ngl+d7mLTh3eEiVuORBLT24jx7bw7WlWbO3Yay/8vNhxFdHsVq6SrPK
	4W2ZNElu44r0Pt4ycsWpP43YFLAjeeH1nmtYY8pTAn1nzPPqXq5RlZUPRQk06zFUOaaT4HuEilkSi
	oR7BLeuBg2JgHH0iiI0iKxNO2yoWrkkgIDaXBURUQssA0uVN12vdechNx14WwSW2RZRMk2JO+kjT0
	bCu59la51WuQ6MuR0o+1wXl1v28SpNLBhR+rOWd7ppvU+yRvhhHnpSTmzsPa7YVt3gYngAMULeLZW
	k8xE7XTipiGkUjPMbaYAzErcrXdlf6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNFoT-0005OU-U8; Wed, 23 Oct 2019 12:32:29 +0000
Received: from albert.telenet-ops.be ([2a02:1800:110:4::f00:1a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNFlt-0002GT-0u
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 12:29:51 +0000
Received: from ramsan ([84.194.98.4]) by albert.telenet-ops.be with bizsmtp
 id H0Vl2100b05gfCL060Vl6w; Wed, 23 Oct 2019 14:29:46 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iNFlp-0000eH-QF; Wed, 23 Oct 2019 14:29:45 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iNFlp-0003Du-Of; Wed, 23 Oct 2019 14:29:45 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 0/4] clk: renesas: Add r8a77961 support
Date: Wed, 23 Oct 2019 14:29:37 +0200
Message-Id: <20191023122941.12342-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_052949_339970_1F23E401 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:1a listed in]
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
 linux-renesas-soc@vger.kernel.org, Eugeniu Rosca <erosca@de.adit-jv.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

	Hi all,

This patch series adds support for the Clock Pulse Generator / Module
Standby and Software Reset block in the Renesas R-Car M3-W+ (R8A77961)
SoC.  As R-Car M3-W+ is very similar to R-Car M3-W (R8A77960), the
existing driver for R-Car M3-W is updated to handle both.

To avoid confusion between R-Car M3-W and M3-W+, the existing config
symbol for M3-W is renamed to CLK_R8A77960 in a dependency-free way, and
references to r8a7796 are updated.

Changes compared to v1[1]:
  - Split in per-subsystem series,
  - Add Reviewed-by, Tested-by,
  - Rename CLK_R8A7796,
  - Update r8a7796 references,

I intend to queue this series in clk-renesas-for-v5.5.
The second patch will be put on a branch shared between driver and DTS.

Thanks for your comments!

[1] "[PATCH/RFC 00/19] arm64: dts: renesas: Initial support for R-Car M3-W+"
    https://lore.kernel.org/linux-renesas-soc/20191007102332.12196-1-geert+renesas@glider.be/

Geert Uytterhoeven (4):
  dt-bindings: clock: renesas: cpg-mssr: Document r8a77961 support
  dt-bindings: clock: Add r8a77961 CPG Core Clock Definitions
  clk: renesas: Rename CLK_R8A7796 to CLK_R8A77960
  clk: renesas: r8a7796: Add R8A77961 CPG/MSSR support

 .../bindings/clock/renesas,cpg-mssr.txt       | 11 ++--
 drivers/clk/renesas/Kconfig                   |  9 ++-
 drivers/clk/renesas/Makefile                  |  3 +-
 drivers/clk/renesas/r8a7796-cpg-mssr.c        | 24 +++++--
 drivers/clk/renesas/renesas-cpg-mssr.c        |  8 ++-
 include/dt-bindings/clock/r8a77961-cpg-mssr.h | 65 +++++++++++++++++++
 6 files changed, 107 insertions(+), 13 deletions(-)
 create mode 100644 include/dt-bindings/clock/r8a77961-cpg-mssr.h

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
