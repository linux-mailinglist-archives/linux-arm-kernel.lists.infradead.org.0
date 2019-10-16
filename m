Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFB09D9B97
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 22:21:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lUz+HxFG9/FLFr5ytUpB4hvPZ74YaunA1W63yiAzpnY=; b=khpChK2r4IY2BP
	z0Od2DqwzlDX4/tChm8PqfzGcIDdggqDcyFCtHv4oLNpVVaJR3uHiyyFnz2U2xY0IctaJIq28kYO5
	aT7z/4M62hdx9XweKN2UgCE/X86yb7SipHxwaD2PBnXe+JHya25bGaKauUthTIPGwvc/FDQanvkf0
	xzj4TTRRPDNgI6saGSnoo/zwhkBnX0/kULdGgauA1IOdVlI5BqMWP47dAIbV1i8HTlEPczxlI/N4H
	Y+t4BaIA0sb7xp3uPcPlO9+k+YTGbegMyZ+XByRW21O5VnYhrPDHjr9yafkZG/swJOpUVO38H44WL
	mThlMqRunhVhtLKsIBoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKpnU-0000ia-Cu; Wed, 16 Oct 2019 20:21:28 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKpa2-0002RV-7e; Wed, 16 Oct 2019 20:07:43 +0000
Received: by mail-oi1-f196.google.com with SMTP id i185so105356oif.9;
 Wed, 16 Oct 2019 13:07:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rme2ZTIyeNIIvRZj1Ud6tAy74PrO8LifT94pNqj6BX4=;
 b=Q9AozaiJyMSqC2rWo2Il2Ufe0C6mwuyFbZXgojOucIvKEabibLniSEr4eOmlGPHN4P
 QbxV2jev6zzC84GzRJLuLpD1lzIX4mpr+F7j0CdZ+8wFXBt8pX03yTw44EWJwHmuwl9X
 7SIgFWZs2NI02a9bko2fIO4tYPV913nnNbB59WvCogFGWGzf+8+rRXZtIgnaAZ/iBdCV
 0IkBSWerdwJ7U3PCRfmZDA/REP/IpwNnQ0bggks1RjjVdbTLGjcP7W211yd51H/Eh6yC
 TwPQ7bM+77XQhh8o8zQ2QKosYLRhwQyM3NcHw0URVucgPqF+zdJ/rcoviMOaOiNvaliz
 nM5w==
X-Gm-Message-State: APjAAAWVVVrZ8+Ce9nM/D9a2PVRYrH2HfJo/g7e9ehAIBq85LiqQCpkb
 FDz8A+YpM00llDJbPPV6SA==
X-Google-Smtp-Source: APXvYqxqJOqAPJcHvmdPd7QbSM09p4sgTAqjHDn5lpLqVev+bGgUHLQtGlwAgQKtypwMG5iD4dUaPQ==
X-Received: by 2002:aca:5b02:: with SMTP id p2mr113310oib.94.1571256452758;
 Wed, 16 Oct 2019 13:07:32 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id a9sm7412463oie.7.2019.10.16.13.07.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 13:07:32 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Andrew Murray <andrew.murray@arm.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH v2 23/25] PCI: iproc: Use inbound resources for setup
Date: Wed, 16 Oct 2019 15:06:45 -0500
Message-Id: <20191016200647.32050-24-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191016200647.32050-1-robh@kernel.org>
References: <20191016200647.32050-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_130734_283653_EF3D9685 
X-CRM114-Status: GOOD (  15.61  )
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
'dma_ranges' resource list, convert Broadcom iProc host bridge to use
the resource list to setup the inbound addresses.

Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>
Cc: Ray Jui <rjui@broadcom.com>
Cc: Scott Branden <sbranden@broadcom.com>
Cc: bcm-kernel-feedback-list@broadcom.com
Reviewed-by: Andrew Murray <andrew.murray@arm.com>
Signed-off-by: Rob Herring <robh@kernel.org>
---
v2:
 - Fix iproc_pcie_paxb_v2_msi_steer() to use resource_entry
---
 drivers/pci/controller/pcie-iproc.c | 76 ++++++-----------------------
 1 file changed, 16 insertions(+), 60 deletions(-)

diff --git a/drivers/pci/controller/pcie-iproc.c b/drivers/pci/controller/pcie-iproc.c
index 223335ee791a..7ba6f7c400f8 100644
--- a/drivers/pci/controller/pcie-iproc.c
+++ b/drivers/pci/controller/pcie-iproc.c
@@ -1122,15 +1122,15 @@ static int iproc_pcie_ib_write(struct iproc_pcie *pcie, int region_idx,
 }
 
 static int iproc_pcie_setup_ib(struct iproc_pcie *pcie,
-			       struct of_pci_range *range,
+			       struct resource_entry *entry,
 			       enum iproc_pcie_ib_map_type type)
 {
 	struct device *dev = pcie->dev;
 	struct iproc_pcie_ib *ib = &pcie->ib;
 	int ret;
 	unsigned int region_idx, size_idx;
-	u64 axi_addr = range->cpu_addr, pci_addr = range->pci_addr;
-	resource_size_t size = range->size;
+	u64 axi_addr = entry->res->start, pci_addr = entry->res->start - entry->offset;
+	resource_size_t size = resource_size(entry->res);
 
 	/* iterate through all IARR mapping regions */
 	for (region_idx = 0; region_idx < ib->nr_regions; region_idx++) {
@@ -1182,66 +1182,19 @@ static int iproc_pcie_setup_ib(struct iproc_pcie *pcie,
 	return ret;
 }
 
-static int iproc_pcie_add_dma_range(struct device *dev,
-				    struct list_head *resources,
-				    struct of_pci_range *range)
-{
-	struct resource *res;
-	struct resource_entry *entry, *tmp;
-	struct list_head *head = resources;
-
-	res = devm_kzalloc(dev, sizeof(struct resource), GFP_KERNEL);
-	if (!res)
-		return -ENOMEM;
-
-	resource_list_for_each_entry(tmp, resources) {
-		if (tmp->res->start < range->cpu_addr)
-			head = &tmp->node;
-	}
-
-	res->start = range->cpu_addr;
-	res->end = res->start + range->size - 1;
-
-	entry = resource_list_create_entry(res, 0);
-	if (!entry)
-		return -ENOMEM;
-
-	entry->offset = res->start - range->cpu_addr;
-	resource_list_add(entry, head);
-
-	return 0;
-}
-
 static int iproc_pcie_map_dma_ranges(struct iproc_pcie *pcie)
 {
 	struct pci_host_bridge *host = pci_host_bridge_from_priv(pcie);
-	struct of_pci_range range;
-	struct of_pci_range_parser parser;
-	int ret;
-	LIST_HEAD(resources);
-
-	/* Get the dma-ranges from DT */
-	ret = of_pci_dma_range_parser_init(&parser, pcie->dev->of_node);
-	if (ret)
-		return ret;
+	struct resource_entry *entry;
+	int ret = 0;
 
-	for_each_of_pci_range(&parser, &range) {
-		ret = iproc_pcie_add_dma_range(pcie->dev,
-					       &resources,
-					       &range);
-		if (ret)
-			goto out;
+	resource_list_for_each_entry(entry, &host->dma_ranges) {
 		/* Each range entry corresponds to an inbound mapping region */
-		ret = iproc_pcie_setup_ib(pcie, &range, IPROC_PCIE_IB_MAP_MEM);
+		ret = iproc_pcie_setup_ib(pcie, entry, IPROC_PCIE_IB_MAP_MEM);
 		if (ret)
-			goto out;
+			break;
 	}
 
-	list_splice_init(&resources, &host->dma_ranges);
-
-	return 0;
-out:
-	pci_free_resource_list(&resources);
 	return ret;
 }
 
@@ -1276,13 +1229,16 @@ static int iproce_pcie_get_msi(struct iproc_pcie *pcie,
 static int iproc_pcie_paxb_v2_msi_steer(struct iproc_pcie *pcie, u64 msi_addr)
 {
 	int ret;
-	struct of_pci_range range;
+	struct resource_entry entry;
+
+	memset(&entry, 0, sizeof(entry));
+	entry.res = &entry.__res;
 
-	memset(&range, 0, sizeof(range));
-	range.size = SZ_32K;
-	range.pci_addr = range.cpu_addr = msi_addr & ~(range.size - 1);
+	msi_addr &= ~(SZ_32K - 1);
+	entry.res->start = msi_addr;
+	entry.res->end = msi_addr + SZ_32K - 1;
 
-	ret = iproc_pcie_setup_ib(pcie, &range, IPROC_PCIE_IB_MAP_IO);
+	ret = iproc_pcie_setup_ib(pcie, &entry, IPROC_PCIE_IB_MAP_IO);
 	return ret;
 }
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
