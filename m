Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12B70DE7F7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 11:21:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=f2Fi1degplpLEcfYFONYG57CsjBjHiXWlChbkpdgQUU=; b=diHizAsOJwFLYb
	eBPEfJG8A61IZPloUrzYufiuuFWSkLUDYhUD9Bf2xUFGVcheZYjLLs8aesVNzr04xuGrF42t+Lxfl
	FCTWVkBE4eEMuIg50IoxWQuUe2Mavdxq56EfeQq4AZUowNlEAP41L9EhGktaTteq3dO1FkGyiCCLL
	Or1H8Q/otCfXYXrpewFA0Y1AGFX4GnotT4kguZwW45khpA9CCiH7nMyAangtV7nlPwSI3H9b1yt+r
	t551CsMkdDLYbk4BN6yhav/hmyoA2wnKC9HMfJgwHoXGIdOaNtQIqiKg8Ht3TXPp3i9SE+m6kGpE3
	Cgrg95uO3dpH4fOFRF8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMTsy-0007fz-Sm; Mon, 21 Oct 2019 09:21:56 +0000
Received: from mail-eopbgr80059.outbound.protection.outlook.com ([40.107.8.59]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMTsk-0007dh-BF
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 09:21:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YyI6BbdgYL4vLnsgsWeNyUx8UsDZGo5BqZdDMTr/p5mkN5N9QiU1J5xoal3AlzXL63IXDaXMnbReHzP2KsejJMLgEHZAS0Gm5VjQHtUcRnJSE8aV0yB0nOzggWW/WHKvz8EL0YN3UOUIEkl8VjlatUqd/m7oyaRo/7KsH4hoKbhQ9r3OpixsWaKkHHo/npu99/UlCkArTps+IQkVpkCuPR66OcrgLx74nNMbP/KlwVxMaq26QwnvPbpzEGAQ5hbauV7qjTB4xbiuWHvAjVyvDCajWLdnXXbNx1CVLLUFPiayWFi5Tm5jnyRPJIlxJjqy7NCO4j4LBanQsMnGTH6Obw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YHcjdV4wIYTcXg/0ZOrMFUWTxFoQVOmEtaF+3r4Basc=;
 b=M4Yo2X2f0zhGn0sTzEAmjYcjL4jaBl1+vBr6TiLSBmWusgD6e2guw3HoagdT8C6giLi79dzBD12E+KPhb45+SQqImuioW3wfwBb2T1+bKQjy0/KgDXL2cA6pB5RR1off12+0n8yTxoPEHK4r6UyGBVSzUMJEQIu8jz6Mjck6Puf5NW5AgAMpQUjZ4juAZWFdklrYOP1Fh1BazbTeZvTjZyuxBjnSA283/GCZIKUrgKpK62xv6OcBbjBw2ZuCwALFMTLveJLKTv2fY9NS3XYrNfqd9Mlqc7hc2DM3AneXJEJP3ULKqcFMxSmfDrSS0OtHmWk9ajVlYm6mk6KGjE8TcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YHcjdV4wIYTcXg/0ZOrMFUWTxFoQVOmEtaF+3r4Basc=;
 b=qWot4CjSz7Q87dA6IyZiPwloSzJEN2orpGx26p/x7TEBiQ29NJJpll9vIExQDzIsUpzv7OhXDlNabM/VGpwHxb9v/OBquyHiJqMG/9osKAWZmJO6WqY/8XbmX33//MxCNVWOyh7JKbhFvmgEulpuyoydQITk4shBsqwP0cHZdXw=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5619.eurprd04.prod.outlook.com (20.178.119.155) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2367.21; Mon, 21 Oct 2019 09:21:36 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1%5]) with mapi id 15.20.2347.028; Mon, 21 Oct 2019
 09:21:36 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>
Subject: [PATCH 1/2] arm64: dts: imx8mm-evk: add phy-reset-gpios for fec1
Thread-Topic: [PATCH 1/2] arm64: dts: imx8mm-evk: add phy-reset-gpios for fec1
Thread-Index: AQHVh/DvpHNuw1YCQUS80eeiIyy4HA==
Date: Mon, 21 Oct 2019 09:21:35 +0000
Message-ID: <1571649512-24041-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR03CA0025.apcprd03.prod.outlook.com
 (2603:1096:203:2f::13) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f1e0c301-9834-408c-1bc1-08d7560811d0
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: AM0PR04MB5619:|AM0PR04MB5619:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB56197C598B5D6F74F20430C788690@AM0PR04MB5619.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:175;
x-forefront-prvs: 0197AFBD92
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(136003)(39860400002)(346002)(376002)(396003)(189003)(199004)(110136005)(6512007)(478600001)(81156014)(14454004)(316002)(7736002)(54906003)(305945005)(8676002)(81166006)(50226002)(2501003)(25786009)(8936002)(4326008)(66066001)(36756003)(2201001)(86362001)(6436002)(6486002)(476003)(66556008)(66476007)(99286004)(44832011)(64756008)(66446008)(2616005)(186003)(5660300002)(2906002)(71190400001)(4744005)(102836004)(3846002)(6116002)(386003)(6506007)(256004)(52116002)(71200400001)(66946007)(486006)(26005)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5619;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rg/AFaCLrOHgbQTNJhrzvoxpxp5qusIVHRF7x/EnSg6+PkU7IA/3gliw/RarSn5pINenBoE6kpepbwa6mJZYKqIds/gLQAj7H8HcJ6LNap6dm1Zb1CpiHJI63mSmKwYoBZ/w7u8SezrYYkVjcXoLG4o3i34pbd00psCbZwurNrW6adLt2TQGzQbpmVUpA8pmf5D2VYT6bQP7ND8LnUDAFyRXxl5uKocWcdRCBgy9VHHCoHqiqV9ZOAkHR/6l7NMHc31l0a5BjtS3GzjKfZBv/qDCfZxw+mZ/fCBjVLSALQTqr+nZaNGyFXXi2h4oJ+SsBfxA7acKozm34SDb+7mDaTEyd+Wh+nLa+ea0mZuNv9yhtoC3UgD4AMV/vVXcmOsmebnAXTamT5thePqu+JL3NPFaQIc0C40rSA8OEJeMWCOX/9wuX/VKbD6xmVCpLYjx
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f1e0c301-9834-408c-1bc1-08d7560811d0
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Oct 2019 09:21:35.8880 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HRRwd91wBszI8Cecs/Raflt6ahl3d6Pl6nQjKrsYKld/aowv4UOKKrh00ksoqdubFbsg8QTkBjAZHpwG8Qpo0w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5619
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_022142_455003_B97BAC9A 
X-CRM114-Status: GOOD (  11.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.59 listed in list.dnswl.org]
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

We should not rely on U-Boot to configure the phy reset.
So introduce phy-reset-gpios property to let Linux handle phy reset
itself.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
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
