Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9517DC372
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 13:02:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=d/Da/Q+/CNF/+epdHbkv/IqB4BCEcjqhSQ4u+arFhsQ=; b=m7riLTrsRlh4T19wi9fLxtQ9Pr
	Qf1GZjsEGN4qD1TBN2FSfYrvCd5VdzRuHawQdevwwRT3RKgttHXzTzcCo1I13JjeqIpC9xLten52s
	qRMG1IVDArCj/aOhJD+Z4NkiDAu1trAt1ZCHAeZd01VmyeNs9mSchzLK0lriuFRK8tA7pFQc0QDbB
	tXwiXVnilj/dSv6bCR8nf0u1hRCrepj24pvwW0PrTFQWXt66/USCPVQcNI5dkNWRLnOa80tffh9s3
	pLwD8tj1BUxsKHhSvh2tFljmXANm3PAO6lV0ytcjKjSJ9ftzz7usX0pO8Dk/97b/20YQ7p2YOHHDY
	EkuyoD2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLQ19-0001yD-OG; Fri, 18 Oct 2019 11:01:59 +0000
Received: from laurent.telenet-ops.be ([2a02:1800:110:4::f00:19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLQ0P-0001QE-8G
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 11:01:15 +0000
Received: from ramsan ([84.194.98.4]) by laurent.telenet-ops.be with bizsmtp
 id Ez142100b05gfCL01z148F; Fri, 18 Oct 2019 13:01:05 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iLQ0G-0005q3-FE; Fri, 18 Oct 2019 13:01:04 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iLPEt-0006s5-Tw; Fri, 18 Oct 2019 12:12:07 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: arm-soc <arm@kernel.org>,
	arm-soc <soc@kernel.org>
Subject: [PULL 4/5] Renesas driver updates for v5.5
Date: Fri, 18 Oct 2019 12:11:35 +0200
Message-Id: <20191018101136.26350-5-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191018101136.26350-1-geert+renesas@glider.be>
References: <20191018101136.26350-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_040113_446826_DE22ABF9 
X-CRM114-Status: GOOD (  11.64  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:19 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-devel.git tags/renesas-drivers-for-v5.5-tag1

for you to fetch changes up to 6655c568ced0789479f00b9399603c5d6ee48640:

  soc: renesas: rcar-sysc: Add r8a774b1 support (2019-10-01 10:29:40 +0200)

----------------------------------------------------------------
Renesas driver updates for v5.5

  - Add support for the new RZ/G2N (r8a774b1) SoC,
  - Fix System Controller power request conflicts on recent R-Car Gen3
    and RZ/G2N SoC variants and revisions,
  - Minor cleanups.

----------------------------------------------------------------
Biju Das (6):
      dt-bindings: power: Add r8a774b1 SYSC power domain definitions
      dt-bindings: clk: Add r8a774b1 CPG Core Clock Definitions
      soc: renesas: Add Renesas R8A774B1 config option
      soc: renesas: Identify RZ/G2N
      soc: renesas: rcar-rst: Add support for RZ/G2N
      soc: renesas: rcar-sysc: Add r8a774b1 support

Geert Uytterhoeven (9):
      soc: renesas: rcar-sysc: Prepare for fixing power request conflicts
      soc: renesas: r8a7795-sysc: Fix power request conflicts
      soc: renesas: r8a7796-sysc: Fix power request conflicts
      soc: renesas: r8a77965-sysc: Fix power request conflicts
      soc: renesas: r8a77970-sysc: Fix power request conflicts
      soc: renesas: r8a77980-sysc: Fix power request conflicts
      soc: renesas: r8a77990-sysc: Fix power request conflicts
      soc: renesas: r8a774c0-sysc: Fix power request conflicts
      soc: renesas: rcar-sysc: Remove unneeded inclusion of <linux/bug.h>

 drivers/soc/renesas/Kconfig                   | 11 ++++++
 drivers/soc/renesas/Makefile                  |  1 +
 drivers/soc/renesas/r8a7743-sysc.c            |  1 -
 drivers/soc/renesas/r8a7745-sysc.c            |  1 -
 drivers/soc/renesas/r8a77470-sysc.c           |  1 -
 drivers/soc/renesas/r8a774a1-sysc.c           |  1 -
 drivers/soc/renesas/r8a774b1-sysc.c           | 37 +++++++++++++++++
 drivers/soc/renesas/r8a774c0-sysc.c           |  4 +-
 drivers/soc/renesas/r8a7779-sysc.c            |  1 -
 drivers/soc/renesas/r8a7790-sysc.c            |  1 -
 drivers/soc/renesas/r8a7791-sysc.c            |  1 -
 drivers/soc/renesas/r8a7792-sysc.c            |  1 -
 drivers/soc/renesas/r8a7794-sysc.c            |  1 -
 drivers/soc/renesas/r8a7795-sysc.c            | 33 +++++++++++++---
 drivers/soc/renesas/r8a7796-sysc.c            | 23 ++++++++++-
 drivers/soc/renesas/r8a77965-sysc.c           |  4 +-
 drivers/soc/renesas/r8a77970-sysc.c           |  4 +-
 drivers/soc/renesas/r8a77980-sysc.c           |  4 +-
 drivers/soc/renesas/r8a77990-sysc.c           |  4 +-
 drivers/soc/renesas/r8a77995-sysc.c           |  1 -
 drivers/soc/renesas/rcar-rst.c                |  1 +
 drivers/soc/renesas/rcar-sysc.c               | 19 +++++++++
 drivers/soc/renesas/rcar-sysc.h               |  8 +++-
 drivers/soc/renesas/renesas-soc.c             |  8 ++++
 include/dt-bindings/clock/r8a774b1-cpg-mssr.h | 57 +++++++++++++++++++++++++++
 include/dt-bindings/power/r8a774b1-sysc.h     | 26 ++++++++++++
 26 files changed, 229 insertions(+), 25 deletions(-)
 create mode 100644 drivers/soc/renesas/r8a774b1-sysc.c
 create mode 100644 include/dt-bindings/clock/r8a774b1-cpg-mssr.h
 create mode 100644 include/dt-bindings/power/r8a774b1-sysc.h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
