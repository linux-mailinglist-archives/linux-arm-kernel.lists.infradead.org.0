Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D121B3350
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 04:29:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=oMPpnVbss5KHXGm3BNTGvaqhLSvLS0YI+pY2hEYQYUU=; b=pMC
	ZO6z8ZlNeJBtOW6kJKWEDt05rkB9VxQlk9Lr1DVIaiaf28eg8sW7CNIxQHcUERqe07Tb+yuxe+zqN
	wjczZfDvKPgL09/pk1zmOG7o1I0rRT2puaMetagzl9tiN7jqYVc+28EE33f36/hI+pFkPvEvEPlSE
	jw/jaUVBlpANQVWEKQALLUUuIElsmZE4iplSJnC79zX6fW+I2vK2z7ITbQQntQkY5+t0KxcARdUjg
	087lpGiFeja+e0o1vUNpXovqYOKFS1VzEg7hMh8twb2b6Kn/d24iJkgbWczy4VhFd3FN6LkfoqCRZ
	0DSsV/8UJbLBiBfrDJZWb0hESHK9FoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9gl8-0003MH-Ig; Mon, 16 Sep 2019 02:28:58 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9gkf-00039q-Bo
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 02:28:31 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 3D71820051D;
 Mon, 16 Sep 2019 04:28:22 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 276DA20012D;
 Mon, 16 Sep 2019 04:28:15 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id A6AF4402E6;
 Mon, 16 Sep 2019 10:28:06 +0800 (SGT)
From: Xiaowei Bao <xiaowei.bao@nxp.com>
To: Zhiqiang.Hou@nxp.com, bhelgaas@google.com, robh+dt@kernel.org,
 mark.rutland@arm.com, shawnguo@kernel.org, leoyang.li@nxp.com,
 kishon@ti.com, lorenzo.pieralisi@arm.com, Minghuan.Lian@nxp.com,
 andrew.murray@arm.com, mingkai.hu@nxp.com, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 0/6] Add the Mobiveil EP and Layerscape Gen4 EP driver support
Date: Mon, 16 Sep 2019 10:17:36 +0800
Message-Id: <20190916021742.22844-1-xiaowei.bao@nxp.com>
X-Mailer: git-send-email 2.9.5
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_192829_546073_454A1DDB 
X-CRM114-Status: UNSURE (   7.21  )
X-CRM114-Notice: Please train this message.
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

This patch set are for adding Mobiveil EP driver and adding PCIe Gen4
EP driver of NXP Layerscape platform.

This patch set depends on:
https://patchwork.kernel.org/project/linux-pci/list/?series=159139

Xiaowei Bao (6):
  PCI: mobiveil: Add the EP driver support
  dt-bindings: Add DT binding for PCIE GEN4 EP of the layerscape
  PCI: mobiveil: Add PCIe Gen4 EP driver for NXP Layerscape SoCs
  PCI: mobiveil: Add workaround for unsupported request error
  arm64: dts: lx2160a: Add PCIe EP node
  misc: pci_endpoint_test: Add the layerscape PCIe GEN4 EP device
    support

 .../bindings/pci/layerscape-pcie-gen4.txt          |  28 +-
 MAINTAINERS                                        |   3 +
 arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi     |  56 ++
 drivers/misc/pci_endpoint_test.c                   |   2 +
 drivers/pci/controller/mobiveil/Kconfig            |  22 +-
 drivers/pci/controller/mobiveil/Makefile           |   2 +
 .../controller/mobiveil/pcie-layerscape-gen4-ep.c  | 169 ++++++
 drivers/pci/controller/mobiveil/pcie-mobiveil-ep.c | 568 +++++++++++++++++++++
 drivers/pci/controller/mobiveil/pcie-mobiveil.c    |  99 +++-
 drivers/pci/controller/mobiveil/pcie-mobiveil.h    |  72 +++
 10 files changed, 1009 insertions(+), 12 deletions(-)
 create mode 100644 drivers/pci/controller/mobiveil/pcie-layerscape-gen4-ep.c
 create mode 100644 drivers/pci/controller/mobiveil/pcie-mobiveil-ep.c

-- 
2.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
