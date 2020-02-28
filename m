Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16FB7173BFF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 16:44:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zyj7f1JHvBgN1Bo4uKd5+c27B8piUksLwR4U4ld5Ck4=; b=UxZAf+9IsXJ5hE
	697KMuzE7Fv84NwjbwhhIr+trk854HImQrMQNiy0V4P7nlkcMkKklO9S/zfVm+b7Pp1NJVpaQqXh5
	acz7UglPq5LGNn9GibYyCwvb4wowYzLmT0RRs26IoaIPDKCYNgmlqj6mspLKrVlXW7o/0P/W4UMPn
	p8LkOqdoQqsYjqnfaU4Mf+2Yc7YjDAmnL16k/yRFosNbZm0Spndx87C7btmcnHu1tIFSBkmRxnp7P
	M93KfkIprZYC02Bu50A0Q2iJBxnDrhsQ9QCWs4gXifmCy3f/Ivw/1QUddBgs2Fm0oZCiFSk0LX1+y
	gG6D+vEzbQ1+7+k2qmZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7hnp-0006vn-PO; Fri, 28 Feb 2020 15:43:49 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7hmD-0005vZ-LW; Fri, 28 Feb 2020 15:42:13 +0000
Received: by mail-wm1-x341.google.com with SMTP id d138so2082131wmd.5;
 Fri, 28 Feb 2020 07:42:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yAA9P8jK6Ff+7bszNWOlXdAYW8Ukk6IJm2zQ0FlVWQg=;
 b=U0r/a+PGPZX6grKIVx22UOb0I3fkDPnbiBj4OlQNWC4VZBIxTT2Pkyum8HJna8Qw2t
 US4gHJ4MeAmqPdL9ZYwkIL3HOio5rhn+YnzcsObwb9r2rv8QpbIs6asxBhSuX0hn2OzS
 AU4FlRCWwuDKLXA2C8btNAnG6taKkXBwXFoDu/WhMQw/FZoKTkqVsE0h7F2vADZnzrXP
 sPgtCLwxWH3/SsaBuTPSfLjO8BCqopZLm+tWTrsuTQRa0lPUA5YnVCjOcxiAT5CCpxsB
 JBhbDzInhRSCld1hAbIOuzTDIIxJGLz6QJjDI18FLoj/RJ0TUzp0Hu9PS9dqd+ugA3SP
 QaEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yAA9P8jK6Ff+7bszNWOlXdAYW8Ukk6IJm2zQ0FlVWQg=;
 b=cCl1Y4kW/3FP/b2CZ65AD9mItgETnd326MP7+7LjASH3uKti/XlrExEsef/0k6DmnY
 skGbuRqUaeiv47rvEF27Efp9HOkEpHKF+y49SnTg97ryS7N/q+3vgG6CqTTrbiEhu8y1
 r9SQUC+pN05jVIfrpWHRnGjBsX9RrklhS9Xs8VT6LYcr3NCO43gSzlkCW1SIv7lxEGvZ
 yFb+3NO3bC3ItLtZ/yCMvm8jRG1zQLL99ecT4R+bt/Mdt0acXB03KnKomYERL4ChkLLi
 C55Ww4LA+/c2eXIcqfEDfyWIn78a/xQwuQDrC60UQ5X31e3qR6jqtD8T4UGkB2QZh1qN
 ETCw==
X-Gm-Message-State: APjAAAX8zrI5a4eWpWJfRwXMEOG06zGqNRjikahgGjoEVDfhu8DO5aqM
 VJ1lbT0VnreDBhIhSPu5bH8=
X-Google-Smtp-Source: APXvYqy8EPJ3UVupfVWxqQOjfVR1zuPe1XCPG3/IMI5/nusWcheUwuFtQ8iLtWfu4bznkUipeXrroQ==
X-Received: by 2002:a1c:3b0a:: with SMTP id i10mr5718117wma.177.1582904527767; 
 Fri, 28 Feb 2020 07:42:07 -0800 (PST)
Received: from prasmi.home ([2a00:23c8:2510:d000:3855:fd13:6b76:a11b])
 by smtp.gmail.com with ESMTPSA id k16sm13355349wrd.17.2020.02.28.07.42.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 Feb 2020 07:42:07 -0800 (PST)
From: Lad Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jingoo Han <jingoohan1@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v5 4/7] PCI: endpoint: Add support to handle multiple base for
 mapping outbound memory
Date: Fri, 28 Feb 2020 15:41:19 +0000
Message-Id: <20200228154122.14164-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200228154122.14164-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20200228154122.14164-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_074209_829576_FA060568 
X-CRM114-Status: GOOD (  22.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [prabhakar.csengg[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Andrew Murray <andrew.murray@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

R-Car PCIe controller has support to map multiple memory regions for
mapping the outbound memory in local system also the controller limits
single allocation for each region (that is, once a chunk is used from the
region it cannot be used to allocate a new one). This features inspires to
add support for handling multiple memory bases in endpoint framework.

With this patch pci_epc_mem_init() now accepts multiple regions, also
page_size for each memory region is passed during initialization so as
to handle single allocation for each region by setting the page_size to
window_size.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 drivers/pci/controller/cadence/pcie-cadence-ep.c |   7 +-
 drivers/pci/controller/dwc/pcie-designware-ep.c  |  29 ++--
 drivers/pci/controller/pcie-rockchip-ep.c        |   7 +-
 drivers/pci/endpoint/pci-epc-mem.c               | 167 ++++++++++++++++-------
 include/linux/pci-epc.h                          |  39 ++++--
 5 files changed, 169 insertions(+), 80 deletions(-)

diff --git a/drivers/pci/controller/cadence/pcie-cadence-ep.c b/drivers/pci/controller/cadence/pcie-cadence-ep.c
index 1c173da..90e32438 100644
--- a/drivers/pci/controller/cadence/pcie-cadence-ep.c
+++ b/drivers/pci/controller/cadence/pcie-cadence-ep.c
@@ -401,6 +401,7 @@ int cdns_pcie_ep_setup(struct cdns_pcie_ep *ep)
 	struct device *dev = ep->pcie.dev;
 	struct platform_device *pdev = to_platform_device(dev);
 	struct device_node *np = dev->of_node;
+	struct pci_epc_mem_window mem_window;
 	struct cdns_pcie *pcie = &ep->pcie;
 	struct resource *res;
 	struct pci_epc *epc;
@@ -449,8 +450,10 @@ int cdns_pcie_ep_setup(struct cdns_pcie_ep *ep)
 	if (of_property_read_u8(np, "max-functions", &epc->max_functions) < 0)
 		epc->max_functions = 1;
 
-	ret = pci_epc_mem_init(epc, pcie->mem_res->start,
-			       resource_size(pcie->mem_res));
+	mem_window.phys_base = pcie->mem_res->start;
+	mem_window.size = resource_size(pcie->mem_res);
+	mem_window.page_size = PAGE_SIZE;
+	ret = pci_epc_mem_init(epc, &mem_window, 1);
 	if (ret < 0) {
 		dev_err(dev, "failed to initialize the memory space\n");
 		goto err_init;
diff --git a/drivers/pci/controller/dwc/pcie-designware-ep.c b/drivers/pci/controller/dwc/pcie-designware-ep.c
index cfeccd7..b150ef3 100644
--- a/drivers/pci/controller/dwc/pcie-designware-ep.c
+++ b/drivers/pci/controller/dwc/pcie-designware-ep.c
@@ -195,8 +195,7 @@ static void dw_pcie_ep_unmap_addr(struct pci_epc *epc, u8 func_no,
 }
 
 static int dw_pcie_ep_map_addr(struct pci_epc *epc, u8 func_no,
-			       phys_addr_t addr,
-			       u64 pci_addr, size_t size)
+			       phys_addr_t addr, u64 pci_addr, size_t size)
 {
 	int ret;
 	struct dw_pcie_ep *ep = epc_get_drvdata(epc);
@@ -367,6 +366,7 @@ int dw_pcie_ep_raise_msi_irq(struct dw_pcie_ep *ep, u8 func_no,
 	unsigned int aligned_offset;
 	u16 msg_ctrl, msg_data;
 	u32 msg_addr_lower, msg_addr_upper, reg;
+	int window = PCI_EPC_DEFAULT_WINDOW;
 	u64 msg_addr;
 	bool has_upper;
 	int ret;
@@ -390,11 +390,11 @@ int dw_pcie_ep_raise_msi_irq(struct dw_pcie_ep *ep, u8 func_no,
 		reg = ep->msi_cap + PCI_MSI_DATA_32;
 		msg_data = dw_pcie_readw_dbi(pci, reg);
 	}
-	aligned_offset = msg_addr_lower & (epc->mem->page_size - 1);
+	aligned_offset = msg_addr_lower & (epc->mem[window]->page_size - 1);
 	msg_addr = ((u64)msg_addr_upper) << 32 |
 			(msg_addr_lower & ~aligned_offset);
-	ret = dw_pcie_ep_map_addr(epc, func_no, ep->msi_mem_phys, msg_addr,
-				  epc->mem->page_size);
+	ret = dw_pcie_ep_map_addr(epc, func_no, ep->msi_mem_phys,
+				  msg_addr, epc->mem[window]->page_size);
 	if (ret)
 		return ret;
 
@@ -416,6 +416,7 @@ int dw_pcie_ep_raise_msix_irq(struct dw_pcie_ep *ep, u8 func_no,
 	u32 reg, msg_data, vec_ctrl;
 	u64 tbl_addr, msg_addr, reg_u64;
 	void __iomem *msix_tbl;
+	int window = PCI_EPC_DEFAULT_WINDOW;
 	int ret;
 
 	reg = ep->msix_cap + PCI_MSIX_TABLE;
@@ -452,8 +453,8 @@ int dw_pcie_ep_raise_msix_irq(struct dw_pcie_ep *ep, u8 func_no,
 		return -EPERM;
 	}
 
-	ret = dw_pcie_ep_map_addr(epc, func_no, ep->msi_mem_phys, msg_addr,
-				  epc->mem->page_size);
+	ret = dw_pcie_ep_map_addr(epc, func_no, ep->msi_mem_phys,
+				  msg_addr, epc->mem[window]->page_size);
 	if (ret)
 		return ret;
 
@@ -466,10 +467,11 @@ int dw_pcie_ep_raise_msix_irq(struct dw_pcie_ep *ep, u8 func_no,
 
 void dw_pcie_ep_exit(struct dw_pcie_ep *ep)
 {
+	int window = PCI_EPC_DEFAULT_WINDOW;
 	struct pci_epc *epc = ep->epc;
 
 	pci_epc_mem_free_addr(epc, ep->msi_mem_phys, ep->msi_mem,
-			      epc->mem->page_size);
+			      epc->mem[window]->page_size);
 
 	pci_epc_mem_exit(epc);
 }
@@ -502,6 +504,8 @@ int dw_pcie_ep_init(struct dw_pcie_ep *ep)
 	unsigned int nbars;
 	unsigned int offset;
 	struct pci_epc *epc;
+	size_t msi_page_size;
+	struct pci_epc_mem_window mem_window;
 	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
 	struct device *dev = pci->dev;
 	struct device_node *np = dev->of_node;
@@ -574,15 +578,18 @@ int dw_pcie_ep_init(struct dw_pcie_ep *ep)
 	if (ret < 0)
 		epc->max_functions = 1;
 
-	ret = __pci_epc_mem_init(epc, ep->phys_base, ep->addr_size,
-				 ep->page_size);
+	mem_window.phys_base = ep->phys_base;
+	mem_window.size = ep->addr_size;
+	mem_window.page_size = ep->page_size;
+	ret = __pci_epc_mem_init(epc, &mem_window, 1);
 	if (ret < 0) {
 		dev_err(dev, "Failed to initialize address space\n");
 		return ret;
 	}
 
+	msi_page_size = epc->mem[PCI_EPC_DEFAULT_WINDOW]->page_size;
 	ep->msi_mem = pci_epc_mem_alloc_addr(epc, &ep->msi_mem_phys,
-					     epc->mem->page_size);
+					     msi_page_size);
 	if (!ep->msi_mem) {
 		dev_err(dev, "Failed to reserve memory for MSI/MSI-X\n");
 		return -ENOMEM;
diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
index d743b0a..5a97390 100644
--- a/drivers/pci/controller/pcie-rockchip-ep.c
+++ b/drivers/pci/controller/pcie-rockchip-ep.c
@@ -562,6 +562,7 @@ static const struct of_device_id rockchip_pcie_ep_of_match[] = {
 
 static int rockchip_pcie_ep_probe(struct platform_device *pdev)
 {
+	struct pci_epc_mem_window mem_window;
 	struct device *dev = &pdev->dev;
 	struct rockchip_pcie_ep *ep;
 	struct rockchip_pcie *rockchip;
@@ -614,8 +615,10 @@ static int rockchip_pcie_ep_probe(struct platform_device *pdev)
 	/* Only enable function 0 by default */
 	rockchip_pcie_write(rockchip, BIT(0), PCIE_CORE_PHY_FUNC_CFG);
 
-	err = pci_epc_mem_init(epc, rockchip->mem_res->start,
-			       resource_size(rockchip->mem_res));
+	mem_window.phys_base = rockchip->mem_res->start;
+	mem_window.size = resource_size(rockchip->mem_res);
+	mem_window.page_size = PAGE_SIZE;
+	err = pci_epc_mem_init(epc, &mem_window, 1);
 	if (err < 0) {
 		dev_err(dev, "failed to initialize the memory space\n");
 		goto err_uninit_port;
diff --git a/drivers/pci/endpoint/pci-epc-mem.c b/drivers/pci/endpoint/pci-epc-mem.c
index d2b174c..6c21957 100644
--- a/drivers/pci/endpoint/pci-epc-mem.c
+++ b/drivers/pci/endpoint/pci-epc-mem.c
@@ -38,57 +38,76 @@ static int pci_epc_mem_get_order(struct pci_epc_mem *mem, size_t size)
 /**
  * __pci_epc_mem_init() - initialize the pci_epc_mem structure
  * @epc: the EPC device that invoked pci_epc_mem_init
- * @phys_base: the physical address of the base
- * @size: the size of the address space
- * @page_size: size of each page
+ * @windows: pointer to windows supported by the device
+ * @num_windows: number of windows device supports
  *
  * Invoke to initialize the pci_epc_mem structure used by the
  * endpoint functions to allocate mapped PCI address.
  */
-int __pci_epc_mem_init(struct pci_epc *epc, phys_addr_t phys_base, size_t size,
-		       size_t page_size)
+int __pci_epc_mem_init(struct pci_epc *epc, struct pci_epc_mem_window *windows,
+		       int num_windows)
 {
-	int ret;
-	struct pci_epc_mem *mem;
-	unsigned long *bitmap;
+	struct pci_epc_mem *mem = NULL;
+	unsigned long *bitmap = NULL;
 	unsigned int page_shift;
-	int pages;
+	size_t page_size;
 	int bitmap_size;
-
-	if (page_size < PAGE_SIZE)
-		page_size = PAGE_SIZE;
-
-	page_shift = ilog2(page_size);
-	pages = size >> page_shift;
-	bitmap_size = BITS_TO_LONGS(pages) * sizeof(long);
-
-	mem = kzalloc(sizeof(*mem), GFP_KERNEL);
-	if (!mem) {
-		ret = -ENOMEM;
-		goto err;
-	}
-
-	bitmap = kzalloc(bitmap_size, GFP_KERNEL);
-	if (!bitmap) {
-		ret = -ENOMEM;
-		goto err_mem;
+	int pages;
+	int ret;
+	int i;
+
+	epc->mem_windows = 0;
+
+	if (!windows)
+		return -EINVAL;
+
+	if (num_windows <= 0)
+		return -EINVAL;
+
+	epc->mem = kcalloc(num_windows, sizeof(*mem), GFP_KERNEL);
+	if (!epc->mem)
+		return -EINVAL;
+
+	for (i = 0; i < num_windows; i++) {
+		page_size = windows[i].page_size;
+		if (page_size < PAGE_SIZE)
+			page_size = PAGE_SIZE;
+		page_shift = ilog2(page_size);
+		pages = windows[i].size >> page_shift;
+		bitmap_size = BITS_TO_LONGS(pages) * sizeof(long);
+
+		mem = kzalloc(sizeof(*mem), GFP_KERNEL);
+		if (!mem) {
+			ret = -ENOMEM;
+			goto err_mem;
+		}
+
+		bitmap = kzalloc(bitmap_size, GFP_KERNEL);
+		if (!bitmap) {
+			ret = -ENOMEM;
+			goto err_mem;
+		}
+
+		mem->bitmap = bitmap;
+		mem->window.phys_base = windows[i].phys_base;
+		mem->page_size = page_size;
+		mem->pages = pages;
+		mem->window.size = windows[i].size;
+		epc->mem[i] = mem;
 	}
-
-	mem->bitmap = bitmap;
-	mem->phys_base = phys_base;
-	mem->page_size = page_size;
-	mem->pages = pages;
-	mem->size = size;
-
-	epc->mem = mem;
+	epc->mem_windows = num_windows;
 
 	return 0;
 
 err_mem:
-	kfree(mem);
+	for (; i >= 0; i--) {
+		mem = epc->mem[i];
+		kfree(mem->bitmap);
+		kfree(mem);
+	}
+	kfree(epc->mem);
 
-err:
-return ret;
+	return ret;
 }
 EXPORT_SYMBOL_GPL(__pci_epc_mem_init);
 
@@ -101,11 +120,21 @@ EXPORT_SYMBOL_GPL(__pci_epc_mem_init);
  */
 void pci_epc_mem_exit(struct pci_epc *epc)
 {
-	struct pci_epc_mem *mem = epc->mem;
+	struct pci_epc_mem *mem;
+	int i;
+
+	if (!epc->mem_windows)
+		return;
+
+	for (i = 0; i <= epc->mem_windows; i++) {
+		mem = epc->mem[i];
+		kfree(mem->bitmap);
+		kfree(mem);
+	}
+	kfree(epc->mem);
 
 	epc->mem = NULL;
-	kfree(mem->bitmap);
-	kfree(mem);
+	epc->mem_windows = 0;
 }
 EXPORT_SYMBOL_GPL(pci_epc_mem_exit);
 
@@ -121,20 +150,30 @@ EXPORT_SYMBOL_GPL(pci_epc_mem_exit);
 void __iomem *pci_epc_mem_alloc_addr(struct pci_epc *epc,
 				     phys_addr_t *phys_addr, size_t size)
 {
-	int pageno;
-	void __iomem *virt_addr;
-	struct pci_epc_mem *mem = epc->mem;
-	unsigned int page_shift = ilog2(mem->page_size);
+	void __iomem *virt_addr = NULL;
+	struct pci_epc_mem *mem;
+	unsigned int page_shift;
+	int pageno = -EINVAL;
 	int order;
+	int i;
 
-	size = ALIGN(size, mem->page_size);
-	order = pci_epc_mem_get_order(mem, size);
+	for (i = 0; i < epc->mem_windows; i++) {
+		mem = epc->mem[i];
+		size = ALIGN(size, mem->page_size);
+		order = pci_epc_mem_get_order(mem, size);
+
+		pageno = bitmap_find_free_region(mem->bitmap, mem->pages,
+						 order);
+		if (pageno >= 0)
+			break;
+	}
 
-	pageno = bitmap_find_free_region(mem->bitmap, mem->pages, order);
 	if (pageno < 0)
 		return NULL;
 
-	*phys_addr = mem->phys_base + ((phys_addr_t)pageno << page_shift);
+	page_shift = ilog2(mem->page_size);
+	*phys_addr = mem->window.phys_base +
+		     ((phys_addr_t)pageno << page_shift);
 	virt_addr = ioremap(*phys_addr, size);
 	if (!virt_addr)
 		bitmap_release_region(mem->bitmap, pageno, order);
@@ -143,6 +182,23 @@ void __iomem *pci_epc_mem_alloc_addr(struct pci_epc *epc,
 }
 EXPORT_SYMBOL_GPL(pci_epc_mem_alloc_addr);
 
+struct pci_epc_mem *pci_epc_get_matching_window(struct pci_epc *epc,
+						phys_addr_t phys_addr)
+{
+	struct pci_epc_mem *mem;
+	int i;
+
+	for (i = 0; i < epc->mem_windows; i++) {
+		mem = epc->mem[i];
+
+		if (phys_addr >= mem->window.phys_base &&
+		    phys_addr < (mem->window.phys_base + mem->window.size))
+			return mem;
+	}
+
+	return NULL;
+}
+
 /**
  * pci_epc_mem_free_addr() - free the allocated memory address
  * @epc: the EPC device on which memory was allocated
@@ -155,13 +211,20 @@ EXPORT_SYMBOL_GPL(pci_epc_mem_alloc_addr);
 void pci_epc_mem_free_addr(struct pci_epc *epc, phys_addr_t phys_addr,
 			   void __iomem *virt_addr, size_t size)
 {
+	struct pci_epc_mem *mem;
+	unsigned int page_shift;
 	int pageno;
-	struct pci_epc_mem *mem = epc->mem;
-	unsigned int page_shift = ilog2(mem->page_size);
 	int order;
 
+	mem = pci_epc_get_matching_window(epc, phys_addr);
+	if (!mem) {
+		pr_err("failed to get matching window\n");
+		return;
+	}
+
+	page_shift = ilog2(mem->page_size);
 	iounmap(virt_addr);
-	pageno = (phys_addr - mem->phys_base) >> page_shift;
+	pageno = (phys_addr - mem->window.phys_base) >> page_shift;
 	size = ALIGN(size, mem->page_size);
 	order = pci_epc_mem_get_order(mem, size);
 	bitmap_release_region(mem->bitmap, pageno, order);
diff --git a/include/linux/pci-epc.h b/include/linux/pci-epc.h
index 56f1846..dde42e5 100644
--- a/include/linux/pci-epc.h
+++ b/include/linux/pci-epc.h
@@ -64,17 +64,29 @@ struct pci_epc_ops {
 	struct module *owner;
 };
 
+#define PCI_EPC_DEFAULT_WINDOW         0
+
+/**
+ * struct pci_epc_mem_window - address window of the endpoint controller
+ * @phys_base: physical base address of the PCI address window
+ * @size: the size of the PCI address window
+ * @page_size: size of each page
+ */
+struct pci_epc_mem_window {
+	phys_addr_t	phys_base;
+	size_t		size;
+	size_t		page_size;
+};
+
 /**
  * struct pci_epc_mem - address space of the endpoint controller
- * @phys_base: physical base address of the PCI address space
- * @size: the size of the PCI address space
+ * @window: address window of the endpoint controller
  * @bitmap: bitmap to manage the PCI address space
- * @pages: number of bits representing the address region
  * @page_size: size of each page
+ * @pages: number of bits representing the address region
  */
 struct pci_epc_mem {
-	phys_addr_t	phys_base;
-	size_t		size;
+	struct pci_epc_mem_window window;
 	unsigned long	*bitmap;
 	size_t		page_size;
 	int		pages;
@@ -85,7 +97,8 @@ struct pci_epc_mem {
  * @dev: PCI EPC device
  * @pci_epf: list of endpoint functions present in this EPC device
  * @ops: function pointers for performing endpoint operations
- * @mem: address space of the endpoint controller
+ * @mem: array of address space of the endpoint controller
+ * @mem_windows: number of windows supported by device
  * @max_functions: max number of functions that can be configured in this EPC
  * @group: configfs group representing the PCI EPC device
  * @lock: spinlock to protect pci_epc ops
@@ -94,7 +107,8 @@ struct pci_epc {
 	struct device			dev;
 	struct list_head		pci_epf;
 	const struct pci_epc_ops	*ops;
-	struct pci_epc_mem		*mem;
+	struct pci_epc_mem		**mem;
+	unsigned int			mem_windows;
 	u8				max_functions;
 	struct config_group		*group;
 	/* spinlock to protect against concurrent access of EP controller */
@@ -128,8 +142,8 @@ struct pci_epc_features {
 #define devm_pci_epc_create(dev, ops)    \
 		__devm_pci_epc_create((dev), (ops), THIS_MODULE)
 
-#define pci_epc_mem_init(epc, phys_addr, size)	\
-		__pci_epc_mem_init((epc), (phys_addr), (size), PAGE_SIZE)
+#define pci_epc_mem_init(epc, windows, num_windows)	\
+		__pci_epc_mem_init((epc), windows, num_windows)
 
 static inline void epc_set_drvdata(struct pci_epc *epc, void *data)
 {
@@ -159,8 +173,7 @@ int pci_epc_set_bar(struct pci_epc *epc, u8 func_no,
 void pci_epc_clear_bar(struct pci_epc *epc, u8 func_no,
 		       struct pci_epf_bar *epf_bar);
 int pci_epc_map_addr(struct pci_epc *epc, u8 func_no,
-		     phys_addr_t phys_addr,
-		     u64 pci_addr, size_t size);
+		     phys_addr_t phys_addr, u64 pci_addr, size_t size);
 void pci_epc_unmap_addr(struct pci_epc *epc, u8 func_no,
 			phys_addr_t phys_addr);
 int pci_epc_set_msi(struct pci_epc *epc, u8 func_no, u8 interrupts);
@@ -178,8 +191,8 @@ unsigned int pci_epc_get_first_free_bar(const struct pci_epc_features
 struct pci_epc *pci_epc_get(const char *epc_name);
 void pci_epc_put(struct pci_epc *epc);
 
-int __pci_epc_mem_init(struct pci_epc *epc, phys_addr_t phys_addr, size_t size,
-		       size_t page_size);
+int __pci_epc_mem_init(struct pci_epc *epc, struct pci_epc_mem_window *window,
+		       int num_windows);
 void pci_epc_mem_exit(struct pci_epc *epc);
 void __iomem *pci_epc_mem_alloc_addr(struct pci_epc *epc,
 				     phys_addr_t *phys_addr, size_t size);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
