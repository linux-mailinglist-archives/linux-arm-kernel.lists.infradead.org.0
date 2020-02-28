Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8725A17314B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 07:46:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=13gjp3I/V+jC+f+IrspuXzHekINpxWHX298Gz1jzL3A=; b=C1uKRYKXgAQbTw
	FZJDl26HMpe7pVfvZ9WtU8KvyGEJQtbuy6fo+1m3eRl10tx/tOLPpYxrrTWN24GPijFEvWI036Cv6
	Vz7xdQf73FxDXV21HjdgLGEdDNUmkcd9dOHBK3ViUoHEMnSxig9nQC8Pz9jOtk2w/biR4K5TeMG35
	O4SEf20BZZjPPSuI/fahgK1EzoUdQwsuQkarDBXYsVVPOuLMf9pQaqsVnRtSbQzNCnwf6V7yknTpe
	uodOWhKPzsxXy5hB61wjrFSN6WdKTopWX2wiYmJz2Nct0UxWbQB2Rr7/5Iz/sJMhaDYwqvzaIiryc
	ELbf5+qJByyTRUNCoQeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7ZQ1-0004kg-71; Fri, 28 Feb 2020 06:46:41 +0000
Received: from mail-eopbgr70089.outbound.protection.outlook.com ([40.107.7.89]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7ZPO-0004K7-G3
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 06:46:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JDlhaf+GBS0l63NcxELfFVtCNmaXu3d+pVpFzyB8N191M7O03yhnzsrl7jWZV3mvEPA+GJKsXOrJIHCD/Hl2ZESQOxPfhO0nKFjc3kfGwKvojrK334leX/9j6mkpK9jP6YbKiapJeDtf+Dr5MedufF+kGVmh39KT0QZcPoG2utEzeY756xPhh3I5Hh07zvviWiLxGiGaRUjsBRFmCQ5JHWwhzeRmPt2XvEHmCOOwGKLvPTHL8A5te2W83UJ1La35kx5TTp9ZckmIGsyMWKbAInvrh7Qyz4uEAkjfhpCjYU7mDbKoWNLY404hxy7D9JNf4jKZY4Jo/jVEEeB0mWdoHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g0H8XUUUxvXFu0Ir2B/SU/S8KeIfqDVQjaest89bF8M=;
 b=UeLtf662Py+FodCJK2FxlfHPq/lMnFkNs1k4suBWihEKZRjQ9no2HBiBzSoE6tudgo3eTwesflaqNOR+gAbYdlRUpZqOuzqIi6tMXZANBIF+AWbchP0NPtvI2m+B2unxumNlBnGpRIQ8cO4E63cbGwaDOl8Zkr1JZs49aEcz/2aMDWN8n26wg5t2w/K6kIR72Q36DBf/Jpqi0Pma/qHfikQ0k7JX/4tBAeH+6uHo2C4YVycVQE5wV9tS9YTFKAqDiuCINIjp5apdjSSjQtXhpIzFdCnUPoBNHfleRYXLWVYCfaTUZ8qBLvUUa0iGc8U10GtRslxBp4Ru/6N1iUG50A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g0H8XUUUxvXFu0Ir2B/SU/S8KeIfqDVQjaest89bF8M=;
 b=SeOOV8+3IMWiPOn7p142o89jSrh1iUnEIVSh2XB7bjt6ZSgQyD7oehUHQhRq0NMEwkimfuQklFNQ69V2pvpoUeySnAOmcFsRnKyHF4jUHFWHHlytOsG8sJJZk3iycf27UtT1/vImzop6+Zgs3bS3W+1LPk3wWjrRoGYqGF1E4u8=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6354.eurprd04.prod.outlook.com (20.179.255.222) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.14; Fri, 28 Feb 2020 06:45:59 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2772.012; Fri, 28 Feb 2020
 06:45:59 +0000
From: peng.fan@nxp.com
To: sboyd@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, abel.vesa@nxp.com, leonard.crestez@nxp.com
Subject: [PATCH V2 3/3] clk: imx8mp: use imx8m_clk_hw_composite_core to
 simplify code
Date: Fri, 28 Feb 2020 14:39:42 +0800
Message-Id: <1582871982-29662-3-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582871982-29662-1-git-send-email-peng.fan@nxp.com>
References: <1582871982-29662-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR02CA0028.apcprd02.prod.outlook.com
 (2603:1096:3:18::16) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR02CA0028.apcprd02.prod.outlook.com (2603:1096:3:18::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2772.15 via Frontend Transport; Fri, 28 Feb 2020 06:45:53 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 2f69d3c1-33e9-45e1-b671-08d7bc19ddf9
X-MS-TrafficTypeDiagnostic: AM0PR04MB6354:|AM0PR04MB6354:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB6354C1A2135682F517004C5B88E80@AM0PR04MB6354.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:294;
X-Forefront-PRVS: 0327618309
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(136003)(376002)(346002)(366004)(199004)(189003)(2906002)(81166006)(5660300002)(956004)(66946007)(16526019)(186003)(478600001)(4326008)(66476007)(66556008)(26005)(2616005)(6666004)(69590400007)(316002)(8676002)(36756003)(8936002)(6506007)(81156014)(86362001)(6486002)(6512007)(9686003)(52116002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6354;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8VGc7j5OBnJHNmsw0S+ZcAV5LIIXaRktSh4dCFfYldlRAb0bGRq1Rhb50ajzZVpq7Ae7m0CMZMdAJTSk2nRIdsovmecpnkXy+mswR5NOIRwt0V46gGI+VM+kTby6Ap17hjtxtkBMi6HFKPPgNBPQjxBXrxFGm5T7IIkoKsKMTZggYEt8ekbqWlx8lEKedTbvf3krNP+ToKNOzOAQx3Vb0Zn50JeNrzQT021ySSCnSmwz9ni4u7jSw/dP6TDMV1aR+vmmoRqzs6wMkuRCjUT9gxJW04ZSeEVVx7m/lqYx7wF1gCBL27tIzsyezBy5XUa8HkE6Z8lN0goVuPCNOY1H0wbD0VZslNLWlAcBRrK29Uw57t0/aYnZy7r3IiJ/9eYyruQqndB6VerayAmAz9+d16JJQEe72ie950opkn8g0fSHKWc433j1N2gPZwfQhGbR2MoRgvh4K+lGcnfh/ghj1SMbgEftmPvB7lsB6J6qCy1U/vUNvo0kXZ/MbwW3CpM8blCuOg44346NWI+KWoElsA==
X-MS-Exchange-AntiSpam-MessageData: 7yHoTcnKRry54lcwQKupieEF7GrQ0zLiZoiVkY/NkXXwWHFgXm2vTtOeMBm55Ib4OdsEhvNRm+9Q9ljZfFInnuQx+EAbivBpendSY2EBKhSb2OyKnZ4hLwGGDGO/F0NstsJm65E7dgiR1mDFYwRLUA==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f69d3c1-33e9-45e1-b671-08d7bc19ddf9
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Feb 2020 06:45:59.7509 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: C+vBg465MSjgzGwIdl7jqxql1OBE0Gc1rggKZykleD3FWpG/7+TC5neAUMuV0/0xRJQ5MbP0WxDxlLcQDGe69w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6354
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_224602_810936_BD1EB947 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.89 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: aisheng.dong@nxp.com, Peng Fan <peng.fan@nxp.com>, ping.bai@nxp.com,
 anson.huang@nxp.com, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Use imx8m_clk_hw_composite_core to simpliy clks that belong to
core clk slice.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---

V2:
 New

 drivers/clk/imx/clk-imx8mp.c             | 42 +++++++++++---------------------
 include/dt-bindings/clock/imx8mp-clock.h | 11 ++++++++-
 2 files changed, 24 insertions(+), 29 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mp.c b/drivers/clk/imx/clk-imx8mp.c
index 5596dfd3387b..200c503a25ed 100644
--- a/drivers/clk/imx/clk-imx8mp.c
+++ b/drivers/clk/imx/clk-imx8mp.c
@@ -547,32 +547,18 @@ static int imx8mp_clocks_probe(struct platform_device *pdev)
 	hws[IMX8MP_SYS_PLL2_1000M] = imx_clk_hw_fixed_factor("sys_pll2_1000m", "sys_pll2_out", 1, 1);
 
 	hws[IMX8MP_CLK_A53_SRC] = imx_clk_hw_mux2("arm_a53_src", ccm_base + 0x8000, 24, 3, imx8mp_a53_sels, ARRAY_SIZE(imx8mp_a53_sels));
-	hws[IMX8MP_CLK_M7_SRC] = imx_clk_hw_mux2("arm_m7_src", ccm_base + 0x8080, 24, 3, imx8mp_m7_sels, ARRAY_SIZE(imx8mp_m7_sels));
-	hws[IMX8MP_CLK_ML_SRC] = imx_clk_hw_mux2("ml_src", ccm_base + 0x8100, 24, 3, imx8mp_ml_sels, ARRAY_SIZE(imx8mp_ml_sels));
-	hws[IMX8MP_CLK_GPU3D_CORE_SRC] = imx_clk_hw_mux2("gpu3d_core_src", ccm_base + 0x8180, 24, 3,  imx8mp_gpu3d_core_sels, ARRAY_SIZE(imx8mp_gpu3d_core_sels));
-	hws[IMX8MP_CLK_GPU3D_SHADER_SRC] = imx_clk_hw_mux2("gpu3d_shader_src", ccm_base + 0x8200, 24, 3, imx8mp_gpu3d_shader_sels, ARRAY_SIZE(imx8mp_gpu3d_shader_sels));
-	hws[IMX8MP_CLK_GPU2D_SRC] = imx_clk_hw_mux2("gpu2d_src", ccm_base + 0x8280, 24, 3, imx8mp_gpu2d_sels, ARRAY_SIZE(imx8mp_gpu2d_sels));
-	hws[IMX8MP_CLK_AUDIO_AXI_SRC] = imx_clk_hw_mux2("audio_axi_src", ccm_base + 0x8300, 24, 3, imx8mp_audio_axi_sels, ARRAY_SIZE(imx8mp_audio_axi_sels));
-	hws[IMX8MP_CLK_HSIO_AXI_SRC] = imx_clk_hw_mux2("hsio_axi_src", ccm_base + 0x8380, 24, 3, imx8mp_hsio_axi_sels, ARRAY_SIZE(imx8mp_hsio_axi_sels));
-	hws[IMX8MP_CLK_MEDIA_ISP_SRC] = imx_clk_hw_mux2("media_isp_src", ccm_base + 0x8400, 24, 3, imx8mp_media_isp_sels, ARRAY_SIZE(imx8mp_media_isp_sels));
 	hws[IMX8MP_CLK_A53_CG] = imx_clk_hw_gate3("arm_a53_cg", "arm_a53_src", ccm_base + 0x8000, 28);
-	hws[IMX8MP_CLK_M4_CG] = imx_clk_hw_gate3("arm_m7_cg", "arm_m7_src", ccm_base + 0x8080, 28);
-	hws[IMX8MP_CLK_ML_CG] = imx_clk_hw_gate3("ml_cg", "ml_src", ccm_base + 0x8100, 28);
-	hws[IMX8MP_CLK_GPU3D_CORE_CG] = imx_clk_hw_gate3("gpu3d_core_cg", "gpu3d_core_src", ccm_base + 0x8180, 28);
-	hws[IMX8MP_CLK_GPU3D_SHADER_CG] = imx_clk_hw_gate3("gpu3d_shader_cg", "gpu3d_shader_src", ccm_base + 0x8200, 28);
-	hws[IMX8MP_CLK_GPU2D_CG] = imx_clk_hw_gate3("gpu2d_cg", "gpu2d_src", ccm_base + 0x8280, 28);
-	hws[IMX8MP_CLK_AUDIO_AXI_CG] = imx_clk_hw_gate3("audio_axi_cg", "audio_axi_src", ccm_base + 0x8300, 28);
-	hws[IMX8MP_CLK_HSIO_AXI_CG] = imx_clk_hw_gate3("hsio_axi_cg", "hsio_axi_src", ccm_base + 0x8380, 28);
-	hws[IMX8MP_CLK_MEDIA_ISP_CG] = imx_clk_hw_gate3("media_isp_cg", "media_isp_src", ccm_base + 0x8400, 28);
 	hws[IMX8MP_CLK_A53_DIV] = imx_clk_hw_divider2("arm_a53_div", "arm_a53_cg", ccm_base + 0x8000, 0, 3);
-	hws[IMX8MP_CLK_M7_DIV] = imx_clk_hw_divider2("arm_m7_div", "arm_m7_cg", ccm_base + 0x8080, 0, 3);
-	hws[IMX8MP_CLK_ML_DIV] = imx_clk_hw_divider2("ml_div", "ml_cg", ccm_base + 0x8100, 0, 3);
-	hws[IMX8MP_CLK_GPU3D_CORE_DIV] = imx_clk_hw_divider2("gpu3d_core_div", "gpu3d_core_cg", ccm_base + 0x8180, 0, 3);
-	hws[IMX8MP_CLK_GPU3D_SHADER_DIV] = imx_clk_hw_divider2("gpu3d_shader_div", "gpu3d_shader_cg", ccm_base + 0x8200, 0, 3);
-	hws[IMX8MP_CLK_GPU2D_DIV] = imx_clk_hw_divider2("gpu2d_div", "gpu2d_cg", ccm_base + 0x8280, 0, 3);
-	hws[IMX8MP_CLK_AUDIO_AXI_DIV] = imx_clk_hw_divider2("audio_axi_div", "audio_axi_cg", ccm_base + 0x8300, 0, 3);
-	hws[IMX8MP_CLK_HSIO_AXI_DIV] = imx_clk_hw_divider2("hsio_axi_div", "hsio_axi_cg", ccm_base + 0x8380, 0, 3);
-	hws[IMX8MP_CLK_MEDIA_ISP_DIV] = imx_clk_hw_divider2("media_isp_div", "media_isp_cg", ccm_base + 0x8400, 0, 3);
+
+	hws[IMX8MP_CLK_M7_CORE] = imx8m_clk_hw_composite_core("m7_core", imx8mp_m7_sels, ccm_base + 0x8080);
+	hws[IMX8MP_CLK_ML_CORE] = imx8m_clk_hw_composite_core("ml_core", imx8mp_ml_sels, ccm_base + 0x8100);
+	hws[IMX8MP_CLK_GPU3D_CORE] = imx8m_clk_hw_composite_core("gpu3d_core", imx8mp_gpu3d_core_sels, ccm_base + 0x8180);
+	hws[IMX8MP_CLK_GPU3D_SHADER_CORE] = imx8m_clk_hw_composite("gpu3d_shader_core", imx8mp_gpu3d_shader_sels, ccm_base + 0x8200);
+	hws[IMX8MP_CLK_GPU2D_CORE] = imx8m_clk_hw_composite("gpu2d_core", imx8mp_gpu2d_sels, ccm_base + 0x8280);
+	hws[IMX8MP_CLK_AUDIO_AXI] = imx8m_clk_hw_composite("audio_axi", imx8mp_audio_axi_sels, ccm_base + 0x8300);
+	hws[IMX8MP_CLK_AUDIO_AXI_SRC] = hws[IMX8MP_CLK_AUDIO_AXI];
+	hws[IMX8MP_CLK_HSIO_AXI] = imx8m_clk_hw_composite("hsio_axi", imx8mp_hsio_axi_sels, ccm_base + 0x8380);
+	hws[IMX8MP_CLK_MEDIA_ISP] = imx8m_clk_hw_composite("media_isp", imx8mp_media_isp_sels, ccm_base + 0x8400);
 
 	/* CORE SEL */
 	hws[IMX8MP_CLK_A53_CORE] = imx_clk_hw_mux2_flags("arm_a53_core", ccm_base + 0x9880, 24, 1, imx8mp_a53_core_sels, ARRAY_SIZE(imx8mp_a53_core_sels), CLK_IS_CRITICAL);
@@ -713,8 +699,8 @@ static int imx8mp_clocks_probe(struct platform_device *pdev)
 	hws[IMX8MP_CLK_SDMA1_ROOT] = imx_clk_hw_gate4("sdma1_root_clk", "ipg_root", ccm_base + 0x43a0, 0);
 	hws[IMX8MP_CLK_ENET_QOS_ROOT] = imx_clk_hw_gate4("enet_qos_root_clk", "sim_enet_root_clk", ccm_base + 0x43b0, 0);
 	hws[IMX8MP_CLK_SIM_ENET_ROOT] = imx_clk_hw_gate4("sim_enet_root_clk", "enet_axi", ccm_base + 0x4400, 0);
-	hws[IMX8MP_CLK_GPU2D_ROOT] = imx_clk_hw_gate4("gpu2d_root_clk", "gpu2d_div", ccm_base + 0x4450, 0);
-	hws[IMX8MP_CLK_GPU3D_ROOT] = imx_clk_hw_gate4("gpu3d_root_clk", "gpu3d_core_div", ccm_base + 0x4460, 0);
+	hws[IMX8MP_CLK_GPU2D_ROOT] = imx_clk_hw_gate4("gpu2d_root_clk", "gpu2d_core", ccm_base + 0x4450, 0);
+	hws[IMX8MP_CLK_GPU3D_ROOT] = imx_clk_hw_gate4("gpu3d_root_clk", "gpu3d_core", ccm_base + 0x4460, 0);
 	hws[IMX8MP_CLK_SNVS_ROOT] = imx_clk_hw_gate4("snvs_root_clk", "ipg_root", ccm_base + 0x4470, 0);
 	hws[IMX8MP_CLK_UART1_ROOT] = imx_clk_hw_gate4("uart1_root_clk", "uart1", ccm_base + 0x4490, 0);
 	hws[IMX8MP_CLK_UART2_ROOT] = imx_clk_hw_gate4("uart2_root_clk", "uart2", ccm_base + 0x44a0, 0);
@@ -731,7 +717,7 @@ static int imx8mp_clocks_probe(struct platform_device *pdev)
 	hws[IMX8MP_CLK_GPU_ROOT] = imx_clk_hw_gate4("gpu_root_clk", "gpu_axi", ccm_base + 0x4570, 0);
 	hws[IMX8MP_CLK_VPU_VC8KE_ROOT] = imx_clk_hw_gate4("vpu_vc8ke_root_clk", "vpu_vc8000e", ccm_base + 0x4590, 0);
 	hws[IMX8MP_CLK_VPU_G2_ROOT] = imx_clk_hw_gate4("vpu_g2_root_clk", "vpu_g2", ccm_base + 0x45a0, 0);
-	hws[IMX8MP_CLK_NPU_ROOT] = imx_clk_hw_gate4("npu_root_clk", "ml_div", ccm_base + 0x45b0, 0);
+	hws[IMX8MP_CLK_NPU_ROOT] = imx_clk_hw_gate4("npu_root_clk", "ml_core", ccm_base + 0x45b0, 0);
 	hws[IMX8MP_CLK_HSIO_ROOT] = imx_clk_hw_gate4("hsio_root_clk", "ipg_root", ccm_base + 0x45c0, 0);
 	hws[IMX8MP_CLK_MEDIA_APB_ROOT] = imx_clk_hw_gate2_shared2("media_apb_root_clk", "media_apb", ccm_base + 0x45d0, 0, &share_count_media);
 	hws[IMX8MP_CLK_MEDIA_AXI_ROOT] = imx_clk_hw_gate2_shared2("media_axi_root_clk", "media_axi", ccm_base + 0x45d0, 0, &share_count_media);
@@ -739,7 +725,7 @@ static int imx8mp_clocks_probe(struct platform_device *pdev)
 	hws[IMX8MP_CLK_MEDIA_CAM2_PIX_ROOT] = imx_clk_hw_gate2_shared2("media_cam2_pix_root_clk", "media_cam2_pix", ccm_base + 0x45d0, 0, &share_count_media);
 	hws[IMX8MP_CLK_MEDIA_DISP1_PIX_ROOT] = imx_clk_hw_gate2_shared2("media_disp1_pix_root_clk", "media_disp1_pix", ccm_base + 0x45d0, 0, &share_count_media);
 	hws[IMX8MP_CLK_MEDIA_DISP2_PIX_ROOT] = imx_clk_hw_gate2_shared2("media_disp2_pix_root_clk", "media_disp2_pix", ccm_base + 0x45d0, 0, &share_count_media);
-	hws[IMX8MP_CLK_MEDIA_ISP_ROOT] = imx_clk_hw_gate2_shared2("media_isp_root_clk", "media_isp_div", ccm_base + 0x45d0, 0, &share_count_media);
+	hws[IMX8MP_CLK_MEDIA_ISP_ROOT] = imx_clk_hw_gate2_shared2("media_isp_root_clk", "media_isp", ccm_base + 0x45d0, 0, &share_count_media);
 
 	hws[IMX8MP_CLK_USDHC3_ROOT] = imx_clk_hw_gate4("usdhc3_root_clk", "usdhc3", ccm_base + 0x45e0, 0);
 	hws[IMX8MP_CLK_HDMI_ROOT] = imx_clk_hw_gate4("hdmi_root_clk", "hdmi_axi", ccm_base + 0x45f0, 0);
diff --git a/include/dt-bindings/clock/imx8mp-clock.h b/include/dt-bindings/clock/imx8mp-clock.h
index 46c69cd66c62..8430bc4fd182 100644
--- a/include/dt-bindings/clock/imx8mp-clock.h
+++ b/include/dt-bindings/clock/imx8mp-clock.h
@@ -313,6 +313,15 @@
 #define IMX8MP_SYS_PLL2_333M_CG			303
 #define IMX8MP_SYS_PLL2_500M_CG			304
 
-#define IMX8MP_CLK_END				305
+#define IMX8MP_CLK_M7_CORE			305
+#define IMX8MP_CLK_ML_CORE			306
+#define IMX8MP_CLK_GPU3D_CORE			307
+#define IMX8MP_CLK_GPU3D_SHADER_CORE		308
+#define IMX8MP_CLK_GPU2D_CORE			309
+#define IMX8MP_CLK_AUDIO_AXI			310
+#define IMX8MP_CLK_HSIO_AXI			311
+#define IMX8MP_CLK_MEDIA_ISP			312
+
+#define IMX8MP_CLK_END				313
 
 #endif
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
