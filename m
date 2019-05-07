Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1492115D80
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 08:35:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jcwZBPQSWJA9b8zK162tkLsHT7LDRAOKfgcPJZS5JLY=; b=GIpDrGskXb2yWU
	Q32bLl0qwSZW/niZVqGQGjd/sqlvScrCKQQ6+679p9aJYMgPzEwnUYxyXxU5eTrNupJ041xq+IUbu
	r+pgAKUAO1HJnTNsxbZX7w4SGjtg99VBiB7WojcrpM5WrvHz4k19xhy2r+cEEy18fXoD8Vzl7yjtA
	mxE71wKQYFoIwRe8LIqL5ADOtiPN9HbSXZQs9UQz5tYA6Fb2CvGv5UHqs2fxzbPMVowcgmaoovFi2
	9o+PMo15NQgZRAmBpjVLsm+nsmoBh2piFp1GdzolbMKtcwjBY687GphZtpkIv2Jt7d4zxC35hFJM9
	HkRW7SHIiKBIePZwHuCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNthN-0001OM-3e; Tue, 07 May 2019 06:35:33 +0000
Received: from mail-db5eur01on0606.outbound.protection.outlook.com
 ([2a01:111:f400:fe02::606]
 helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNtgf-00084g-Na
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 06:35:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zIqFKo67j1OLxemIF4EVaarhth6Ewg64aY1XCv684qM=;
 b=qLQnx9/GemTcvcQ5HlvMYxe9/NUOwHyppcdnIZ9fN+gCCQX70E0yZy05W6KWIvf6yRQHyvOXZX3zj4ZEeYR1VvlsGk/Ec0C+Rh0MQUqi87SnTkzTLJBsrKASijN3VU4s3lR2AlZeWMuWwvplqQUe6ybMeZMGmz9RIDvYaZYVyt0=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3771.eurprd04.prod.outlook.com (52.134.67.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Tue, 7 May 2019 06:34:37 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170%3]) with mapi id 15.20.1856.012; Tue, 7 May 2019
 06:34:37 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: [PATCH 5/5] ARM: dts: imx6sx-sdb: Assign corresponding power supply
 for LDOs
Thread-Topic: [PATCH 5/5] ARM: dts: imx6sx-sdb: Assign corresponding power
 supply for LDOs
Thread-Index: AQHVBJ7x3Esw4lVUTkihnrtILND7+A==
Date: Tue, 7 May 2019 06:34:37 +0000
Message-ID: <1557210565-4457-5-git-send-email-Anson.Huang@nxp.com>
References: <1557210565-4457-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1557210565-4457-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR0302CA0014.apcprd03.prod.outlook.com
 (2603:1096:202::24) To DB3PR0402MB3916.eurprd04.prod.outlook.com
 (2603:10a6:8:10::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ec7518c3-9aad-44f7-9d74-08d6d2b6139d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3771; 
x-ms-traffictypediagnostic: DB3PR0402MB3771:
x-microsoft-antispam-prvs: <DB3PR0402MB3771DD4275776C817075EEB4F5310@DB3PR0402MB3771.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3044;
x-forefront-prvs: 0030839EEE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(366004)(39860400002)(376002)(346002)(136003)(189003)(199004)(6486002)(66066001)(68736007)(26005)(386003)(6506007)(186003)(102836004)(86362001)(11346002)(2616005)(446003)(76176011)(110136005)(14454004)(316002)(2201001)(52116002)(2501003)(5660300002)(99286004)(6116002)(2906002)(3846002)(4326008)(6512007)(6436002)(476003)(486006)(25786009)(36756003)(256004)(53936002)(305945005)(66476007)(66556008)(64756008)(66446008)(50226002)(478600001)(81156014)(81166006)(8676002)(8936002)(71190400001)(7736002)(73956011)(66946007)(71200400001)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3771;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: B5UCuCV/Szp/u3iRvgm8rZhX6jHLVMdlCarDfKrAqdAqxYQW8RAeQpCPPcDu1faz1QQcrCy8/KlD7C+HDJQ/bsaR99A7l/fxhIqh4JnMMBshzOYYYqjZ3KVGVIVRgb5ZnkHieNC7Dd/AWrC75hz6TVEXpmVyj2cDpdwap+ONWOG2RFgOs78aXBKD2rLlXvqfMDYE7GD+iywKsUVYcKPX9YIcJFcoQzsiTB7DXhQkTXhi/fUCbFyAmbNiQsv1yY46YebdN1VinU07KA8fkzz36cN6WM11OjRrat4nUxREdljQojtFoh3F87QcajksyLYhdJ4LTfLY66GsPrZKa0vRFBZzwaGSne+SP75IJWB+bkgjZTnMIWQ2oLZyxRxYtBlcjexUo8klW6HQjNJDe9qUYOZDH2IpxOy7vpMZg+YjTJ4=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ec7518c3-9aad-44f7-9d74-08d6d2b6139d
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2019 06:34:37.7443 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3771
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_233450_366805_D389447C 
X-CRM114-Status: GOOD (  13.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe02:0:0:0:606 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On i.MX6SX SDB board, vgen6 supplies vdd1p1/vdd2p5 LDO and
sw2 supplies vdd3p0 LDO, this patch assigns corresponding power
supply for vdd1p1/vdd2p5/vdd3p0 to avoid confusion by below log:

vdd1p1: supplied by regulator-dummy
vdd3p0: supplied by regulator-dummy
vdd2p5: supplied by regulator-dummy

With this patch, the power supply is more accurate:

vdd1p1: supplied by VGEN6
vdd3p0: supplied by SW2
vdd2p5: supplied by VGEN6

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm/boot/dts/imx6sx-sdb-reva.dts | 12 ++++++++++++
 arch/arm/boot/dts/imx6sx-sdb.dts      | 12 ++++++++++++
 arch/arm/boot/dts/imx6sx.dtsi         |  6 +++---
 3 files changed, 27 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/imx6sx-sdb-reva.dts b/arch/arm/boot/dts/imx6sx-sdb-reva.dts
index 00c4854..5b3d6c10 100644
--- a/arch/arm/boot/dts/imx6sx-sdb-reva.dts
+++ b/arch/arm/boot/dts/imx6sx-sdb-reva.dts
@@ -154,3 +154,15 @@
 	enable-active-high;
 	vin-supply = <&reg_can_en>;
 };
+
+&reg_vdd1p1 {
+	vin-supply = <&vgen6_reg>;
+};
+
+&reg_vdd3p0 {
+	vin-supply = <&sw2_reg>;
+};
+
+&reg_vdd2p5 {
+	vin-supply = <&vgen6_reg>;
+};
diff --git a/arch/arm/boot/dts/imx6sx-sdb.dts b/arch/arm/boot/dts/imx6sx-sdb.dts
index 998e3e1..10f6da8 100644
--- a/arch/arm/boot/dts/imx6sx-sdb.dts
+++ b/arch/arm/boot/dts/imx6sx-sdb.dts
@@ -137,6 +137,18 @@
 	vin-supply = <&sw1a_reg>;
 };
 
+&reg_vdd1p1 {
+	vin-supply = <&vgen6_reg>;
+};
+
+&reg_vdd3p0 {
+	vin-supply = <&sw2_reg>;
+};
+
+&reg_vdd2p5 {
+	vin-supply = <&vgen6_reg>;
+};
+
 &reg_can_stby {
 	/* Transceiver EN/STBY is active low on RevB board */
 	gpio = <&gpio4 27 GPIO_ACTIVE_LOW>;
diff --git a/arch/arm/boot/dts/imx6sx.dtsi b/arch/arm/boot/dts/imx6sx.dtsi
index b16a123..bbdfdd8 100644
--- a/arch/arm/boot/dts/imx6sx.dtsi
+++ b/arch/arm/boot/dts/imx6sx.dtsi
@@ -600,7 +600,7 @@
 					     <GIC_SPI 54 IRQ_TYPE_LEVEL_HIGH>,
 					     <GIC_SPI 127 IRQ_TYPE_LEVEL_HIGH>;
 
-				regulator-1p1 {
+				reg_vdd1p1: regulator-1p1 {
 					compatible = "fsl,anatop-regulator";
 					regulator-name = "vdd1p1";
 					regulator-min-microvolt = <1000000>;
@@ -615,7 +615,7 @@
 					anatop-enable-bit = <0>;
 				};
 
-				regulator-3p0 {
+				reg_vdd3p0: regulator-3p0 {
 					compatible = "fsl,anatop-regulator";
 					regulator-name = "vdd3p0";
 					regulator-min-microvolt = <2800000>;
@@ -630,7 +630,7 @@
 					anatop-enable-bit = <0>;
 				};
 
-				regulator-2p5 {
+				reg_vdd2p5: regulator-2p5 {
 					compatible = "fsl,anatop-regulator";
 					regulator-name = "vdd2p5";
 					regulator-min-microvolt = <2250000>;
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
