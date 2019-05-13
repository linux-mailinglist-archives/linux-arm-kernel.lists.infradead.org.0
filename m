Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24E421B021
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 08:03:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y+4g9XLM973tds+kD4CpyRlk9r8oxfScDs1N4Pot5O4=; b=MLtOsYgv6/XufD
	56B8aisAcjacfgjnSAo7gTahQKh88o1H6cjvPEEtjC3p+dhHDOjKjg6VjqnGRsFI1G4O4nWY5eijn
	gkdEGGvF1f55zIXcfHVC+2mSJbgcVJf8Wr2+/VKBtwQwbTr0eqFfpqa8PeHPs+pJIttb0o5IvCKZq
	TW9fWmcSoabv4I23BnOPuTZkh8BQZLchaQdQFvOGBOj04kwE1BezRGLmlKI4CtCNiW2VpJFZbY3kU
	w7ZvTeJm9wJLQlRmiT9u9wlTCIhLfRCpnaa/P+A+lUZ4cuI+pxlpCpnsMg3b6hxlY4PZNeoSefv/e
	7JnZpbS1G3hSqBUcQQPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ43I-0002cZ-VR; Mon, 13 May 2019 06:03:08 +0000
Received: from mail-eopbgr130078.outbound.protection.outlook.com
 ([40.107.13.78] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ433-0002Uf-Mb
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 06:02:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kKhv4k0hZct89q2YhqXJmou4BaPK7CKzb6+Gn/ubcRw=;
 b=kDjFNLK8EdN43nJ37ATB+MihwQeJlGyBzphnBsFZA9hobVxzDbtr44D4ivAulcM90oCGelKj5PiP6Nj2ngxhXuocuwoWpzdBC7F5xYJ/w7F6DZRTOlNCaLjyJbFT7fTfFSW70i17pl47Zji+UD3Z0XhbvLPWbALJmXJFTnLlDRo=
Received: from VI1PR0401MB2496.eurprd04.prod.outlook.com (10.168.65.10) by
 VI1PR0401MB2654.eurprd04.prod.outlook.com (10.168.66.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.20; Mon, 13 May 2019 06:02:48 +0000
Received: from VI1PR0401MB2496.eurprd04.prod.outlook.com
 ([fe80::5e3:7122:7d0e:7fb7]) by VI1PR0401MB2496.eurprd04.prod.outlook.com
 ([fe80::5e3:7122:7d0e:7fb7%3]) with mapi id 15.20.1878.024; Mon, 13 May 2019
 06:02:48 +0000
From: Pankaj Bansal <pankaj.bansal@nxp.com>
To: Wolfgang Grandegger <wg@grandegger.com>, Marc Kleine-Budde
 <mkl@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>, Leo Li
 <leoyang.li@nxp.com>
Subject: [PATCH 1/2] arm64: dts: fsl: lx2160a: add flexcan node
Thread-Topic: [PATCH 1/2] arm64: dts: fsl: lx2160a: add flexcan node
Thread-Index: AQHVCVF9+LNMwm+eXEGY/yAe26EOBg==
Date: Mon, 13 May 2019 06:02:47 +0000
Message-ID: <20190513112612.11036-2-pankaj.bansal@nxp.com>
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
x-ms-office365-filtering-correlation-id: 0fe3c838-6250-4fe7-dfa4-08d6d7689fa4
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0401MB2654; 
x-ms-traffictypediagnostic: VI1PR0401MB2654:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <VI1PR0401MB265431A979D6916265ACB175F10F0@VI1PR0401MB2654.eurprd04.prod.outlook.com>
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
x-microsoft-antispam-message-info: 3mmk6XrfCm/Q96yh5B1mElH1Q8aoL58P1f5hdHD9bCqzm58t/rcQ5n2iUrGXBHRVFXSmEoKPmrRQgvVI0fTvoLZMR6Ss1JoNakgT9LJ3wyJrvKtWuJ26vMrk8qk3TOLfwFTtBu+B8xGPnHY37KdbyolSGs8jngNqGOS3P/m3gPf8+dnF7QyI4sN8MLXwDYyw11wGFun6O3LTcwFK8f9PJ5tWKwj7klE4KfLiUzUHaYAmGuc6zaINYaztqnzxKHW6ChhbUUDpPBaCUlWLmxMAiS3aDBLW9UrYab5WvV68xHHNhgnWlPdZ5pN/tM5+ASvxv1LURm3bdEh7NOph3ofwaHIs5DH17iEcAMoFt1wGftW/gg48x5m3/eHNfHR1X4rbx1UBdFztogvtt3URAf3VEqNj5a4ysMuaj7KSsdW1CKE=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0fe3c838-6250-4fe7-dfa4-08d6d7689fa4
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2019 06:02:47.8720 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2654
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_230253_736541_29BE1E67 
X-CRM114-Status: GOOD (  12.91  )
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

Add flexcan node in LX2160A SOC file as well as in QDS and RDB files.
The device tree bindings used can be referred from
Documentation/devicetree/bindings/net/can/fsl-flexcan.txt

Signed-off-by: Pankaj Bansal <pankaj.bansal@nxp.com>
---

Notes (dts):
    Dependencies:
    - https://www.spinics.net/lists/linux-can/msg01562.html

 .../boot/dts/freescale/fsl-lx2160a-qds.dts   | 10 ++++++++-
 .../boot/dts/freescale/fsl-lx2160a-rdb.dts   | 18 +++++++++++++++-
 .../boot/dts/freescale/fsl-lx2160a.dtsi      | 20 +++++++++++++++++-
 3 files changed, 45 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a-qds.dts b/arch/arm64/boot/dts/freescale/fsl-lx2160a-qds.dts
index 99a22abbe725..849edac27b61 100644
--- a/arch/arm64/boot/dts/freescale/fsl-lx2160a-qds.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a-qds.dts
@@ -2,7 +2,7 @@
 //
 // Device Tree file for LX2160AQDS
 //
-// Copyright 2018 NXP
+// Copyright 2018-2019 NXP
 
 /dts-v1/;
 
@@ -31,6 +31,14 @@
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
 &crypto {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a-rdb.dts b/arch/arm64/boot/dts/freescale/fsl-lx2160a-rdb.dts
index 9df37b159415..97cbe9e67abf 100644
--- a/arch/arm64/boot/dts/freescale/fsl-lx2160a-rdb.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a-rdb.dts
@@ -2,7 +2,7 @@
 //
 // Device Tree file for LX2160ARDB
 //
-// Copyright 2018 NXP
+// Copyright 2018-2019 NXP
 
 /dts-v1/;
 
@@ -31,6 +31,22 @@
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
 &crypto {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
index fe87204850b5..75c350927dc0 100644
--- a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
@@ -2,7 +2,7 @@
 //
 // Device Tree Include file for Layerscape-LX2160A family SoC.
 //
-// Copyright 2018 NXP
+// Copyright 2018-2019 NXP
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
@@ -581,6 +581,24 @@
 			status = "disabled";
 		};
 
+		can0: can@2180000 {
+			compatible = "fsl,lx2160ar1-flexcan";
+			reg = <0x0 0x2180000 0x0 0x10000>;
+			interrupts = <GIC_SPI 21 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&sysclk>, <&clockgen 4 7>;
+			clock-names = "ipg", "per";
+			status = "disabled";
+		};
+
+		can1: can@2190000 {
+			compatible = "fsl,lx2160ar1-flexcan";
+			reg = <0x0 0x2190000 0x0 0x10000>;
+			interrupts = <GIC_SPI 22 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&sysclk>, <&clockgen 4 7>;
+			clock-names = "ipg", "per";
+			status = "disabled";
+		};
+
 		uart0: serial@21c0000 {
 			compatible = "arm,sbsa-uart","arm,pl011";
 			reg = <0x0 0x21c0000 0x0 0x1000>;
-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
