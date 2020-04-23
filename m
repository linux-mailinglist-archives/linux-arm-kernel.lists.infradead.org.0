Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E3F21B63B9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 20:28:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/xyLV93ckrkRxdYd911iZfdiTYuMzWXiQ7goiE4V09g=; b=DPaCsnaEY/mxhLn+WMIZSwiAAa
	AFCCX2xBl79L1iGK58noaiYe6LtWigFp+fnjkFEOLs/XPl9dYCcc/tvH6XP8G12FAfdIV53WCJCvA
	YdIFmJZG6FC7jmOLIXxb79HRhVFAGIHInbYZy+a9YPuPwveHp7mM+MLrS8thLFVOXnVazqktSgF0E
	0XBw+zqnuzbLI48s6oMmV3iJYkT1IjQR5sb46rQ93N0mfob+ifukma9DlUwGHOBNjVLXP/EJ/J0Pg
	B1eBfRFvykHEjeOA2wQNPnyCPZbD9/5oM1+1jaE7afUEJvkmESovhrYEqzk3jKTN/92EmVxRsF0qw
	7i2oUhZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRgZl-0005lx-Mx; Thu, 23 Apr 2020 18:27:53 +0000
Received: from relmlor1.renesas.com ([210.160.252.171]
 helo=relmlie5.idc.renesas.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRgYk-00053r-Dy; Thu, 23 Apr 2020 18:26:52 +0000
X-IronPort-AV: E=Sophos;i="5.73,307,1583161200"; d="scan'208";a="45545205"
Received: from unknown (HELO relmlir6.idc.renesas.com) ([10.200.68.152])
 by relmlie5.idc.renesas.com with ESMTP; 24 Apr 2020 03:26:49 +0900
Received: from localhost.localdomain (unknown [10.226.36.204])
 by relmlir6.idc.renesas.com (Postfix) with ESMTP id D79EA40C860A;
 Fri, 24 Apr 2020 03:26:44 +0900 (JST)
From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>,
 Tom Joseph <tjoseph@cadence.com>, Jingoo Han <jingoohan1@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v9 4/8] PCI: endpoint: Pass page size as argument to
 pci_epc_mem_init()
Date: Thu, 23 Apr 2020 19:22:35 +0100
Message-Id: <1587666159-6035-5-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1587666159-6035-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <1587666159-6035-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_112650_712346_1738F22C 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.160.252.171 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Lad Prabhakar <prabhakar.csengg@gmail.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

pci_epc_mem_init() internally used page size equal to *PAGE_SIZE* to
manage the address space so instead just pass the page size as a
argument to pci_epc_mem_init().

Also make pci_epc_mem_init() as a C function instead of a macro function
in preparation for adding support for pci-epc-mem core to handle multiple
windows.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 drivers/pci/controller/cadence/pcie-cadence-ep.c | 2 +-
 drivers/pci/controller/pcie-rockchip-ep.c        | 2 +-
 drivers/pci/endpoint/pci-epc-mem.c               | 7 +++++++
 include/linux/pci-epc.h                          | 5 ++---
 4 files changed, 11 insertions(+), 5 deletions(-)

diff --git a/drivers/pci/controller/cadence/pcie-cadence-ep.c b/drivers/pci/controller/cadence/pcie-cadence-ep.c
index 1c173dad67d1..1c15c8352125 100644
--- a/drivers/pci/controller/cadence/pcie-cadence-ep.c
+++ b/drivers/pci/controller/cadence/pcie-cadence-ep.c
@@ -450,7 +450,7 @@ int cdns_pcie_ep_setup(struct cdns_pcie_ep *ep)
 		epc->max_functions = 1;
 
 	ret = pci_epc_mem_init(epc, pcie->mem_res->start,
-			       resource_size(pcie->mem_res));
+			       resource_size(pcie->mem_res), PAGE_SIZE);
 	if (ret < 0) {
 		dev_err(dev, "failed to initialize the memory space\n");
 		goto err_init;
diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
index d743b0a48988..5eaf36629a75 100644
--- a/drivers/pci/controller/pcie-rockchip-ep.c
+++ b/drivers/pci/controller/pcie-rockchip-ep.c
@@ -615,7 +615,7 @@ static int rockchip_pcie_ep_probe(struct platform_device *pdev)
 	rockchip_pcie_write(rockchip, BIT(0), PCIE_CORE_PHY_FUNC_CFG);
 
 	err = pci_epc_mem_init(epc, rockchip->mem_res->start,
-			       resource_size(rockchip->mem_res));
+			       resource_size(rockchip->mem_res), PAGE_SIZE);
 	if (err < 0) {
 		dev_err(dev, "failed to initialize the memory space\n");
 		goto err_uninit_port;
diff --git a/drivers/pci/endpoint/pci-epc-mem.c b/drivers/pci/endpoint/pci-epc-mem.c
index abfac1109a13..cdd1d3821249 100644
--- a/drivers/pci/endpoint/pci-epc-mem.c
+++ b/drivers/pci/endpoint/pci-epc-mem.c
@@ -93,6 +93,13 @@ return ret;
 }
 EXPORT_SYMBOL_GPL(__pci_epc_mem_init);
 
+int pci_epc_mem_init(struct pci_epc *epc, phys_addr_t base,
+		     size_t size, size_t page_size)
+{
+	return __pci_epc_mem_init(epc, base, size, page_size);
+}
+EXPORT_SYMBOL_GPL(pci_epc_mem_init);
+
 /**
  * pci_epc_mem_exit() - cleanup the pci_epc_mem structure
  * @epc: the EPC device that invoked pci_epc_mem_exit
diff --git a/include/linux/pci-epc.h b/include/linux/pci-epc.h
index e0ed9d01f6e5..5bc1de65849e 100644
--- a/include/linux/pci-epc.h
+++ b/include/linux/pci-epc.h
@@ -137,9 +137,6 @@ struct pci_epc_features {
 #define devm_pci_epc_create(dev, ops)    \
 		__devm_pci_epc_create((dev), (ops), THIS_MODULE)
 
-#define pci_epc_mem_init(epc, phys_addr, size)	\
-		__pci_epc_mem_init((epc), (phys_addr), (size), PAGE_SIZE)
-
 static inline void epc_set_drvdata(struct pci_epc *epc, void *data)
 {
 	dev_set_drvdata(&epc->dev, data);
@@ -195,6 +192,8 @@ unsigned int pci_epc_get_first_free_bar(const struct pci_epc_features
 struct pci_epc *pci_epc_get(const char *epc_name);
 void pci_epc_put(struct pci_epc *epc);
 
+int pci_epc_mem_init(struct pci_epc *epc, phys_addr_t base,
+		     size_t size, size_t page_size);
 int __pci_epc_mem_init(struct pci_epc *epc, phys_addr_t phys_addr, size_t size,
 		       size_t page_size);
 void pci_epc_mem_exit(struct pci_epc *epc);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
