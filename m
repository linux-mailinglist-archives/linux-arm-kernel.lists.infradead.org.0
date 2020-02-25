Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B43CA16BB61
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 08:57:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LzqcL2w3RiDRdIyZZh5iSBTn90dPf6BS1+9eWJYUrns=; b=P+LCaTNwmKv4IK
	NkAKqEAzjd1pghU39fEwmNfjJ4wj/FsUAYuLKtPCX7GSfn/ZaOAFkNZqfQt2LpjVWMtj541D7q9w1
	hm9xaGC5kSrBAcBU20MewDH3XCpWpnPcZBNXFp+qI8coArK0DPvSdqJGYu6sjRmLxEj+CtViBVcxu
	lPCBo/JnT+7hRIz02rE5n+zTJtX2uaqyZMhqCxFNPq5E4HcZL4NtG6ldmmk/tHZ5FnttB+PVRPnQu
	ksszwnqla5GaSmB1fiwGIRkpy1utYXJLrKm6yhovslR1jpy9fv/6sfWk8UqFC8nUDiJM49lfHId3V
	0drRTwSyE/qINzXcqSeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6V5K-0000pc-56; Tue, 25 Feb 2020 07:56:54 +0000
Received: from mail-eopbgr40056.outbound.protection.outlook.com ([40.107.4.56]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6V4g-0000R7-2g
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 07:56:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=URm/RvW5u9L16utnEoddLe0bUMjKja5kNiYDMDxNZIPYJVZVgfMT7LKkU92VuUx/xQXcf23MtRPt2W5smbEmamtJpt3GvLh7rZO4AkB5+6uc90ckES4elZi4X6yX7MvftDS5YNpdAQsHSKRrLB8FKSrKiyGBKrRlRrPTSeUFZujK7u8U7a8vpJwYp2Y8i1uv8FOCqjknM1earJGfUPopEbl11zolHRUNFtx7JVAidPYWwOhbPfZ3TnHngRshXJ4TgyWP0QzL5IWhXqi9rEZ0gP+kl7NNxREmp2glahl7yujFAfH6wnGb8rWkNDEROcCYOy3WdaaxP5NWHdcH0ZR0jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MR0Pm/MzFCZu+v8or+PLgGz9NlplyJ75hzyiQWAades=;
 b=LzeKka6lwvFBbA6c/2tWw4nx94DmUQyWfelvEvyV0StuW9nBE9Sw41J0l//coJX8ou937E//T22d+hVdQxGCmj1KllsDIgugwUkgZe6KVHL7MnVXXlHID3EDrs/hLsn+dmr36sSxU/bxNwL/rr3YhSif4EiHa3dI0QpjhMK4+6ovMo2D9IVOU6oSKPnHFL5qSbyCbt1fhkLdrPanWSfUqQyPyD7zoaNFcVJChgOW8XgEj7/rn+5x5iM2mK0tELO/IWnAbc/LWifLko1/Cg9Jj1pYtZvM7bgsSaNEawO/k4dOSQCKIBFfT8un0Ycj1moupcksl1y5gN9uGdNJte2x3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MR0Pm/MzFCZu+v8or+PLgGz9NlplyJ75hzyiQWAades=;
 b=YJeRHEDS/Kj4GvGWEv4pBUSHhqFsJwbISOBeJ+WIj0gB5xGD3vPrkZlSGzOHyFHfJfTKY1m7mphYDwDSEQr1h0SOJDqRKhl/w4XGTPaB2GaukB+YlW8AX2JnpvjwoE1M2T6vjCbDvBAaKrfyUguOqek5NKzRbTMUG3WSv8iBbyw=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4562.eurprd04.prod.outlook.com (52.135.148.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.21; Tue, 25 Feb 2020 07:56:10 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2750.021; Tue, 25 Feb 2020
 07:56:10 +0000
From: peng.fan@nxp.com
To: sboyd@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, abel.vesa@nxp.com
Subject: [PATCH 3/3] clk: imx8mp: Define gates for pll1/2 fixed dividers
Date: Tue, 25 Feb 2020 15:49:19 +0800
Message-Id: <1582616959-933-3-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582616959-933-1-git-send-email-peng.fan@nxp.com>
References: <1582616959-933-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: HK0PR01CA0056.apcprd01.prod.exchangelabs.com
 (2603:1096:203:a6::20) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 HK0PR01CA0056.apcprd01.prod.exchangelabs.com (2603:1096:203:a6::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2750.18 via Frontend
 Transport; Tue, 25 Feb 2020 07:56:06 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 720d2a76-54de-4178-6e15-08d7b9c82d87
X-MS-TrafficTypeDiagnostic: AM0PR04MB4562:|AM0PR04MB4562:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB456231B6E6E05109EB35AE3E88ED0@AM0PR04MB4562.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:576;
X-Forefront-PRVS: 0324C2C0E2
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(346002)(366004)(136003)(39860400002)(199004)(189003)(52116002)(2906002)(6666004)(86362001)(36756003)(478600001)(81156014)(5660300002)(8676002)(4326008)(8936002)(69590400006)(81166006)(9686003)(66556008)(316002)(66476007)(6486002)(186003)(2616005)(956004)(6506007)(16526019)(66946007)(6512007)(26005)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4562;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7tKzVyjccrmV9EItbflUUG4D+Ya8qu0RHgqVUjLZb83pVlKp1SlYNebTjQaNhVfSHAoLFq168GPIhcNx9vIuTAVLxsoYVG70VQxRz26rKGR4Fqspt+muWzAxJmUC+2bqd6o2o5RlL5pitgFMSuGl8EjteqlA1/XnAukSiHT0+lBsSV1bQXT1li61q71lPFAQq3+CsDKTeNy/a1iiUxkap7K2ykbnczcxpl7orkK57uzki1Q8fUt/xfW2GcI4Fy/L7h3p+uWG1UHcJ8uoWpKdyFQmUlduBuSwxQRYUe18wuB4x7PccidRnuh+9i8qwcCCmxVlkMgAuF1a2wUMr3mJWxhcdp15/Q2+KWFPwm+VfoknMX25v8W4TaDCYk0gcSKPIzMQNxU4U6Tq+POqYLH2Jk5pt1uW7b+Dd1nUNPOUFSei0dZXHPBI60QoMZHR8CKcRVWe4dWEZfv/IPWkHEgj3oc94pNJniyhqwQwaZdY2J4QznQeZicDAUElB2HTcGA4xAWyKa4X+5gMu+gtO4NRiW67BzzDF/YmXR1jt5NK1jC6AS3pBfv1blil+p19bhIA
X-MS-Exchange-AntiSpam-MessageData: RONf3vqBr2o8nJlGSOBm9FSv5sE5jIZ37PXDcTSSHsexzhiS4yqpbrXbv2HVE8G9uT3GTLy1Qqqg+pcR9igBhPgnWpdcoc0nE793XpT+xYeejQqSfyWydQdX4ffzE4zwlHtoDXHKSuWSpDxmaLa3qw==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 720d2a76-54de-4178-6e15-08d7b9c82d87
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2020 07:56:10.6111 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5KcE6/aacEQNrMuS9smzlA4Op9PbP+nfh4NzFJ+4OHe7sIBMw619JmxBrVXyrd3ZAeLi2ibp480O/DTU1P+GCg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4562
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_235614_414266_AAD213A6 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.56 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
 kernel@pengutronix.de, leonard.crestez@nxp.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Inspried from
commit e8688fe8df7d ("clk: imx8mn: Define gates for pll1/2 fixed dividers")

On imx8mn there are 9 fixed-factor dividers for SYS_PLL1 and SYS_PLL2
each with their own gate. Only one of these gates (the one "dividing" by
one) is currently defined and it's incorrectly set as the parent of all
the fixed-factor dividers.

Add the other 8 gates to the clock tree between sys_pll1/2_bypass and
the fixed dividers.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-imx8mp.c             | 54 +++++++++++++++++++++-----------
 include/dt-bindings/clock/imx8mp-clock.h | 19 ++++++++++-
 2 files changed, 54 insertions(+), 19 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mp.c b/drivers/clk/imx/clk-imx8mp.c
index 77b79f61aab5..99417b9b0ee7 100644
--- a/drivers/clk/imx/clk-imx8mp.c
+++ b/drivers/clk/imx/clk-imx8mp.c
@@ -498,28 +498,46 @@ static int imx8mp_clocks_probe(struct platform_device *pdev)
 	hws[IMX8MP_GPU_PLL_OUT] = imx_clk_hw_gate("gpu_pll_out", "gpu_pll_bypass", anatop_base + 0x64, 11);
 	hws[IMX8MP_VPU_PLL_OUT] = imx_clk_hw_gate("vpu_pll_out", "vpu_pll_bypass", anatop_base + 0x74, 11);
 	hws[IMX8MP_ARM_PLL_OUT] = imx_clk_hw_gate("arm_pll_out", "arm_pll_bypass", anatop_base + 0x84, 11);
-	hws[IMX8MP_SYS_PLL1_OUT] = imx_clk_hw_gate("sys_pll1_out", "sys_pll1", anatop_base + 0x94, 11);
-	hws[IMX8MP_SYS_PLL2_OUT] = imx_clk_hw_gate("sys_pll2_out", "sys_pll2", anatop_base + 0x104, 11);
 	hws[IMX8MP_SYS_PLL3_OUT] = imx_clk_hw_gate("sys_pll3_out", "sys_pll3_bypass", anatop_base + 0x114, 11);
 
-	hws[IMX8MP_SYS_PLL1_40M] = imx_clk_hw_fixed_factor("sys_pll1_40m", "sys_pll1_out", 1, 20);
-	hws[IMX8MP_SYS_PLL1_80M] = imx_clk_hw_fixed_factor("sys_pll1_80m", "sys_pll1_out", 1, 10);
-	hws[IMX8MP_SYS_PLL1_100M] = imx_clk_hw_fixed_factor("sys_pll1_100m", "sys_pll1_out", 1, 8);
-	hws[IMX8MP_SYS_PLL1_133M] = imx_clk_hw_fixed_factor("sys_pll1_133m", "sys_pll1_out", 1, 6);
-	hws[IMX8MP_SYS_PLL1_160M] = imx_clk_hw_fixed_factor("sys_pll1_160m", "sys_pll1_out", 1, 5);
-	hws[IMX8MP_SYS_PLL1_200M] = imx_clk_hw_fixed_factor("sys_pll1_200m", "sys_pll1_out", 1, 4);
-	hws[IMX8MP_SYS_PLL1_266M] = imx_clk_hw_fixed_factor("sys_pll1_266m", "sys_pll1_out", 1, 3);
-	hws[IMX8MP_SYS_PLL1_400M] = imx_clk_hw_fixed_factor("sys_pll1_400m", "sys_pll1_out", 1, 2);
+	hws[IMX8MP_SYS_PLL1_40M_CG] = imx_clk_hw_gate("sys_pll1_40m_cg", "sys_pll1", anatop_base + 0x94, 27);
+	hws[IMX8MP_SYS_PLL1_80M_CG] = imx_clk_hw_gate("sys_pll1_80m_cg", "sys_pll1", anatop_base + 0x94, 25);
+	hws[IMX8MP_SYS_PLL1_100M_CG] = imx_clk_hw_gate("sys_pll1_100m_cg", "sys_pll1", anatop_base + 0x94, 23);
+	hws[IMX8MP_SYS_PLL1_133M_CG] = imx_clk_hw_gate("sys_pll1_133m_cg", "sys_pll1", anatop_base + 0x94, 21);
+	hws[IMX8MP_SYS_PLL1_160M_CG] = imx_clk_hw_gate("sys_pll1_160m_cg", "sys_pll1", anatop_base + 0x94, 19);
+	hws[IMX8MP_SYS_PLL1_200M_CG] = imx_clk_hw_gate("sys_pll1_200m_cg", "sys_pll1", anatop_base + 0x94, 17);
+	hws[IMX8MP_SYS_PLL1_266M_CG] = imx_clk_hw_gate("sys_pll1_266m_cg", "sys_pll1", anatop_base + 0x94, 15);
+	hws[IMX8MP_SYS_PLL1_400M_CG] = imx_clk_hw_gate("sys_pll1_400m_cg", "sys_pll1", anatop_base + 0x94, 13);
+	hws[IMX8MP_SYS_PLL1_OUT] = imx_clk_hw_gate("sys_pll1_out", "sys_pll1", anatop_base + 0x94, 11);
+
+	hws[IMX8MP_SYS_PLL1_40M] = imx_clk_hw_fixed_factor("sys_pll1_40m", "sys_pll1_40m_cg", 1, 20);
+	hws[IMX8MP_SYS_PLL1_80M] = imx_clk_hw_fixed_factor("sys_pll1_80m", "sys_pll1_80m_cg", 1, 10);
+	hws[IMX8MP_SYS_PLL1_100M] = imx_clk_hw_fixed_factor("sys_pll1_100m", "sys_pll1_100m_cg", 1, 8);
+	hws[IMX8MP_SYS_PLL1_133M] = imx_clk_hw_fixed_factor("sys_pll1_133m", "sys_pll1_133m_cg", 1, 6);
+	hws[IMX8MP_SYS_PLL1_160M] = imx_clk_hw_fixed_factor("sys_pll1_160m", "sys_pll1_160m_cg", 1, 5);
+	hws[IMX8MP_SYS_PLL1_200M] = imx_clk_hw_fixed_factor("sys_pll1_200m", "sys_pll1_200m_cg", 1, 4);
+	hws[IMX8MP_SYS_PLL1_266M] = imx_clk_hw_fixed_factor("sys_pll1_266m", "sys_pll1_266m_cg", 1, 3);
+	hws[IMX8MP_SYS_PLL1_400M] = imx_clk_hw_fixed_factor("sys_pll1_400m", "sys_pll1_400m_cg", 1, 2);
 	hws[IMX8MP_SYS_PLL1_800M] = imx_clk_hw_fixed_factor("sys_pll1_800m", "sys_pll1_out", 1, 1);
 
-	hws[IMX8MP_SYS_PLL2_50M] = imx_clk_hw_fixed_factor("sys_pll2_50m", "sys_pll2_out", 1, 20);
-	hws[IMX8MP_SYS_PLL2_100M] = imx_clk_hw_fixed_factor("sys_pll2_100m", "sys_pll2_out", 1, 10);
-	hws[IMX8MP_SYS_PLL2_125M] = imx_clk_hw_fixed_factor("sys_pll2_125m", "sys_pll2_out", 1, 8);
-	hws[IMX8MP_SYS_PLL2_166M] = imx_clk_hw_fixed_factor("sys_pll2_166m", "sys_pll2_out", 1, 6);
-	hws[IMX8MP_SYS_PLL2_200M] = imx_clk_hw_fixed_factor("sys_pll2_200m", "sys_pll2_out", 1, 5);
-	hws[IMX8MP_SYS_PLL2_250M] = imx_clk_hw_fixed_factor("sys_pll2_250m", "sys_pll2_out", 1, 4);
-	hws[IMX8MP_SYS_PLL2_333M] = imx_clk_hw_fixed_factor("sys_pll2_333m", "sys_pll2_out", 1, 3);
-	hws[IMX8MP_SYS_PLL2_500M] = imx_clk_hw_fixed_factor("sys_pll2_500m", "sys_pll2_out", 1, 2);
+	hws[IMX8MP_SYS_PLL2_50M_CG] = imx_clk_hw_gate("sys_pll2_50m_cg", "sys_pll2", anatop_base + 0x104, 27);
+	hws[IMX8MP_SYS_PLL2_100M_CG] = imx_clk_hw_gate("sys_pll2_100m_cg", "sys_pll2", anatop_base + 0x104, 25);
+	hws[IMX8MP_SYS_PLL2_125M_CG] = imx_clk_hw_gate("sys_pll2_125m_cg", "sys_pll2", anatop_base + 0x104, 23);
+	hws[IMX8MP_SYS_PLL2_166M_CG] = imx_clk_hw_gate("sys_pll2_166m_cg", "sys_pll2", anatop_base + 0x104, 21);
+	hws[IMX8MP_SYS_PLL2_200M_CG] = imx_clk_hw_gate("sys_pll2_200m_cg", "sys_pll2", anatop_base + 0x104, 19);
+	hws[IMX8MP_SYS_PLL2_250M_CG] = imx_clk_hw_gate("sys_pll2_250m_cg", "sys_pll2", anatop_base + 0x104, 17);
+	hws[IMX8MP_SYS_PLL2_333M_CG] = imx_clk_hw_gate("sys_pll2_333m_cg", "sys_pll2", anatop_base + 0x104, 15);
+	hws[IMX8MP_SYS_PLL2_500M_CG] = imx_clk_hw_gate("sys_pll2_500m_cg", "sys_pll2", anatop_base + 0x104, 13);
+	hws[IMX8MP_SYS_PLL2_OUT] = imx_clk_hw_gate("sys_pll2_out", "sys_pll2", anatop_base + 0x104, 11);
+
+	hws[IMX8MP_SYS_PLL2_50M] = imx_clk_hw_fixed_factor("sys_pll2_50m", "sys_pll2_50m_cg", 1, 20);
+	hws[IMX8MP_SYS_PLL2_100M] = imx_clk_hw_fixed_factor("sys_pll2_100m", "sys_pll2_100m_cg", 1, 10);
+	hws[IMX8MP_SYS_PLL2_125M] = imx_clk_hw_fixed_factor("sys_pll2_125m", "sys_pll2_125m_cg", 1, 8);
+	hws[IMX8MP_SYS_PLL2_166M] = imx_clk_hw_fixed_factor("sys_pll2_166m", "sys_pll2_166m_cg", 1, 6);
+	hws[IMX8MP_SYS_PLL2_200M] = imx_clk_hw_fixed_factor("sys_pll2_200m", "sys_pll2_200m_cg", 1, 5);
+	hws[IMX8MP_SYS_PLL2_250M] = imx_clk_hw_fixed_factor("sys_pll2_250m", "sys_pll2_250m_cg", 1, 4);
+	hws[IMX8MP_SYS_PLL2_333M] = imx_clk_hw_fixed_factor("sys_pll2_333m", "sys_pll2_333m_cg", 1, 3);
+	hws[IMX8MP_SYS_PLL2_500M] = imx_clk_hw_fixed_factor("sys_pll2_500m", "sys_pll2_500m_cg", 1, 2);
 	hws[IMX8MP_SYS_PLL2_1000M] = imx_clk_hw_fixed_factor("sys_pll2_1000m", "sys_pll2_out", 1, 1);
 
 	hws[IMX8MP_CLK_A53_SRC] = imx_clk_hw_mux2("arm_a53_src", ccm_base + 0x8000, 24, 3, imx8mp_a53_sels, ARRAY_SIZE(imx8mp_a53_sels));
diff --git a/include/dt-bindings/clock/imx8mp-clock.h b/include/dt-bindings/clock/imx8mp-clock.h
index 47ab082238b4..46c69cd66c62 100644
--- a/include/dt-bindings/clock/imx8mp-clock.h
+++ b/include/dt-bindings/clock/imx8mp-clock.h
@@ -296,6 +296,23 @@
 #define IMX8MP_CLK_ARM				287
 #define IMX8MP_CLK_A53_CORE			288
 
-#define IMX8MP_CLK_END				289
+#define IMX8MP_SYS_PLL1_40M_CG			289
+#define IMX8MP_SYS_PLL1_80M_CG			290
+#define IMX8MP_SYS_PLL1_100M_CG			291
+#define IMX8MP_SYS_PLL1_133M_CG			292
+#define IMX8MP_SYS_PLL1_160M_CG			293
+#define IMX8MP_SYS_PLL1_200M_CG			294
+#define IMX8MP_SYS_PLL1_266M_CG			295
+#define IMX8MP_SYS_PLL1_400M_CG			296
+#define IMX8MP_SYS_PLL2_50M_CG			297
+#define IMX8MP_SYS_PLL2_100M_CG			298
+#define IMX8MP_SYS_PLL2_125M_CG			299
+#define IMX8MP_SYS_PLL2_166M_CG			300
+#define IMX8MP_SYS_PLL2_200M_CG			301
+#define IMX8MP_SYS_PLL2_250M_CG			302
+#define IMX8MP_SYS_PLL2_333M_CG			303
+#define IMX8MP_SYS_PLL2_500M_CG			304
+
+#define IMX8MP_CLK_END				305
 
 #endif
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
