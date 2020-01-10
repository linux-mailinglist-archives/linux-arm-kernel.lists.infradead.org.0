Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F540136835
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 08:19:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zTDYtmpiEDNKKido3lSn3DNzdx8Zr/MyXfJIfwjHbqU=; b=r/3lStRo4udWDa
	LSUHRM/OAN+eIu1hl5y1A7bQQ0bA75Hrg5CQo2dYfYGTQbpy0EzzXjQIDMy/dbtw2+yGn9NxvVgee
	9Xe6r6OrSdjbkEaWpllxeqnf9T+HDHRWW++GB/O2Q4xSsrG62wBF9sp0DF75ZtoSNINJ5XExbbq2O
	fMWMLZaXKCThi+3IiXGmnjtgjyNuq8YEdrrmrcJuAzkFKDQHtJSWqz+aPHT5ya/92VWHrpcvND8LU
	p/fxFV8N78PiNO2ILaNhzYOM70pzAmXWIyx30TGaGBZ11jlQsGcTVZDnIj9tcqMXegSYMSklDUJAO
	kbqksj1vZuBjPEvDYzXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipoZX-0005Xj-0E; Fri, 10 Jan 2020 07:19:07 +0000
Received: from mail-eopbgr130058.outbound.protection.outlook.com
 ([40.107.13.58] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipoYc-0004p2-9g
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 07:18:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b//p3eDkDNKte/kxq82pRcyPyb3HNxVo7rHZ0QmrTOTD2QM+fYB9e7kufwaAWEmnMCXdTefdl5w94JwexNGwZlUBLZzwsN7vJJnWNiPjTRjVxZ0zbT3bg+cFwjT9IUTZvwOYtR6a0B49yPfBAAqMxjoebZJy9kKU1WMeDccRAYbVhUOyTmSdFNMXR6PCW9hWRk+g3RuDo4jeXY2i3uq1HhAtS/IJ8FJnv6ptIs+5QyLW3nPcv6fD26PEpYrctQWAhh1Ie2wosj2TH7vZzEv0vp3YY3ZJUYvM6sPQbYfCoMKwRZVuVcYq073Vqv1ZMSyJ7UnnxWpaIqY2ZieUC3bmgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V9hHpYc1QTxFufeaor7kzXYM5HTjA4lTlgvKy/9O2tQ=;
 b=LHb2U6/o00Feb+MR/7/ZSUkznRixhYfgEozJo/8pkiBJM1tX6hvuynpXWoQ4ooR4+u2XnTbloF+X6MtmadIeFcYJIRJhsg+6NnYPu2ZZJnogARHEehaPy2TSUgWFbmevHKYRnI6ZfbN6wg6M8X0XuzwhGHjcyLDEU9tiZvwZFLEQkepLB64nUgXvQfyJDYlEna9AKQ90vwSaeFMAzsu6RlUL2im7cKL8OxfioU4BWeaNHtfRY9nI/JQVRoLl4yIkVU/p0QGkAeEILgo0VFnfnE8SHkMYFQThICQvXjao/bQTlSlI67hZ1j3kHgqHpU304QzLWrt8oHxoZ01qIvL5cg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V9hHpYc1QTxFufeaor7kzXYM5HTjA4lTlgvKy/9O2tQ=;
 b=pLPGE0wJn0ygewUBqCWcH/N+Hv9BrPnWnNKBiKAiyjwom77P0sGW8G/nhpqCkXt7XyPNqFXAj8pEq7KmlRhQpI6q8mkk56mXfzCN0qRmVg3QqAngF+E6flIWmKzR6bn1opYNFToL9jV4IJom7DoD3Y30PwPqKCoCoy5aBsYctXk=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB7172.eurprd04.prod.outlook.com (10.186.128.80) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.9; Fri, 10 Jan 2020 07:18:06 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2623.013; Fri, 10 Jan 2020
 07:18:06 +0000
Received: from localhost.localdomain (119.31.174.66) by
 HK2PR06CA0006.apcprd06.prod.outlook.com (2603:1096:202:2e::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2623.10 via Frontend Transport; Fri, 10 Jan 2020 07:18:01 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>
Subject: [PATCH V2 4/4] clk: imx: imx8mn: use imx8m_clk_hw_composite_core
Thread-Topic: [PATCH V2 4/4] clk: imx: imx8mn: use imx8m_clk_hw_composite_core
Thread-Index: AQHVx4Ya8OWileJWAE67lA7ZmiZ6RQ==
Date: Fri, 10 Jan 2020 07:18:06 +0000
Message-ID: <1578640411-16991-5-git-send-email-peng.fan@nxp.com>
References: <1578640411-16991-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1578640411-16991-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR06CA0006.apcprd06.prod.outlook.com
 (2603:1096:202:2e::18) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 141446b4-9e09-4175-eb41-08d7959d3cb2
x-ms-traffictypediagnostic: AM0PR04MB7172:|AM0PR04MB7172:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB7172FBA7D07DB672596A6C4688380@AM0PR04MB7172.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:361;
x-forefront-prvs: 02788FF38E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(366004)(346002)(136003)(396003)(189003)(199004)(2906002)(478600001)(81156014)(81166006)(69590400006)(956004)(8936002)(4326008)(2616005)(44832011)(71200400001)(8676002)(86362001)(6512007)(5660300002)(6486002)(186003)(16526019)(66476007)(66446008)(36756003)(66556008)(64756008)(66946007)(26005)(6506007)(6636002)(54906003)(316002)(52116002)(110136005)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB7172;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /J9t1emmdVKJ8VqbwwkULn5sHnpfFgMV1guZuTEp9joFOiEHv3hjrPnRWKQLbK054WtEWhFsNsTVe2lYwUh8NLhcbPehXvph3F77g8FFsHv2BAqXOUnGgygZEvy5gV4dw2jNAosWhn8mP4916Y7aAiaclCUb9Yl7r2QmtleZ+uY34t++nfMzQu1UHQm83UswpI7bWZpyPDDLQ3WdSKjVfzarkbyt35LYRy7yH5rLnisQV5wM3snZ9GgzZhIFQkmxxVtZLeipmd7Hjgmu5LXdUM6zfNcfaA6KRaofA0F9v3LdP3DgjPVe/I0K15Fs42z76WXnJP+qZjdKw6J/RPhJQvzjy8TRNOjkHtVpmWpcK4ae5TeSvgiKBqm7SKleQtGcCaKFiUS/Hxq8Z6V0Wd2xJf94dilIB81ESARlwdPo5QPbPeKSkEApKvk+rywavZbXIL6FdVa9hbcNcQZbMEJVXDHXIVPgyf3xeCXWvC0jb5NO7c7jyOimlwnY3JbX/ciNOhx/rns/2Er/YimTuykPaw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 141446b4-9e09-4175-eb41-08d7959d3cb2
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jan 2020 07:18:06.0984 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uIUw0aZxbssPcfHH2c577+Vs9mrVri/x2YosPU4TnVXlb/sbqnyd7glIEF6N+/h3BuU6xXD3teRrRX78WyRsBg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB7172
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_231810_341235_E890DC46 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.58 listed in list.dnswl.org]
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

Use imx8m_clk_hw_composite_core to simplify code.

Reviewed-by: Abel Vesa <abel.vesa@nxp.com>
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-imx8mn.c | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mn.c b/drivers/clk/imx/clk-imx8mn.c
index c5e7316b4c66..ce2ba3dce483 100644
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
+	hws[IMX8MN_CLK_GPU_CORE_DIV] = imx8m_clk_hw_composite_core("gpu_core_div", imx8mn_gpu_core_sels, base + 0x8180);
+	hws[IMX8MN_CLK_GPU_SHADER_DIV] = imx8m_clk_hw_composite_core("gpu_shader_div", imx8mn_gpu_shader_sels, base + 0x8200);
 
 	/* BUS */
 	hws[IMX8MN_CLK_MAIN_AXI] = imx8m_clk_hw_composite_critical("main_axi", imx8mn_main_axi_sels, base + 0x8800);
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
