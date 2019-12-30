Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6587012CE20
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 10:14:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MQqRnam3uBn/l4z75W/t746aFJFTki69UACwAooljKU=; b=AiIMcGpWR06wts
	8J2+9AHArWg6NuGGyo4aVfgmCQ2yR2ko5ATffm1rLqEfycTitz2sUBAACeLZW62eoEZE25Gyczfjg
	H73BghJxyRjaRtJSs5FxQbjlYfLOKVlRDgBUY3V8WQZhS2uSZJ3F1ujrkLCu+72nNZF8Thh+y8mxK
	XBz0sxsUw2pOao9ZRdW1d4LWlK3bOsm1R9zgB8ZSiytrsOhz1S9j9BnsArGOzLDJ/bNLqjCjwyl9T
	cJDncp33K5yO8VMas0x+ep30zy+ojnVBv3cCZINvgg9LUlyWTClBbL5QyzeGsUcx7wOBLFZwBMVLM
	R13E+u+w/WUbNG32kIlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilr82-0007CL-Sv; Mon, 30 Dec 2019 09:14:22 +0000
Received: from mail-eopbgr150083.outbound.protection.outlook.com
 ([40.107.15.83] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilr6y-0006QN-6s
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 09:13:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TGK9XFDY5UmY8HtbqmD2v1kUGlXJFFP1SB4UXbRP6Wo/8l7z/+NOmZTZNncsZmRLruoqayfImMa+K0zIAShGDCLVYgStSfeYw8m2fIky+qirTphadYPvSidB1N/lRdVSYdNAofZImyxE2okZULvMEs9zkzL3ebrDthsAkZSNT9wNSWQaeVeJzGyi9cZqLwlVG5RdnkoGaB/k8a8iBWZ3jhgZdcSGbPDfx6iz6g4oMsua19U0z0ixgX+xOAtgXHFKCzO7cP7PHfrvnQzP/ipsflToddHpVK2Itkih/WcUWxc1elMhfBoeoJIog44hSEMFrbnP5COR1uPIjdRPkqpNRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ozk4iXgh/7e/KqpdllhBQgFjyUvd8vUZ0U4pzwDjvxU=;
 b=PP1cIlR3by9GPG+VsNe0cB31k78e9BOvDjrdUDnDifrTBVfz1HhUDjetaoXw5AdQg4AknNPZrB7Bx+t22CywYBYcre4NltJCIN7RjAUSSfgdWFtIQMkHjT9R87t31edzDsqRCw2rfudwWR9s+pz+fqWtns18WCZ435b8BIks8I7DZN/q+vJjVWhDmP2lgS17uWkhNIJZfaZdIIqhlXQ+QIX3SAf8ygqT6oALSi12BuoHaPjh+F5HOcfNXUHqe7lK7fV/IG16tH3Kqqc6DVGD8C4anX/AKDuhogbEDY3J+4B9BveIQIXIeFT5EqgD6rfqJUL05tIMs3HdpjRNZB+LsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ozk4iXgh/7e/KqpdllhBQgFjyUvd8vUZ0U4pzwDjvxU=;
 b=fQObsyyvpWfB3qLMsdz0c2RbAMrGPRfwoHH+kTB82Vjk1yguY7CmOF47IxgdWRCCTmKV8sooxuvir99cwTZMfWeEhGTTK4sNr2oLTGFikl8UqYKu7PStCwkRhFOpeQhLwcTIrAjCgOpqaxxaNmOxoVcBDAXqLKw9viDtDNjxHgU=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6401.eurprd04.prod.outlook.com (20.179.254.97) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2581.12; Mon, 30 Dec 2019 09:13:10 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::c58c:e631:a110:ba58]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::c58c:e631:a110:ba58%6]) with mapi id 15.20.2581.007; Mon, 30 Dec 2019
 09:13:10 +0000
Received: from localhost.localdomain (119.31.174.67) by
 HK2PR03CA0057.apcprd03.prod.outlook.com (2603:1096:202:17::27) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2602.8 via Frontend Transport; Mon, 30 Dec 2019 09:13:06 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>
Subject: [PATCH 3/3] clk: imx: imx8m: use imx_clk_hw_pll14xx_flags for dram pll
Thread-Topic: [PATCH 3/3] clk: imx: imx8m: use imx_clk_hw_pll14xx_flags for
 dram pll
Thread-Index: AQHVvvFbxKyPeAf2oEWw9V8pqxLyug==
Date: Mon, 30 Dec 2019 09:13:10 +0000
Message-ID: <1577696903-27870-4-git-send-email-peng.fan@nxp.com>
References: <1577696903-27870-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1577696903-27870-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR03CA0057.apcprd03.prod.outlook.com
 (2603:1096:202:17::27) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.67]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 42829551-2c58-46b1-3b16-08d78d087d85
x-ms-traffictypediagnostic: AM0PR04MB6401:|AM0PR04MB6401:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB64015307A4C988EB80AC453588270@AM0PR04MB6401.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2733;
x-forefront-prvs: 0267E514F9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(346002)(39860400002)(366004)(136003)(189003)(199004)(81166006)(81156014)(6506007)(66946007)(69590400006)(71200400001)(66476007)(66556008)(8676002)(52116002)(4326008)(66446008)(64756008)(26005)(8936002)(2616005)(110136005)(6486002)(54906003)(6666004)(956004)(86362001)(6636002)(316002)(16526019)(186003)(478600001)(36756003)(5660300002)(2906002)(6512007)(44832011)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6401;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: B/Aj+4H26luSTUJBNYrwQfvdkPAIE7fquu+FLEi9++KkPnwB/ki1q3nbOloRy00mNxdgujlYC79WWRUp+PKEWibflD+STroTw1dorur4hHMrRAc2fKK42/Ewk4fobfXKgbX/YRTaOw7C+Cz6ZMWP/beygU6O1EY/yhEWEGl2od1a56oYFYWuM8tN9UbLs9ZxUV9Vlhk0GsKrnMNn/YHuW1bSquCJbWIwMsCWbuWkOsVXXFgzp3Ll8zcMBGuTad7lWMNHmXcg2/MYQyg0INigZpQYy/3IkcOTC3+BOc1nKD0yE9PzsTYW4G6MjOp2I1F70F5dBhj3/nqK8RSt1V+RL5ca0tjex7TA5dDdoTFaguqCscvMjwvLcnq6dg4FWP24c1a1juZWkWtcjanmP6Bf2WJWTH3Nmla5hpHi4W0PQnXsXTCPR8k5i9FKQAL+rbBo9o5s1uM9xCohaxmAdj6u8KasRuCqmeJnw3NtgE+kLlRMimLg0ZwHHEAO5rhl/j6uLXucTeRypps5EENDTPiMQg==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 42829551-2c58-46b1-3b16-08d78d087d85
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Dec 2019 09:13:10.4560 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SzNACm0XTZut76tukBFkfWnywltQrevlk8vez33vt7IeHWRAg90C5ALTuoRGic6S6hc8p+AW393xn2XKFcYQOQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6401
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_011316_294156_027D7526 
X-CRM114-Status: GOOD (  12.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.83 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Use imx_clk_hw_pll14xx_flags for dram pll.
Modify imx_1443x_dram_pll to imx_1443x_dram_readonly, because dram pll
is not expected to be modified from Linux.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-imx8mm.c  | 2 +-
 drivers/clk/imx/clk-imx8mn.c  | 2 +-
 drivers/clk/imx/clk-pll14xx.c | 3 +--
 drivers/clk/imx/clk.h         | 2 +-
 4 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
index 2ed93fc25087..55862652b19f 100644
--- a/drivers/clk/imx/clk-imx8mm.c
+++ b/drivers/clk/imx/clk-imx8mm.c
@@ -337,7 +337,7 @@ static int imx8mm_clocks_probe(struct platform_device *pdev)
 	hws[IMX8MM_AUDIO_PLL1] = imx_clk_hw_pll14xx("audio_pll1", "audio_pll1_ref_sel", base, &imx_1443x_pll);
 	hws[IMX8MM_AUDIO_PLL2] = imx_clk_hw_pll14xx("audio_pll2", "audio_pll2_ref_sel", base + 0x14, &imx_1443x_pll);
 	hws[IMX8MM_VIDEO_PLL1] = imx_clk_hw_pll14xx("video_pll1", "video_pll1_ref_sel", base + 0x28, &imx_1443x_pll);
-	hws[IMX8MM_DRAM_PLL] = imx_clk_hw_pll14xx("dram_pll", "dram_pll_ref_sel", base + 0x50, &imx_1443x_dram_pll);
+	hws[IMX8MM_DRAM_PLL] = imx_clk_hw_pll14xx_flags("dram_pll", "dram_pll_ref_sel", base + 0x50, &imx_1443x_pll_readonly, CLK_GET_RATE_NOCACHE);
 	hws[IMX8MM_GPU_PLL] = imx_clk_hw_pll14xx("gpu_pll", "gpu_pll_ref_sel", base + 0x64, &imx_1416x_pll);
 	hws[IMX8MM_VPU_PLL] = imx_clk_hw_pll14xx("vpu_pll", "vpu_pll_ref_sel", base + 0x74, &imx_1416x_pll);
 	hws[IMX8MM_ARM_PLL] = imx_clk_hw_pll14xx("arm_pll", "arm_pll_ref_sel", base + 0x84, &imx_1416x_pll);
diff --git a/drivers/clk/imx/clk-imx8mn.c b/drivers/clk/imx/clk-imx8mn.c
index c5e7316b4c66..e4710d3cf3e0 100644
--- a/drivers/clk/imx/clk-imx8mn.c
+++ b/drivers/clk/imx/clk-imx8mn.c
@@ -334,7 +334,7 @@ static int imx8mn_clocks_probe(struct platform_device *pdev)
 	hws[IMX8MN_AUDIO_PLL1] = imx_clk_hw_pll14xx("audio_pll1", "audio_pll1_ref_sel", base, &imx_1443x_pll);
 	hws[IMX8MN_AUDIO_PLL2] = imx_clk_hw_pll14xx("audio_pll2", "audio_pll2_ref_sel", base + 0x14, &imx_1443x_pll);
 	hws[IMX8MN_VIDEO_PLL1] = imx_clk_hw_pll14xx("video_pll1", "video_pll1_ref_sel", base + 0x28, &imx_1443x_pll);
-	hws[IMX8MN_DRAM_PLL] = imx_clk_hw_pll14xx("dram_pll", "dram_pll_ref_sel", base + 0x50, &imx_1443x_dram_pll);
+	hws[IMX8MN_DRAM_PLL] = imx_clk_hw_pll14xx_flags("dram_pll", "dram_pll_ref_sel", base + 0x50, &imx_1443x_pll_readonly, CLK_GET_RATE_NOCACHE);
 	hws[IMX8MN_GPU_PLL] = imx_clk_hw_pll14xx("gpu_pll", "gpu_pll_ref_sel", base + 0x64, &imx_1416x_pll);
 	hws[IMX8MN_VPU_PLL] = imx_clk_hw_pll14xx("vpu_pll", "vpu_pll_ref_sel", base + 0x74, &imx_1416x_pll);
 	hws[IMX8MN_ARM_PLL] = imx_clk_hw_pll14xx("arm_pll", "arm_pll_ref_sel", base + 0x84, &imx_1416x_pll);
diff --git a/drivers/clk/imx/clk-pll14xx.c b/drivers/clk/imx/clk-pll14xx.c
index 030159dc4884..33236d8580a6 100644
--- a/drivers/clk/imx/clk-pll14xx.c
+++ b/drivers/clk/imx/clk-pll14xx.c
@@ -67,9 +67,8 @@ struct imx_pll14xx_clk imx_1443x_pll = {
 	.rate_count = ARRAY_SIZE(imx_pll1443x_tbl),
 };
 
-struct imx_pll14xx_clk imx_1443x_dram_pll = {
+struct imx_pll14xx_clk imx_1443x_pll_readonly = {
 	.type = PLL_1443X,
-	.flags = CLK_GET_RATE_NOCACHE,
 };
 
 struct imx_pll14xx_clk imx_1416x_pll = {
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index 35a9d294b6df..ea84d2993b57 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -53,7 +53,7 @@ struct imx_pll14xx_clk {
 
 extern struct imx_pll14xx_clk imx_1416x_pll;
 extern struct imx_pll14xx_clk imx_1443x_pll;
-extern struct imx_pll14xx_clk imx_1443x_dram_pll;
+extern struct imx_pll14xx_clk imx_1443x_pll_readonly;
 
 #define imx_clk_cpu(name, parent_name, div, mux, pll, step) \
 	to_clk(imx_clk_hw_cpu(name, parent_name, div, mux, pll, step))
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
