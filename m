Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1EF21ED6C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 13:09:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8Me1jSAG6lBw+5F0AzZv4zjqqbckd0w71t40sAcHwJk=; b=Kt1N2h1QfxWbq6
	z4ICOGzwG4IVnO7HJyLVdOa3iKUzhOhIbDGKm3UbJXqiS7OharOrSxxlbXVh5Mwc28e/cUPqHTDc1
	Ybqkv07zs2wOenecqkDwuU2D5Wz2f4wH0bARi7Q7SNpfEyMdF8Uc0IZdhw62narAqUG3dy1ti1DkV
	9Ce/7Hmx3A/+p27418LLx1sDzqEuSCAzcfaiC86VU/zHIn+NQONu18/IBvRl1Zcp4iDBpi+bI961M
	G3ZT8I/CRWRpsFRS4a2bGxMtNGhwUkw/3qo3HBV5zh4I2ewG05kETZ5xAab/WN/eIH5i6A+5hc605
	7sGQX+kFVkbJ2Ar3kX/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQrmz-000667-TM; Wed, 15 May 2019 11:09:37 +0000
Received: from mail-eopbgr80089.outbound.protection.outlook.com ([40.107.8.89]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQrmr-0005yw-Mu
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 11:09:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iuKaf0YLQKzzPf65tVXQwoD4oJ9AU/hYa0gu93qoVA8=;
 b=cK8aSljNR7iceTUeeXE4r4wwtTxpnocmcudv7RbSlsEscSpcO3L7KqLdQety8Hgxm8REtQZPcLKJegcFUi3gOBtc+9jvPodJF3gcp2om2aHKQCf1/UslsUa2t//I2kEAm1kovWVsFo77JFJrkCC2Ivy492uabuxdH6jbVWLEc7g=
Received: from VI1PR04MB3310.eurprd04.prod.outlook.com (10.170.231.148) by
 VI1PR04MB5792.eurprd04.prod.outlook.com (20.178.204.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Wed, 15 May 2019 11:09:25 +0000
Received: from VI1PR04MB3310.eurprd04.prod.outlook.com
 ([fe80::8c6f:6261:7877:9de8]) by VI1PR04MB3310.eurprd04.prod.outlook.com
 ([fe80::8c6f:6261:7877:9de8%4]) with mapi id 15.20.1878.024; Wed, 15 May 2019
 11:09:25 +0000
From: Xiaowei Bao <xiaowei.bao@nxp.com>
To: "shawnguo@kernel.org" <shawnguo@kernel.org>, Leo Li <leoyang.li@nxp.com>, 
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: [PATCHv2] arm64: dts: ls1028a: add flexspi nodes
Thread-Topic: [PATCHv2] arm64: dts: ls1028a: add flexspi nodes
Thread-Index: AQHVCw6ogMFRF8ssNEKztKIHvtwUnw==
Date: Wed, 15 May 2019 11:09:25 +0000
Message-ID: <20190515110924.13726-1-xiaowei.bao@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK2PR03CA0052.apcprd03.prod.outlook.com
 (2603:1096:202:17::22) To VI1PR04MB3310.eurprd04.prod.outlook.com
 (2603:10a6:802:f::20)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=xiaowei.bao@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1b8a44bf-5f21-4a2d-a1c4-08d6d925ca5d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB5792; 
x-ms-traffictypediagnostic: VI1PR04MB5792:
x-microsoft-antispam-prvs: <VI1PR04MB5792ABDC2F6BAFB7F6268689F5090@VI1PR04MB5792.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:415;
x-forefront-prvs: 0038DE95A2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(136003)(396003)(366004)(39860400002)(346002)(199004)(189003)(64756008)(66556008)(66066001)(66946007)(25786009)(256004)(66476007)(2906002)(6436002)(73956011)(66446008)(2201001)(305945005)(86362001)(36756003)(6512007)(316002)(2501003)(102836004)(6506007)(386003)(53936002)(8676002)(50226002)(1076003)(486006)(44832011)(3846002)(6116002)(81156014)(186003)(110136005)(26005)(2616005)(476003)(52116002)(99286004)(5660300002)(68736007)(6486002)(71190400001)(71200400001)(478600001)(4326008)(7736002)(81166006)(8936002)(14454004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5792;
 H:VI1PR04MB3310.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: FnUyb50JPdpDGYLBOFG5DRG+eSKys5HlXoINpN9bymTOHULFzkBaX/PinaSgl34OTfH/YP2xcZ5TtGc5Z8lvj4jWGzxjuz4p89n5M0vHSm3zup0yxnQ7YDQFvctMIDeyR8eCCr/FRz039Ahph032gc2P+jEt9HZI6KAHEI7kqkzcRde9rl96gVXcn3TK6QUK2gRGPlvnPBG4+LL1PHbcGYG9bYc6Ad6Fs2VWyOrsRehanjz/RD7jRypZH+jKLu5gGhvuS1CgOuHTYAgRnlyV30PjaXUSmNwuLs5bkTHQ4bFLcpAkMDvwROxo/RdwJinGqO6z/WwD+rP4n7fqDY9Y4LTmfwqsPjfwyWeGZaqJg2JOjBQ3plIHGHrbP2n1ywAQIO/bZq3Cs3DLiq6t8j+0A+yoLpGO2DLFQTvVkheDIDo=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b8a44bf-5f21-4a2d-a1c4-08d6d925ca5d
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2019 11:09:25.5067 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5792
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_040929_845040_736790F1 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.89 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Xiaowei Bao <xiaowei.bao@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Xiaowei Bao <xiaowei.bao@nxp.com>

Add fspi node property for LS1028A SoC for FlexSPI driver.
Property added for the FlexSPI controller and for the connected
slave device for the LS1028ARDB and LS1028AQDS target.
This is having one SPI-NOR flash device, mt35xu02g connected at
CS0.

Signed-off-by: Xiaowei Bao <xiaowei.bao@nxp.com>
---
v2:
 - modify the commit message and the dts format.

 arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts |   15 +++++++++++++++
 arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts |   15 +++++++++++++++
 arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi    |   12 ++++++++++++
 3 files changed, 42 insertions(+), 0 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts b/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts
index 5bcd491..6e12806 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts
@@ -158,6 +158,21 @@
 	};
 };
 
+&fspi {
+	status = "okay";
+	mt35xu02g: flash@0 {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "spansion,m25p80";
+		m25p,fast-read;
+		spi-max-frequency = <20000000>;
+		reg = <0>;
+		/* The following setting enables 1-1-8 (CMD-ADDR-DATA) mode */
+		spi-rx-bus-width = <8>; /* 8 SPI Rx lines */
+		spi-tx-bus-width = <1>; /* 1 SPI Tx line */
+	};
+};
+
 &sai1 {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts b/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts
index 25d2370..5d39616 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts
@@ -136,6 +136,21 @@
 	};
 };
 
+&fspi {
+	status = "okay";
+	mt35xu02g: flash@0 {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "spansion,m25p80";
+		m25p,fast-read;
+		spi-max-frequency = <20000000>;
+		reg = <0>;
+		/* The following setting enables 1-1-8 (CMD-ADDR-DATA) mode */
+		spi-rx-bus-width = <8>; /* 8 SPI Rx lines */
+		spi-tx-bus-width = <1>; /* 1 SPI Tx line */
+	};
+};
+
 &duart0 {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
index ba71a33..a27cd60 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
@@ -109,6 +109,18 @@
 		};
 	};
 
+	fspi: spi@20c0000 {
+		compatible = "nxp,lx2160a-fspi", "simple-bus";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		reg = <0x0 0x20c0000 0x0 0x10000>,
+		    <0x0 0x20000000 0x0 0x10000000>;
+		reg-names = "FSPI", "FSPI-memory";
+		interrupts = <0 25 0x4>; /* Level high type */
+		clocks = <&clockgen 4 3>, <&clockgen 4 3>;
+		clock-names = "fspi_en", "fspi";
+	};
+
 	soc: soc {
 		compatible = "simple-bus";
 		#address-cells = <2>;
-- 
1.7.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
