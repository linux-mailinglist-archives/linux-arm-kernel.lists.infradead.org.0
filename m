Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94D93BD48F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 23:48:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mJ0B7kAqcm02zVYm9RjgYbCAZvI0h07fnumRRewzfCg=; b=ufMZ7elKzcJMEk
	+yiD7Yi5c1S0jtB9OWRy/kxo+BAMzZbJhnVRs40NRnFJmKLikdUaXIA+/zf+SOZkED58vMp/I27Yb
	CzuafxBUJgCo3prW+WzpMpeuH7wDjO4GwzPCNlI9slj/jeXXezDj/ePKBzRw3YmhQENb+AHrAVV9c
	EsmQnGZ6tE8QhxdsupMEUAOmJ8U5i2hbA2ewXV3APrFOeG3q8uJJvRtlBSCBWhZX3LZXFfpuNdUCN
	9mc6lkapRqt+r0HJkCuumRyMNpP3wNsKbitekZR1rmkPGQ7zZDA8JblL+wqaLtM9RaFSvqx9MhtMZ
	C2VxdIqunOBeO2lHzt0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCsfe-0006Y9-TV; Tue, 24 Sep 2019 21:48:31 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCsdo-0005QL-Ng; Tue, 24 Sep 2019 21:46:39 +0000
Received: by mail-oi1-f195.google.com with SMTP id i16so3068156oie.4;
 Tue, 24 Sep 2019 14:46:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/wVIw1f2smG+KiMsq60d1sORCIiJA/kLz197I7JlBzY=;
 b=grTEUcl0qmjr6bJZ45UxUEPgyhv2d4eqnJ6OMj7I4aJyQrqsP2WBxrwSCXr28iZPH0
 /ztoIw62gyzgm22f7b15tJvDgJFwbIecMvOg/OWdYtheib3UgaSv/tUJA2DQ57AVKSl6
 bsvuSW3s8XmjXajWFsFyGP002/qsfEQ5HaxMxFCLWhwMBSWBibhGto4toYCSz+kH9OGT
 sg7MwHQXvgkz9bUVeRK0x1pNGTmS4McbhVF+s7i+r8fIue7S2G1EMpMEEiq9NYJDTuaB
 4hFdEMSWp/8NC7Q8m9UnFNUj+7bI+gwvXj+xI9SB6Sk38IA+3oWQ2ACqgJFUaIbcZjp4
 jYCA==
X-Gm-Message-State: APjAAAVmZG8u6aZ38ZDyazgTosX3Rnfm014HrVGj+fQTsWun7xe87ATO
 h2Yc7TLWFEaUKfz7PmBhdw==
X-Google-Smtp-Source: APXvYqzgYNEE3gUf+o08Ng0AlLUa3mPB8wGVERLGSanOdvwRKgqozOW0fsc0NAwikm4smG7KH7Xr/Q==
X-Received: by 2002:aca:5ac4:: with SMTP id o187mr1987548oib.116.1569361595731; 
 Tue, 24 Sep 2019 14:46:35 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id s66sm976787otb.65.2019.09.24.14.46.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Sep 2019 14:46:35 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: linux-pci@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH 03/11] PCI: mediatek: Use pci_parse_request_of_pci_ranges()
Date: Tue, 24 Sep 2019 16:46:22 -0500
Message-Id: <20190924214630.12817-4-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190924214630.12817-1-robh@kernel.org>
References: <20190924214630.12817-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_144636_896440_7CDA2768 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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
Cc: Matthias Brugger <matthias.bgg@gmail.com>,
 Ryder Lee <ryder.lee@mediatek.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert Mediatek host bridge to use the common
pci_parse_request_of_pci_ranges().

Cc: Ryder Lee <ryder.lee@mediatek.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>
Cc: Matthias Brugger <matthias.bgg@gmail.com>
Cc: linux-mediatek@lists.infradead.org
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/pci/controller/pcie-mediatek.c | 47 ++++++++++----------------
 1 file changed, 17 insertions(+), 30 deletions(-)

diff --git a/drivers/pci/controller/pcie-mediatek.c b/drivers/pci/controller/pcie-mediatek.c
index 80601e1b939e..cea4112b5309 100644
--- a/drivers/pci/controller/pcie-mediatek.c
+++ b/drivers/pci/controller/pcie-mediatek.c
@@ -211,7 +211,6 @@ struct mtk_pcie {
 	void __iomem *base;
 	struct clk *free_ck;
 
-	struct resource mem;
 	struct list_head ports;
 	const struct mtk_pcie_soc *soc;
 	unsigned int busnr;
@@ -658,11 +657,23 @@ static int mtk_pcie_setup_irq(struct mtk_pcie_port *port,
 static int mtk_pcie_startup_port_v2(struct mtk_pcie_port *port)
 {
 	struct mtk_pcie *pcie = port->pcie;
-	struct resource *mem = &pcie->mem;
+	struct pci_host_bridge *host = pci_host_bridge_from_priv(pcie);
+	struct resource *mem = NULL;
+	struct resource_entry *entry;
 	const struct mtk_pcie_soc *soc = port->pcie->soc;
 	u32 val;
 	int err;
 
+	resource_list_for_each_entry(entry, &host->windows) {
+		if (resource_type(entry->res) != IORESOURCE_MEM)
+			continue;
+
+		mem = entry->res;
+		break;
+	}
+	if (!mem)
+		return -EINVAL;
+
 	/* MT7622 platforms need to enable LTSSM and ASPM from PCIe subsys */
 	if (pcie->base) {
 		val = readl(pcie->base + PCIE_SYS_CFG_V2);
@@ -1017,39 +1028,15 @@ static int mtk_pcie_setup(struct mtk_pcie *pcie)
 	struct mtk_pcie_port *port, *tmp;
 	struct pci_host_bridge *host = pci_host_bridge_from_priv(pcie);
 	struct list_head *windows = &host->windows;
-	struct resource_entry *win, *tmp_win;
-	resource_size_t io_base;
+	struct resource *bus;
 	int err;
 
-	err = devm_of_pci_get_host_bridge_resources(dev, 0, 0xff,
-						    windows, &io_base);
+	err = pci_parse_request_of_pci_ranges(dev, windows,
+					      &bus);
 	if (err)
 		return err;
 
-	err = devm_request_pci_bus_resources(dev, windows);
-	if (err < 0)
-		return err;
-
-	/* Get the I/O and memory ranges from DT */
-	resource_list_for_each_entry_safe(win, tmp_win, windows) {
-		switch (resource_type(win->res)) {
-		case IORESOURCE_IO:
-			err = devm_pci_remap_iospace(dev, win->res, io_base);
-			if (err) {
-				dev_warn(dev, "error %d: failed to map resource %pR\n",
-					 err, win->res);
-				resource_list_destroy_entry(win);
-			}
-			break;
-		case IORESOURCE_MEM:
-			memcpy(&pcie->mem, win->res, sizeof(*win->res));
-			pcie->mem.name = "non-prefetchable";
-			break;
-		case IORESOURCE_BUS:
-			pcie->busnr = win->res->start;
-			break;
-		}
-	}
+	pcie->busnr = bus->start;
 
 	for_each_available_child_of_node(node, child) {
 		int slot;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
