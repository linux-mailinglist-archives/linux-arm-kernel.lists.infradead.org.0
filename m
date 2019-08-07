Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61B8884776
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 10:34:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q4PHSlNjuKTbA2wj8EBcET08AlMC1eTBm7wVj6tKimQ=; b=MAnNFT6mpmBzrW
	YCSMAODgGoZIEdmmfWaR5LZ9OlNLQT+zqRuPy3GxB8dDVeNjfmq+2R9jR4+YSNOxm1dG++ziXjV05
	OpeJv1Ul1npi2PGmkFY75/b/5mwhBVvkAQSESH5X8to8NCAXmEpQ/JgekRJQvtGyJV7Bv1+uLi13W
	v8cWo+/eYYdrmIpO0apBjWtQlR9GOLch8Dwg1OYqcndMrL/FIODNaZO4pQoIvomP2RHBO1AtSEh0G
	4fQMCH7+HMyiSktZsqxA9Z04SYXAhPzQqhb6NmRIXUZadEWdcjpnOI4LbQW/wK0Kv9MtMGHWGz0yh
	tLsxgO/s8VPUdh2fx3dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvHOs-0000ot-8O; Wed, 07 Aug 2019 08:34:26 +0000
Received: from mail-eopbgr130100.outbound.protection.outlook.com
 ([40.107.13.100] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvHHW-0002vu-JL
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 08:26:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ia7d2hRX3uDgJChaBMnT83iXQPHSVgo25N7FX8HS57Pw8StKNuo8OJBUO8G5LBNA3MUxfKwKy3srIFXWnQlfW7UlrIzDj1Xwg7jLxTxKDmYEGh9Fs3q0ZYHLYyvI88zAnJyPBTlXFrdG4wmyNWMNMaooOkmdltmXEtuQ4d2BaokUQNBJzzLFT41Kr2STTXG/dVHplpBVRDTTnBNIX4zW7VUvS01qCjOcu4yXUSvS4R6Ja98o/AUOR1EVfSnZdG5il5aora8mr5qLkTNG/hYp6CqVToP210WxNTeg2rYH48QvJi5GZsys68mfru8Y787Xqy9GnAyKhFphrSOUc6NLlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=L2+wI3VLlhtkbpyTM8u8OmWHtF9m0yE4P+D3JprtO8s=;
 b=b+NSQgNUyGHJ8As2buYrRI2z+4tuKm50i+KNtnf4Fy4f4hMT8lKUR0WMO4R4AwrXMJJ4dQl4aHZrZKiLeuEZG0PQAu0mE2d9zn96ANKWctI2Hqy5M1Zlyg03eSOjt06Ya+dNJG2FIxhoD9gUiKAGduCILrC5ToBPBspCVa/rL/QpzyLGqduK8BQ2i6SuwFu9HBM5uNVbcIPpKhCruCdT3zTiRi5+FMznBoZY5Hjn/wbQ1a3fFyVAc3bunwJpaXfLRiBJmzW3NyEqLrbF361HisschMDD+roAxa5Jt5xGkWyrGJCoVldCfyqPrzu1e4SPXDLynyH9SPqc+FN17a1PMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=toradex.com;dmarc=pass action=none
 header.from=toradex.com;dkim=pass header.d=toradex.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=L2+wI3VLlhtkbpyTM8u8OmWHtF9m0yE4P+D3JprtO8s=;
 b=GXrWcLzUtjMWSthHOQXtgILV2BG0TI14bZSeekLDTJUbQBB7SLmwI5la3UHUlfAJ1oUyIsoC7gEZIfPBjQigtbBFyny/cG/ejB78+uqJEYjlzTEk7uKpMe66YuPwYzYzFvdMeL8njU3wuupPrLXJWg+X/EAYEyP064TnvO03rnw=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB3614.eurprd05.prod.outlook.com (52.134.7.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.16; Wed, 7 Aug 2019 08:26:47 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2%6]) with mapi id 15.20.2157.015; Wed, 7 Aug 2019
 08:26:47 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: Marcel Ziswiler <marcel.ziswiler@toradex.com>, Max Krummenacher
 <max.krummenacher@toradex.com>, "stefan@agner.ch" <stefan@agner.ch>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, =?iso-8859-2?Q?Michal_Vok=E1=E8?=
 <michal.vokac@ysoft.com>, Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v3 20/21] ARM: dts: imx6ull-colibri: Add touchscreen used with
 Eval Board
Thread-Topic: [PATCH v3 20/21] ARM: dts: imx6ull-colibri: Add touchscreen used
 with Eval Board
Thread-Index: AQHVTPnauiw8XawvRE+YnPE86awA4w==
Date: Wed, 7 Aug 2019 08:26:46 +0000
Message-ID: <20190807082556.5013-21-philippe.schenker@toradex.com>
References: <20190807082556.5013-1-philippe.schenker@toradex.com>
In-Reply-To: <20190807082556.5013-1-philippe.schenker@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM4PR0101CA0044.eurprd01.prod.exchangelabs.com
 (2603:10a6:200:41::12) To VI1PR0502MB3965.eurprd05.prod.outlook.com
 (2603:10a6:803:23::29)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.22.0
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7db6327a-0899-4e26-fbc7-08d71b10fc9b
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB3614; 
x-ms-traffictypediagnostic: VI1PR0502MB3614:
x-microsoft-antispam-prvs: <VI1PR0502MB3614D47537DBAACF62B898ABF4D40@VI1PR0502MB3614.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 01221E3973
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(376002)(396003)(39850400004)(136003)(366004)(199004)(189003)(305945005)(14444005)(6116002)(26005)(81156014)(76176011)(36756003)(3846002)(6486002)(86362001)(6512007)(478600001)(25786009)(71190400001)(2906002)(7416002)(81166006)(256004)(316002)(71200400001)(2201001)(44832011)(53936002)(7736002)(110136005)(8936002)(54906003)(52116002)(66446008)(64756008)(14454004)(99286004)(476003)(102836004)(8676002)(6436002)(1076003)(66556008)(5660300002)(6506007)(2501003)(4326008)(66946007)(486006)(446003)(11346002)(66066001)(68736007)(50226002)(186003)(66476007)(2616005)(386003)(32563001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB3614;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: khSREIvXv2M1d1IO+T/NjdjTq9rOV50KCV0OUu33fR7mMZxUzsXSyRYdq7/v3zFIUABX1iKKI0r7rtY6MEU5gJrcJW5lq4b4Z3Wtpa/bHjuCeUA8nf8kmVOQCNYV8I4OcsGLgNLqdJpoYzmNF3D/SQcd4LOq9D395UXt4eso8pK5txC7q4xoLUhjnaa6Lbwhwp26QLghGzwH0lAsLW4SsrJWEKoYt7jRhbMVO56qP9RNL91vJXBKU3wc/Ek8zvanKaY7sRLJSSWVr8HfkC1E3UIESoZADIzQh7EBZo92gDwTjwmA6R2SVYf5Q0xFomNoMKisaOXt9NkpNQXwjzCzZbqO6ByWE3TEAvtG2+f6+scJ2knEz/Cccg7td9KOkU3SmeBj2gkaUWkH2lGwtXuFfQeBmilUNHXejqI0SHXGFNM=
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7db6327a-0899-4e26-fbc7-08d71b10fc9b
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2019 08:26:46.9960 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PA85rWSTzHu/v1mcGzKNFYMst0R70QE2BWUyXIp2cwAryHkWyNirCQ7jX5pkr7VMFzgLncao153DQoXfDNYcdsXauxQRGc5jSraey/bdT7I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3614
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_012650_691916_F1B7157C 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.100 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.13.100 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds the common touchscreen that is used with Toradex's
Eval Boards.

Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>

---

Changes in v3: None
Changes in v2:
- Removed f0710a, that is downstream only
- Changed to generic node name
- Better comment

 .../arm/boot/dts/imx6ull-colibri-eval-v3.dtsi | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi b/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
index d3c4809f140e..78e74bfeca1b 100644
--- a/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
+++ b/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
@@ -112,6 +112,21 @@
 &i2c1 {
 	status = "okay";
 
+	/*
+	 * Touchscreen is using SODIMM 28/30, also used for PWM<B>, PWM<C>,
+	 * aka pwm2, pwm3. so if you enable touchscreen, disable the pwms
+	 */
+	touchscreen@4a {
+		compatible = "atmel,maxtouch";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_gpiotouch>;
+		reg = <0x4a>;
+		interrupt-parent = <&gpio4>;
+		interrupts = <16 IRQ_TYPE_EDGE_FALLING>;	/* SODIMM 28 */
+		reset-gpios = <&gpio2 5 GPIO_ACTIVE_HIGH>;	/* SODIMM 30 */
+		status = "disabled";
+	};
+
 	/* M41T0M6 real time clock on carrier board */
 	m41t0m6: rtc@68 {
 		compatible = "st,m41t0";
@@ -188,3 +203,12 @@
 	sd-uhs-sdr104;
 	status = "okay";
 };
+
+&iomuxc {
+	pinctrl_gpiotouch: touchgpios {
+		fsl,pins = <
+			MX6UL_PAD_NAND_DQS__GPIO4_IO16		0x74
+			MX6UL_PAD_ENET1_TX_EN__GPIO2_IO05	0x14
+		>;
+	};
+};
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
