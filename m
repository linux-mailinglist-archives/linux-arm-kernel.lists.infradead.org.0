Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C05D0D6FDE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 09:06:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DEAMja3cwxJA+eUt5xhR6/4Ci5KhCZO2SrYx3iMxslo=; b=tjOvfgjbfg6NCA
	fE/rM5GkIZzXuDeSWhP0L3pj9I4sf6Fdj+PutJUTel1gEOaPUv/E6SGGQymMH21tBWXhv2Fg5586M
	rfwQbYy35tsrm5Chre6e8FGWkqBSFhJeWMKPvNbVle4katEjC3wV64zs9f7zrcSEANokSbXRHqU8B
	iO/DEG+dd7jYIKYWKAUD2/N8lonNS17J+w2sveIzouo/BmlJC2EQM2ZHB0g1XhdognpCByNpbEV6Z
	4y/1fuQtrba4qz0Pyxda81ulQTcBClUv0ko2lOs/bFK9q+ROrCXMGjQGW1iQY2kzJONNX5l72/2zn
	SF2fGM/SkxqK7ovkcM7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKGuG-0006sH-Ew; Tue, 15 Oct 2019 07:06:08 +0000
Received: from mail-eopbgr60064.outbound.protection.outlook.com ([40.107.6.64]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKGu5-0006rR-Jd
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 07:05:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lX9oZzMXjFu7JdXJZAFnrVsb9OvitHt+gnpPnqwj/OU8LSVv2hDoRo9gpE9lBwZhABYbaRL06k3okKc8VZHQZdSh+smWIzr7f+XtYtXzPqxg6d0Yq4XZR5DoI9tkmVkIkaxbCaoirJgETrTC4gADLr8c6j5KDpeK24STHa1CtFxLZV9l/owgLLpEUoNmYcpzgSCg7EMLQHBxkxYkhZCcgXdEdYMW9nGkGKJSPr/sh5JgzpuiRTYfkruuISwFeF0hRI493DRy2Lw2VWbLvQ2/Nn4SOBN+3V7DBijkOCog2Dno+sq1XBs83aPvzzq9Hk8XEQFnNnb9I1VhL/NNn8rRmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DCbBUNqU2Xi+G69tYMOFUCw6uVPSzHYICKtvvfwAFGg=;
 b=QDmf/BF0nklnRNrNoC8fby2gNWhhH7Ctjoge+BJOcSN2QfZBAe6URifi3X6eIl4jCU46uXEgGhIQ52bYT4Sb4tNt95540zzz59IZlxquqQhRaHQ9gmVZQixaOnSRhT8bDQoWi/eL3QE68bbfXnhE+ZsKyaXrqEguCXSci0Maq22Qa5lssqgCv2zjDY1gKJxX54J/j3e+K/iQmU6AzarLCfNwfBvtS0cHY+yhWYKARZor5roreB18UCeb/rk4u+9Z5Bigm8U7WU5gGXff3Ml7gDeoXTfzzBDJHv1uQs2en2Sfpi1c2qbZw0Vfub04qkc4XT8bpjHEjHneZBghGx1h7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DCbBUNqU2Xi+G69tYMOFUCw6uVPSzHYICKtvvfwAFGg=;
 b=H5DL+7CKXAz2/qAb8SJVMPUiuMy7ecSAXNSN91tNug45pB4drX3QAvYbDD2f/iRTFw57yHNj/eIF81I9OahLdAbRR/WFTO3Ci5eL8HbjioYsO5hWw+Wsm3gk4AGqDcbaHvSodHwYzjH6dV9oL1b1rW/0g78UB3EszA3Q921ELXg=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6721.eurprd04.prod.outlook.com (20.179.254.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16; Tue, 15 Oct 2019 07:05:53 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1%5]) with mapi id 15.20.2347.021; Tue, 15 Oct 2019
 07:05:53 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>
Subject: [PATCH] clk: imx: imx8mn: drop unused pll enum
Thread-Topic: [PATCH] clk: imx: imx8mn: drop unused pll enum
Thread-Index: AQHVgyb7rQc7WB2ptUeNJcHfwDTOYA==
Date: Tue, 15 Oct 2019 07:05:53 +0000
Message-ID: <1571122989-29361-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR02CA0190.apcprd02.prod.outlook.com
 (2603:1096:201:21::26) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 06e83f04-0a7f-4d80-fe22-08d7513e1ddc
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: AM0PR04MB6721:|AM0PR04MB6721:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB6721369DFE571E81DBB2B8D388930@AM0PR04MB6721.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:628;
x-forefront-prvs: 01917B1794
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(39860400002)(376002)(396003)(366004)(199004)(189003)(50226002)(71200400001)(71190400001)(66946007)(81166006)(81156014)(52116002)(256004)(25786009)(4744005)(316002)(2201001)(5660300002)(14454004)(66446008)(64756008)(66556008)(66476007)(305945005)(99286004)(44832011)(2906002)(7736002)(36756003)(6436002)(3846002)(6506007)(478600001)(86362001)(486006)(2501003)(2616005)(476003)(6116002)(26005)(102836004)(386003)(66066001)(8676002)(6512007)(4326008)(186003)(110136005)(6486002)(54906003)(8936002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6721;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LU9bcTCVdIyVLT45Y8G2ke8kM9cdX4io2JYo+jZ3jzuWBsOqPnpZ20vCX0yM0J/gwhgOUM6c6GOif2NO6XU+a9eJBPIXFrgSCz5uHPAnl0g/2e69p9fR01oG48Wckc3wS4I3P/9V+pStp4mMky8A3zgJZ0lpUoKNPGqsOCmD/eIyfYQOWjuWRayMefx4ZqmhS5CKryUwQBeFF6cRnkprGXTUFb7omjNJoAfT5U2NHEGNDqecd9bHUvAhwFBGUK7dP1Lppb3H4SqsnRby1MRu28+CGDE31rL7+Sqflil+9LgNLl73zNEKMHOyJpUnQ/Uy9GrbM2+GvpAsLtbacB7c++RE5TkM7bhoFje4fTjzMjq9lpR7RjmMeYB8jObMG3hdxBMNddL2kHJlNzbcRi9/Ez8JQFT/PnTOsySq3YW7TrE=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 06e83f04-0a7f-4d80-fe22-08d7513e1ddc
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Oct 2019 07:05:53.0926 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: p3KHzXThsDYvFMOcBH+qhnmQ89rLcK+C032FiSjiVizYvtLZNk8gzkaaZsrEW9DrWcP6q3sYZbJYHiF4aseZ7g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6721
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_000557_737538_48BC2349 
X-CRM114-Status: UNSURE (   8.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.64 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

The PLL enum definition is not used, so drop it.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-imx8mn.c | 14 --------------
 1 file changed, 14 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mn.c b/drivers/clk/imx/clk-imx8mn.c
index 28467db10c69..6ab6e9228962 100644
--- a/drivers/clk/imx/clk-imx8mn.c
+++ b/drivers/clk/imx/clk-imx8mn.c
@@ -25,20 +25,6 @@ static u32 share_count_disp;
 static u32 share_count_pdm;
 static u32 share_count_nand;
 
-enum {
-	ARM_PLL,
-	GPU_PLL,
-	VPU_PLL,
-	SYS_PLL1,
-	SYS_PLL2,
-	SYS_PLL3,
-	DRAM_PLL,
-	AUDIO_PLL1,
-	AUDIO_PLL2,
-	VIDEO_PLL2,
-	NR_PLLS,
-};
-
 static const char * const pll_ref_sels[] = { "osc_24m", "dummy", "dummy", "dummy", };
 static const char * const audio_pll1_bypass_sels[] = {"audio_pll1", "audio_pll1_ref_sel", };
 static const char * const audio_pll2_bypass_sels[] = {"audio_pll2", "audio_pll2_ref_sel", };
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
