Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6581E13D467
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 07:38:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WkFDQNPkA6bKwfeGOgb9Nk/o8wW4eFWT6Qmk0BiC8Bc=; b=KUAPMEWjMQa0Sr
	W1eHB1wMtSLCVs6WGZnKQ+mWMVo/w2dn/TtwCKFf7YknmKyOHhaCfV+HZlNTGpcvb4+OAqa0sfzTc
	txs5HAMb6kuIJ/76VhtnlzgJd+SJMiuC05zg/w/uN+vW5nIYOviXfbYPZJDGTI1lFx+0VLlA23qvU
	qv9VwZ5HMNl459iL7wtCkzL1wHb1aQc25zTpjlugrUY8s3HqUS7d0Uv/MY0VwtZgq4SmDXIewYoAy
	oY6YRd947l3ssGDL2S2dpZY2OxTXBp1ZDk0yqkTJEalN+wkaCS7PisdyIJ3sSiAhGYVv+jczH3TF6
	fvyjA0I1MMwFZChAf6fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irynH-0005re-9h; Thu, 16 Jan 2020 06:38:15 +0000
Received: from mail-he1eur02on062c.outbound.protection.outlook.com
 ([2a01:111:f400:fe05::62c]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iryn3-0005qq-Jo
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 06:38:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KwhYFkq1mLuGUIfVLT6Qyx1RdeGjLuF7L1la76E7FE/X7Sgjud/SG63umZwzuOEw5FFrU1ZYgXPvmhcF/IYndwixsg5hbh3Lgg9IJ+7IqZj0b+z2G7aWpWZRPmFVMhjv7yyuQUwMkGZ9AEcKGqSJvlXecc/hpoTjI8cMNSRJJDgdu3oA1ys0Ma+n/XXT0Ku9yiJ/uzzjge97oZLZCLU6yI5kqhmsFIVvFiVB0/ZQD8dORb8ISKxdhEgMbRX7vfboFy0V3sogMfvqOH6G8PzeJ84Z8ZWuvBNJbcc5GC5x88s+DgtC1lVRFUbXlFGiiFaXn7TRMp4YhGz1inDo+KrIDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WWl+hUGF9ckAuN43VKxP9OsVD7vvfBTMHCyz/GJGkYg=;
 b=WmYFkdA+jDLBuqmVFoPWd1SAZgrI3NJI2CuSMbDu3wqpMmFeT3n4VI+rdIM3hZNCvWopr/so0e6C/NJrUvNLyoBGL8FrLzfPAAaeeexOa9DJQs6nn+ZSLkq8AiwnuisCK8EU7KjIJW3EJqRZqPA93CDvJlrb/frNME20evPefnlCQ8I+dPi7kk+7+G9aSQHOkZeArni6S6pbfd+RKVxA/UjqsjT+DgrE1WBYDIfHl7eJdjVHsps/mxIc93UwQL8JxiGBM/rz/2w1LvZVvhl+KBf2WTKxyqUfV8Wn8+LX6Hb7uGyRulU4yskXUWNGmFWUtuourVwMSGwvj/c8z7Oo9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WWl+hUGF9ckAuN43VKxP9OsVD7vvfBTMHCyz/GJGkYg=;
 b=LsC4iNfT9zvB+sSMCSB4VHMynAIiHDypyuaLdss5To8It81TwoHx91t/eGmCitFAsP/u1JBZD92dDfg5k6CsSucduLE4oZLNggGGkoolVc+dIihNp/cVtQTkciUoNJraQAo5VBmU4D3P1evqfothCiraQc6xPw2X+UVNwEja/+k=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4370.eurprd04.prod.outlook.com (52.135.146.32) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.9; Thu, 16 Jan 2020 06:37:53 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2623.018; Thu, 16 Jan 2020
 06:37:53 +0000
Received: from localhost.localdomain (119.31.174.66) by
 HK2PR06CA0019.apcprd06.prod.outlook.com (2603:1096:202:2e::31) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2644.19 via Frontend Transport; Thu, 16 Jan 2020 06:37:49 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Subject: [PATCH 0/2] ARM/arm64: dts: freescale: use generic name bus
Thread-Topic: [PATCH 0/2] ARM/arm64: dts: freescale: use generic name bus
Thread-Index: AQHVzDd7U/Erk/HhqkertuIUqeUrsg==
Date: Thu, 16 Jan 2020 06:37:53 +0000
Message-ID: <1579156408-23739-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR06CA0019.apcprd06.prod.outlook.com
 (2603:1096:202:2e::31) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 6dcb5657-7c86-494d-607e-08d79a4e9d62
x-ms-traffictypediagnostic: AM0PR04MB4370:|AM0PR04MB4370:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB4370456FF7EEF7762807480E88360@AM0PR04MB4370.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:241;
x-forefront-prvs: 02843AA9E0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(346002)(39860400002)(376002)(366004)(199004)(189003)(81156014)(36756003)(86362001)(81166006)(478600001)(966005)(8676002)(6666004)(186003)(16526019)(6506007)(956004)(2616005)(26005)(5660300002)(8936002)(71200400001)(69590400006)(52116002)(4326008)(6486002)(66476007)(64756008)(66446008)(66556008)(6512007)(66946007)(316002)(54906003)(44832011)(110136005)(2906002)(41533002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4370;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: c1X18RuAoFmu3KN1Ef3kJfvclAjNIcypt1sDz5V87yyzzrzynrHgNXUzLJGBmzAd8udcFq/8Ynm5Jff3QN+NPTMXGCM05o0KT91zV8WqBS+caVdRgpxYV919Fad0Z8+8QjRJnf1cHyWxvWaTW4E1fKU1ocY9SNimKBKWdOkorMZUzKrT76nZIa9D9uHsCsOJ2hViS3OLFYSxlNpV8To3uAeulpokJMuiOVkgn6DhEC5ni5uTHk2/CcSC1cLUGYddBRwMYz5h6NDr/QMoNricDS/Hyd+cFIVbtyJ8M6D4acHs60uvRpc4D0BoGlmzMGixOat9E5qzsJmAvHyxxE6AOv+fo0WSG/9KSewQvYk4j8Z0MP4HA50b4jh/hAp7JfMv7qfo+1u9ZRc3mL30CRwXMdtcVZTiTphuyf5UC/sKHPB6zm+JQ2drkYbVaF1T7leBXQZ/qE/P6+HYpBmq4KLlawMRT8y21YKr1rrxVTmtkf+yqx1lt82prSJLYrGkMIVV4D2xvOEz029YLNQKOiiP0TXKsiiZzzAti9Kd+a6nm56DioHAB6DbIJSVb6xkYW8z
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6dcb5657-7c86-494d-607e-08d79a4e9d62
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2020 06:37:53.7279 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zeEUcyWRQtQOXiMKqyhc3rb8YymAsqYltgialdIVgyPf0Da69ZrafEY2CL+qo2jJO5M1RQTW1imJT292/tgZXg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4370
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_223801_659298_CED23A11 
X-CRM114-Status: UNSURE (   8.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe05:0:0:0:62c listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.0 FORGED_SPF_HELO        No description available.
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
 Peng Fan <peng.fan@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Per Rob's suggestion from, https://lkml.org/lkml/2020/1/3/623:
"use bus instead of aips"

Per devicetree specification, generic names are recommended
to be used, such as bus.

AIPS is a AHB - IP bridge bus, so we could use bus as node name.

Script:
sed -i "s/\<aips@/bus@/"      <PATH>/*.dtsi
sed -i "s/\<aips-bus@/bus@/"  <PATH>/*.dtsi

Peng Fan (2):
  ARM: dts: imx: use generic name bus
  arm64: dts: freescale: s32v234: use generic name bus

 arch/arm/boot/dts/imx25.dtsi               | 4 ++--
 arch/arm/boot/dts/imx31.dtsi               | 4 ++--
 arch/arm/boot/dts/imx35.dtsi               | 4 ++--
 arch/arm/boot/dts/imx50.dtsi               | 4 ++--
 arch/arm/boot/dts/imx51.dtsi               | 4 ++--
 arch/arm/boot/dts/imx53.dtsi               | 4 ++--
 arch/arm/boot/dts/imx6dl.dtsi              | 4 ++--
 arch/arm/boot/dts/imx6q.dtsi               | 2 +-
 arch/arm/boot/dts/imx6qdl.dtsi             | 4 ++--
 arch/arm/boot/dts/imx6qp.dtsi              | 2 +-
 arch/arm/boot/dts/imx6sl.dtsi              | 4 ++--
 arch/arm/boot/dts/imx6sll.dtsi             | 4 ++--
 arch/arm/boot/dts/imx6sx.dtsi              | 6 +++---
 arch/arm/boot/dts/imx6ul.dtsi              | 4 ++--
 arch/arm/boot/dts/imx6ull.dtsi             | 2 +-
 arch/arm/boot/dts/imx7s.dtsi               | 6 +++---
 arch/arm64/boot/dts/freescale/s32v234.dtsi | 4 ++--
 17 files changed, 33 insertions(+), 33 deletions(-)

-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
