Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68154BD498
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 23:49:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DZYsAUzoIx7K23eutdtki1CVSnaNp9RoFvMFcsCu7UQ=; b=CbHNoVujK9xWN1
	ZTUSxXt5ZKpwzcg/iPIOS50Rtz1cnMYrEi4URGCO93s+mhq80rkETWCNXlrlYNvV9aKBGkzkkIyo6
	Kx/5kzsPlbVqR92qrm441j5zZwRsJEq8h60oCMFCI+POjvV3bGGUyRhtwUsts1XZ9asPjHETWeE9r
	PL3SjePd1HuSGYARDSbnSoBEaxJ0FQEqYASLGKP1EI8Gv4v2Apfy6UbRTxh2k7XQnuEJCAoBsKXlf
	Q/cNznlTUIgI+uU6XVLMMTSsauSZbvPVrtmoYYJ1X//lIGK/GVrStqOErynXE+emm+EEq0EDpVPB7
	90pBKz2odem+d6LkzeZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCsh1-0007oA-NJ; Tue, 24 Sep 2019 21:49:56 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCsdw-0005Ve-I3
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 21:46:46 +0000
Received: by mail-ot1-f68.google.com with SMTP id g25so2927525otl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Sep 2019 14:46:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kzT1dQZKS9nlLNEXmzKDWhGBgjG065SiJgY5/7PYzKk=;
 b=DzmmlRAg0cFjcNWm+tVbEKDEv9eczRoRc2I9pSsNk+uFWl4mZm3zBij1mFAGZbCtg4
 GMAO2WwofffGU4fmfPO8YpgxsX2wIsVhY5zCitdjWV5uk8b09qY0YmL3c6+bZ/jiAN8/
 /epkOUscTh25fw+R539z02Mr28mHS7RSklnyGpHHE7wUR3xIZNxXlHxwZJX4ifnGWSRD
 itWEL9CrhpPLhJKMFEw3c/GEM2uaG5ROaJIa45mFwz+0xsW2rjYxusnKW3yGIileZ5lI
 MAenVfbn9HrdriCfNeh7WkeUnI81tLDQ/xREnKzysWTyt1mhiqMdJqU+0ZUOJcvO6d2d
 8RZg==
X-Gm-Message-State: APjAAAWDAU4ae41HSjx08uU8Ijlx4xebegV0ig/R3H0YgdrsLE/RCaZa
 lCAundNObHF0DWyesouhNg==
X-Google-Smtp-Source: APXvYqxhl4TZRZyV/C1WBQs2FRtHj7Tr/BevDyc8y4ZafJ5qNeW5H0lpHfwkunz0YbNPf7SswH9New==
X-Received: by 2002:a05:6830:1e31:: with SMTP id
 t17mr3477636otr.201.1569361603571; 
 Tue, 24 Sep 2019 14:46:43 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id s66sm976787otb.65.2019.09.24.14.46.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Sep 2019 14:46:42 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: linux-pci@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH 09/11] PCI: xgene: Use inbound resources for setup
Date: Tue, 24 Sep 2019 16:46:28 -0500
Message-Id: <20190924214630.12817-10-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190924214630.12817-1-robh@kernel.org>
References: <20190924214630.12817-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_144644_660057_A4B7B47B 
X-CRM114-Status: GOOD (  13.91  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Toan Le <toan@os.amperecomputing.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that the helpers provide the inbound resources in the host bridge
'dma_ranges' resource list, convert the Xgene host bridge to use the
resource list to setup the inbound addresses.

Cc: Toan Le <toan@os.amperecomputing.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/pci/controller/pci-xgene.c | 32 ++++++++++--------------------
 1 file changed, 10 insertions(+), 22 deletions(-)

diff --git a/drivers/pci/controller/pci-xgene.c b/drivers/pci/controller/pci-xgene.c
index 11f27c42c06a..09c913b12ebc 100644
--- a/drivers/pci/controller/pci-xgene.c
+++ b/drivers/pci/controller/pci-xgene.c
@@ -485,27 +485,27 @@ static int xgene_pcie_select_ib_reg(u8 *ib_reg_mask, u64 size)
 }
 
 static void xgene_pcie_setup_ib_reg(struct xgene_pcie_port *port,
-				    struct of_pci_range *range, u8 *ib_reg_mask)
+				    struct resource_entry *entry, u8 *ib_reg_mask)
 {
 	void __iomem *cfg_base = port->cfg_base;
 	struct device *dev = port->dev;
 	void *bar_addr;
 	u32 pim_reg;
-	u64 cpu_addr = range->cpu_addr;
-	u64 pci_addr = range->pci_addr;
-	u64 size = range->size;
+	u64 cpu_addr = entry->res->start;
+	u64 pci_addr = cpu_addr - entry->offset;
+	u64 size = resource_size(entry->res);
 	u64 mask = ~(size - 1) | EN_REG;
 	u32 flags = PCI_BASE_ADDRESS_MEM_TYPE_64;
 	u32 bar_low;
 	int region;
 
-	region = xgene_pcie_select_ib_reg(ib_reg_mask, range->size);
+	region = xgene_pcie_select_ib_reg(ib_reg_mask, size);
 	if (region < 0) {
 		dev_warn(dev, "invalid pcie dma-range config\n");
 		return;
 	}
 
-	if (range->flags & IORESOURCE_PREFETCH)
+	if (entry->res->flags & IORESOURCE_PREFETCH)
 		flags |= PCI_BASE_ADDRESS_MEM_PREFETCH;
 
 	bar_low = pcie_bar_low_val((u32)cpu_addr, flags);
@@ -536,25 +536,13 @@ static void xgene_pcie_setup_ib_reg(struct xgene_pcie_port *port,
 
 static int xgene_pcie_parse_map_dma_ranges(struct xgene_pcie_port *port)
 {
-	struct device_node *np = port->node;
-	struct of_pci_range range;
-	struct of_pci_range_parser parser;
-	struct device *dev = port->dev;
+	struct pci_host_bridge *bridge = pci_host_bridge_from_priv(port);
+	struct resource_entry *entry;
 	u8 ib_reg_mask = 0;
 
-	if (of_pci_dma_range_parser_init(&parser, np)) {
-		dev_err(dev, "missing dma-ranges property\n");
-		return -EINVAL;
-	}
-
-	/* Get the dma-ranges from DT */
-	for_each_of_pci_range(&parser, &range) {
-		u64 end = range.cpu_addr + range.size - 1;
+	resource_list_for_each_entry(entry, &bridge->dma_ranges)
+		xgene_pcie_setup_ib_reg(port, entry, &ib_reg_mask);
 
-		dev_dbg(dev, "0x%08x 0x%016llx..0x%016llx -> 0x%016llx\n",
-			range.flags, range.cpu_addr, end, range.pci_addr);
-		xgene_pcie_setup_ib_reg(port, &range, &ib_reg_mask);
-	}
 	return 0;
 }
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
