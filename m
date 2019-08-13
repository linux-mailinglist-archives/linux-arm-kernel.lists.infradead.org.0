Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 171C28B64D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 13:05:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GrQasXo3pG0wMSoCZXJEl5y57mJjWKtvPj/DuF30Vnk=; b=ULEjZOHJtgQJFx
	HL1jMlX0+ceSQ7bInSfd1RGxJEzWm/k7Tki/a5L++uYLJHkBsr5oGOpx2JhsqfcOGfhLwIUHAenDb
	PW6TtNWkXBKD3s0+VRjGrWxR77i89j1zoBn9HTAh1c8mmt4+uOTVNvZh6/KrRB1RfvXedruVyxeSm
	Wt/FqklJ/ZXiPsduPCzxUik/DvgXeFAeWkGYnRYngkXL70W5ZOh9FLuKU6TG758mCB8LJZuLHa2LZ
	Y2HjFudXa2fMaCL0pOEDYiacJ/Tc09bs1x32aSoIghXlU/qrrPqDcoqgUaVS22Z979QGdjOqu4idZ
	H7VERyfffMGvLRiMtkgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxUcf-00082s-AA; Tue, 13 Aug 2019 11:05:49 +0000
Received: from mail-eopbgr40074.outbound.protection.outlook.com ([40.107.4.74]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxUbA-0005lg-9g
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 11:04:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z9r8614HMGzIKGn4vC/C1gutcx4zTsuCsBg3JT2yPDDu4keGcOuJvIaro5xCDbVllbxux6q38I6XZ4QgV20pfa3okkTBkKb9nIW9nA4Rt3amETdBMWXgpFUNs5uC7T1C0hQjJLLz3j1Uz2CGAXnJrV1XvdfSKQrngYt+6fT4SwJTC4qSir5+HaUgG78phs6F+V4Czn3CGsst9EmEZY/tojb0/L089i2spo6nNEPmyAMNGTChlCHijkzWMFDnSx49lj5Grl2PseR2IpIKGiPrvQy4ovOGq3HINST058enGchGO0iGZFpnQBvoS/C66joPbD/52KEtRQbCOeqX3CevXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pGPhafhB2fv5FKbIqJDY8oFiNCmGkGHP8VJGbC0h0A4=;
 b=NyG72+mF5ZmCD77bvxNAaNasuRUJmtyzJ6DYjQP0+2ZBxG67BWCaQXTzbK31lK9lnOIt5cj5c6YSTNfGTwTEiV9NgaYX8eR5lWxwqNd7YkbwvIDnz8kOoXWlBndvtIDOqmY7WyAHPsv0SV5lXb934A0CjFpW/gM5hVrTcA/DFVzCfa4QlVOQcZitaut9ZPId2Kylmj8OntCwzID2XiM1KxpOViCZ59hxR2w3WfJWyJcXJWza/Cl6rs58098grmJkORFtbP33od3tAChkt2qKf+Sb051CS+YGoqzIKweAg6/3U4loaMPs5c+uTP0npbMOLEYy0Cdavbmad6yR3GbNng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pGPhafhB2fv5FKbIqJDY8oFiNCmGkGHP8VJGbC0h0A4=;
 b=Y/HvlTXmBGHTQ4hLB3D0bul/gGxm1w6GdcZK07US6YqgAzuGhLTCJznFgKdIEMdAiCQP6s8DeYc4/SxWdFQiqy22J+mz2sXk5B6MVQkuAK3AebHWNWUOhqTkJwzV3Q7iPIx5IJKIkPgMW+HVk+ioYQ1ThZhAs0m0OZEzPG7J05s=
Received: from DB8PR04MB6747.eurprd04.prod.outlook.com (20.179.250.159) by
 DB8PR04MB7035.eurprd04.prod.outlook.com (52.135.61.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.13; Tue, 13 Aug 2019 11:04:12 +0000
Received: from DB8PR04MB6747.eurprd04.prod.outlook.com
 ([fe80::19ec:cddf:5e07:37eb]) by DB8PR04MB6747.eurprd04.prod.outlook.com
 ([fe80::19ec:cddf:5e07:37eb%3]) with mapi id 15.20.2157.015; Tue, 13 Aug 2019
 11:04:12 +0000
From: "Z.q. Hou" <zhiqiang.hou@nxp.com>
To: "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "bhelgaas@google.com" <bhelgaas@google.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "arnd@arndb.de" <arnd@arndb.de>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "l.subrahmanya@mobiveil.co.in"
 <l.subrahmanya@mobiveil.co.in>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "m.karthikeyan@mobiveil.co.in" <m.karthikeyan@mobiveil.co.in>, Leo Li
 <leoyang.li@nxp.com>, "lorenzo.pieralisi@arm.com"
 <lorenzo.pieralisi@arm.com>, "catalin.marinas@arm.com"
 <catalin.marinas@arm.com>, "will.deacon@arm.com" <will.deacon@arm.com>
Subject: [PATCHv8 3/7] dt-bindings: PCI: Add NXP Layerscape SoCs PCIe Gen4
 controller
Thread-Topic: [PATCHv8 3/7] dt-bindings: PCI: Add NXP Layerscape SoCs PCIe
 Gen4 controller
Thread-Index: AQHVUcbW7ucpasppU0mitU96n3BoYQ==
Date: Tue, 13 Aug 2019 11:04:11 +0000
Message-ID: <20190813110557.45643-4-Zhiqiang.Hou@nxp.com>
References: <20190813110557.45643-1-Zhiqiang.Hou@nxp.com>
In-Reply-To: <20190813110557.45643-1-Zhiqiang.Hou@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK2PR02CA0199.apcprd02.prod.outlook.com
 (2603:1096:201:20::11) To DB8PR04MB6747.eurprd04.prod.outlook.com
 (2603:10a6:10:10b::31)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=zhiqiang.hou@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 14b31831-1f45-4eed-49db-08d71fddf89e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB8PR04MB7035; 
x-ms-traffictypediagnostic: DB8PR04MB7035:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB8PR04MB703578E56519EAA6840A100384D20@DB8PR04MB7035.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 01283822F8
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(6029001)(4636009)(39860400002)(346002)(376002)(396003)(136003)(366004)(189003)(199004)(256004)(66066001)(50226002)(316002)(4326008)(66556008)(66946007)(1076003)(186003)(64756008)(66476007)(386003)(71190400001)(6486002)(6506007)(26005)(7736002)(71200400001)(110136005)(486006)(305945005)(2501003)(53936002)(54906003)(52116002)(81166006)(6116002)(7416002)(3846002)(25786009)(478600001)(102836004)(36756003)(66446008)(76176011)(5660300002)(14454004)(6512007)(81156014)(446003)(99286004)(11346002)(8936002)(86362001)(2906002)(6436002)(2616005)(2201001)(8676002)(476003)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR04MB7035;
 H:DB8PR04MB6747.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: viV1P0rAI+kn2V2PlP1ygxfFfc55uve9EvGeTIIxU9ujEzcGesRCURZQ/0is+LFqth+9ATTH20GN4ipWsDjGMMJpwMO3CTM19yCMOSkfu9tOOA7+WF2gWEPqAzOIjsPSPSe/Mhi7fZDgmIIhvk5aF6iI93IDaM9CRuw4Y9LgEDQ67/15fWjJY/aggyU1ItGJlr4FJ2wsGwkphPxM/2PagfjdUgtXXjHchr3atHJYA/x7KqRKljp1esxExn33PfuXkNGgFxznLmsL4aiMg/pHsKZRZNWdoQmdoSmTNnAV9pscBaDCXgZqI+SXWuaFjBJt+1XYpeusfbhkL8nhATGTr2f8PBI9EiJnZgRJqiVkaj8YxLHfRe6oyoCJEzEDjGKr4/gS8sUOt42gImnxw5RdPTaAwUz18pZ38gJrN3qfppI=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 14b31831-1f45-4eed-49db-08d71fddf89e
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Aug 2019 11:04:11.9119 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Z1FtEZKwjW5nhPcbQiF/aqxjPmg0+zSGfPgGNnPfdw/BR26YsHlSOttlr3+RfLMoV4nfkOCB3fLeoSY3Crz+fA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB7035
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_040416_373535_36EBAD79 
X-CRM114-Status: GOOD (  13.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "M.h. Lian" <minghuan.lian@nxp.com>, "Z.q. Hou" <zhiqiang.hou@nxp.com>,
 Xiaowei Bao <xiaowei.bao@nxp.com>, Mingkai Hu <mingkai.hu@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>

Add PCIe Gen4 controller DT bindings of NXP Layerscape SoCs.

Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
V8:
 - No change.

 .../bindings/pci/layerscape-pcie-gen4.txt     | 52 +++++++++++++++++++
 MAINTAINERS                                   |  8 +++
 2 files changed, 60 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pci/layerscape-pcie-gen4.txt

diff --git a/Documentation/devicetree/bindings/pci/layerscape-pcie-gen4.txt b/Documentation/devicetree/bindings/pci/layerscape-pcie-gen4.txt
new file mode 100644
index 000000000000..b40fb5d15d3d
--- /dev/null
+++ b/Documentation/devicetree/bindings/pci/layerscape-pcie-gen4.txt
@@ -0,0 +1,52 @@
+NXP Layerscape PCIe Gen4 controller
+
+This PCIe controller is based on the Mobiveil PCIe IP and thus inherits all
+the common properties defined in mobiveil-pcie.txt.
+
+Required properties:
+- compatible: should contain the platform identifier such as:
+  "fsl,lx2160a-pcie"
+- reg: base addresses and lengths of the PCIe controller register blocks.
+  "csr_axi_slave": Bridge config registers
+  "config_axi_slave": PCIe controller registers
+- interrupts: A list of interrupt outputs of the controller. Must contain an
+  entry for each entry in the interrupt-names property.
+- interrupt-names: It could include the following entries:
+  "intr": The interrupt that is asserted for controller interrupts
+  "aer": Asserted for aer interrupt when chip support the aer interrupt with
+	 none MSI/MSI-X/INTx mode,but there is interrupt line for aer.
+  "pme": Asserted for pme interrupt when chip support the pme interrupt with
+	 none MSI/MSI-X/INTx mode,but there is interrupt line for pme.
+- dma-coherent: Indicates that the hardware IP block can ensure the coherency
+  of the data transferred from/to the IP block. This can avoid the software
+  cache flush/invalid actions, and improve the performance significantly.
+- msi-parent : See the generic MSI binding described in
+  Documentation/devicetree/bindings/interrupt-controller/msi.txt.
+
+Example:
+
+	pcie@3400000 {
+		compatible = "fsl,lx2160a-pcie";
+		reg = <0x00 0x03400000 0x0 0x00100000   /* controller registers */
+		       0x80 0x00000000 0x0 0x00001000>; /* configuration space */
+		reg-names = "csr_axi_slave", "config_axi_slave";
+		interrupts = <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH>, /* AER interrupt */
+			     <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH>, /* PME interrupt */
+			     <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH>; /* controller interrupt */
+		interrupt-names = "aer", "pme", "intr";
+		#address-cells = <3>;
+		#size-cells = <2>;
+		device_type = "pci";
+		apio-wins = <8>;
+		ppio-wins = <8>;
+		dma-coherent;
+		bus-range = <0x0 0xff>;
+		msi-parent = <&its>;
+		ranges = <0x82000000 0x0 0x40000000 0x80 0x40000000 0x0 0x40000000>;
+		#interrupt-cells = <1>;
+		interrupt-map-mask = <0 0 0 7>;
+		interrupt-map = <0000 0 0 1 &gic 0 0 GIC_SPI 109 IRQ_TYPE_LEVEL_HIGH>,
+				<0000 0 0 2 &gic 0 0 GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH>,
+				<0000 0 0 3 &gic 0 0 GIC_SPI 111 IRQ_TYPE_LEVEL_HIGH>,
+				<0000 0 0 4 &gic 0 0 GIC_SPI 112 IRQ_TYPE_LEVEL_HIGH>;
+	};
diff --git a/MAINTAINERS b/MAINTAINERS
index 0d88e0d3960b..f9c1153ef60a 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -12324,6 +12324,14 @@ L:	linux-arm-kernel@lists.infradead.org
 S:	Maintained
 F:	drivers/pci/controller/dwc/*layerscape*
 
+PCI DRIVER FOR NXP LAYERSCAPE GEN4 CONTROLLER
+M:	Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
+L:	linux-pci@vger.kernel.org
+L:	linux-arm-kernel@lists.infradead.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/pci/layerscape-pcie-gen4.txt
+F:	drivers/pci/controller/mobibeil/pcie-layerscape-gen4.c
+
 PCI DRIVER FOR GENERIC OF HOSTS
 M:	Will Deacon <will@kernel.org>
 L:	linux-pci@vger.kernel.org
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
