Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D7A135645
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 10:53:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ipu3mzZbSJ1u46TVCNWnGE44d/gvofHZxVCQHWQGsCc=; b=Gv0H4eNKln+T+u
	XiePhsFjffAAd175aWn39mP0QZBtUCvIpjM23uYflBIh14SoGdYsFGGO4TVVJWH7xdsBDJVq94JCA
	nHeYHiVlN8QT+9diqZB+hFZ1P95mUirbIkOZ4maUSiszNqnXb3kSy5O2av9YBOuZDtYrSAyHp8mWT
	IMnC5UygZXXWu9VzENZMqc8U2LT1P6GdCKDSm53oPocpO+YhxzZ/8nf/5P+8/psPhQ8+h+4u+kWgk
	1z9v0V21duBvqOwtiYeIGWO/fcBiHzpp7/ssG1i4DBJVkMrQ4dJpx46hHfx2mDJu87U6Np+HTuz63
	2xrm4OMRAb/KztEYNrZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipUVH-00051s-9i; Thu, 09 Jan 2020 09:53:23 +0000
Received: from mail-eopbgr140079.outbound.protection.outlook.com
 ([40.107.14.79] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipUU9-0004Fg-Vu
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 09:52:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V93RTlWNOMOkbbnD68ndWVz5G/IoA8/944HEo2xVZ+qYL5J01mK6miORiYi8jTcwyQvAijSSCUy/nJdf+NktiUctuHL7uViyyY76Cff35Ux+I3aAWS1U7+hC/2VFeG6cFZSBePrKTp6xWiGQ53SZvwXetONqtV+sjgsxPMsG8wIVw3+/+ZyoYzkRMXzZsVm5yn8pKi9SrTkco9bPrAnZFO2tKyDe6A/IUuJQ6s2sh8Ah486CEQyFCt+GpQLpqwQF2aJOs+ebogvc6e+/zU5munmXuLIeLiUlGb++HwDwODYHXp7Mpagc/u5nrTxVCJseA7U4/9PFJBRKXAYoT/n7ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WGkeqFi7mk6RIvg2cExnLIPeqBYwBqHWVfAtZps9++4=;
 b=k/I9WZAy/L9buRmy8jq2tgqWoRxyaoUKQmcAF219+/9KjLROUkjI8xaB7BYsBACcM7ykwva849gSEsreo2VuqKjGJBOAecE1EOxXnzav4UJJIKwDsv03L7cJVdoCd1Dd7gM+ZjHU8tFv/JRnr+d/hoJeSzpITRInSGmsf0u1CaqfpWeQxb6HJzftWEOF+USugAZz9C39nHRiJIlvCqWWiuezG05k5W/agIus9XKcLLCI4q+rfoJYhwE/G5D2em4pmT6+4Xb3LBM/+udG+idB8+6tG95OvWHmuWN2s8nHGBzCk73j7TAz0XvAbn+ccviRKW5kVlDde9lNPK/GfiIxZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WGkeqFi7mk6RIvg2cExnLIPeqBYwBqHWVfAtZps9++4=;
 b=DtspO91aL6wmzD0rtBuWs6L0pDYm9k763t3qnfD/CnB2cMrdwfLUYqAOqx+9kDt7hVD63wbMVCBPquBK9D06+0dWb/ND/Oxiu2D4BStyeLQAq6HLKg+QQ5jthyEV0GThCjzOq3v2SZvPWAVYFgnRh3p6pEfxgm0OxorXLl5DyVI=
Received: from VI1PR04MB4496.eurprd04.prod.outlook.com (20.177.54.92) by
 VI1PR04MB6878.eurprd04.prod.outlook.com (52.133.244.135) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.10; Thu, 9 Jan 2020 09:52:11 +0000
Received: from VI1PR04MB4496.eurprd04.prod.outlook.com
 ([fe80::25c7:9207:684a:5e2b]) by VI1PR04MB4496.eurprd04.prod.outlook.com
 ([fe80::25c7:9207:684a:5e2b%6]) with mapi id 15.20.2623.010; Thu, 9 Jan 2020
 09:52:11 +0000
Received: from localhost.localdomain (119.31.174.67) by
 HK2PR02CA0172.apcprd02.prod.outlook.com (2603:1096:201:1f::32) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2602.12 via Frontend Transport; Thu, 9 Jan 2020 09:52:07 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>
Subject: [PATCH 4/4] clk: imx: imx8mn: use imx8m_clk_hw_core_composite
Thread-Topic: [PATCH 4/4] clk: imx: imx8mn: use imx8m_clk_hw_core_composite
Thread-Index: AQHVxtJ2jGNwG3tWe02xw/BwGaR/Ug==
Date: Thu, 9 Jan 2020 09:52:11 +0000
Message-ID: <1578563269-32710-5-git-send-email-peng.fan@nxp.com>
References: <1578563269-32710-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1578563269-32710-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR02CA0172.apcprd02.prod.outlook.com
 (2603:1096:201:1f::32) To VI1PR04MB4496.eurprd04.prod.outlook.com
 (2603:10a6:803:69::28)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.67]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 51f01f3b-ddd8-4f5e-2f4c-08d794e9993b
x-ms-traffictypediagnostic: VI1PR04MB6878:|VI1PR04MB6878:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB6878D291DA7226EEBAF7EAD788390@VI1PR04MB6878.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:361;
x-forefront-prvs: 02778BF158
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(376002)(366004)(346002)(39860400002)(189003)(199004)(6486002)(26005)(4326008)(54906003)(69590400006)(36756003)(6636002)(71200400001)(6506007)(110136005)(52116002)(478600001)(8936002)(6512007)(316002)(16526019)(186003)(86362001)(6666004)(2616005)(956004)(44832011)(66946007)(66556008)(5660300002)(66446008)(64756008)(2906002)(8676002)(81166006)(66476007)(81156014)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB6878;
 H:VI1PR04MB4496.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZgMmmolOwLDu4R1Dtg7E3dlhV8O5W1pUhTmqBhIzzYPwUMS/hv1Yes1AsxYPm18pLADu1K15Uzv4X1UVVbNM+GNAQvaw6pm5PDjIf+Owh3HdBNxG7YdrPm/WVUyNOR1S+lCaeQbwqf0P0eSGYPFRv8Cv+fwzMhzbpkaMbKo2cSpz8ULT14vCdEj/g6iXz/JIoguV7cXKe6OTx6Xjf1+pkfQRPnuPakwuH3e/3sqeaRuMe+FYPofjRslU65yZmicb/JSU3p0HKyWQFNkzkNHpIEiUaPw78dDNJC8LHEUe58iEIXc8eaM+PgnPC7333+1Pc0BMxY5vixRn8Q7FD68/sXZGC3EY6A7CnrHB7NUZA1ieCqA+SeIf4WglmCdACl7oGWTXpCFowioP+UrILahg2/N6FBWihFWYd+A9iFbRRxRvjYxr8WQXCs6YaypLQq/Xg1cN7K3adEdg60y6y25nIIIeQasRNuGt3v6ZZGI4bRL1BjGlCC7tSwWkB8dHftQFXQrOVTHdxxzVdGv1UQugHg==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 51f01f3b-ddd8-4f5e-2f4c-08d794e9993b
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2020 09:52:11.7436 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NG7xcg4xVZT4cDIVmt3xg7jJwpdg/J9DXSM10qaQ2V+tx9+06G9xM43eYTIxl63fwCeBeDpi+jDapHBaiZy0sA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6878
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_015214_114061_CF0DC464 
X-CRM114-Status: GOOD (  10.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.79 listed in list.dnswl.org]
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

Use imx8m_clk_hw_core_composite to simplify code.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-imx8mn.c | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mn.c b/drivers/clk/imx/clk-imx8mn.c
index e4710d3cf3e0..3737aca5fb02 100644
--- a/drivers/clk/imx/clk-imx8mn.c
+++ b/drivers/clk/imx/clk-imx8mn.c
@@ -413,15 +413,11 @@ static int imx8mn_clocks_probe(struct platform_device *pdev)
 
 	/* CORE */
 	hws[IMX8MN_CLK_A53_SRC] = imx_clk_hw_mux2("arm_a53_src", base + 0x8000, 24, 3, imx8mn_a53_sels, ARRAY_SIZE(imx8mn_a53_sels));
-	hws[IMX8MN_CLK_GPU_CORE_SRC] = imx_clk_hw_mux2("gpu_core_src", base + 0x8180, 24, 3,  imx8mn_gpu_core_sels, ARRAY_SIZE(imx8mn_gpu_core_sels));
-	hws[IMX8MN_CLK_GPU_SHADER_SRC] = imx_clk_hw_mux2("gpu_shader_src", base + 0x8200, 24, 3, imx8mn_gpu_shader_sels,  ARRAY_SIZE(imx8mn_gpu_shader_sels));
 	hws[IMX8MN_CLK_A53_CG] = imx_clk_hw_gate3("arm_a53_cg", "arm_a53_src", base + 0x8000, 28);
-	hws[IMX8MN_CLK_GPU_CORE_CG] = imx_clk_hw_gate3("gpu_core_cg", "gpu_core_src", base + 0x8180, 28);
-	hws[IMX8MN_CLK_GPU_SHADER_CG] = imx_clk_hw_gate3("gpu_shader_cg", "gpu_shader_src", base + 0x8200, 28);
-
 	hws[IMX8MN_CLK_A53_DIV] = imx_clk_hw_divider2("arm_a53_div", "arm_a53_cg", base + 0x8000, 0, 3);
-	hws[IMX8MN_CLK_GPU_CORE_DIV] = imx_clk_hw_divider2("gpu_core_div", "gpu_core_cg", base + 0x8180, 0, 3);
-	hws[IMX8MN_CLK_GPU_SHADER_DIV] = imx_clk_hw_divider2("gpu_shader_div", "gpu_shader_cg", base + 0x8200, 0, 3);
+
+	hws[IMX8MN_CLK_GPU_CORE_DIV] = imx8m_clk_hw_core_composite("gpu_core_div", imx8mn_gpu_core_sels, base + 0x8180);
+	hws[IMX8MN_CLK_GPU_SHADER_DIV] = imx8m_clk_hw_core_composite("gpu_shader_div", imx8mn_gpu_shader_sels, base + 0x8200);
 
 	/* BUS */
 	hws[IMX8MN_CLK_MAIN_AXI] = imx8m_clk_hw_composite_critical("main_axi", imx8mn_main_axi_sels, base + 0x8800);
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
