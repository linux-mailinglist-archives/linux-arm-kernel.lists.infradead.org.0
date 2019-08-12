Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A601E8A0B4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 16:24:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pWCdDyFPMo5WZ9+O7HfsGt47ecMx2GFI9mZRK5PS7ds=; b=uutgwcVJMIJizZ
	uwlkMNtm0tTqD5KrWon2nAMBQCuo+ZPkuqjsprRLuVi4GkN9yChZAsTsWep+Oq1CTdyv58C8eB/RS
	l+Zj5lLiRYeb20WoejcX5oVz1X0ZVlVr38JgZyMAT3zlIGVOR4JmNOqMlZccFQME4qFLSFBPVF7sF
	nBY08FIgkjzez1Tg+wC0qk/9pas8lYqJ/rItIcqLXLaqvGB9PYtyX2kHqJNBOm+fJnEAvQPg3q3AO
	4p/arQHsxmJ7rtwXzAPa3YrkE/oyiAQC3sIGTsj3W/QCxi3pvA2WiredoMLEoNyZaSEDzJFWEGdsI
	4X/3Z3S/makeH/ivK+KA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxBF0-0003N2-1s; Mon, 12 Aug 2019 14:24:06 +0000
Received: from mail-ve1eur01on0711.outbound.protection.outlook.com
 ([2a01:111:f400:fe1f::711]
 helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxBCV-0001e3-Rj
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 14:21:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DlK+arUDOV/84Lxy1+spe/iP1diRVUiaGVrOr73QGmwtsr2psUaNltE6hebQ1u3T3X44DHBM3ZSVZy9UuH/9fJNIq24xQ2eZNKi8uWLvxctl3iN6FCqxWGzcTyXjRot/4oVWDJfNfbBLee1mkgTc2kHMLlKvTjn3T+bOxGSeSxyUA+uO48iAS7IPbd6+5OuIfCI8ckEZdKOVqWz2wxnM8KDx1yXfq9qPk4RczUV4UkkC9YlNLR/KTMc2AxZoiq8V17ZKdu+OUAxfAx3G03gqYOfqebXwJO5zX+WOaq+xNI1PtQYVjcRg5Ex5jMjoDudoMJf28Uk4PMybVp5bm7Xztw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B0BdRznFxAUhNxrspkTK7rwiM+GJQy59F2gJy2dJvFk=;
 b=k5OkZZHR8CiUxrU1WbQYTFYiqNmD7iaj5nP6ja0MCaj1H8WpgQLcKVoVmmn1i3KVWWTSQulZQGa0OOHLYf9doXWcIBLJw7CEsjJrAY5mRHbXcW93bcW9r35YnaWFbo4xcmlvbx4wgVhMTZgjQQ00nfqiOeqhVsTk40e2YpE5moEpw9NKn29WE5RGTKbIENalxDyV0po3wvn40n/gmSigssv97H0Lew7/xPiIDEaX8LUF4U0L/GsZCrGrLxBNz4r2qzPXHxGF0ucFlFDz9/5vL0BDxYl0FVTSOk2Tkr22ivin7KP6QU9H16TdEhDjWQTXVlsfNZbynYD14dyiEnXTfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B0BdRznFxAUhNxrspkTK7rwiM+GJQy59F2gJy2dJvFk=;
 b=cXuOVtHnO0I8TIb90QA77ueAJ4ehRUuhP34PNWDlTDLQKdgJoC5TEkeo9PxKnfl7sdeUaqq3+UE198tCUUV/ERrznKA0ZiON9P1JZ0wwKeYK5BJeiYJP/ikxYChDpI4IF2+bwgjlKx/ZmRlxbYXOkJBwestxHlu0qLlmfRDOWvk=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB2942.eurprd05.prod.outlook.com (10.175.26.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.21; Mon, 12 Aug 2019 14:21:23 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2%6]) with mapi id 15.20.2157.022; Mon, 12 Aug 2019
 14:21:23 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: Marcel Ziswiler <marcel.ziswiler@toradex.com>, Max Krummenacher
 <max.krummenacher@toradex.com>, "stefan@agner.ch" <stefan@agner.ch>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, =?iso-8859-2?Q?Michal_Vok=E1=E8?=
 <michal.vokac@ysoft.com>, Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v4 06/21] ARM: dts: imx7-colibri: add GPIO wakeup key
Thread-Topic: [PATCH v4 06/21] ARM: dts: imx7-colibri: add GPIO wakeup key
Thread-Index: AQHVURk3eaP9B74GN0+d3QWKMOWx0g==
Date: Mon, 12 Aug 2019 14:21:23 +0000
Message-ID: <20190812142105.1995-7-philippe.schenker@toradex.com>
References: <20190812142105.1995-1-philippe.schenker@toradex.com>
In-Reply-To: <20190812142105.1995-1-philippe.schenker@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1P194CA0055.EURP194.PROD.OUTLOOK.COM
 (2603:10a6:803:3c::44) To VI1PR0502MB3965.eurprd05.prod.outlook.com
 (2603:10a6:803:23::29)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.22.0
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2405a16f-9c0a-41dc-1770-08d71f305a40
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB2942; 
x-ms-traffictypediagnostic: VI1PR0502MB2942:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0502MB2942F6671D13FD34E8E938AFF4D30@VI1PR0502MB2942.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 012792EC17
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(136003)(39840400004)(346002)(366004)(396003)(199004)(189003)(5660300002)(54906003)(110136005)(316002)(478600001)(6486002)(86362001)(2201001)(66066001)(53936002)(6116002)(1076003)(3846002)(2906002)(4326008)(25786009)(66446008)(64756008)(66556008)(66946007)(66476007)(6436002)(8676002)(11346002)(476003)(2616005)(446003)(256004)(81166006)(81156014)(2501003)(44832011)(6512007)(14444005)(486006)(50226002)(71200400001)(71190400001)(7416002)(8936002)(36756003)(52116002)(7736002)(305945005)(99286004)(102836004)(386003)(14454004)(76176011)(186003)(6506007)(26005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB2942;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: HEDVro1QxJZ41i8TOh3Jt+7VUKAUTar499Zd/0VBi0V4CRI1nPTU7Tsw6WqAt6Fh+v2bHG+FIMRWh+JCdU9TprmR+uV6U3VlzpvybPnvDFU9uN5+uOEZa5+A7J24d6lbXJNET3OUsGlHn3o0IW9B3Bx5bXQ0VgbeINWQzqK4lhvtPrPu0QmLDAgOwa9jxDz/UQOLhGe7ymZp2UiONnNagWOg50CO4BiQerP2AgY14qRaTAQomjC3T7dqSc3RHt6tnL3XvzRo0Snmj8ID/wHlnICHUomE3+TFahVScoOwRCe/iz10NBrLPPsEkJBWYuGCpDI/K0i9WblndvQcXvZYbu+bR9F7hJNDgiP1UP3JuhhYI+bRfYtTc2Im2bk/+994pMdPWyM9fQyawgzkA73M8kPhqXjKZiVdeQRDqdUotfo=
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2405a16f-9c0a-41dc-1770-08d71f305a40
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2019 14:21:23.1504 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CPJxbupaE/jfbhCv/YZYMvQmYAK1peuORlY/sgA5oQYL++0V+nkl+1YRKn67kGrRyG82t7U4aj4+gcZEpIvofxVYEolygMLX/HEmk00ejLc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB2942
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_072132_171011_B950D05D 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1f:0:0:0:711 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Stefan Agner <stefan.agner@toradex.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Stefan Agner <stefan.agner@toradex.com>

Add wakeup GPIO key which is able to wake the system from sleep
modes (e.g. Suspend-to-Memory).

Signed-off-by: Stefan Agner <stefan.agner@toradex.com>
Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
Acked-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>

---

Changes in v4:
- Add Marcel Ziswiler's Ack

Changes in v3: None
Changes in v2: None

 arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi | 14 ++++++++++++++
 arch/arm/boot/dts/imx7-colibri.dtsi         |  7 ++++++-
 2 files changed, 20 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi b/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
index 3f2746169181..d4dbc4fc1adf 100644
--- a/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
+++ b/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
@@ -52,6 +52,20 @@
 		clock-frequency = <16000000>;
 	};
 
+	gpio-keys {
+		compatible = "gpio-keys";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_gpiokeys>;
+
+		power {
+			label = "Wake-Up";
+			gpios = <&gpio1 1 GPIO_ACTIVE_HIGH>;
+			linux,code = <KEY_WAKEUP>;
+			debounce-interval = <10>;
+			gpio-key,wakeup;
+		};
+	};
+
 	panel: panel {
 		compatible = "edt,et057090dhu";
 		backlight = <&bl>;
diff --git a/arch/arm/boot/dts/imx7-colibri.dtsi b/arch/arm/boot/dts/imx7-colibri.dtsi
index cab40d22d24e..5347ed38acb2 100644
--- a/arch/arm/boot/dts/imx7-colibri.dtsi
+++ b/arch/arm/boot/dts/imx7-colibri.dtsi
@@ -741,12 +741,17 @@
 
 	pinctrl_gpio_lpsr: gpio1-grp {
 		fsl,pins = <
-			MX7D_PAD_LPSR_GPIO1_IO01__GPIO1_IO1	0x59
 			MX7D_PAD_LPSR_GPIO1_IO02__GPIO1_IO2	0x59
 			MX7D_PAD_LPSR_GPIO1_IO03__GPIO1_IO3	0x59
 		>;
 	};
 
+	pinctrl_gpiokeys: gpiokeysgrp {
+		fsl,pins = <
+			MX7D_PAD_LPSR_GPIO1_IO01__GPIO1_IO1	0x19
+		>;
+	};
+
 	pinctrl_i2c1: i2c1-grp {
 		fsl,pins = <
 			MX7D_PAD_LPSR_GPIO1_IO05__I2C1_SDA	0x4000007f
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
