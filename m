Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B02A1D2F1B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 14:03:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=9Qmgl+AEbYdISSC/SGjT/ScaJxaRuhBzvNkb0WWMIVw=; b=fuz
	E/SdfTj66nB4s8+P5+fte9aZM2yqiz15DJ/kQLkJUA/cP1d0p0JLnihkbaiVDsJx0tGFuVPF86Uym
	T0oQ2aRnRMQXtdoCEU/JGM2pNVQSt/FGCvzk8QhrgS6eRwXwEW4G/cZ6HsQrkcrQl2ugwxYydAO98
	7fI72JZUydAQHCKrq55JByuHUPy9JUNKdjM5c5hZZuGG2ZC1F2LDdbulAyIgSmmvQ5a5fWTM9Ey+g
	I7450i+KzSp8CODyGcydJGyEo+8FV/DsCeY65rOATqUrWINQRhWz3Dals43FraCEs81nsXK3flJWR
	eBVLnrcuyf53MoyEj/EKNdsy+7BXvzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZCaU-0006ay-US; Thu, 14 May 2020 12:03:42 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZCaE-0006Zd-Sq
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 12:03:28 +0000
Received: from unknown (HELO iyokan-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 14 May 2020 21:03:24 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by iyokan-ex.css.socionext.com (Postfix) with ESMTP id A9EE060057;
 Thu, 14 May 2020 21:03:24 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Thu, 14 May 2020 21:03:24 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
 by kinkan.css.socionext.com (Postfix) with ESMTP id EBE581A12AD;
 Thu, 14 May 2020 21:03:23 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh+dt@kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: [PATCH v4 0/2]  PCI: Add new UniPhier PCIe endpoint driver
Date: Thu, 14 May 2020 21:03:19 +0900
Message-Id: <1589457801-12796-1-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_050327_051159_45E05E1F 
X-CRM114-Status: GOOD (  14.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree@vger.kernel.org,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jassi Brar <jaswinder.singh@linaro.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds PCIe endpoint controller driver for Socionext UniPhier
SoCs. This controller is based on the DesignWare PCIe core.

This driver supports Pro5 SoC only, so Pro5 needs multiple clocks and
resets in devicetree node.

Changes since v3:
- dt-bindings: Convert with dt-schema
- Replace with devm_platform_ioremap_resource()
- Add a commnet that mutex covers raising legacy IRQ

Changes since v2:
- dt-bindings: Add clock-names, reset-names, and fix example for Pro5
- Remove 'is_legacy' indicating that the compatible is for legacy SoC
- Use pci_epc_features instead of defining uniphier_soc_data
- Remove redundant register read access
- Clean up return code on uniphier_add_pcie_ep()
- typo: intx -> INTx

Changes since v1:
- dt-bindings: Add Reviewed-by line
- Fix register value to set EP mode
- Add error message when failed to get phy
- Replace INTx assertion time with macro

Kunihiko Hayashi (2):
  dt-bindings: PCI: Add UniPhier PCIe endpoint controller description
  PCI: uniphier: Add Socionext UniPhier Pro5 PCIe endpoint controller
    driver

 .../bindings/pci/socionext,uniphier-pcie-ep.yaml   |  92 +++++
 MAINTAINERS                                        |   4 +-
 drivers/pci/controller/dwc/Kconfig                 |  13 +-
 drivers/pci/controller/dwc/Makefile                |   1 +
 drivers/pci/controller/dwc/pcie-uniphier-ep.c      | 383 +++++++++++++++++++++
 5 files changed, 489 insertions(+), 4 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/pci/socionext,uniphier-pcie-ep.yaml
 create mode 100644 drivers/pci/controller/dwc/pcie-uniphier-ep.c

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
