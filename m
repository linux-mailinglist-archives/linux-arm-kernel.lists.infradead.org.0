Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5BEE14785
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 11:18:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4tu+NKASSd4Z8TjMxJRvMjfWrFhAmMN6G11UYMsGCYQ=; b=sGvIcWmS0/oNnu
	wwZn/UkjMnfH3SY39vTTKAqBp1rEnOkNEo8Vqw0lHWmXTqm/GXqz563iNs0QPiUpCH6iaJeX/MlwC
	EI92D4pxU+a4FUjJrpGHXJSdyXxRZG9SNW0CRAAV0ypVad650smymPmWyiL32zGbPKCb82ZHFn8UU
	hrm08WJhN12RpCJN5M06XK9Gwvv+Cwlq0vu0PqzARQGohAFmsYi/LnHSOsS4i1ErXa69XKQQIiM6q
	N9g/2J5Cs1Q/5q+nBN0vAM7izqF9yHDav78nNAykYdYiij/T8ky6l0tdkq0XwOe7ovjCoDVSokY9i
	qhBuN5xxkpqaE9zfPucQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNZlq-0004AQ-Tc; Mon, 06 May 2019 09:18:50 +0000
Received: from mail-eopbgr140070.outbound.protection.outlook.com
 ([40.107.14.70] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNZlO-0003jA-72
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 09:18:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OOu9S1mJ26iewV4E+lxu8ZiFELq1fiLb1OCj9cZi0kY=;
 b=DIjuDDNJV/JtmimmTK820spDufVFrQLehymck2tAJW2JVAl2BVf50IxPvGeMZyb+rDteWQhIg5YJmPVToixfN4xBNbsnT+CaZ/eq6j/BaR2NlFif+2DM3LRG1FIZ/Dw0/LFzPKXE8vjvDoFQso5D2zVaKXlJPsLoq9XW/O32w4k=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3833.eurprd04.prod.outlook.com (52.134.67.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.10; Mon, 6 May 2019 09:18:20 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170%3]) with mapi id 15.20.1856.012; Mon, 6 May 2019
 09:18:20 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, Leonard Crestez <leonard.crestez@nxp.com>, Jacky Bai
 <ping.bai@nxp.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-clk@vger.kernel.org"
 <linux-clk@vger.kernel.org>
Subject: [PATCH 3/3] arm64: dts: imx8mm: add clock for GPIO node
Thread-Topic: [PATCH 3/3] arm64: dts: imx8mm: add clock for GPIO node
Thread-Index: AQHVA+yl4l13mgGktUuq5WpN749wKg==
Date: Mon, 6 May 2019 09:18:20 +0000
Message-ID: <1557133994-5061-3-git-send-email-Anson.Huang@nxp.com>
References: <1557133994-5061-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1557133994-5061-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2P15301CA0023.APCP153.PROD.OUTLOOK.COM
 (2603:1096:202:1::33) To DB3PR0402MB3916.eurprd04.prod.outlook.com
 (2603:10a6:8:10::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b404f95b-f494-4aa2-2352-08d6d203c7cb
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3833; 
x-ms-traffictypediagnostic: DB3PR0402MB3833:
x-microsoft-antispam-prvs: <DB3PR0402MB3833983B51E2502C464034F2F5300@DB3PR0402MB3833.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:923;
x-forefront-prvs: 0029F17A3F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(136003)(39860400002)(396003)(346002)(376002)(189003)(199004)(446003)(486006)(68736007)(8936002)(3846002)(2906002)(99286004)(386003)(6506007)(52116002)(476003)(11346002)(76176011)(2616005)(6116002)(4326008)(7736002)(25786009)(305945005)(2201001)(110136005)(7416002)(478600001)(86362001)(316002)(81156014)(66066001)(6486002)(66946007)(66476007)(64756008)(66446008)(73956011)(14454004)(66556008)(71200400001)(71190400001)(36756003)(256004)(8676002)(186003)(6512007)(26005)(102836004)(2501003)(50226002)(6436002)(5660300002)(81166006)(53936002)(32563001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3833;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: NBA36RcCANPF/JYkdxu0ZsfEVBFx9JdflMBvmQy8njA1mxxGxeuUr6ezKUSO4grkg6jAzaeZWPmUSoE/zI5BF8ipPFjlh7F6yQr/3x3O6m1rqLhPgSzLFTuZa8OZrOj3S3W+AbUGSF+FyonFx0uNxUrRgCHs4XAxn+SaHFtlwGn9PKta9OJCYXD+VfbbLLHUtfwK0KaT8PU5C9OrZu0lcMR0SSpXICnwRKcL0LNoi83hahk+4m45DUxUT3m3b6Qx/YlVbks5fzTFGeRJrLEjlh0/G7N6u1i36Ei0kyxZHp+8yBLFhLUifrxWDd9giGgcZN+SYXaWbJbg9fHORxvwrLPnpt7LhkgvhU/DT/Rpo+q7fcIg3i7VXu5S2D6haCzEImA6JgNZwJnIIyyDSG7PY3m88gVK2lK8+l5QWdICpD8=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b404f95b-f494-4aa2-2352-08d6d203c7cb
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2019 09:18:20.0839 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3833
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_021822_684150_00EBEBB6 
X-CRM114-Status: GOOD (  12.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.70 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

i.MX8MM has clock gate for each GPIO bank, add clock info
to GPIO node for clock management.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 6b407a94..f32d4e9 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -206,6 +206,7 @@
 				reg = <0x30200000 0x10000>;
 				interrupts = <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>,
 					     <GIC_SPI 65 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX8MM_CLK_GPIO1_ROOT>;
 				gpio-controller;
 				#gpio-cells = <2>;
 				interrupt-controller;
@@ -217,6 +218,7 @@
 				reg = <0x30210000 0x10000>;
 				interrupts = <GIC_SPI 66 IRQ_TYPE_LEVEL_HIGH>,
 					     <GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX8MM_CLK_GPIO2_ROOT>;
 				gpio-controller;
 				#gpio-cells = <2>;
 				interrupt-controller;
@@ -228,6 +230,7 @@
 				reg = <0x30220000 0x10000>;
 				interrupts = <GIC_SPI 68 IRQ_TYPE_LEVEL_HIGH>,
 					     <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX8MM_CLK_GPIO3_ROOT>;
 				gpio-controller;
 				#gpio-cells = <2>;
 				interrupt-controller;
@@ -239,6 +242,7 @@
 				reg = <0x30230000 0x10000>;
 				interrupts = <GIC_SPI 70 IRQ_TYPE_LEVEL_HIGH>,
 					     <GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX8MM_CLK_GPIO4_ROOT>;
 				gpio-controller;
 				#gpio-cells = <2>;
 				interrupt-controller;
@@ -250,6 +254,7 @@
 				reg = <0x30240000 0x10000>;
 				interrupts = <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>,
 					     <GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clk IMX8MM_CLK_GPIO5_ROOT>;
 				gpio-controller;
 				#gpio-cells = <2>;
 				interrupt-controller;
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
