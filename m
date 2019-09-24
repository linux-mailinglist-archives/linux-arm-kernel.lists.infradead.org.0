Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B07A3BC007
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 04:29:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=JLsPrKrRBaCyPYFYaoGGSnsfe3hhX348OKcVUb82xC0=; b=p22
	UkfHuweWY7H3qGJKVBqkUvkoDPRh8oE12NoUS9bYEfs6I+EjvxDFL1ge5cQ/r7+hz0B4fB0f+QrPQ
	UiTmwdQIMtHCNN6Y6ctz08JHiUKtB2g2u4NSVINm9lURtpwIveFpseuRyHnYmTUUYY8uEe6BAvz+m
	DME0+I78Wt50YXDcooKu8AJY7oS4siPuucxKdI3pv7WSxAnrnK4Q4Hfa+VoRAQfbzh9JzHZKgcpKI
	6harm0iumbYSnB4OJvdQ/WHUgFRMJK1nk1hzXreHB66v/2P5Y5crD2crCcdpu35+Ln+ERaMhiwVAR
	GdMDNUGmow62g6hdod5LgQ0YoYf9XvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCaaH-0002kX-7f; Tue, 24 Sep 2019 02:29:45 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCaa7-0002j3-Al
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 02:29:37 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 183A21A038B;
 Tue, 24 Sep 2019 04:29:30 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 55A301A037B;
 Tue, 24 Sep 2019 04:29:22 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id A4A864029F;
 Tue, 24 Sep 2019 10:29:12 +0800 (SGT)
From: Xiaowei Bao <xiaowei.bao@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 leoyang.li@nxp.com, kishon@ti.com, lorenzo.pieralisi@arm.com,
 minghuan.Lian@nxp.com, mingkai.hu@nxp.com, roy.zang@nxp.com,
 jingoohan1@gmail.com, gustavo.pimentel@synopsys.com, andrew.murray@arm.com,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org
Subject: [PATCH v4 00/11] Add the multiple PF support for DWC and Layerscape
Date: Tue, 24 Sep 2019 10:18:38 +0800
Message-Id: <20190924021849.3185-1-xiaowei.bao@nxp.com>
X-Mailer: git-send-email 2.9.5
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_192935_504813_71059921 
X-CRM114-Status: UNSURE (   6.25  )
X-CRM114-Notice: Please train this message.
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
  dt-bindings: pci: layerscape-pci: add compatible strings for ls1088a
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
