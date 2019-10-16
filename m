Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E421BD9B9C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 22:22:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+kAliyPTza0NYMNUHYBn3bmz4nEOhPaL9FToTzK15A0=; b=MImKpIVVHrBNHn
	yA7e0smR06NlUqW2qdnK+zs6d2KO06RUtTt+0z7uL0NXyJ7k+Zyv2IfGpM2P5dUITuanPGz827G6i
	CK9yjMNEpVzmJamSmnU16Cmgx8V0HpC8jh/KOMxvtGKiJV8KThGPppK1lk082f6dsRkerJtN0t/54
	gSDoVlcMNu7mHrf+oPVywISRn4F+JtrAyI7vfDccr2UJmV9GPzc9UwNjP/9vgrDYmJPjfBBipAtSO
	3XfPESZ8G4Tc9TQgrRfWJ11YmixY6kOGx4sOoGvTZcGy04wRv0yd6urGxpAmeCPpue574BKAlBIhE
	VbW57Xkrlz4J8K/0BWfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKpnw-00015m-DI; Wed, 16 Oct 2019 20:21:56 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKpa3-0002T0-GZ; Wed, 16 Oct 2019 20:07:44 +0000
Received: by mail-oi1-f196.google.com with SMTP id m16so123767oic.5;
 Wed, 16 Oct 2019 13:07:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KRER0q+mlfhxTDAY0c1+VI59pLZZnQ9VLJY13cVFl4Y=;
 b=BVGMyl6bD3JSBPwn/4LnPkhK1hrmZb+JZxs+hKEFUy6KCkCinFlxHh2fWNuHNZuD4n
 ub3ege1Ni52qNDZESttxtz5SVKa0x5fjYowHT3LyElw7MLcPzG0DD5y1FZZCJ68xXFhY
 p1xACKiINqJkG2/YewTGxVIbe2ydfE0dvfXmwSxqfSFvqZTu+CCKI1Y+jUg8Stbd0n9s
 4actPoQR9KN6PFVBpXe66gqvqpzWX+9G0bbMAc4gQQI/UeRZW5HUyDi0jfiSr9BXOi40
 8A8jRjrEuFQvtqJsrq8N46lUvbid7M253vMlDrGA+QzvFyyNfsNRDmDJYYTM5MTqG0r5
 U3cw==
X-Gm-Message-State: APjAAAUcOlpFxOwzxhOFKzmgDyKbCI4UiSAJPrCZ8Q7iwSdSDGA6HXIz
 y1BFgx8rKn/y3L7VWADkWA==
X-Google-Smtp-Source: APXvYqwB7x7oWBQDKgn1sW1tVYlaQQL0HwcwqR5xSDkvWm67oaAPXyQW0pFAzE6rmaJuDXoA06Prww==
X-Received: by 2002:aca:1719:: with SMTP id j25mr110848oii.132.1571256454419; 
 Wed, 16 Oct 2019 13:07:34 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id a9sm7412463oie.7.2019.10.16.13.07.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 13:07:33 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Andrew Murray <andrew.murray@arm.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH v2 24/25] PCI: rcar: Use inbound resources for setup
Date: Wed, 16 Oct 2019 15:06:46 -0500
Message-Id: <20191016200647.32050-25-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191016200647.32050-1-robh@kernel.org>
References: <20191016200647.32050-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_130735_643622_0EF1ED8E 
X-CRM114-Status: GOOD (  16.21  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
'dma_ranges' resource list, convert Renesas R-Car PCIe host bridge to
use the resource list to setup the inbound addresses.

Cc: Simon Horman <horms@verge.net.au>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/pci/controller/pcie-rcar.c | 45 +++++++++++-------------------
 1 file changed, 16 insertions(+), 29 deletions(-)

diff --git a/drivers/pci/controller/pcie-rcar.c b/drivers/pci/controller/pcie-rcar.c
index b8d6e86a5539..453c931aaf77 100644
--- a/drivers/pci/controller/pcie-rcar.c
+++ b/drivers/pci/controller/pcie-rcar.c
@@ -1014,16 +1014,16 @@ static int rcar_pcie_get_resources(struct rcar_pcie *pcie)
 }
 
 static int rcar_pcie_inbound_ranges(struct rcar_pcie *pcie,
-				    struct of_pci_range *range,
+				    struct resource_entry *entry,
 				    int *index)
 {
-	u64 restype = range->flags;
-	u64 cpu_addr = range->cpu_addr;
-	u64 cpu_end = range->cpu_addr + range->size;
-	u64 pci_addr = range->pci_addr;
+	u64 restype = entry->res->flags;
+	u64 cpu_addr = entry->res->start;
+	u64 cpu_end = entry->res->end;
+	u64 pci_addr = entry->res->start - entry->offset;
 	u32 flags = LAM_64BIT | LAR_ENABLE;
 	u64 mask;
-	u64 size;
+	u64 size = resource_size(entry->res);
 	int idx = *index;
 
 	if (restype & IORESOURCE_PREFETCH)
@@ -1037,9 +1037,7 @@ static int rcar_pcie_inbound_ranges(struct rcar_pcie *pcie,
 		unsigned long nr_zeros = __ffs64(cpu_addr);
 		u64 alignment = 1ULL << nr_zeros;
 
-		size = min(range->size, alignment);
-	} else {
-		size = range->size;
+		size = min(size, alignment);
 	}
 	/* Hardware supports max 4GiB inbound region */
 	size = min(size, 1ULL << 32);
@@ -1078,30 +1076,19 @@ static int rcar_pcie_inbound_ranges(struct rcar_pcie *pcie,
 	return 0;
 }
 
-static int rcar_pcie_parse_map_dma_ranges(struct rcar_pcie *pcie,
-					  struct device_node *np)
+static int rcar_pcie_parse_map_dma_ranges(struct rcar_pcie *pcie)
 {
-	struct of_pci_range range;
-	struct of_pci_range_parser parser;
-	int index = 0;
-	int err;
-
-	if (of_pci_dma_range_parser_init(&parser, np))
-		return -EINVAL;
-
-	/* Get the dma-ranges from DT */
-	for_each_of_pci_range(&parser, &range) {
-		u64 end = range.cpu_addr + range.size - 1;
-
-		dev_dbg(pcie->dev, "0x%08x 0x%016llx..0x%016llx -> 0x%016llx\n",
-			range.flags, range.cpu_addr, end, range.pci_addr);
+	struct pci_host_bridge *bridge = pci_host_bridge_from_priv(pcie);
+	struct resource_entry *entry;
+	int index = 0, err = 0;
 
-		err = rcar_pcie_inbound_ranges(pcie, &range, &index);
+	resource_list_for_each_entry(entry, &bridge->dma_ranges) {
+		err = rcar_pcie_inbound_ranges(pcie, entry, &index);
 		if (err)
-			return err;
+			break;
 	}
 
-	return 0;
+	return err;
 }
 
 static const struct of_device_id rcar_pcie_of_match[] = {
@@ -1162,7 +1149,7 @@ static int rcar_pcie_probe(struct platform_device *pdev)
 		goto err_unmap_msi_irqs;
 	}
 
-	err = rcar_pcie_parse_map_dma_ranges(pcie, dev->of_node);
+	err = rcar_pcie_parse_map_dma_ranges(pcie);
 	if (err)
 		goto err_clk_disable;
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
