Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CFE19E91D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 15:22:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QnBvagBuVTQGMmcg8J6DsFFsr+Col8z1OD9iJqAFy+4=; b=PIr4N9EQl1FbNq
	TNxkD3Xs3FCXfZbSGtB8T2s9V8lc7gVZESKle0KcXs8kQAJS/RHCjzJZmctq+kgMsWY83VxlUPSDo
	zMhmLbYcbjOX2M0X3OU/bjWZSPTDKMVc1I9PPVRGhYoqZ2QMHpJcDWqjAoAZqH7TX9UAa6rqIxeSl
	NXM2OQbLXnoXrLsLxmIxOYUZIF+qI2mO8V9HP+0aAE0zQ0PJS9oP3yNzeChdQARknvpOfbMCrGegx
	BCiuybEEe5hQAU9gRDGUyLFJbomiaQ2kIckZ+HnG6qdk4a1BKTxsENvUQEHl20FU3vsVkPLO/ji6K
	dQ5zqSYXdYoNm5JIDBwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2bPw-0006LW-B5; Tue, 27 Aug 2019 13:21:48 +0000
Received: from mail-eopbgr50114.outbound.protection.outlook.com
 ([40.107.5.114] helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2bMt-0002Ml-DS
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 13:18:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MItVBUat7okZNtPavdoYoo2s2REEBTAm+Mq+g1+acivH5RQvNXAkQqr3hxAEMRugcYs7ZRKfAoZkx65C53vztBfK1iYbuc8KjuMBM9ZhXwsRnRN1BBZ/Xw/MqEsZdXB8+v+ngpxjrVXZx3fsyr0h8ns6bbe+0mlieFRHipSMxGkq1IjUuUg94+dgVxI3+cBK3egkox4VPDTttu1ww769y3ExemLc8329berQsZWu6VnEGHjF+yAX6WTQU/PLvXOKZG1rYYmHt72MHfeEOjFZck8O835udhbb/1wwnKdimAcdPOuIf+O9MVPzPjN3Kqccs2dgpHu60zKETrOiJ0soAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XemcFVYV5bRq/jjtYhlqGjLL4YszM2Q30lZLXK2SajE=;
 b=UvkBZigz3d6ZoWCUINhKK/OgFiIQIu8w8E1Rl8ttwc1HiG3eNGSqHepTCE3hChNzeMVk6h/8iubXXjx1GQSwlBseTWZy6fCQ0tcu3wW8cfBYkbyVkDoJRRCu1wahKdFCllqut7lID6YuqW53Ss0AZOGoNb/8LgMHVBqdG8zIxUrZHAheUcPDBjjyYnn0wHlsFnOeMFMKV+Z6TBLj1fFe66l84hX1CQ2IKt1cfNLrza+R692L95p08hwbj950tOLKSbaNOQxgBZRnpTl4JfmFj/VUo210i+VKqAHJX16p1A8U6JWKM8l2DTTsS777ZRMfQArd/nSx44vTVNMqgymfLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XemcFVYV5bRq/jjtYhlqGjLL4YszM2Q30lZLXK2SajE=;
 b=KvUlnM2FfNpd/nA4tbkiq93Wo/VWuajmUu9h88rjw9WPlFiNUgvMzYmiCKFxFXybn1yj5C95hquZ0ycFC7qNkEfSLMwO7/GOccMA4JLr2VEoY9MWxOeUxcF70QPSUQXdLxQ0jBAbd8BHZEtHfe16SuX/rICGu3Xi8X+G2jVeZeo=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB3872.eurprd05.prod.outlook.com (52.134.5.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Tue, 27 Aug 2019 13:18:32 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::f59f:a307:9c53:63b9]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::f59f:a307:9c53:63b9%6]) with mapi id 15.20.2199.021; Tue, 27 Aug 2019
 13:18:32 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: Marcel Ziswiler <marcel.ziswiler@toradex.com>, Max Krummenacher
 <max.krummenacher@toradex.com>, "stefan @ agner . ch" <stefan@agner.ch>,
 "devicetree @ vger . kernel . org" <devicetree@vger.kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, =?iso-8859-2?Q?Michal_Vok=E1=E8?=
 <michal.vokac@ysoft.com>, Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v5 08/13] ARM: dts: imx6ull-colibri: Add sleep mode to fec
Thread-Topic: [PATCH v5 08/13] ARM: dts: imx6ull-colibri: Add sleep mode to fec
Thread-Index: AQHVXNnsQ+HoqCbh/0yS1FQhsuRmrw==
Date: Tue, 27 Aug 2019 13:18:32 +0000
Message-ID: <20190827131806.6816-9-philippe.schenker@toradex.com>
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
x-ms-office365-filtering-correlation-id: c13bb7cb-8770-472d-a1bc-08d72af10f18
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB3872; 
x-ms-traffictypediagnostic: VI1PR0502MB3872:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0502MB38728C5E12ADEE9C06F1D2E3F4A00@VI1PR0502MB3872.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 0142F22657
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(396003)(376002)(366004)(136003)(346002)(39850400004)(189003)(199004)(8936002)(66946007)(2906002)(11346002)(5660300002)(50226002)(54906003)(110136005)(316002)(14454004)(1076003)(14444005)(256004)(64756008)(6506007)(386003)(7736002)(478600001)(36756003)(53936002)(66556008)(6116002)(66066001)(66446008)(3846002)(6436002)(76176011)(476003)(2616005)(446003)(486006)(6512007)(26005)(305945005)(102836004)(6486002)(71200400001)(186003)(8676002)(86362001)(81166006)(4326008)(71190400001)(81156014)(66476007)(25786009)(99286004)(7416002)(52116002)(44832011)(32563001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB3872;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Hd0eRJ+18MoULs8By7unWGkpi8gX5LH+n2HuI90EtATsq4eMLvK8L9AeH4gDFhuBWG+LhtiaCG6qDiJUVJoXBak05Zs4DMRpNP3FusbyeUDCIgnxiXeH8mrjThgVJi2H7Idn3ylClYsf0sHbc+Z6iIvKgt6uBd88dCUJqmxZirO+3HXYgArTUyPfUPf9Yp22AWbtP+lwV0SUpx8rf8n0U/KoVRk6J+unM3SWy0hMnlq07Xo2cZcenoc1G2LdLSj6y8HEL/cplQ/1jHMl4M73PanESN2lo53Bdy6au8hiQqReo9Z4RP5BhIHy20uhL3oS92y/XjRaqoFb9gXnGMthuEMy4JrFVPlJOqUIOs4Xy5VNKg4uRUvLQKB/RYFGbF1stpeRzTMB/deohdGSxjhQvPuw+nDLMmlaq1Vt2hWOtyw=
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c13bb7cb-8770-472d-a1bc-08d72af10f18
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Aug 2019 13:18:32.7060 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kxVh420Kz9EApC3PS1mTYo8SAs9elB3fgt2yq2BMEf7uPt3jeHNhy7ijPF/1q8JvqBa/hOMovft8MujcWEaPbyV76GZSMKMINDvbqt+/KP8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3872
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_061839_526888_C7B74AB8 
X-CRM114-Status: GOOD (  12.05  )
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
Cc: Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Oleksandr Suvorov <oleksandr.suvorov@toradex.com>,
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
Acked-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>
Reviewed-by: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>

---

Changes in v5:
- Added Olek's Reviewed-by

Changes in v4:
- Add Marcel Ziswiler's Ack

Changes in v3: None
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
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
