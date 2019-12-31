Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F77712D864
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Dec 2019 12:34:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1KgVb5h1+n0UD3ivWyP0ctPyCrBSaT9nNjowGtR5Vr4=; b=S3qrMLP5+0ZJOb
	XKPBo8BgO+IeQTdeStzdA+p11KEZ8/9WfX/x+arwT3JoNMFZ5bDqVWCbf7d+67mq39LoaDApNI+f/
	c13AVhp5lIJmS6MwcdB0IN39beIq66WsOUyiAZgH3O3L/5lXssd1RxCTZfXnagMTjmioQ8CPD+PzW
	PSHYnP+ZTFSH/XdxmY94i7iAyj6fag3cXgrdXh0Z25g3ZVXiAW1IlMgQmRcTdmVVrcj1lAalUMBom
	XIwCt69MicrNUrGVqzyzaMhD3k5ZyfqcGcU1mm76F5taaetwOIR1/XvPHmWlkC8jZOHv0pDqN0TCB
	RfTvWoAWSyFmDcxOqFjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imFnb-00006x-EY; Tue, 31 Dec 2019 11:34:55 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imFmh-0007q6-6U; Tue, 31 Dec 2019 11:34:00 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBVBXooJ117381;
 Tue, 31 Dec 2019 05:33:50 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1577792030;
 bh=pyb5BGFKhI/g5TGZ5x/+8IE+fcZyupjTjB03k+gnDLA=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=XJ5Q0pZPrYgV582tAST8auFK4EOd1zfU2SbRWQKBbUbjArFGs9Rmgw7FtuQrdroj7
 wDte2FwBAcDLzQIgfQqLiCQhhyv92wA9EgZqqxjdb1cG6qoJRV0Aia02sZJe3Jyr7A
 0OwlOXHcKzHhabFAOjxIqV6ANL9hD1BYb7wrRHfY=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBVBXoKp089470;
 Tue, 31 Dec 2019 05:33:50 -0600
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 31
 Dec 2019 05:33:49 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 31 Dec 2019 05:33:49 -0600
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBVBXX33024759;
 Tue, 31 Dec 2019 05:33:44 -0600
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Lorenzo Pieralisi
 <lorenzo.pieralisi@arm.com>, Bjorn Helgaas <bhelgaas@google.com>, Andrew
 Murray <andrew.murray@arm.com>,
 Tom Joseph <tjoseph@cadence.com>, Rob Herring <robh+dt@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Jingoo Han <jingoohan1@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 2/7] dt-bindings: PCI: cadence: Add binding to specify max
 virtual functions
Date: Tue, 31 Dec 2019 17:05:29 +0530
Message-ID: <20191231113534.30405-3-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191231113534.30405-1-kishon@ti.com>
References: <20191231113534.30405-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_033359_337405_B54E73E3 
X-CRM114-Status: GOOD (  15.62  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-doc@vger.kernel.org,
 linux-pci@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add binding to specify maximum number of virtual functions that can be
associated with each physical function.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 .../devicetree/bindings/pci/cdns,cdns-pcie-ep.txt         | 2 ++
 .../devicetree/bindings/pci/ti,j721e-pci-ep.yaml          | 8 ++++++++
 2 files changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/cdns,cdns-pcie-ep.txt b/Documentation/devicetree/bindings/pci/cdns,cdns-pcie-ep.txt
index 4a0475e2ba7e..432578202733 100644
--- a/Documentation/devicetree/bindings/pci/cdns,cdns-pcie-ep.txt
+++ b/Documentation/devicetree/bindings/pci/cdns,cdns-pcie-ep.txt
@@ -9,6 +9,8 @@ Required properties:
 
 Optional properties:
 - max-functions: Maximum number of functions that can be configured (default 1).
+- max-virtual-functions: Maximum number of virtual functions that can be
+    associated with each physical function.
 - phys: From PHY bindings: List of Generic PHY phandles. One per lane if more
   than one in the list.  If only one PHY listed it must manage all lanes. 
 - phy-names:  List of names to identify the PHY.
diff --git a/Documentation/devicetree/bindings/pci/ti,j721e-pci-ep.yaml b/Documentation/devicetree/bindings/pci/ti,j721e-pci-ep.yaml
index 4621c62016c7..1d4964ba494f 100644
--- a/Documentation/devicetree/bindings/pci/ti,j721e-pci-ep.yaml
+++ b/Documentation/devicetree/bindings/pci/ti,j721e-pci-ep.yaml
@@ -61,6 +61,12 @@ properties:
     minimum: 1
     maximum: 6
 
+  max-virtual-functions:
+    minItems: 1
+    maxItems: 6
+    description: As defined in
+                 Documentation/devicetree/bindings/pci/cdns,cdns-pcie-ep.txt
+
   dma-coherent:
     description: Indicates that the PCIe IP block can ensure the coherency
 
@@ -85,6 +91,7 @@ required:
   - cdns,max-outbound-regions
   - dma-coherent
   - max-functions
+  - max-virtual-functions
   - phys
   - phy-names
 
@@ -107,6 +114,7 @@ examples:
             clock-names = "fck";
             cdns,max-outbound-regions = <16>;
             max-functions = /bits/ 8 <6>;
+            max-virtual-functions = /bits/ 16 <4 4 4 4 0 0>;
             dma-coherent;
             phys = <&serdes0_pcie_link>;
             phy-names = "pcie_phy";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
