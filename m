Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42359348E4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 15:34:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wD8c4QTG0howy6o8oo4qDHQgQ9kGDRqJTl9WGVvJySA=; b=CI3Xs+dtNKHfTC
	S8hywFncSLKtz5wBwuk5Zs4e+GcDGUabnB8g/i5pMTw7MCQSplRurPt1ETIhopSprcw/5k3NzY/6l
	X44KTF8U+RmoowazcJ6XTwAAREML9YRBCVjicjiaRSyXHEO3JI6nB5HLh7lEukHGukp46H3Rf7dbg
	fpB+og5KV54azKQ1kuwgy6BxX2owNPBLTwyr9OiCoSAw6GpIB4ZJ92+dzl5I4Lf0Sgn86JU9XZD7Y
	uQvLGBiMADkxodDdQ5GLeSC+ZjvXY6Ez7ZoaY8KahUAFvTb+P7EfKKq4RnI1Z+3XoSB1F0fRwkvcC
	V/hvwoQA63ZxancyduNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY9Zx-000734-7y; Tue, 04 Jun 2019 13:34:17 +0000
Received: from casper.infradead.org ([85.118.1.10])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY9Ye-0004oD-CO; Tue, 04 Jun 2019 13:32:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tBDM4Tz2keIVpXtq26vbu3y4+Vw3eoGfX9HaWTYVoeQ=; b=jLHh3/fGuVmLEXb/InDQzy1Qi
 n/Os5bTtGibgWEETWDaESUe0FNdYoHopd8R7yJbOw0oyYlOQNbU+fOk4ctz/Iwa55mpVZsIXSBWJ9
 ZeHfRcj3deJg0aisRIdxQGersyeaLvMFivlqWYFi1OSxza6DxdhiPZLVYdNKlE4Otu9Gpr2m6C67Q
 ZiEqB6joT/vLQar1sunzuUIYQGHYGtppIpkHBHcC+YIXM40v8VmlWGtJf4Ow7vVZZdldmELK56TbM
 1qXdXlfOF+vsE/9TSEkDEjWfJUdhNnLOQiQxPtUJeBobJHEI7xwqiptGfPY5Ne86vYseUvtzWCJFC
 Yk3Mp+3uw==;
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY9KD-0004AF-Ee; Tue, 04 Jun 2019 13:18:03 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x54DHqo6028086;
 Tue, 4 Jun 2019 08:17:52 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559654272;
 bh=tBDM4Tz2keIVpXtq26vbu3y4+Vw3eoGfX9HaWTYVoeQ=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=R+8zqLaxd2c02V5uk6F4Sppd2D+1gsFYEkhM62sv+mxRho62Gx4HsxMmbgDSTsIG7
 2KQHA8NCWHr299PML9hkzkXL402hArTl9rKprSd4RFTVcHr5T6xwtloib6PitOt4U3
 v1gZhJGxWsVfEk/FMed58unQBaGz0DF2Sx8860bM=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x54DHqGl052946
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 4 Jun 2019 08:17:52 -0500
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 4 Jun
 2019 08:17:51 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 4 Jun 2019 08:17:51 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x54DGdGS098972;
 Tue, 4 Jun 2019 08:17:46 -0500
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Tom Joseph <tjoseph@cadence.com>, Bjorn Helgaas <bhelgaas@google.com>, Rob
 Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Lorenzo
 Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>
Subject: [RFC PATCH 12/30] PCI: cadence: Make "mem" an optional memory resource
Date: Tue, 4 Jun 2019 18:44:58 +0530
Message-ID: <20190604131516.13596-13-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190604131516.13596-1-kishon@ti.com>
References: <20190604131516.13596-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_141801_712558_278700BF 
X-CRM114-Status: GOOD (  16.04  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-2.5 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Jingoo Han <jingoohan1@gmail.com>,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-rockchip@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-omap@vger.kernel.org,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cadence driver uses "mem" memory resource to obtain the offset of
configuration space address region, memory space address region and
message space address region. The obtained offset is used to program
the Address Translation Unit (ATU). However certain platforms like TI's
J721E SoC require the absolute address to be programmed in the and not
just the offset. Make "mem" an optional memory resource and use it
only for platforms that populate it.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/pci/controller/pcie-cadence-ep.c   | 6 ++----
 drivers/pci/controller/pcie-cadence-host.c | 5 +++--
 drivers/pci/controller/pcie-cadence.c      | 6 ++++--
 3 files changed, 9 insertions(+), 8 deletions(-)

diff --git a/drivers/pci/controller/pcie-cadence-ep.c b/drivers/pci/controller/pcie-cadence-ep.c
index 825a515821c3..23aa5aba1c86 100644
--- a/drivers/pci/controller/pcie-cadence-ep.c
+++ b/drivers/pci/controller/pcie-cadence-ep.c
@@ -489,10 +489,8 @@ static int cdns_pcie_ep_probe(struct platform_device *pdev)
 	}
 
 	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "mem");
-	if (!res) {
-		dev_err(dev, "missing \"mem\"\n");
-		return -EINVAL;
-	}
+	if (!res)
+		dev_dbg(dev, "missing \"mem\"\n");
 	pcie->mem_res = res;
 
 	ret = of_property_read_u32(np, "cdns,max-outbound-regions",
diff --git a/drivers/pci/controller/pcie-cadence-host.c b/drivers/pci/controller/pcie-cadence-host.c
index 8b3b9827a8d6..14a54f6a11de 100644
--- a/drivers/pci/controller/pcie-cadence-host.c
+++ b/drivers/pci/controller/pcie-cadence-host.c
@@ -188,9 +188,9 @@ static int cdns_pcie_host_init_address_translation(struct cdns_pcie_rc *rc)
 	struct device *dev = rc->dev;
 	struct device_node *np = dev->of_node;
 	struct of_pci_range_parser parser;
+	u64 cpu_addr = cfg_res->start;
 	struct of_pci_range range;
 	u32 addr0, addr1, desc1;
-	u64 cpu_addr;
 	int r, err;
 
 	/*
@@ -203,7 +203,8 @@ static int cdns_pcie_host_init_address_translation(struct cdns_pcie_rc *rc)
 	cdns_pcie_writel(pcie, CDNS_PCIE_AT_OB_REGION_PCI_ADDR1(0), addr1);
 	cdns_pcie_writel(pcie, CDNS_PCIE_AT_OB_REGION_DESC1(0), desc1);
 
-	cpu_addr = cfg_res->start - mem_res->start;
+	if (mem_res)
+		cpu_addr -= mem_res->start;
 	addr0 = CDNS_PCIE_AT_OB_REGION_CPU_ADDR0_NBITS(12) |
 		(lower_32_bits(cpu_addr) & GENMASK(31, 8));
 	addr1 = upper_32_bits(cpu_addr);
diff --git a/drivers/pci/controller/pcie-cadence.c b/drivers/pci/controller/pcie-cadence.c
index 5ac42b19bb63..86282e9a26f7 100644
--- a/drivers/pci/controller/pcie-cadence.c
+++ b/drivers/pci/controller/pcie-cadence.c
@@ -154,7 +154,8 @@ void cdns_pcie_set_outbound_region(struct cdns_pcie *pcie, u8 fn,
 	cdns_pcie_writel(pcie, CDNS_PCIE_AT_OB_REGION_DESC1(r), desc1);
 
 	/* Set the CPU address */
-	cpu_addr -= pcie->mem_res->start;
+	if (pcie->mem_res)
+		cpu_addr -= pcie->mem_res->start;
 	addr0 = CDNS_PCIE_AT_OB_REGION_CPU_ADDR0_NBITS(nbits) |
 		(lower_32_bits(cpu_addr) & GENMASK(31, 8));
 	addr1 = upper_32_bits(cpu_addr);
@@ -181,7 +182,8 @@ void cdns_pcie_set_outbound_region_for_normal_msg(struct cdns_pcie *pcie, u8 fn,
 	}
 
 	/* Set the CPU address */
-	cpu_addr -= pcie->mem_res->start;
+	if (pcie->mem_res)
+		cpu_addr -= pcie->mem_res->start;
 	addr0 = CDNS_PCIE_AT_OB_REGION_CPU_ADDR0_NBITS(17) |
 		(lower_32_bits(cpu_addr) & GENMASK(31, 8));
 	addr1 = upper_32_bits(cpu_addr);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
