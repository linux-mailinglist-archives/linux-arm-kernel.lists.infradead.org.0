Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 151DB17CAF7
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 03:31:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=A/vVksNSx2z0odBE5vftpyuJBHG+jWkavlwajaXLLZw=; b=R5y
	KK7LP/IwHkh+KyPqV7HajOo9g3NX2WJHIUKNTgn/E87eUlUPJv7OvqhpXw6kdukN7s5fJiIxBpKfu
	oIMsTLWsLIl66VUOSKRBvrrJEK1Q3AVAC5BChrYwL8LMFHI1l7S0u9Deii0WM3d1dy8miGv1/+pWq
	10drwDSVLNrMdTA4n6eFq5edLnW0OdxxdEu5rtkJA5wdP63+rhva7l5PXzVw6HWZ8FIpCNZuPO/WG
	9+fAAHHO5qpY+N35xwpzt9zw3PbCF6n5NFC++tzyryJiIdrUaj5fN5zwZSrYF4iB+hrl09xsaP+Ij
	ApgQ62WpzOOTVh/KHemcgPFphAWJurg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAPFf-0007C0-Fx; Sat, 07 Mar 2020 02:31:43 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAPDN-00047F-PY
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Mar 2020 02:29:24 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 0947A1A0E38;
 Sat,  7 Mar 2020 03:29:15 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id A3E6B1A1975;
 Sat,  7 Mar 2020 03:28:10 +0100 (CET)
Received: from titan.ap.freescale.net (titan.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 434F840294;
 Sat,  7 Mar 2020 10:27:59 +0800 (SGT)
From: Xiaowei Bao <xiaowei.bao@nxp.com>
To: Zhiqiang.Hou@nxp.com, Minghuan.Lian@nxp.com, mingkai.hu@nxp.com,
 bhelgaas@google.com, robh+dt@kernel.org, shawnguo@kernel.org,
 leoyang.li@nxp.com, kishon@ti.com, lorenzo.pieralisi@arm.com,
 roy.zang@nxp.com, amurray@thegoodpenguin.co.uk, jingoohan1@gmail.com,
 gustavo.pimentel@synopsys.com, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linuxppc-dev@lists.ozlabs.org
Subject: [PATCH v4 00/11] Add the multiple PF support for DWC and Layerscape
Date: Sat,  7 Mar 2020 10:14:19 +0800
Message-Id: <20200307021430.36826-1-xiaowei.bao@nxp.com>
X-Mailer: git-send-email 2.9.5
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_182922_081504_01930947 
X-CRM114-Status: UNSURE (   6.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Xiaowei Bao <xiaowei.bao@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the PCIe EP multiple PF support for DWC and Layerscape, add
the doorbell MSIX function for DWC, use list to manage the PF of
one PCIe controller, and refactor the Layerscape EP driver due to
some platforms difference.

Xiaowei Bao (11):
  PCI: designware-ep: Add multiple PFs support for DWC
  PCI: designware-ep: Add the doorbell mode of MSI-X in EP mode
  PCI: designware-ep: Move the function of getting MSI capability
    forward
  PCI: designware-ep: Modify MSI and MSIX CAP way of finding
  dt-bindings: pci: layerscape-pci: Add compatible strings for ls1088a
    and ls2088a
  PCI: layerscape: Fix some format issue of the code
  PCI: layerscape: Modify the way of getting capability with different
    PEX
  PCI: layerscape: Modify the MSIX to the doorbell mode
  PCI: layerscape: Add EP mode support for ls1088a and ls2088a
  arm64: dts: layerscape: Add PCIe EP node for ls1088a
  misc: pci_endpoint_test: Add LS1088a in pci_device_id table

 .../devicetree/bindings/pci/layerscape-pci.txt     |   2 +
 arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi     |  31 +++
 drivers/misc/pci_endpoint_test.c                   |   2 +
 drivers/pci/controller/dwc/pci-layerscape-ep.c     | 100 ++++++--
 drivers/pci/controller/dwc/pcie-designware-ep.c    | 255 +++++++++++++++++----
 drivers/pci/controller/dwc/pcie-designware.c       |  59 +++--
 drivers/pci/controller/dwc/pcie-designware.h       |  48 +++-
 7 files changed, 404 insertions(+), 93 deletions(-)

-- 
2.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
