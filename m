Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43866DE938
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 12:19:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=B8bLKLOpoYudBXScCyQLjf/fJy8qReVlYW+22Oo62TI=; b=JUQNjkH/yb/yWP
	iBQ0n1uE5465HsTwdsedthc3vrALWrYgjAIjabUqPf+tTVsFuTK3LkOyc4Y/UQ89tC+S3FtMel6Dn
	8ak7ERVTjPUYv5boHwR+IGpj3l0g7IaPHnlLw7aO9ipdTftJfv+wbHhDJPsaA/tPJUaFNVH3cvZub
	VMwxcLRzXEpRm35uCY6NveD0Dw4AT5kofqv4b9T/bbpk9/PC405dCHsPgb4YFucmLbfTBYmZ8TpfU
	Jim0ujwNkAINnzidaiKw5j8Y0g4ZaFnDYWTnYG3siXyftP2bgIzpVd4uVUt8md4eHcyS/7+RJLCB+
	zhweHInlJyIhR02TMxAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMUmi-0007KI-IF; Mon, 21 Oct 2019 10:19:32 +0000
Received: from mail-eopbgr30089.outbound.protection.outlook.com ([40.107.3.89]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMUmZ-0007If-R8
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 10:19:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=diQC7wLF7otsRM/AFhAX+7JYhqxNRvAdsm7vwakRbdv2FB+8J4C4YJWinSLxOlNzXF9c9TkB1vSiosHCEsSgh0aiAIXva9p9FJHTQWaZMa3glOt0OZohj+HBLTNbqZR/8/Thhk6NE8NjFQqe9UvYjPlaN17gwLoqBLwKkDjhDTgtwxo4FnpykncdU5HyrAFdTxUvSf2f8SLbTu0KJ2Fv5tDk4l24ARsqDR9bo8YVUFUsDIGPzJmn5VsFTgwM+TZvg0ngQCvtTVDwp8g57jsqPjrujC2uIsAJkDDuY8JxfqGXg99Mk/hgsJFnbyUHvFgV+Qx0Gu5zichaaCnnz8mvWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Dkk+GZkBI0DpAKJVpT8J8tIUGiHFQzuv2JyjukZc40U=;
 b=f50OYOQF87U7RarABitjWSNhnBPoBQEgUqYg9p6HZf/wOXigf1QjR12zmDgRGhBdjpHCP2WhcwJV0cN0+8KXkdos6k7c3TiKh9uj0gedOWSxZIEtfuaq1lKAti8gB0hY756lUP2+Sfp+cjQYKQNt5R4TDKH0m9qunZ55h0ORrYmwayKtYQd8OxMhHGmKU71exwY2DVbSAs2pa4yiNT3yuO6z5QSVM88whW5Bz+oCY0x1Db74ZfrFpDABHGqkXzxA1VMD2V3H0Jr0WKYvywMLSL3I4sdgrh8BgzFM3CWnmYB8sQTAbhIzxou+gKgytX5jEzMpYtxMMkYK8WEUwbLEsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Dkk+GZkBI0DpAKJVpT8J8tIUGiHFQzuv2JyjukZc40U=;
 b=K3tpLTNxmLw/HVnBBPZ9dMF2iG+jYt9lAKY1rqk0HIkxMNwii7z3W8ohN3fjMF+Y1iH2t5+v0Y0vUFK11xLtFr1SZpQCgHv9+VTxqJKeo1Q5+VITSMzcNXEyQcKPXUb3pVRdx8trJhuy1uE9WhqGmKvT8U/BEemXIhndMNJjOto=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6401.eurprd04.prod.outlook.com (20.179.254.97) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2367.20; Mon, 21 Oct 2019 10:19:17 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1%5]) with mapi id 15.20.2347.028; Mon, 21 Oct 2019
 10:19:17 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>
Subject: [PATCH V2 1/2] arm64: dts: imx8mm-evk: add phy-reset-gpios for fec1
Thread-Topic: [PATCH V2 1/2] arm64: dts: imx8mm-evk: add phy-reset-gpios for
 fec1
Thread-Index: AQHVh/j+k1XoWkwF8kWzRGGsNvXoFQ==
Date: Mon, 21 Oct 2019 10:19:17 +0000
Message-ID: <1571652977-4754-1-git-send-email-peng.fan@nxp.com>
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
x-ms-office365-filtering-correlation-id: 45350f3a-3511-4b10-25e9-08d756102113
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: AM0PR04MB6401:|AM0PR04MB6401:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB640120B84C6889726F805EBB88690@AM0PR04MB6401.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:175;
x-forefront-prvs: 0197AFBD92
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(346002)(366004)(136003)(376002)(199004)(189003)(66066001)(3846002)(8676002)(8936002)(2906002)(50226002)(81156014)(25786009)(2201001)(81166006)(486006)(476003)(86362001)(478600001)(44832011)(2501003)(14454004)(66476007)(66556008)(64756008)(66446008)(66946007)(2616005)(52116002)(6116002)(305945005)(71200400001)(5660300002)(71190400001)(99286004)(186003)(316002)(7736002)(386003)(4744005)(102836004)(36756003)(6486002)(256004)(110136005)(4326008)(26005)(6512007)(54906003)(6436002)(6506007)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6401;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nTRqU4N/sF8coVMrPBzxr7F8o1+vKkkIpJRgtZeenqbvRKE9AS4KjKoTDxb/Y6K2zyVSIpWrckx+sgA2yyJ7vw70KKE+/DYe2IDuq2y78kCxzo0PQypm1PtA03URWNpFDn9+DbYeWqLq3K30pvSCV3Exth1zWnu47G647AEYuJeITKdZvqa6lobZCTJp3j+PJGMYl/j7wQZS4xc93BKhWf6J1BEqnXLV4PPrwIfYmtiw0BvVWIivmG8s12L3UehvJ9PSnaYfbyKZCQhZsXanBBSrUBh6LYJJk0pe33TvYOAiA9YEFL+223tZwC3lFHlCCIJJRkd/7d2mFD6P62noL5BCXHapvOj/6LrKvIPMigJt+QLbtothnlnsRcD90l2Z71tyRvjJCuDQdvMB3psWl75CAp59Hj+Vf0PVpoSsfKlgcRzP9TFX/PSv8qVr5koa
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 45350f3a-3511-4b10-25e9-08d756102113
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Oct 2019 10:19:17.5070 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HRp3jfL2znZeA8Zgq7PKzMiGAJoZlzjMLTfNy/np8zwKsDFb0dFgLBdrgzNo7q5nfQCLuCgv0xZOPalvzxQKHw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6401
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_031923_887090_121A2082 
X-CRM114-Status: GOOD (  11.17  )
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
Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
---

V2:
 U-Boot->bootloader
 Add R-b tag

 arch/arm64/boot/dts/freescale/imx8mm-evk.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
index faefb7182af1..e4d66f7db09d 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
@@ -80,6 +80,7 @@
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
