Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65899B4D2
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 04:53:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lda6/tFCgrkVvHz0v7zi2tU4B67iT21f6xg36GIogm4=; b=clla4WvjPFHnqL
	yFIVK/Bdz1Ca5mgFOhE7FJH4RWgjNZCaWXdGVkiHBnWj5H2yCg9i2rbTNkAr9k5WUPRZG+n41tGi7
	bcB0c3FEw7KpGXHn53y5Dj2byKgf3ErBjqCeP/r7jVJa5rWetKMVBmKbaSAuyw97X4BkrYFJ+M2bu
	I8vekQ2lPGUFEVVYb8I9JDDFgTGcehaKq5O7dTJR8b6B6t1o3BzvQIqpC6fepxsKnogvrlfpO6tVx
	/YJfj7xCr6UhsuimeQ/AVweAJl8f46bnYkiYHg5fptKh5BtofKd8cHsKMR2SWyC6FVNwDd0D7ehs2
	YsFQBBmhGz0+B05HYzyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKZw7-0003nH-Gk; Sun, 28 Apr 2019 02:53:03 +0000
Received: from mail-ve1eur01on0624.outbound.protection.outlook.com
 ([2a01:111:f400:fe1f::624]
 helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKZv5-0002Oy-Td
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 02:52:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c6obrrsZ3MZjOxH5eUE6YoGJ6t4sgXDau2XwbkCnODg=;
 b=j0UoMD5IBBq7Bw+vBLyoPGR9WfmDMJMOyOPV7lk1h8cHYBje6f+Z+ZhcD351DGBt39+yEY56FPIEkb4noyB+w3c0u0I/rKuWyIb9mVwXfRMdzBsRRQUJ0dQHwhCTnSPoelLoni4IqzycuEpflQW86DhuAsXOGN/I7x9Bp2mTt08=
Received: from VI1PR04MB5327.eurprd04.prod.outlook.com (20.177.52.16) by
 VI1PR04MB3184.eurprd04.prod.outlook.com (10.170.229.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.15; Sun, 28 Apr 2019 02:51:36 +0000
Received: from VI1PR04MB5327.eurprd04.prod.outlook.com
 ([fe80::4923:8ad8:62c1:3e61]) by VI1PR04MB5327.eurprd04.prod.outlook.com
 ([fe80::4923:8ad8:62c1:3e61%5]) with mapi id 15.20.1835.015; Sun, 28 Apr 2019
 02:51:36 +0000
From: Peter Chen <peter.chen@nxp.com>
To: "shawnguo@kernel.org" <shawnguo@kernel.org>, "balbi@kernel.org"
 <balbi@kernel.org>
Subject: [PATCH 7/7] ARM: dts: imx7ulp-evk: enable USBOTG1 support
Thread-Topic: [PATCH 7/7] ARM: dts: imx7ulp-evk: enable USBOTG1 support
Thread-Index: AQHU/W1KDse2wTopTEeZG0ORLjRYqw==
Date: Sun, 28 Apr 2019 02:51:34 +0000
Message-ID: <20190428024847.5046-8-peter.chen@nxp.com>
References: <20190428024847.5046-1-peter.chen@nxp.com>
In-Reply-To: <20190428024847.5046-1-peter.chen@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.14.1
x-clientproxiedby: HK0PR01CA0015.apcprd01.prod.exchangelabs.com
 (2603:1096:203:92::27) To VI1PR04MB5327.eurprd04.prod.outlook.com
 (2603:10a6:803:60::16)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peter.chen@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 311e4d6e-eefd-40f6-899a-08d6cb846ca0
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB3184; 
x-ms-traffictypediagnostic: VI1PR04MB3184:
x-microsoft-antispam-prvs: <VI1PR04MB318472E1A51E700C2582C9038B380@VI1PR04MB3184.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2043;
x-forefront-prvs: 0021920B5A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(396003)(376002)(39860400002)(346002)(366004)(189003)(199004)(6436002)(5660300002)(8936002)(36756003)(6486002)(26005)(52116002)(14454004)(71200400001)(99286004)(71190400001)(6116002)(76176011)(186003)(2906002)(110136005)(1076003)(54906003)(316002)(102836004)(6506007)(386003)(81156014)(25786009)(2501003)(3846002)(73956011)(66946007)(4326008)(66446008)(66556008)(66476007)(64756008)(8676002)(81166006)(305945005)(97736004)(68736007)(53936002)(6512007)(486006)(7736002)(66066001)(478600001)(50226002)(446003)(11346002)(256004)(2616005)(476003)(86362001)(44832011)(473944003)(414714003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB3184;
 H:VI1PR04MB5327.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ypdYbzetxt8FqEGFFQmayP9vrydhRw0hz3tdFaAPDGpBTU7ghIW116RWWUMXNZljYb4R9U8VR5yxVAb394eIFK4Qbwidd3CZYnudh55U3+ZUApSQRkvAC9dosWc6WqKz+OA3hR2YuQiVICoYXLhl33Fg+VlXtK1a2CVBlHEr0CJpWUO3Fl8pyW773UPUaZBTvjuRXnQGglgjearh8N6acUkrkCIYdxqrFykt08Y+Ojg2fFUH8G2qoCeVbtb1w1A2Eh8Nqp7Nr+u+KuSbj+jAeJJMN4I5TRSOHkQ8BSJsR1RkKnX0iTOokNdLsqSRKtE1+o2kU4dniGYcchy2XIKmfOHyfUobxSdcg+pGxA3bg5zW9OmH6sFbF5AulJtc1mNBfHE6v05kUbrFB0NiNVBhCG+sdTc0KHMZ73877A8Qsac=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 311e4d6e-eefd-40f6-899a-08d6cb846ca0
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2019 02:51:34.0597 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB3184
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_195200_547534_4923AD9A 
X-CRM114-Status: GOOD (  12.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1f:0:0:0:624 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Peter Chen <peter.chen@nxp.com>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable USBOTG1 support for evk board, it is dual-role function
port.

Signed-off-by: Peter Chen <peter.chen@nxp.com>
---
 arch/arm/boot/dts/imx7ulp-evk.dts | 35 +++++++++++++++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/arch/arm/boot/dts/imx7ulp-evk.dts b/arch/arm/boot/dts/imx7ulp-evk.dts
index a09026a6d22e..c8a56a2ae9a5 100644
--- a/arch/arm/boot/dts/imx7ulp-evk.dts
+++ b/arch/arm/boot/dts/imx7ulp-evk.dts
@@ -22,6 +22,17 @@
 		reg = <0x60000000 0x40000000>;
 	};
 
+	reg_usb_otg1_vbus: regulator-usb-otg1-vbus {
+		compatible = "regulator-fixed";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_usbotg1_vbus>;
+		regulator-name = "usb_otg1_vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpio = <&gpio_ptc 0 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+
 	reg_vsd_3v3: regulator-vsd-3v3 {
 		compatible = "regulator-fixed";
 		regulator-name = "VSD_3V3";
@@ -40,6 +51,17 @@
 	status = "okay";
 };
 
+&usbotg1 {
+	vbus-supply = <&reg_usb_otg1_vbus>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usbotg1_id>;
+	srp-disable;
+	hnp-disable;
+	adp-disable;
+	over-current-active-low;
+	status = "okay";
+};
+
 &usdhc0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_usdhc0>;
@@ -57,6 +79,19 @@
 		bias-pull-up;
 	};
 
+	pinctrl_usbotg1_vbus: otg1vbusgrp {
+		fsl,pins = <
+			IMX7ULP_PAD_PTC0__PTC0		0x20000
+		>;
+	};
+
+	pinctrl_usbotg1_id: otg1idgrp {
+		fsl,pins = <
+			IMX7ULP_PAD_PTC13__USB0_ID	0x10003
+			IMX7ULP_PAD_PTC16__USB1_OC2	0x10003
+		>;
+	};
+
 	pinctrl_usdhc0: usdhc0grp {
 		fsl,pins = <
 			IMX7ULP_PAD_PTD1__SDHC0_CMD	0x43
-- 
2.14.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
