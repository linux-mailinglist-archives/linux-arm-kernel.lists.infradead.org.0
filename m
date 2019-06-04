Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECD8734AE8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 16:48:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rP/lhKNdrRdAwSu2Y+StpIZPR/dPe8GZ7h7thUeR1KI=; b=FHazC/YeDtHx6X
	easZSEoFcxa0qRcR6LbYs8rQOmw1/0fFjriTRxjiFGTn1UAbwN6VE9hX9lAde6N8KwRYJEnuK9vyV
	4l85Y970p/4fKH1TaG6/QO7EmaSwLAMNSuXliCtTFaYBjv6S+zrfoJ4NG8qgNvaKjs5WanXj5zbb5
	5FQQH4PRfyzvqIH4x/3SCiic3eShiKa2cbsFKoOk7SM1o7EAw/QFZyMPcRxK6MDegqCMibZIAZID1
	a6ZeL9az/cYI3nmZeEKDJFSbea+7m6WmLumwyvrPQgKNx15TfQOOeXc5RX+vkIJEugZ0sYC9N3IqX
	07RVfXjvebHRK0Lg/NzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYAk9-0001bl-9A; Tue, 04 Jun 2019 14:48:53 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYAj2-0008G6-Hn; Tue, 04 Jun 2019 14:47:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NQisG6of0th5e5nh0dWxjvqkrQFUAwxLaJ6uQ3mRLhk=; b=CtU2VacyO6rzBWvSCDnVnW54N
 gDFJo5vxz22/XDDMjHYHT5Jzza/A3fip/K1E0hkDkLyXu/k6qAy1Wnsf8GGUgf/zoAMI5vG5Dhri/
 Lr8eCabd0J1/LbaP7weXLJpZoaDRy6fkYSs2l9W7A9IhC+jgaid1XTX3zxKMQKSnfhqqKG+H6GQma
 EtD/USDT9qfsqehX0iLH7BPnEUqPFE4YEUQ5q+nDZjLar5VNz0xyLC0I/Ev/0F06+t94DBkKrlTcs
 cqvOq82iSE1REDintZgqQ78M1AvfdPSMTv1I0w5Te9lc5CCeJ5nRNTEuz2PkF0C31moGLMH/1FsRQ
 70jbHCNRw==;
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY9K7-0005UF-Gn; Tue, 04 Jun 2019 13:17:56 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x54DHZbs028030;
 Tue, 4 Jun 2019 08:17:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559654255;
 bh=NQisG6of0th5e5nh0dWxjvqkrQFUAwxLaJ6uQ3mRLhk=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=p/w+dePUAOZBdhfQ0h69WotHcCUiE55mkIh05kVLvDhwP57FXWOS0v2PQ6GB0z8oC
 Ns6QDwgoGcD3juTUBM6xVmTZQPxxn6BDTSRI/PTavSeixh1+Sxn+walG/sXKZKphGO
 ByoDc+Hj6QGTVHa+raGna/KVWeHm4VUgqn4VBy50=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x54DHZFO052752
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 4 Jun 2019 08:17:35 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 4 Jun
 2019 08:17:35 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 4 Jun 2019 08:17:34 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x54DGdGP098972;
 Tue, 4 Jun 2019 08:17:30 -0500
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Tom Joseph <tjoseph@cadence.com>, Bjorn Helgaas <bhelgaas@google.com>, Rob
 Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Lorenzo
 Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>
Subject: [RFC PATCH 09/30] PCI: cadence: Add platform_data to start link and
 check link status
Date: Tue, 4 Jun 2019 18:44:55 +0530
Message-ID: <20190604131516.13596-10-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190604131516.13596-1-kishon@ti.com>
References: <20190604131516.13596-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_091755_660550_3B66731B 
X-CRM114-Status: GOOD (  18.62  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Add support in cadence driver to read platform_data passed to it from
platform specific drivers. The platform_data right now contains two
ops, one to start link and the other to check the link status.
This is required since the registers for starting a link and for
checking link status is in the wrapper and not in Cadence PCIe core.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/pci/controller/pcie-cadence-ep.c   |  1 +
 drivers/pci/controller/pcie-cadence-host.c |  1 +
 drivers/pci/controller/pcie-cadence.c      | 41 ++++++++++++++++++++++
 drivers/pci/controller/pcie-cadence.h      | 13 +++++++
 4 files changed, 56 insertions(+)

diff --git a/drivers/pci/controller/pcie-cadence-ep.c b/drivers/pci/controller/pcie-cadence-ep.c
index 07f840cfba23..b044167071e6 100644
--- a/drivers/pci/controller/pcie-cadence-ep.c
+++ b/drivers/pci/controller/pcie-cadence-ep.c
@@ -462,6 +462,7 @@ static int cdns_pcie_ep_probe(struct platform_device *pdev)
 
 	pcie = &ep->pcie;
 	pcie->is_rc = false;
+	pcie->plat_data = pdev->dev.platform_data;
 
 	data = (struct cdns_pcie_ep_data *)match->data;
 	if (data) {
diff --git a/drivers/pci/controller/pcie-cadence-host.c b/drivers/pci/controller/pcie-cadence-host.c
index ab6491b23775..2363f05e7c58 100644
--- a/drivers/pci/controller/pcie-cadence-host.c
+++ b/drivers/pci/controller/pcie-cadence-host.c
@@ -304,6 +304,7 @@ static int cdns_pcie_host_probe(struct platform_device *pdev)
 	rc->dev = dev;
 
 	pcie = &rc->pcie;
+	pcie->plat_data = pdev->dev.platform_data;
 	pcie->is_rc = true;
 
 	data = (struct cdns_pcie_host_data *)match->data;
diff --git a/drivers/pci/controller/pcie-cadence.c b/drivers/pci/controller/pcie-cadence.c
index de5b3b06f2d0..5ac42b19bb63 100644
--- a/drivers/pci/controller/pcie-cadence.c
+++ b/drivers/pci/controller/pcie-cadence.c
@@ -3,6 +3,7 @@
 // Cadence PCIe controller driver.
 // Author: Cyrille Pitchen <cyrille.pitchen@free-electrons.com>
 
+#include <linux/delay.h>
 #include <linux/kernel.h>
 
 #include "pcie-cadence.h"
@@ -47,6 +48,46 @@ void cdns_pcie_write32(void __iomem *addr, int size, u32 value)
 	writel(val, aligned_addr);
 }
 
+int cdns_pcie_start_link(struct cdns_pcie *pci, bool start)
+{
+	struct cdns_pcie_plat_data *plat_data;
+
+	plat_data = pci->plat_data;
+	if (!plat_data)
+		return 0;
+
+	return plat_data->start_link(plat_data, start);
+}
+
+static bool cdns_pcie_is_link_up(struct cdns_pcie *pci)
+{
+	struct cdns_pcie_plat_data *plat_data;
+
+	plat_data = pci->plat_data;
+	if (!plat_data)
+		return true;
+
+	return plat_data->is_link_up(plat_data);
+}
+
+int cdns_pcie_wait_for_link(struct device *dev, struct cdns_pcie *pci)
+{
+	int retries;
+
+	/* Check if the link is up or not */
+	for (retries = 0; retries < LINK_WAIT_MAX_RETRIES; retries++) {
+		if (cdns_pcie_is_link_up(pci)) {
+			dev_info(dev, "Link up\n");
+			return 0;
+		}
+		usleep_range(LINK_WAIT_USLEEP_MIN, LINK_WAIT_USLEEP_MAX);
+	}
+
+	dev_err(dev, "Phy link never came up\n");
+
+	return -ETIMEDOUT;
+}
+
 void cdns_pcie_set_outbound_region(struct cdns_pcie *pcie, u8 fn,
 				   u32 r, bool is_io,
 				   u64 cpu_addr, u64 pci_addr, size_t size)
diff --git a/drivers/pci/controller/pcie-cadence.h b/drivers/pci/controller/pcie-cadence.h
index d157bf5eabd5..3cef398b50da 100644
--- a/drivers/pci/controller/pcie-cadence.h
+++ b/drivers/pci/controller/pcie-cadence.h
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
@@ -221,6 +226,11 @@ enum cdns_pcie_msg_routing {
 	MSG_ROUTING_GATHER,
 };
 
+struct cdns_pcie_plat_data {
+	int (*start_link)(struct cdns_pcie_plat_data *data, bool start);
+	bool (*is_link_up)(struct cdns_pcie_plat_data *data);
+};
+
 /**
  * struct cdns_pcie - private data for Cadence PCIe controller drivers
  * @reg_base: IO mapped register base
@@ -236,6 +246,7 @@ struct cdns_pcie {
 	int			phy_count;
 	struct phy		**phy;
 	struct device_link	**link;
+	struct cdns_pcie_plat_data *plat_data;
 	u32 (*read)(void __iomem *addr, int size);
 	void (*write)(void __iomem *addr, int size, u32 value);
 };
@@ -408,6 +419,8 @@ int cdns_pcie_enable_phy(struct cdns_pcie *pcie);
 int cdns_pcie_init_phy(struct device *dev, struct cdns_pcie *pcie);
 u32 cdns_pcie_read32(void __iomem *addr, int size);
 void cdns_pcie_write32(void __iomem *addr, int size, u32 value);
+int cdns_pcie_start_link(struct cdns_pcie *pci, bool start);
+int cdns_pcie_wait_for_link(struct device *dev, struct cdns_pcie *pci);
 extern const struct dev_pm_ops cdns_pcie_pm_ops;
 
 #endif /* _PCIE_CADENCE_H */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
