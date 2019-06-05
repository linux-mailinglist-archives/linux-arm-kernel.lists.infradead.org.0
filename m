Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93BE0364E3
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 21:45:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=XDNLsh3Iv9p/slyGzO9zqP/SpBsxb2Fho2w/ornulSc=; b=V+H
	1wFGW62JRc+I1LNN+m4GbTDm33huebm48PGtoAZsso8LVJ0zspll1I265ltxWxQ0u/TEnZO7XdnTt
	tddlwWqjyN8W8iBmwP9j/9VNEed4pOHlJQ6WWeQQLBsm8O6nl35pqmp1Er37EZqFm9xf6PQc1Dkse
	eO6u5m9MRf0ixD4lh0yBFdgZ4hMDmfGDmVzZltFuWJp+X/G+r9C091HwDmurDB7/7LVazERqZBSVu
	VqKnFnxAezeNqU9y1TIZPONg52kNSimCEnQG8SLcq+TImeBiXYpUd34cy5+SE/mroFXo7RBYCHEK6
	ZKT+vzrF9M9g7wxMZM7T4pVLLMeJjBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYbqk-0004jP-Oi; Wed, 05 Jun 2019 19:45:30 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYbqd-0004iC-O1
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 19:45:25 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id D7FEC200860;
 Wed,  5 Jun 2019 21:45:12 +0200 (CEST)
Received: from smtp.na-rdc02.nxp.com (usphx01srsp001v.us-phx01.nxp.com
 [134.27.49.11])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 80DDD20085A;
 Wed,  5 Jun 2019 21:45:12 +0200 (CEST)
Received: from someleo.am.freescale.net (someleo.am.freescale.net
 [10.81.32.81])
 by usphx01srsp001v.us-phx01.nxp.com (Postfix) with ESMTP id CC2CD40A55;
 Wed,  5 Jun 2019 12:45:11 -0700 (MST)
From: Li Yang <leoyang.li@nxp.com>
To: arm@kernel.org
Subject: [GIT PULL v2] updates to soc/fsl drivers for next(v5.3)
Date: Wed,  5 Jun 2019 14:45:11 -0500
Message-Id: <20190605194511.12127-1-leoyang.li@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_124524_057237_4AB3D52D 
X-CRM114-Status: GOOD (  13.45  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

This is a rebase of patches that missed 5.2 merge window together with
some new patches for QE.  Please help to review and merge it.  We would
like this to be merged earlier because there are other patches depending
on patches in this pull request.  After this is merged in arm-soc, we can
ask other sub-system maintainers to pull from this tag and apply additional
patches.  Thanks.

Regards,
Leo

The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/leo/linux.git tags/soc-fsl-next-v5.3-2

for you to fetch changes up to 21560067fb1f5e87abedc3ecec5d46f67ac0c019:

  soc: fsl: qe: fold qe_get_num_of_snums into qe_snums_init (2019-06-05 14:26:52 -0500)

----------------------------------------------------------------
NXP/FSL SoC driver updates for v5.3 (take 2)

DPAA2 Console driver
- Add driver to export two char devices to dump logs for MC and
  AIOP

DPAA2 DPIO driver
- Add support for memory backed QBMan portals
- Increase the timeout period to prevent false error
- Add APIs to retrieve QBMan portal probing status

DPAA Qman driver
- Only make liodn fixup on powerpc SoCs with PAMU iommu

QUICC Engine
- Add support for importing qe-snums through device tree
- Some cleanups and foot print optimzation

----------------------------------------------------------------
Colin Ian King (1):
      soc: fsl: fix spelling mistake "Firmaware" -> "Firmware"

Ioana Ciornei (2):
      Documentation: DT: Add entry for DPAA2 console
      soc: fsl: add DPAA2 console support

Laurentiu Tudor (2):
      soc: fsl: qman: fixup liodns only on ppc targets
      soc: fsl: qbman_portals: add APIs to retrieve the probing status

Rasmus Villemoes (6):
      soc: fsl: qe: drop useless static qualifier
      soc: fsl: qe: reduce static memory footprint by 1.7K
      soc: fsl: qe: introduce qe_get_device_node helper
      dt-bindings: soc: fsl: qe: document new fsl,qe-snums binding
      soc: fsl: qe: support fsl,qe-snums property
      soc: fsl: qe: fold qe_get_num_of_snums into qe_snums_init

Roy Pledge (2):
      bus: mc-bus: Add support for mapping shareable portals
      soc: fsl: dpio: Add support for memory backed QBMan portals

Vabhav Sharma (1):
      soc: fsl: guts: Add definition for LX2160A

Youri Querry (1):
      soc: fsl: dpio: Increase timeout for QBMan Management Commands

 .../devicetree/bindings/misc/fsl,dpaa2-console.txt |  11 +
 .../devicetree/bindings/soc/fsl/cpm_qe/qe.txt      |  13 +-
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
 drivers/soc/fsl/qe/qe.c                            | 163 ++++------
 include/soc/fsl/bman.h                             |   8 +
 include/soc/fsl/qman.h                             |   9 +
 20 files changed, 695 insertions(+), 150 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/misc/fsl,dpaa2-console.txt
 create mode 100644 drivers/soc/fsl/dpaa2-console.c

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
