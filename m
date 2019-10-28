Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE19E76CE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 17:42:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aS5yPbOzSHHMLfBZTBh0ceSbeRpbHmIQ17uENrFyiGw=; b=DjO0JmJqxrpNJ1
	06BDpidoy590ARQ7H4U494dqGo56RSLL7qc+CvZ/UYdMwQ922NjqPcZ2KdDs0hyv1fA3kUfU1sYoE
	bIvveyBvOUztOj5BAuylkRZZDF9Asr07bqO6SJygq1AjbWv6xNWgpqB1G/rQR5mzyhb98HVNoHY4v
	bDg6rcHpFivyDt3Ixcsn6CK99OS4mByHnVXK73ZKA1pnLB+EE97gh90+Fe48BFzLtpFxhksXWXyTq
	C2x9Ud4CzDJ1sxxkFfsx5E0Y+8G955xbD2YOCXhGr4soVeK8cL6AcypxppjeljWcAeUyirQHj4hpT
	bbVfqVyYrwPYHG5cLceg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP865-00005C-Kk; Mon, 28 Oct 2019 16:42:25 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP7xr-0007UD-5w; Mon, 28 Oct 2019 16:33:57 +0000
Received: by mail-oi1-f193.google.com with SMTP id v138so6411486oif.6;
 Mon, 28 Oct 2019 09:33:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AVklfYJFhVbHAQ7UDqJCp1P9Q1jvjrg559mLmYhBVeg=;
 b=mRHphJbs0XkyGnOhn6EsHFtaxgloIPi1DKDtcpD3fRgxbJdR1KU/d5FwJi5EtvJgKT
 CVGt3VW9PeV8Dw/iM5ayluopZUgiE9M8e8J4Xi29GFT0mSGsyyBERwu+AMPEwV9x6f1d
 LOjwNB9GYIPPEWwTDwB6QptqtOLff1/I7UFscWpEZf6skpyAKTfL/FxVJCB2e8xBNVaP
 9QysE9D7sC5NlSEA3aUsamrMP1exbDS8o0AZxzEQcUN5J3WPXmufVoy/cS7mA52RYjMW
 DcGam9/TR+M/0M2O9Wq3cEVcp6xMp5X51wXR7dCiCZNT7VKaVsIbI6G1N6zQOAmWQGU2
 PuNg==
X-Gm-Message-State: APjAAAWvkP6DizWjPModbeihP50MLqpPGCaS5hE04me5bMMgtcL6ORAO
 9re/vxtWvnHeJx9PfNgZtg==
X-Google-Smtp-Source: APXvYqw/e5snXZYmJHxjv4VSvv1baWUuaK0hcKO+zQhrXL+bKUV/GjVUCsr2B283wl/nYJwT0Z3kkA==
X-Received: by 2002:a05:6808:87:: with SMTP id s7mr130407oic.47.1572280434085; 
 Mon, 28 Oct 2019 09:33:54 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id e186sm354991oia.47.2019.10.28.09.33.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 09:33:53 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Andrew Murray <andrew.murray@arm.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH v3 22/25] PCI: xgene: Use inbound resources for setup
Date: Mon, 28 Oct 2019 11:32:53 -0500
Message-Id: <20191028163256.8004-23-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191028163256.8004-1-robh@kernel.org>
References: <20191028163256.8004-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_093355_366629_D1B88BC8 
X-CRM114-Status: GOOD (  15.08  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
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

Now that the helpers provide the inbound resources in the host bridge
'dma_ranges' resource list, convert the Xgene host bridge to use the
resource list to setup the inbound addresses.

Cc: Toan Le <toan@os.amperecomputing.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>
Reviewed-by: Andrew Murray <andrew.murray@arm.com>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/pci/controller/pci-xgene.c | 33 ++++++++++--------------------
 1 file changed, 11 insertions(+), 22 deletions(-)

diff --git a/drivers/pci/controller/pci-xgene.c b/drivers/pci/controller/pci-xgene.c
index 9408269d943d..de195fd430dc 100644
--- a/drivers/pci/controller/pci-xgene.c
+++ b/drivers/pci/controller/pci-xgene.c
@@ -481,27 +481,28 @@ static int xgene_pcie_select_ib_reg(u8 *ib_reg_mask, u64 size)
 }
 
 static void xgene_pcie_setup_ib_reg(struct xgene_pcie_port *port,
-				    struct of_pci_range *range, u8 *ib_reg_mask)
+				    struct resource_entry *entry,
+				    u8 *ib_reg_mask)
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
@@ -532,25 +533,13 @@ static void xgene_pcie_setup_ib_reg(struct xgene_pcie_port *port,
 
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
