Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC274E6B49
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 04:09:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XhlmNkiJHVYrTLchDkzz8ofhHq2IWdQuQSMZkAMkEyg=; b=iUHKjARLjI5eTe
	Aeisddn475Q6mSsII9HFOWMpsgI21hJ0Nd6jVQVFWFwV8Npb1uHJPMzBGx+J+qdEHSgb4yZsV28RF
	9jDOrKXFbLNB3FbHuWo/A5WGHtYwPe/ZXN3acPctkoYGxSTlrCOkVXrY5zIpXrO/eEYe7OjEPqwEN
	58mUR7HRt6YrKzy/cguJ5js5/AgQdFThGRlstz9DDWR7QrFYLBUsGiOoxhqFiLmLhk8ulQNctRZvK
	t6jLpfgjaKucmueYC3twKfWLpVjw1XJ35TX+ElK1oMWyHh7cyFJRZakV4rJMhevWcE75Z8TKVGxd4
	iJDWJ2/Wc7hU7TycPWzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOvP1-0002sa-Uc; Mon, 28 Oct 2019 03:09:08 +0000
Received: from mail-eopbgr00050.outbound.protection.outlook.com ([40.107.0.50]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOvOZ-0002g4-BZ
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 03:08:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eCBQSdkpDKEitmPb4sOqVYM1x6JnVNHPJbnXztBqSdCrTaIHUhLzFeugInTF91/wYkHMhUvN0Zoyeh6ngDuupSJYpU/Zj9zd1ttmoup66M0rc0Vbnkj877eRqWfVaYQkdhlsTcxcz3JOeLSiqFUqgFxbdROBPu8VDqXNxtVyHuz2xLb7sJhzG6lyJVqo7Gf/zy3W2S7TzT+ZiTYxvxMkOw5shsWXmPaWn0n1FgSM+S9jloQyvGxBeuITejg0qkboNWJLo39fZaH98zIA7MJHaIL6M/8xGw36pnDE0+ZjLbP26/j0BnB9JQtVGwgvTvIB+RH58mxkQexJrYHbeZA2Gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZLwty+gNlF9aQuCrrGlwaOCKhwe8h9kIiNLELyz3zS8=;
 b=d51KntHgxmxGbxiWeh8zDkebywr5ejcAzAFM514mAuJgkQH265zk27SQH9Os0D0VYGMxPespD+I3v2XEklx6FCr0lbAWvU+fN6HwiaSGhplD+3lNboDwn38KjjDSNF0xC91JYFriyHyLaBiqAupKjpdtlbUtJ0Diot5XhrTzc2DoqotbnkVfDUaEpFu7vjGsqiS+1/5idBaJkQu9AP5e66RCXhkT18ZaJoZVAFKRI/zJNH3UibbjLXROIWKNHfXHv4pvR/BeBDUekgDElgwe59W/Ods9UIalxpQ9joBUlcbbo1Sil5h8/85nr2uaeVBhoMqP7FKGPtnJyQ0TGqGlyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZLwty+gNlF9aQuCrrGlwaOCKhwe8h9kIiNLELyz3zS8=;
 b=I02UjrYFuwKUNoy2JsTjP3Fj7Hwzha/5/ItMNTKQIH9FYNv2WjRpLZg0MGEDMnhDHZH745Fs9PXIa00nm4MyxWWtZQ5wr/8h8pk8wFjj3BNsFfNrrFxbIZxL6teotkPGgI3tejdb4RoZxQlIXjOgGF6gybTwGHLRNpB77P2apBg=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5667.eurprd04.prod.outlook.com (20.178.119.221) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.22; Mon, 28 Oct 2019 03:08:34 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1%5]) with mapi id 15.20.2387.023; Mon, 28 Oct 2019
 03:08:34 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>
Subject: [PATCH V2] clk: imx: imx8mq: fix sys3_pll_out_sels
Thread-Topic: [PATCH V2] clk: imx: imx8mq: fix sys3_pll_out_sels
Thread-Index: AQHVjTz7lchDB1BYpky6rmS85b14tA==
Date: Mon, 28 Oct 2019 03:08:34 +0000
Message-ID: <1572231902-30230-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR03CA0064.apcprd03.prod.outlook.com
 (2603:1096:203:52::28) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: b19f7ace-f013-416f-5e97-08d75b541e39
x-ms-traffictypediagnostic: AM0PR04MB5667:|AM0PR04MB5667:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB5667665DBA307BA05129515888660@AM0PR04MB5667.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1060;
x-forefront-prvs: 0204F0BDE2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(346002)(376002)(366004)(39860400002)(136003)(199004)(189003)(99286004)(110136005)(6636002)(25786009)(186003)(102836004)(4326008)(36756003)(2616005)(14454004)(486006)(2501003)(44832011)(2906002)(66066001)(52116002)(6116002)(3846002)(476003)(6506007)(386003)(26005)(6486002)(6512007)(81156014)(6436002)(5660300002)(81166006)(316002)(8676002)(7736002)(71190400001)(71200400001)(305945005)(86362001)(66946007)(64756008)(66476007)(66556008)(50226002)(478600001)(256004)(14444005)(8936002)(2201001)(54906003)(66446008)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5667;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: J0Uz83wK47vqyBBJddU8iMB72nu+fWyErPm6YjFqNXs6c4ZnGbDeodGp5HD5+MCKWXC2tLHgVDQNTg1tkdv554zx9z7uruc9bws1/FzAZkim782xgUmIU+Xyf7VryRJmqw9gOATbz28x1dBNY7wq27/yXqSehESGuJtvQQs6z5BMB6qYPrez1uHJKn1AfHOFoBEbpD7eh0cUmoaD6brlpFoLzD2pebJuDpKmVMXOEPpvp0nIsja1zfgtL+0L2AKh47YJK4Nr/5bJlPY2Xh+KvytRmCvxtRpnMhZGYuHIQ30rUdC7t4g036Tk6JmW7b5Rlurvoid+DyzBiQnDWmarJhkMROYZfLM0xM9hScmvdvBbvzNYwk1yxZGfhTcXAlFaQEeOfYkb19tOBaCOmtWsV6CVl6QAldWNBf0Tbq6HFuDs0JueVHgnO3m+KpJtHhjL
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b19f7ace-f013-416f-5e97-08d75b541e39
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Oct 2019 03:08:34.0350 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pKHHI1b8+d5j+8eEnI8oFH+rWBL4R+mx7C9Jf31n0q/Tw+jlw44stTT+8zVUdsEKPXHw97OHv/M/A9IvANTUVw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5667
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_200839_473971_926C91CE 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.50 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

It is not correct that sys3_pll_out use sys2_pll1_ref_sel as parent.

According to the current imx_clk_sccg_pll design, it uses both
bypass1/2, however set bypass2 as 1 is not correct, because it will
make sys[x]_pll_out use wrong parent and might access wrong registers.

So correct bypass2 to 0 and fix sys3_pll_out_sels.

Fixes: e9dda4af685f ("clk: imx: Refactor entire sccg pll clk")
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---

V2:
 Rebased on Shawn's clk/imx tree to avoid conflicts

 drivers/clk/imx/clk-imx8mq.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mq.c b/drivers/clk/imx/clk-imx8mq.c
index 4a5dbc4366a5..5f10a606d836 100644
--- a/drivers/clk/imx/clk-imx8mq.c
+++ b/drivers/clk/imx/clk-imx8mq.c
@@ -34,7 +34,7 @@ static const char * const audio_pll1_bypass_sels[] = {"audio_pll1", "audio_pll1_
 static const char * const audio_pll2_bypass_sels[] = {"audio_pll2", "audio_pll2_ref_sel", };
 static const char * const video_pll1_bypass_sels[] = {"video_pll1", "video_pll1_ref_sel", };
 
-static const char * const sys3_pll_out_sels[] = {"sys3_pll1_ref_sel", "sys2_pll1_ref_sel", };
+static const char * const sys3_pll_out_sels[] = {"sys3_pll1_ref_sel", };
 static const char * const dram_pll_out_sels[] = {"dram_pll1_ref_sel", };
 static const char * const video2_pll_out_sels[] = {"video2_pll1_ref_sel", };
 
@@ -342,7 +342,7 @@ static int imx8mq_clocks_probe(struct platform_device *pdev)
 
 	clks[IMX8MQ_SYS1_PLL_OUT] = imx_clk_fixed("sys1_pll_out", 800000000);
 	clks[IMX8MQ_SYS2_PLL_OUT] = imx_clk_fixed("sys2_pll_out", 1000000000);
-	clks[IMX8MQ_SYS3_PLL_OUT] = imx_clk_sccg_pll("sys3_pll_out", sys3_pll_out_sels, ARRAY_SIZE(sys3_pll_out_sels), 0, 0, 1, base + 0x48, CLK_IS_CRITICAL);
+	clks[IMX8MQ_SYS3_PLL_OUT] = imx_clk_sccg_pll("sys3_pll_out", sys3_pll_out_sels, ARRAY_SIZE(sys3_pll_out_sels), 0, 0, 0, base + 0x48, CLK_IS_CRITICAL);
 	clks[IMX8MQ_DRAM_PLL_OUT] = imx_clk_sccg_pll("dram_pll_out", dram_pll_out_sels, ARRAY_SIZE(dram_pll_out_sels), 0, 0, 0, base + 0x60, CLK_IS_CRITICAL);
 	clks[IMX8MQ_VIDEO2_PLL_OUT] = imx_clk_sccg_pll("video2_pll_out", video2_pll_out_sels, ARRAY_SIZE(video2_pll_out_sels), 0, 0, 0, base + 0x54, 0);
 
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
