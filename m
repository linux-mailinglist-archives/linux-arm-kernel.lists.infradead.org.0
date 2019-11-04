Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47111EDA74
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 09:19:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3jyNp9fN5cmE6ftTSQsGejMDa/ImJoGoW3IYS88bzZ4=; b=nDwVkR0JMaWjB4
	Z5aBj+Q2eEzpdsj5nhQIUIBZc+98a4X+humm/jiCnvwd7NoiBNxajOjteqGGMlfYCeyvn1yVThk0f
	4uSSADZy8p8S6nmE2A+Y+NiuNNHegHP/XypNID/8E61JoqXgKO4SALcTJe292xuTzcXnGGeGd6geb
	edjEx5HzQMMMFjBkR0nhK9rU6PWZcf9y/8Pd2hfAB49ye+Vx4DTYrWI+7ghDLNfBFZ2NMSn/1Fpyy
	DKJeIZ7cSxmNOCRBvBYBhDSCrpcJsFgYECHmO0ob+l92zviS6ZxCRAC34QAN29ZfxYDknCWIv3gq2
	PZfwq3ubpRHVwqtoNecg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRXaT-0006LE-TY; Mon, 04 Nov 2019 08:19:45 +0000
Received: from mail-eopbgr10088.outbound.protection.outlook.com ([40.107.1.88]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRXaL-0006CU-Mh
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 08:19:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WBIFOptkWEk2amk+Ss5fJG34/X5+bgfY5zIA+KV4/Ep4ZStUvusbENrtmPrp/XYUQC2ZmF7+nJkb6ctx3LFlESRTAXEH8UcEiJjQ87Uep1TWUnU1ymLJpoB1ELKCzgUPyScROsFJGZRJDKMW3ndVFlgRhxt60VoUwo4eSozQRRFQW5BteNSQ8RTwA5MF/rqle9NF7c8LnOlnxrkwsysAyJjnb53zW5rekbdYP5ZIERQUMOkgj4dNbnmFDhSSf3Q3bsPD1EdcU5Cfhg74TUrxvb4P9D/ziai2bP7gYm933yDG60cdOIbTlPXKEx15R+ySvrssOnGf8QmtavN5qFmlAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=woOEwPZT9X/FUZEnx3QG6yv093CcOEuSuT8J51eubZA=;
 b=YEtOjZwcEANp021oH4biBdjOtFYUMUd9u5bvrPFjp20sg1qqS8oIn2ryv474TJ7kaA6SakzRBO8VI117zh9E8k3jv0q0X+8CxLVzfpEuRJ6RlJM84ogVUf5PqedVU1aZkmYylMAEipZgEtxeBCFx3+GTH6+9sGRbPbIjoK6UdAefJ6IWOGjvMdsHO8LngzqYpqO4vgRJ5qCp4AxH4WpueXcmZv4WQ8RNDkyOx1NV7hCaSTjUNhFc5SZxmynSZcMOVyFF98awySBGCQiE8+6nhZnR7mm9cj8hnGU7wP/Pioew4T4+Q0EHTEeUNHkNnoQjK2tea9Q3kuAHipK+vts1Fw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=woOEwPZT9X/FUZEnx3QG6yv093CcOEuSuT8J51eubZA=;
 b=KdoI2/vv4EBiY/JSWxsybNicRHnIrto1znyhyp9dSPyDYUY404K7CEeq/ZJq3+cpQnMuLAYKHXR0l8fEiJOseDuX+WEXw32vfOtLJCandXBEQbkdUdaIX179/TZG+/R8xzOOumojh61c9j04u/38xjX+AobxxBoPCHhNQUNHc9k=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6212.eurprd04.prod.outlook.com (20.179.36.86) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.24; Mon, 4 Nov 2019 08:19:33 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c%4]) with mapi id 15.20.2408.024; Mon, 4 Nov 2019
 08:19:33 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>
Subject: [PATCH] clk: imx: imx8mn: add IMX8MN_CLK_SAI7_IPG clk
Thread-Topic: [PATCH] clk: imx: imx8mn: add IMX8MN_CLK_SAI7_IPG clk
Thread-Index: AQHVkuiWYOV+kg2wl0yC3cmY9ucIdQ==
Date: Mon, 4 Nov 2019 08:19:33 +0000
Message-ID: <1572855483-10624-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR01CA0036.apcprd01.prod.exchangelabs.com
 (2603:1096:203:3e::24) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: cc3181e7-fcc3-478e-3d9d-08d760ffb8ff
x-ms-traffictypediagnostic: AM0PR04MB6212:|AM0PR04MB6212:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB62120C95DE6C68860D63ED83887F0@AM0PR04MB6212.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2803;
x-forefront-prvs: 0211965D06
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(346002)(366004)(136003)(376002)(199004)(189003)(2906002)(305945005)(7736002)(66066001)(256004)(25786009)(3846002)(6116002)(81166006)(2616005)(186003)(476003)(26005)(2201001)(52116002)(6486002)(316002)(81156014)(86362001)(54906003)(44832011)(50226002)(99286004)(8936002)(110136005)(66556008)(66476007)(6636002)(5660300002)(102836004)(4326008)(8676002)(486006)(6512007)(6436002)(14454004)(36756003)(478600001)(71200400001)(6506007)(71190400001)(386003)(64756008)(66446008)(2501003)(66946007)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6212;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SoUjoZNrZYSM42Oh0Xgca1xIFLRn1+dfQGHYpCaGXtN2EYMuILbAPgvMlLDUQlBr6i/ars2fkgXJSGzqSTp2ZbcT7f13vb/KP7j/74EERpdLo4sSOrEXOUeUq+H4t821mYOA/8/HRhzi5WQJyLil6fOdmDlLQOg27gAJMxFk/MBkACYY3QMjW7A95hahXOwAk+E2U7/u1DTX+1EUefORF82fyJ32UqwER1F+BhRiG2GzKpcqVEUPrxd/L9Vbv95xo3JR/2B1KKnDh6wBh7sBIegAxwHbU4ZCWY4xVNJIL+dBroN/7Zal9TT2bv6oRkJ1augMrb3/4/ZMkpdfsqP6sfdDOFC0fTU8BuZo31PqvFaPDyzdd0xSlKxxX0dyX7yRJMbYORssjB+gE7t9Ki3YlxDTNsBHjjGvPFaJ2j5fgwMU+5yQoCMjarBWgTf2OkeD
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cc3181e7-fcc3-478e-3d9d-08d760ffb8ff
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2019 08:19:33.6954 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zokdg3ow+NFgmQrVm2x/+1tu95CPVUI6pme2n9ADzPyJdRLa6PUZftLoCDJ5GOCV49xtL9jPulqbC+jVujx0sg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6212
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_001937_821860_98861696 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.88 listed in list.dnswl.org]
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

It does not make sense to use shared count for IMX8MN_CLK_SAI7_ROOT
without ipg clk. Actually there are ipg clks for other sai clks,
let's add IMX8MN_CLK_SAI7_IPG clk.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-imx8mn.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/imx/clk-imx8mn.c b/drivers/clk/imx/clk-imx8mn.c
index 838f6e2347f1..5e801892c631 100644
--- a/drivers/clk/imx/clk-imx8mn.c
+++ b/drivers/clk/imx/clk-imx8mn.c
@@ -556,6 +556,7 @@ static int imx8mn_clocks_probe(struct platform_device *pdev)
 	clks[IMX8MN_CLK_SDMA2_ROOT] = imx_clk_hw_gate4("sdma2_clk", "ipg_audio_root", base + 0x43b0, 0);
 	clks[IMX8MN_CLK_SDMA3_ROOT] = imx_clk_hw_gate4("sdma3_clk", "ipg_audio_root", base + 0x45f0, 0);
 	clks[IMX8MN_CLK_SAI7_ROOT] = imx_clk_hw_gate2_shared2("sai7_root_clk", "sai7", base + 0x4650, 0, &share_count_sai7);
+	clks[IMX8MN_CLK_SAI7_IPG] = imx_clk_hw_gate2_shared2("sai7_ipg_clk", "ipg_audio_root", base + 0x4650, 0, &share_count_sai7);
 
 	clks[IMX8MN_CLK_DRAM_ALT_ROOT] = imx_clk_hw_fixed_factor("dram_alt_root", "dram_alt", 1, 4);
 
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
