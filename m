Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47969C31CB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 12:52:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:To:From:Subject:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/Wvri6nOdZAy6X3IjItRMmLz/aOoB+61HuYGISoiv4M=; b=nN2N/nokTZtQ+9
	n4bjEhH+EZX30zvMfQEZo3ID7CpiwtBlYILS44SUrizHR3reqeWVbyiGoQi0U1mlLsNc3hRJUVxGw
	8y3zt0Lg/+ox8agmkcbDrX2YTIBfu1NiVcyLlfoQwbPM4qC7Ogw75apBUO3JaLsP9dTlVz1lwvDKD
	aW1WN9aR6ZX/skHRi1Fy0CAaKOfvk6AURY64J+KBFzigb6006xn9nnOqM9qinqV2YiM4KuL/HQfsY
	hfOqOIyXFjFUA1+KFatv4UzsY8/QElJ9cr4iYXdTpV7f43+bgoa0xl+N0AhvDC4kTWA6TToPpIeSm
	3GZAecLE9b0s6VHc4awQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFFlK-0005Wz-PL; Tue, 01 Oct 2019 10:52:10 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFFl5-0005Im-EW
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 10:51:57 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 2205B4E7D9;
 Tue,  1 Oct 2019 12:51:49 +0200 (CEST)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 0LFrqMdIRPII; Tue,  1 Oct 2019 12:51:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id E12324E7DA;
 Tue,  1 Oct 2019 12:51:42 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id nSYQ8SOR32pp; Tue,  1 Oct 2019 12:51:41 +0200 (CEST)
Received: from belphegor (nat-pool-brq-t.redhat.com [213.175.37.10])
 by zimbra.v3.sk (Postfix) with ESMTPSA id 6BC094E7D9;
 Tue,  1 Oct 2019 12:51:41 +0200 (CEST)
Message-ID: <5104777b69d711e8746f3c39dfac615f85d64b3f.camel@v3.sk>
Subject: [GIT PULL] ARM: soc: Marvell MMP changes for v5.5
From: Lubomir Rintel <lkundrak@v3.sk>
To: soc@kernel.org
Date: Tue, 01 Oct 2019 12:51:39 +0200
User-Agent: Evolution 3.34.0 (3.34.0-1.fc31) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_035155_890556_633D98E4 
X-CRM114-Status: GOOD (  15.08  )
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

I'd be very thankful if you pulled the tree with Marvell MMP SoC changes into
the Arm SoC branch targetting v5.5.

The contents of the tree is essentially just the v3 of "Initial support
for Marvell MMP3 SoC" patch set. There are three changes:

- Fix for a kbuild test bot error on x86_64
- Removed the aliases from the DTS tree
- Added reference the Git tree I'm asking you to pull from to the
  MAINTAINERS file

The tree has been tested on a Dell Wyse 3020 thin client, and also tested not
to ruin the existing MMP support on an OLPC XO-1.75 laptop.

Thank you
Lubo

The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/lkundrak/linux-mmp.git tags/mmp-soc-for-v5.5

for you to fetch changes up to de7d5a2bfcaa1cb5f62d5bb4dfbbb066ff7dd06e:

  MAINTAINERS: mmp: add Git repository (2019-10-01 11:20:50 +0200)

----------------------------------------------------------------
ARM: Marvell MMP patches for v5.5

This tag includes initial support for the Marvell MMP3 processor.

MMP3 is used in OLPC XO-4 laptops, Panasonic Toughpad FZ-A1 tablet
and Dell Wyse 3020/Tx0D thin clients.

----------------------------------------------------------------
Lubomir Rintel (17):
      dt-bindings: arm: cpu: Add Marvell MMP3 SMP enable method
      dt-bindings: arm: Convert Marvell MMP board/soc bindings to json-schema
      dt-bindings: arm: mrvl: Document MMP3 compatible string
      dt-bindings: mrvl,intc: Add a MMP3 interrupt controller
      dt-bindings: phy-mmp3-usb: Add bindings
      ARM: l2c: add definition for FWA in PL310 aux register
      ARM: mmp: don't select CACHE_TAUROS2 on all ARCH_MMP
      ARM: mmp: map the PGU as well
      ARM: mmp: DT: convert timer driver to use TIMER_OF_DECLARE
      ARM: mmp: define MMP_CHIPID by the means of CIU_REG()
      ARM: mmp: add support for MMP3 SoC
      ARM: mmp: add SMP support
      ARM: mmp: move cputype.h to include/linux/soc/
      ARM: mmp: remove MMP3 USB PHY registers from regs-usb.h
      phy: phy-mmp3-usb: add a new driver
      ARM: dts: mmp3: Add MMP3 SoC dts file
      MAINTAINERS: mmp: add Git repository

 Documentation/devicetree/bindings/arm/cpus.yaml    |   1 +
 .../devicetree/bindings/arm/mrvl/mrvl.txt          |  14 -
 .../devicetree/bindings/arm/mrvl/mrvl.yaml         |  35 ++
 .../bindings/interrupt-controller/mrvl,intc.txt    |  14 +-
 .../devicetree/bindings/phy/phy-mmp3-usb.txt       |  13 +
 MAINTAINERS                                        |   9 +
 arch/arm/boot/dts/mmp3.dtsi                        | 527 +++++++++++++++++++++
 arch/arm/include/asm/hardware/cache-l2x0.h         |   2 +
 arch/arm/mach-mmp/Kconfig                          |  22 +-
 arch/arm/mach-mmp/Makefile                         |   4 +
 arch/arm/mach-mmp/addr-map.h                       |   7 +
 arch/arm/mach-mmp/common.c                         |  19 +-
 arch/arm/mach-mmp/common.h                         |   1 +
 arch/arm/mach-mmp/devices.c                        |   2 +-
 arch/arm/mach-mmp/mmp-dt.c                         |   5 +-
 arch/arm/mach-mmp/mmp2-dt.c                        |   7 +-
 arch/arm/mach-mmp/mmp2.c                           |   2 +-
 arch/arm/mach-mmp/mmp3.c                           |  29 ++
 arch/arm/mach-mmp/platsmp.c                        |  32 ++
 arch/arm/mach-mmp/pm-mmp2.c                        |   2 +-
 arch/arm/mach-mmp/pm-pxa910.c                      |   2 +-
 arch/arm/mach-mmp/pxa168.c                         |   2 +-
 arch/arm/mach-mmp/pxa910.c                         |   2 +-
 arch/arm/mach-mmp/regs-usb.h                       |  94 ----
 arch/arm/mach-mmp/time.c                           |  43 +-
 arch/arm/mm/Kconfig                                |   2 +-
 drivers/clk/Kconfig                                |   5 +
 drivers/clk/mmp/Makefile                           |   2 +-
 drivers/phy/marvell/Kconfig                        |  11 +
 drivers/phy/marvell/Makefile                       |   1 +
 drivers/phy/marvell/phy-mmp3-usb.c                 | 291 ++++++++++++
 include/Kbuild                                     |   1 +
 .../mach-mmp => include/linux/soc/mmp}/cputype.h   |  27 ++
 33 files changed, 1069 insertions(+), 161 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/mrvl/mrvl.txt
 create mode 100644 Documentation/devicetree/bindings/arm/mrvl/mrvl.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/phy-mmp3-usb.txt
 create mode 100644 arch/arm/boot/dts/mmp3.dtsi
 create mode 100644 arch/arm/mach-mmp/mmp3.c
 create mode 100644 arch/arm/mach-mmp/platsmp.c
 create mode 100644 drivers/phy/marvell/phy-mmp3-usb.c
 rename {arch/arm/mach-mmp => include/linux/soc/mmp}/cputype.h (71%)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
