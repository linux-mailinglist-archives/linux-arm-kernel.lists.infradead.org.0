Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22B801C403
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 09:39:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V7GwE1PYnlUhV0aouZCidEMuCbm2ImA3FDQe+d/o4FA=; b=rFpJ6SpyY7LtFJ
	wsc+xZeaewDqQsE69rcBLRHxjzDVZGgfgvhSmjapbyxDoKJCdmaTwJ414TXXMsJP5Re0Qx3+dJyoZ
	8hWFPgkyMaZJW5vUlQhYgRCRxpLRGWgdxElYNAPzc45DvE64tHQ8EuiaL79QDeKVrI5L7HOIMkFqB
	0uAZh7avJ83yNZ+p1DXJwVqdeqT+JxIq53KMU1Z1G+Nj1WoHD1GdJ2MlhLMCqUVh3B8i3CLIb9aEg
	syag2ZDVkyf5nzZQFxxNRgBG//HKjLGXwG1Rn4V2JwS4wGceaBpwnFSjSiOd+wAhJdUtMeS0i7r1M
	5bbhV8Ql9d4qrh0KT6yQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQS28-0000py-L5; Tue, 14 May 2019 07:39:32 +0000
Received: from mail-eopbgr40048.outbound.protection.outlook.com ([40.107.4.48]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQS1T-0007vQ-KZ
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 07:39:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z+Fkz2S7BrDzHECMJTzAEpYyvjBYCr3U8FK2scz2P6g=;
 b=BnoE6gOR+8gmwBYbyAYlQlRhD60ewwkReIS6O/aRvoJSceFD/HnoCTSkFvg+Lm9it4NVty8MNkHa8CJAXjMDFviBBvf6IK4qsykmpxM1XxRNfWzcS7Kc3v1t1+BU1FM8ZzNV9Hzsr6vRCLGboqwMASZnQgXuIQiQfWjntL170XU=
Received: from VI1PR04MB5327.eurprd04.prod.outlook.com (20.177.52.16) by
 VI1PR04MB5392.eurprd04.prod.outlook.com (20.178.120.210) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Tue, 14 May 2019 07:38:21 +0000
Received: from VI1PR04MB5327.eurprd04.prod.outlook.com
 ([fe80::4923:8ad8:62c1:3e61]) by VI1PR04MB5327.eurprd04.prod.outlook.com
 ([fe80::4923:8ad8:62c1:3e61%5]) with mapi id 15.20.1878.024; Tue, 14 May 2019
 07:38:21 +0000
From: Peter Chen <peter.chen@nxp.com>
To: "shawnguo@kernel.org" <shawnguo@kernel.org>, "balbi@kernel.org"
 <balbi@kernel.org>
Subject: [PATCH v2 6/8] ARM: dts: imx7ulp: add imx7ulp USBOTG1 support
Thread-Topic: [PATCH v2 6/8] ARM: dts: imx7ulp: add imx7ulp USBOTG1 support
Thread-Index: AQHVCigBwvPXZQ0UVkuAwmjsg1TEmQ==
Date: Tue, 14 May 2019 07:38:21 +0000
Message-ID: <20190514073529.29505-7-peter.chen@nxp.com>
References: <20190514073529.29505-1-peter.chen@nxp.com>
In-Reply-To: <20190514073529.29505-1-peter.chen@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.14.1
x-clientproxiedby: HK0PR03CA0086.apcprd03.prod.outlook.com
 (2603:1096:203:72::26) To VI1PR04MB5327.eurprd04.prod.outlook.com
 (2603:10a6:803:60::16)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peter.chen@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 493f8dc9-6e1a-43ad-0f26-08d6d83f23d5
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB5392; 
x-ms-traffictypediagnostic: VI1PR04MB5392:
x-microsoft-antispam-prvs: <VI1PR04MB539237BF1D172C41499D95C58B080@VI1PR04MB5392.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:296;
x-forefront-prvs: 0037FD6480
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(396003)(136003)(376002)(346002)(39860400002)(189003)(199004)(386003)(6506007)(102836004)(7736002)(305945005)(6436002)(66946007)(26005)(316002)(6512007)(73956011)(6486002)(66446008)(64756008)(66556008)(66476007)(76176011)(11346002)(446003)(2906002)(476003)(2616005)(25786009)(4326008)(3846002)(53936002)(186003)(486006)(44832011)(86362001)(6116002)(71190400001)(71200400001)(50226002)(256004)(14444005)(66066001)(2501003)(1076003)(5660300002)(68736007)(8676002)(52116002)(99286004)(14454004)(36756003)(478600001)(8936002)(81156014)(81166006)(110136005)(54906003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5392;
 H:VI1PR04MB5327.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: y9CFtk3BdjpBmy17kzexBjRiuC0Z9KSZ0Zcnq/rb76HAqoGDs1iQMTrTclFZ+E/XC/LEB//755gZE1ZGlAxv1NBC06NAm3cHQ4gUEx1ohY+hrOiwFO+s7wnAvzL2PxjpvnlOdMM05gy0RQU3B5OMpLkOyisdOrdkx9cu3cgwo4aZf7rgsXpPdR1p66LngipeuUwAqDRQOYCDTGBFJpSMV5jVnf1vN1QEkVVJoqwmDB4edi4o8q0fwiay27iwKuXYVhktf4ckAa2KV8N/JqhvkdHUuHDPhEWNdme2jpCxCd+tY1HP09VBR6nf+tPO0/stqhY/sN8InLaUOkdKrgVNA0bPeo8IVFUkMqXskB0XDuBOgVciMrTh8UucejQ2Ts2+dduwYWCIAyEPpDjMnsRAN8WY9uCbGZIyxo1LcHKOfAY=
Content-ID: <6926689D7D7B0840AE926BC8FBB6CB14@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 493f8dc9-6e1a-43ad-0f26-08d6d83f23d5
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2019 07:38:21.8270 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5392
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_003851_990607_C8616C02 
X-CRM114-Status: GOOD (  10.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.48 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Peter Chen <peter.chen@nxp.com>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add imx7ulp USBOTG1 support.

Signed-off-by: Peter Chen <peter.chen@nxp.com>
---
 arch/arm/boot/dts/imx7ulp.dtsi | 31 +++++++++++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/arch/arm/boot/dts/imx7ulp.dtsi b/arch/arm/boot/dts/imx7ulp.dtsi
index fca6e50f37c8..60c9ea116d0a 100644
--- a/arch/arm/boot/dts/imx7ulp.dtsi
+++ b/arch/arm/boot/dts/imx7ulp.dtsi
@@ -30,6 +30,7 @@
 		serial1 = &lpuart5;
 		serial2 = &lpuart6;
 		serial3 = &lpuart7;
+		usbphy0 = &usbphy1;
 	};
 
 	cpus {
@@ -133,6 +134,36 @@
 			clock-names = "ipg", "per";
 		};
 
+		usbotg1: usb@40330000 {
+			compatible = "fsl,imx7ulp-usb", "fsl,imx6ul-usb",
+				"fsl,imx27-usb";
+			reg = <0x40330000 0x200>;
+			interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&pcc2 IMX7ULP_CLK_USB0>;
+			phys = <&usbphy1>;
+			fsl,usbmisc = <&usbmisc1 0>;
+			ahb-burst-config = <0x0>;
+			tx-burst-size-dword = <0x8>;
+			rx-burst-size-dword = <0x8>;
+			status = "disabled";
+		};
+
+		usbmisc1: usbmisc@40330200 {
+			#index-cells = <1>;
+			compatible = "fsl,imx7ulp-usbmisc", "fsl,imx7d-usbmisc",
+				"fsl,imx6q-usbmisc";
+			reg = <0x40330200 0x200>;
+		};
+
+		usbphy1: usbphy@0x40350000 {
+			compatible = "fsl,imx7ulp-usbphy",
+				"fsl,imx6ul-usbphy", "fsl,imx23-usbphy";
+			reg = <0x40350000 0x1000>;
+			interrupts = <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&pcc2 IMX7ULP_CLK_USB_PHY>;
+			#phy-cells = <0>;
+		};
+
 		usdhc0: mmc@40370000 {
 			compatible = "fsl,imx7ulp-usdhc", "fsl,imx6sx-usdhc";
 			reg = <0x40370000 0x10000>;
-- 
2.14.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
