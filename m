Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B43BD9B91
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 22:20:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=66J3mWUJg9e/g3gOR3QvUfKzsi2hsK8fxvVniw4NVlI=; b=UgyjtSCek5jkjD
	JzttIOiQ4p2WLlkY7p72mWN5Gt2g4z0iSWQdR3+re793hMQSR0a0XKwUvLDwyiQ05o9caruBBoSNY
	/m1SpEGWsUbpIq5rNTolwdoN6cIdsrjCRUkiTpsZDfBV8fOIV3lTFCd8n3riRKDdss7atliiFHPQb
	RR3lVnaI/7XpVjyo1pg3PRpbDQKvJVlAWHNQeONu2NMf/cux+GAe+asDb3GiUMlgyJi4PFCTlp2bB
	jaq47PH1Tr9MSdMsfFJviu7tNSE4rFJTfLvj4xXGC+9fqdre7tLQnOTf4OeEdY06NQVWqVfyzJTqL
	40rnyzz0bIE411yZCaVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKpmo-0008S8-Fx; Wed, 16 Oct 2019 20:20:46 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKpZy-0002Oo-FI; Wed, 16 Oct 2019 20:07:39 +0000
Received: by mail-oi1-f196.google.com with SMTP id k20so136452oih.3;
 Wed, 16 Oct 2019 13:07:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9dn1tmxzjQTI9PAUk6uuXXt7CY5FAAIGihQa/Sw5ORA=;
 b=qf7IiCBaSegQff26SAu9hMNfqftLrGSXL6it5vEw1GGqlT3BKvPaDgndHqjoaiJqMk
 U5UdmPTdt5ncQtT8qARnX+QOmwkeq9HnHfQ1P/lDkWV8u7PwVS6LcI1S+t+qCb9bxvoc
 PcvB9cJuXcaK6ALdBkJvTG8sxuScyTooEjeFn1cL7FnguWJAaALHBXjrP0h0g/GUNZL/
 B2P+W6kjpDazsiW4FX6Y2rlB/N/BjMCxofCgsBz9DOGC47c5Rr69Svo1S6fPUQyz58Q+
 7MdD1xz0AMlx41JkroSIK4ir2f8UUnAbvMOAmv4abyOyt21D3gmzcR6ZTDgPYFKUxkdm
 VgRQ==
X-Gm-Message-State: APjAAAUbIcfY1zq7yS77WR9HvaKlDE2pftbighnsvyQeAgCLloXqIIG+
 7Z/LTPbhl+6M5IJhprMgGA==
X-Google-Smtp-Source: APXvYqy4BvFE0JVjSY2m/IplvmhNeMcI4gWkgM+9uLk0Ec5UKDxEz7AyuW1jP9gWK7a0Hcsgd1QA3Q==
X-Received: by 2002:a54:410f:: with SMTP id l15mr109468oic.140.1571256449199; 
 Wed, 16 Oct 2019 13:07:29 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id a9sm7412463oie.7.2019.10.16.13.07.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 13:07:28 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Andrew Murray <andrew.murray@arm.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH v2 21/25] PCI: v3-semi: Use inbound resources for setup
Date: Wed, 16 Oct 2019 15:06:43 -0500
Message-Id: <20191016200647.32050-22-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191016200647.32050-1-robh@kernel.org>
References: <20191016200647.32050-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_130730_552711_CA64500D 
X-CRM114-Status: GOOD (  14.97  )
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
'dma_ranges' resource list, convert the v3-semi host bridge to use
the resource list to setup the inbound addresses.

Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>
Reviewed-by: Andrew Murray <andrew.murray@arm.com>
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/pci/controller/pci-v3-semi.c | 38 ++++++++++++----------------
 1 file changed, 16 insertions(+), 22 deletions(-)

diff --git a/drivers/pci/controller/pci-v3-semi.c b/drivers/pci/controller/pci-v3-semi.c
index 2209c7671115..bd05221f5a22 100644
--- a/drivers/pci/controller/pci-v3-semi.c
+++ b/drivers/pci/controller/pci-v3-semi.c
@@ -598,28 +598,30 @@ static int v3_pci_setup_resource(struct v3_pci *v3,
 }
 
 static int v3_get_dma_range_config(struct v3_pci *v3,
-				   struct of_pci_range *range,
+				   struct resource_entry *entry,
 				   u32 *pci_base, u32 *pci_map)
 {
 	struct device *dev = v3->dev;
-	u64 cpu_end = range->cpu_addr + range->size - 1;
-	u64 pci_end = range->pci_addr + range->size - 1;
+	u64 cpu_addr = entry->res->start;
+	u64 cpu_end = entry->res->end;
+	u64 pci_end = cpu_end - entry->offset;
+	u64 pci_addr = entry->res->start - entry->offset;
 	u32 val;
 
-	if (range->pci_addr & ~V3_PCI_BASE_M_ADR_BASE) {
+	if (pci_addr & ~V3_PCI_BASE_M_ADR_BASE) {
 		dev_err(dev, "illegal range, only PCI bits 31..20 allowed\n");
 		return -EINVAL;
 	}
-	val = ((u32)range->pci_addr) & V3_PCI_BASE_M_ADR_BASE;
+	val = ((u32)pci_addr) & V3_PCI_BASE_M_ADR_BASE;
 	*pci_base = val;
 
-	if (range->cpu_addr & ~V3_PCI_MAP_M_MAP_ADR) {
+	if (cpu_addr & ~V3_PCI_MAP_M_MAP_ADR) {
 		dev_err(dev, "illegal range, only CPU bits 31..20 allowed\n");
 		return -EINVAL;
 	}
-	val = ((u32)range->cpu_addr) & V3_PCI_MAP_M_MAP_ADR;
+	val = ((u32)cpu_addr) & V3_PCI_MAP_M_MAP_ADR;
 
-	switch (range->size) {
+	switch (resource_size(entry->res)) {
 	case SZ_1M:
 		val |= V3_LB_BASE_ADR_SIZE_1MB;
 		break;
@@ -667,8 +669,8 @@ static int v3_get_dma_range_config(struct v3_pci *v3,
 	dev_dbg(dev,
 		"DMA MEM CPU: 0x%016llx -> 0x%016llx => "
 		"PCI: 0x%016llx -> 0x%016llx base %08x map %08x\n",
-		range->cpu_addr, cpu_end,
-		range->pci_addr, pci_end,
+		cpu_addr, cpu_end,
+		pci_addr, pci_end,
 		*pci_base, *pci_map);
 
 	return 0;
@@ -677,24 +679,16 @@ static int v3_get_dma_range_config(struct v3_pci *v3,
 static int v3_pci_parse_map_dma_ranges(struct v3_pci *v3,
 				       struct device_node *np)
 {
-	struct of_pci_range range;
-	struct of_pci_range_parser parser;
+	struct pci_host_bridge *bridge = pci_host_bridge_from_priv(v3);
 	struct device *dev = v3->dev;
+	struct resource_entry *entry;
 	int i = 0;
 
-	if (of_pci_dma_range_parser_init(&parser, np)) {
-		dev_err(dev, "missing dma-ranges property\n");
-		return -EINVAL;
-	}
-
-	/*
-	 * Get the dma-ranges from the device tree
-	 */
-	for_each_of_pci_range(&parser, &range) {
+	resource_list_for_each_entry(entry, &bridge->dma_ranges) {
 		int ret;
 		u32 pci_base, pci_map;
 
-		ret = v3_get_dma_range_config(v3, &range, &pci_base, &pci_map);
+		ret = v3_get_dma_range_config(v3, entry, &pci_base, &pci_map);
 		if (ret)
 			return ret;
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
