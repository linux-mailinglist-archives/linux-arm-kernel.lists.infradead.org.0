Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BF108A0F2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 16:25:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pEnMrtQGpFx7xUomes62tPVfoxfQE1gT2KdJ9jtAJ0k=; b=oXKqz67au08uOf
	GCJKEPSpGvgZrmtDUaqZrgvx8lyXKwkJ2rCIIYMbtz5klyBWfrl5H1oqI9ZGPEfc724LFZJXrB/bk
	7LjqtY6krz5Liey3hh49ExIkxqILsmTKIZhtZtkgx443oJdgsVkBl5lV7hIIcqAmJkpnnXTbmc+lz
	pkRVIZNBTNHcAUAWs1BPDgk9+WWjMUyCs9eiyAYPkP2+aSbC1uERG+nt3n8k7lvlxQMzWEcMSGRVo
	ABRhviggDET+QE9uxVwqgQatQ1jECpTQy1VlGbkNj6Ln4Z5dmui5OaE7K6+DkVrbn0GWqhinwypvB
	EoQriYUk7EJ/Brst8zlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxBGU-0005jI-Vh; Mon, 12 Aug 2019 14:25:39 +0000
Received: from mail-eopbgr130105.outbound.protection.outlook.com
 ([40.107.13.105] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxBCe-0001l6-92
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 14:21:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UaLzBebK2FvSwWvy1zNLO475hQ2IA8n2E6w3WiZ0h8q6ABlkEulbjXQTKWULUVE6sUBATkm/QlWs1JwgaTkd7quIHWGXzsXumccw0D8myW1Y4zbB/5vvbF8hzmg7f8q++OkSWObLmO8feeuYKbObjg25VGIns+f1BfaTx7syUxsoSZmp7XVqZO5IOICGknHNEq3g+5nKYkIvGvREUXFSZSHkGSV7+xbLlxuaz97pcyNfD4vQ+Yvd4WRzpgqoM+y+MAbw2h0MzlQjMiI8Om+Lo7heokIii4ZEsTP3TfIbYJRvQmunTpiiI7MJx4eGUUDFgXiyuq32ib6P7qzBq6rr3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mCbbi+H9v/D6Xg57240XQERKEeoouzg6Ab/6Nyl33R4=;
 b=JTQs5XIuZLWfZXUYpo7cqRZi23CIg3HlqZBHP0+FuWPalhGktjZyO3OQadpPFMjmaQhUl1XbLDtZNyFis+6vi0AYwD0A9HrEdfGeAtTQmJrYjzCHMSC5E7zbHwHD9r5wg3KH/7Ygs6PojVY175/8nm7ySDhvn/CWnCWNtxA0mwx4C6XkqWMjASioFrk5AFHXEGWnuX7rgSyN5///NSG7ESurlapkOsKuPzEVe7LLaNg9WBrp5zpMM3v+847KwKDi/HEBkciqGD9wKzoMlDdfXXR8Q2kbuUyswMJFdNwVixiv6eq9384mwsysMghdoNhKD5+DuN8RuejIehyy5u4AKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mCbbi+H9v/D6Xg57240XQERKEeoouzg6Ab/6Nyl33R4=;
 b=H/EQPOwFUKwfDugAEWcJbjrWXD4fyfPjsC+MQVIM54ipY5NoVNQ/XdxwRiFNtniR3NqfbBunRCBcidWRBtTPN/+Mf2WFKIQtRRm5zuR1pHXo4G3VWbbZOXofmzpmm81ZIeMquMpQHtOKejInKTqJ2nFwkdPNyK2aI2IbrvSjA54=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB3808.eurprd05.prod.outlook.com (52.134.9.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.18; Mon, 12 Aug 2019 14:21:31 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2%6]) with mapi id 15.20.2157.022; Mon, 12 Aug 2019
 14:21:31 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: Marcel Ziswiler <marcel.ziswiler@toradex.com>, Max Krummenacher
 <max.krummenacher@toradex.com>, "stefan@agner.ch" <stefan@agner.ch>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, =?iso-8859-2?Q?Michal_Vok=E1=E8?=
 <michal.vokac@ysoft.com>, Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v4 11/21] ARM: dts: imx6qdl-apalis: Add sleep state to can
 interfaces
Thread-Topic: [PATCH v4 11/21] ARM: dts: imx6qdl-apalis: Add sleep state to
 can interfaces
Thread-Index: AQHVURk8tkL06lEcYEKQgOqHfUf7lA==
Date: Mon, 12 Aug 2019 14:21:31 +0000
Message-ID: <20190812142105.1995-12-philippe.schenker@toradex.com>
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
x-ms-office365-filtering-correlation-id: 2036573c-842f-4143-be73-08d71f305f3d
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB3808; 
x-ms-traffictypediagnostic: VI1PR0502MB3808:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0502MB3808C7D23436F5BE2BC9CE45F4D30@VI1PR0502MB3808.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:758;
x-forefront-prvs: 012792EC17
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(979002)(4636009)(39850400004)(136003)(396003)(376002)(346002)(366004)(199004)(189003)(71190400001)(2906002)(71200400001)(66946007)(478600001)(256004)(66556008)(66476007)(7416002)(6116002)(3846002)(1076003)(14454004)(81156014)(81166006)(8676002)(4326008)(8936002)(50226002)(14444005)(36756003)(99286004)(26005)(386003)(6506007)(66066001)(76176011)(305945005)(25786009)(110136005)(316002)(54906003)(102836004)(44832011)(52116002)(64756008)(6486002)(66446008)(5660300002)(53936002)(6512007)(7736002)(2501003)(446003)(2201001)(186003)(86362001)(476003)(486006)(11346002)(2616005)(6436002)(32563001)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB3808;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: dsoPriTHhB6FAMePh00J6svE49UJPfJkhlY+XF+3VafHh4Y2vSF3/d4/GwJHcli96dR9G/wvjg6I4RxvZZSDoonQhFucB7KnPY4b7duvo7RZitw5CNYyje67uxfwOgydLrNFxaGrOJ0qAs04Yklzd0eQuWgZPt6zwnMPLmBDjwDmkhiv4oTfluaMR7B7bqVqMSOksRJsrcWW5g6uPdrhdNIHNrq4CRA2cOvRJHlSXZS3dP3KqcEADNHuNcClZw/KZPzatacJAyO6YX8zIjWlwcKyP7I4/lYnVZFA7mcZa1kImNw75n5sIiG5XvOLDw80Hp6s3gwg/7ry/WW/XmR6eJs2LLx0HYjts2PWzWKm8xa67lcLXQNIW+6+eMSzcbpHLw8NzrFUfsuxS0a0yb5UTmZN0wY4RFLKhWwFKDdndSc=
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2036573c-842f-4143-be73-08d71f305f3d
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2019 14:21:31.5006 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aRvgSROUXk6MM7Bo8J9vGertwnB9QlPwU+/PFvHB32Za+EPfHQIdAe3JBkdJxFlybO5SjEdrdiNdh+dCkpe8y1GqDgPCop7mhwaFZlb1MDg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3808
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_072140_858860_2070E047 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.105 listed in list.dnswl.org]
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

This patch prepares the devicetree for the new Ixora V1.2 where we are
able to turn off the supply of the can transceiver. This implies to use
a sleep state on transmission pins in order to prevent backfeeding.

Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
Acked-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>

---

Changes in v4:
- Add Marcel Ziswiler's Ack

Changes in v3: None
Changes in v2:
- Changed commit title to '...imx6qdl-apalis:...'

 arch/arm/boot/dts/imx6qdl-apalis.dtsi | 27 +++++++++++++++++++++------
 1 file changed, 21 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/imx6qdl-apalis.dtsi b/arch/arm/boot/dts/imx6qdl-apalis.dtsi
index 7c4ad541c3f5..59ed2e4a1fd1 100644
--- a/arch/arm/boot/dts/imx6qdl-apalis.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-apalis.dtsi
@@ -148,14 +148,16 @@
 };
 
 &can1 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_flexcan1>;
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&pinctrl_flexcan1_default>;
+	pinctrl-1 = <&pinctrl_flexcan1_sleep>;
 	status = "disabled";
 };
 
 &can2 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_flexcan2>;
+	pinctrl-names = "default", "sleep";
+	pinctrl-0 = <&pinctrl_flexcan2_default>;
+	pinctrl-1 = <&pinctrl_flexcan2_sleep>;
 	status = "disabled";
 };
 
@@ -599,19 +601,32 @@
 		>;
 	};
 
-	pinctrl_flexcan1: flexcan1grp {
+	pinctrl_flexcan1_default: flexcan1defgrp {
 		fsl,pins = <
 			MX6QDL_PAD_GPIO_7__FLEXCAN1_TX 0x1b0b0
 			MX6QDL_PAD_GPIO_8__FLEXCAN1_RX 0x1b0b0
 		>;
 	};
 
-	pinctrl_flexcan2: flexcan2grp {
+	pinctrl_flexcan1_sleep: flexcan1slpgrp {
+		fsl,pins = <
+			MX6QDL_PAD_GPIO_7__GPIO1_IO07 0x0
+			MX6QDL_PAD_GPIO_8__GPIO1_IO08 0x0
+		>;
+	};
+
+	pinctrl_flexcan2_default: flexcan2defgrp {
 		fsl,pins = <
 			MX6QDL_PAD_KEY_COL4__FLEXCAN2_TX 0x1b0b0
 			MX6QDL_PAD_KEY_ROW4__FLEXCAN2_RX 0x1b0b0
 		>;
 	};
+	pinctrl_flexcan2_sleep: flexcan2slpgrp {
+		fsl,pins = <
+			MX6QDL_PAD_KEY_COL4__GPIO4_IO14 0x0
+			MX6QDL_PAD_KEY_ROW4__GPIO4_IO15 0x0
+		>;
+	};
 
 	pinctrl_gpio_bl_on: gpioblon {
 		fsl,pins = <
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
