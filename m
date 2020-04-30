Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8CF41BF37C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 10:50:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=o7WTNw30CiWNBHwF+ydPMBbTICffhTIOVmvRONzDoDw=; b=lGMgRMzOt7OGbk3wXcrfOiZ7Lm
	UhPZqMIo8T+5ctyOGeE8B8R/fzb3tztpsJZPSG2lLkyQJ3dIXzrKCWHTNZDajxFMOpwv4IHNtY9kW
	0vlGqoIkEpGw9VDgA+AdplgNvQUqLltS069ZVTqSobuf80cbWrCwHogHWCkl/+HdBgW80uQCbovz/
	aI5xUttkd70hdchYkMZxbyC3GBxMSN2KtDYJgq9VpTqeb7oCbOj/1CdLWAc4HCtNQ2k3iI/LRjHJ2
	WSIwEPTBYSnPVoP0z+3EcbmNGKfB0gkZcIY7tQ90+hX5MSw1dhqCJHw2UnPY4WAoFnL2R0H5SXF5p
	IqDlexJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU4tc-0007fQ-NU; Thu, 30 Apr 2020 08:50:16 +0000
Received: from albert.telenet-ops.be ([2a02:1800:110:4::f00:1a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU4sP-0006t6-0T
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 08:49:04 +0000
Received: from ramsan ([IPv6:2a02:1810:ac12:ed60:182a:142e:a95f:66c2])
 by albert.telenet-ops.be with bizsmtp
 id Ywor2200a0w8ZL606worP8; Thu, 30 Apr 2020 10:48:52 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jU4sF-0002lC-JY; Thu, 30 Apr 2020 10:48:51 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jU4sF-0000OW-IA; Thu, 30 Apr 2020 10:48:51 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: arm-soc <arm@kernel.org>,
	arm-soc <soc@kernel.org>
Subject: [GIT PULL 4/5] Renesas driver updates for v5.8
Date: Thu, 30 Apr 2020 10:48:48 +0200
Message-Id: <20200430084849.1457-5-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200430084849.1457-1-geert+renesas@glider.be>
References: <20200430084849.1457-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_014901_250195_3E624D30 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:1a listed in]
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
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-devel.git tags/renesas-drivers-for-v5.8-tag1

for you to fetch changes up to 2f71832755a9422f5a62a13ea3e805df7b173837:

  soc: renesas: rcar-rst: Add support for RZ/G1H (2020-04-30 10:01:39 +0200)

----------------------------------------------------------------
Renesas driver updates for v5.8

  - Add System Controller (SYSC) and Reset (RST) support for the new
    RZ/G1H (R8A7742) SoC.

----------------------------------------------------------------
Geert Uytterhoeven (1):
      Merge tag 'renesas-r8a7742-dt-binding-defs-tag' into renesas-drivers-for-v5.8

Lad Prabhakar (4):
      dt-bindings: power: rcar-sysc: Add r8a7742 power domain index macros
      clk: renesas: Add r8a7742 CPG Core Clock Definitions
      soc: renesas: rcar-sysc: Add R8A7742 support
      soc: renesas: rcar-rst: Add support for RZ/G1H

 drivers/soc/renesas/Kconfig                  |  4 +++
 drivers/soc/renesas/Makefile                 |  1 +
 drivers/soc/renesas/r8a7742-sysc.c           | 42 ++++++++++++++++++++++++++++
 drivers/soc/renesas/rcar-rst.c               |  1 +
 drivers/soc/renesas/rcar-sysc.c              |  3 ++
 drivers/soc/renesas/rcar-sysc.h              |  1 +
 include/dt-bindings/clock/r8a7742-cpg-mssr.h | 42 ++++++++++++++++++++++++++++
 include/dt-bindings/power/r8a7742-sysc.h     | 29 +++++++++++++++++++
 8 files changed, 123 insertions(+)
 create mode 100644 drivers/soc/renesas/r8a7742-sysc.c
 create mode 100644 include/dt-bindings/clock/r8a7742-cpg-mssr.h
 create mode 100644 include/dt-bindings/power/r8a7742-sysc.h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
