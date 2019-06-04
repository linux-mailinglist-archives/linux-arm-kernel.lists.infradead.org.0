Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EBF834827
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 15:19:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GAM89u+nmmce4myRdqRHTQrrw9fMXzqSKmYubQsxc7A=; b=dOLs23sguX0/Gx
	vYxurb6HoehxGaduYgh6fknCyNtL+fy8/UE6LC3O5tV2pVYcKhvwZyCvp75d1AmztrLufVW/XDaTJ
	ypfHdwDSXH6gMcX0DQdP/F/5/sBecdK5Cy3T7KwjyIO7lSwGXR5GDB3ZqAQtob+opVw06F6I2wjp6
	chLuTt0pfIwVm68G7ZBUsyCbOKmENnpTzJWD518udGrdhgTVx46RrbU6DilWY5CKmtI8vuZStu7JB
	s6eKy6UTOoMzSq0qLfsHbFVuEMwFVoZuEDpF4jOP/zoKqPpgjdgk/UcN/3WX9JdUyLesWRLsGW5QL
	GtH74SflOJtH4nifNxbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY9LJ-0004yG-3D; Tue, 04 Jun 2019 13:19:09 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY9K2-0003RN-Pr; Tue, 04 Jun 2019 13:18:39 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x54DHf13028057;
 Tue, 4 Jun 2019 08:17:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559654261;
 bh=RElHPxtACkCdk4rLufC/bmJZmseWFYOIIvYrh7aFO/8=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=ctcAw7L7QUByHCOouvIbfAiWv5Zee8mbXY3jZXhr2OTNddfQLtmVD7zJnqx/VdTyr
 lC1MgB43JIWeJjcT739mZpUBUOpgDiQwkfxViuPTLl3GsgePCdIvDMwpmCh+CjaqWG
 lqtruagGs6y45G+xx4UhzoFRKD5nWMZRXj0nSwfY=
Received: from DFLE107.ent.ti.com (dfle107.ent.ti.com [10.64.6.28])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x54DHeFX052834
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 4 Jun 2019 08:17:40 -0500
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 4 Jun
 2019 08:17:40 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 4 Jun 2019 08:17:40 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x54DGdGQ098972;
 Tue, 4 Jun 2019 08:17:35 -0500
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Tom Joseph <tjoseph@cadence.com>, Bjorn Helgaas <bhelgaas@google.com>, Rob
 Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Lorenzo
 Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>
Subject: [RFC PATCH 10/30] PCI: cadence: Use *_start_link() and
 *_wait_for_link() to establish link
Date: Tue, 4 Jun 2019 18:44:56 +0530
Message-ID: <20190604131516.13596-11-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190604131516.13596-1-kishon@ti.com>
References: <20190604131516.13596-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_061751_546394_4A389F0E 
X-CRM114-Status: GOOD (  17.66  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Use cdns_pcie_start_link() to start link training and
cdns_pcie_wait_for_link() in order to wait to establish the link.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/pci/controller/pcie-cadence-ep.c   | 11 ++++++++++-
 drivers/pci/controller/pcie-cadence-host.c | 11 +++++++++++
 2 files changed, 21 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/controller/pcie-cadence-ep.c b/drivers/pci/controller/pcie-cadence-ep.c
index b044167071e6..825a515821c3 100644
--- a/drivers/pci/controller/pcie-cadence-ep.c
+++ b/drivers/pci/controller/pcie-cadence-ep.c
@@ -21,6 +21,7 @@
 /**
  * struct cdns_pcie_ep - private data for this PCIe endpoint controller driver
  * @pcie: Cadence PCIe controller
+ * @dev: pointer to PCIe EP device
  * @max_regions: maximum number of regions supported by hardware
  * @ob_region_map: bitmask of mapped outbound regions
  * @ob_addr: base addresses in the AXI bus where the outbound regions start
@@ -37,6 +38,7 @@
  */
 struct cdns_pcie_ep {
 	struct cdns_pcie		pcie;
+	struct device			*dev;
 	u32				max_regions;
 	unsigned long			ob_region_map;
 	phys_addr_t			*ob_addr;
@@ -386,6 +388,7 @@ static int cdns_pcie_ep_start(struct pci_epc *epc)
 	struct cdns_pcie_ep *ep = epc_get_drvdata(epc);
 	struct cdns_pcie *pcie = &ep->pcie;
 	struct pci_epf *epf;
+	int ret = 0;
 	u32 cfg;
 
 	/*
@@ -397,7 +400,11 @@ static int cdns_pcie_ep_start(struct pci_epc *epc)
 		cfg |= BIT(epf->func_no);
 	cdns_pcie_writel(pcie, CDNS_PCIE_LM_EP_FUNC_CFG, cfg);
 
-	return 0;
+	ret = cdns_pcie_start_link(pcie, true);
+	if (ret)
+		dev_err(ep->dev, "Failed to start link\n");
+
+	return ret;
 }
 
 static const struct pci_epc_features cdns_pcie_epc_features = {
@@ -460,6 +467,8 @@ static int cdns_pcie_ep_probe(struct platform_device *pdev)
 	if (!ep)
 		return -ENOMEM;
 
+	ep->dev = dev;
+
 	pcie = &ep->pcie;
 	pcie->is_rc = false;
 	pcie->plat_data = pdev->dev.platform_data;
diff --git a/drivers/pci/controller/pcie-cadence-host.c b/drivers/pci/controller/pcie-cadence-host.c
index 2363f05e7c58..4ad8f2ece6e2 100644
--- a/drivers/pci/controller/pcie-cadence-host.c
+++ b/drivers/pci/controller/pcie-cadence-host.c
@@ -365,6 +365,14 @@ static int cdns_pcie_host_probe(struct platform_device *pdev)
 		goto err_get_sync;
 	}
 
+	ret = cdns_pcie_start_link(pcie, true);
+	if (ret) {
+		dev_err(dev, "Failed to start link\n");
+		goto err_start_link;
+	}
+
+	cdns_pcie_wait_for_link(dev, pcie);
+
 	ret = cdns_pcie_host_init(dev, &resources, rc);
 	if (ret)
 		goto err_init;
@@ -386,6 +394,9 @@ static int cdns_pcie_host_probe(struct platform_device *pdev)
 	pci_free_resource_list(&resources);
 
  err_init:
+	cdns_pcie_start_link(pcie, false);
+
+ err_start_link:
 	pm_runtime_put_sync(dev);
 
  err_get_sync:
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
