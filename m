Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C9481B022
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 08:03:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+diAkqj0kUFCw7D5ssrlDAs+PwA91n/iyIxqnD6sSTM=; b=s0/pi6J1VFQMeO
	z8uI+SEBqWlXZWfwwHFVvxnl8HqMcrVebtjPCg/jvTQySRtancfshCSdRZeje4tO3Jrhs3OCbcnmO
	IRs951L5zkG8YE3yEbsGriLslzg57mEHnslUrfkYhFXwhugiQ/FPtH48UwL5IGcQl3AEfU5uPNMTJ
	AjBcZf2D143MGZaFiVTpdXC2Z0XmaeA1kIMU1U4S7m7NNpYekmXkX/3IpAch0KSiLOKwokVQSQBNe
	19AbF6nrSg4c1EKaRRmf7HL7qUzS2iugN1CtPB+hvODyg9DcJcmBBR3p96ESHeMgmm0GVJlKEceek
	WUTlnb9wDNwUXBV24djw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ43X-0002xy-IL; Mon, 13 May 2019 06:03:23 +0000
Received: from mail-eopbgr130078.outbound.protection.outlook.com
 ([40.107.13.78] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ435-0002Uf-O1
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 06:02:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ABHmtw39zTfJb3ZO5p9ireZvQG6VKZx4muSUv+l+5dQ=;
 b=V0pYeihgIqS0cjSVaMVP17xUatMoamUylOggFBJVAy2MW/lZPQILy0V42Ryp1JwQHh0UZAFgg6/tXA5Sp7JqTKxm9FcaeDVjK8uH3MGhrSJ6PGcOKzc5RUCB43c5kzg/zZbor6HZPy4hMBucWEFHXTukJkQEg1MhZE2BoUPuHhk=
Received: from VI1PR0401MB2496.eurprd04.prod.outlook.com (10.168.65.10) by
 VI1PR0401MB2654.eurprd04.prod.outlook.com (10.168.66.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.20; Mon, 13 May 2019 06:02:49 +0000
Received: from VI1PR0401MB2496.eurprd04.prod.outlook.com
 ([fe80::5e3:7122:7d0e:7fb7]) by VI1PR0401MB2496.eurprd04.prod.outlook.com
 ([fe80::5e3:7122:7d0e:7fb7%3]) with mapi id 15.20.1878.024; Mon, 13 May 2019
 06:02:49 +0000
From: Pankaj Bansal <pankaj.bansal@nxp.com>
To: Wolfgang Grandegger <wg@grandegger.com>, Marc Kleine-Budde
 <mkl@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>, Leo Li
 <leoyang.li@nxp.com>
Subject: [PATCH 2/2] arm64: dts: fsl: ls1028a: add flexcan node
Thread-Topic: [PATCH 2/2] arm64: dts: fsl: ls1028a: add flexcan node
Thread-Index: AQHVCVF+qxXKE0JBqU+wKSOu6xIvOg==
Date: Mon, 13 May 2019 06:02:49 +0000
Message-ID: <20190513112612.11036-3-pankaj.bansal@nxp.com>
References: <20190513112612.11036-1-pankaj.bansal@nxp.com>
In-Reply-To: <20190513112612.11036-1-pankaj.bansal@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BMXPR01CA0096.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:54::36) To VI1PR0401MB2496.eurprd04.prod.outlook.com
 (2603:10a6:800:56::10)
x-mailer: git-send-email 2.17.1
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pankaj.bansal@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [92.120.1.69]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 85610163-11db-4c63-91c5-08d6d768a0c6
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0401MB2654; 
x-ms-traffictypediagnostic: VI1PR0401MB2654:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <VI1PR0401MB2654C323607FD592A3F8C7C4F10F0@VI1PR0401MB2654.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3631;
x-forefront-prvs: 0036736630
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(396003)(39860400002)(136003)(366004)(346002)(199004)(189003)(53936002)(86362001)(316002)(386003)(6506007)(1076003)(6486002)(6306002)(6512007)(99286004)(76176011)(44832011)(5660300002)(8676002)(8936002)(81156014)(68736007)(54906003)(110136005)(81166006)(71200400001)(71190400001)(50226002)(52116002)(2616005)(478600001)(66066001)(446003)(73956011)(186003)(476003)(256004)(14444005)(966005)(11346002)(66556008)(2906002)(14454004)(66446008)(66946007)(66476007)(486006)(36756003)(64756008)(6636002)(26005)(3846002)(25786009)(6116002)(7736002)(6436002)(305945005)(102836004)(4326008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0401MB2654;
 H:VI1PR0401MB2496.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: k4+Kfxd/eXzTVO6kCSkAxAaDUQT6Fx6lpUyZdqtukGWogIjpExGpIuONMv1LwaabajLOw2NbZU0yczSha18ZfuNxbAGXfecJpJejjFSmCspa+G12vqJG3gEdP6jTLOE5AYbF07DYY3/FupYghNJn9Xf0qPDglSl5qaYWXLE79PirtATzSoGW/urJPTCHyJTEf0/EDDwGAQe2MIdRQY7HWekvP86P2JD6R3ygYWyMZgf/DWyLE2EyRII9OGr1HEVhAtXl1kc5PNKNCOQTD2ad0cjH8xrIQTJ0N5gPLS465+FJyINbd2l92xMjFtTQSIg0KmyjqpTks6D5AjFEF3eu1cBUjxo2bBJ9GWUJwTitsJVSusu4n2ae+z+xjq8u+nMhlTax/DtwjK8LVVWuXZJ0ewkWxXW2/5TyaguuU55ozEY=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 85610163-11db-4c63-91c5-08d6d768a0c6
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2019 06:02:49.6434 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2654
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_230256_010827_1F7C92A0 
X-CRM114-Status: GOOD (  12.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.78 listed in list.dnswl.org]
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
Cc: Pankaj Bansal <pankaj.bansal@nxp.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-can@vger.kernel.org" <linux-can@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add flexcan node in LS1028A SOC file as well as in QDS and RDB files.
The device tree bindings used can be referred from
Documentation/devicetree/bindings/net/can/fsl-flexcan.txt

Signed-off-by: Pankaj Bansal <pankaj.bansal@nxp.com>
---

Notes (dts):
    Dependencies:
    - https://www.spinics.net/lists/linux-can/msg01562.html

 .../boot/dts/freescale/fsl-ls1028a-qds.dts   | 10 +++++++-
 .../boot/dts/freescale/fsl-ls1028a-rdb.dts   | 18 +++++++++++++-
 .../boot/dts/freescale/fsl-ls1028a.dtsi      | 22 +++++++++++++++++-
 3 files changed, 47 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts b/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts
index 14c79f4691ea..c1895be5d523 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts
@@ -2,7 +2,7 @@
 /*
  * Device Tree file for NXP LS1028A QDS Board.
  *
- * Copyright 2018 NXP
+ * Copyright 2018-2019 NXP
  *
  * Harninder Rai <harninder.rai@nxp.com>
  *
@@ -34,6 +34,14 @@
 	};
 };
 
+&can0 {
+	status = "okay";
+};
+
+&can1 {
+	status = "okay";
+};
+
 &duart0 {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts b/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts
index f86b054a74ae..7dc75d584ada 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts
@@ -2,7 +2,7 @@
 /*
  * Device Tree file for NXP LS1028A RDB Board.
  *
- * Copyright 2018 NXP
+ * Copyright 2018-2019 NXP
  *
  * Harninder Rai <harninder.rai@nxp.com>
  *
@@ -64,6 +64,22 @@
 	};
 };
 
+&can0 {
+	status = "okay";
+
+	can-transceiver {
+		max-bitrate = <5000000>;
+	};
+};
+
+&can1 {
+	status = "okay";
+
+	can-transceiver {
+		max-bitrate = <5000000>;
+	};
+};
+
 &duart0 {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
index 2896bbcfa3bb..016121e86d4d 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
@@ -2,7 +2,7 @@
 /*
  * Device Tree Include file for NXP Layerscape-1028A family SoC.
  *
- * Copyright 2018 NXP
+ * Copyright 2018-2019 NXP
  *
  * Harninder Rai <harninder.rai@nxp.com>
  *
@@ -219,6 +219,26 @@
 			status = "disabled";
 		};
 
+		can0: can@2180000 {
+			compatible = "fsl,ls1028ar1-flexcan",
+				     "fsl,lx2160ar1-flexcan";
+			reg = <0x0 0x2180000 0x0 0x10000>;
+			interrupts = <GIC_SPI 21 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&sysclk>, <&clockgen 4 1>;
+			clock-names = "ipg", "per";
+			status = "disabled";
+		};
+
+		can1: can@2190000 {
+			compatible = "fsl,ls1028ar1-flexcan",
+				     "fsl,lx2160ar1-flexcan";
+			reg = <0x0 0x2190000 0x0 0x10000>;
+			interrupts = <GIC_SPI 22 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&sysclk>, <&clockgen 4 1>;
+			clock-names = "ipg", "per";
+			status = "disabled";
+		};
+
 		duart0: serial@21c0500 {
 			compatible = "fsl,ns16550", "ns16550a";
 			reg = <0x00 0x21c0500 0x0 0x100>;
-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
