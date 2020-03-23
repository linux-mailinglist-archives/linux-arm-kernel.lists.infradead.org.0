Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F4DC18F1FD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 10:41:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=HAmsiav86l8grKYCcJGu+m/22ISgTXjKexlWC+QQdKI=; b=FLH
	ly8p3QIZpANTgwoHFUyYZvkuaRS1jfkeNXLAluyJ5QWJIYxDzF7g/NGeW7iQUSF+DyTUmX7LmtEPY
	dWVMdDA2lvjkSZQ+rq6lQ5Bf3StUzlBT/JTQTpgy5S1C8pYBdvmLC+GT6QooDDlCqyQLD7mkxKpaT
	Ys5/1Hjot+3o8Civtf/E+pXnp0Mj8P6/ebCasnxJrPrZLVhDviBlVJUKlGL4HjnZ/BzqTok72h5Pr
	751LrUOWofkogDY0Prpcs2iRTxJ5QwH92nc+gaCP+pQUCCDQToZq6UURtQAO++T9kYx1k+Ryf+10C
	/Cgbihl0gIK6ZgmLSPg/aGPoCJ4xRMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGJa3-0006eu-DR; Mon, 23 Mar 2020 09:41:11 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGJZu-0006Xu-OM
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 09:41:04 +0000
Received: from unknown (HELO kinkan-ex.css.socionext.com) ([172.31.9.52])
 by mx.socionext.com with ESMTP; 23 Mar 2020 18:41:01 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
 by kinkan-ex.css.socionext.com (Postfix) with ESMTP id 0EAA0180BCB;
 Mon, 23 Mar 2020 18:41:02 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Mon, 23 Mar 2020 18:41:01 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
 by kinkan.css.socionext.com (Postfix) with ESMTP id 7B9B61A12AD;
 Mon, 23 Mar 2020 18:41:01 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Andrew Murray <andrew.murray@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v3 0/2] PCI: Add new UniPhier PCIe endpoint driver
Date: Mon, 23 Mar 2020 18:40:52 +0900
Message-Id: <1584956454-8829-1-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_024102_906881_98F80814 
X-CRM114-Status: GOOD (  17.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.248.49.38 listed in list.dnswl.org]
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

 .../devicetree/bindings/pci/uniphier-pcie-ep.txt   |  53 +++
 MAINTAINERS                                        |   4 +-
 drivers/pci/controller/dwc/Kconfig                 |  13 +-
 drivers/pci/controller/dwc/Makefile                |   1 +
 drivers/pci/controller/dwc/pcie-uniphier-ep.c      | 380 +++++++++++++++++++++
 5 files changed, 447 insertions(+), 4 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/pci/uniphier-pcie-ep.txt
 create mode 100644 drivers/pci/controller/dwc/pcie-uniphier-ep.c

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
