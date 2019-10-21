Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3ED8DE93A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 12:19:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TJBB06EGn5c76KzVrgxgETc5fK+oMb+mFeS6v5WRhc0=; b=aI0bPr1o8hJvkS
	4v5BgQMy+x0i/igHppQHNAqYdwFGeh+R88eEKkQmrSEGtQKjob4/MgudW/LWqzqcXM3HntfOq/BFK
	/5Qq0Dz1m/OsR57I3KmZmkhuAil9X9TQ7XKuT6nxfHgXngE0NLOeq+36pTuu1nzdbQcxOxjF2U2je
	h5HEPexVeGhbhtDdW2xmXcct1g5cVyinNv0kUITgwp7aUPuT2VHputgwJgA+6aAG1MyNDJQuzCI2x
	aGvghTi7DHJ7HTLEowZy/GPktQTpfOG8zk+JIK7/YKnS9GYopU7CAoA2Yza34J8f2MVsk1MgaD6tM
	uEg9lvmAZo7YdAGkijYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMUmu-0007TD-61; Mon, 21 Oct 2019 10:19:44 +0000
Received: from mail-eopbgr30089.outbound.protection.outlook.com ([40.107.3.89]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMUmb-0007If-N4
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 10:19:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UV2cgFS4qnbVVIlMMvNUDlX9dIyJkHPTw9uMydpo0ymJkXV7ejRSCjYC9B+wRvXJhfjLj6aBK/yeN10tbErtYfOnKyZKDIbaMpMYkXZsn1S348yMr07z4k6xFW1G90LJcX31is4wOToh0P3yp34HofNOOTC8nOfvUdMd/qd/ae1eBtmd+/0BggQHaid0m0w5W5yPl0253bnzfdY55LZm8TXhbWYCYRZ4YoeRox8BKjRsLsagtq/DH2GMmpno18vLQ2oHVVgHG4m8lYAnvGwwTIFToiCJiW8J9b2+T9t7pDCj9rJsi6oG8dBKMo4K68oiAQ/NYa28MxhEKzmjFRcN8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rb3kSKhCCgj/VnuMPW8//aDM48rvoRPK1bjoviziOaw=;
 b=oOwSzLFcuSWFOlm4wHVsE3/r3GB+W+GR5Sh+QHG60AvjKxrrtDV9eT1+P3ukv5QthlvPy5ZR2S4BJWmLrfVNGVfhG3rZBpnddL/AV+Ainx+RQS4zANr2xSkGkbWcuoII1AGvYOGoJUEXAVHW6AT+IiyIXM4iClKdXeMZPe0snTLTCmB6pYleYXR8zcazOAsFnuSVoQphRuOUIoevni51qIZ+okEqihOgV21vdxU/ydMjRtHF2fVWcUQgT3D/Bi5EoDNAjKGyI9XjzupPLY/pzLdxkhWxIX6g9Ib1MJK0LI1/KKt3SfEzriBESdXGUh6DpPQAWH6I/WBVydBQ5pw8Yw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rb3kSKhCCgj/VnuMPW8//aDM48rvoRPK1bjoviziOaw=;
 b=AMKA9Ete3ABkSaTrpbkciioPmLtJtOZQrBdIt6y5cEg08QbwwrPAMu7QR0ewm28KM9qAPoDT9IwHteMmzpF/zHyyEaHeZQm0rmwYuqxRu2OF6ecjtJQqFXEtRfy7JvRZTRf9qETgOm59VTYY5evMgkgoAzuNOqkIMxtvQbblph8=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6401.eurprd04.prod.outlook.com (20.179.254.97) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2367.20; Mon, 21 Oct 2019 10:19:23 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1%5]) with mapi id 15.20.2347.028; Mon, 21 Oct 2019
 10:19:23 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>
Subject: [PATCH V2 2/2] arm64: dts: imx8mn-ddr4-evk: add phy-reset-gpios for
 fec1
Thread-Topic: [PATCH V2 2/2] arm64: dts: imx8mn-ddr4-evk: add phy-reset-gpios
 for fec1
Thread-Index: AQHVh/kCgreL1pe0zkuEohh3uUIwxA==
Date: Mon, 21 Oct 2019 10:19:23 +0000
Message-ID: <1571652977-4754-2-git-send-email-peng.fan@nxp.com>
References: <1571652977-4754-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1571652977-4754-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR03CA0016.apcprd03.prod.outlook.com
 (2603:1096:203:2e::28) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f5a99556-7280-4800-2068-08d7561024a8
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: AM0PR04MB6401:|AM0PR04MB6401:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB64018F14339679942EA6F00C88690@AM0PR04MB6401.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:175;
x-forefront-prvs: 0197AFBD92
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(346002)(366004)(136003)(376002)(199004)(189003)(66066001)(3846002)(8676002)(8936002)(2906002)(50226002)(81156014)(11346002)(25786009)(2201001)(81166006)(486006)(476003)(86362001)(478600001)(44832011)(2501003)(76176011)(446003)(14454004)(66476007)(66556008)(64756008)(66446008)(66946007)(2616005)(52116002)(6116002)(305945005)(71200400001)(5660300002)(71190400001)(99286004)(186003)(316002)(7736002)(386003)(4744005)(102836004)(36756003)(6486002)(256004)(110136005)(4326008)(26005)(6512007)(54906003)(6436002)(6506007)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6401;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vm8Arn84pn1egn8BMDKNW8Bb6UYOOtLujqAeqQbwLFkwiI1PAbsSeT6UlmmePZ80W/k6Shusnr8B7U6MCx2GNtTRo97myWsyRMS8ktApeXCKPurTCsj5zKoTTwG22QktCEIJMzU+8lJOwICT9kzwa+BVgqE2VpO+NUbyF5M1NxoU1SpZBtd7pgXtkmdTSQBhMbPdzeOx73DnNaHVxtQ1fjQNNo/1nYapUu9JDFpINFjiHAjvKTEzHp95Uldpl8NU8YHzRqMap1uekBC+LxSOT5qP+Bjq+aciAtmasYdqUsomcOknGFuwv2WjDqLOKUH6gmnhyRqMMbt2iP50Z791R7/evwADVpJO/dQDzHnz1p1rVJabsBGomR0zgtp7AKPxNE+hJcQ9JogGfvRYi+OSr9NK/f7cLFQBqn1guTfjBYY+qmbZCzx3CkMdbqTI1CIP
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f5a99556-7280-4800-2068-08d7561024a8
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Oct 2019 10:19:23.4895 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YDz3WcgIXoFhilIJTqiYO3Tye93c637s8djBgAaUMVZS8kaCa6KH4LIMVj4+4T80s41n90zkI8lQKqfsEb1gkg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6401
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_031925_749938_AAC9FB94 
X-CRM114-Status: GOOD (  11.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.89 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Peng Fan <peng.fan@nxp.com>, Andy Duan <fugang.duan@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Leonard Crestez <leonard.crestez@nxp.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jun Li <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

We should not rely on bootloader to configure the phy reset.
So introduce phy-reset-gpios property to let Linux handle phy reset
itself.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---

V2:
 U-Boot->bootloader

 arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts b/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts
index 1b90faace1d3..761ba0b5d271 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mn-ddr4-evk.dts
@@ -48,6 +48,7 @@
 	pinctrl-0 = <&pinctrl_fec1>;
 	phy-mode = "rgmii-id";
 	phy-handle = <&ethphy0>;
+	phy-reset-gpios = <&gpio4 22 GPIO_ACTIVE_LOW>;
 	fsl,magic-packet;
 	status = "okay";
 
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
