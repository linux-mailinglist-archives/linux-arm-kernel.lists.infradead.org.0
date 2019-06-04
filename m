Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C556034825
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 15:19:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DyVw2MqBeqvt3qUgn0VVjPVgx7F16XCU+aR45X76Byw=; b=Eidu8ncvJybaH+
	uoFC4cS85A8Qfve3ymtjcNDvR8RA9WWOpRLzTgojETxwhLHWNcZ+1px/eV/Ta8pU3fMa65Ly6df4h
	OxP9FGpw1JcCAyv6CAKQiyTuhtdnNzi3tPjEGyXqmSEHIDovagh2zFcVVLo/zVyuc7pbFPVyMIVHa
	T74QPUDg/cQi8iQpbLBVdEcPkKNkDXyZVX3/j9hOyon6o060ZeRscKqPiUhjZmvNPO5qCuK+k/10u
	WqfEku1CxY3mQy2rWQJOYC3GSOH6Ow+RHKBnsl1D3ho72dTNRnoGdv/pH0KJJwselcd4rb/qdiD8J
	q50L2r+kWP089SJ9vrPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY9L8-0004iK-Sj; Tue, 04 Jun 2019 13:18:58 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY9Js-00038v-Ls; Tue, 04 Jun 2019 13:18:25 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x54DHUwP091935;
 Tue, 4 Jun 2019 08:17:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559654250;
 bh=T5pkgbPtfeYhwC2XYU7uxdS1O66/LVXpQwXXprThbgo=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=oLZn9E4EQCSED8upH9gju2LbBt/+J0Y8RfNaABd8mWwDs+2AVvyWfnxH0ZFZZvODz
 yTzp2gGDRCi+k2WR02CLGV28NqOIRQhftLzWw8TnpdWV2+CBdZ3phLy3WjG3SWyZvs
 psjAghz2htn9X9FJ/jKV7UnHLp8B+eNgZAX5DHdI=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x54DHUeM008068
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 4 Jun 2019 08:17:30 -0500
Received: from DLEE115.ent.ti.com (157.170.170.26) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 4 Jun
 2019 08:17:29 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 4 Jun 2019 08:17:29 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x54DGdGO098972;
 Tue, 4 Jun 2019 08:17:24 -0500
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Tom Joseph <tjoseph@cadence.com>, Bjorn Helgaas <bhelgaas@google.com>, Rob
 Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Lorenzo
 Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>
Subject: [RFC PATCH 08/30] PCI: cadence: Add support to use PCIe in J721E SoC
Date: Tue, 4 Jun 2019 18:44:54 +0530
Message-ID: <20190604131516.13596-9-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190604131516.13596-1-kishon@ti.com>
References: <20190604131516.13596-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_061741_188342_D681F807 
X-CRM114-Status: GOOD (  16.63  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
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

Use J721E specific compatible in pcie-cadence-* drivers. Since PCIe in
J721E SoC has a restriction that allows only 32-bit register access,
use the 32-bit accessors for read and write.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/pci/controller/pcie-cadence-ep.c   | 12 +++++-
 drivers/pci/controller/pcie-cadence-host.c | 47 +++++++++++++++++++++-
 2 files changed, 55 insertions(+), 4 deletions(-)

diff --git a/drivers/pci/controller/pcie-cadence-ep.c b/drivers/pci/controller/pcie-cadence-ep.c
index 64ab5c53afb1..07f840cfba23 100644
--- a/drivers/pci/controller/pcie-cadence-ep.c
+++ b/drivers/pci/controller/pcie-cadence-ep.c
@@ -425,9 +425,17 @@ static const struct pci_epc_ops cdns_pcie_epc_ops = {
 	.get_features	= cdns_pcie_ep_get_features,
 };
 
-static const struct of_device_id cdns_pcie_ep_of_match[] = {
-	{ .compatible = "cdns,cdns-pcie-ep" },
+static struct cdns_pcie_ep_data cdns_ti_pcie_ep_data = {
+	.read = cdns_pcie_read32,
+	.write = cdns_pcie_write32,
+};
 
+static const struct of_device_id cdns_pcie_ep_of_match[] = {
+	{ .compatible = "cdns,cdns-pcie-ep",
+	},
+	{ .compatible = "ti,j721e-cdns-pcie-ep",
+	  .data = &cdns_ti_pcie_ep_data,
+	},
 	{ },
 };
 
diff --git a/drivers/pci/controller/pcie-cadence-host.c b/drivers/pci/controller/pcie-cadence-host.c
index 75cf3c312ed2..ab6491b23775 100644
--- a/drivers/pci/controller/pcie-cadence-host.c
+++ b/drivers/pci/controller/pcie-cadence-host.c
@@ -93,9 +93,52 @@ static struct pci_ops cdns_pcie_host_ops = {
 	.write		= pci_generic_config_write,
 };
 
-static const struct of_device_id cdns_pcie_host_of_match[] = {
-	{ .compatible = "cdns,cdns-pcie-host" },
+static int cdns_ti_pcie_config_read(struct pci_bus *bus, unsigned int devfn,
+				    int where, int size, u32 *value)
+{
+	struct pci_host_bridge *bridge = pci_find_host_bridge(bus);
+	struct cdns_pcie_rc *rc = pci_host_bridge_priv(bridge);
+	unsigned int busn = bus->number;
+
+	if (busn == rc->bus_range->start)
+		return pci_generic_config_read32(bus, devfn, where, size,
+						 value);
+
+	return pci_generic_config_read(bus, devfn, where, size, value);
+}
+
+static int cdns_ti_pcie_config_write(struct pci_bus *bus, unsigned int devfn,
+				     int where, int size, u32 value)
+{
+	struct pci_host_bridge *bridge = pci_find_host_bridge(bus);
+	struct cdns_pcie_rc *rc = pci_host_bridge_priv(bridge);
+	unsigned int busn = bus->number;
+
+	if (busn == rc->bus_range->start)
+		return pci_generic_config_write32(bus, devfn, where, size,
+						  value);
+
+	return pci_generic_config_write(bus, devfn, where, size, value);
+}
+
+static struct pci_ops cdns_ti_pcie_host_ops = {
+	.map_bus	= cdns_pci_map_bus,
+	.read		= cdns_ti_pcie_config_read,
+	.write		= cdns_ti_pcie_config_write,
+};
+
+static struct cdns_pcie_host_data cdns_ti_pcie_host_data = {
+	.read = cdns_pcie_read32,
+	.write = cdns_pcie_write32,
+	.ops = &cdns_ti_pcie_host_ops,
+};
 
+static const struct of_device_id cdns_pcie_host_of_match[] = {
+	{ .compatible = "cdns,cdns-pcie-host",
+	},
+	{ .compatible = "ti,j721e-cdns-pcie-host",
+	  .data = &cdns_ti_pcie_host_data,
+	},
 	{ },
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
