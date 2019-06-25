Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13221527B0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 11:13:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OYwnOBCJJ3wFPF5H8cQEWpr+jLzpp8rhPwJv+ek26Uc=; b=cUYxHVCFcIuu/b
	pK7lZ+ve422VvPV1G5xpmuFfsE00uu4zfu4M77yCkicZxIXPMwX1XchY21ZEa9i4XGz5I4LFO9ucF
	6vZlnWtkgvVABYrhezoBwPKgfwuQNkACY6/I7B297qSpjvpwSUKMPDQhV0sLSgDW9yDnOogCAlVJv
	d39ssWXQwxFuzBiodJjjkghUXC9RmgUAXccsSONoIyPbzTCwpcacFQ8aO58wblOLs4MkcsRSqETQC
	s9Ob4PigNQkj+gtIY9jqsSyhwCPUSdEkG2xYPUlbQ41Ls//UDmpPn6N5tMxpRNV+6uhdO1EmX1lY8
	lRJjB3ZS5MuF1GbqcQ2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfhVY-0001KC-Vf; Tue, 25 Jun 2019 09:12:57 +0000
Received: from mail-eopbgr130050.outbound.protection.outlook.com
 ([40.107.13.50] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfhSS-0006Ya-47
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 09:09:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JSTkOB8rPH0XXbaWUKC3AZFWu5d42g1Kp2edqxu12wA=;
 b=CP+MBfYZzbMIaXkmERDkO08+jHzOtjJ1NuUMMa7FiNOLF0YqPsxVIW3qfaR360izccNk2naoohwBW/ex3slJZW2sqPBcxFGcxAjIzT2FfC5jk1jNQ/uVxvmaK503AwpSfhCJnQK5u/wmqw13PCGRedarNK7RhqctP02UIsT4DmI=
Received: from DB8PR04MB6747.eurprd04.prod.outlook.com (20.179.250.159) by
 DB8PR04MB6746.eurprd04.prod.outlook.com (20.179.251.86) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Tue, 25 Jun 2019 09:09:42 +0000
Received: from DB8PR04MB6747.eurprd04.prod.outlook.com
 ([fe80::93a:4344:1120:4ca0]) by DB8PR04MB6747.eurprd04.prod.outlook.com
 ([fe80::93a:4344:1120:4ca0%6]) with mapi id 15.20.2008.017; Tue, 25 Jun 2019
 09:09:42 +0000
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
Subject: [PATCHv7 6/7] arm64: dts: lx2160a: Add PCIe controller DT nodes
Thread-Topic: [PATCHv7 6/7] arm64: dts: lx2160a: Add PCIe controller DT nodes
Thread-Index: AQHVKzW5rkf8cXY5VEWTE9t+ZrKitw==
Date: Tue, 25 Jun 2019 09:09:41 +0000
Message-ID: <20190625091039.18933-7-Zhiqiang.Hou@nxp.com>
References: <20190625091039.18933-1-Zhiqiang.Hou@nxp.com>
In-Reply-To: <20190625091039.18933-1-Zhiqiang.Hou@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK0PR03CA0116.apcprd03.prod.outlook.com
 (2603:1096:203:b0::32) To DB8PR04MB6747.eurprd04.prod.outlook.com
 (2603:10a6:10:10b::31)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=zhiqiang.hou@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bd9b7373-18e7-421e-366e-08d6f94cdb83
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB8PR04MB6746; 
x-ms-traffictypediagnostic: DB8PR04MB6746:
x-microsoft-antispam-prvs: <DB8PR04MB67461B9BA73DD358880DD37484E30@DB8PR04MB6746.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:363;
x-forefront-prvs: 0079056367
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(136003)(39860400002)(396003)(366004)(346002)(189003)(199004)(4326008)(386003)(446003)(26005)(102836004)(3846002)(478600001)(71190400001)(186003)(11346002)(71200400001)(7416002)(6116002)(25786009)(66946007)(50226002)(110136005)(8936002)(54906003)(81166006)(8676002)(305945005)(81156014)(316002)(2201001)(5660300002)(66556008)(7736002)(66476007)(66446008)(64756008)(1076003)(66066001)(486006)(2616005)(2501003)(73956011)(68736007)(14444005)(6436002)(6486002)(256004)(6512007)(86362001)(6506007)(53936002)(36756003)(14454004)(99286004)(2906002)(52116002)(476003)(76176011)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR04MB6746;
 H:DB8PR04MB6747.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: bh6++hH7aw4vhVvukdTznyS/Gf7IxPfS10Fq90nMzJRdia+02Crja3L7Y/vWfbpRLd3nN8U3P9fZ11Bbszqnwlzyq8hKTcv7ivPD0t9QMXbh3vNdPi+DeuWApiCXhbkj6s9nxvSUVo6idB8aPjE6D4KJ4uXwXnz52CEZ5BsrcwzdTNynARKcHphbsf6pzvdk3gZ1Gv02kMh2bpUS5/FtyFb6WU99cVYWB4uP2bwzqEWcZYmjnG1M+pHgC1r011yUNnzVjOc2f3u1xBBQBRT01xr+75KU3vjE7BLKfVgrWf07USv746NUG5drNL3e4xn6duqrjVpVUFpOYEYwFvEoIflKnQFdSYrb0NA8fm7T+pfRZWHjt48tImVN5a0ZxXT3mR31ML8oPBJdvvJZ5f69o2eWrmC/Ziy5K3IrVeduRFY=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bd9b7373-18e7-421e-366e-08d6f94cdb83
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jun 2019 09:09:41.9761 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zhiqiang.hou@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6746
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_020945_368057_6B7C40D0 
X-CRM114-Status: GOOD (  10.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.50 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

The LX2160A integrated 6 PCIe Gen4 controllers.

Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
Reviewed-by: Minghuan Lian <Minghuan.Lian@nxp.com>
---
V7:
 - No change.

 .../arm64/boot/dts/freescale/fsl-lx2160a.dtsi | 163 ++++++++++++++++++
 1 file changed, 163 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
index e6fdba39453c..591192699c94 100644
--- a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
@@ -972,5 +972,168 @@
 				};
 			};
 		};
+
+		pcie@3400000 {
+			compatible = "fsl,lx2160a-pcie";
+			reg = <0x00 0x03400000 0x0 0x00100000   /* controller registers */
+			       0x80 0x00000000 0x0 0x00001000>; /* configuration space */
+			reg-names = "csr_axi_slave", "config_axi_slave";
+			interrupts = <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH>, /* AER interrupt */
+				     <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH>, /* PME interrupt */
+				     <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH>; /* controller interrupt */
+			interrupt-names = "aer", "pme", "intr";
+			#address-cells = <3>;
+			#size-cells = <2>;
+			device_type = "pci";
+			dma-coherent;
+			apio-wins = <8>;
+			ppio-wins = <8>;
+			bus-range = <0x0 0xff>;
+			ranges = <0x82000000 0x0 0x40000000 0x80 0x40000000 0x0 0x40000000>; /* non-prefetchable memory */
+			msi-parent = <&its>;
+			#interrupt-cells = <1>;
+			interrupt-map-mask = <0 0 0 7>;
+			interrupt-map = <0000 0 0 1 &gic 0 0 GIC_SPI 109 IRQ_TYPE_LEVEL_HIGH>,
+					<0000 0 0 2 &gic 0 0 GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH>,
+					<0000 0 0 3 &gic 0 0 GIC_SPI 111 IRQ_TYPE_LEVEL_HIGH>,
+					<0000 0 0 4 &gic 0 0 GIC_SPI 112 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
+		pcie@3500000 {
+			compatible = "fsl,lx2160a-pcie";
+			reg = <0x00 0x03500000 0x0 0x00100000   /* controller registers */
+			       0x88 0x00000000 0x0 0x00001000>; /* configuration space */
+			reg-names = "csr_axi_slave", "config_axi_slave";
+			interrupts = <GIC_SPI 113 IRQ_TYPE_LEVEL_HIGH>, /* AER interrupt */
+				     <GIC_SPI 113 IRQ_TYPE_LEVEL_HIGH>, /* PME interrupt */
+				     <GIC_SPI 113 IRQ_TYPE_LEVEL_HIGH>; /* controller interrupt */
+			interrupt-names = "aer", "pme", "intr";
+			#address-cells = <3>;
+			#size-cells = <2>;
+			device_type = "pci";
+			dma-coherent;
+			apio-wins = <8>;
+			ppio-wins = <8>;
+			bus-range = <0x0 0xff>;
+			ranges = <0x82000000 0x0 0x40000000 0x88 0x40000000 0x0 0x40000000>; /* non-prefetchable memory */
+			msi-parent = <&its>;
+			#interrupt-cells = <1>;
+			interrupt-map-mask = <0 0 0 7>;
+			interrupt-map = <0000 0 0 1 &gic 0 0 GIC_SPI 114 IRQ_TYPE_LEVEL_HIGH>,
+					<0000 0 0 2 &gic 0 0 GIC_SPI 115 IRQ_TYPE_LEVEL_HIGH>,
+					<0000 0 0 3 &gic 0 0 GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>,
+					<0000 0 0 4 &gic 0 0 GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
+		pcie@3600000 {
+			compatible = "fsl,lx2160a-pcie";
+			reg = <0x00 0x03600000 0x0 0x00100000   /* controller registers */
+			       0x90 0x00000000 0x0 0x00001000>; /* configuration space */
+			reg-names = "csr_axi_slave", "config_axi_slave";
+			interrupts = <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>, /* AER interrupt */
+				     <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>, /* PME interrupt */
+				     <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>; /* controller interrupt */
+			interrupt-names = "aer", "pme", "intr";
+			#address-cells = <3>;
+			#size-cells = <2>;
+			device_type = "pci";
+			dma-coherent;
+			apio-wins = <256>;
+			ppio-wins = <24>;
+			bus-range = <0x0 0xff>;
+			ranges = <0x82000000 0x0 0x40000000 0x90 0x40000000 0x0 0x40000000>; /* non-prefetchable memory */
+			msi-parent = <&its>;
+			#interrupt-cells = <1>;
+			interrupt-map-mask = <0 0 0 7>;
+			interrupt-map = <0000 0 0 1 &gic 0 0 GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH>,
+					<0000 0 0 2 &gic 0 0 GIC_SPI 120 IRQ_TYPE_LEVEL_HIGH>,
+					<0000 0 0 3 &gic 0 0 GIC_SPI 121 IRQ_TYPE_LEVEL_HIGH>,
+					<0000 0 0 4 &gic 0 0 GIC_SPI 122 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
+		pcie@3700000 {
+			compatible = "fsl,lx2160a-pcie";
+			reg = <0x00 0x03700000 0x0 0x00100000   /* controller registers */
+			       0x98 0x00000000 0x0 0x00001000>; /* configuration space */
+			reg-names = "csr_axi_slave", "config_axi_slave";
+			interrupts = <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>, /* AER interrupt */
+				     <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>, /* PME interrupt */
+				     <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>; /* controller interrupt */
+			interrupt-names = "aer", "pme", "intr";
+			#address-cells = <3>;
+			#size-cells = <2>;
+			device_type = "pci";
+			dma-coherent;
+			apio-wins = <8>;
+			ppio-wins = <8>;
+			bus-range = <0x0 0xff>;
+			ranges = <0x82000000 0x0 0x40000000 0x98 0x40000000 0x0 0x40000000>; /* non-prefetchable memory */
+			msi-parent = <&its>;
+			#interrupt-cells = <1>;
+			interrupt-map-mask = <0 0 0 7>;
+			interrupt-map = <0000 0 0 1 &gic 0 0 GIC_SPI 124 IRQ_TYPE_LEVEL_HIGH>,
+					<0000 0 0 2 &gic 0 0 GIC_SPI 125 IRQ_TYPE_LEVEL_HIGH>,
+					<0000 0 0 3 &gic 0 0 GIC_SPI 126 IRQ_TYPE_LEVEL_HIGH>,
+					<0000 0 0 4 &gic 0 0 GIC_SPI 127 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
+		pcie@3800000 {
+			compatible = "fsl,lx2160a-pcie";
+			reg = <0x00 0x03800000 0x0 0x00100000   /* controller registers */
+			       0xa0 0x00000000 0x0 0x00001000>; /* configuration space */
+			reg-names = "csr_axi_slave", "config_axi_slave";
+			interrupts = <GIC_SPI 128 IRQ_TYPE_LEVEL_HIGH>, /* AER interrupt */
+				     <GIC_SPI 128 IRQ_TYPE_LEVEL_HIGH>, /* PME interrupt */
+				     <GIC_SPI 128 IRQ_TYPE_LEVEL_HIGH>; /* controller interrupt */
+			interrupt-names = "aer", "pme", "intr";
+			#address-cells = <3>;
+			#size-cells = <2>;
+			device_type = "pci";
+			dma-coherent;
+			apio-wins = <256>;
+			ppio-wins = <24>;
+			bus-range = <0x0 0xff>;
+			ranges = <0x82000000 0x0 0x40000000 0xa0 0x40000000 0x0 0x40000000>; /* non-prefetchable memory */
+			msi-parent = <&its>;
+			#interrupt-cells = <1>;
+			interrupt-map-mask = <0 0 0 7>;
+			interrupt-map = <0000 0 0 1 &gic 0 0 GIC_SPI 129 IRQ_TYPE_LEVEL_HIGH>,
+					<0000 0 0 2 &gic 0 0 GIC_SPI 130 IRQ_TYPE_LEVEL_HIGH>,
+					<0000 0 0 3 &gic 0 0 GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>,
+					<0000 0 0 4 &gic 0 0 GIC_SPI 132 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
+		pcie@3900000 {
+			compatible = "fsl,lx2160a-pcie";
+			reg = <0x00 0x03900000 0x0 0x00100000   /* controller registers */
+			       0xa8 0x00000000 0x0 0x00001000>; /* configuration space */
+			reg-names = "csr_axi_slave", "config_axi_slave";
+			interrupts = <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH>, /* AER interrupt */
+				     <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH>, /* PME interrupt */
+				     <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH>; /* controller interrupt */
+			interrupt-names = "aer", "pme", "intr";
+			#address-cells = <3>;
+			#size-cells = <2>;
+			device_type = "pci";
+			dma-coherent;
+			apio-wins = <8>;
+			ppio-wins = <8>;
+			bus-range = <0x0 0xff>;
+			ranges = <0x82000000 0x0 0x40000000 0xa8 0x40000000 0x0 0x40000000>; /* non-prefetchable memory */
+			msi-parent = <&its>;
+			#interrupt-cells = <1>;
+			interrupt-map-mask = <0 0 0 7>;
+			interrupt-map = <0000 0 0 1 &gic 0 0 GIC_SPI 104 IRQ_TYPE_LEVEL_HIGH>,
+					<0000 0 0 2 &gic 0 0 GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH>,
+					<0000 0 0 3 &gic 0 0 GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH>,
+					<0000 0 0 4 &gic 0 0 GIC_SPI 107 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
 	};
 };
-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
