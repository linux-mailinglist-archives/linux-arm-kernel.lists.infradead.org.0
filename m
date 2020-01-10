Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90BF313683B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 08:20:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BTzMljnMp7pZArF+xMtSC6m/qr3Cn5IpoLZ2omQPa5w=; b=qqwfWPn/MNx44y
	4tKEwuqu3GPDS2d4xakQ2sPh4Ltv6An/uMnPD/RQdxQzU5pzeKk7PJGZZsC6glGp0BnxNXw+n7oKS
	zKKvEt/q8DtMygnjPJixOX+Wmv/+b2KZlBR07MWuTXT0+FMrL2a2pEenRjtbBwSWBSFCI/2jbxYu+
	vPbhc3y2L35e6y/lY7uIAtvSwqcxk7ReQG63J+UZAG6QrOPbIckeDcbLSSxG6PqRRwpD8PbgQgXtA
	YY+bjJ+xMAtXS8feBHUq/fhaIOCZ8o2GRuXREyCJ8SqaJc7hwRPlMudMxAygfxVFzHydjaSb3cWJB
	VclZrS/KWThuUuGADWXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipob8-0007Uq-Dh; Fri, 10 Jan 2020 07:20:46 +0000
Received: from mail-am6eur05on2050.outbound.protection.outlook.com
 ([40.107.22.50] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipoaw-0007UI-4G
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 07:20:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=heTh3GYlVD0II8yZCg2yZwNbLeG27C2WS+Kie+7b34u/V+ucdEd/JDsnUPFFquJIe54/cOUa2V8CboOO6OjF8QuYJpj0647k6Tu+BxuGOkiaqiOIxdnOgttjKqOm5tVt/x4VslgCZCcZLCcK2/xXmQe71WXqyBcNz89K/s4tjCPDgkeRszFAYtgQ6opEqtHriWEPN5RK/qInmymbCYuUwDxQm+GPONBEyOKasbVyvYS/9XOUk4dVA3zcSriBwCjGGNNFi5G1UPMXUIp6SEqHkxti3lmyn9UyMHfpSfD5Z0ep7+O5xX7YsZeom5ImtiU0hxMRHnd+dSLMazh6yPBqgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CnkKQt3vdgpBM/xHrsBcM+Zufm/rvMErBTTEyXTldHI=;
 b=Wbwymge6HaWR5pxhSCj12DRFMY8ZvuEm0x3zDAoxkcBPXM9V6zDJGaQuyaeaMpPowDu0u6y1HHMRx9I4jAkiozDSPnBPuSLGOt5sfVYLSKVqyKi/tV7w0F/ch3arWJxyq7x/dXuPHh3K+/Ld6kzRFSPN7UQ787LXxuw2S97AxNDJxMnKLil4yz+d9o14irW238no7WnQRva3WN+LXlD5Glf6g5ayBQ0pLKjIiPCqcTmMgIdobWjF/jMyuwE+glNE2/I1zQljJCsVR/hIG8crPx8OZ+nepip2Z/90tpa0RYCxhcnzhFjdgvvzmsbsVcOXv3zblu0jC2bDXa8qPJNFHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CnkKQt3vdgpBM/xHrsBcM+Zufm/rvMErBTTEyXTldHI=;
 b=rzxuKWomOlFsnpliH254E41/J+rspvGKzFzo91RTNdrARoYe5aQgM2yGQfS5CVfWyMkR5xN0+6mskEIbYnF/61wSh73zMkd08yh2cIWSss3gGGwXMBPHhkhxPtlZYUFUsdG4SOR62PsGU4FpDWEYFo6u9X0zSRAm91qZwVXc7Z8=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4162.eurprd04.prod.outlook.com (52.134.95.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.9; Fri, 10 Jan 2020 07:20:31 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2623.013; Fri, 10 Jan 2020
 07:20:31 +0000
Received: from localhost.localdomain (119.31.174.66) by
 HK2PR06CA0009.apcprd06.prod.outlook.com (2603:1096:202:2e::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2623.10 via Frontend Transport; Fri, 10 Jan 2020 07:20:26 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>
Subject: [PATCH] arm64: dts: imx8mn: Init rates and parents configs for clocks
Thread-Topic: [PATCH] arm64: dts: imx8mn: Init rates and parents configs for
 clocks
Thread-Index: AQHVx4ZxYo+CJ71kh0mLSYhdPwN+wA==
Date: Fri, 10 Jan 2020 07:20:31 +0000
Message-ID: <1578640589-17210-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR06CA0009.apcprd06.prod.outlook.com
 (2603:1096:202:2e::21) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 1ec1f691-7f5f-4517-62fc-08d7959d9350
x-ms-traffictypediagnostic: AM0PR04MB4162:|AM0PR04MB4162:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB416296A93527717E46DCCDB288380@AM0PR04MB4162.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 02788FF38E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(346002)(366004)(136003)(39860400002)(376002)(199004)(189003)(86362001)(4326008)(81156014)(81166006)(66946007)(316002)(36756003)(69590400006)(6512007)(71200400001)(6666004)(16526019)(52116002)(6486002)(8936002)(54906003)(186003)(26005)(956004)(2616005)(5660300002)(6636002)(6506007)(110136005)(8676002)(478600001)(66446008)(66556008)(66476007)(64756008)(44832011)(2906002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4162;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wEUjmdBdUi99hUfggAd4bDZ3S7Y/j/qkH6RVnjyUhFz8O8jhrX0W53hjdUtVtdMwCKHaxODELDT8AgRVFqLxcuJB/QUnqYhA9OMYl/yEbryOJJZOPwe8ojP+3VUCX4qVUYO7S+jKWQHbXQ8a10ZH54mxlwkp6qQzkfBdQTtnY1g/pBlZvpTrLLsNK196HFbSRk5YovTISm/oAwWFhQWl5RoZRExSwIztatk7Ovq+yjn6UJGVo6gJxJXtgFfBgMQ/mfV6lJBvoqis7OPD9X9MkO393m2tQhKLpj9xzMEuxiLLgyyyUFnlJSaIyLq9MvzcN+mJWre29DB8WKqA7S7rWk0elOjr+ry7P12hjEU+HUvJvOnsVy0iDDyIXV9p7LHJv5AAHm+29Ao881+X2aruYnXHxHnt20g39d5j3i3Lbu25/uAAGMsYyqh2Es+UTK+t238TGEX/lKfvvdC5dciNg7DOahY7F/m7xVGRjNuWG1Ns9fduBIXAMCATak1V5/svp1rU0tRQ/hnVVqxMLJFoMw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ec1f691-7f5f-4517-62fc-08d7959d9350
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jan 2020 07:20:31.4055 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pMphcJAmHp5fXruGEso2qSK0W32bmiNnZzjiKYnj4g4q2h8In8tCzCWWK+PZrfnDcYZYIgQ3jYTMn+vu2BL5Og==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4162
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_232034_171655_D6C61172 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.50 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Peng Fan <peng.fan@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Anson Huang <anson.huang@nxp.com>, "angus@akkea.ca" <angus@akkea.ca>,
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

Add the initial configuration for clocks that need default parent and rate
setting.

NoC sources from SYS PLL3, running at 600MHz. Audio AHB/IPG clks needs
to run at 400MHz for better performance.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mn.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
index a44b5438e842..0a62a478a930 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
@@ -379,6 +379,16 @@
 					 <&clk_ext3>, <&clk_ext4>;
 				clock-names = "osc_32k", "osc_24m", "clk_ext1", "clk_ext2",
 					      "clk_ext3", "clk_ext4";
+				assigned-clocks = <&clk IMX8MN_CLK_NOC>,
+						<&clk IMX8MN_CLK_AUDIO_AHB>,
+						<&clk IMX8MN_CLK_IPG_AUDIO_ROOT>,
+						<&clk IMX8MN_SYS_PLL3>;
+				assigned-clock-parents = <&clk IMX8MN_SYS_PLL3_OUT>,
+							 <&clk IMX8MN_SYS_PLL1_800M>;
+				assigned-clock-rates = <0>,
+							<400000000>,
+							<400000000>,
+							<600000000>;
 			};
 
 			src: reset-controller@30390000 {
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
