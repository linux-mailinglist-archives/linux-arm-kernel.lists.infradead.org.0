Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E45C3631B4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 09:18:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fopyqe1KnSq5Yc8p5iKRUGqcYdkPmE6aLvRTsAJojHo=; b=RtZB6bhjZUfzQx
	TXgtjbbkSvPAPFVrseH5ykpr74jfyEMcL2ABEglyueM9fDoWgdkXvLiWMUAAwdKTIaJsG625disa+
	Cq02Rx2xZL3nCcyqE4urmL5Z996G3Ru90Jhvx3JAd8n2xR9WGQysWjpHV3DpFfBl+Pvk3AoTKz6mn
	d5Ku/i5NaPj1/hfWYEAJ4YNpInt99C3i5L6EHUOy5ZpjsUmImtfmDMD6aPMkKG2673ARvKhXbb2Gv
	LmA7mMQPr6Ol+gL9UQiC0zrNpeYnEe+bzlA1XmjxfU0F+wKnowe5iDANdL5uEh5eo2IgrTLg9imi/
	yL9nwpvp83O4FYefSe7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkkOY-00077x-68; Tue, 09 Jul 2019 07:18:34 +0000
Received: from mail-ve1eur02on060a.outbound.protection.outlook.com
 ([2a01:111:f400:fe06::60a]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkkO5-0006x7-Bw
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 07:18:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cgc0G8QrBlss85FuBtnb8WhTAc34pLGCv84LZclZDUg=;
 b=r/ezxFTHKjR9SqI/K6me6Pt8HIWlH+9ypBNxYyFFIrMLF+IXZHEeZkMAQlFWB8HYWmA38MrOJK3Qml0IFD7lq83U9O4UAzTdGeInmletI4oqyQOvKVBo0DumJzXNGWEj4/zI6T+V4euU1KJ2nD4rgLOP5/jc3Vj/F9z5kM6RZ10=
Received: from AM6PR04MB4936.eurprd04.prod.outlook.com (20.177.33.203) by
 AM6PR04MB5880.eurprd04.prod.outlook.com (20.179.3.97) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.17; Tue, 9 Jul 2019 07:18:01 +0000
Received: from AM6PR04MB4936.eurprd04.prod.outlook.com
 ([fe80::cd8e:f990:731d:a5b2]) by AM6PR04MB4936.eurprd04.prod.outlook.com
 ([fe80::cd8e:f990:731d:a5b2%7]) with mapi id 15.20.2052.020; Tue, 9 Jul 2019
 07:18:01 +0000
From: Fancy Fang <chen.fang@nxp.com>
To: "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, Jacky Bai
 <ping.bai@nxp.com>, "festevam@gmail.com" <festevam@gmail.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>
Subject: [PATCH 2/2] clk: imx8mm: rename 'share_count_dcss' to
 'share_count_disp'
Thread-Topic: [PATCH 2/2] clk: imx8mm: rename 'share_count_dcss' to
 'share_count_disp'
Thread-Index: AQHVNiZx3m/xWD7vcEanwl+4j1yKZQ==
Date: Tue, 9 Jul 2019 07:18:01 +0000
Message-ID: <20190709071942.18109-2-chen.fang@nxp.com>
References: <20190709071942.18109-1-chen.fang@nxp.com>
In-Reply-To: <20190709071942.18109-1-chen.fang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-clientproxiedby: HK0P153CA0007.APCP153.PROD.OUTLOOK.COM
 (2603:1096:203:18::19) To AM6PR04MB4936.eurprd04.prod.outlook.com
 (2603:10a6:20b:7::11)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=chen.fang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 14000bb7-ffe9-4ead-53e7-08d7043d933e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR04MB5880; 
x-ms-traffictypediagnostic: AM6PR04MB5880:
x-microsoft-antispam-prvs: <AM6PR04MB588037609C11E0236B75EE49F3F10@AM6PR04MB5880.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1850;
x-forefront-prvs: 0093C80C01
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(979002)(4636009)(136003)(396003)(39860400002)(376002)(346002)(366004)(199004)(189003)(6506007)(14454004)(2501003)(486006)(476003)(2616005)(2201001)(26005)(52116002)(110136005)(54906003)(36756003)(86362001)(5660300002)(3846002)(478600001)(4326008)(66066001)(186003)(7736002)(305945005)(102836004)(81166006)(25786009)(1076003)(6116002)(71190400001)(53936002)(71200400001)(50226002)(6486002)(66476007)(66446008)(2906002)(66946007)(73956011)(8936002)(64756008)(66556008)(68736007)(316002)(11346002)(99286004)(446003)(76176011)(256004)(386003)(6436002)(81156014)(6512007)(8676002)(32563001)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB5880;
 H:AM6PR04MB4936.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: z93/b1lKyZ2iCw9jccRgqfOEXelVDbvN4ySRm9vKLbAAWMSP80W6qAJ2msnar/wAwXIQ6lpv47fVwIAjG+l2V1iQxC0XdCcrUPtWMGBq3HVJS/ZIeYV19q3JUp6WFYmndSe8d55jbUbVSLu7nUwQ1kfJiS+vVy+8oE8eapktLR1uK+/7Gis+PuSWIV5ca6j0ASeOUtOt2hVQJUwKA4+P6BmObOVcK8ulNObtvX7SA1tAa9q0zbLeFvyaVpHgpi+PADt2CZ6+i24wH4oXVq7B9/YrMwXPa1GS2/1NJl8x5nRzUNYrrH3rHwTgXoeosMkHBoxdEa4wMhanCVfC+clIA+4l1aRJlFIWR8fJBw1XJFHG2P8FWUQAvhDqyqqw2cJkWicYsJoUp5wsJ4ofgNtAihGPsnLkEtb8DreGSi1mmFo=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 14000bb7-ffe9-4ead-53e7-08d7043d933e
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jul 2019 07:18:01.2832 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: chen.fang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5880
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_001805_410449_CBCC2810 
X-CRM114-Status: GOOD (  12.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe06:0:0:0:60a listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dl-linux-imx <linux-imx@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rename 'share_count_dcss' to 'share_count_disp', since the
DCSS module does not exist on imx8mm platform. So rename it
to avoid any unnecessary confusion.

Signed-off-by: Fancy Fang <chen.fang@nxp.com>
---
 drivers/clk/imx/clk-imx8mm.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
index 42f1227a4952..42cb33edf8e5 100644
--- a/drivers/clk/imx/clk-imx8mm.c
+++ b/drivers/clk/imx/clk-imx8mm.c
@@ -22,7 +22,7 @@ static u32 share_count_sai3;
 static u32 share_count_sai4;
 static u32 share_count_sai5;
 static u32 share_count_sai6;
-static u32 share_count_dcss;
+static u32 share_count_disp;
 static u32 share_count_pdm;
 static u32 share_count_nand;
 
@@ -644,10 +644,10 @@ static int __init imx8mm_clocks_init(struct device_node *ccm_node)
 	clks[IMX8MM_CLK_VPU_G2_ROOT] = imx_clk_gate4("vpu_g2_root_clk", "vpu_g2", base + 0x45a0, 0);
 	clks[IMX8MM_CLK_PDM_ROOT] = imx_clk_gate2_shared2("pdm_root_clk", "pdm", base + 0x45b0, 0, &share_count_pdm);
 	clks[IMX8MM_CLK_PDM_IPG]  = imx_clk_gate2_shared2("pdm_ipg_clk", "ipg_audio_root", base + 0x45b0, 0, &share_count_pdm);
-	clks[IMX8MM_CLK_DISP_ROOT] = imx_clk_gate2_shared2("disp_root_clk", "disp_dc8000", base + 0x45d0, 0, &share_count_dcss);
-	clks[IMX8MM_CLK_DISP_AXI_ROOT]  = imx_clk_gate2_shared2("disp_axi_root_clk", "disp_axi", base + 0x45d0, 0, &share_count_dcss);
-	clks[IMX8MM_CLK_DISP_APB_ROOT]  = imx_clk_gate2_shared2("disp_apb_root_clk", "disp_apb", base + 0x45d0, 0, &share_count_dcss);
-	clks[IMX8MM_CLK_DISP_RTRM_ROOT] = imx_clk_gate2_shared2("disp_rtrm_root_clk", "disp_rtrm", base + 0x45d0, 0, &share_count_dcss);
+	clks[IMX8MM_CLK_DISP_ROOT] = imx_clk_gate2_shared2("disp_root_clk", "disp_dc8000", base + 0x45d0, 0, &share_count_disp);
+	clks[IMX8MM_CLK_DISP_AXI_ROOT]  = imx_clk_gate2_shared2("disp_axi_root_clk", "disp_axi", base + 0x45d0, 0, &share_count_disp);
+	clks[IMX8MM_CLK_DISP_APB_ROOT]  = imx_clk_gate2_shared2("disp_apb_root_clk", "disp_apb", base + 0x45d0, 0, &share_count_disp);
+	clks[IMX8MM_CLK_DISP_RTRM_ROOT] = imx_clk_gate2_shared2("disp_rtrm_root_clk", "disp_rtrm", base + 0x45d0, 0, &share_count_disp);
 	clks[IMX8MM_CLK_USDHC3_ROOT] = imx_clk_gate4("usdhc3_root_clk", "usdhc3", base + 0x45e0, 0);
 	clks[IMX8MM_CLK_TMU_ROOT] = imx_clk_gate4("tmu_root_clk", "ipg_root", base + 0x4620, 0);
 	clks[IMX8MM_CLK_VPU_DEC_ROOT] = imx_clk_gate4("vpu_dec_root_clk", "vpu_bus", base + 0x4630, 0);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
