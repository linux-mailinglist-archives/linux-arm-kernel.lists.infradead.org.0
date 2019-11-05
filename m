Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A07EEF65F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 08:21:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Dk2lcM4VLLUh085O94htTOqICD/J6dIEOddRG14WaHk=; b=pTi0RDu5cIXp8X
	dl98Kabi4QwLzFDEvf9vdLUJ0EIh9Q8d5YO1OoEgcrhXx/76VYzQD+/WKIgIcFZoEIz5m2y7gQNOs
	wtjQDBpNAD0LEHThGF1oc9zZRF481HZjT3r1j8gCYIAuRg5V/LPbH3y0UagJe/sSwAAIaHgFsh7tQ
	0QX3Krtfa54qh3UjYSraMDYxjtz0VYmzh1168GCVZ+JmMGsxbtRhgNnroFgK2HeWkIuk1VBaivgas
	juHY8ToLJcnagcvoa6RBtslZYcGaLHvS5R965gDQ7eW2mNA2ZBPmYcoGLF9cggRoAJTYtpW63VAmw
	+IJ/vRhFYnatJUPlcLeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRt9Y-0002Xr-Kc; Tue, 05 Nov 2019 07:21:24 +0000
Received: from mail-eopbgr70071.outbound.protection.outlook.com ([40.107.7.71]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRt9O-0002Wp-PI
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 07:21:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TXiXCy7JD9DKbj41pBrfQ28alYxk80Xt4VKI9nG65Ea9Kp14PvjWGW4523GQ2LUxScfS7oZ0zDQQxkdmkcFgeZPc36h+jNbUH+7tsHbSjOTCi54O2HRCIxFMbBhP1n7JdnFPy8/C0JHUgILi+ilXc/uOcSy1C3WsV4GJt4JIbicC6+P1dgninlJSxXx5oDcpf+1fB8QJRGEBPTAOSgS6Fh2DW0NPL/XGs4x7y+cppSJU5K/19i8ErzJsKsv4rTFGOXINzx9sOEQUtUGka5/bGmsbwsK6ZzM226JyRHAZdA2HqgQHBoGVFh9E0vPmQpU7hDb1Di4+J3j1tt4906z4+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Fg0VOfmyRVkQU2nDPkCCMCeqPGGYcOrVpqW1PWLizG8=;
 b=Rezp3SIcGRlq8t9Hkw4bb68345+lZ7xXZrKhlGgDTBNuh8h+s6usFt6SpPCRYlLfZG2BO+oDt+NM4a0K/5DhRpgQR7DCO6YODsHTdlafyC1VHurt58uYTHaLHmJFOfHAXUBSC5S9D0kzeoLngLO5bjOC+WnJDYXMcgosDhqklEueIVAbV6op8cZcdXd9N46FG7iX3MeDi6bOZYH/7unja39HjxL0Mdfd2pB0jM2vJWkLzR4nu5T+QeSOWBPWDYiZeBHNoig8BcBB5q+fU6dvcA4xu/UebKuTrob0/+lkkQAwivMM0Fae0WSPRh9KULzctB4PSi1CmnTtvUhTqvb4pA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Fg0VOfmyRVkQU2nDPkCCMCeqPGGYcOrVpqW1PWLizG8=;
 b=jG161WRXUYi4oBaImT+CZQ/LP+/kPXcaGLizY66g4REc88HIpcCm58SRbVXaJbQzUuhuoTjCswzst1+Bw9rfVZYnk4TIr8DlfUinvL+64RWn/2JhP9gW9MH2NmeOiISAIVpi77ykhtvMArq//PmDd1ACTJiH3DMmUM+E17XXuPo=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5668.eurprd04.prod.outlook.com (20.178.202.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Tue, 5 Nov 2019 07:21:08 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c%4]) with mapi id 15.20.2408.024; Tue, 5 Nov 2019
 07:21:08 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>
Subject: [PATCH] clk: imx: pll14xx: initialize flags to 0
Thread-Topic: [PATCH] clk: imx: pll14xx: initialize flags to 0
Thread-Index: AQHVk6mXpyRie0JbfEaM7Eg+PLW60Q==
Date: Tue, 5 Nov 2019 07:21:08 +0000
Message-ID: <1572938372-7006-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR01CA0039.apcprd01.prod.exchangelabs.com
 (2603:1096:203:3e::27) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: b85e1df4-3c68-400b-4b2f-08d761c0ba2a
x-ms-traffictypediagnostic: AM0PR04MB5668:|AM0PR04MB5668:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB5668043D5AA829C1C874BFDD887E0@AM0PR04MB5668.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:576;
x-forefront-prvs: 0212BDE3BE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(346002)(396003)(39860400002)(376002)(199004)(189003)(66556008)(6486002)(66476007)(5660300002)(25786009)(3846002)(6116002)(316002)(2616005)(186003)(476003)(26005)(2201001)(52116002)(2906002)(7736002)(305945005)(99286004)(8936002)(50226002)(110136005)(4744005)(44832011)(54906003)(86362001)(486006)(64756008)(66446008)(2501003)(66066001)(256004)(6636002)(81166006)(81156014)(102836004)(4326008)(8676002)(6436002)(478600001)(36756003)(14454004)(71200400001)(386003)(6506007)(71190400001)(66946007)(6512007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5668;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0WvJlG0hvf9BAwubKE9CNCLUt54s6IfV6u9tPlMKDeigHLGx5/5Th53R66Kx8JlF31VgM1I8V/blJAaWaauwr+va+psQTB9ug2rE1ZgLRD7hxh0CTbxs90WAPuRfBfmSAFGzX36TQAumIejw0hhd1AFVAt4TkAP0Or0gx/s8Hnai/llUfMNlw3LLyvK9YDfG+LdFNp79q2fOWUlD520yT5B/oMZ1rzLkpz6PKUr+hGPPhUkdhkJiLq/ZRhRHJEktxDKWmIYz3IyDmSFuetZl09QGDphGy9+vKHzyltS3oivupG0ZlqEm/VLqDSLMq0Y5LVTSCZ6d5oG2RRveTyQTSnfKEatth8aohdmFdn/3m+dXBdLY0YIafWqb1jm0NRdrKktv8gXphSVWB4mcqNc44HqcsYgQ7chL3aiRlqKSGH0EqTPLBcYPPncNoN7JqxuE
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b85e1df4-3c68-400b-4b2f-08d761c0ba2a
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Nov 2019 07:21:08.5461 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wg5T5xGuYOoycXU1D7f7yOrI1e80SPN3Zl9Pq6IdbopNrlbYMmxjOEIEg/CTep0k2vCEBU28LMmYgFzFuS7SVA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5668
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_232114_918324_141936EC 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.71 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

init.flags is initialized with value from pll_clk->flags, however
imx_1443x_pll and imx_1416x_pll are not static structure, so flags
might be random value. So let's initialize flags as 0 now.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-pll14xx.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/clk/imx/clk-pll14xx.c b/drivers/clk/imx/clk-pll14xx.c
index fa76e04251c4..a7f1c1abe664 100644
--- a/drivers/clk/imx/clk-pll14xx.c
+++ b/drivers/clk/imx/clk-pll14xx.c
@@ -65,12 +65,14 @@ struct imx_pll14xx_clk imx_1443x_pll = {
 	.type = PLL_1443X,
 	.rate_table = imx_pll1443x_tbl,
 	.rate_count = ARRAY_SIZE(imx_pll1443x_tbl),
+	.flags = 0,
 };
 
 struct imx_pll14xx_clk imx_1416x_pll = {
 	.type = PLL_1416X,
 	.rate_table = imx_pll1416x_tbl,
 	.rate_count = ARRAY_SIZE(imx_pll1416x_tbl),
+	.flags = 0,
 };
 
 static const struct imx_pll14xx_rate_table *imx_get_pll_settings(
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
