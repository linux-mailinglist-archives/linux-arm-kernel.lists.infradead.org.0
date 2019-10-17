Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F339EDB047
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 16:41:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:To:From:Subject:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UD+JMRGXNuqlFXvuKBNCxdSoUuzHWSt2gaA7ZnV63i8=; b=npsr/o9+9zUFGs
	3jXZAaMzmT87MnxZ7rq+MDZznDP630R/xLe7ZG+3Y8ZcL24Fm/JWVwf2ulbrtTL3HiKaaYz+but3f
	ifjUVNeXQpRworVMUx6uZdDJS1vD15Pp1Q6XTzT0amiB1D7wUosU6+a3+gMjWZH1nfxNBbHPNVsnl
	4AqSQucqnrPA5aq0gBFXs7j5bFKTAZh7ZJRmECDLw5Uu7eQuc95AyjKgnLZojN/ke8IAlJkwsTI8D
	TCE2wh0bkQVU/RnaeO3UXLYKLACHUaPq2rrRdQkUp/2kyIV690Mvl/b3uU74IJ3DUHoRvf2iWEa/U
	k6qJFOpf4yxkQoAKaXVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL6y1-0006jJ-0k; Thu, 17 Oct 2019 14:41:29 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL6xr-0006ij-8k
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 14:41:21 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 935A349E1C;
 Thu, 17 Oct 2019 16:41:16 +0200 (CEST)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id Wuh9Vzolwv_4; Thu, 17 Oct 2019 16:41:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 120BF49E30;
 Thu, 17 Oct 2019 16:41:13 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id Pa8ofwk-VYBP; Thu, 17 Oct 2019 16:41:12 +0200 (CEST)
Received: from belphegor (nat-pool-brq-t.redhat.com [213.175.37.10])
 by zimbra.v3.sk (Postfix) with ESMTPSA id 45AFB49E1C;
 Thu, 17 Oct 2019 16:41:12 +0200 (CEST)
Message-ID: <3a035bed90f9d8acc49b2d11d20089b546062aea.camel@v3.sk>
Subject: [GIT PULL] soc/arm/soc: Marvell MMP SoC changes for v5.5
From: Lubomir Rintel <lkundrak@v3.sk>
To: soc@kernel.org
Date: Thu, 17 Oct 2019 16:41:11 +0200
User-Agent: Evolution 3.34.1 (3.34.1-1.fc31) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_074119_616568_190116D1 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Please pull the MMP SoC changes.

The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/lkundrak/linux-mmp.git tags/mmp-soc-for-v5.5-2

for you to fetch changes up to 759c2837f7e4676c1cbf3ea8f3c824d0ec327255:

  MAINTAINERS: mmp: add Git repository (2019-10-17 16:36:12 +0200)

This supersedes the "[GIT PULL] ARM: soc: Marvell MMP changes for v5.5" pull
request.

Thanks,
Lubo

----------------------------------------------------------------
ARM: Marvell MMP SoC patches for v5.5

This tag includes initial support for the Marvell MMP3 processor.
MMP3 is used in OLPC XO-4 laptops, Panasonic Toughpad FZ-A1 tablet
and Dell Wyse 3020/Tx0D thin clients.

----------------------------------------------------------------
Lubomir Rintel (10):
      ARM: l2c: add definition for FWA in PL310 aux register
      ARM: mmp: don't select CACHE_TAUROS2 on all ARCH_MMP
      ARM: mmp: map the PGU as well
      ARM: mmp: DT: convert timer driver to use TIMER_OF_DECLARE
      ARM: mmp: define MMP_CHIPID by the means of CIU_REG()
      ARM: mmp: add support for MMP3 SoC
      ARM: mmp: add SMP support
      ARM: mmp: move cputype.h to include/linux/soc/
      ARM: mmp: remove MMP3 USB PHY registers from regs-usb.h
      MAINTAINERS: mmp: add Git repository

 MAINTAINERS                                        |  2 +
 arch/arm/include/asm/hardware/cache-l2x0.h         |  2 +
 arch/arm/mach-mmp/Kconfig                          | 22 ++++-
 arch/arm/mach-mmp/Makefile                         |  4 +
 arch/arm/mach-mmp/addr-map.h                       |  7 ++
 arch/arm/mach-mmp/common.c                         | 19 ++++-
 arch/arm/mach-mmp/common.h                         |  1 +
 arch/arm/mach-mmp/devices.c                        |  2 +-
 arch/arm/mach-mmp/mmp-dt.c                         |  5 +-
 arch/arm/mach-mmp/mmp2-dt.c                        |  7 +-
 arch/arm/mach-mmp/mmp2.c                           |  2 +-
 arch/arm/mach-mmp/mmp3.c                           | 29 +++++++
 arch/arm/mach-mmp/platsmp.c                        | 32 ++++++++
 arch/arm/mach-mmp/pm-mmp2.c                        |  2 +-
 arch/arm/mach-mmp/pm-pxa910.c                      |  2 +-
 arch/arm/mach-mmp/pxa168.c                         |  2 +-
 arch/arm/mach-mmp/pxa910.c                         |  2 +-
 arch/arm/mach-mmp/regs-usb.h                       | 94 ----------------------
 arch/arm/mach-mmp/time.c                           | 43 ++++------
 arch/arm/mm/Kconfig                                |  2 +-
 drivers/clk/Kconfig                                |  5 ++
 drivers/clk/mmp/Makefile                           |  2 +-
 include/Kbuild                                     |  1 +
 .../mach-mmp => include/linux/soc/mmp}/cputype.h   | 27 +++++++
 24 files changed, 174 insertions(+), 142 deletions(-)
 create mode 100644 arch/arm/mach-mmp/mmp3.c
 create mode 100644 arch/arm/mach-mmp/platsmp.c
 rename {arch/arm/mach-mmp => include/linux/soc/mmp}/cputype.h (71%)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
