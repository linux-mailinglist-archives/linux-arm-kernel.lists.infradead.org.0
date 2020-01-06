Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4839131066
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 11:21:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nYZTYNfWPdQQtOmo9nc8KzaIDWhdaRMejIHKwf5RlPU=; b=snzXQWd/U4Zwh/
	ZZJ2hsX6AI0wF4SnB4ZMTu7FevsxFlRA9iwjcDnvAo3mOijvsa5wDvA6smMSla9s30kilS6E5xfwO
	PzHXp1p4mhcDYpjqGdiHFpz/KOE3gSnZavJ+JfZNgmO8RqtMLnvtbcjz7zN/JIxXokwXsxzXIy2jz
	/2+OUlpSdxsRofVoylhaYOoGrhtyvEwHFlfd8j81sBGCzt8Xh9iT1tmyDrTmiD1qhH6bquRezUuLt
	r4g5J7qyleI4tBed+sar6vYytLYKpUr0IKw/l7ULPwu+Al3K+8pbyiGjhjpwrXt8RTtbHmcGxvvDD
	xWWugS08m5/+arCNcviQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioPVQ-0007hq-ID; Mon, 06 Jan 2020 10:21:04 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioPTm-000599-PV
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 10:19:24 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 006AJDR0017702;
 Mon, 6 Jan 2020 04:19:13 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1578305953;
 bh=7suyugL6OjEgzVgCAv3ba7IYEsUPuEE1sWxK8qkxVlg=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=TAmWDGmnM5FjGbuH+suaJlt9fHtbx67AtdGDtOHrE4qhhrrbC3EmJ9qYIZatbLWOj
 JQ1dJj5R6M5FdLoG8kQxtxzZb7ZzK1GPnrt2yhaNvojDDzOr7WlNdVtt9djIW5tY4Q
 2j/jNjyArWiOxhINZKrkkwtLxXt3juOcP+FXFRQs=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 006AJDOS000388
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 6 Jan 2020 04:19:13 -0600
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 6 Jan
 2020 04:19:12 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 6 Jan 2020 04:19:12 -0600
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 006AIqXv118652;
 Mon, 6 Jan 2020 04:19:09 -0600
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Bjorn Helgaas
 <bhelgaas@google.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Rob
 Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>, Andrew Murray
 <andrew.murray@arm.com>
Subject: [PATCH v2 05/14] PCI: cadence: Add support to start link and verify
 link status
Date: Mon, 6 Jan 2020 15:50:49 +0530
Message-ID: <20200106102058.19183-6-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200106102058.19183-1-kishon@ti.com>
References: <20200106102058.19183-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_021922_889497_6071EDD5 
X-CRM114-Status: GOOD (  20.04  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add cdns_pcie_ops to start link and verify link status. The registers
to start link and to check link status is in Platform specific PCIe
wrapper. Add support for platform specific drivers to add callback
functions for the PCIe Cadence core to start link and verify link status.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 .../pci/controller/cadence/pcie-cadence-ep.c  |  8 +++++
 .../controller/cadence/pcie-cadence-host.c    | 28 +++++++++++++++++
 drivers/pci/controller/cadence/pcie-cadence.h | 30 +++++++++++++++++++
 3 files changed, 66 insertions(+)

diff --git a/drivers/pci/controller/cadence/pcie-cadence-ep.c b/drivers/pci/controller/cadence/pcie-cadence-ep.c
index d5be81075cc3..26cb492fdb81 100644
--- a/drivers/pci/controller/cadence/pcie-cadence-ep.c
+++ b/drivers/pci/controller/cadence/pcie-cadence-ep.c
@@ -457,8 +457,10 @@ static int cdns_pcie_ep_start(struct pci_epc *epc)
 {
 	struct cdns_pcie_ep *ep = epc_get_drvdata(epc);
 	struct cdns_pcie *pcie = &ep->pcie;
+	struct device *dev = pcie->dev;
 	struct pci_epf *epf;
 	u32 cfg;
+	int ret;
 
 	/*
 	 * BIT(0) is hardwired to 1, hence function 0 is always enabled
@@ -469,6 +471,12 @@ static int cdns_pcie_ep_start(struct pci_epc *epc)
 		cfg |= BIT(epf->func_no);
 	cdns_pcie_writel(pcie, CDNS_PCIE_LM_EP_FUNC_CFG, cfg);
 
+	ret = cdns_pcie_start_link(pcie);
+	if (ret) {
+		dev_err(dev, "Failed to start link\n");
+		return ret;
+	}
+
 	return 0;
 }
 
diff --git a/drivers/pci/controller/cadence/pcie-cadence-host.c b/drivers/pci/controller/cadence/pcie-cadence-host.c
index 11eb81da0233..d6a38b74371c 100644
--- a/drivers/pci/controller/cadence/pcie-cadence-host.c
+++ b/drivers/pci/controller/cadence/pcie-cadence-host.c
@@ -3,6 +3,7 @@
 // Cadence PCIe host controller driver.
 // Author: Cyrille Pitchen <cyrille.pitchen@free-electrons.com>
 
+#include <linux/delay.h>
 #include <linux/kernel.h>
 #include <linux/of_address.h>
 #include <linux/of_pci.h>
@@ -200,6 +201,23 @@ static int cdns_pcie_host_init(struct device *dev,
 	return err;
 }
 
+static int cdns_pcie_host_wait_for_link(struct cdns_pcie *pcie)
+{
+	struct device *dev = pcie->dev;
+	int retries;
+
+	/* Check if the link is up or not */
+	for (retries = 0; retries < LINK_WAIT_MAX_RETRIES; retries++) {
+		if (cdns_pcie_link_up(pcie)) {
+			dev_info(dev, "Link up\n");
+			return 0;
+		}
+		usleep_range(LINK_WAIT_USLEEP_MIN, LINK_WAIT_USLEEP_MAX);
+	}
+
+	return -ETIMEDOUT;
+}
+
 int cdns_pcie_host_setup(struct cdns_pcie_rc *rc)
 {
 	struct device *dev = rc->pcie.dev;
@@ -253,6 +271,16 @@ int cdns_pcie_host_setup(struct cdns_pcie_rc *rc)
 
 	pcie->mem_res = res;
 
+	ret = cdns_pcie_start_link(pcie);
+	if (ret) {
+		dev_err(dev, "Failed to start link\n");
+		return ret;
+	}
+
+	ret = cdns_pcie_host_wait_for_link(pcie);
+	if (ret)
+		dev_dbg(dev, "PCIe link never came up\n");
+
 	ret = cdns_pcie_host_init(dev, &resources, rc);
 	if (ret)
 		return ret;
diff --git a/drivers/pci/controller/cadence/pcie-cadence.h b/drivers/pci/controller/cadence/pcie-cadence.h
index 391636a9c084..676a57b7ad3d 100644
--- a/drivers/pci/controller/cadence/pcie-cadence.h
+++ b/drivers/pci/controller/cadence/pcie-cadence.h
@@ -10,6 +10,11 @@
 #include <linux/pci.h>
 #include <linux/phy/phy.h>
 
+/* Parameters for the waiting for link up routine */
+#define LINK_WAIT_MAX_RETRIES	10
+#define LINK_WAIT_USLEEP_MIN	90000
+#define LINK_WAIT_USLEEP_MAX	100000
+
 /*
  * Local Management Registers
  */
@@ -227,6 +232,9 @@ enum cdns_pcie_msg_routing {
 struct cdns_pcie_ops {
 	u32	(*read)(void __iomem *addr, int size);
 	void	(*write)(void __iomem *addr, int size, u32 value);
+	int	(*start_link)(struct cdns_pcie *pcie);
+	void	(*stop_link)(struct cdns_pcie *pcie);
+	bool	(*link_up)(struct cdns_pcie *pcie);
 };
 
 /**
@@ -457,6 +465,28 @@ static inline u32 cdns_pcie_ep_fn_readl(struct cdns_pcie *pcie, u8 fn, u32 reg)
 	return readl(addr);
 }
 
+static inline int cdns_pcie_start_link(struct cdns_pcie *pcie)
+{
+	if (pcie->ops->start_link)
+		return pcie->ops->start_link(pcie);
+
+	return 0;
+}
+
+static inline void cdns_pcie_stop_link(struct cdns_pcie *pcie)
+{
+	if (pcie->ops->stop_link)
+		pcie->ops->stop_link(pcie);
+}
+
+static inline bool cdns_pcie_link_up(struct cdns_pcie *pcie)
+{
+	if (pcie->ops->link_up)
+		return pcie->ops->link_up(pcie);
+
+	return true;
+}
+
 #ifdef CONFIG_PCIE_CADENCE_HOST
 int cdns_pcie_host_setup(struct cdns_pcie_rc *rc);
 #else
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
