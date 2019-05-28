Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C912BF90
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 08:51:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PwwztOFE6ZqvIPAo/KkVr7tJirFhmZogOjRUmgfSSbY=; b=TSDKnplDFeDrw9
	yctInAtPM6gZDBC+BvaQq+PTYV0fnHhAiiZFXwIuixz7Ae2Cn9dOtT/5VBuNN0X7TsGlK8p7uH+2d
	iiBkF3MZYZYggkfcBdomFd6fZmCnfQ6546invErYbr0XwjF0FaZyc+Pv+NtECsK0gj66EsrwuHWp+
	OIAxJ+AAkQMUZE1hVze7lvIglnWfAsWW1j0Uj6EES/5TZqnLNkDgSp0R3AZzjRioCdhG9cC2p5MJg
	jCy0PS2A4WlNCYvQGdXoQwESm5M+sJYty1vDmARtGi7QSnnzKG7FVOtG7hNmylPnU26svOrzHXFH6
	Yh49BaoNjCfqQEoIBBUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVVwv-0004Cv-KE; Tue, 28 May 2019 06:51:05 +0000
Received: from mail-eopbgr30067.outbound.protection.outlook.com ([40.107.3.67]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVVwJ-0002ni-JS
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 06:50:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=reQXhSdzXXzSnx7OBELEvMx/Xtj2iiUXJo6auPEr6Hg=;
 b=Xnxc8SBTVFgqEGbqHCkfSS5Gi39FlyviMeqVwPGCui4mwa5UnE5IZ7KsTZyBfRBY5cHaPYrzFMg8YP+r7QUCaCaZdfuVOhST93cnLB9uoWpOPGVuNLnUhaK1LTQPRvExHF6H46s8aJ2p7v9IQ8Bj17krzuktCfxTwRdV+GbXmYI=
Received: from AM6PR04MB5781.eurprd04.prod.outlook.com (20.179.3.19) by
 AM6PR04MB5495.eurprd04.prod.outlook.com (20.178.93.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.15; Tue, 28 May 2019 06:50:20 +0000
Received: from AM6PR04MB5781.eurprd04.prod.outlook.com
 ([fe80::6491:59e7:6b25:2993]) by AM6PR04MB5781.eurprd04.prod.outlook.com
 ([fe80::6491:59e7:6b25:2993%7]) with mapi id 15.20.1922.021; Tue, 28 May 2019
 06:50:19 +0000
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
Subject: [PATCHv6 3/6] dt-bindings: PCI: Add NXP Layerscape SoCs PCIe Gen4
 controller
Thread-Topic: [PATCHv6 3/6] dt-bindings: PCI: Add NXP Layerscape SoCs PCIe
 Gen4 controller
Thread-Index: AQHVFSGduJV+3DUVW0q38Rx/FbLeYw==
Date: Tue, 28 May 2019 06:50:19 +0000
Message-ID: <20190528065129.8769-4-Zhiqiang.Hou@nxp.com>
References: <20190528065129.8769-1-Zhiqiang.Hou@nxp.com>
In-Reply-To: <20190528065129.8769-1-Zhiqiang.Hou@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK2PR02CA0128.apcprd02.prod.outlook.com
 (2603:1096:202:16::12) To AM6PR04MB5781.eurprd04.prod.outlook.com
 (2603:10a6:20b:ad::19)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=zhiqiang.hou@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0582dab8-3ac0-4741-1b47-08d6e338bfb6
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:AM6PR04MB5495; 
x-ms-traffictypediagnostic: AM6PR04MB5495:
x-microsoft-antispam-prvs: <AM6PR04MB5495FCA984CBC68B7E70D889841E0@AM6PR04MB5495.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 00514A2FE6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(6029001)(39860400002)(396003)(376002)(366004)(136003)(346002)(199004)(189003)(2501003)(6486002)(86362001)(6116002)(6436002)(66066001)(6512007)(2201001)(386003)(2906002)(53936002)(25786009)(3846002)(7416002)(4326008)(71200400001)(71190400001)(66476007)(54906003)(11346002)(81156014)(73956011)(64756008)(66556008)(50226002)(8676002)(316002)(5660300002)(81166006)(8936002)(110136005)(305945005)(76176011)(102836004)(52116002)(186003)(26005)(36756003)(68736007)(6506007)(7736002)(256004)(446003)(478600001)(486006)(1076003)(99286004)(66946007)(66446008)(2616005)(476003)(14454004)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB5495;
 H:AM6PR04MB5781.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Q8XszmcMJRs6bz3f8AvBXC4wXC0kwoLfFWHqr3/oOXeGvQZJZHKMD2Gxxop6BOx+w8/rmBJTEEV579yn+sosSFuvZ0ILvmWlXU6W/ZJc05xRNsyXWKG2hjDCQsC8R2f4sQ9rrKrpIEPOQHeqBX5IDCuZtYPux03ckbRRvyYOR6qzItNAc8W9L94klBZjl/0X2jfAORHp9AgLe1HrjwlTklUTGAvM/RudtUjRHz3Ugo8q+Md4sjSNTqC+lZrFi2uwwonGSlJT95kmo6lu3aWNdBUMuhDbmeGYmU4jq1NZKuoQuH2VYtHxOi2CpEHsSu0j3+TCBM9gkMMnbvY60o30lMU55bbFJ30rae4Hd4377evhGP87wnqBS7cAQX2eaftx0tRomtmhLH8yAE2E7MW5BEYehfkZIMNh8r7mhsIeAuw=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0582dab8-3ac0-4741-1b47-08d6e338bfb6
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2019 06:50:19.8337 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zhiqiang.hou@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5495
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_235027_965616_CB79ABB0 
X-CRM114-Status: GOOD (  16.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
V6:
 - Change the file name layerscape-pci-gen4.txt to layerscape-pcie-gen4.txt.

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
index c066128d69ec..725a58953ee1 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -12020,6 +12020,14 @@ L:	linux-arm-kernel@lists.infradead.org
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
 M:	Will Deacon <will.deacon@arm.com>
 L:	linux-pci@vger.kernel.org
-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
