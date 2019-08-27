Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F41089E8F5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 15:19:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=89CI8x1piTDb/bHtpXHXV9c+rIQZeitkZig5CDRsI2E=; b=WHpbh04VFzrtNK
	1ovmSwOkJ3/V0gzRs5SjZaC1Js0/hVHM4mKtT18o8sOLzySF/zZffgHEtD6ZWVTbLIkvzSHNAfJDQ
	4fzuEiJHexCEKjd2a9MmgDRSuCeYkhOhZ5t1JlgeT3rvQ7Vdme0S4Io6ZD/fabcQuEa+7XDlu98PG
	R3QZ3Mjh3ru8ltCxlNBJp7dJXG2ynAmZHRAKbs9pR1R5qXkrlRbPmzCI+2kvS/LxcZn7ABlNQxm2t
	hreGuEmlHlK7RVaBWJJfP/TurqzU9xl7H0FIcCF/UH3uEO3Ui+gy3ltAkGU1gPdV1RJkEAck6kcJx
	5s1wwVsCgi4Jng3TUbPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2bNB-0002bC-LP; Tue, 27 Aug 2019 13:18:57 +0000
Received: from mail-eopbgr50114.outbound.protection.outlook.com
 ([40.107.5.114] helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2bMf-0002Ml-NU
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 13:18:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RHsTv/hu/exAol3JCdeAz0CYOOn3GA70DxYvKg12593ZAqCv5GNPwFMxarH7FAysE4Q577jdTD3xELCvwmzP5hdPe0jM7p2L+0yXCs4dEsiCZr4AKVKi0NUm8vqc2xWRrcARJBzrKRRgp1iq0pzBoMviZ2l6TLnNilSmnOwyM3TiOiQ16NSh4m3iW9OftWhQkjXKPsrq100ivvJr6/kA+hG3farye+OUTtG188A0i/AnkmNcHezomcRIbwoBOdPyzQmFGDeKPNkmvnChZeYMKC5x5zX7W90Ty1a1PsNEKKXwyn0mv3hwVV9RpVTvP5O54u9FV/WWPuL2oEUCQowgug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SnrsHGTXKNpzrvD/LD+qtZ9nF871IyK7mqtMED2R7HU=;
 b=KZVGZpzg6QUfDpcnsL/z1oGabj9xa53eezc+jl8UOhQDwsNZs7R9JFOFXGO9Oa66Py/gXvZ8BbhxV07zTePG9RD3ovzszow+2Rp6oATaQqnPmjMQX11Htc110IAZ+9dtDFF8EvnzHJtb/3ilwQ8mZw2aMhHj7V6gCPysm0sHOOCwWqGuqatrXuCAhp7qRM9PTgxlayo0ZIJTwQBXyxSEFr2UmkUHPo8foWuqTZxaiLGIs4nr6/OvcOPTPWptgFHSNTVufoDh2ObkGvvcG3iQWzZp0CEOPD9ctGiqT+/4jNXjvRvedYety6fyAu8/7WZ0yJKPGy/ik2Mw0XaJ3Wzv0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SnrsHGTXKNpzrvD/LD+qtZ9nF871IyK7mqtMED2R7HU=;
 b=gb+UV5jpVcmzQRbdak8hINcTkXyEy6ot+FTVWXXo9OH/44dlmL02VbI3hblIiyGpk6nNlU26FzloudtN5fh9/rQB2H5CCFfhSy4KA93PKHk8Aj4rBWsL0+9zlLH0LMn9AaMKcA7j5FuNq48eVb185j5PdcTszj5q/SBL2Md/Q8k=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB3872.eurprd05.prod.outlook.com (52.134.5.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Tue, 27 Aug 2019 13:18:19 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::f59f:a307:9c53:63b9]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::f59f:a307:9c53:63b9%6]) with mapi id 15.20.2199.021; Tue, 27 Aug 2019
 13:18:18 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: Marcel Ziswiler <marcel.ziswiler@toradex.com>, Max Krummenacher
 <max.krummenacher@toradex.com>, "stefan @ agner . ch" <stefan@agner.ch>,
 "devicetree @ vger . kernel . org" <devicetree@vger.kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, =?iso-8859-2?Q?Michal_Vok=E1=E8?=
 <michal.vokac@ysoft.com>, Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v5 01/13] ARM: dts: imx7-colibri: add GPIO wakeup key
Thread-Topic: [PATCH v5 01/13] ARM: dts: imx7-colibri: add GPIO wakeup key
Thread-Index: AQHVXNnk4+XpkBU1SkuLbM+G5tdEAw==
Date: Tue, 27 Aug 2019 13:18:18 +0000
Message-ID: <20190827131806.6816-2-philippe.schenker@toradex.com>
References: <20190827131806.6816-1-philippe.schenker@toradex.com>
In-Reply-To: <20190827131806.6816-1-philippe.schenker@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR0102CA0031.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:14::44) To VI1PR0502MB3965.eurprd05.prod.outlook.com
 (2603:10a6:803:23::29)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.23.0
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1b7aaa73-c878-466b-7337-08d72af1067d
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB3872; 
x-ms-traffictypediagnostic: VI1PR0502MB3872:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0502MB3872B32AD7828ABFA1821D7DF4A00@VI1PR0502MB3872.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 0142F22657
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(376002)(366004)(136003)(346002)(39850400004)(189003)(199004)(8936002)(66946007)(2906002)(11346002)(5660300002)(50226002)(54906003)(110136005)(316002)(14454004)(1076003)(14444005)(256004)(64756008)(6506007)(386003)(7736002)(478600001)(36756003)(53936002)(66556008)(6116002)(66066001)(66446008)(3846002)(6436002)(76176011)(476003)(2616005)(446003)(486006)(6512007)(26005)(305945005)(102836004)(6486002)(71200400001)(186003)(8676002)(86362001)(81166006)(4326008)(71190400001)(81156014)(66476007)(25786009)(99286004)(7416002)(52116002)(44832011);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB3872;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: +wCfqMbb0meOzfF8m7iKMspwvl+NmxMgTd7MoeAreFBbMT0MaRu2sWlFc0JDNfrsJ4k63Gyivz3lNzN19x6XgJcQdwLT5PyBgnxYnA1xJrZt1z7P4fo1I/ZCmiv78Xej4HV4/7AyInw6m7Vj7bCTw7HA756UDnzNfw1BdF6uxkS5wS7XyPqQPFOyywi0eroRNI+os+dzBdPOzwYXK5Ek3wC4ApkojO6k/7HEXpx8FJ8GzuMi6avw2r40NNWkMHX9QrIbUn2J6Auj8GipREyNXHYXcfD2603R9EzgHXWP8NX73dY3PtEi2LVOF/dXgKhxGwBHRil2z/u9yO5IJtFsgVVqVsXcubj/lMocbEYm+dq4b2TR++m6TQrhoUxQsZFw5lCTL/PQZCktPCPD4rWx6wEx+KxodXueecf2IKqr+qs=
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b7aaa73-c878-466b-7337-08d72af1067d
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Aug 2019 13:18:18.4092 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6SmUh/ZOP6/Q8GW0WlqZ0fi83dHWzG1ICn19zB97Z4DqiQOMfScD387bdflniv//VFfh9Lc14WF1tDlrYTSdIpVFCvmLcRUicx8Z7/yAYXA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3872
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_061825_769721_956CEB99 
X-CRM114-Status: GOOD (  12.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.114 listed in list.dnswl.org]
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

Changes in v5:
- changed legacy gpio-key,wakeup to wakeup-source

Changes in v4:
- Add Marcel Ziswiler's Ack

Changes in v3: None
Changes in v2: None

 arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi | 14 ++++++++++++++
 arch/arm/boot/dts/imx7-colibri.dtsi         |  7 ++++++-
 2 files changed, 20 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi b/arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi
index 3f2746169181..45c4e721115a 100644
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
+			wakeup-source;
+		};
+	};
+
 	panel: panel {
 		compatible = "edt,et057090dhu";
 		backlight = <&bl>;
diff --git a/arch/arm/boot/dts/imx7-colibri.dtsi b/arch/arm/boot/dts/imx7-colibri.dtsi
index 895fbde4d433..b72940e7d00b 100644
--- a/arch/arm/boot/dts/imx7-colibri.dtsi
+++ b/arch/arm/boot/dts/imx7-colibri.dtsi
@@ -682,12 +682,17 @@
 
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
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
