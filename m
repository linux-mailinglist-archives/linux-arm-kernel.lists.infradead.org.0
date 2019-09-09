Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA4DFAD254
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 05:41:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9mjE+yLqSH9ssFn7elHY0uam3VxjbDjigq42vkBOdXE=; b=nsXODZe3W++tHi
	dFuvbQWv7xTOOIJNNz9te8GD9ww5yyGAtUcY1NEIlSskii240UFiD5/hSFZ6uGANlXOXpGE+ZlwIO
	FVXz98TKljPd2oRTWFhk5gq6tnUJq5DAsKCKS60U0ylW4LX51UatOCR+LPGoJ3QhOPchmUhd5xb1z
	Oc8BzrQT4NjqCVBFVGglCpibAs/WTRQzchAf3ieCwatMFHeJpjJv6YImo+9YyMTODSy2XD0ouGeLk
	Bs47W5+1JZ4seFE0Pugg//O6/N/Vz4r9OHU4qn+1cuU/o3BW0je1kVAwMtMWg62LvUemLl+eGywOt
	kHwdAo878i4oSF+u8JVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7AYI-0005t9-3N; Mon, 09 Sep 2019 03:41:18 +0000
Received: from mail-eopbgr60043.outbound.protection.outlook.com ([40.107.6.43]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7AWs-0003ss-Fk
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 03:39:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZzOM9Rgc5hzpZ2hszR+vi5PY3vr+YD+N0B0NcX/Du7qhTN5urmMptIRlSrmcLnxRRAV6vNceuQ/99ve/igcSnD8qJP9Ez6CplppaeWz+b9pJ+E8p2EbDRiJyl3uQna/nmxBJ+Xr6TaSN1g2ZSIEr42Q+B87Zy+Ws2LjX3CJnCyStHH439rKKY0tq2ZN14sZOPJX1sohY1bLCafFEZeikdQNx4V5Z5o8sncqFxWs9c8Sa7EQQMtFfAuO3GkZ0Bf4YcJEYHkOASYo4DCdjD31lT+ysgchwPwixCzPYsTEx50vsQR3CKYMnzhxKCczfAUPmFN2/W2zVxG6rXiss2RKzYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q33wQNymR4+vJB/pc/bOj2rdH7HOEkJ6ySFDdRLt3DY=;
 b=kuiF2pne9QUNf0xofi0sybxB33jPugYb89/nmTVBPjKGqAAYyeNDs9DrQMyyc/OnpzH3gVs4/DFlXZUGIPO0Ph0wiViocqfLHaC70KL06oIyCNAuCBauGMyh8lpZKrgsfXy/VBivkuK09iOAkuO2sXpRke4QEERMLLiytIO+S0MdWS6N7qcus5eWGAXwUvI2LpF37LZQCnDwUSk7yrqbKZ6D5H7Nt7vlrq1TNaJwWipeq005PVdZ4DCaSXeeAZzVTGRXOtGSwBqYCDGpGelxMeimOe+hlCdcWeIDfIet5rQJvjzkKa8JaIyJ49uqdT6j8lN0dNJy45ouj6Yyfzpu7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q33wQNymR4+vJB/pc/bOj2rdH7HOEkJ6ySFDdRLt3DY=;
 b=XYFtd5jQHSjxMf8kt8D6KPLJCSFcakJxtv86rwCZZDtrep+npVPJYNurbJcmWoCZyGmJZn2s7fuvM+MIrNlD4Wn3p+qnQUEDwQ8V1CAOyEbKh/OM6xvExLjTl0dhVvT/n/0QarxCcBDjRuLhMRQAZwu4iuuV2dv8m6AzXK2SgUA=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6020.eurprd04.prod.outlook.com (20.179.32.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.19; Mon, 9 Sep 2019 03:39:45 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6ca2:ec08:2b37:8ab8]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6ca2:ec08:2b37:8ab8%6]) with mapi id 15.20.2241.018; Mon, 9 Sep 2019
 03:39:45 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>
Subject: [PATCH V3 3/4] clk: imx: imx8mm: fix pll mux bit
Thread-Topic: [PATCH V3 3/4] clk: imx: imx8mm: fix pll mux bit
Thread-Index: AQHVZsA4ERpqffdI60SGSU5jC9Bhww==
Date: Mon, 9 Sep 2019 03:39:44 +0000
Message-ID: <1568043491-20680-4-git-send-email-peng.fan@nxp.com>
References: <1568043491-20680-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1568043491-20680-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR03CA0004.apcprd03.prod.outlook.com
 (2603:1096:203:2e::16) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 30e16abb-598a-4503-9225-08d734d75b27
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB6020; 
x-ms-traffictypediagnostic: AM0PR04MB6020:|AM0PR04MB6020:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB602076F7E88C472AB81AB50088B70@AM0PR04MB6020.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 01559F388D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(396003)(39860400002)(376002)(136003)(346002)(199004)(189003)(7736002)(186003)(26005)(54906003)(316002)(66446008)(64756008)(76176011)(50226002)(446003)(2616005)(4326008)(6512007)(11346002)(44832011)(3846002)(6116002)(66946007)(102836004)(110136005)(2201001)(25786009)(8676002)(52116002)(2501003)(386003)(478600001)(36756003)(14454004)(99286004)(66556008)(5660300002)(66476007)(86362001)(71190400001)(6506007)(2906002)(256004)(476003)(486006)(53936002)(8936002)(6486002)(66066001)(81166006)(6436002)(71200400001)(81156014)(305945005)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6020;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 97c4oZ+WoE+SAW/4xBauLYgrMW0b0cK6tadIxsI8ayBmSvemj7YBAHREA4E68r96/rzhaVseJeihN0YQD/76pHEy/IoGgas1x2F8aL8SVRyYLM7Uc7QTDR5TuBFvm9UHnBGDuMWY1rcWgdtc5SmI0Srky1gUaJywlzInkfPwQ7CtKox8sbmqr6R0j7TYyuAAYzIalGdewsRsGOj73sl5103R/ev4SgUjY5D5QKmLssZkrVFRaFhXSBQ++nPWt/rNYMZKEjkwLiHd78JKAN2qZdgln/kmV8DJhbZZ3wpslXpIxZel2KTyEbmOur/le8seH0rc/mDzMFtt7r99mJ1MaGmOB+GC5cJoFavQWElJscM7aVEnRgy7LC273R1jKhMmb/kgzVkGU89gQEIu0a/v/XEL9NhMPH+v5/7y6rSdEGU=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 30e16abb-598a-4503-9225-08d734d75b27
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Sep 2019 03:39:44.9806 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NvwImkMeIbRkv2OQnOx2w5dARSUVyxTLvZLRSrXT45tzo3TaRLPZVr21cTlK7hwY3ua1rqP6cq0WaaXd1X3OEA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6020
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190908_203951_815136_E283E59F 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.43 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

pll BYPASS bit should be kept inside pll driver for glitchless freq
setting following spec. If exposing the bit, that means pll driver and
clk driver has two paths to touch this bit, which is wrong.

So use EXT_BYPASS bit here.

And drop uneeded set parent, because EXT_BYPASS default is 0.

Fixes: ba5625c3e272 ("clk: imx: Add clock driver support for imx8mm")
Suggested-by: Jacky Bai <ping.bai@nxp.com>
Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---

V3:
 None
V2:
 New patch


 drivers/clk/imx/clk-imx8mm.c | 32 ++++++++++----------------------
 1 file changed, 10 insertions(+), 22 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
index 2758e3f0d15d..067ab876911d 100644
--- a/drivers/clk/imx/clk-imx8mm.c
+++ b/drivers/clk/imx/clk-imx8mm.c
@@ -408,28 +408,16 @@ static int imx8mm_clocks_probe(struct platform_device *pdev)
 	clks[IMX8MM_SYS_PLL3] = imx_clk_pll14xx("sys_pll3", "sys_pll3_ref_sel", base + 0x114, &imx8mm_sys_pll);
 
 	/* PLL bypass out */
-	clks[IMX8MM_AUDIO_PLL1_BYPASS] = imx_clk_mux_flags("audio_pll1_bypass", base, 4, 1, audio_pll1_bypass_sels, ARRAY_SIZE(audio_pll1_bypass_sels), CLK_SET_RATE_PARENT);
-	clks[IMX8MM_AUDIO_PLL2_BYPASS] = imx_clk_mux_flags("audio_pll2_bypass", base + 0x14, 4, 1, audio_pll2_bypass_sels, ARRAY_SIZE(audio_pll2_bypass_sels), CLK_SET_RATE_PARENT);
-	clks[IMX8MM_VIDEO_PLL1_BYPASS] = imx_clk_mux_flags("video_pll1_bypass", base + 0x28, 4, 1, video_pll1_bypass_sels, ARRAY_SIZE(video_pll1_bypass_sels), CLK_SET_RATE_PARENT);
-	clks[IMX8MM_DRAM_PLL_BYPASS] = imx_clk_mux_flags("dram_pll_bypass", base + 0x50, 4, 1, dram_pll_bypass_sels, ARRAY_SIZE(dram_pll_bypass_sels), CLK_SET_RATE_PARENT);
-	clks[IMX8MM_GPU_PLL_BYPASS] = imx_clk_mux_flags("gpu_pll_bypass", base + 0x64, 4, 1, gpu_pll_bypass_sels, ARRAY_SIZE(gpu_pll_bypass_sels), CLK_SET_RATE_PARENT);
-	clks[IMX8MM_VPU_PLL_BYPASS] = imx_clk_mux_flags("vpu_pll_bypass", base + 0x74, 4, 1, vpu_pll_bypass_sels, ARRAY_SIZE(vpu_pll_bypass_sels), CLK_SET_RATE_PARENT);
-	clks[IMX8MM_ARM_PLL_BYPASS] = imx_clk_mux_flags("arm_pll_bypass", base + 0x84, 4, 1, arm_pll_bypass_sels, ARRAY_SIZE(arm_pll_bypass_sels), CLK_SET_RATE_PARENT);
-	clks[IMX8MM_SYS_PLL1_BYPASS] = imx_clk_mux_flags("sys_pll1_bypass", base + 0x94, 4, 1, sys_pll1_bypass_sels, ARRAY_SIZE(sys_pll1_bypass_sels), CLK_SET_RATE_PARENT);
-	clks[IMX8MM_SYS_PLL2_BYPASS] = imx_clk_mux_flags("sys_pll2_bypass", base + 0x104, 4, 1, sys_pll2_bypass_sels, ARRAY_SIZE(sys_pll2_bypass_sels), CLK_SET_RATE_PARENT);
-	clks[IMX8MM_SYS_PLL3_BYPASS] = imx_clk_mux_flags("sys_pll3_bypass", base + 0x114, 4, 1, sys_pll3_bypass_sels, ARRAY_SIZE(sys_pll3_bypass_sels), CLK_SET_RATE_PARENT);
-
-	/* unbypass all the plls */
-	clk_set_parent(clks[IMX8MM_AUDIO_PLL1_BYPASS], clks[IMX8MM_AUDIO_PLL1]);
-	clk_set_parent(clks[IMX8MM_AUDIO_PLL2_BYPASS], clks[IMX8MM_AUDIO_PLL2]);
-	clk_set_parent(clks[IMX8MM_VIDEO_PLL1_BYPASS], clks[IMX8MM_VIDEO_PLL1]);
-	clk_set_parent(clks[IMX8MM_DRAM_PLL_BYPASS], clks[IMX8MM_DRAM_PLL]);
-	clk_set_parent(clks[IMX8MM_GPU_PLL_BYPASS], clks[IMX8MM_GPU_PLL]);
-	clk_set_parent(clks[IMX8MM_VPU_PLL_BYPASS], clks[IMX8MM_VPU_PLL]);
-	clk_set_parent(clks[IMX8MM_ARM_PLL_BYPASS], clks[IMX8MM_ARM_PLL]);
-	clk_set_parent(clks[IMX8MM_SYS_PLL1_BYPASS], clks[IMX8MM_SYS_PLL1]);
-	clk_set_parent(clks[IMX8MM_SYS_PLL2_BYPASS], clks[IMX8MM_SYS_PLL2]);
-	clk_set_parent(clks[IMX8MM_SYS_PLL3_BYPASS], clks[IMX8MM_SYS_PLL3]);
+	clks[IMX8MM_AUDIO_PLL1_BYPASS] = imx_clk_mux_flags("audio_pll1_bypass", base, 16, 1, audio_pll1_bypass_sels, ARRAY_SIZE(audio_pll1_bypass_sels), CLK_SET_RATE_PARENT);
+	clks[IMX8MM_AUDIO_PLL2_BYPASS] = imx_clk_mux_flags("audio_pll2_bypass", base + 0x14, 16, 1, audio_pll2_bypass_sels, ARRAY_SIZE(audio_pll2_bypass_sels), CLK_SET_RATE_PARENT);
+	clks[IMX8MM_VIDEO_PLL1_BYPASS] = imx_clk_mux_flags("video_pll1_bypass", base + 0x28, 16, 1, video_pll1_bypass_sels, ARRAY_SIZE(video_pll1_bypass_sels), CLK_SET_RATE_PARENT);
+	clks[IMX8MM_DRAM_PLL_BYPASS] = imx_clk_mux_flags("dram_pll_bypass", base + 0x50, 16, 1, dram_pll_bypass_sels, ARRAY_SIZE(dram_pll_bypass_sels), CLK_SET_RATE_PARENT);
+	clks[IMX8MM_GPU_PLL_BYPASS] = imx_clk_mux_flags("gpu_pll_bypass", base + 0x64, 28, 1, gpu_pll_bypass_sels, ARRAY_SIZE(gpu_pll_bypass_sels), CLK_SET_RATE_PARENT);
+	clks[IMX8MM_VPU_PLL_BYPASS] = imx_clk_mux_flags("vpu_pll_bypass", base + 0x74, 28, 1, vpu_pll_bypass_sels, ARRAY_SIZE(vpu_pll_bypass_sels), CLK_SET_RATE_PARENT);
+	clks[IMX8MM_ARM_PLL_BYPASS] = imx_clk_mux_flags("arm_pll_bypass", base + 0x84, 28, 1, arm_pll_bypass_sels, ARRAY_SIZE(arm_pll_bypass_sels), CLK_SET_RATE_PARENT);
+	clks[IMX8MM_SYS_PLL1_BYPASS] = imx_clk_mux_flags("sys_pll1_bypass", base + 0x94, 28, 1, sys_pll1_bypass_sels, ARRAY_SIZE(sys_pll1_bypass_sels), CLK_SET_RATE_PARENT);
+	clks[IMX8MM_SYS_PLL2_BYPASS] = imx_clk_mux_flags("sys_pll2_bypass", base + 0x104, 28, 1, sys_pll2_bypass_sels, ARRAY_SIZE(sys_pll2_bypass_sels), CLK_SET_RATE_PARENT);
+	clks[IMX8MM_SYS_PLL3_BYPASS] = imx_clk_mux_flags("sys_pll3_bypass", base + 0x114, 28, 1, sys_pll3_bypass_sels, ARRAY_SIZE(sys_pll3_bypass_sels), CLK_SET_RATE_PARENT);
 
 	/* PLL out gate */
 	clks[IMX8MM_AUDIO_PLL1_OUT] = imx_clk_gate("audio_pll1_out", "audio_pll1_bypass", base, 13);
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
