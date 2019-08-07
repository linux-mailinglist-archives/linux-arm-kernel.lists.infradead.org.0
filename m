Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6B648475E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 10:29:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jqnNv/KaloYIW/v691WzvkUeB4DLowY2krldhfH/bgc=; b=miyn4ccElYbkmI
	f7hjz+2h4LdlAW4ihM7SqYsc5WBh+pmUwcXotsm1EPdLIzDSqWlehlTxpMDE9WaI45NrBiwaudNQl
	8HaV2zT2wgPlvpZbkUZI5T/zKsJhBbYQn/T9DcqJtkteoV5MhGQvPJSKt3JaMAhfxpdBnVaaxzEOa
	FjRApXSDzKTt2bp8kGEpJQYWQgT+OTM/kWCkfeXd57zEGUShi9AAE6z4nezAlV3FMrq7yVZoZOpj/
	cPA37zIpIo5GTZOjowLpbxianvOi2bYIyI2V+bzpcw0E7/g3+xHq26bG29IMxoWHQwGDM3/ma4nC6
	/9lV5cZc28R2ywWVwGtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvHJZ-0004eh-R5; Wed, 07 Aug 2019 08:28:57 +0000
Received: from mail-eopbgr130133.outbound.protection.outlook.com
 ([40.107.13.133] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvHH7-0002et-IL
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 08:26:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ktpFhSHxwlBRkNI06VK5nAlO/3ZeREopdxmASqz2tSkFeMtSACJJEZ+cxvCTIyJ2EQaFl/aFOR2wvhkFTg5BGMmJPgs8nZ3dphGo1EPT2O9culEik1UU83NorhXpWpsyMhrVQwDWKictT0HE9ks6r/PsOtxV5mlVfEz6TX88mEx7cHlFXglQMyRbk+g+LAWQFaIM/uq11MZnpInURRAtjJdB3Uz6CF7NAn2zgC1J9129Ul53jsyEL12KqHYMEK+HVpegJRFqC2d7TWORe/aF4KgWmIeXfvIBgOG0l1GaxW5JSVSfnKQdydMum1BodX/49rm8jZo1ppJYfUn4Ww9Fyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tybhqeOF4fZssoHdu14wtOn6a6G8MyqgshtOhrxnAMI=;
 b=Due3JJAtSv3Xsd+ebT79FqHi58XpnlYx0rpQUuU5ZRxvH+EojE7kcqjO5nihgyeOA/wBfKhFRgz4bZqV4li4H/LYXUmJP8uVPEdrkdWoW9KW0eQ2ykJkPKonKfZLXx4eHHkCppsZxAYeSih79l8tVOLZXMk/N5NdvbsXDGOGV04JNVH/12Rc0QM6/dQl0J+PugOS3GirqGDY1zY/bUCoB2jZOX5DbW43VNdm6CUKLaFhd/PtudVSUCnVk8hfo7iXblJLsWL8R8zO62ZK0mhp8LGLeKlOhh0ANdFHoQZyyrHkZ3W8BTu5ArnhKIAipYAuJUdCRMPtfaCD/QwNYXcfmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=toradex.com;dmarc=pass action=none
 header.from=toradex.com;dkim=pass header.d=toradex.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tybhqeOF4fZssoHdu14wtOn6a6G8MyqgshtOhrxnAMI=;
 b=H5nySGIQ2MuhJ6k8x9MVhEs/3BKNL5dPbiCZIBTsjKnyiIWX084DfuZBDcgK3/i3rJiu2D3M22yvoFtUEdOEvhVs8t1xX9DN6JHNQj5FUbmObAnELKSgMt586crrTU3/9+/OyrVFSp79SZ4KnRYYU6p6e5h8QRvX+iRfFEc8yyc=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB3614.eurprd05.prod.outlook.com (52.134.7.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.16; Wed, 7 Aug 2019 08:26:17 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2%6]) with mapi id 15.20.2157.015; Wed, 7 Aug 2019
 08:26:17 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: Marcel Ziswiler <marcel.ziswiler@toradex.com>, Max Krummenacher
 <max.krummenacher@toradex.com>, "stefan@agner.ch" <stefan@agner.ch>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, =?iso-8859-2?Q?Michal_Vok=E1=E8?=
 <michal.vokac@ysoft.com>, Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v3 06/21] ARM: dts: imx7-colibri: add GPIO wakeup key
Thread-Topic: [PATCH v3 06/21] ARM: dts: imx7-colibri: add GPIO wakeup key
Thread-Index: AQHVTPnIH+pC0dkadkScKPC1LLl3mQ==
Date: Wed, 7 Aug 2019 08:26:17 +0000
Message-ID: <20190807082556.5013-7-philippe.schenker@toradex.com>
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
x-ms-office365-filtering-correlation-id: db49f099-a24c-45de-fbfc-08d71b10eb24
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB3614; 
x-ms-traffictypediagnostic: VI1PR0502MB3614:
x-microsoft-antispam-prvs: <VI1PR0502MB361475F8363A864D55DF3402F4D40@VI1PR0502MB3614.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 01221E3973
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(376002)(396003)(39850400004)(136003)(366004)(199004)(189003)(305945005)(14444005)(6116002)(26005)(81156014)(76176011)(36756003)(3846002)(6486002)(86362001)(6512007)(478600001)(25786009)(71190400001)(2906002)(7416002)(81166006)(256004)(316002)(71200400001)(2201001)(44832011)(53936002)(7736002)(110136005)(8936002)(54906003)(52116002)(66446008)(64756008)(14454004)(99286004)(476003)(102836004)(8676002)(6436002)(1076003)(66556008)(5660300002)(6506007)(2501003)(4326008)(66946007)(486006)(446003)(11346002)(66066001)(68736007)(50226002)(186003)(66476007)(2616005)(386003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB3614;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: DuKUqfaxjdKFlCtGnE/yCgTQHNm+BIyxhvBAmqp8zIsHnn6/m0vivmu8ETmAk6H3cgveIz76kwktxxuYQonhPCI2NDo2YdLB0n4tT/KXwAgO3Q+npk10CoM9GA7niIQLKSFsTPlMP5+Q8Oo8AFQ6vhUqcX/2VcwagB1//Sm4DcnDYBcw+kHK8FJgiavq0hBB3vHiP3PbktBvbhuJTu5YB7PwiJKrN7YT/nBLDGzVuJlJCGdU7WcQrEiFgA75ZKW9bn5gOsCAsMz0e5+IiDfRwIryC/PHe4zYvYm21zYFyjJGqM6S0Pbb5JiIj/EbS/BAwjcV3+zzH/OnndKticWL3wMroRuusYU0rn0qxnal3N1cKEof5zED+ZOgWMJ1xp/CPJN663yOHmlP+S/rnWczBZkxjGA6q0JFrBB123Au8vk=
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: db49f099-a24c-45de-fbfc-08d71b10eb24
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2019 08:26:17.7119 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: W3vD0bXlGXmWlORWNi93G/EONSAHaDNefT2WX3Xz44VLSMInhz8PB5r2/gqa4FEoATgJsOm3J3uzpfVN5npFqkfRGkP5s6JpYo3i/caztdM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3614
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_012625_778403_98F131E6 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.133 listed in list.dnswl.org]
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
---

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
index 2480623c92ff..16d1a1ed1aff 100644
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
