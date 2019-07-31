Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF3417C1C8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 14:41:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=20ViXdI5SfIXLUDmu3EDLSMImEIGPzjanx699mWE9n0=; b=bfP0eAYpmsR83o
	cKWqi1VkpGvFaRGFLJrZgtABYfa0mCs3BYD3DVurTgwNc865mhOZEvQGkcev6Drm4jEaXbRN3c/U2
	l4w+lUNr7U8qJGMbXeDXGoreE/uxpgh4wzb0K8mfdRWmJNAX3aO4NBbwPgBoPiMhhvmhVIVCBXxGS
	Ln4p962GfeG5Lo0918YGi//0roX3aVSS8RRb/5u9+Zy+bSGbAG7n5oGyrqdZPJmkSZKKxT531kE4I
	6hplg1T8eOQCSO7JqKelCrO/10aSrW5MiI+awgLsmPuu2qpW+gUvYvjTibebD/jk0oQuomlaDaMmq
	MUnushP6sioYKwfp74BQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsnvR-0002fW-UY; Wed, 31 Jul 2019 12:41:49 +0000
Received: from mail-eopbgr140132.outbound.protection.outlook.com
 ([40.107.14.132] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsnsH-0006NF-KX
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 12:38:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jq5/tOEyUQL8JIriTpniBRdBY7RJvs00XysJXf5vBmekV/tDFsV75q9XToj94bAW5QkSQ+ZWQky1r7DicmW0GlPjRTifMpXfU2DTZjO60Cw62CAG8nxrelM+yXPKjZa/DXPMlEo3G0XlT9zChjP0Rm57M4g2wRgSSdjxaEmoN2J3poeblx5pCBlx8dOfwQz6sTlj9cYkBTSiyM3eBRX956WKxaNwBDqJWf4+1sEJla7tR3kPwYiFHVwl8v1aA/NnwaEman1pPAoifH/SYpEW13r7Hp0UqRJWQLMKAv5wzLse5uqhKN6MCdschLVypsPgbH1RYQkNfk3n9WyyuT/WmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7Ai4EOMbvz+SH1K4PXOJKwJbgE9Ntryi1jNmtP5LPZE=;
 b=LBbX9Dr8++mm6r7vip4G+CheYcE5JcKTDV/83fAQSZKB8ayxYo0quS5NMy6ZJzHSzAGnNUJ83BpUWFJJA6dm/fIFn/ElpLuGfbE+4g1w655ew7q3e3BDNk/tYzcXxJXVWsUeenOQmoskOYsbOPB998DXUwZCUJWGZrMld0Wu2dUvK1dpllU7uT3TneyoYR7ltmlETQWkR/ym7Jmt8wKRSx3u8n3WnSgpK+w9zJwAcNsenAfzDH9TFQR/TiXwldmgT5TvJF2WS4PMlnLzGxINrZCn2ps3aGoVbC9X7mozzFGuH1+vlTrwFkcTlz2sD/wXY6/IokYf0C4KkY5SYZQUIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=toradex.com;dmarc=pass action=none
 header.from=toradex.com;dkim=pass header.d=toradex.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7Ai4EOMbvz+SH1K4PXOJKwJbgE9Ntryi1jNmtP5LPZE=;
 b=JdL8fs7Kdpa/0jxIe1db0u1pL37LIxUEWB+E5A6NqmfO/TrnQx9WI/epp+41pu4pI//SCIpeMWqN2qySTtu/JA/NrbVC71nDzT32Y02GjdLp5Vp1hyalWwPl/EE3zJqT0ij+KDW8UHZhGswtA6v9OfatW+G84wTPxfYKif9Y2YI=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB3648.eurprd05.prod.outlook.com (52.134.7.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.14; Wed, 31 Jul 2019 12:38:30 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2%6]) with mapi id 15.20.2115.005; Wed, 31 Jul 2019
 12:38:30 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: Marcel Ziswiler <marcel.ziswiler@toradex.com>, Max Krummenacher
 <max.krummenacher@toradex.com>, "stefan@agner.ch" <stefan@agner.ch>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, =?iso-8859-2?Q?Michal_Vok=E1=E8?=
 <michal.vokac@ysoft.com>, Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v2 14/20] ARM: dts: imx6ull-colibri: Add sleep mode to fec
Thread-Topic: [PATCH v2 14/20] ARM: dts: imx6ull-colibri: Add sleep mode to fec
Thread-Index: AQHVR5zYbKepQ6GNSUayJhQc0NNcoA==
Date: Wed, 31 Jul 2019 12:38:25 +0000
Message-ID: <20190731123750.25670-15-philippe.schenker@toradex.com>
References: <20190731123750.25670-1-philippe.schenker@toradex.com>
In-Reply-To: <20190731123750.25670-1-philippe.schenker@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR02CA0012.eurprd02.prod.outlook.com
 (2603:10a6:208:3e::25) To VI1PR0502MB3965.eurprd05.prod.outlook.com
 (2603:10a6:803:23::29)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.22.0
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 76d4d909-345f-4cf6-f1d8-08d715b3fb07
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:VI1PR0502MB3648; 
x-ms-traffictypediagnostic: VI1PR0502MB3648:
x-microsoft-antispam-prvs: <VI1PR0502MB36488303AADC82EB6AEB0E11F4DF0@VI1PR0502MB3648.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 011579F31F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(366004)(136003)(346002)(396003)(39850400004)(189003)(199004)(64756008)(66446008)(66476007)(66946007)(6512007)(476003)(66556008)(8676002)(86362001)(36756003)(44832011)(478600001)(6666004)(5660300002)(71190400001)(71200400001)(1076003)(53936002)(6486002)(486006)(6436002)(2201001)(446003)(52116002)(50226002)(11346002)(316002)(99286004)(66066001)(2616005)(305945005)(256004)(26005)(14444005)(14454004)(102836004)(7736002)(3846002)(25786009)(6116002)(76176011)(2906002)(81156014)(81166006)(68736007)(386003)(6506007)(2501003)(4326008)(8936002)(110136005)(54906003)(186003)(7416002)(32563001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB3648;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 2zbcUgx/j8eq7odW5yZkW88N8IZWT6+Qol1gWhuKyz0Ead7q92gFVabYwAGFnzAmrpJ4GWDj6Ivf24/rJFhA4yOADGne2jK0JsSsbFyfLOm+CSsKi28a/dxnOviwF6LYWlwzo7tNEMUC4AhPNisB6t51WjtvxJR36Ql6q/EJuGxPetv46IyXdp/qw/sXNfiPk0UANkjBWi4qnc1+lOQ8wfN9w0R3syFNvwJBO+9NK1ReuQMB5i2GNqQ2rbZwxZKN00LrvKM6oq3L2sUcIQMltpvYBBY7nEMhrhhWIQRihcD7weKTa7ekTMMI8Bu521RebROzpkOl1PG/Rw4S3RgvGaVeyps29IMpFeQA2S+x5fOkKOdW83D2ti7zagc9ae2RAFT8pMshLVeA2NRYvqU6Kmz5de/iMTZtjb1H3yvnCdQ=
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 76d4d909-345f-4cf6-f1d8-08d715b3fb07
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2019 12:38:25.3274 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: philippe.schenker@toradex.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3648
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_053833_687835_22378EE3 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.132 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Do not change the clock as the power for this phy is switched
with that clock.

Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
---

Changes in v2: None

 arch/arm/boot/dts/imx6ull-colibri.dtsi | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6ull-colibri.dtsi b/arch/arm/boot/dts/imx6ull-colibri.dtsi
index d56728f03c35..1019ce69a242 100644
--- a/arch/arm/boot/dts/imx6ull-colibri.dtsi
+++ b/arch/arm/boot/dts/imx6ull-colibri.dtsi
@@ -62,8 +62,9 @@
 };
 
 &fec2 {
-	pinctrl-names = "default";
+	pinctrl-names = "default", "sleep";
 	pinctrl-0 = <&pinctrl_enet2>;
+	pinctrl-1 = <&pinctrl_enet2_sleep>;
 	phy-mode = "rmii";
 	phy-handle = <&ethphy1>;
 	status = "okay";
@@ -220,6 +221,21 @@
 		>;
 	};
 
+	pinctrl_enet2_sleep: enet2sleepgrp {
+		fsl,pins = <
+			MX6UL_PAD_GPIO1_IO06__GPIO1_IO06	0x0
+			MX6UL_PAD_GPIO1_IO07__GPIO1_IO07	0x0
+			MX6UL_PAD_ENET2_RX_DATA0__GPIO2_IO08	0x0
+			MX6UL_PAD_ENET2_RX_DATA1__GPIO2_IO09	0x0
+			MX6UL_PAD_ENET2_RX_EN__GPIO2_IO10	0x0
+			MX6UL_PAD_ENET2_RX_ER__GPIO2_IO15	0x0
+			MX6UL_PAD_ENET2_TX_CLK__ENET2_REF_CLK2	0x4001b031
+			MX6UL_PAD_ENET2_TX_DATA0__GPIO2_IO11	0x0
+			MX6UL_PAD_ENET2_TX_DATA1__GPIO2_IO12	0x0
+			MX6UL_PAD_ENET2_TX_EN__GPIO2_IO13	0x0
+		>;
+	};
+
 	pinctrl_ecspi1_cs: ecspi1-cs-grp {
 		fsl,pins = <
 			MX6UL_PAD_LCD_DATA21__GPIO3_IO26	0x000a0
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
