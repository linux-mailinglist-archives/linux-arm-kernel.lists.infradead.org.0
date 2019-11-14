Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0EA0FBE60
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 04:38:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/7j5v4KD+v+B561eTZsBbLxzLKPqWtiARrxBoOgem6Q=; b=uhqMhLPpHOlOtA
	sHSUK/W9ENT6VdWNxWQ2FIQUsWx3pMLLHnEfMTGDGg5qLn4WlpYNZDf+Ne3LVPS0K0fUhKAvYyROq
	yA9aNAy6zCfVUsZ1CWjUVJL7+BR8bBCf5FfWD6oQY5Wr5BkKqgbGUBMVVwZrfVeysbmRxZlhOxkQ9
	ZjrhbrGBdGs2OR8f51qZ89oTDMSAmr75y164sOieR8AnTtYEDuepIkAFnIQDvmeGW7d/o1gwFWdth
	xP8eOCCcD7CoO1d0itjs6IpgGs/HrnvcBES6XCg251oLKCrACs40Xc3pLb6Jx08rkcXDSlsquo7yb
	66KVzdHxLkgcCSlj801g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV5xc-0007Os-B9; Thu, 14 Nov 2019 03:38:20 +0000
Received: from mail-eopbgr20046.outbound.protection.outlook.com ([40.107.2.46]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV5xV-0007O0-39
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 03:38:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aHH9/hi+I1gG81OJdl9dABpMhHow0E3Pkr9XlYebJ6c7oXDoEhcd4bfSWM4CU5QUFKqWUcD006pnSdqybAxLV7KlkNcQTBvRIipDI9Y7N4PdwdzX/Ods8rjb+AgEBn5N+S8mCZqh4cMqYDy3MfYyCWkU6lFQX5EuBJEVeudge6qb/iOZA3ITcMY9dWiTwHnCDaEqtfuCVECA2TOahfulHWFX+sv99Yc/GwenBcovsFGMvTAa1EsipOs1PVQ60n9+uEyoylTvrXhZrnbR6CYkKOFvlFJo8qhpyxKCF1AkivAd76mjyixwAaT/aPZ0+QBx4th0Y1zzBuSSGmu5PBb0gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JVomEozqSvqXZnWTSTwyTSROuIgPQ59+N2d2854drf0=;
 b=nPr9P2Sw2DaFQ9unobpK9f78Fkmealk+xmtbrDMhYUYEWSkp22YTfJceGkvCIQbj3tlhQFwT+1teBshazGfmFSH6pzHOgnAQz+Uavv1P4DMzcrTPoBaZQ5dJCPDGYVYkpQFFOjZXV1M57FdCWuSQpepyA2x6z/d8do+GhZNVi7Apie81NupUKtU0emQ5cvzEZnBSilDv9b4jymVccy2L13VfU24k0tYpGpQij5esfBDdMsd5buv968Nl/TEA5a3yIr8ZZKwbO9XeUiBwZ3SM9lp2SyQPqvR+ScAxq8w1giOK3sT7qNZ2TN7gL8tSflw6y6l6CpYxPA0QgX9c1Sgx7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JVomEozqSvqXZnWTSTwyTSROuIgPQ59+N2d2854drf0=;
 b=bbhYumCF2dPwiPUkEqpZwgJn7yxasonSImNDxxyJ35lX2mfdj3tkCFVRQUFfZYqg3gWuq5w8vPkiWM/ECRxep7x/nL5iqugdKTQXB8QqseBWJFJ/Bfsmdp0BfxM1g7akrLtrWEeRDy9kht44tXom6KN96j16rCwOTWDvWN9EU/Q=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4994.eurprd04.prod.outlook.com (20.176.215.215) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.26; Thu, 14 Nov 2019 03:38:07 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c%4]) with mapi id 15.20.2451.024; Thu, 14 Nov 2019
 03:38:07 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>
Subject: [PATCH V2 0/4] clk: imx: pll14/sccg use relaxed API
Thread-Topic: [PATCH V2 0/4] clk: imx: pll14/sccg use relaxed API
Thread-Index: AQHVmpztVPwy+EJUrkWokuVEwk9sYg==
Date: Thu, 14 Nov 2019 03:38:07 +0000
Message-ID: <1573702559-2744-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR01CA0033.apcprd01.prod.exchangelabs.com
 (2603:1096:203:3e::21) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: e0a0f223-7bbb-4f2b-2a04-08d768b40ff8
x-ms-traffictypediagnostic: AM0PR04MB4994:|AM0PR04MB4994:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB4994A648A3A4B28ABBD23F0C88710@AM0PR04MB4994.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:247;
x-forefront-prvs: 02213C82F8
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(346002)(376002)(39860400002)(136003)(199004)(189003)(66066001)(305945005)(14454004)(36756003)(71200400001)(71190400001)(4744005)(7736002)(2501003)(99286004)(4326008)(486006)(81156014)(81166006)(25786009)(86362001)(44832011)(2616005)(476003)(50226002)(8676002)(8936002)(52116002)(966005)(186003)(6306002)(478600001)(6506007)(386003)(6486002)(6512007)(6436002)(2201001)(102836004)(26005)(316002)(5660300002)(54906003)(110136005)(256004)(14444005)(3846002)(6116002)(66556008)(6636002)(66446008)(66946007)(64756008)(66476007)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4994;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1AvxGqmLxWJNW8BjrbqgI86G5FtNm2+MvyyKZk1JuPVJA34pas35U1vVVgrwJwF6vmH6zv+FHaeOyfGNekVXwosVX/LnfJY6evvhPJBUJEHejp3crkCjykEkMEhCv8WqtneNlcbEbiNopUgScyCrrBiIXGvd4zprxvCJF3xrxIunm8kg24eWs4Q25EnqiZQL5dp+fQYFBUMwPrkUYG2WdPTtP+42X6bTjh0Fo3xpLglY5p2JU6xdaKtROB7K2AieK4KnfaL9lK+4ywXReh6uVrCeB8x359hO16i07Iuz77u3qJ1AjlrDBCc2v8W73f6vtzXX/v7lHfPpQWYWYv10Xet3vJzNo0W9bI2kwwzj3FNFAlJnAlm+fdtXkLh8c9Le7sw0GoCztx8fuNLQYt85WVZkQHkV8GE/UVJ47/PlY95BFHKiaBjld014Neb7JAZE
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e0a0f223-7bbb-4f2b-2a04-08d768b40ff8
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Nov 2019 03:38:07.1376 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MYaRJPDZDst1nUs5WxSrZcgyyI+fSJcV5BJh2/j7Mn5X16IIgLoyG0XArXyXpjC4UKRKK36RdpU60WiYkGAyxg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4994
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_193813_136924_EA6A7649 
X-CRM114-Status: UNSURE (   7.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.46 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.2.46 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Alice Guo <alice.guo@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, "will@kernel.org" <will@kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

V2:
 update commit message to reflect the change
 Merged sccg/composite-8m into one patchset

This patchset is insipred from Will Deacon's slide/video:
https://elinux.org/images/a/a8/Uh-oh-Its-IO-Ordering-Will-Deacon-Arm.pdf
https://www.youtube.com/watch?v=i6DayghhA8Q

Peng Fan (4):
  clk: imx: pll14xx: use writel_relaxed
  clk: imx: pll14xx: use readl to force write completed
  clk: imx: sccg: use relaxed io api
  clk: imx: composite-8m: use relaxed io api

 drivers/clk/imx/clk-composite-8m.c |  8 ++++----
 drivers/clk/imx/clk-pll14xx.c      |  8 +++++++-
 drivers/clk/imx/clk-sccg-pll.c     | 17 +++++++++--------
 3 files changed, 20 insertions(+), 13 deletions(-)

-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
