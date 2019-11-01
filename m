Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 551ACEC641
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 16:59:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NV0Gd7PBkNeiyVwD70kRxGMpOw1ib0L4I8ifBswxoII=; b=twCP1hMiW3fSbJEPC1atr7gf7x
	gDHUzKtICUUrdXA/HugfdWtU8eBKtSUcar2W3h3w/U1stMdOV1Yl6gJgDn/ZhmpSdOcW2VH4DIvY1
	GDN98QBYKhihl2nU0fX0Dqwd4lOZuDMrBIF0tYoLqjO7CKUdRo6v9kUZZDixcmM2y52aq5oNiQBaS
	bFUER4q5LbWNJdbunHxzo9eFGRBR2yn26YqAaB0QGRe3P4hALOTrei/gREC10eikGNusLy9CXxayX
	9fC81dTNvLMwRlS3kr6/TKuJwW2raWTuACQWKIDSI7p4+Ib1PVy96a7CmF3VUgiiLktWYvyGjxORh
	0+mInd0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQZKR-0001rh-Ss; Fri, 01 Nov 2019 15:59:11 +0000
Received: from laurent.telenet-ops.be ([2a02:1800:110:4::f00:19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQZKH-0001pU-P9
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 15:59:03 +0000
Received: from ramsan ([84.195.182.253]) by laurent.telenet-ops.be with bizsmtp
 id Lfyu210075USYZQ01fyusB; Fri, 01 Nov 2019 16:58:54 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iQZKA-0002rg-Aq; Fri, 01 Nov 2019 16:58:54 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iQZKA-0008Cf-9t; Fri, 01 Nov 2019 16:58:54 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: arm-soc <arm@kernel.org>,
	arm-soc <soc@kernel.org>
Subject: [GIT PULL 5/6] Renesas driver updates for v5.5 (take two)
Date: Fri,  1 Nov 2019 16:58:41 +0100
Message-Id: <20191101155842.31467-6-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191101155842.31467-1-geert+renesas@glider.be>
References: <20191101155842.31467-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_085901_991757_9E59AEE9 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:19 listed in]
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
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 6655c568ced0789479f00b9399603c5d6ee48640:

  soc: renesas: rcar-sysc: Add r8a774b1 support (2019-10-01 10:29:40 +0200)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-devel.git tags/renesas-drivers-for-v5.5-tag2

for you to fetch changes up to bdde3d3ec934839b3c11689ead467099f1c36c12:

  soc: renesas: rcar-sysc: Add R8A77961 support (2019-11-01 14:25:53 +0100)

----------------------------------------------------------------
Renesas driver updates for v5.5 (take two)

  - Initial support for the R-Car M3-W+ (r8a77961) SoC,
  - A minor fix.

----------------------------------------------------------------
Geert Uytterhoeven (10):
      dt-bindings: power: Add r8a77961 SYSC power domain definitions
      dt-bindings: clock: Add r8a77961 CPG Core Clock Definitions
      soc: renesas: Add missing check for non-zero product register address
      Merge tag 'renesas-r8a77961-dt-binding-defs-tag' into renesas-drivers-for-v5.5
      soc: renesas: Rename SYSC_R8A7796 to SYSC_R8A77960
      soc: renesas: Add ARCH_R8A77960 for existing R-Car M3-W
      soc: renesas: Add ARCH_R8A77961 for new R-Car M3-W+
      soc: renesas: Identify R-Car M3-W+
      soc: renesas: rcar-rst: Add R8A77961 support
      soc: renesas: rcar-sysc: Add R8A77961 support

 drivers/soc/renesas/Kconfig                   | 21 +++++++--
 drivers/soc/renesas/Makefile                  |  3 +-
 drivers/soc/renesas/r8a7796-sysc.c            | 27 ++++++-----
 drivers/soc/renesas/rcar-rst.c                |  1 +
 drivers/soc/renesas/rcar-sysc.c               |  7 ++-
 drivers/soc/renesas/rcar-sysc.h               |  3 +-
 drivers/soc/renesas/renesas-soc.c             |  7 ++-
 include/dt-bindings/clock/r8a77961-cpg-mssr.h | 65 +++++++++++++++++++++++++++
 include/dt-bindings/power/r8a77961-sysc.h     | 32 +++++++++++++
 9 files changed, 145 insertions(+), 21 deletions(-)
 create mode 100644 include/dt-bindings/clock/r8a77961-cpg-mssr.h
 create mode 100644 include/dt-bindings/power/r8a77961-sysc.h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
