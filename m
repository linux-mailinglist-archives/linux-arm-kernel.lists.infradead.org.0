Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B89DC10E2E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 22:42:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=aV32YyiIJCxZWDE2eZqHF0ZxSBewqMPNuDp/DQN1Grc=; b=QVK
	QIVoj+Kwb+5CBzAl8Zj5iiPpuLersrmyt/rOpdBIo5bMbQj+AY7ZYrdK9ODp6s0VDqO/lYSrdvHz8
	c/tPvCbanOv9o5L1nFtc8EJWm1mSGL/1IEv6uxaFhmm2A5ik6f74XxqrFPkVbH2yZfobtVVfkOPoR
	toCAXk9HoHMJ68dbGba+WNpnPv4HAUHzC3jgUfYA4DMwAbRULuZEA6ZRPKCbqhyEh8j4M5q7Z26SE
	qupYU9A2GYyPI+qS0t2E/lUqZxZ5QVT4vKrOB8alJqHyzO6FhYU2D2KbgclURRjkekX/lhDw8V34w
	GIyDjKtIpeYiXfkDKWO7clz+tcAFaaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLw3L-0000Tk-7v; Wed, 01 May 2019 20:42:07 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLvzL-0007aX-Lr
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 20:42:01 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 19DDF1A02B4;
 Wed,  1 May 2019 22:37:58 +0200 (CEST)
Received: from smtp.na-rdc02.nxp.com (inv1260.us-phx01.nxp.com [134.27.49.11])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id D2C901A000D;
 Wed,  1 May 2019 22:37:57 +0200 (CEST)
Received: from someleo.am.freescale.net (someleo.am.freescale.net
 [10.81.32.93])
 by inv1260.us-phx01.nxp.com (Postfix) with ESMTP id 1D22D40A63;
 Wed,  1 May 2019 13:37:57 -0700 (MST)
From: Li Yang <leoyang.li@nxp.com>
To: arm@kernel.org
Subject: [GIT PULL] updates to soc/fsl drivers for v5.2
Date: Wed,  1 May 2019 15:37:56 -0500
Message-Id: <20190501203756.5443-1-leoyang.li@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_134159_431453_66EA144A 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: shawnguo@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi arm-soc maintainers,

Please help to merge for-next patches for the upcoming merge window.  Thanks

Regards,
Leo


The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:

  Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/leo/linux.git tags/soc-fsl-next-v5.2

for you to fetch changes up to 1c8f39946c033de08e382025d7ac7f55fbca57eb:

  soc: fsl: qbman_portals: add APIs to retrieve the probing status (2019-05-01 15:09:59 -0500)

----------------------------------------------------------------
NXP/FSL SoC driver updates for v5.2

DPAA2 Console driver
- Add driver to export two char devices to dump logs for MC and
  AIOP

DPAA2 DPIO driver
- Add support for memory backed QBMan portals
- Increase the timeout period to prevent false error
- Add APIs to retrieve QBMan portal probing status

DPAA Qman driver
- Only make liodn fixup on powerpc SoCs with PAMU iommu

Guts driver
- Add definition for LX2160a SoC

----------------------------------------------------------------
Ioana Ciornei (2):
      Documentation: DT: Add entry for DPAA2 console
      soc: fsl: add DPAA2 console support

Laurentiu Tudor (2):
      soc: fsl: qman: fixup liodns only on ppc targets
      soc: fsl: qbman_portals: add APIs to retrieve the probing status

Roy Pledge (2):
      bus: mc-bus: Add support for mapping shareable portals
      soc: fsl: dpio: Add support for memory backed QBMan portals

Vabhav Sharma (1):
      soc: fsl: guts: Add definition for LX2160A

Youri Querry (1):
      soc: fsl: dpio: Increase timeout for QBMan Management Commands

 .../devicetree/bindings/misc/fsl,dpaa2-console.txt |  11 +
 MAINTAINERS                                        |   1 +
 drivers/bus/fsl-mc/dprc.c                          |  30 +-
 drivers/bus/fsl-mc/fsl-mc-bus.c                    |  15 +-
 drivers/bus/fsl-mc/fsl-mc-private.h                |  17 +-
 drivers/soc/fsl/Kconfig                            |  10 +
 drivers/soc/fsl/Makefile                           |   1 +
 drivers/soc/fsl/dpaa2-console.c                    | 329 +++++++++++++++++++++
 drivers/soc/fsl/dpio/dpio-driver.c                 |  23 +-
 drivers/soc/fsl/dpio/qbman-portal.c                | 148 +++++++--
 drivers/soc/fsl/dpio/qbman-portal.h                |   9 +-
 drivers/soc/fsl/guts.c                             |   6 +
 drivers/soc/fsl/qbman/bman_portal.c                |  20 +-
 drivers/soc/fsl/qbman/qman_ccsr.c                  |   2 +-
 drivers/soc/fsl/qbman/qman_portal.c                |  21 +-
 drivers/soc/fsl/qbman/qman_priv.h                  |   9 +-
 include/soc/fsl/bman.h                             |   8 +
 include/soc/fsl/qman.h                             |   9 +
 18 files changed, 618 insertions(+), 51 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/misc/fsl,dpaa2-console.txt
 create mode 100644 drivers/soc/fsl/dpaa2-console.c

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
