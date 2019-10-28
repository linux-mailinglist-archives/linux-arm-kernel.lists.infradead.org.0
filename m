Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB055E76C4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 17:41:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zCBVAfHi5X0msMvrDLOGcQnE0/zRNkx+yJavf5n3c94=; b=jM9t8f/Ll7m5VM
	xBwJXm0DLUXAlmiLBqFx3KdR4LZzRNTx2W4aMvpbzaVnfeqCZNXV9jj+fi4kTYeJQedGbt6lLLieB
	BhxrcM4wSH68vqDHg7aokh7QthOvJQtwN5wsMlI1GvJidAsjm3lff1C1TN2k9LRWcVkju5GJ2DMRp
	oZGqUAflNSX3+fDS/iEF3CWf65+kC8mlUbOJDl8q3KjkZvFY7IsIxAeo72a33LTHlZHuEhIBzyHiE
	UtHPLHJx7c9DYHFV8jmO9U9kQh28M/g4qzttpGsUB0tR/+90fF/oTBlepSvt/n+hNFQ9FK+8LHBGP
	psAo76akD/xRrYSi/a3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP85B-0007ml-T8; Mon, 28 Oct 2019 16:41:29 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP7xn-0007RV-DC; Mon, 28 Oct 2019 16:33:53 +0000
Received: by mail-ot1-f65.google.com with SMTP id 53so7176957otv.4;
 Mon, 28 Oct 2019 09:33:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QU/9wyXAj8Hn9lmmawqTA3HdfmHqtIC+dVHktjAk5bo=;
 b=TZLmjKEMoEcfhBt/Ye1htL3pJJNapUwPcNTH31x1SGb8CrDeqVjKy/3IdGtJwrTLFB
 vTzLRtMQ8iIBwDOlD5wuCogX7pUqHpEKVAGuIvAFn9a9pNq3fGBwVimbbbpiefz3jtoK
 bI2tduzZ8lSpNWogHzMwWQ0Gh42PIEINGRgHmUqyGh5JBDUGV+Aqu2Ci8U46FejLQZ8S
 jamM1dFoGtUpC1VWGVoF+o3MA0uKefrI6LCpVwrRPO8Sxv4OvHCZxMI9u+FM1XYk6+Ve
 /1l789Jujyiz5cKc0VUQLMpIoockFqwQxfIrtkczJ8uJxc5EnXzGcFQnh9WIW6ix4lOM
 SzfA==
X-Gm-Message-State: APjAAAWsgjSxgPEPJXpjtV0foRDhk8a5ozEfw+rxYVt7j/q07NT+Y8Y8
 6B3jU3wWFvEPiiXqkF7+DQ==
X-Google-Smtp-Source: APXvYqzX2Hu9uOY3jcrsLEYHaEbafPvhljS7PBlsyooLht3SWyOGTn98jF9BU/3i/RKiepgEwvPcpw==
X-Received: by 2002:a9d:334:: with SMTP id 49mr13870685otv.15.1572280429878;
 Mon, 28 Oct 2019 09:33:49 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id e186sm354991oia.47.2019.10.28.09.33.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Oct 2019 09:33:49 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Andrew Murray <andrew.murray@arm.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH v3 20/25] PCI: ftpci100: Use inbound resources for setup
Date: Mon, 28 Oct 2019 11:32:51 -0500
Message-Id: <20191028163256.8004-21-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191028163256.8004-1-robh@kernel.org>
References: <20191028163256.8004-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_093351_494407_62A1B245 
X-CRM114-Status: GOOD (  14.32  )
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

Now that the helpers provide the inbound resources in the host bridge
'dma_ranges' resource list, convert Faraday ftpci100 host bridge to use
the resource list to setup the inbound addresses.

Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>
Reviewed-by: Andrew Murray <andrew.murray@arm.com>
Acked-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/pci/controller/pci-ftpci100.c | 27 ++++++++++-----------------
 1 file changed, 10 insertions(+), 17 deletions(-)

diff --git a/drivers/pci/controller/pci-ftpci100.c b/drivers/pci/controller/pci-ftpci100.c
index 66288b94e92d..1b67564de7af 100644
--- a/drivers/pci/controller/pci-ftpci100.c
+++ b/drivers/pci/controller/pci-ftpci100.c
@@ -375,12 +375,11 @@ static int faraday_pci_setup_cascaded_irq(struct faraday_pci *p)
 	return 0;
 }
 
-static int faraday_pci_parse_map_dma_ranges(struct faraday_pci *p,
-					    struct device_node *np)
+static int faraday_pci_parse_map_dma_ranges(struct faraday_pci *p)
 {
-	struct of_pci_range range;
-	struct of_pci_range_parser parser;
 	struct device *dev = p->dev;
+	struct pci_host_bridge *bridge = pci_host_bridge_from_priv(p);
+	struct resource_entry *entry;
 	u32 confreg[3] = {
 		FARADAY_PCI_MEM1_BASE_SIZE,
 		FARADAY_PCI_MEM2_BASE_SIZE,
@@ -389,19 +388,13 @@ static int faraday_pci_parse_map_dma_ranges(struct faraday_pci *p,
 	int i = 0;
 	u32 val;
 
-	if (of_pci_dma_range_parser_init(&parser, np)) {
-		dev_err(dev, "missing dma-ranges property\n");
-		return -EINVAL;
-	}
-
-	/*
-	 * Get the dma-ranges from the device tree
-	 */
-	for_each_of_pci_range(&parser, &range) {
-		u64 end = range.pci_addr + range.size - 1;
+	resource_list_for_each_entry(entry, &bridge->dma_ranges) {
+		u64 pci_addr = entry->res->start - entry->offset;
+		u64 end = entry->res->end - entry->offset;
 		int ret;
 
-		ret = faraday_res_to_memcfg(range.pci_addr, range.size, &val);
+		ret = faraday_res_to_memcfg(pci_addr,
+					    resource_size(entry->res), &val);
 		if (ret) {
 			dev_err(dev,
 				"DMA range %d: illegal MEM resource size\n", i);
@@ -409,7 +402,7 @@ static int faraday_pci_parse_map_dma_ranges(struct faraday_pci *p,
 		}
 
 		dev_info(dev, "DMA MEM%d BASE: 0x%016llx -> 0x%016llx config %08x\n",
-			 i + 1, range.pci_addr, end, val);
+			 i + 1, pci_addr, end, val);
 		if (i <= 2) {
 			faraday_raw_pci_write_config(p, 0, 0, confreg[i],
 						     4, val);
@@ -539,7 +532,7 @@ static int faraday_pci_probe(struct platform_device *pdev)
 			cur_bus_speed = PCI_SPEED_66MHz;
 	}
 
-	ret = faraday_pci_parse_map_dma_ranges(p, dev->of_node);
+	ret = faraday_pci_parse_map_dma_ranges(p);
 	if (ret)
 		return ret;
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
