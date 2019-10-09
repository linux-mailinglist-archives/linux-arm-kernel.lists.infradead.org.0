Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1666ED0BFB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 11:58:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tNfkMvZFujoPJmWFH0VgPO5AMIDfSOGtVil09uzRlZs=; b=NqNCmaVpvYu9zf
	Z4WaHlS1JEMhZcfXdQLls28kFQk5niNmmKDGKCqcOVwqL2+ynDfXfpywN9Jpf1bj92e8fE29GP2J3
	bJ7OKR+5AH1RuS0rIoRyaPqxfuAzd8YAeq3uKtCInILHOUs03lXZwLvtMAI+pCxpXoeHlaUkAeJZ6
	hmaf1ChW2cM03/EBoW4DgRM1LBwQkIllw/o8CP6aoVKPiFIfEYSuK2VrqVheSiOZje2wXI75kGBsm
	clPX6xFdVlcYwamzFj3R05VxmSYXfTTiglC4hasl3FKwVPijabNUImZxlbt0t/NrmQyGpgXOFpWpx
	W4hy+tHsOnboGE6llJRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI8jl-0008Gx-46; Wed, 09 Oct 2019 09:58:29 +0000
Received: from mail-eopbgr00085.outbound.protection.outlook.com ([40.107.0.85]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI8jZ-0008GZ-OJ
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 09:58:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j7aBDtWXa2byhqRAYxd0GyuUg90TIXFMbJIJU2WsNkttTdGnwLnsYr83ndFAM7zFL48DgvcSIGXsL4+U7qXj1hTWaf0COPHC+dFQUjpcH2LNiYMRef68nwXjd8vr0LMmZvBVKXCNpdPFdE6xVBF7qfmCFmLh4i5Q5JBCJNUhPGQFJ1JI2vOVbeEIadbkd5IynbVuUpX951mCZfha9FUNVMzg2Et1v9LVi8ebg7+qxKV0ICSBnafyFJ9zIVZWvvMaVxiBnIbqzLbfFgV/QBK1oxPpMYYpyCCNO9dvm0DxbDb4sF/wSSY2TMTn50KgiRkkFmpxkcvoZGTptbIXGTHQnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sNmzcr8h+Dq14in4E/+/TuCB5UrxIML6sZiCudY2ohk=;
 b=Rwq7vJR0beCX2Djv/wu9GbrxWO4VVk3IfluXDknf9gzoukdppiOQ8gJotFdyQSFdz/ZDvo8n38C4jX/Fap/+5TcxYy2YQftNrllP8XAgB7zvqqLRAYk0VCyItfL3kxLSgwKHZjBP92z8K7zHecr7Mz1T3JVIcA+IZukDRKWqnICIa/jyPsxXEz4DXVTKWLdkLY2CvK8g5s0B02zuthlH8+pn18bagOcP5Uu17mC4nXbG2++/NpL+707EGixqR3X5TgTwVVwHA/w2aOXM6g1AzhFogY4SWv8973DmRh+t4t19TM8eSkOqSmyZJFoh9m5VbbCI6NJZb6XhcHtuaOIlvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sNmzcr8h+Dq14in4E/+/TuCB5UrxIML6sZiCudY2ohk=;
 b=KF+3/wiphDrtw5iE9JhFEGnyC7jfP1lEg+S3WQ3gsmyhu4K1LHO8KZ/jqOkTbQnAuT2NcMKXk1oJvwS1dep+/uiLCzSwfQrX/ffCOHBtohrFEFI3RY/WFr84Bd92jKuRc2FnJKTHOICQi7QDwo6oa4OfuvhMGHXBrwW/tEs8U1w=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4177.eurprd04.prod.outlook.com (52.134.92.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16; Wed, 9 Oct 2019 09:58:15 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::843c:e722:27cb:74e1%5]) with mapi id 15.20.2327.026; Wed, 9 Oct 2019
 09:58:15 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>
Subject: [PATCH 1/3] clk: imx: imx8mm: mark sys_pll1/2 as fixed clock
Thread-Topic: [PATCH 1/3] clk: imx: imx8mm: mark sys_pll1/2 as fixed clock
Thread-Index: AQHVfogREXMSqkErfE+B9jsiOEYyjg==
Date: Wed, 9 Oct 2019 09:58:14 +0000
Message-ID: <1570614940-17239-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR01CA0007.apcprd01.prod.exchangelabs.com
 (2603:1096:203:92::19) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7358983f-3931-4223-1bb2-08d74c9f3395
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: AM0PR04MB4177:|AM0PR04MB4177:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB41778850B19CEDDD702D5EDC88950@AM0PR04MB4177.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2399;
x-forefront-prvs: 018577E36E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(366004)(396003)(346002)(376002)(189003)(199004)(476003)(64756008)(478600001)(8676002)(14454004)(81166006)(81156014)(4326008)(5660300002)(66556008)(2906002)(36756003)(66446008)(66476007)(256004)(3846002)(186003)(66946007)(486006)(26005)(6116002)(6486002)(2616005)(305945005)(25786009)(7736002)(316002)(110136005)(66066001)(54906003)(2201001)(6436002)(52116002)(99286004)(6512007)(44832011)(50226002)(102836004)(71190400001)(71200400001)(8936002)(2501003)(86362001)(386003)(6506007)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4177;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9qVoZZG9qfb0pC7AlSFNfPd5nLEQoDd6UHTuroCOC60N7AMzdXtZfdJuJHP9ldveoYg4BhmzUYSqxS8w4W+kR8m2BB25wdWtVxqrtSJTSYt7Uy/qs+MC5U6u6K3C9EqjRWoF9EG3xTFKeiTPf6DH75hmtBjKBG3DISjd7r2xJMo2IoNautdX1CBiFabPS3FfMmIm3VFiWk1efaeEjmTwL30WKSGL6KLxXCFOishdJ/fyMsBW9AQZMHb9i4rZ0UONeAVKK+djsukLK6NWoRYh2HwymOahh8iIHywphMd2OR7D7eQnWzrEPfgeFseiyI4Zo1eF410bH2FkT4k5f/HXgvwy5zm7vnF3LAPoWkzn+BV9KdnVRgjEAo5H70jfy86gjTC8Uv5GO8e927psUIpESBkPSD+3ZwXpkjcVa3LfMJ4=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7358983f-3931-4223-1bb2-08d74c9f3395
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2019 09:58:14.8763 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: E0zcoTYdvTYkivrYuDz9eDlTFfI48PZLPNRX6WXcQLGkuRJuwblg7YMu8x2bfXlMlgXJcVGEe+NzNKiFwH80oQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4177
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_025817_796039_E77E872E 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

According Architecture definition guide, SYS_PLL1 is fixed at
800MHz, SYS_PLL2 is fixed at 1000MHz, so let's use imx_clk_fixed
to register the clocks and drop code that could change the rate.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-imx8mm.c | 14 ++++----------
 1 file changed, 4 insertions(+), 10 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
index 04876ec66127..ae7321ab7837 100644
--- a/drivers/clk/imx/clk-imx8mm.c
+++ b/drivers/clk/imx/clk-imx8mm.c
@@ -34,8 +34,6 @@ static const char *dram_pll_bypass_sels[] = {"dram_pll", "dram_pll_ref_sel", };
 static const char *gpu_pll_bypass_sels[] = {"gpu_pll", "gpu_pll_ref_sel", };
 static const char *vpu_pll_bypass_sels[] = {"vpu_pll", "vpu_pll_ref_sel", };
 static const char *arm_pll_bypass_sels[] = {"arm_pll", "arm_pll_ref_sel", };
-static const char *sys_pll1_bypass_sels[] = {"sys_pll1", "sys_pll1_ref_sel", };
-static const char *sys_pll2_bypass_sels[] = {"sys_pll2", "sys_pll2_ref_sel", };
 static const char *sys_pll3_bypass_sels[] = {"sys_pll3", "sys_pll3_ref_sel", };
 
 /* CCM ROOT */
@@ -325,8 +323,6 @@ static int imx8mm_clocks_probe(struct platform_device *pdev)
 	clks[IMX8MM_GPU_PLL_REF_SEL] = imx_clk_mux("gpu_pll_ref_sel", base + 0x64, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
 	clks[IMX8MM_VPU_PLL_REF_SEL] = imx_clk_mux("vpu_pll_ref_sel", base + 0x74, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
 	clks[IMX8MM_ARM_PLL_REF_SEL] = imx_clk_mux("arm_pll_ref_sel", base + 0x84, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
-	clks[IMX8MM_SYS_PLL1_REF_SEL] = imx_clk_mux("sys_pll1_ref_sel", base + 0x94, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
-	clks[IMX8MM_SYS_PLL2_REF_SEL] = imx_clk_mux("sys_pll2_ref_sel", base + 0x104, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
 	clks[IMX8MM_SYS_PLL3_REF_SEL] = imx_clk_mux("sys_pll3_ref_sel", base + 0x114, 0, 2, pll_ref_sels, ARRAY_SIZE(pll_ref_sels));
 
 	clks[IMX8MM_AUDIO_PLL1] = imx_clk_pll14xx("audio_pll1", "audio_pll1_ref_sel", base, &imx_1443x_pll);
@@ -336,8 +332,8 @@ static int imx8mm_clocks_probe(struct platform_device *pdev)
 	clks[IMX8MM_GPU_PLL] = imx_clk_pll14xx("gpu_pll", "gpu_pll_ref_sel", base + 0x64, &imx_1416x_pll);
 	clks[IMX8MM_VPU_PLL] = imx_clk_pll14xx("vpu_pll", "vpu_pll_ref_sel", base + 0x74, &imx_1416x_pll);
 	clks[IMX8MM_ARM_PLL] = imx_clk_pll14xx("arm_pll", "arm_pll_ref_sel", base + 0x84, &imx_1416x_pll);
-	clks[IMX8MM_SYS_PLL1] = imx_clk_pll14xx("sys_pll1", "sys_pll1_ref_sel", base + 0x94, &imx_1416x_pll);
-	clks[IMX8MM_SYS_PLL2] = imx_clk_pll14xx("sys_pll2", "sys_pll2_ref_sel", base + 0x104, &imx_1416x_pll);
+	clks[IMX8MM_SYS_PLL1] = imx_clk_fixed("sys_pll1", 800000000);
+	clks[IMX8MM_SYS_PLL2] = imx_clk_fixed("sys_pll2", 1000000000);
 	clks[IMX8MM_SYS_PLL3] = imx_clk_pll14xx("sys_pll3", "sys_pll3_ref_sel", base + 0x114, &imx_1416x_pll);
 
 	/* PLL bypass out */
@@ -348,8 +344,6 @@ static int imx8mm_clocks_probe(struct platform_device *pdev)
 	clks[IMX8MM_GPU_PLL_BYPASS] = imx_clk_mux_flags("gpu_pll_bypass", base + 0x64, 28, 1, gpu_pll_bypass_sels, ARRAY_SIZE(gpu_pll_bypass_sels), CLK_SET_RATE_PARENT);
 	clks[IMX8MM_VPU_PLL_BYPASS] = imx_clk_mux_flags("vpu_pll_bypass", base + 0x74, 28, 1, vpu_pll_bypass_sels, ARRAY_SIZE(vpu_pll_bypass_sels), CLK_SET_RATE_PARENT);
 	clks[IMX8MM_ARM_PLL_BYPASS] = imx_clk_mux_flags("arm_pll_bypass", base + 0x84, 28, 1, arm_pll_bypass_sels, ARRAY_SIZE(arm_pll_bypass_sels), CLK_SET_RATE_PARENT);
-	clks[IMX8MM_SYS_PLL1_BYPASS] = imx_clk_mux_flags("sys_pll1_bypass", base + 0x94, 28, 1, sys_pll1_bypass_sels, ARRAY_SIZE(sys_pll1_bypass_sels), CLK_SET_RATE_PARENT);
-	clks[IMX8MM_SYS_PLL2_BYPASS] = imx_clk_mux_flags("sys_pll2_bypass", base + 0x104, 28, 1, sys_pll2_bypass_sels, ARRAY_SIZE(sys_pll2_bypass_sels), CLK_SET_RATE_PARENT);
 	clks[IMX8MM_SYS_PLL3_BYPASS] = imx_clk_mux_flags("sys_pll3_bypass", base + 0x114, 28, 1, sys_pll3_bypass_sels, ARRAY_SIZE(sys_pll3_bypass_sels), CLK_SET_RATE_PARENT);
 
 	/* PLL out gate */
@@ -360,8 +354,8 @@ static int imx8mm_clocks_probe(struct platform_device *pdev)
 	clks[IMX8MM_GPU_PLL_OUT] = imx_clk_gate("gpu_pll_out", "gpu_pll_bypass", base + 0x64, 11);
 	clks[IMX8MM_VPU_PLL_OUT] = imx_clk_gate("vpu_pll_out", "vpu_pll_bypass", base + 0x74, 11);
 	clks[IMX8MM_ARM_PLL_OUT] = imx_clk_gate("arm_pll_out", "arm_pll_bypass", base + 0x84, 11);
-	clks[IMX8MM_SYS_PLL1_OUT] = imx_clk_gate("sys_pll1_out", "sys_pll1_bypass", base + 0x94, 11);
-	clks[IMX8MM_SYS_PLL2_OUT] = imx_clk_gate("sys_pll2_out", "sys_pll2_bypass", base + 0x104, 11);
+	clks[IMX8MM_SYS_PLL1_OUT] = imx_clk_gate("sys_pll1_out", "sys_pll1", base + 0x94, 11);
+	clks[IMX8MM_SYS_PLL2_OUT] = imx_clk_gate("sys_pll2_out", "sys_pll2", base + 0x104, 11);
 	clks[IMX8MM_SYS_PLL3_OUT] = imx_clk_gate("sys_pll3_out", "sys_pll3_bypass", base + 0x114, 11);
 
 	/* SYS PLL fixed output */
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
