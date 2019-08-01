Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 406097DA9E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 13:53:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=dG4BBHsgg3Ffm8w/sFkmiB3Xr8Q1squHWvgyoN9JlSs=; b=d/f
	KmbP6B53QI6I7mnp/MO5JvNC/xrASKWbkrlEF6rKUipPdFnmBlqlf+3QP/uPS1f+0TQolJhb4qDuo
	A6hY9yAf2kGKWd0b1mzsFYWfCfICS1+8kFOYe1+aDj3ba0gb4uyXmgYuv020mjkZFLG+iC3S/jWQz
	/1zQxDpyE1PaOw5w7jXLE057ewuz59bDGObZ2SJ1puWS1DpzXFq02IkA73nJ0PmEWVwXt6VweL5dB
	p0PeEBftUDuZEDo9MYvPcXK0MZJ7vXTrihZ7LmMJpLEAg4QjMrUk32oiovuA5VZFh5yoqb8FgmHbi
	sEZ2sb7zV7goQ9GCtUURNDPqkLqebqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht9du-0001p9-Sy; Thu, 01 Aug 2019 11:53:10 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht9dg-0001nZ-IG
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 11:52:58 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 867A51A0105;
 Thu,  1 Aug 2019 13:52:54 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 7A0F51A0074;
 Thu,  1 Aug 2019 13:52:54 +0200 (CEST)
Received: from fsr-ub1664-016.ea.freescale.net
 (fsr-ub1664-016.ea.freescale.net [10.171.71.216])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 14B04205E3;
 Thu,  1 Aug 2019 13:52:54 +0200 (CEST)
From: Claudiu Manoil <claudiu.manoil@nxp.com>
To: "David S . Miller" <davem@davemloft.net>
Subject: [PATCH net-next v5 0/5] enetc: Add mdio bus driver for the PCIe MDIO
 endpoint
Date: Thu,  1 Aug 2019 14:52:48 +0300
Message-Id: <1564660373-4607-1-git-send-email-claudiu.manoil@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_045256_745325_3FF45F9F 
X-CRM114-Status: GOOD (  10.40  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: andrew@lunn.ch, devicetree@vger.kernel.org, netdev@vger.kernel.org,
 alexandru.marginean@nxp.com, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

First patch fixes a sparse issue and cleans up accessors to avoid
casting to __iomem.  The second one cleans up the Makefile, to make
it easier to add new entries.

Third patch just registers the PCIe endpoint device containing
the MDIO registers as a standalone MDIO bus driver, to provide
an alternative way to control the MDIO bus.  The same code used
by the ENETC ports (eth controllers) to manage MDIO via local
registers applies and is reused.

Bindings are provided for the new MDIO node, similarly to ENETC
port nodes bindings.

Last patch enables the ENETC port 1 and its RGMII PHY on the
LS1028A QDS board, where the MDIO muxing configuration relies
on the MDIO support provided in the first patch.

Changes since v0:
v1 - fixed mdio bus allocation
v2 - cleaned up accessors to avoid casting
v3 - fixed spelling (mostly commit message)
v4 - fixed err path check blunder
v5 - fixed loadble module build, provided separate kbuild module
     for the driver


Claudiu Manoil (5):
  enetc: Clean up local mdio bus allocation
  enetc: Clean up makefile
  enetc: Add mdio bus driver for the PCIe MDIO endpoint
  dt-bindings: net: fsl: enetc: Add bindings for the central MDIO PCIe
    endpoint
  arm64: dts: fsl: ls1028a: Enable eth port1 on the ls1028a QDS board

 .../devicetree/bindings/net/fsl-enetc.txt     |  42 +++++++-
 .../boot/dts/freescale/fsl-ls1028a-qds.dts    |  40 +++++++
 .../arm64/boot/dts/freescale/fsl-ls1028a.dtsi |   6 ++
 drivers/net/ethernet/freescale/enetc/Kconfig  |   9 ++
 drivers/net/ethernet/freescale/enetc/Makefile |  19 ++--
 .../net/ethernet/freescale/enetc/enetc_mdio.c |  97 ++++++++---------
 .../net/ethernet/freescale/enetc/enetc_mdio.h |  12 +++
 .../ethernet/freescale/enetc/enetc_pci_mdio.c | 101 ++++++++++++++++++
 .../net/ethernet/freescale/enetc/enetc_pf.c   |   5 +-
 9 files changed, 264 insertions(+), 67 deletions(-)
 create mode 100644 drivers/net/ethernet/freescale/enetc/enetc_mdio.h
 create mode 100644 drivers/net/ethernet/freescale/enetc/enetc_pci_mdio.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
