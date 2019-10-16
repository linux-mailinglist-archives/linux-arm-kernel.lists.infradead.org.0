Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F3BED9B96
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 22:21:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0byg4PfQheyopYt3ZzszPDRjPNa8kzTMO4TjS8AqQOg=; b=UDGJgD24F4cr1M
	fXjXkNKJqCv7mHy1gnSpfwBD/wYQWVbCOKvTMBajhU7d6Vp8f/JcLyC2q/VY1S4Zr78a7li87Q/4r
	piisMYJ8VCpxZFr9GfPHufHsCDrinmMx7VuIYLNDR/RqKk135w20aVmigV6Nm8EoTsOx+UmOXG9+E
	R86Ho7Rw7aBtXVcamA1OIwQAdB2jo9ES8U1UyEOyui81Bn+frHW61xfm+tWqQ3zlFnMIJHtlyf08V
	cPjrWcub3g0xeoLKCQJgQNHrj7PldSqi7oYG/Z8NCEw0loR5YnaQBSUwMqVDeJtNdxfFPqEbDZ692
	E53tdJrpwIU7bnRsAM8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKpnH-0000T0-TM; Wed, 16 Oct 2019 20:21:15 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKpa0-0002Q1-6t; Wed, 16 Oct 2019 20:07:41 +0000
Received: by mail-ot1-f66.google.com with SMTP id z6so21305861otb.2;
 Wed, 16 Oct 2019 13:07:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1bGHnYASjnI+P7cb/3RVdE6NbxNvaokwSF+ldOrM7Qw=;
 b=UlnomE2rLDUs59TCT0twEf2PvHcefFJcNW9fHa6dcgra5Y2qXaIOWiXkWUyNOeYFKp
 M7rUfUfyic9TJrqsQdUS+usoNDLNjmwX6hurQk2FLxOhffuqbOI9X9sfHF8+Xfrejd0G
 siyJgwNJx7KSPDTYsbvpAK30Mp1Ghmpw2Mf2w1h93ncT3OIlQtblNg+95jY3seVfC1k7
 Q7yaWhwOa3i4iGGmgzgnTsF9gDlB7BN5GljIMlnMVTZT3uzePSbz9Gn3RtKjgrlnF0Cd
 pkDjJvUL2bOEMANEt+5SqckMYQRYVaSb0dWmE79gD+sOUsjPOU7ANLS4zRGhUb5KZqlf
 N//w==
X-Gm-Message-State: APjAAAVt1AgJVvmEbAbDSG2RZCfv68YQSCggSfZGoo8u4kjF5H+khhaW
 q+ZcWnkynW7g0MPVNy013A==
X-Google-Smtp-Source: APXvYqyLj/yK9YMmfwegdydwCk5s+1fUmu7hKih8ld0vvpY4HhzRxwdSsYNyifYWjZYhgXnSuDgfcw==
X-Received: by 2002:a9d:4591:: with SMTP id x17mr51499ote.112.1571256450757;
 Wed, 16 Oct 2019 13:07:30 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id a9sm7412463oie.7.2019.10.16.13.07.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 13:07:30 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Andrew Murray <andrew.murray@arm.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH v2 22/25] PCI: xgene: Use inbound resources for setup
Date: Wed, 16 Oct 2019 15:06:44 -0500
Message-Id: <20191016200647.32050-23-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191016200647.32050-1-robh@kernel.org>
References: <20191016200647.32050-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_130732_315006_29C48989 
X-CRM114-Status: GOOD (  15.03  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
 linux-rockchip@lists.infradead.org, bcm-kernel-feedback-list@broadcom.com,
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
 drivers/pci/controller/pci-xgene.c | 32 ++++++++++--------------------
 1 file changed, 10 insertions(+), 22 deletions(-)

diff --git a/drivers/pci/controller/pci-xgene.c b/drivers/pci/controller/pci-xgene.c
index 9408269d943d..e808a406dfb0 100644
--- a/drivers/pci/controller/pci-xgene.c
+++ b/drivers/pci/controller/pci-xgene.c
@@ -481,27 +481,27 @@ static int xgene_pcie_select_ib_reg(u8 *ib_reg_mask, u64 size)
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
@@ -532,25 +532,13 @@ static void xgene_pcie_setup_ib_reg(struct xgene_pcie_port *port,
 
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
