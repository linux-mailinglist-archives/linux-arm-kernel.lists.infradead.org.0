Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BF301C8229
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 08:08:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zbtm9i6YUUBzldi/dk7rl+ufZphsZ5WmJIxsObTbHGw=; b=UXLmqcqLtageKe
	WPv2KM4he2bCdePwmUrULqM8mkcyGvtDYsRGMkWH3QhXg/ZrjKIWTse9ohgDeRUit2y+moNRQfzJw
	MWu8muitzrioKzJI9FwlI4FBjJy0/gBn7WbCYxuY9pkAVfwMzFDu0SmIrpbqUQ0BvkFggmnAMy3+B
	baS9FEV90hZ5roJOAn9NeJqphV4zcm1z5K8mPst3oaXifnd1lCHdgrI0LLng4IMQBM47q4HeHwWoc
	vwUkMO8gAdDg4AoINnSJ0Un24dCnRa7AcvxY8R4lrsnbGnrTd+xQ6Mifshk8tUnd0n/wjLfW+gUw+
	/HlxnZaFbPxdo5Yi6zZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWZhN-0006M2-KT; Thu, 07 May 2020 06:07:57 +0000
Received: from mail-eopbgr70073.outbound.protection.outlook.com ([40.107.7.73]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWZfY-0004pg-Tr
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 06:06:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pj1Loinvuxi9UwXiM1I2ia0LrkIN31bTkIIX7DA+TdoKfAek3/CazWaQy1cEWnYZ1j18m3BjrJB53eWPUS6wp20aruvrjwHKENzWg6FVXgsoRPfDNkAfo2E8EEMc185DZLq4YZ5VTy/ojh0SWW8LbwTJbi8/K80alrfPrvYNBOJWirawm+6o0sKfOgfrotkp2QRjVqdGazIdqLwi6RHwn6XlgwoWStPWJTLR6xPS3pIcv0YrF07t5Yj6fQnCyPnl/R9HfbIASP717l0SW8Ihd3+827bwzP0exyaf6A5T6M4LJ8C/Z8alfdKwT3DoTZnGF15KPWRDOCDZmBfQAOLXMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V8Egvlz0zwWwlkbfqTD0jSGOS09HnvpPeoSng+Y6EE4=;
 b=Nptsg/eMnobf33brrk/qlpBh6dNvJfu8eS+/CctmmrNTaSH5YXx+RdM38yiRCUef3hLUCwwBW/uV49YE7ETvvQ1vW8WbIDuDoNs8IEB1yKn9CFdxq5lirVpikT4XvmIyZGlm2GlEKGhQnqdsGq39OKhSyPDaBqrnXLkTyq02QXjhWAcIbEtP/HjNK5v4Pbt4xo4q+TumKe+yuaiTExLqwjkIyxizeRggsTc/JbaYRLfBV+H+23ZLw67Uw2uydPl17f7HegjitQC01OvHt4B577/fhPRq1A92YQTEjYI2oxiPmtLGcEnS31WtEQ1SxNCTXIJOpMYyrJtexw0Wo4fZbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V8Egvlz0zwWwlkbfqTD0jSGOS09HnvpPeoSng+Y6EE4=;
 b=U+L5GQkh/hO+Lbwx7m4UDd6hbnDwgWTabUKRiDYCfLFDj6WBG2TelHZSBFzteb3XRSFUMuaTHaZnmCSiYheVX8y87TvLSs3SE+EFG4Je2Bk8x2pbQvaff+6uc8co4130WftODV+HvREw+v+aOaobYxK+DtBH9CtbGkawwN/KTLE=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2710.eurprd04.prod.outlook.com (2603:10a6:4:95::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.19; Thu, 7 May
 2020 06:06:01 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.2979.028; Thu, 7 May 2020
 06:06:01 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, leonard.crestez@nxp.com,
 abel.vesa@nxp.com, aisheng.dong@nxp.com
Subject: [PATCH V3 06/10] clk: imx8m: migrate A53 clk root to use composite
 core
Date: Thu,  7 May 2020 13:56:15 +0800
Message-Id: <1588830979-11586-7-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588830979-11586-1-git-send-email-peng.fan@nxp.com>
References: <1588830979-11586-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR01CA0147.apcprd01.prod.exchangelabs.com
 (2603:1096:4:8f::27) To DB6PR0402MB2760.eurprd04.prod.outlook.com
 (2603:10a6:4:a1::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR01CA0147.apcprd01.prod.exchangelabs.com (2603:1096:4:8f::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2979.28 via Frontend
 Transport; Thu, 7 May 2020 06:05:57 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 2fa1602f-f123-4dba-16da-08d7f24cb812
X-MS-TrafficTypeDiagnostic: DB6PR0402MB2710:|DB6PR0402MB2710:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0402MB27108A43255AF76C62C70C5A88A50@DB6PR0402MB2710.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:398;
X-Forefront-PRVS: 03965EFC76
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9Njye2IHfM68RVjUiUTnh6ufI7kbJhsv5P3TMpHDHpGYelAxsRYnzRirJ7niqzTyQhvWrcOV/4MrRfaSgA653Epc7UfaPGUKp93knfPgVa320gT01KfATnJ+f+cHHLsqUmGZ5XdujiC0P/Xmu6fLMhPJYp7mDCBvLDSi4Q9akao492wkgT+bg0su+gc+d8IiYBqiexZX25XDJwRUlmAd3cpMiCxPONsZOUB2DL6DxGsdct6wp1xPSOnxLAE18W4DQ0nMQmIZqE9L6Fr+6Stswe646lKwSKRSrSFmuMOqT6vFyQryOscu21P6UNsOBVULgOto5hglCvAcFjA6keQ18yQ3wcQRPzIrC60MY0JBCd6lavBy3LDXBdsPkuypEpaJIzV3zJ0OcZsmD7qqAF9WS9SOa1dRk3/bs5hNdrFjlpc1ZsBNhjIEDZ1JysJZWe+zdmLk6SNhUbH4iJEHJx/cbiCp/qX6yVrTu/N1RctsLKhSqZvv3aGvcHFxSDSUJe8OoOh6DnVx4ImJa7Vh+j9E8aax8Qj/PTiQ1giathQNM6unsU44DbjTA4sXhDbVB0qwK2dCjVeLyc4l1PJAh6Vc4w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(376002)(346002)(136003)(39860400002)(396003)(33430700001)(316002)(33440700001)(478600001)(2616005)(16526019)(69590400007)(6666004)(4326008)(66476007)(66946007)(86362001)(2906002)(66556008)(956004)(6486002)(52116002)(36756003)(8676002)(26005)(6506007)(8936002)(5660300002)(186003)(6512007)(9686003)(83320400001)(83280400001)(83300400001)(83310400001)(83290400001)(32563001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: 9navhaoSL18UZ3wooETA3NEuWwRGvR6TJ1UTJOjuFuyWko2dP7lPHLgGeVvUqX5rh6kXAuedSVOCq6XNRdxal6VNMBB/t/Auc/mZqCeL4RZn6zmiq2NbHEUF/ZCJUWAXKNkGep24l/bRCxuZMMzw5hUMdsnTVIboAjBl/MKit11F0WcPstW/qblU9loH6IwG43AnoQBbebNZdVDztHH26lhIRY594mDEi4cJ6Z2/vsGJ6xX891gf9KCAqwXrgQRVEtGASDya5kWDQbo8YMQ8KIqW4hjwWY9gnDC/URCIIpN98DLMUOjhVNd2LJ39e+UIRzMZ9/CX3ySHUmpNun91nfaTk4Cm8+7AGAWjfPAUNHLAVYNe0kRks63nLkavXdze/FJ5ikahZqsImObyn9xEo1uZGQQGpYAqqpE+Ga2xfvQMXfLzYRJfgnkJzUnYHtsd5+3WCmkxY/NgApJbAFEEjgYvhNq6uLv9lvu/O1xV6P+E0e12VxY4cJDsnCTlt79L0Dz5AryMAaFVGoPM7kYgordOtp66L7OJR8E/LWtQR7o788Vr8lxQh9trSSAqYrjMTNjNEDKKxE1ZIf5X0w/Dz//pYHFjfqH9PFGmrhNXvnLwg1xFzuJHpuqaDvM5AWZ5cU7dvW7YfN5Yw2Z1XdEVNd+40TjZAXRv7euzdvsq/bT/XB9rOFDgG2rTORCMRbD/KwJaFsjtxfCELuQznKl0fOkCJsyhECzaYx/Zu/eUA0Cu5Yl+HPY4dDL1UECzIGh6XpWnUgFRxzAI9NdOKz92wUo5bzBpI4c9Z/zv8MsejLo=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2fa1602f-f123-4dba-16da-08d7f24cb812
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2020 06:06:01.8083 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RYlfEOP96awtvnzGCebjin5uqrbI5YSgiSq3th6kwP+5xMz8Njgg+IjXwMCApLWWPgBzONCUY54mX21Mkeui5Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2710
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_230605_000070_37D6DC6D 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.7.73 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.73 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Peng Fan <peng.fan@nxp.com>,
 Anson.Huang@nxp.com, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Migrate A53 clk root to use composite core clk type. It
will simplify code and make it easy to use composite
specific mux operation.

Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-imx8mm.c | 6 +++---
 drivers/clk/imx/clk-imx8mn.c | 6 +++---
 drivers/clk/imx/clk-imx8mq.c | 6 +++---
 3 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
index 5435042a06e3..12443e06f329 100644
--- a/drivers/clk/imx/clk-imx8mm.c
+++ b/drivers/clk/imx/clk-imx8mm.c
@@ -416,9 +416,9 @@ static int imx8mm_clocks_probe(struct platform_device *pdev)
 		return PTR_ERR(base);
 
 	/* Core Slice */
-	hws[IMX8MM_CLK_A53_SRC] = imx_clk_hw_mux2("arm_a53_src", base + 0x8000, 24, 3, imx8mm_a53_sels, ARRAY_SIZE(imx8mm_a53_sels));
-	hws[IMX8MM_CLK_A53_CG] = imx_clk_hw_gate3("arm_a53_cg", "arm_a53_src", base + 0x8000, 28);
-	hws[IMX8MM_CLK_A53_DIV] = imx_clk_hw_divider2("arm_a53_div", "arm_a53_cg", base + 0x8000, 0, 3);
+	hws[IMX8MM_CLK_A53_DIV] = imx8m_clk_hw_composite_core("arm_a53_div", imx8mm_a53_sels, base + 0x8000);
+	hws[IMX8MM_CLK_A53_CG] = hws[IMX8MM_CLK_A53_DIV];
+	hws[IMX8MM_CLK_A53_SRC] = hws[IMX8MM_CLK_A53_DIV];
 
 	hws[IMX8MM_CLK_M4_CORE] = imx8m_clk_hw_composite_core("arm_m4_core", imx8mm_m4_sels, base + 0x8080);
 	hws[IMX8MM_CLK_VPU_CORE] = imx8m_clk_hw_composite_core("vpu_core", imx8mm_vpu_sels, base + 0x8100);
diff --git a/drivers/clk/imx/clk-imx8mn.c b/drivers/clk/imx/clk-imx8mn.c
index 6cac6ca03e12..bd3759b4afd0 100644
--- a/drivers/clk/imx/clk-imx8mn.c
+++ b/drivers/clk/imx/clk-imx8mn.c
@@ -413,9 +413,9 @@ static int imx8mn_clocks_probe(struct platform_device *pdev)
 	}
 
 	/* CORE */
-	hws[IMX8MN_CLK_A53_SRC] = imx_clk_hw_mux2("arm_a53_src", base + 0x8000, 24, 3, imx8mn_a53_sels, ARRAY_SIZE(imx8mn_a53_sels));
-	hws[IMX8MN_CLK_A53_CG] = imx_clk_hw_gate3("arm_a53_cg", "arm_a53_src", base + 0x8000, 28);
-	hws[IMX8MN_CLK_A53_DIV] = imx_clk_hw_divider2("arm_a53_div", "arm_a53_cg", base + 0x8000, 0, 3);
+	hws[IMX8MN_CLK_A53_DIV] = imx8m_clk_hw_composite_core("arm_a53_div", imx8mn_a53_sels, base + 0x8000);
+	hws[IMX8MN_CLK_A53_SRC] = hws[IMX8MN_CLK_A53_DIV];
+	hws[IMX8MN_CLK_A53_CG] = hws[IMX8MN_CLK_A53_DIV];
 
 	hws[IMX8MN_CLK_GPU_CORE] = imx8m_clk_hw_composite_core("gpu_core", imx8mn_gpu_core_sels, base + 0x8180);
 	hws[IMX8MN_CLK_GPU_SHADER] = imx8m_clk_hw_composite_core("gpu_shader", imx8mn_gpu_shader_sels, base + 0x8200);
diff --git a/drivers/clk/imx/clk-imx8mq.c b/drivers/clk/imx/clk-imx8mq.c
index 201c7bbb201f..91309ff65441 100644
--- a/drivers/clk/imx/clk-imx8mq.c
+++ b/drivers/clk/imx/clk-imx8mq.c
@@ -405,9 +405,9 @@ static int imx8mq_clocks_probe(struct platform_device *pdev)
 		return PTR_ERR(base);
 
 	/* CORE */
-	hws[IMX8MQ_CLK_A53_SRC] = imx_clk_hw_mux2("arm_a53_src", base + 0x8000, 24, 3, imx8mq_a53_sels, ARRAY_SIZE(imx8mq_a53_sels));
-	hws[IMX8MQ_CLK_A53_CG] = imx_clk_hw_gate3_flags("arm_a53_cg", "arm_a53_src", base + 0x8000, 28, CLK_IS_CRITICAL);
-	hws[IMX8MQ_CLK_A53_DIV] = imx_clk_hw_divider2("arm_a53_div", "arm_a53_cg", base + 0x8000, 0, 3);
+	hws[IMX8MQ_CLK_A53_DIV] = imx8m_clk_hw_composite_core("arm_a53_div", imx8mq_a53_sels, base + 0x8000);
+	hws[IMX8MQ_CLK_A53_CG] = hws[IMX8MQ_CLK_A53_DIV];
+	hws[IMX8MQ_CLK_A53_SRC] = hws[IMX8MQ_CLK_A53_DIV];
 
 	hws[IMX8MQ_CLK_M4_CORE] = imx8m_clk_hw_composite_core("arm_m4_core", imx8mq_arm_m4_sels, base + 0x8080);
 	hws[IMX8MQ_CLK_VPU_CORE] = imx8m_clk_hw_composite_core("vpu_core", imx8mq_vpu_sels, base + 0x8100);
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
