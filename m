Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5463F5BBE5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 14:42:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sdjJhJq3ct4sQFIy/OnMvD7g8YTN3XhucXJtC30ldn8=; b=mzY8y6NS8WipLx
	nez5U3lnuxfTzNfOs9A8f5Z6f0sNdDKP6HLgd4tWDBPguv+iHGgHycCzlXCHviu/w/JE7NeZ7bzBM
	p9Voc90IM2nxCu/9wb6z6U7WBHTdLGi+R5PTwClmDNUeF2s6FY8dXJ6BYN8YKRI9MiVLaSjM7/63P
	gZjqw1y29YHgbLUliV5LDNtlekZcG40/YrFsrRl/wV1K8tslYbeAUGmBFPVR2HVdemfVGJJI1ZrxL
	xDypmdfajRIoy7Wz0nDXGJ6yos7q8cKLcj1SfB6hSjKDKOeSdT8W2bOPmVhtzYRijCaIiau/3khMk
	+yHQnd8aUfpCLZAQbQVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhvdK-0003wu-Ce; Mon, 01 Jul 2019 12:42:10 +0000
Received: from hqemgate15.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhvc6-00033Q-VF
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 12:40:57 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate15.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d19ff590000>; Mon, 01 Jul 2019 05:40:57 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Mon, 01 Jul 2019 05:40:54 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Mon, 01 Jul 2019 05:40:54 -0700
Received: from HQMAIL107.nvidia.com (172.20.187.13) by HQMAIL105.nvidia.com
 (172.20.187.12) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 1 Jul
 2019 12:40:53 +0000
Received: from hqnvemgw02.nvidia.com (172.16.227.111) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via
 Frontend Transport; Mon, 1 Jul 2019 12:40:54 +0000
Received: from vidyas-desktop.nvidia.com (Not Verified[10.24.37.38]) by
 hqnvemgw02.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5d19ff500000>; Mon, 01 Jul 2019 05:40:53 -0700
From: Vidya Sagar <vidyas@nvidia.com>
To: <lorenzo.pieralisi@arm.com>, <bhelgaas@google.com>, <robh+dt@kernel.org>, 
 <mark.rutland@arm.com>, <thierry.reding@gmail.com>, <jonathanh@nvidia.com>,
 <kishon@ti.com>, <catalin.marinas@arm.com>, <will.deacon@arm.com>,
 <jingoohan1@gmail.com>, <gustavo.pimentel@synopsys.com>
Subject: [PATCH V12 05/12] PCI: dwc: Add ext config space capability search API
Date: Mon, 1 Jul 2019 18:10:03 +0530
Message-ID: <20190701124010.7484-6-vidyas@nvidia.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190701124010.7484-1-vidyas@nvidia.com>
References: <20190701124010.7484-1-vidyas@nvidia.com>
X-NVConfidentiality: public
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1561984857; bh=dIaZ1ynlaEypdztl5pyXgen370gLmT2BpPK4ZLYuXDo=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 In-Reply-To:References:X-NVConfidentiality:MIME-Version:
 Content-Type;
 b=QvOvCctr+pAz8ksHcURM2xZNCMshg4XarN8qKrannttTQ2FOE4KDbqtq7srMpOwz4
 1JHx0l6vv7EunKDAodnpOLMI8y8O6ZybumaiQGvqS3OQGOGwubtWOWR1VNEHACY3CI
 knIqbiRhJ248tHbsBMMTAjCWpuhR15P+WrRykIc0b2tDubXud3fF9DCvlTj61tSy4S
 BbIsBpIjy33kShOULN7U0kA3qDoFHLsUdyOSSKzO/DmpjxyWIB5gI7vhrF8+LhIr1k
 K+6ngmOIArUfxEPLb1a/tgN5d9Zgkem2ek3fYyeoN1wyLZZk3mJvCgBfy0lH99CfWm
 5vRiIBSTRznIQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_054055_124118_0E3B45F3 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, mmaddireddy@nvidia.com, kthota@nvidia.com,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, mperttunen@nvidia.com,
 linux-tegra@vger.kernel.org, digetx@gmail.com, vidyas@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add extended configuration space capability search API using struct dw_pcie *
pointer

Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
Acked-by: Gustavo Pimentel <gustavo.pimentel@synopsys.com>
Acked-by: Thierry Reding <treding@nvidia.com>
---
Changes since [v11]:
* None

Changes since [v10]:
* None

Changes since [v9]:
* None

Changes since [v8]:
* Added Acked-by from Thierry

Changes since [v7]:
* Changed data types of return and arguments to be inline with data being returned
  and passed.

Changes since [v6]:
* None

Changes since [v5]:
* None

Changes since [v4]:
* None

Changes since [v3]:
* None

Changes since [v2]:
* None

Changes since [v1]:
* This is a new patch in v2 series

 drivers/pci/controller/dwc/pcie-designware.c | 41 ++++++++++++++++++++
 drivers/pci/controller/dwc/pcie-designware.h |  1 +
 2 files changed, 42 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-designware.c b/drivers/pci/controller/dwc/pcie-designware.c
index 7818b4febb08..181449e342f1 100644
--- a/drivers/pci/controller/dwc/pcie-designware.c
+++ b/drivers/pci/controller/dwc/pcie-designware.c
@@ -53,6 +53,47 @@ u8 dw_pcie_find_capability(struct dw_pcie *pci, u8 cap)
 }
 EXPORT_SYMBOL_GPL(dw_pcie_find_capability);
 
+static u16 dw_pcie_find_next_ext_capability(struct dw_pcie *pci, u16 start,
+					    u8 cap)
+{
+	u32 header;
+	int ttl;
+	int pos = PCI_CFG_SPACE_SIZE;
+
+	/* minimum 8 bytes per capability */
+	ttl = (PCI_CFG_SPACE_EXP_SIZE - PCI_CFG_SPACE_SIZE) / 8;
+
+	if (start)
+		pos = start;
+
+	header = dw_pcie_readl_dbi(pci, pos);
+	/*
+	 * If we have no capabilities, this is indicated by cap ID,
+	 * cap version and next pointer all being 0.
+	 */
+	if (header == 0)
+		return 0;
+
+	while (ttl-- > 0) {
+		if (PCI_EXT_CAP_ID(header) == cap && pos != start)
+			return pos;
+
+		pos = PCI_EXT_CAP_NEXT(header);
+		if (pos < PCI_CFG_SPACE_SIZE)
+			break;
+
+		header = dw_pcie_readl_dbi(pci, pos);
+	}
+
+	return 0;
+}
+
+u16 dw_pcie_find_ext_capability(struct dw_pcie *pci, u8 cap)
+{
+	return dw_pcie_find_next_ext_capability(pci, 0, cap);
+}
+EXPORT_SYMBOL_GPL(dw_pcie_find_ext_capability);
+
 int dw_pcie_read(void __iomem *addr, int size, u32 *val)
 {
 	if (!IS_ALIGNED((uintptr_t)addr, size)) {
diff --git a/drivers/pci/controller/dwc/pcie-designware.h b/drivers/pci/controller/dwc/pcie-designware.h
index d8c66a6827dc..11c223471416 100644
--- a/drivers/pci/controller/dwc/pcie-designware.h
+++ b/drivers/pci/controller/dwc/pcie-designware.h
@@ -252,6 +252,7 @@ struct dw_pcie {
 		container_of((endpoint), struct dw_pcie, ep)
 
 u8 dw_pcie_find_capability(struct dw_pcie *pci, u8 cap);
+u16 dw_pcie_find_ext_capability(struct dw_pcie *pci, u8 cap);
 
 int dw_pcie_read(void __iomem *addr, int size, u32 *val);
 int dw_pcie_write(void __iomem *addr, int size, u32 val);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
