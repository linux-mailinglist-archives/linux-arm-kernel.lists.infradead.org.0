Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AA85E2AA7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 08:57:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fCwBmXVkonOOS1lkVixuvN5ZCoZeGTF3cC9RINqYvDk=; b=UwSoeZoqPJo7CE
	IuPLwAJLx2xQqIFKc0o52fiEwTXjikrKZ8luoXB8Ih0n9eJTNi9Uvk5YAGiq2PV8GdPhJduhCglNM
	lm+PiU3uQf0l3rLxFkuThICUDfvh5bz48m1amaQzrEIJLvgDmv60iR49EQKumxEraeoaSdOyGaZiQ
	lFpHX7rc0l8lARjBsqtI4p4K90fRYpJsyOBqo/bgtGFoVC7BNh2+Xdb2jP1XoccQDghEjdE7suFQn
	QLoC/j5Qxo4gZ+CtJwbMKCNIYW0MDxIuRZ8R0fzHiklBjXGSAbuiiCE8pRFadPMUl0K3OMc0GYqCG
	NRaDFyZRe2no6PxDC10g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNX3v-0001ir-F2; Thu, 24 Oct 2019 06:57:35 +0000
Received: from mail-eopbgr50059.outbound.protection.outlook.com ([40.107.5.59]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNX3m-0001ht-3J
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 06:57:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dbTzIpJPgCPzwWaj5d6QfbRm5ybBZj4cGqvhmBkvFBL2kIw3XIN2qiVLszWAHagnR/6gVCCb11S98fDdYsNNvorB19Ft5H2M2IFZIaZkDQo0KwpF+xuo2NUcMi4zA5kKlzj5OP39nGbd7hpEYDvon368MyfGbdc8w0pDMh5KAY8w41eINuG5b2uQcV1mtF/PSuW8wYKcwITHOBUBfAkGCdptvtuyx5Z4OSNzxmdZIrE8voSPoPmTPDkr8VuZcQlbrKxDKey1xT5w0a7qr8jNRAnGLste3EDgGNTyqZo6ua/p52wBOkBsE8spp8G27thnA2qcKIk0E+kK5yw9AhuTgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xBNbdBmQd80Nq0sFIlcM9kti+3TltWFC2IUOP6UrCsk=;
 b=IR3Mp07twlxzuofgXiOq3/aOte3KvZY6UNELYC8DuiQmmAZLQsJ0+dJSHcc/Fd9Ou6gvSpJpo6Xoz+eiyZ2n70Uc0BFJt/O+Ea/QvTgtEOOaFLOqHxhSQvFUXgaVqi5ulVZUeZSyaCI0y0jPsTXMIM22mJhSiKeck0djOB7/6KJQBboFMHDR42DKAcASovORTVh8cL6oPjjmSHbDzLdAfCe5RkPjimzl7Gerg4Idp4vyTC55ULmeyniOlpuMjQcT1rqRy7ZQqo99RUiPrIrh+lehUXiaji//gBcst93Q7OkO7I0GE0uboEwPBvBOLTkQxYDO3/0rgDxJN1ftLQy7TQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xBNbdBmQd80Nq0sFIlcM9kti+3TltWFC2IUOP6UrCsk=;
 b=f+PAdXAA1FStvkD1DovyNUYzjN6pqT89+C0M9uOuZUHD8iKMoxD8ka9z4MIcRkkN6fNkUDfPDBbQ1IYtHDnGI59rKU8ZHPdR5nFZzWh0+80UmSs70HT+FyDcy7rmGQYZkFpJ05FSp4Fv97d9beIS0FsaiqUaWrFACcpPoRJsQ/g=
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com (52.135.138.150) by
 DB7PR04MB4683.eurprd04.prod.outlook.com (52.135.139.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.20; Thu, 24 Oct 2019 06:57:22 +0000
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::7804:558a:eef9:cc11]) by DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::7804:558a:eef9:cc11%7]) with mapi id 15.20.2387.023; Thu, 24 Oct 2019
 06:57:22 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>
Subject: [PATCH] clk: imx: imx8mq: fix sys2/3_pll_out_sels
Thread-Topic: [PATCH] clk: imx: imx8mq: fix sys2/3_pll_out_sels
Thread-Index: AQHVijhIlRv5T5+Fgk+U/4a62CwQtw==
Date: Thu, 24 Oct 2019 06:57:21 +0000
Message-ID: <1571900044-22079-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR01CA0046.apcprd01.prod.exchangelabs.com
 (2603:1096:203:3e::34) To DB7PR04MB4490.eurprd04.prod.outlook.com
 (2603:10a6:5:36::22)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 74b9ff3e-2dd2-4bba-cb6a-08d7584f6af6
x-ms-traffictypediagnostic: DB7PR04MB4683:|DB7PR04MB4683:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB468387F4E144DA8682EFC7C3886A0@DB7PR04MB4683.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1227;
x-forefront-prvs: 0200DDA8BE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(396003)(366004)(136003)(346002)(199004)(189003)(81156014)(6486002)(256004)(54906003)(52116002)(476003)(2616005)(102836004)(66066001)(186003)(6512007)(6506007)(110136005)(6436002)(5660300002)(316002)(99286004)(7736002)(71190400001)(71200400001)(2201001)(14444005)(66556008)(2906002)(66476007)(305945005)(26005)(386003)(86362001)(66446008)(50226002)(3846002)(2501003)(64756008)(6636002)(44832011)(4326008)(478600001)(8676002)(25786009)(14454004)(81166006)(486006)(66946007)(8936002)(36756003)(6116002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4683;
 H:DB7PR04MB4490.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: o59luhHqYaavQTq53VNA7uOIeVVzprn4gnTwA++qWGvJ4rCBMH1l6cC7tDg6G3AWA7GfjCk93bt/iKY6l+Bl8NkyTzv17hBYnFsv6DkERoiStMwWfegMHXtj7SBEc6nhmVSkWagtv5X3YXoGWVq4ij0IGJELE83HUkrJjPlAt8YO7CtgJ6frlG52T8a6p1ImBgzFsbu+tgSvGUMDZs1BPu/Y6FdcNc3hGcf0AI34iIztu+1YQA3rBZF76+ek2oYPNh3OQzKEIrJXmAOZtHg2ZIOdey8bkPidrb21W+xx4bFWK34vMsqayUiQwljAkWfmRJfxNozeX/52XUEXNcc0j1rS7oh2PjQ55WSTFss/ugW/O17jNv0I2iX7axRCnBlro3TYNwvN2sJ40h43w57ahHHvxM391AZacnK1Dp+7gMKJ3Dp0FJfECQ6e5cUmdEL4
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 74b9ff3e-2dd2-4bba-cb6a-08d7584f6af6
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2019 06:57:21.8372 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dPbdvGXamzeFsaUfZbYWWOAkpXDjfeL3aODRpAmyb2vA50v8M/hzqYrAI+Hoat1zYs6lKwaMcHHP9IRrxwsj2g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4683
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_235726_142658_0383592E 
X-CRM114-Status: GOOD (  10.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.59 listed in list.dnswl.org]
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
Cc: Peng Fan <peng.fan@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
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

The current clk tree shows:
 osc_25m                              9       11        0    25000000          0     0  50000
    sys2_pll1_ref_sel                 1        1        0    25000000          0     0  50000
       sys3_pll_out                   1        1        0    25000000          0     0  50000
    sys1_pll1_ref_sel                 2        2        0    25000000          0     0  50000
       sys2_pll_out                   6        6        0  1000000000          0     0  50000

It is not correct that sys3_pll_out use sys2_pll1_ref_sel as parent,
sys2_pll_out use sys1_pll1_ref_sel as parent.

According to the current imx_clk_sccg_pll design, it uses both
bypass1/2, however set bypass2 as 1 is not correct, because it will
make sys[x]_pll_out use wrong parent and might access wrong registers.

So correct bypass2 to 0 and fix sys2/3_pll_out_sels.

After fix, the tree shows:
 osc_25m                             10       12        0    25000000          0     0  50000
    sys3_pll1_ref_sel                 1        1        0    25000000          0     0  50000
       sys3_pll_out                   1        1        0    25000000          0     0  50000
    sys2_pll1_ref_sel                 1        1        0    25000000          0     0  50000
       sys2_pll_out                   6        6        0  1000000000          0     0  50000
    sys1_pll1_ref_sel                 1        1        0    25000000          0     0  50000
       sys1_pll_out                   5        5        0   800000000          0     0  50000

Fixes: e9dda4af685f ("clk: imx: Refactor entire sccg pll clk")
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-imx8mq.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mq.c b/drivers/clk/imx/clk-imx8mq.c
index 05ece7b5da54..e17f0ebfacb0 100644
--- a/drivers/clk/imx/clk-imx8mq.c
+++ b/drivers/clk/imx/clk-imx8mq.c
@@ -35,8 +35,8 @@ static const char * const audio_pll2_bypass_sels[] = {"audio_pll2", "audio_pll2_
 static const char * const video_pll1_bypass_sels[] = {"video_pll1", "video_pll1_ref_sel", };
 
 static const char * const sys1_pll_out_sels[] = {"sys1_pll1_ref_sel", };
-static const char * const sys2_pll_out_sels[] = {"sys1_pll1_ref_sel", "sys2_pll1_ref_sel", };
-static const char * const sys3_pll_out_sels[] = {"sys3_pll1_ref_sel", "sys2_pll1_ref_sel", };
+static const char * const sys2_pll_out_sels[] = {"sys2_pll1_ref_sel", };
+static const char * const sys3_pll_out_sels[] = {"sys3_pll1_ref_sel", };
 static const char * const dram_pll_out_sels[] = {"dram_pll1_ref_sel", };
 static const char * const video2_pll_out_sels[] = {"video2_pll1_ref_sel", };
 
@@ -345,8 +345,8 @@ static int imx8mq_clocks_probe(struct platform_device *pdev)
 	clks[IMX8MQ_VIDEO_PLL1_OUT] = imx_clk_gate("video_pll1_out", "video_pll1_bypass", base + 0x10, 21);
 
 	clks[IMX8MQ_SYS1_PLL_OUT] = imx_clk_sccg_pll("sys1_pll_out", sys1_pll_out_sels, ARRAY_SIZE(sys1_pll_out_sels), 0, 0, 0, base + 0x30, CLK_IS_CRITICAL);
-	clks[IMX8MQ_SYS2_PLL_OUT] = imx_clk_sccg_pll("sys2_pll_out", sys2_pll_out_sels, ARRAY_SIZE(sys2_pll_out_sels), 0, 0, 1, base + 0x3c, CLK_IS_CRITICAL);
-	clks[IMX8MQ_SYS3_PLL_OUT] = imx_clk_sccg_pll("sys3_pll_out", sys3_pll_out_sels, ARRAY_SIZE(sys3_pll_out_sels), 0, 0, 1, base + 0x48, CLK_IS_CRITICAL);
+	clks[IMX8MQ_SYS2_PLL_OUT] = imx_clk_sccg_pll("sys2_pll_out", sys2_pll_out_sels, ARRAY_SIZE(sys2_pll_out_sels), 0, 0, 0, base + 0x3c, CLK_IS_CRITICAL);
+	clks[IMX8MQ_SYS3_PLL_OUT] = imx_clk_sccg_pll("sys3_pll_out", sys3_pll_out_sels, ARRAY_SIZE(sys3_pll_out_sels), 0, 0, 0, base + 0x48, CLK_IS_CRITICAL);
 	clks[IMX8MQ_DRAM_PLL_OUT] = imx_clk_sccg_pll("dram_pll_out", dram_pll_out_sels, ARRAY_SIZE(dram_pll_out_sels), 0, 0, 0, base + 0x60, CLK_IS_CRITICAL);
 	clks[IMX8MQ_VIDEO2_PLL_OUT] = imx_clk_sccg_pll("video2_pll_out", video2_pll_out_sels, ARRAY_SIZE(video2_pll_out_sels), 0, 0, 0, base + 0x54, 0);
 
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
