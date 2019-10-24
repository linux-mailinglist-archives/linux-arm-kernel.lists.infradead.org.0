Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89031E27E5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 03:58:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0PfIWESjqf+xFETXZuzCZlYE7bck4pnj2jpMYHDqpRc=; b=mDPJsUzTvvLKkj
	D6YyTN2kz6IfP1IF/Wa3zvRqWg22T7AKIavwW8/LceAVtGNqHtxnTBCmgv7fIpVI5WVdpL68oA8La
	qfilPPy+FnrAIiaZsoWAVIJrTn+JCeQdZidbHapuPdZHikSe2U4Ebi+Sm+/8jGaj4WNEfp3KTjW45
	/0rYYgfTZ0L3dXsD+IoNeOevE/wJzH89jOVfyyiHDkKl9OfzOd2b3WbWWSAJkWZ7J0eOuOKb5eLKC
	YUWWVSXwxWuFvAQAEQ20v/JJMv9RHtPtDH9lUF+f7gboPvMDHXoNZgo46KtBR6Xe5pbY7xH4k5BDi
	UESQn/zzsTZtnjXa/pXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNSOp-00035J-Qd; Thu, 24 Oct 2019 01:58:51 +0000
Received: from mail-eopbgr20049.outbound.protection.outlook.com ([40.107.2.49]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNSOb-00033d-4U
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 01:58:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m+XDLkOg5hHA/jFmIWk2s5DXfdeqO+Kcb1H63Rb8OGx8f6OH54TKUNDqeSAB8SDa0mfaKSCcN+L/7g9HstzVXJzq1OSQ91lKsB+NXINI3kzRqAs/yn76UYeBLuzrZRAD6RLIVdl6gDfAhtuctaR03EefWO01dShTNiBAyXbfBPF8uuHl9VBLYCZhJz0VtnsabntKOmNlAamqX8+ING+noAdugRLMU2SlPcj8BM6giMYJdgu+iMWP04tDZvzv3mUhYLWBBkcMGy2DLUFtB0Wr0XizdoRQ0l9hG+RiEA4hK6M58v/tbJ41AJr1PHVVnVhsiwcmNZr/zCm9tJq2iajZUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GNNW6IdRPNd7T+iUN7P/aWeqGc7Ps1wlIbgD87hNXDY=;
 b=DyghYwIYHhY2KFZuNJudm8QsXNRr4e4lrwS74n8UHK5awCvia1jaUcGI0qU1JHVyKsc3d8ovJOz1GxGVT3vrU2R94FyfTJl3311Oq9/Fa+URmzsCMQHGwvBqiZ3J2dMY4h/etgfZ0d6x5RcJAkzOX4P05i2ERSeMU0wN7kGqMvP2GdbY+MvA9Yh2BDfV6knntxslVI60Z7V3CbMVXO4I1cX5XDHJ4kwleOKnuwqqS60YzN/9wHxrGXvu74tUc606dC5NKtneh3meXg5BcmLRAyr1SDNlk85tFiLPqJ72CBcRuYdgYoZ+ijGtasz9n4RgyRPycA4V39y42qWVbOT8dg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GNNW6IdRPNd7T+iUN7P/aWeqGc7Ps1wlIbgD87hNXDY=;
 b=rAAyQXv7pUNHshsjm3/KdlQwEjP5NjDKiPVAEo45jUQWvSc8/qHPxkCvJqT8YnLXZrc3eUpnKN0f1fjC5Lc0WkR6rw9Xf/ApfDWyHklZaAsI0MwkHy+pE+VlwHIah7Z4t9vRkZD02p+UH5K8Obo4YG3cypiv/wRDY8jx3iNcw7w=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5988.eurprd04.prod.outlook.com (20.178.115.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.20; Thu, 24 Oct 2019 01:58:32 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1%5]) with mapi id 15.20.2347.030; Thu, 24 Oct 2019
 01:58:32 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>
Subject: [PATCH V2 0/3] clk: imx: imx8m: mark sys pll1/2 as fixed clock
Thread-Topic: [PATCH V2 0/3] clk: imx: imx8m: mark sys pll1/2 as fixed clock
Thread-Index: AQHVig6J8Dr/NaCM/U+VtYt23Ahosg==
Date: Thu, 24 Oct 2019 01:58:32 +0000
Message-ID: <1571882110-10191-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR04CA0082.apcprd04.prod.outlook.com
 (2603:1096:202:15::26) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 44679f6a-fb09-4521-c824-08d75825abe6
x-ms-traffictypediagnostic: AM0PR04MB5988:|AM0PR04MB5988:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB5988252EA9EA2934E1E70F82886A0@AM0PR04MB5988.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0200DDA8BE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(366004)(396003)(376002)(346002)(199004)(189003)(186003)(26005)(316002)(4326008)(64756008)(6116002)(71190400001)(6512007)(6306002)(6436002)(2201001)(305945005)(25786009)(36756003)(14454004)(54906003)(71200400001)(478600001)(110136005)(2501003)(5660300002)(7736002)(52116002)(66556008)(2616005)(99286004)(6486002)(476003)(8936002)(256004)(44832011)(386003)(86362001)(50226002)(6506007)(486006)(102836004)(2906002)(66946007)(966005)(81156014)(81166006)(66066001)(66476007)(8676002)(4744005)(66446008)(3846002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5988;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RaQnjIkgf/82IgaklKbXP85i1JEWy0f2OYWY+CTHVUf6MhrT75JyVUv1iIk48UGCaCeKvYwAp/RDOQ+LT2mIEhxrwse8bVeqw/99rA0AqBm9AqQuqlmWG2A+gM2h8Gs8c3jMWH/mcknh9NjtMtMdQKc8tUBHoH/Nx9LSU2gpmneRQ0P5g6U3g5Qfvol+xG2pnbJi1HZOYRENt97DGcv6j/0uFLFiUGzthe1NBe4lRZeYo5o+QU7XiGOLeO7rj6u/7kawN22DxPLp/7Ihxmy0Op37HQw0Zap0eDNTuElh+P56tghll2fhCODgU337YuuYJW3UuFY4Gi0saRkwEOEeNvaZ9bqgXQpnHQhDaxpLDv0Cg5ZOy+iSWcUWU79RLz7TPtVa1p0m1JaStiy8hL6Ap+ZNW76DXRUknvoH32AqqFlldQLAegqDrEzP086UoTQD0VnOq7o29abpbBOJanw+SCjh5YLV75rfcBMqUYXz3ZE=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 44679f6a-fb09-4521-c824-08d75825abe6
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2019 01:58:32.1045 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pwmqDdcjd2pC2odLJGfpCrklJ52dqIyfqWSS081jjFk5lzF+Qz1FSbqtnvvX47kQK/X0Hy4YeoYpj5DiqSvv/Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5988
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_185837_274985_40AE8E24 
X-CRM114-Status: UNSURE (   8.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.49 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Peng Fan <peng.fan@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

V2:
 Add R-b tag from Abel
 v2 patches are made with Leonard's v3 patchset[1] applied to Shawn's
 for-next branch to avoid conflicts.
 [1] https://patchwork.kernel.org/cover/11193191/

According Architecture definition guide of i.MX8MM/N/Q,
SYS_PLL1 is fixed at 800MHz, SYS_PLL2 is fixed at 1000MHz,
so let's use imx_clk_fixed to register the clocks and drop code
that could change the rate.

Peng Fan (3):
  clk: imx: imx8mm: mark sys_pll1/2 as fixed clock
  clk: imx: imx8mn: mark sys_pll1/2 as fixed clock
  clk: imx: imx8mq: mark sys1/2_pll as fixed clock

 drivers/clk/imx/clk-imx8mm.c | 46 +++++++++++++++++++-------------------------
 drivers/clk/imx/clk-imx8mn.c | 46 +++++++++++++++++++-------------------------
 drivers/clk/imx/clk-imx8mq.c |  8 ++------
 3 files changed, 42 insertions(+), 58 deletions(-)

-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
