Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3CF211C3C5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 04:02:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YqyiRy9n4A9FDuiYsDa21NL+/On3uFxc20hlZM/KyEc=; b=K5Q8y1JN/g3f3h
	2WbzGR/+BMNHkQTH46EXtdMjCXZw4nMEc4/BGy+rxYoYKlqu2AVR8Ewtu1P/DnCOHgKaEGJjOhUXF
	+ab9gZVo2Iy+wRDJyahsZb3MxGw+tlG6aud7IblXiOQIT5Rvg/D0rC/K+OsKhYlr6tfwj1r34iYmm
	ItxezKyY8luECx8z6380n5fcK84U6XiHi06EJBzIU4SW4P7dP6WkRYkg+dONx2dtcUeRdbsZRlxD8
	h4TkM/+rzAqfzOad1ntmic9igpODnJHQ/qRi8hwhyk2+RqJvyW/DsPjGUxPyyFSOvFfGanDQFPGOx
	R7S0gf57kK1mXPpxgy7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifEk2-0004ph-Um; Thu, 12 Dec 2019 03:02:15 +0000
Received: from mail-eopbgr70048.outbound.protection.outlook.com ([40.107.7.48]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifEhS-0001XG-DA
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 02:59:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B3TMfhwOGa0uED4WVoxV1euD3Kfkz2pBvQJcg+oGQOqrGhbtTuAvB5paCksGQl47Tkv1cYISGDAguT/rqFBFAdk9qjjHqryMD5ZlXOHsdjS1wjzZ4G9qqHO3+hgYNS8ObibLXXCmoWAfc7KO/Cf8MDz8xCjpso5owzJBsg7RD/Eg5AY7vlV1XqhfKox05iuaupcGgEXWIxJbaIQEDMKifo3Ph/DZJF7HT6HUwpbhm8WdcDSmuagwYMymduIKGhVp5jchhMlkHKr0zWxTgj6qFhY9Dzuyxvv96oPfZyiVX+1iNLZnz37k94KDdi4/nW8PDqxYM0cS0KGTsbJlxZRC4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rcEX8mYh1Y0O+Lpr5cN1jM3CTjMWAG+Ze+HBvQbLBCw=;
 b=FaenU6MQGkK3/SFBQr0PVwwuqgmPBsPmzXllZa2hB/J61a4KQU0sz291/iOytSccW6wNRCMellrA9ftYGX2vpRuaruRsP/FQFevtFCNGBtW40FQ7OVM/VcUUPvwrDj6raeTWB1fLWqo1+g5OQMdVxpjmWOKaW+0SysdkhfegloJdNg3lrXftb2osVo9AQRA6fZiBUvxdcX24cay6elgt1f7+gOPwNSsm+npt+PeTun/FSpc8fnh68KZLeZv1/cBdBSturoTjlL/WEt0Jqnhbntk+LXsXBjx0WgEAhexBL6U2xjhT4wetcqH9P+pc8cZKqSS/GJcYmiU7Fs38SK3ZfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rcEX8mYh1Y0O+Lpr5cN1jM3CTjMWAG+Ze+HBvQbLBCw=;
 b=lqDdzwlSxGTKhMrT2APu1MJfcvYVksIMODJCQpCkbFo0zy9VwnErA9wh3tgjD+JhYwdukAyNLV4KvKcmmcozrzk/D1U2ewlToPr+2kC73VBv86rOTjtItb+3Ba1J5fPAJ8kREa90vwOtsCGgdqTF3X+Jr1Z6xf65ZgbUPVVIYKo=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6196.eurprd04.prod.outlook.com (20.179.34.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.15; Thu, 12 Dec 2019 02:59:27 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::505:87e7:6b49:3d29]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::505:87e7:6b49:3d29%7]) with mapi id 15.20.2538.017; Thu, 12 Dec 2019
 02:59:27 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>
Subject: [PATCH V2 9/9] clk: imx: imx8mq: Switch to clk_hw based API
Thread-Topic: [PATCH V2 9/9] clk: imx: imx8mq: Switch to clk_hw based API
Thread-Index: AQHVsJgqKmGNS/4rPkWlriHnrBV78w==
Date: Thu, 12 Dec 2019 02:59:27 +0000
Message-ID: <1576119353-26679-10-git-send-email-peng.fan@nxp.com>
References: <1576119353-26679-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1576119353-26679-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR0401CA0022.apcprd04.prod.outlook.com
 (2603:1096:202:2::32) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: d72b8899-fe28-44c8-8594-08d77eaf4ce3
x-ms-traffictypediagnostic: AM0PR04MB6196:|AM0PR04MB6196:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB61960DA951AD7CB9BA77089C88550@AM0PR04MB6196.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:288;
x-forefront-prvs: 0249EFCB0B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(346002)(366004)(39860400002)(376002)(199004)(189003)(81156014)(8936002)(30864003)(316002)(81166006)(8676002)(36756003)(52116002)(478600001)(6512007)(6486002)(71200400001)(110136005)(54906003)(86362001)(186003)(66476007)(4326008)(5660300002)(2906002)(66446008)(64756008)(44832011)(26005)(6636002)(66946007)(6506007)(2616005)(66556008)(32563001)(559001)(579004)(569006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6196;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4TiDY3P2PgM+ox7wsOMNxbyvQwPrr9819sNeKfYr1XRRXEDF/hWW4QatHJrOrL+1iDehqIi1mZOhJEbEnTrvd2olauCRcEoNTDr/12vkhNjxrJuTvfMl4eFnYAh0nVuKAwjfzUYiX/g4Ofgl/M8XKzCfFmpPbC4zVeN2YKHDWVM8gVMTkTWwFgFd/7qoF0G+/x9YEH/FbRdmd5nC8yjkrHpTSrAL7ys0JQQTAM1EmSC8n6OlUvWqGlpESUYBeCl5xpn6SNoQfreWpZPrQ1D3DavuO8AC5QkcyYnpx5jHZww45rYjW2602Oar/4cnHTT8Ak9HLwFlJGgfJxRik9QuhSUQcXJeDmlYd4Ney4ibNF8PhI9hGD+YedB06JuV2E70CqbNPD9XumJq4Dc0IeDeBx6sLYSxA0cwwHmhji9VJarhKHp6g5K5B2/yTcCHU/nNUsgTJATYUdixTpGDZ3zi0fAdti54shBMbkkvFK+iLMy3HTg1xS2R4TbcEwTXpD8i
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d72b8899-fe28-44c8-8594-08d77eaf4ce3
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2019 02:59:27.4668 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +7ibyLAKZXFQd7k/J3Jlr9hQFhFIEYJJajjCPjtTNu8326GvYund0ACvY3zKZ1DYv4adcjhCrgc2jsAlqEKxmg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6196
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_185935_380858_B05BBA12 
X-CRM114-Status: GOOD (  12.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.48 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Switch the entire clk-imx8mq driver to clk_hw based API.
This allows us to move closer to a clear split between
consumer and provider clk APIs.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-imx8mq.c | 573 ++++++++++++++++++++++---------------------
 1 file changed, 292 insertions(+), 281 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mq.c b/drivers/clk/imx/clk-imx8mq.c
index d4da5b9af9da..4c0edca1a6d0 100644
--- a/drivers/clk/imx/clk-imx8mq.c
+++ b/drivers/clk/imx/clk-imx8mq.c
@@ -11,6 +11,7 @@
 #include <linux/module.h>
 #include <linux/of_address.h>
 #include <linux/types.h>
+#include <linux/slab.h>
 #include <linux/platform_device.h>
 
 #include "clk.h"
@@ -24,8 +25,6 @@ static u32 share_count_sai6;
 static u32 share_count_dcss;
 static u32 share_count_nand;
 
-static struct clk *clks[IMX8MQ_CLK_END];
-
 static const char * const pll_ref_sels[] = { "osc_25m", "osc_27m", "dummy", "dummy", };
 static const char * const arm_pll_bypass_sels[] = {"arm_pll", "arm_pll_ref_sel", };
 static const char * const gpu_pll_bypass_sels[] = {"gpu_pll", "gpu_pll_ref_sel", };
@@ -269,124 +268,133 @@ static const char * const imx8mq_clko1_sels[] = {"osc_25m", "sys1_pll_800m", "os
 static const char * const imx8mq_clko2_sels[] = {"osc_25m", "sys2_pll_200m", "sys1_pll_400m", "sys2_pll_166m",
 					  "sys3_pll_out", "audio_pll1_out", "video_pll1_out", "ckil", };
 
-static struct clk_onecell_data clk_data;
+static struct clk_hw_onecell_data *clk_hw_data;
+static struct clk_hw **hws;
 
-static struct clk ** const uart_clks[] = {
-	&clks[IMX8MQ_CLK_UART1_ROOT],
-	&clks[IMX8MQ_CLK_UART2_ROOT],
-	&clks[IMX8MQ_CLK_UART3_ROOT],
-	&clks[IMX8MQ_CLK_UART4_ROOT],
-	NULL
+static const int uart_clk_ids[] = {
+	IMX8MQ_CLK_UART1_ROOT,
+	IMX8MQ_CLK_UART2_ROOT,
+	IMX8MQ_CLK_UART3_ROOT,
+	IMX8MQ_CLK_UART4_ROOT,
 };
+static struct clk **uart_hws[ARRAY_SIZE(uart_clk_ids) + 1];
 
 static int imx8mq_clocks_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct device_node *np = dev->of_node;
 	void __iomem *base;
-	int err;
+	int err, i;
+
+	clk_hw_data = kzalloc(struct_size(clk_hw_data, hws,
+					  IMX8MQ_CLK_END), GFP_KERNEL);
+	if (WARN_ON(!clk_hw_data))
+		return -ENOMEM;
+
+	clk_hw_data->num = IMX8MQ_CLK_END;
+	hws = clk_hw_data->hws;
 
-	clks[IMX8MQ_CLK_DUMMY] = imx_clk_fixed("dummy", 0);
-	clks[IMX8MQ_CLK_32K] = of_clk_get_by_name(np, "ckil");
-	clks[IMX8MQ_CLK_25M] = of_clk_get_by_name(np, "osc_25m");
-	clks[IMX8MQ_CLK_27M] = of_clk_get_by_name(np, "osc_27m");
-	clks[IMX8MQ_CLK_EXT1] = of_clk_get_by_name(np, "clk_ext1");
-	clks[IMX8MQ_CLK_EXT2] = of_clk_get_by_name(np, "clk_ext2");
-	clks[IMX8MQ_CLK_EXT3] = of_clk_get_by_name(np, "clk_ext3");
-	clks[IMX8MQ_CLK_EXT4] = of_clk_get_by_name(np, "clk_ext4");
+	hws[IMX8MQ_CLK_DUMMY] = imx_clk_hw_fixed("dummy", 0);
+	hws[IMX8MQ_CLK_32K] = imx_obtain_fixed_clk_hw(np, "ckil");
+	hws[IMX8MQ_CLK_25M] = imx_obtain_fixed_clk_hw(np, "osc_25m");
+	hws[IMX8MQ_CLK_27M] = imx_obtain_fixed_clk_hw(np, "osc_27m");
+	hws[IMX8MQ_CLK_EXT1] = imx_obtain_fixed_clk_hw(np, "clk_ext1");
+	hws[IMX8MQ_CLK_EXT2] = imx_obtain_fixed_clk_hw(np, "clk_ext2");
+	hws[IMX8MQ_CLK_EXT3] = imx_obtain_fixed_clk_hw(np, "clk_ext3");
+	hws[IMX8MQ_CLK_EXT4] = imx_obtain_fixed_clk_hw(np, "clk_ext4");
 
 	np = of_find_compatible_node(NULL, NULL, "fsl,imx8mq-anatop");
 	base = of_iomap(np, 0);
 	if (WARN_ON(!base))
 		return -ENOMEM;
 
-	clks[IMX8MQ_ARM_PLL_REF_SEL] = imx_clk_mux("arm_pll_ref_sel", base + 0x28, 16, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
-	clks[IMX8MQ_GPU_PLL_REF_SEL] = imx_clk_mux("gpu_pll_ref_sel", base + 0x18, 16, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
-	clks[IMX8MQ_VPU_PLL_REF_SEL] = imx_clk_mux("vpu_pll_ref_sel", base + 0x20, 16, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
-	clks[IMX8MQ_AUDIO_PLL1_REF_SEL] = imx_clk_mux("audio_pll1_ref_sel", base + 0x0, 16, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
-	clks[IMX8MQ_AUDIO_PLL2_REF_SEL] = imx_clk_mux("audio_pll2_ref_sel", base + 0x8, 16, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
-	clks[IMX8MQ_VIDEO_PLL1_REF_SEL] = imx_clk_mux("video_pll1_ref_sel", base + 0x10, 16, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
-	clks[IMX8MQ_SYS3_PLL1_REF_SEL]	= imx_clk_mux("sys3_pll1_ref_sel", base + 0x48, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
-	clks[IMX8MQ_DRAM_PLL1_REF_SEL]	= imx_clk_mux("dram_pll1_ref_sel", base + 0x60, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
-	clks[IMX8MQ_VIDEO2_PLL1_REF_SEL] = imx_clk_mux("video2_pll1_ref_sel", base + 0x54, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
-
-	clks[IMX8MQ_ARM_PLL_REF_DIV]	= imx_clk_divider("arm_pll_ref_div", "arm_pll_ref_sel", base + 0x28, 5, 6);
-	clks[IMX8MQ_GPU_PLL_REF_DIV]	= imx_clk_divider("gpu_pll_ref_div", "gpu_pll_ref_sel", base + 0x18, 5, 6);
-	clks[IMX8MQ_VPU_PLL_REF_DIV]	= imx_clk_divider("vpu_pll_ref_div", "vpu_pll_ref_sel", base + 0x20, 5, 6);
-	clks[IMX8MQ_AUDIO_PLL1_REF_DIV] = imx_clk_divider("audio_pll1_ref_div", "audio_pll1_ref_sel", base + 0x0, 5, 6);
-	clks[IMX8MQ_AUDIO_PLL2_REF_DIV] = imx_clk_divider("audio_pll2_ref_div", "audio_pll2_ref_sel", base + 0x8, 5, 6);
-	clks[IMX8MQ_VIDEO_PLL1_REF_DIV] = imx_clk_divider("video_pll1_ref_div", "video_pll1_ref_sel", base + 0x10, 5, 6);
-
-	clks[IMX8MQ_ARM_PLL] = imx_clk_frac_pll("arm_pll", "arm_pll_ref_div", base + 0x28);
-	clks[IMX8MQ_GPU_PLL] = imx_clk_frac_pll("gpu_pll", "gpu_pll_ref_div", base + 0x18);
-	clks[IMX8MQ_VPU_PLL] = imx_clk_frac_pll("vpu_pll", "vpu_pll_ref_div", base + 0x20);
-	clks[IMX8MQ_AUDIO_PLL1] = imx_clk_frac_pll("audio_pll1", "audio_pll1_ref_div", base + 0x0);
-	clks[IMX8MQ_AUDIO_PLL2] = imx_clk_frac_pll("audio_pll2", "audio_pll2_ref_div", base + 0x8);
-	clks[IMX8MQ_VIDEO_PLL1] = imx_clk_frac_pll("video_pll1", "video_pll1_ref_div", base + 0x10);
+	hws[IMX8MQ_ARM_PLL_REF_SEL] = imx_clk_hw_mux("arm_pll_ref_sel", base + 0x28, 16, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
+	hws[IMX8MQ_GPU_PLL_REF_SEL] = imx_clk_hw_mux("gpu_pll_ref_sel", base + 0x18, 16, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
+	hws[IMX8MQ_VPU_PLL_REF_SEL] = imx_clk_hw_mux("vpu_pll_ref_sel", base + 0x20, 16, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
+	hws[IMX8MQ_AUDIO_PLL1_REF_SEL] = imx_clk_hw_mux("audio_pll1_ref_sel", base + 0x0, 16, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
+	hws[IMX8MQ_AUDIO_PLL2_REF_SEL] = imx_clk_hw_mux("audio_pll2_ref_sel", base + 0x8, 16, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
+	hws[IMX8MQ_VIDEO_PLL1_REF_SEL] = imx_clk_hw_mux("video_pll1_ref_sel", base + 0x10, 16, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
+	hws[IMX8MQ_SYS3_PLL1_REF_SEL]	= imx_clk_hw_mux("sys3_pll1_ref_sel", base + 0x48, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
+	hws[IMX8MQ_DRAM_PLL1_REF_SEL]	= imx_clk_hw_mux("dram_pll1_ref_sel", base + 0x60, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
+	hws[IMX8MQ_VIDEO2_PLL1_REF_SEL] = imx_clk_hw_mux("video2_pll1_ref_sel", base + 0x54, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
+
+	hws[IMX8MQ_ARM_PLL_REF_DIV]	= imx_clk_hw_divider("arm_pll_ref_div", "arm_pll_ref_sel", base + 0x28, 5, 6);
+	hws[IMX8MQ_GPU_PLL_REF_DIV]	= imx_clk_hw_divider("gpu_pll_ref_div", "gpu_pll_ref_sel", base + 0x18, 5, 6);
+	hws[IMX8MQ_VPU_PLL_REF_DIV]	= imx_clk_hw_divider("vpu_pll_ref_div", "vpu_pll_ref_sel", base + 0x20, 5, 6);
+	hws[IMX8MQ_AUDIO_PLL1_REF_DIV] = imx_clk_hw_divider("audio_pll1_ref_div", "audio_pll1_ref_sel", base + 0x0, 5, 6);
+	hws[IMX8MQ_AUDIO_PLL2_REF_DIV] = imx_clk_hw_divider("audio_pll2_ref_div", "audio_pll2_ref_sel", base + 0x8, 5, 6);
+	hws[IMX8MQ_VIDEO_PLL1_REF_DIV] = imx_clk_hw_divider("video_pll1_ref_div", "video_pll1_ref_sel", base + 0x10, 5, 6);
+
+	hws[IMX8MQ_ARM_PLL] = imx_clk_hw_frac_pll("arm_pll", "arm_pll_ref_div", base + 0x28);
+	hws[IMX8MQ_GPU_PLL] = imx_clk_hw_frac_pll("gpu_pll", "gpu_pll_ref_div", base + 0x18);
+	hws[IMX8MQ_VPU_PLL] = imx_clk_hw_frac_pll("vpu_pll", "vpu_pll_ref_div", base + 0x20);
+	hws[IMX8MQ_AUDIO_PLL1] = imx_clk_hw_frac_pll("audio_pll1", "audio_pll1_ref_div", base + 0x0);
+	hws[IMX8MQ_AUDIO_PLL2] = imx_clk_hw_frac_pll("audio_pll2", "audio_pll2_ref_div", base + 0x8);
+	hws[IMX8MQ_VIDEO_PLL1] = imx_clk_hw_frac_pll("video_pll1", "video_pll1_ref_div", base + 0x10);
 
 	/* PLL bypass out */
-	clks[IMX8MQ_ARM_PLL_BYPASS] = imx_clk_mux_flags("arm_pll_bypass", base + 0x28, 14, 1, arm_pll_bypass_sels, ARRAY_SIZE(arm_pll_bypass_sels), CLK_SET_RATE_PARENT);
-	clks[IMX8MQ_GPU_PLL_BYPASS] = imx_clk_mux("gpu_pll_bypass", base + 0x18, 14, 1, gpu_pll_bypass_sels, ARRAY_SIZE(gpu_pll_bypass_sels));
-	clks[IMX8MQ_VPU_PLL_BYPASS] = imx_clk_mux("vpu_pll_bypass", base + 0x20, 14, 1, vpu_pll_bypass_sels, ARRAY_SIZE(vpu_pll_bypass_sels));
-	clks[IMX8MQ_AUDIO_PLL1_BYPASS] = imx_clk_mux("audio_pll1_bypass", base + 0x0, 14, 1, audio_pll1_bypass_sels, ARRAY_SIZE(audio_pll1_bypass_sels));
-	clks[IMX8MQ_AUDIO_PLL2_BYPASS] = imx_clk_mux("audio_pll2_bypass", base + 0x8, 14, 1, audio_pll2_bypass_sels, ARRAY_SIZE(audio_pll2_bypass_sels));
-	clks[IMX8MQ_VIDEO_PLL1_BYPASS] = imx_clk_mux("video_pll1_bypass", base + 0x10, 14, 1, video_pll1_bypass_sels, ARRAY_SIZE(video_pll1_bypass_sels));
+	hws[IMX8MQ_ARM_PLL_BYPASS] = imx_clk_hw_mux_flags("arm_pll_bypass", base + 0x28, 14, 1, arm_pll_bypass_sels, ARRAY_SIZE(arm_pll_bypass_sels), CLK_SET_RATE_PARENT);
+	hws[IMX8MQ_GPU_PLL_BYPASS] = imx_clk_hw_mux("gpu_pll_bypass", base + 0x18, 14, 1, gpu_pll_bypass_sels, ARRAY_SIZE(gpu_pll_bypass_sels));
+	hws[IMX8MQ_VPU_PLL_BYPASS] = imx_clk_hw_mux("vpu_pll_bypass", base + 0x20, 14, 1, vpu_pll_bypass_sels, ARRAY_SIZE(vpu_pll_bypass_sels));
+	hws[IMX8MQ_AUDIO_PLL1_BYPASS] = imx_clk_hw_mux("audio_pll1_bypass", base + 0x0, 14, 1, audio_pll1_bypass_sels, ARRAY_SIZE(audio_pll1_bypass_sels));
+	hws[IMX8MQ_AUDIO_PLL2_BYPASS] = imx_clk_hw_mux("audio_pll2_bypass", base + 0x8, 14, 1, audio_pll2_bypass_sels, ARRAY_SIZE(audio_pll2_bypass_sels));
+	hws[IMX8MQ_VIDEO_PLL1_BYPASS] = imx_clk_hw_mux("video_pll1_bypass", base + 0x10, 14, 1, video_pll1_bypass_sels, ARRAY_SIZE(video_pll1_bypass_sels));
 
 	/* PLL OUT GATE */
-	clks[IMX8MQ_ARM_PLL_OUT] = imx_clk_gate("arm_pll_out", "arm_pll_bypass", base + 0x28, 21);
-	clks[IMX8MQ_GPU_PLL_OUT] = imx_clk_gate("gpu_pll_out", "gpu_pll_bypass", base + 0x18, 21);
-	clks[IMX8MQ_VPU_PLL_OUT] = imx_clk_gate("vpu_pll_out", "vpu_pll_bypass", base + 0x20, 21);
-	clks[IMX8MQ_AUDIO_PLL1_OUT] = imx_clk_gate("audio_pll1_out", "audio_pll1_bypass", base + 0x0, 21);
-	clks[IMX8MQ_AUDIO_PLL2_OUT] = imx_clk_gate("audio_pll2_out", "audio_pll2_bypass", base + 0x8, 21);
-	clks[IMX8MQ_VIDEO_PLL1_OUT] = imx_clk_gate("video_pll1_out", "video_pll1_bypass", base + 0x10, 21);
-
-	clks[IMX8MQ_SYS1_PLL_OUT] = imx_clk_fixed("sys1_pll_out", 800000000);
-	clks[IMX8MQ_SYS2_PLL_OUT] = imx_clk_fixed("sys2_pll_out", 1000000000);
-	clks[IMX8MQ_SYS3_PLL_OUT] = imx_clk_sscg_pll("sys3_pll_out", sys3_pll_out_sels, ARRAY_SIZE(sys3_pll_out_sels), 0, 0, 0, base + 0x48, CLK_IS_CRITICAL);
-	clks[IMX8MQ_DRAM_PLL_OUT] = imx_clk_sscg_pll("dram_pll_out", dram_pll_out_sels, ARRAY_SIZE(dram_pll_out_sels), 0, 0, 0, base + 0x60, CLK_IS_CRITICAL | CLK_GET_RATE_NOCACHE);
-	clks[IMX8MQ_VIDEO2_PLL_OUT] = imx_clk_sscg_pll("video2_pll_out", video2_pll_out_sels, ARRAY_SIZE(video2_pll_out_sels), 0, 0, 0, base + 0x54, 0);
+	hws[IMX8MQ_ARM_PLL_OUT] = imx_clk_hw_gate("arm_pll_out", "arm_pll_bypass", base + 0x28, 21);
+	hws[IMX8MQ_GPU_PLL_OUT] = imx_clk_hw_gate("gpu_pll_out", "gpu_pll_bypass", base + 0x18, 21);
+	hws[IMX8MQ_VPU_PLL_OUT] = imx_clk_hw_gate("vpu_pll_out", "vpu_pll_bypass", base + 0x20, 21);
+	hws[IMX8MQ_AUDIO_PLL1_OUT] = imx_clk_hw_gate("audio_pll1_out", "audio_pll1_bypass", base + 0x0, 21);
+	hws[IMX8MQ_AUDIO_PLL2_OUT] = imx_clk_hw_gate("audio_pll2_out", "audio_pll2_bypass", base + 0x8, 21);
+	hws[IMX8MQ_VIDEO_PLL1_OUT] = imx_clk_hw_gate("video_pll1_out", "video_pll1_bypass", base + 0x10, 21);
+
+	hws[IMX8MQ_SYS1_PLL_OUT] = imx_clk_hw_fixed("sys1_pll_out", 800000000);
+	hws[IMX8MQ_SYS2_PLL_OUT] = imx_clk_hw_fixed("sys2_pll_out", 1000000000);
+	hws[IMX8MQ_SYS3_PLL_OUT] = imx_clk_hw_sscg_pll("sys3_pll_out", sys3_pll_out_sels, ARRAY_SIZE(sys3_pll_out_sels), 0, 0, 0, base + 0x48, CLK_IS_CRITICAL);
+	hws[IMX8MQ_DRAM_PLL_OUT] = imx_clk_hw_sscg_pll("dram_pll_out", dram_pll_out_sels, ARRAY_SIZE(dram_pll_out_sels), 0, 0, 0, base + 0x60, CLK_IS_CRITICAL | CLK_GET_RATE_NOCACHE);
+	hws[IMX8MQ_VIDEO2_PLL_OUT] = imx_clk_hw_sscg_pll("video2_pll_out", video2_pll_out_sels, ARRAY_SIZE(video2_pll_out_sels), 0, 0, 0, base + 0x54, 0);
 
 	/* SYS PLL1 fixed output */
-	clks[IMX8MQ_SYS1_PLL_40M_CG] = imx_clk_gate("sys1_pll_40m_cg", "sys1_pll_out", base + 0x30, 9);
-	clks[IMX8MQ_SYS1_PLL_80M_CG] = imx_clk_gate("sys1_pll_80m_cg", "sys1_pll_out", base + 0x30, 11);
-	clks[IMX8MQ_SYS1_PLL_100M_CG] = imx_clk_gate("sys1_pll_100m_cg", "sys1_pll_out", base + 0x30, 13);
-	clks[IMX8MQ_SYS1_PLL_133M_CG] = imx_clk_gate("sys1_pll_133m_cg", "sys1_pll_out", base + 0x30, 15);
-	clks[IMX8MQ_SYS1_PLL_160M_CG] = imx_clk_gate("sys1_pll_160m_cg", "sys1_pll_out", base + 0x30, 17);
-	clks[IMX8MQ_SYS1_PLL_200M_CG] = imx_clk_gate("sys1_pll_200m_cg", "sys1_pll_out", base + 0x30, 19);
-	clks[IMX8MQ_SYS1_PLL_266M_CG] = imx_clk_gate("sys1_pll_266m_cg", "sys1_pll_out", base + 0x30, 21);
-	clks[IMX8MQ_SYS1_PLL_400M_CG] = imx_clk_gate("sys1_pll_400m_cg", "sys1_pll_out", base + 0x30, 23);
-	clks[IMX8MQ_SYS1_PLL_800M_CG] = imx_clk_gate("sys1_pll_800m_cg", "sys1_pll_out", base + 0x30, 25);
-
-	clks[IMX8MQ_SYS1_PLL_40M] = imx_clk_fixed_factor("sys1_pll_40m", "sys1_pll_40m_cg", 1, 20);
-	clks[IMX8MQ_SYS1_PLL_80M] = imx_clk_fixed_factor("sys1_pll_80m", "sys1_pll_80m_cg", 1, 10);
-	clks[IMX8MQ_SYS1_PLL_100M] = imx_clk_fixed_factor("sys1_pll_100m", "sys1_pll_100m_cg", 1, 8);
-	clks[IMX8MQ_SYS1_PLL_133M] = imx_clk_fixed_factor("sys1_pll_133m", "sys1_pll_133m_cg", 1, 6);
-	clks[IMX8MQ_SYS1_PLL_160M] = imx_clk_fixed_factor("sys1_pll_160m", "sys1_pll_160m_cg", 1, 5);
-	clks[IMX8MQ_SYS1_PLL_200M] = imx_clk_fixed_factor("sys1_pll_200m", "sys1_pll_200m_cg", 1, 4);
-	clks[IMX8MQ_SYS1_PLL_266M] = imx_clk_fixed_factor("sys1_pll_266m", "sys1_pll_266m_cg", 1, 3);
-	clks[IMX8MQ_SYS1_PLL_400M] = imx_clk_fixed_factor("sys1_pll_400m", "sys1_pll_400m_cg", 1, 2);
-	clks[IMX8MQ_SYS1_PLL_800M] = imx_clk_fixed_factor("sys1_pll_800m", "sys1_pll_800m_cg", 1, 1);
+	hws[IMX8MQ_SYS1_PLL_40M_CG] = imx_clk_hw_gate("sys1_pll_40m_cg", "sys1_pll_out", base + 0x30, 9);
+	hws[IMX8MQ_SYS1_PLL_80M_CG] = imx_clk_hw_gate("sys1_pll_80m_cg", "sys1_pll_out", base + 0x30, 11);
+	hws[IMX8MQ_SYS1_PLL_100M_CG] = imx_clk_hw_gate("sys1_pll_100m_cg", "sys1_pll_out", base + 0x30, 13);
+	hws[IMX8MQ_SYS1_PLL_133M_CG] = imx_clk_hw_gate("sys1_pll_133m_cg", "sys1_pll_out", base + 0x30, 15);
+	hws[IMX8MQ_SYS1_PLL_160M_CG] = imx_clk_hw_gate("sys1_pll_160m_cg", "sys1_pll_out", base + 0x30, 17);
+	hws[IMX8MQ_SYS1_PLL_200M_CG] = imx_clk_hw_gate("sys1_pll_200m_cg", "sys1_pll_out", base + 0x30, 19);
+	hws[IMX8MQ_SYS1_PLL_266M_CG] = imx_clk_hw_gate("sys1_pll_266m_cg", "sys1_pll_out", base + 0x30, 21);
+	hws[IMX8MQ_SYS1_PLL_400M_CG] = imx_clk_hw_gate("sys1_pll_400m_cg", "sys1_pll_out", base + 0x30, 23);
+	hws[IMX8MQ_SYS1_PLL_800M_CG] = imx_clk_hw_gate("sys1_pll_800m_cg", "sys1_pll_out", base + 0x30, 25);
+
+	hws[IMX8MQ_SYS1_PLL_40M] = imx_clk_hw_fixed_factor("sys1_pll_40m", "sys1_pll_40m_cg", 1, 20);
+	hws[IMX8MQ_SYS1_PLL_80M] = imx_clk_hw_fixed_factor("sys1_pll_80m", "sys1_pll_80m_cg", 1, 10);
+	hws[IMX8MQ_SYS1_PLL_100M] = imx_clk_hw_fixed_factor("sys1_pll_100m", "sys1_pll_100m_cg", 1, 8);
+	hws[IMX8MQ_SYS1_PLL_133M] = imx_clk_hw_fixed_factor("sys1_pll_133m", "sys1_pll_133m_cg", 1, 6);
+	hws[IMX8MQ_SYS1_PLL_160M] = imx_clk_hw_fixed_factor("sys1_pll_160m", "sys1_pll_160m_cg", 1, 5);
+	hws[IMX8MQ_SYS1_PLL_200M] = imx_clk_hw_fixed_factor("sys1_pll_200m", "sys1_pll_200m_cg", 1, 4);
+	hws[IMX8MQ_SYS1_PLL_266M] = imx_clk_hw_fixed_factor("sys1_pll_266m", "sys1_pll_266m_cg", 1, 3);
+	hws[IMX8MQ_SYS1_PLL_400M] = imx_clk_hw_fixed_factor("sys1_pll_400m", "sys1_pll_400m_cg", 1, 2);
+	hws[IMX8MQ_SYS1_PLL_800M] = imx_clk_hw_fixed_factor("sys1_pll_800m", "sys1_pll_800m_cg", 1, 1);
 
 	/* SYS PLL2 fixed output */
-	clks[IMX8MQ_SYS2_PLL_50M_CG] = imx_clk_gate("sys2_pll_50m_cg", "sys2_pll_out", base + 0x3c, 9);
-	clks[IMX8MQ_SYS2_PLL_100M_CG] = imx_clk_gate("sys2_pll_100m_cg", "sys2_pll_out", base + 0x3c, 11);
-	clks[IMX8MQ_SYS2_PLL_125M_CG] = imx_clk_gate("sys2_pll_125m_cg", "sys2_pll_out", base + 0x3c, 13);
-	clks[IMX8MQ_SYS2_PLL_166M_CG] = imx_clk_gate("sys2_pll_166m_cg", "sys2_pll_out", base + 0x3c, 15);
-	clks[IMX8MQ_SYS2_PLL_200M_CG] = imx_clk_gate("sys2_pll_200m_cg", "sys2_pll_out", base + 0x3c, 17);
-	clks[IMX8MQ_SYS2_PLL_250M_CG] = imx_clk_gate("sys2_pll_250m_cg", "sys2_pll_out", base + 0x3c, 19);
-	clks[IMX8MQ_SYS2_PLL_333M_CG] = imx_clk_gate("sys2_pll_333m_cg", "sys2_pll_out", base + 0x3c, 21);
-	clks[IMX8MQ_SYS2_PLL_500M_CG] = imx_clk_gate("sys2_pll_500m_cg", "sys2_pll_out", base + 0x3c, 23);
-	clks[IMX8MQ_SYS2_PLL_1000M_CG] = imx_clk_gate("sys2_pll_1000m_cg", "sys2_pll_out", base + 0x3c, 25);
-
-	clks[IMX8MQ_SYS2_PLL_50M] = imx_clk_fixed_factor("sys2_pll_50m", "sys2_pll_50m_cg", 1, 20);
-	clks[IMX8MQ_SYS2_PLL_100M] = imx_clk_fixed_factor("sys2_pll_100m", "sys2_pll_100m_cg", 1, 10);
-	clks[IMX8MQ_SYS2_PLL_125M] = imx_clk_fixed_factor("sys2_pll_125m", "sys2_pll_125m_cg", 1, 8);
-	clks[IMX8MQ_SYS2_PLL_166M] = imx_clk_fixed_factor("sys2_pll_166m", "sys2_pll_166m_cg", 1, 6);
-	clks[IMX8MQ_SYS2_PLL_200M] = imx_clk_fixed_factor("sys2_pll_200m", "sys2_pll_200m_cg", 1, 5);
-	clks[IMX8MQ_SYS2_PLL_250M] = imx_clk_fixed_factor("sys2_pll_250m", "sys2_pll_250m_cg", 1, 4);
-	clks[IMX8MQ_SYS2_PLL_333M] = imx_clk_fixed_factor("sys2_pll_333m", "sys2_pll_333m_cg", 1, 3);
-	clks[IMX8MQ_SYS2_PLL_500M] = imx_clk_fixed_factor("sys2_pll_500m", "sys2_pll_500m_cg", 1, 2);
-	clks[IMX8MQ_SYS2_PLL_1000M] = imx_clk_fixed_factor("sys2_pll_1000m", "sys2_pll_1000m_cg", 1, 1);
+	hws[IMX8MQ_SYS2_PLL_50M_CG] = imx_clk_hw_gate("sys2_pll_50m_cg", "sys2_pll_out", base + 0x3c, 9);
+	hws[IMX8MQ_SYS2_PLL_100M_CG] = imx_clk_hw_gate("sys2_pll_100m_cg", "sys2_pll_out", base + 0x3c, 11);
+	hws[IMX8MQ_SYS2_PLL_125M_CG] = imx_clk_hw_gate("sys2_pll_125m_cg", "sys2_pll_out", base + 0x3c, 13);
+	hws[IMX8MQ_SYS2_PLL_166M_CG] = imx_clk_hw_gate("sys2_pll_166m_cg", "sys2_pll_out", base + 0x3c, 15);
+	hws[IMX8MQ_SYS2_PLL_200M_CG] = imx_clk_hw_gate("sys2_pll_200m_cg", "sys2_pll_out", base + 0x3c, 17);
+	hws[IMX8MQ_SYS2_PLL_250M_CG] = imx_clk_hw_gate("sys2_pll_250m_cg", "sys2_pll_out", base + 0x3c, 19);
+	hws[IMX8MQ_SYS2_PLL_333M_CG] = imx_clk_hw_gate("sys2_pll_333m_cg", "sys2_pll_out", base + 0x3c, 21);
+	hws[IMX8MQ_SYS2_PLL_500M_CG] = imx_clk_hw_gate("sys2_pll_500m_cg", "sys2_pll_out", base + 0x3c, 23);
+	hws[IMX8MQ_SYS2_PLL_1000M_CG] = imx_clk_hw_gate("sys2_pll_1000m_cg", "sys2_pll_out", base + 0x3c, 25);
+
+	hws[IMX8MQ_SYS2_PLL_50M] = imx_clk_hw_fixed_factor("sys2_pll_50m", "sys2_pll_50m_cg", 1, 20);
+	hws[IMX8MQ_SYS2_PLL_100M] = imx_clk_hw_fixed_factor("sys2_pll_100m", "sys2_pll_100m_cg", 1, 10);
+	hws[IMX8MQ_SYS2_PLL_125M] = imx_clk_hw_fixed_factor("sys2_pll_125m", "sys2_pll_125m_cg", 1, 8);
+	hws[IMX8MQ_SYS2_PLL_166M] = imx_clk_hw_fixed_factor("sys2_pll_166m", "sys2_pll_166m_cg", 1, 6);
+	hws[IMX8MQ_SYS2_PLL_200M] = imx_clk_hw_fixed_factor("sys2_pll_200m", "sys2_pll_200m_cg", 1, 5);
+	hws[IMX8MQ_SYS2_PLL_250M] = imx_clk_hw_fixed_factor("sys2_pll_250m", "sys2_pll_250m_cg", 1, 4);
+	hws[IMX8MQ_SYS2_PLL_333M] = imx_clk_hw_fixed_factor("sys2_pll_333m", "sys2_pll_333m_cg", 1, 3);
+	hws[IMX8MQ_SYS2_PLL_500M] = imx_clk_hw_fixed_factor("sys2_pll_500m", "sys2_pll_500m_cg", 1, 2);
+	hws[IMX8MQ_SYS2_PLL_1000M] = imx_clk_hw_fixed_factor("sys2_pll_1000m", "sys2_pll_1000m_cg", 1, 1);
 
 	np = dev->of_node;
 	base = devm_platform_ioremap_resource(pdev, 0);
@@ -394,210 +402,213 @@ static int imx8mq_clocks_probe(struct platform_device *pdev)
 		return PTR_ERR(base);
 
 	/* CORE */
-	clks[IMX8MQ_CLK_A53_SRC] = imx_clk_mux2("arm_a53_src", base + 0x8000, 24, 3, imx8mq_a53_sels, ARRAY_SIZE(imx8mq_a53_sels));
-	clks[IMX8MQ_CLK_M4_SRC] = imx_clk_mux2("arm_m4_src", base + 0x8080, 24, 3, imx8mq_arm_m4_sels, ARRAY_SIZE(imx8mq_arm_m4_sels));
-	clks[IMX8MQ_CLK_VPU_SRC] = imx_clk_mux2("vpu_src", base + 0x8100, 24, 3, imx8mq_vpu_sels, ARRAY_SIZE(imx8mq_vpu_sels));
-	clks[IMX8MQ_CLK_GPU_CORE_SRC] = imx_clk_mux2("gpu_core_src", base + 0x8180, 24, 3,  imx8mq_gpu_core_sels, ARRAY_SIZE(imx8mq_gpu_core_sels));
-	clks[IMX8MQ_CLK_GPU_SHADER_SRC] = imx_clk_mux2("gpu_shader_src", base + 0x8200, 24, 3, imx8mq_gpu_shader_sels,  ARRAY_SIZE(imx8mq_gpu_shader_sels));
-
-	clks[IMX8MQ_CLK_A53_CG] = imx_clk_gate3_flags("arm_a53_cg", "arm_a53_src", base + 0x8000, 28, CLK_IS_CRITICAL);
-	clks[IMX8MQ_CLK_M4_CG] = imx_clk_gate3("arm_m4_cg", "arm_m4_src", base + 0x8080, 28);
-	clks[IMX8MQ_CLK_VPU_CG] = imx_clk_gate3("vpu_cg", "vpu_src", base + 0x8100, 28);
-	clks[IMX8MQ_CLK_GPU_CORE_CG] = imx_clk_gate3("gpu_core_cg", "gpu_core_src", base + 0x8180, 28);
-	clks[IMX8MQ_CLK_GPU_SHADER_CG] = imx_clk_gate3("gpu_shader_cg", "gpu_shader_src", base + 0x8200, 28);
-
-	clks[IMX8MQ_CLK_A53_DIV] = imx_clk_divider2("arm_a53_div", "arm_a53_cg", base + 0x8000, 0, 3);
-	clks[IMX8MQ_CLK_M4_DIV] = imx_clk_divider2("arm_m4_div", "arm_m4_cg", base + 0x8080, 0, 3);
-	clks[IMX8MQ_CLK_VPU_DIV] = imx_clk_divider2("vpu_div", "vpu_cg", base + 0x8100, 0, 3);
-	clks[IMX8MQ_CLK_GPU_CORE_DIV] = imx_clk_divider2("gpu_core_div", "gpu_core_cg", base + 0x8180, 0, 3);
-	clks[IMX8MQ_CLK_GPU_SHADER_DIV] = imx_clk_divider2("gpu_shader_div", "gpu_shader_cg", base + 0x8200, 0, 3);
+	hws[IMX8MQ_CLK_A53_SRC] = imx_clk_hw_mux2("arm_a53_src", base + 0x8000, 24, 3, imx8mq_a53_sels, ARRAY_SIZE(imx8mq_a53_sels));
+	hws[IMX8MQ_CLK_M4_SRC] = imx_clk_hw_mux2("arm_m4_src", base + 0x8080, 24, 3, imx8mq_arm_m4_sels, ARRAY_SIZE(imx8mq_arm_m4_sels));
+	hws[IMX8MQ_CLK_VPU_SRC] = imx_clk_hw_mux2("vpu_src", base + 0x8100, 24, 3, imx8mq_vpu_sels, ARRAY_SIZE(imx8mq_vpu_sels));
+	hws[IMX8MQ_CLK_GPU_CORE_SRC] = imx_clk_hw_mux2("gpu_core_src", base + 0x8180, 24, 3,  imx8mq_gpu_core_sels, ARRAY_SIZE(imx8mq_gpu_core_sels));
+	hws[IMX8MQ_CLK_GPU_SHADER_SRC] = imx_clk_hw_mux2("gpu_shader_src", base + 0x8200, 24, 3, imx8mq_gpu_shader_sels,  ARRAY_SIZE(imx8mq_gpu_shader_sels));
+
+	hws[IMX8MQ_CLK_A53_CG] = imx_clk_hw_gate3_flags("arm_a53_cg", "arm_a53_src", base + 0x8000, 28, CLK_IS_CRITICAL);
+	hws[IMX8MQ_CLK_M4_CG] = imx_clk_hw_gate3("arm_m4_cg", "arm_m4_src", base + 0x8080, 28);
+	hws[IMX8MQ_CLK_VPU_CG] = imx_clk_hw_gate3("vpu_cg", "vpu_src", base + 0x8100, 28);
+	hws[IMX8MQ_CLK_GPU_CORE_CG] = imx_clk_hw_gate3("gpu_core_cg", "gpu_core_src", base + 0x8180, 28);
+	hws[IMX8MQ_CLK_GPU_SHADER_CG] = imx_clk_hw_gate3("gpu_shader_cg", "gpu_shader_src", base + 0x8200, 28);
+
+	hws[IMX8MQ_CLK_A53_DIV] = imx_clk_hw_divider2("arm_a53_div", "arm_a53_cg", base + 0x8000, 0, 3);
+	hws[IMX8MQ_CLK_M4_DIV] = imx_clk_hw_divider2("arm_m4_div", "arm_m4_cg", base + 0x8080, 0, 3);
+	hws[IMX8MQ_CLK_VPU_DIV] = imx_clk_hw_divider2("vpu_div", "vpu_cg", base + 0x8100, 0, 3);
+	hws[IMX8MQ_CLK_GPU_CORE_DIV] = imx_clk_hw_divider2("gpu_core_div", "gpu_core_cg", base + 0x8180, 0, 3);
+	hws[IMX8MQ_CLK_GPU_SHADER_DIV] = imx_clk_hw_divider2("gpu_shader_div", "gpu_shader_cg", base + 0x8200, 0, 3);
 
 	/* BUS */
-	clks[IMX8MQ_CLK_MAIN_AXI] = imx8m_clk_composite_critical("main_axi", imx8mq_main_axi_sels, base + 0x8800);
-	clks[IMX8MQ_CLK_ENET_AXI] = imx8m_clk_composite("enet_axi", imx8mq_enet_axi_sels, base + 0x8880);
-	clks[IMX8MQ_CLK_NAND_USDHC_BUS] = imx8m_clk_composite("nand_usdhc_bus", imx8mq_nand_usdhc_sels, base + 0x8900);
-	clks[IMX8MQ_CLK_VPU_BUS] = imx8m_clk_composite("vpu_bus", imx8mq_vpu_bus_sels, base + 0x8980);
-	clks[IMX8MQ_CLK_DISP_AXI] = imx8m_clk_composite("disp_axi", imx8mq_disp_axi_sels, base + 0x8a00);
-	clks[IMX8MQ_CLK_DISP_APB] = imx8m_clk_composite("disp_apb", imx8mq_disp_apb_sels, base + 0x8a80);
-	clks[IMX8MQ_CLK_DISP_RTRM] = imx8m_clk_composite("disp_rtrm", imx8mq_disp_rtrm_sels, base + 0x8b00);
-	clks[IMX8MQ_CLK_USB_BUS] = imx8m_clk_composite("usb_bus", imx8mq_usb_bus_sels, base + 0x8b80);
-	clks[IMX8MQ_CLK_GPU_AXI] = imx8m_clk_composite("gpu_axi", imx8mq_gpu_axi_sels, base + 0x8c00);
-	clks[IMX8MQ_CLK_GPU_AHB] = imx8m_clk_composite("gpu_ahb", imx8mq_gpu_ahb_sels, base + 0x8c80);
-	clks[IMX8MQ_CLK_NOC] = imx8m_clk_composite_critical("noc", imx8mq_noc_sels, base + 0x8d00);
-	clks[IMX8MQ_CLK_NOC_APB] = imx8m_clk_composite_critical("noc_apb", imx8mq_noc_apb_sels, base + 0x8d80);
+	hws[IMX8MQ_CLK_MAIN_AXI] = imx8m_clk_hw_composite_critical("main_axi", imx8mq_main_axi_sels, base + 0x8800);
+	hws[IMX8MQ_CLK_ENET_AXI] = imx8m_clk_hw_composite("enet_axi", imx8mq_enet_axi_sels, base + 0x8880);
+	hws[IMX8MQ_CLK_NAND_USDHC_BUS] = imx8m_clk_hw_composite("nand_usdhc_bus", imx8mq_nand_usdhc_sels, base + 0x8900);
+	hws[IMX8MQ_CLK_VPU_BUS] = imx8m_clk_hw_composite("vpu_bus", imx8mq_vpu_bus_sels, base + 0x8980);
+	hws[IMX8MQ_CLK_DISP_AXI] = imx8m_clk_hw_composite("disp_axi", imx8mq_disp_axi_sels, base + 0x8a00);
+	hws[IMX8MQ_CLK_DISP_APB] = imx8m_clk_hw_composite("disp_apb", imx8mq_disp_apb_sels, base + 0x8a80);
+	hws[IMX8MQ_CLK_DISP_RTRM] = imx8m_clk_hw_composite("disp_rtrm", imx8mq_disp_rtrm_sels, base + 0x8b00);
+	hws[IMX8MQ_CLK_USB_BUS] = imx8m_clk_hw_composite("usb_bus", imx8mq_usb_bus_sels, base + 0x8b80);
+	hws[IMX8MQ_CLK_GPU_AXI] = imx8m_clk_hw_composite("gpu_axi", imx8mq_gpu_axi_sels, base + 0x8c00);
+	hws[IMX8MQ_CLK_GPU_AHB] = imx8m_clk_hw_composite("gpu_ahb", imx8mq_gpu_ahb_sels, base + 0x8c80);
+	hws[IMX8MQ_CLK_NOC] = imx8m_clk_hw_composite_critical("noc", imx8mq_noc_sels, base + 0x8d00);
+	hws[IMX8MQ_CLK_NOC_APB] = imx8m_clk_hw_composite_critical("noc_apb", imx8mq_noc_apb_sels, base + 0x8d80);
 
 	/* AHB */
 	/* AHB clock is used by the AHB bus therefore marked as critical */
-	clks[IMX8MQ_CLK_AHB] = imx8m_clk_composite_critical("ahb", imx8mq_ahb_sels, base + 0x9000);
-	clks[IMX8MQ_CLK_AUDIO_AHB] = imx8m_clk_composite("audio_ahb", imx8mq_audio_ahb_sels, base + 0x9100);
+	hws[IMX8MQ_CLK_AHB] = imx8m_clk_hw_composite_critical("ahb", imx8mq_ahb_sels, base + 0x9000);
+	hws[IMX8MQ_CLK_AUDIO_AHB] = imx8m_clk_hw_composite("audio_ahb", imx8mq_audio_ahb_sels, base + 0x9100);
 
 	/* IPG */
-	clks[IMX8MQ_CLK_IPG_ROOT] = imx_clk_divider2("ipg_root", "ahb", base + 0x9080, 0, 1);
-	clks[IMX8MQ_CLK_IPG_AUDIO_ROOT] = imx_clk_divider2("ipg_audio_root", "audio_ahb", base + 0x9180, 0, 1);
+	hws[IMX8MQ_CLK_IPG_ROOT] = imx_clk_hw_divider2("ipg_root", "ahb", base + 0x9080, 0, 1);
+	hws[IMX8MQ_CLK_IPG_AUDIO_ROOT] = imx_clk_hw_divider2("ipg_audio_root", "audio_ahb", base + 0x9180, 0, 1);
 
 	/*
 	 * DRAM clocks are manipulated from TF-A outside clock framework.
 	 * Mark with GET_RATE_NOCACHE to always read div value from hardware
 	 */
-	clks[IMX8MQ_CLK_DRAM_CORE] = imx_clk_mux2_flags("dram_core_clk", base + 0x9800, 24, 1, imx8mq_dram_core_sels, ARRAY_SIZE(imx8mq_dram_core_sels), CLK_IS_CRITICAL);
-	clks[IMX8MQ_CLK_DRAM_ALT] = __imx8m_clk_composite("dram_alt", imx8mq_dram_alt_sels, base + 0xa000, CLK_GET_RATE_NOCACHE);
-	clks[IMX8MQ_CLK_DRAM_APB] = __imx8m_clk_composite("dram_apb", imx8mq_dram_apb_sels, base + 0xa080, CLK_IS_CRITICAL | CLK_GET_RATE_NOCACHE);
+	hws[IMX8MQ_CLK_DRAM_CORE] = imx_clk_hw_mux2_flags("dram_core_clk", base + 0x9800, 24, 1, imx8mq_dram_core_sels, ARRAY_SIZE(imx8mq_dram_core_sels), CLK_IS_CRITICAL);
+	hws[IMX8MQ_CLK_DRAM_ALT] = __imx8m_clk_hw_composite("dram_alt", imx8mq_dram_alt_sels, base + 0xa000, CLK_GET_RATE_NOCACHE);
+	hws[IMX8MQ_CLK_DRAM_APB] = __imx8m_clk_hw_composite("dram_apb", imx8mq_dram_apb_sels, base + 0xa080, CLK_IS_CRITICAL | CLK_GET_RATE_NOCACHE);
 
 	/* IP */
-	clks[IMX8MQ_CLK_VPU_G1] = imx8m_clk_composite("vpu_g1", imx8mq_vpu_g1_sels, base + 0xa100);
-	clks[IMX8MQ_CLK_VPU_G2] = imx8m_clk_composite("vpu_g2", imx8mq_vpu_g2_sels, base + 0xa180);
-	clks[IMX8MQ_CLK_DISP_DTRC] = imx8m_clk_composite("disp_dtrc", imx8mq_disp_dtrc_sels, base + 0xa200);
-	clks[IMX8MQ_CLK_DISP_DC8000] = imx8m_clk_composite("disp_dc8000", imx8mq_disp_dc8000_sels, base + 0xa280);
-	clks[IMX8MQ_CLK_PCIE1_CTRL] = imx8m_clk_composite("pcie1_ctrl", imx8mq_pcie1_ctrl_sels, base + 0xa300);
-	clks[IMX8MQ_CLK_PCIE1_PHY] = imx8m_clk_composite("pcie1_phy", imx8mq_pcie1_phy_sels, base + 0xa380);
-	clks[IMX8MQ_CLK_PCIE1_AUX] = imx8m_clk_composite("pcie1_aux", imx8mq_pcie1_aux_sels, base + 0xa400);
-	clks[IMX8MQ_CLK_DC_PIXEL] = imx8m_clk_composite("dc_pixel", imx8mq_dc_pixel_sels, base + 0xa480);
-	clks[IMX8MQ_CLK_LCDIF_PIXEL] = imx8m_clk_composite("lcdif_pixel", imx8mq_lcdif_pixel_sels, base + 0xa500);
-	clks[IMX8MQ_CLK_SAI1] = imx8m_clk_composite("sai1", imx8mq_sai1_sels, base + 0xa580);
-	clks[IMX8MQ_CLK_SAI2] = imx8m_clk_composite("sai2", imx8mq_sai2_sels, base + 0xa600);
-	clks[IMX8MQ_CLK_SAI3] = imx8m_clk_composite("sai3", imx8mq_sai3_sels, base + 0xa680);
-	clks[IMX8MQ_CLK_SAI4] = imx8m_clk_composite("sai4", imx8mq_sai4_sels, base + 0xa700);
-	clks[IMX8MQ_CLK_SAI5] = imx8m_clk_composite("sai5", imx8mq_sai5_sels, base + 0xa780);
-	clks[IMX8MQ_CLK_SAI6] = imx8m_clk_composite("sai6", imx8mq_sai6_sels, base + 0xa800);
-	clks[IMX8MQ_CLK_SPDIF1] = imx8m_clk_composite("spdif1", imx8mq_spdif1_sels, base + 0xa880);
-	clks[IMX8MQ_CLK_SPDIF2] = imx8m_clk_composite("spdif2", imx8mq_spdif2_sels, base + 0xa900);
-	clks[IMX8MQ_CLK_ENET_REF] = imx8m_clk_composite("enet_ref", imx8mq_enet_ref_sels, base + 0xa980);
-	clks[IMX8MQ_CLK_ENET_TIMER] = imx8m_clk_composite("enet_timer", imx8mq_enet_timer_sels, base + 0xaa00);
-	clks[IMX8MQ_CLK_ENET_PHY_REF] = imx8m_clk_composite("enet_phy", imx8mq_enet_phy_sels, base + 0xaa80);
-	clks[IMX8MQ_CLK_NAND] = imx8m_clk_composite("nand", imx8mq_nand_sels, base + 0xab00);
-	clks[IMX8MQ_CLK_QSPI] = imx8m_clk_composite("qspi", imx8mq_qspi_sels, base + 0xab80);
-	clks[IMX8MQ_CLK_USDHC1] = imx8m_clk_composite("usdhc1", imx8mq_usdhc1_sels, base + 0xac00);
-	clks[IMX8MQ_CLK_USDHC2] = imx8m_clk_composite("usdhc2", imx8mq_usdhc2_sels, base + 0xac80);
-	clks[IMX8MQ_CLK_I2C1] = imx8m_clk_composite("i2c1", imx8mq_i2c1_sels, base + 0xad00);
-	clks[IMX8MQ_CLK_I2C2] = imx8m_clk_composite("i2c2", imx8mq_i2c2_sels, base + 0xad80);
-	clks[IMX8MQ_CLK_I2C3] = imx8m_clk_composite("i2c3", imx8mq_i2c3_sels, base + 0xae00);
-	clks[IMX8MQ_CLK_I2C4] = imx8m_clk_composite("i2c4", imx8mq_i2c4_sels, base + 0xae80);
-	clks[IMX8MQ_CLK_UART1] = imx8m_clk_composite("uart1", imx8mq_uart1_sels, base + 0xaf00);
-	clks[IMX8MQ_CLK_UART2] = imx8m_clk_composite("uart2", imx8mq_uart2_sels, base + 0xaf80);
-	clks[IMX8MQ_CLK_UART3] = imx8m_clk_composite("uart3", imx8mq_uart3_sels, base + 0xb000);
-	clks[IMX8MQ_CLK_UART4] = imx8m_clk_composite("uart4", imx8mq_uart4_sels, base + 0xb080);
-	clks[IMX8MQ_CLK_USB_CORE_REF] = imx8m_clk_composite("usb_core_ref", imx8mq_usb_core_sels, base + 0xb100);
-	clks[IMX8MQ_CLK_USB_PHY_REF] = imx8m_clk_composite("usb_phy_ref", imx8mq_usb_phy_sels, base + 0xb180);
-	clks[IMX8MQ_CLK_GIC] = imx8m_clk_composite_critical("gic", imx8mq_gic_sels, base + 0xb200);
-	clks[IMX8MQ_CLK_ECSPI1] = imx8m_clk_composite("ecspi1", imx8mq_ecspi1_sels, base + 0xb280);
-	clks[IMX8MQ_CLK_ECSPI2] = imx8m_clk_composite("ecspi2", imx8mq_ecspi2_sels, base + 0xb300);
-	clks[IMX8MQ_CLK_PWM1] = imx8m_clk_composite("pwm1", imx8mq_pwm1_sels, base + 0xb380);
-	clks[IMX8MQ_CLK_PWM2] = imx8m_clk_composite("pwm2", imx8mq_pwm2_sels, base + 0xb400);
-	clks[IMX8MQ_CLK_PWM3] = imx8m_clk_composite("pwm3", imx8mq_pwm3_sels, base + 0xb480);
-	clks[IMX8MQ_CLK_PWM4] = imx8m_clk_composite("pwm4", imx8mq_pwm4_sels, base + 0xb500);
-	clks[IMX8MQ_CLK_GPT1] = imx8m_clk_composite("gpt1", imx8mq_gpt1_sels, base + 0xb580);
-	clks[IMX8MQ_CLK_WDOG] = imx8m_clk_composite("wdog", imx8mq_wdog_sels, base + 0xb900);
-	clks[IMX8MQ_CLK_WRCLK] = imx8m_clk_composite("wrclk", imx8mq_wrclk_sels, base + 0xb980);
-	clks[IMX8MQ_CLK_CLKO1] = imx8m_clk_composite("clko1", imx8mq_clko1_sels, base + 0xba00);
-	clks[IMX8MQ_CLK_CLKO2] = imx8m_clk_composite("clko2", imx8mq_clko2_sels, base + 0xba80);
-	clks[IMX8MQ_CLK_DSI_CORE] = imx8m_clk_composite("dsi_core", imx8mq_dsi_core_sels, base + 0xbb00);
-	clks[IMX8MQ_CLK_DSI_PHY_REF] = imx8m_clk_composite("dsi_phy_ref", imx8mq_dsi_phy_sels, base + 0xbb80);
-	clks[IMX8MQ_CLK_DSI_DBI] = imx8m_clk_composite("dsi_dbi", imx8mq_dsi_dbi_sels, base + 0xbc00);
-	clks[IMX8MQ_CLK_DSI_ESC] = imx8m_clk_composite("dsi_esc", imx8mq_dsi_esc_sels, base + 0xbc80);
-	clks[IMX8MQ_CLK_DSI_AHB] = imx8m_clk_composite("dsi_ahb", imx8mq_dsi_ahb_sels, base + 0x9200);
-	clks[IMX8MQ_CLK_DSI_IPG_DIV] = imx_clk_divider2("dsi_ipg_div", "dsi_ahb", base + 0x9280, 0, 6);
-	clks[IMX8MQ_CLK_CSI1_CORE] = imx8m_clk_composite("csi1_core", imx8mq_csi1_core_sels, base + 0xbd00);
-	clks[IMX8MQ_CLK_CSI1_PHY_REF] = imx8m_clk_composite("csi1_phy_ref", imx8mq_csi1_phy_sels, base + 0xbd80);
-	clks[IMX8MQ_CLK_CSI1_ESC] = imx8m_clk_composite("csi1_esc", imx8mq_csi1_esc_sels, base + 0xbe00);
-	clks[IMX8MQ_CLK_CSI2_CORE] = imx8m_clk_composite("csi2_core", imx8mq_csi2_core_sels, base + 0xbe80);
-	clks[IMX8MQ_CLK_CSI2_PHY_REF] = imx8m_clk_composite("csi2_phy_ref", imx8mq_csi2_phy_sels, base + 0xbf00);
-	clks[IMX8MQ_CLK_CSI2_ESC] = imx8m_clk_composite("csi2_esc", imx8mq_csi2_esc_sels, base + 0xbf80);
-	clks[IMX8MQ_CLK_PCIE2_CTRL] = imx8m_clk_composite("pcie2_ctrl", imx8mq_pcie2_ctrl_sels, base + 0xc000);
-	clks[IMX8MQ_CLK_PCIE2_PHY] = imx8m_clk_composite("pcie2_phy", imx8mq_pcie2_phy_sels, base + 0xc080);
-	clks[IMX8MQ_CLK_PCIE2_AUX] = imx8m_clk_composite("pcie2_aux", imx8mq_pcie2_aux_sels, base + 0xc100);
-	clks[IMX8MQ_CLK_ECSPI3] = imx8m_clk_composite("ecspi3", imx8mq_ecspi3_sels, base + 0xc180);
-
-	clks[IMX8MQ_CLK_ECSPI1_ROOT] = imx_clk_gate4("ecspi1_root_clk", "ecspi1", base + 0x4070, 0);
-	clks[IMX8MQ_CLK_ECSPI2_ROOT] = imx_clk_gate4("ecspi2_root_clk", "ecspi2", base + 0x4080, 0);
-	clks[IMX8MQ_CLK_ECSPI3_ROOT] = imx_clk_gate4("ecspi3_root_clk", "ecspi3", base + 0x4090, 0);
-	clks[IMX8MQ_CLK_ENET1_ROOT] = imx_clk_gate4("enet1_root_clk", "enet_axi", base + 0x40a0, 0);
-	clks[IMX8MQ_CLK_GPIO1_ROOT] = imx_clk_gate4("gpio1_root_clk", "ipg_root", base + 0x40b0, 0);
-	clks[IMX8MQ_CLK_GPIO2_ROOT] = imx_clk_gate4("gpio2_root_clk", "ipg_root", base + 0x40c0, 0);
-	clks[IMX8MQ_CLK_GPIO3_ROOT] = imx_clk_gate4("gpio3_root_clk", "ipg_root", base + 0x40d0, 0);
-	clks[IMX8MQ_CLK_GPIO4_ROOT] = imx_clk_gate4("gpio4_root_clk", "ipg_root", base + 0x40e0, 0);
-	clks[IMX8MQ_CLK_GPIO5_ROOT] = imx_clk_gate4("gpio5_root_clk", "ipg_root", base + 0x40f0, 0);
-	clks[IMX8MQ_CLK_GPT1_ROOT] = imx_clk_gate4("gpt1_root_clk", "gpt1", base + 0x4100, 0);
-	clks[IMX8MQ_CLK_I2C1_ROOT] = imx_clk_gate4("i2c1_root_clk", "i2c1", base + 0x4170, 0);
-	clks[IMX8MQ_CLK_I2C2_ROOT] = imx_clk_gate4("i2c2_root_clk", "i2c2", base + 0x4180, 0);
-	clks[IMX8MQ_CLK_I2C3_ROOT] = imx_clk_gate4("i2c3_root_clk", "i2c3", base + 0x4190, 0);
-	clks[IMX8MQ_CLK_I2C4_ROOT] = imx_clk_gate4("i2c4_root_clk", "i2c4", base + 0x41a0, 0);
-	clks[IMX8MQ_CLK_MU_ROOT] = imx_clk_gate4("mu_root_clk", "ipg_root", base + 0x4210, 0);
-	clks[IMX8MQ_CLK_OCOTP_ROOT] = imx_clk_gate4("ocotp_root_clk", "ipg_root", base + 0x4220, 0);
-	clks[IMX8MQ_CLK_PCIE1_ROOT] = imx_clk_gate4("pcie1_root_clk", "pcie1_ctrl", base + 0x4250, 0);
-	clks[IMX8MQ_CLK_PCIE2_ROOT] = imx_clk_gate4("pcie2_root_clk", "pcie2_ctrl", base + 0x4640, 0);
-	clks[IMX8MQ_CLK_PWM1_ROOT] = imx_clk_gate4("pwm1_root_clk", "pwm1", base + 0x4280, 0);
-	clks[IMX8MQ_CLK_PWM2_ROOT] = imx_clk_gate4("pwm2_root_clk", "pwm2", base + 0x4290, 0);
-	clks[IMX8MQ_CLK_PWM3_ROOT] = imx_clk_gate4("pwm3_root_clk", "pwm3", base + 0x42a0, 0);
-	clks[IMX8MQ_CLK_PWM4_ROOT] = imx_clk_gate4("pwm4_root_clk", "pwm4", base + 0x42b0, 0);
-	clks[IMX8MQ_CLK_QSPI_ROOT] = imx_clk_gate4("qspi_root_clk", "qspi", base + 0x42f0, 0);
-	clks[IMX8MQ_CLK_RAWNAND_ROOT] = imx_clk_gate2_shared2("nand_root_clk", "nand", base + 0x4300, 0, &share_count_nand);
-	clks[IMX8MQ_CLK_NAND_USDHC_BUS_RAWNAND_CLK] = imx_clk_gate2_shared2("nand_usdhc_rawnand_clk", "nand_usdhc_bus", base + 0x4300, 0, &share_count_nand);
-	clks[IMX8MQ_CLK_SAI1_ROOT] = imx_clk_gate2_shared2("sai1_root_clk", "sai1", base + 0x4330, 0, &share_count_sai1);
-	clks[IMX8MQ_CLK_SAI1_IPG] = imx_clk_gate2_shared2("sai1_ipg_clk", "ipg_audio_root", base + 0x4330, 0, &share_count_sai1);
-	clks[IMX8MQ_CLK_SAI2_ROOT] = imx_clk_gate2_shared2("sai2_root_clk", "sai2", base + 0x4340, 0, &share_count_sai2);
-	clks[IMX8MQ_CLK_SAI2_IPG] = imx_clk_gate2_shared2("sai2_ipg_clk", "ipg_root", base + 0x4340, 0, &share_count_sai2);
-	clks[IMX8MQ_CLK_SAI3_ROOT] = imx_clk_gate2_shared2("sai3_root_clk", "sai3", base + 0x4350, 0, &share_count_sai3);
-	clks[IMX8MQ_CLK_SAI3_IPG] = imx_clk_gate2_shared2("sai3_ipg_clk", "ipg_root", base + 0x4350, 0, &share_count_sai3);
-	clks[IMX8MQ_CLK_SAI4_ROOT] = imx_clk_gate2_shared2("sai4_root_clk", "sai4", base + 0x4360, 0, &share_count_sai4);
-	clks[IMX8MQ_CLK_SAI4_IPG] = imx_clk_gate2_shared2("sai4_ipg_clk", "ipg_audio_root", base + 0x4360, 0, &share_count_sai4);
-	clks[IMX8MQ_CLK_SAI5_ROOT] = imx_clk_gate2_shared2("sai5_root_clk", "sai5", base + 0x4370, 0, &share_count_sai5);
-	clks[IMX8MQ_CLK_SAI5_IPG] = imx_clk_gate2_shared2("sai5_ipg_clk", "ipg_audio_root", base + 0x4370, 0, &share_count_sai5);
-	clks[IMX8MQ_CLK_SAI6_ROOT] = imx_clk_gate2_shared2("sai6_root_clk", "sai6", base + 0x4380, 0, &share_count_sai6);
-	clks[IMX8MQ_CLK_SAI6_IPG] = imx_clk_gate2_shared2("sai6_ipg_clk", "ipg_audio_root", base + 0x4380, 0, &share_count_sai6);
-	clks[IMX8MQ_CLK_SNVS_ROOT] = imx_clk_gate4("snvs_root_clk", "ipg_root", base + 0x4470, 0);
-	clks[IMX8MQ_CLK_UART1_ROOT] = imx_clk_gate4("uart1_root_clk", "uart1", base + 0x4490, 0);
-	clks[IMX8MQ_CLK_UART2_ROOT] = imx_clk_gate4("uart2_root_clk", "uart2", base + 0x44a0, 0);
-	clks[IMX8MQ_CLK_UART3_ROOT] = imx_clk_gate4("uart3_root_clk", "uart3", base + 0x44b0, 0);
-	clks[IMX8MQ_CLK_UART4_ROOT] = imx_clk_gate4("uart4_root_clk", "uart4", base + 0x44c0, 0);
-	clks[IMX8MQ_CLK_USB1_CTRL_ROOT] = imx_clk_gate4("usb1_ctrl_root_clk", "usb_bus", base + 0x44d0, 0);
-	clks[IMX8MQ_CLK_USB2_CTRL_ROOT] = imx_clk_gate4("usb2_ctrl_root_clk", "usb_bus", base + 0x44e0, 0);
-	clks[IMX8MQ_CLK_USB1_PHY_ROOT] = imx_clk_gate4("usb1_phy_root_clk", "usb_phy_ref", base + 0x44f0, 0);
-	clks[IMX8MQ_CLK_USB2_PHY_ROOT] = imx_clk_gate4("usb2_phy_root_clk", "usb_phy_ref", base + 0x4500, 0);
-	clks[IMX8MQ_CLK_USDHC1_ROOT] = imx_clk_gate4("usdhc1_root_clk", "usdhc1", base + 0x4510, 0);
-	clks[IMX8MQ_CLK_USDHC2_ROOT] = imx_clk_gate4("usdhc2_root_clk", "usdhc2", base + 0x4520, 0);
-	clks[IMX8MQ_CLK_WDOG1_ROOT] = imx_clk_gate4("wdog1_root_clk", "wdog", base + 0x4530, 0);
-	clks[IMX8MQ_CLK_WDOG2_ROOT] = imx_clk_gate4("wdog2_root_clk", "wdog", base + 0x4540, 0);
-	clks[IMX8MQ_CLK_WDOG3_ROOT] = imx_clk_gate4("wdog3_root_clk", "wdog", base + 0x4550, 0);
-	clks[IMX8MQ_CLK_VPU_G1_ROOT] = imx_clk_gate2_flags("vpu_g1_root_clk", "vpu_g1", base + 0x4560, 0, CLK_SET_RATE_PARENT | CLK_OPS_PARENT_ENABLE);
-	clks[IMX8MQ_CLK_GPU_ROOT] = imx_clk_gate4("gpu_root_clk", "gpu_core_div", base + 0x4570, 0);
-	clks[IMX8MQ_CLK_VPU_G2_ROOT] = imx_clk_gate2_flags("vpu_g2_root_clk", "vpu_g2", base + 0x45a0, 0, CLK_SET_RATE_PARENT | CLK_OPS_PARENT_ENABLE);
-	clks[IMX8MQ_CLK_DISP_ROOT] = imx_clk_gate2_shared2("disp_root_clk", "disp_dc8000", base + 0x45d0, 0, &share_count_dcss);
-	clks[IMX8MQ_CLK_DISP_AXI_ROOT]  = imx_clk_gate2_shared2("disp_axi_root_clk", "disp_axi", base + 0x45d0, 0, &share_count_dcss);
-	clks[IMX8MQ_CLK_DISP_APB_ROOT]  = imx_clk_gate2_shared2("disp_apb_root_clk", "disp_apb", base + 0x45d0, 0, &share_count_dcss);
-	clks[IMX8MQ_CLK_DISP_RTRM_ROOT] = imx_clk_gate2_shared2("disp_rtrm_root_clk", "disp_rtrm", base + 0x45d0, 0, &share_count_dcss);
-	clks[IMX8MQ_CLK_TMU_ROOT] = imx_clk_gate4("tmu_root_clk", "ipg_root", base + 0x4620, 0);
-	clks[IMX8MQ_CLK_VPU_DEC_ROOT] = imx_clk_gate2_flags("vpu_dec_root_clk", "vpu_bus", base + 0x4630, 0, CLK_SET_RATE_PARENT | CLK_OPS_PARENT_ENABLE);
-	clks[IMX8MQ_CLK_CSI1_ROOT] = imx_clk_gate4("csi1_root_clk", "csi1_core", base + 0x4650, 0);
-	clks[IMX8MQ_CLK_CSI2_ROOT] = imx_clk_gate4("csi2_root_clk", "csi2_core", base + 0x4660, 0);
-	clks[IMX8MQ_CLK_SDMA1_ROOT] = imx_clk_gate4("sdma1_clk", "ipg_root", base + 0x43a0, 0);
-	clks[IMX8MQ_CLK_SDMA2_ROOT] = imx_clk_gate4("sdma2_clk", "ipg_audio_root", base + 0x43b0, 0);
-
-	clks[IMX8MQ_GPT_3M_CLK] = imx_clk_fixed_factor("gpt_3m", "osc_25m", 1, 8);
-	clks[IMX8MQ_CLK_DRAM_ALT_ROOT] = imx_clk_fixed_factor("dram_alt_root", "dram_alt", 1, 4);
-
-	clks[IMX8MQ_CLK_ARM] = imx_clk_cpu("arm", "arm_a53_div",
-					   clks[IMX8MQ_CLK_A53_DIV],
-					   clks[IMX8MQ_CLK_A53_SRC],
-					   clks[IMX8MQ_ARM_PLL_OUT],
-					   clks[IMX8MQ_SYS1_PLL_800M]);
-
-	imx_check_clocks(clks, ARRAY_SIZE(clks));
-
-	clk_data.clks = clks;
-	clk_data.clk_num = ARRAY_SIZE(clks);
-
-	err = of_clk_add_provider(np, of_clk_src_onecell_get, &clk_data);
+	hws[IMX8MQ_CLK_VPU_G1] = imx8m_clk_hw_composite("vpu_g1", imx8mq_vpu_g1_sels, base + 0xa100);
+	hws[IMX8MQ_CLK_VPU_G2] = imx8m_clk_hw_composite("vpu_g2", imx8mq_vpu_g2_sels, base + 0xa180);
+	hws[IMX8MQ_CLK_DISP_DTRC] = imx8m_clk_hw_composite("disp_dtrc", imx8mq_disp_dtrc_sels, base + 0xa200);
+	hws[IMX8MQ_CLK_DISP_DC8000] = imx8m_clk_hw_composite("disp_dc8000", imx8mq_disp_dc8000_sels, base + 0xa280);
+	hws[IMX8MQ_CLK_PCIE1_CTRL] = imx8m_clk_hw_composite("pcie1_ctrl", imx8mq_pcie1_ctrl_sels, base + 0xa300);
+	hws[IMX8MQ_CLK_PCIE1_PHY] = imx8m_clk_hw_composite("pcie1_phy", imx8mq_pcie1_phy_sels, base + 0xa380);
+	hws[IMX8MQ_CLK_PCIE1_AUX] = imx8m_clk_hw_composite("pcie1_aux", imx8mq_pcie1_aux_sels, base + 0xa400);
+	hws[IMX8MQ_CLK_DC_PIXEL] = imx8m_clk_hw_composite("dc_pixel", imx8mq_dc_pixel_sels, base + 0xa480);
+	hws[IMX8MQ_CLK_LCDIF_PIXEL] = imx8m_clk_hw_composite("lcdif_pixel", imx8mq_lcdif_pixel_sels, base + 0xa500);
+	hws[IMX8MQ_CLK_SAI1] = imx8m_clk_hw_composite("sai1", imx8mq_sai1_sels, base + 0xa580);
+	hws[IMX8MQ_CLK_SAI2] = imx8m_clk_hw_composite("sai2", imx8mq_sai2_sels, base + 0xa600);
+	hws[IMX8MQ_CLK_SAI3] = imx8m_clk_hw_composite("sai3", imx8mq_sai3_sels, base + 0xa680);
+	hws[IMX8MQ_CLK_SAI4] = imx8m_clk_hw_composite("sai4", imx8mq_sai4_sels, base + 0xa700);
+	hws[IMX8MQ_CLK_SAI5] = imx8m_clk_hw_composite("sai5", imx8mq_sai5_sels, base + 0xa780);
+	hws[IMX8MQ_CLK_SAI6] = imx8m_clk_hw_composite("sai6", imx8mq_sai6_sels, base + 0xa800);
+	hws[IMX8MQ_CLK_SPDIF1] = imx8m_clk_hw_composite("spdif1", imx8mq_spdif1_sels, base + 0xa880);
+	hws[IMX8MQ_CLK_SPDIF2] = imx8m_clk_hw_composite("spdif2", imx8mq_spdif2_sels, base + 0xa900);
+	hws[IMX8MQ_CLK_ENET_REF] = imx8m_clk_hw_composite("enet_ref", imx8mq_enet_ref_sels, base + 0xa980);
+	hws[IMX8MQ_CLK_ENET_TIMER] = imx8m_clk_hw_composite("enet_timer", imx8mq_enet_timer_sels, base + 0xaa00);
+	hws[IMX8MQ_CLK_ENET_PHY_REF] = imx8m_clk_hw_composite("enet_phy", imx8mq_enet_phy_sels, base + 0xaa80);
+	hws[IMX8MQ_CLK_NAND] = imx8m_clk_hw_composite("nand", imx8mq_nand_sels, base + 0xab00);
+	hws[IMX8MQ_CLK_QSPI] = imx8m_clk_hw_composite("qspi", imx8mq_qspi_sels, base + 0xab80);
+	hws[IMX8MQ_CLK_USDHC1] = imx8m_clk_hw_composite("usdhc1", imx8mq_usdhc1_sels, base + 0xac00);
+	hws[IMX8MQ_CLK_USDHC2] = imx8m_clk_hw_composite("usdhc2", imx8mq_usdhc2_sels, base + 0xac80);
+	hws[IMX8MQ_CLK_I2C1] = imx8m_clk_hw_composite("i2c1", imx8mq_i2c1_sels, base + 0xad00);
+	hws[IMX8MQ_CLK_I2C2] = imx8m_clk_hw_composite("i2c2", imx8mq_i2c2_sels, base + 0xad80);
+	hws[IMX8MQ_CLK_I2C3] = imx8m_clk_hw_composite("i2c3", imx8mq_i2c3_sels, base + 0xae00);
+	hws[IMX8MQ_CLK_I2C4] = imx8m_clk_hw_composite("i2c4", imx8mq_i2c4_sels, base + 0xae80);
+	hws[IMX8MQ_CLK_UART1] = imx8m_clk_hw_composite("uart1", imx8mq_uart1_sels, base + 0xaf00);
+	hws[IMX8MQ_CLK_UART2] = imx8m_clk_hw_composite("uart2", imx8mq_uart2_sels, base + 0xaf80);
+	hws[IMX8MQ_CLK_UART3] = imx8m_clk_hw_composite("uart3", imx8mq_uart3_sels, base + 0xb000);
+	hws[IMX8MQ_CLK_UART4] = imx8m_clk_hw_composite("uart4", imx8mq_uart4_sels, base + 0xb080);
+	hws[IMX8MQ_CLK_USB_CORE_REF] = imx8m_clk_hw_composite("usb_core_ref", imx8mq_usb_core_sels, base + 0xb100);
+	hws[IMX8MQ_CLK_USB_PHY_REF] = imx8m_clk_hw_composite("usb_phy_ref", imx8mq_usb_phy_sels, base + 0xb180);
+	hws[IMX8MQ_CLK_GIC] = imx8m_clk_hw_composite_critical("gic", imx8mq_gic_sels, base + 0xb200);
+	hws[IMX8MQ_CLK_ECSPI1] = imx8m_clk_hw_composite("ecspi1", imx8mq_ecspi1_sels, base + 0xb280);
+	hws[IMX8MQ_CLK_ECSPI2] = imx8m_clk_hw_composite("ecspi2", imx8mq_ecspi2_sels, base + 0xb300);
+	hws[IMX8MQ_CLK_PWM1] = imx8m_clk_hw_composite("pwm1", imx8mq_pwm1_sels, base + 0xb380);
+	hws[IMX8MQ_CLK_PWM2] = imx8m_clk_hw_composite("pwm2", imx8mq_pwm2_sels, base + 0xb400);
+	hws[IMX8MQ_CLK_PWM3] = imx8m_clk_hw_composite("pwm3", imx8mq_pwm3_sels, base + 0xb480);
+	hws[IMX8MQ_CLK_PWM4] = imx8m_clk_hw_composite("pwm4", imx8mq_pwm4_sels, base + 0xb500);
+	hws[IMX8MQ_CLK_GPT1] = imx8m_clk_hw_composite("gpt1", imx8mq_gpt1_sels, base + 0xb580);
+	hws[IMX8MQ_CLK_WDOG] = imx8m_clk_hw_composite("wdog", imx8mq_wdog_sels, base + 0xb900);
+	hws[IMX8MQ_CLK_WRCLK] = imx8m_clk_hw_composite("wrclk", imx8mq_wrclk_sels, base + 0xb980);
+	hws[IMX8MQ_CLK_CLKO1] = imx8m_clk_hw_composite("clko1", imx8mq_clko1_sels, base + 0xba00);
+	hws[IMX8MQ_CLK_CLKO2] = imx8m_clk_hw_composite("clko2", imx8mq_clko2_sels, base + 0xba80);
+	hws[IMX8MQ_CLK_DSI_CORE] = imx8m_clk_hw_composite("dsi_core", imx8mq_dsi_core_sels, base + 0xbb00);
+	hws[IMX8MQ_CLK_DSI_PHY_REF] = imx8m_clk_hw_composite("dsi_phy_ref", imx8mq_dsi_phy_sels, base + 0xbb80);
+	hws[IMX8MQ_CLK_DSI_DBI] = imx8m_clk_hw_composite("dsi_dbi", imx8mq_dsi_dbi_sels, base + 0xbc00);
+	hws[IMX8MQ_CLK_DSI_ESC] = imx8m_clk_hw_composite("dsi_esc", imx8mq_dsi_esc_sels, base + 0xbc80);
+	hws[IMX8MQ_CLK_DSI_AHB] = imx8m_clk_hw_composite("dsi_ahb", imx8mq_dsi_ahb_sels, base + 0x9200);
+	hws[IMX8MQ_CLK_DSI_IPG_DIV] = imx_clk_hw_divider2("dsi_ipg_div", "dsi_ahb", base + 0x9280, 0, 6);
+	hws[IMX8MQ_CLK_CSI1_CORE] = imx8m_clk_hw_composite("csi1_core", imx8mq_csi1_core_sels, base + 0xbd00);
+	hws[IMX8MQ_CLK_CSI1_PHY_REF] = imx8m_clk_hw_composite("csi1_phy_ref", imx8mq_csi1_phy_sels, base + 0xbd80);
+	hws[IMX8MQ_CLK_CSI1_ESC] = imx8m_clk_hw_composite("csi1_esc", imx8mq_csi1_esc_sels, base + 0xbe00);
+	hws[IMX8MQ_CLK_CSI2_CORE] = imx8m_clk_hw_composite("csi2_core", imx8mq_csi2_core_sels, base + 0xbe80);
+	hws[IMX8MQ_CLK_CSI2_PHY_REF] = imx8m_clk_hw_composite("csi2_phy_ref", imx8mq_csi2_phy_sels, base + 0xbf00);
+	hws[IMX8MQ_CLK_CSI2_ESC] = imx8m_clk_hw_composite("csi2_esc", imx8mq_csi2_esc_sels, base + 0xbf80);
+	hws[IMX8MQ_CLK_PCIE2_CTRL] = imx8m_clk_hw_composite("pcie2_ctrl", imx8mq_pcie2_ctrl_sels, base + 0xc000);
+	hws[IMX8MQ_CLK_PCIE2_PHY] = imx8m_clk_hw_composite("pcie2_phy", imx8mq_pcie2_phy_sels, base + 0xc080);
+	hws[IMX8MQ_CLK_PCIE2_AUX] = imx8m_clk_hw_composite("pcie2_aux", imx8mq_pcie2_aux_sels, base + 0xc100);
+	hws[IMX8MQ_CLK_ECSPI3] = imx8m_clk_hw_composite("ecspi3", imx8mq_ecspi3_sels, base + 0xc180);
+
+	hws[IMX8MQ_CLK_ECSPI1_ROOT] = imx_clk_hw_gate4("ecspi1_root_clk", "ecspi1", base + 0x4070, 0);
+	hws[IMX8MQ_CLK_ECSPI2_ROOT] = imx_clk_hw_gate4("ecspi2_root_clk", "ecspi2", base + 0x4080, 0);
+	hws[IMX8MQ_CLK_ECSPI3_ROOT] = imx_clk_hw_gate4("ecspi3_root_clk", "ecspi3", base + 0x4090, 0);
+	hws[IMX8MQ_CLK_ENET1_ROOT] = imx_clk_hw_gate4("enet1_root_clk", "enet_axi", base + 0x40a0, 0);
+	hws[IMX8MQ_CLK_GPIO1_ROOT] = imx_clk_hw_gate4("gpio1_root_clk", "ipg_root", base + 0x40b0, 0);
+	hws[IMX8MQ_CLK_GPIO2_ROOT] = imx_clk_hw_gate4("gpio2_root_clk", "ipg_root", base + 0x40c0, 0);
+	hws[IMX8MQ_CLK_GPIO3_ROOT] = imx_clk_hw_gate4("gpio3_root_clk", "ipg_root", base + 0x40d0, 0);
+	hws[IMX8MQ_CLK_GPIO4_ROOT] = imx_clk_hw_gate4("gpio4_root_clk", "ipg_root", base + 0x40e0, 0);
+	hws[IMX8MQ_CLK_GPIO5_ROOT] = imx_clk_hw_gate4("gpio5_root_clk", "ipg_root", base + 0x40f0, 0);
+	hws[IMX8MQ_CLK_GPT1_ROOT] = imx_clk_hw_gate4("gpt1_root_clk", "gpt1", base + 0x4100, 0);
+	hws[IMX8MQ_CLK_I2C1_ROOT] = imx_clk_hw_gate4("i2c1_root_clk", "i2c1", base + 0x4170, 0);
+	hws[IMX8MQ_CLK_I2C2_ROOT] = imx_clk_hw_gate4("i2c2_root_clk", "i2c2", base + 0x4180, 0);
+	hws[IMX8MQ_CLK_I2C3_ROOT] = imx_clk_hw_gate4("i2c3_root_clk", "i2c3", base + 0x4190, 0);
+	hws[IMX8MQ_CLK_I2C4_ROOT] = imx_clk_hw_gate4("i2c4_root_clk", "i2c4", base + 0x41a0, 0);
+	hws[IMX8MQ_CLK_MU_ROOT] = imx_clk_hw_gate4("mu_root_clk", "ipg_root", base + 0x4210, 0);
+	hws[IMX8MQ_CLK_OCOTP_ROOT] = imx_clk_hw_gate4("ocotp_root_clk", "ipg_root", base + 0x4220, 0);
+	hws[IMX8MQ_CLK_PCIE1_ROOT] = imx_clk_hw_gate4("pcie1_root_clk", "pcie1_ctrl", base + 0x4250, 0);
+	hws[IMX8MQ_CLK_PCIE2_ROOT] = imx_clk_hw_gate4("pcie2_root_clk", "pcie2_ctrl", base + 0x4640, 0);
+	hws[IMX8MQ_CLK_PWM1_ROOT] = imx_clk_hw_gate4("pwm1_root_clk", "pwm1", base + 0x4280, 0);
+	hws[IMX8MQ_CLK_PWM2_ROOT] = imx_clk_hw_gate4("pwm2_root_clk", "pwm2", base + 0x4290, 0);
+	hws[IMX8MQ_CLK_PWM3_ROOT] = imx_clk_hw_gate4("pwm3_root_clk", "pwm3", base + 0x42a0, 0);
+	hws[IMX8MQ_CLK_PWM4_ROOT] = imx_clk_hw_gate4("pwm4_root_clk", "pwm4", base + 0x42b0, 0);
+	hws[IMX8MQ_CLK_QSPI_ROOT] = imx_clk_hw_gate4("qspi_root_clk", "qspi", base + 0x42f0, 0);
+	hws[IMX8MQ_CLK_RAWNAND_ROOT] = imx_clk_hw_gate2_shared2("nand_root_clk", "nand", base + 0x4300, 0, &share_count_nand);
+	hws[IMX8MQ_CLK_NAND_USDHC_BUS_RAWNAND_CLK] = imx_clk_hw_gate2_shared2("nand_usdhc_rawnand_clk", "nand_usdhc_bus", base + 0x4300, 0, &share_count_nand);
+	hws[IMX8MQ_CLK_SAI1_ROOT] = imx_clk_hw_gate2_shared2("sai1_root_clk", "sai1", base + 0x4330, 0, &share_count_sai1);
+	hws[IMX8MQ_CLK_SAI1_IPG] = imx_clk_hw_gate2_shared2("sai1_ipg_clk", "ipg_audio_root", base + 0x4330, 0, &share_count_sai1);
+	hws[IMX8MQ_CLK_SAI2_ROOT] = imx_clk_hw_gate2_shared2("sai2_root_clk", "sai2", base + 0x4340, 0, &share_count_sai2);
+	hws[IMX8MQ_CLK_SAI2_IPG] = imx_clk_hw_gate2_shared2("sai2_ipg_clk", "ipg_root", base + 0x4340, 0, &share_count_sai2);
+	hws[IMX8MQ_CLK_SAI3_ROOT] = imx_clk_hw_gate2_shared2("sai3_root_clk", "sai3", base + 0x4350, 0, &share_count_sai3);
+	hws[IMX8MQ_CLK_SAI3_IPG] = imx_clk_hw_gate2_shared2("sai3_ipg_clk", "ipg_root", base + 0x4350, 0, &share_count_sai3);
+	hws[IMX8MQ_CLK_SAI4_ROOT] = imx_clk_hw_gate2_shared2("sai4_root_clk", "sai4", base + 0x4360, 0, &share_count_sai4);
+	hws[IMX8MQ_CLK_SAI4_IPG] = imx_clk_hw_gate2_shared2("sai4_ipg_clk", "ipg_audio_root", base + 0x4360, 0, &share_count_sai4);
+	hws[IMX8MQ_CLK_SAI5_ROOT] = imx_clk_hw_gate2_shared2("sai5_root_clk", "sai5", base + 0x4370, 0, &share_count_sai5);
+	hws[IMX8MQ_CLK_SAI5_IPG] = imx_clk_hw_gate2_shared2("sai5_ipg_clk", "ipg_audio_root", base + 0x4370, 0, &share_count_sai5);
+	hws[IMX8MQ_CLK_SAI6_ROOT] = imx_clk_hw_gate2_shared2("sai6_root_clk", "sai6", base + 0x4380, 0, &share_count_sai6);
+	hws[IMX8MQ_CLK_SAI6_IPG] = imx_clk_hw_gate2_shared2("sai6_ipg_clk", "ipg_audio_root", base + 0x4380, 0, &share_count_sai6);
+	hws[IMX8MQ_CLK_SNVS_ROOT] = imx_clk_hw_gate4("snvs_root_clk", "ipg_root", base + 0x4470, 0);
+	hws[IMX8MQ_CLK_UART1_ROOT] = imx_clk_hw_gate4("uart1_root_clk", "uart1", base + 0x4490, 0);
+	hws[IMX8MQ_CLK_UART2_ROOT] = imx_clk_hw_gate4("uart2_root_clk", "uart2", base + 0x44a0, 0);
+	hws[IMX8MQ_CLK_UART3_ROOT] = imx_clk_hw_gate4("uart3_root_clk", "uart3", base + 0x44b0, 0);
+	hws[IMX8MQ_CLK_UART4_ROOT] = imx_clk_hw_gate4("uart4_root_clk", "uart4", base + 0x44c0, 0);
+	hws[IMX8MQ_CLK_USB1_CTRL_ROOT] = imx_clk_hw_gate4("usb1_ctrl_root_clk", "usb_bus", base + 0x44d0, 0);
+	hws[IMX8MQ_CLK_USB2_CTRL_ROOT] = imx_clk_hw_gate4("usb2_ctrl_root_clk", "usb_bus", base + 0x44e0, 0);
+	hws[IMX8MQ_CLK_USB1_PHY_ROOT] = imx_clk_hw_gate4("usb1_phy_root_clk", "usb_phy_ref", base + 0x44f0, 0);
+	hws[IMX8MQ_CLK_USB2_PHY_ROOT] = imx_clk_hw_gate4("usb2_phy_root_clk", "usb_phy_ref", base + 0x4500, 0);
+	hws[IMX8MQ_CLK_USDHC1_ROOT] = imx_clk_hw_gate4("usdhc1_root_clk", "usdhc1", base + 0x4510, 0);
+	hws[IMX8MQ_CLK_USDHC2_ROOT] = imx_clk_hw_gate4("usdhc2_root_clk", "usdhc2", base + 0x4520, 0);
+	hws[IMX8MQ_CLK_WDOG1_ROOT] = imx_clk_hw_gate4("wdog1_root_clk", "wdog", base + 0x4530, 0);
+	hws[IMX8MQ_CLK_WDOG2_ROOT] = imx_clk_hw_gate4("wdog2_root_clk", "wdog", base + 0x4540, 0);
+	hws[IMX8MQ_CLK_WDOG3_ROOT] = imx_clk_hw_gate4("wdog3_root_clk", "wdog", base + 0x4550, 0);
+	hws[IMX8MQ_CLK_VPU_G1_ROOT] = imx_clk_hw_gate2_flags("vpu_g1_root_clk", "vpu_g1", base + 0x4560, 0, CLK_SET_RATE_PARENT | CLK_OPS_PARENT_ENABLE);
+	hws[IMX8MQ_CLK_GPU_ROOT] = imx_clk_hw_gate4("gpu_root_clk", "gpu_core_div", base + 0x4570, 0);
+	hws[IMX8MQ_CLK_VPU_G2_ROOT] = imx_clk_hw_gate2_flags("vpu_g2_root_clk", "vpu_g2", base + 0x45a0, 0, CLK_SET_RATE_PARENT | CLK_OPS_PARENT_ENABLE);
+	hws[IMX8MQ_CLK_DISP_ROOT] = imx_clk_hw_gate2_shared2("disp_root_clk", "disp_dc8000", base + 0x45d0, 0, &share_count_dcss);
+	hws[IMX8MQ_CLK_DISP_AXI_ROOT]  = imx_clk_hw_gate2_shared2("disp_axi_root_clk", "disp_axi", base + 0x45d0, 0, &share_count_dcss);
+	hws[IMX8MQ_CLK_DISP_APB_ROOT]  = imx_clk_hw_gate2_shared2("disp_apb_root_clk", "disp_apb", base + 0x45d0, 0, &share_count_dcss);
+	hws[IMX8MQ_CLK_DISP_RTRM_ROOT] = imx_clk_hw_gate2_shared2("disp_rtrm_root_clk", "disp_rtrm", base + 0x45d0, 0, &share_count_dcss);
+	hws[IMX8MQ_CLK_TMU_ROOT] = imx_clk_hw_gate4("tmu_root_clk", "ipg_root", base + 0x4620, 0);
+	hws[IMX8MQ_CLK_VPU_DEC_ROOT] = imx_clk_hw_gate2_flags("vpu_dec_root_clk", "vpu_bus", base + 0x4630, 0, CLK_SET_RATE_PARENT | CLK_OPS_PARENT_ENABLE);
+	hws[IMX8MQ_CLK_CSI1_ROOT] = imx_clk_hw_gate4("csi1_root_clk", "csi1_core", base + 0x4650, 0);
+	hws[IMX8MQ_CLK_CSI2_ROOT] = imx_clk_hw_gate4("csi2_root_clk", "csi2_core", base + 0x4660, 0);
+	hws[IMX8MQ_CLK_SDMA1_ROOT] = imx_clk_hw_gate4("sdma1_clk", "ipg_root", base + 0x43a0, 0);
+	hws[IMX8MQ_CLK_SDMA2_ROOT] = imx_clk_hw_gate4("sdma2_clk", "ipg_audio_root", base + 0x43b0, 0);
+
+	hws[IMX8MQ_GPT_3M_CLK] = imx_clk_hw_fixed_factor("gpt_3m", "osc_25m", 1, 8);
+	hws[IMX8MQ_CLK_DRAM_ALT_ROOT] = imx_clk_hw_fixed_factor("dram_alt_root", "dram_alt", 1, 4);
+
+	hws[IMX8MQ_CLK_ARM] = imx_clk_hw_cpu("arm", "arm_a53_div",
+					   hws[IMX8MQ_CLK_A53_DIV]->clk,
+					   hws[IMX8MQ_CLK_A53_SRC]->clk,
+					   hws[IMX8MQ_ARM_PLL_OUT]->clk,
+					   hws[IMX8MQ_SYS1_PLL_800M]->clk);
+
+	imx_check_clk_hws(hws, IMX8MQ_CLK_END);
+
+	err = of_clk_add_hw_provider(np, of_clk_hw_onecell_get, clk_hw_data);
 	if (err < 0) {
-		dev_err(dev, "failed to register clks for i.MX8MQ\n");
-		goto unregister_clks;
+		dev_err(dev, "failed to register hws for i.MX8MQ\n");
+		goto unregister_hws;
+	}
+
+	for (i = 0; i < ARRAY_SIZE(uart_clk_ids); i++) {
+		int index = uart_clk_ids[i];
+
+		uart_hws[i] = &hws[index]->clk;
 	}
 
-	imx_register_uart_clocks(uart_clks);
+	imx_register_uart_clocks(uart_hws);
 
 	return 0;
 
-unregister_clks:
-	imx_unregister_clocks(clks, ARRAY_SIZE(clks));
+unregister_hws:
+	imx_unregister_hw_clocks(hws, IMX8MQ_CLK_END);
 
 	return err;
 }
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
