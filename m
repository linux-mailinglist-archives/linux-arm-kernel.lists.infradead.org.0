Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C19BE76A2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 17:38:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3C9dR42U+EhTkfHgsdGbyewG9E3Gxj+65tazNSjjy7g=; b=CvsmbPksZhawIV
	L1AUH586FZiVQP1uq2t8oPpx/MbQkAmZBcc3uYobtZzvZZ5C/tq9hs6GShd/fQwRvJYsoGcSfqzuz
	76iISmRLg8uw5VvX08YRt1th8vFUgtG9USTJHO2CtGJxtNr+Ivcvc5UsV6sIgNtG7NFBkl373olYW
	U65huCxb5YrDF55CQBPC49SRJmAOnCr3X3gS9Y7BLdYZbQDtO1HcoWukg9fNUWQ9Uuy0yIaXNBzac
	OtQaxzmsSC04IIqJkJbDIHh0UMjm2mJU49a10NwyTe38fpQ1e9/neot1yTbrlF/uLqvNJIae66wXd
	dz5L/W6m9Q8znsf1NEug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP82E-0003Y0-SG; Mon, 28 Oct 2019 16:38:26 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP7xR-000735-O1; Mon, 28 Oct 2019 16:33:31 +0000
Received: by mail-ot1-f65.google.com with SMTP id d8so7161115otc.7;
 Mon, 28 Oct 2019 09:33:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iYotT8vplUpPAxDBkQ4PaMlGqTylW6sNvKndwgHpCIU=;
 b=Jx+dycVNzxhFolKgQfLnGriCsVwyIJMmWqCHUcHQbBUB3Td7lIW7bqtRmoheLJYuPv
 2QBVqpRRxQlCPiAZTRLLH503UHlbwJGLkwwv+6jm7JKX4dNGRBm1172KnHTQjLO/AGTc
 DM8qhoqqBEiSEaMNCcaiV6arbMEZgPdU9rPcUPLgrM3AUUyhWsySy53ZAia1Szht330S
 kvlyEXcGfYhGTYr9w65SIZuC/+z7ahSR6yO3kex84h80QfBe8lVyM78wPxePmd1ycrhz
 KMNL2mXvlBGYPtwpxVYviBa3lCNBG5h/yiD49bUnSUBz89CQwb4tRWyJ+kBV770Rpw7H
 XdJA==
X-Gm-Message-State: APjAAAXyduivGoR6dX9i/Rp8PXNDQ+McyVycq4b7dadg8e9SyzruZfIj
 To3hTU9dn2jQ7/B/kOzc2w==
X-Google-Smtp-Source: APXvYqy+uBASJDG3rPdo2O4wCkiHo4NzLsXE1unvcdols14xzwz4puZsL1iBoWYniAt7v02TGXZGNw==
X-Received: by 2002:a9d:3e53:: with SMTP id h19mr8986935otg.98.1572280408846; 
 Mon, 28 Oct 2019 09:33:28 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id e186sm354991oia.47.2019.10.28.09.33.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 09:33:26 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Andrew Murray <andrew.murray@arm.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH v3 11/25] PCI: rockchip: Drop storing driver private outbound
 resource data
Date: Mon, 28 Oct 2019 11:32:42 -0500
Message-Id: <20191028163256.8004-12-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191028163256.8004-1-robh@kernel.org>
References: <20191028163256.8004-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_093329_797719_718F5756 
X-CRM114-Status: GOOD (  14.27  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>, linux-pci@vger.kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Toan Le <toan@os.amperecomputing.com>, Will Deacon <will@kernel.org>,
 Ryder Lee <ryder.lee@mediatek.com>, Michal Simek <michal.simek@xilinx.com>,
 Christoph Hellwig <hch@infradead.org>, linux-rockchip@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com,
 Linus Walleij <linus.walleij@linaro.org>, Ray Jui <rjui@broadcom.com>,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, Simon Horman <horms@verge.net.au>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Scott Branden <sbranden@broadcom.com>,
 Jingoo Han <jingoohan1@gmail.com>, rfi@lists.rocketboards.org,
 linux-renesas-soc@vger.kernel.org, Tom Joseph <tjoseph@cadence.com>,
 Srinath Mannam <srinath.mannam@broadcom.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Ley Foon Tan <lftan@altera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Rockchip host bridge driver doesn't need to store outboard resources
in its private struct as they are already stored in struct
pci_host_bridge.

Cc: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Andrew Murray <andrew.murray@arm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>
Cc: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/pci/controller/pcie-rockchip-host.c | 54 +++++++++------------
 drivers/pci/controller/pcie-rockchip.h      |  5 --
 2 files changed, 23 insertions(+), 36 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
index 8d2e6f2e141e..f375e55ea02e 100644
--- a/drivers/pci/controller/pcie-rockchip-host.c
+++ b/drivers/pci/controller/pcie-rockchip-host.c
@@ -806,19 +806,28 @@ static int rockchip_pcie_prog_ib_atu(struct rockchip_pcie *rockchip,
 static int rockchip_pcie_cfg_atu(struct rockchip_pcie *rockchip)
 {
 	struct device *dev = rockchip->dev;
+	struct pci_host_bridge *bridge = pci_host_bridge_from_priv(rockchip);
+	struct resource_entry *entry;
+	u64 pci_addr, size;
 	int offset;
 	int err;
 	int reg_no;
 
 	rockchip_pcie_cfg_configuration_accesses(rockchip,
 						 AXI_WRAPPER_TYPE0_CFG);
+	entry = resource_list_first_type(&bridge->windows, IORESOURCE_MEM);
+	if (!entry)
+		return -ENODEV;
+
+	size = resource_size(entry->res);
+	pci_addr = entry->res->start - entry->offset;
+	rockchip->msg_bus_addr = pci_addr;
 
-	for (reg_no = 0; reg_no < (rockchip->mem_size >> 20); reg_no++) {
+	for (reg_no = 0; reg_no < (size >> 20); reg_no++) {
 		err = rockchip_pcie_prog_ob_atu(rockchip, reg_no + 1,
 						AXI_WRAPPER_MEM_WRITE,
 						20 - 1,
-						rockchip->mem_bus_addr +
-						(reg_no << 20),
+						pci_addr + (reg_no << 20),
 						0);
 		if (err) {
 			dev_err(dev, "program RC mem outbound ATU failed\n");
@@ -832,14 +841,20 @@ static int rockchip_pcie_cfg_atu(struct rockchip_pcie *rockchip)
 		return err;
 	}
 
-	offset = rockchip->mem_size >> 20;
-	for (reg_no = 0; reg_no < (rockchip->io_size >> 20); reg_no++) {
+	entry = resource_list_first_type(&bridge->windows, IORESOURCE_IO);
+	if (!entry)
+		return -ENODEV;
+
+	size = resource_size(entry->res);
+	pci_addr = entry->res->start - entry->offset;
+
+	offset = size >> 20;
+	for (reg_no = 0; reg_no < (size >> 20); reg_no++) {
 		err = rockchip_pcie_prog_ob_atu(rockchip,
 						reg_no + 1 + offset,
 						AXI_WRAPPER_IO_WRITE,
 						20 - 1,
-						rockchip->io_bus_addr +
-						(reg_no << 20),
+						pci_addr + (reg_no << 20),
 						0);
 		if (err) {
 			dev_err(dev, "program RC io outbound ATU failed\n");
@@ -852,8 +867,7 @@ static int rockchip_pcie_cfg_atu(struct rockchip_pcie *rockchip)
 				  AXI_WRAPPER_NOR_MSG,
 				  20 - 1, 0, 0);
 
-	rockchip->msg_bus_addr = rockchip->mem_bus_addr +
-					((reg_no + offset) << 20);
+	rockchip->msg_bus_addr += ((reg_no + offset) << 20);
 	return err;
 }
 
@@ -951,7 +965,6 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
 	struct pci_bus *bus, *child;
 	struct pci_host_bridge *bridge;
 	struct resource *bus_res;
-	struct resource_entry *win;
 	int err;
 
 	if (!dev->of_node)
@@ -997,27 +1010,6 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
 
 	rockchip->root_bus_nr = bus_res->start;
 
-	/* Get the I/O and memory ranges from DT */
-	resource_list_for_each_entry(win, &bridge->windows) {
-		switch (resource_type(win->res)) {
-		case IORESOURCE_IO:
-			io = win->res;
-			io->name = "I/O";
-			rockchip->io_size = resource_size(io);
-			rockchip->io_bus_addr = io->start - win->offset;
-			rockchip->io = io;
-			break;
-		case IORESOURCE_MEM:
-			mem = win->res;
-			mem->name = "MEM";
-			rockchip->mem_size = resource_size(mem);
-			rockchip->mem_bus_addr = mem->start - win->offset;
-			break;
-		default:
-			continue;
-		}
-	}
-
 	err = rockchip_pcie_cfg_atu(rockchip);
 	if (err)
 		goto err_remove_irq_domain;
diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
index 8e87a059ce73..bef42a803b56 100644
--- a/drivers/pci/controller/pcie-rockchip.h
+++ b/drivers/pci/controller/pcie-rockchip.h
@@ -304,13 +304,8 @@ struct rockchip_pcie {
 	struct	irq_domain *irq_domain;
 	int     offset;
 	struct pci_bus *root_bus;
-	struct resource *io;
-	phys_addr_t io_bus_addr;
-	u32     io_size;
 	void    __iomem *msg_region;
-	u32     mem_size;
 	phys_addr_t msg_bus_addr;
-	phys_addr_t mem_bus_addr;
 	bool is_rc;
 	struct resource *mem_res;
 };
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
