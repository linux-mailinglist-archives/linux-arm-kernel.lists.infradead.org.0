Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E24BEA012D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 14:00:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=89q5dAMBww1RKT3vEHavNb0nrGe63K3Wye1Y7omTbzc=; b=o5G
	ZhIebclmkDloudMGYaURbunfZQ1cSE98WUAW3HfBTdFPZ6r1ZJTYhBQMC+5q9tR56dmYcXCbfeplo
	o370nme0e0fJEGX3AoQhpbGTrVscduLxOiLaRhXUwmE5voY8P4SurIMGCK/2jdo3KAh9h+Ty6m60P
	Uxk58YpPR3/mfRWkOrmHUu06yO75mCByraoWz2gj5oD5IrYQgtPPlEnZROs40EV84R04+TiXYxLye
	bPMkxGkuQs8Z513ZXrdmcD8BdHysgh1n05ZWt8uc7U7iZG2kWxL2L6T25FD6Dx0P6dArEYaxGKatx
	PVRKLlOzZOlhpl7TNBUaha4DewNTegw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2wcQ-0005cK-RT; Wed, 28 Aug 2019 12:00:07 +0000
Received: from albert.telenet-ops.be ([2a02:1800:110:4::f00:1a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2wbF-0004m0-8h
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 11:58:56 +0000
Received: from ramsan ([84.194.98.4]) by albert.telenet-ops.be with bizsmtp
 id ubyi2000505gfCL06byiqE; Wed, 28 Aug 2019 13:58:44 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1i2wb4-0008As-3X; Wed, 28 Aug 2019 13:58:42 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1i2wFQ-0001kT-69; Wed, 28 Aug 2019 13:36:20 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Magnus Damm <magnus.damm@gmail.com>
Subject: [PATCH v2 0/7] soc: renesas: rcar-gen3-sysc: Fix power request
 conflicts
Date: Wed, 28 Aug 2019 13:36:11 +0200
Message-Id: <20190828113618.6672-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_045853_467561_2146D591 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
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
Cc: linux-renesas-soc@vger.kernel.org, Simon Horman <horms@verge.net.au>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

	Hi all,

Recent R-Car Gen3 SoCs added an External Request Mask Register to the
System Controller (SYSC).  This register allows to mask external power
requests for CPU or 3DG domains, to prevent conflicts between powering
off CPU cores or the 3D Graphics Engine, and changing the state of
another power domain through SYSC, which could lead to CPG state machine
lock-ups.

This patch series starts making use of this register.  Note that the
register is optional, and that its location and contents are
SoC-specific.

This was inspired by a patch in the BSP by Dien Pham
<dien.pham.ry@renesas.com>.

Note that the issue fixed cannot happen in the upstream kernel, as
upstream has no support for graphics acceleration yet.  SoCs lacking the
External Request Mask Register may need a different mitigation in the
future.

Changes compared to v1[1]:
  - Improve description of cover letter and first patch.

Changes compared to RFC[2]:
  - Rebased.

This has been boot-tested on R-Car H3 ES1.0, H3 ES2.0, M3-W ES1.0, M3-N,
V3M, and E3 (only the last 3 have this register!), and regression-tested
on R-Car Gen2.

This has not been tested on R-Car H3 ES3.0, M3-W ES2.0, and V3H.

For your convenience, this series is available in the
topic/rcar3-sysc-extmask-v2 branch of my renesas-drivers git repository at
git://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-drivers.git.

Thanks for your comments!

[1] Not posted, but included in yesterday's renesas-drivers-2019-08-27-v5.3-rc6
[2] "[RFC PATCH 0/7] soc: renesas: rcar-gen3-sysc: Fix power request conflicts"
    (https://lore.kernel.org/linux-renesas-soc/20181205155028.14335-1-geert+renesas@glider.be/)
 
Geert Uytterhoeven (7):
  soc: renesas: rcar-sysc: Prepare for fixing power request conflicts
  soc: renesas: r8a7795-sysc: Fix power request conflicts
  soc: renesas: r8a7796-sysc: Fix power request conflicts
  soc: renesas: r8a77965-sysc: Fix power request conflicts
  soc: renesas: r8a77970-sysc: Fix power request conflicts
  soc: renesas: r8a77980-sysc: Fix power request conflicts
  soc: renesas: r8a77990-sysc: Fix power request conflicts

 drivers/soc/renesas/r8a7795-sysc.c  | 32 ++++++++++++++++++++++++-----
 drivers/soc/renesas/r8a7796-sysc.c  | 22 +++++++++++++++++++-
 drivers/soc/renesas/r8a77965-sysc.c |  3 +++
 drivers/soc/renesas/r8a77970-sysc.c |  3 +++
 drivers/soc/renesas/r8a77980-sysc.c |  3 +++
 drivers/soc/renesas/r8a77990-sysc.c |  3 +++
 drivers/soc/renesas/rcar-sysc.c     | 16 +++++++++++++++
 drivers/soc/renesas/rcar-sysc.h     |  7 +++++--
 8 files changed, 81 insertions(+), 8 deletions(-)

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
