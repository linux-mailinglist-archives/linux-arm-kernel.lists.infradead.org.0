Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D85C1C8226
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 08:07:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NDOmj2HnKLWW5G7LP53ZivTB2Crs8pArFZ0NX+Od6Ts=; b=ZFGICXp46yX4WK
	zz7mYO0OOsflHHFM8tu+XR9rSa11Mwg0NzEiv6/P/nYqGs5DDNmHi1EKimjbho2uvi3dcj3n4pkrq
	Zk4d86SnrF/JxC+P4O6SIXHUmS9SPiQlzgOtVBMS28V1plE9hdOFAgI1xPW4/Hmd73QAof82hRiJl
	ALNg/cWz7TXcaROnVsbDV98gB3hKlAnHaEp+54ambn/jaw9MYABGp5Z1w7WjkDcbDAHNypAcYbIVF
	lMJkyK0apbG8FC6sRKiYvQs8H05jIqTP9fI6dxTJA/DNt8xBWIGi2OjUEhq0UJ9ZbJskNYEfhlFuJ
	rZmTh7HwDaen5ClPh2NQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWZgf-0005iF-Vr; Thu, 07 May 2020 06:07:13 +0000
Received: from mail-eopbgr140078.outbound.protection.outlook.com
 ([40.107.14.78] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWZfP-0004gi-W5
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 06:05:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fszBvOJ82y+1C0XgS4+yhfWFkAqxQ1XsGc20N0YIDtV+dZL0+dgjyYmDrKsuWNt0NskQcWIptjBsBrCsLTRqTTMYQOx/ckh7u0k6BJyuGlCTIE/rF59gRJs8gN7cYB0a04hdNxh74nUPHoMUWMPlJ/MlQ2saS6mXcJ/S1xm7jO0fVOYDf2YEVZqt5VrX3UPXkE7Ltv9Y2tX2TSTvi8af6u/7CwV15H1xKhzrFgixB7kpIjUEzwuDeWxKxF6/TWJyKXc4nxPJRoTe1o0OPrRlxUl2Mc9f8YXEk1DG6M0ZHAx7vVgfxEU+fzMxV4BLRPEX/e00Oaz5lMBwnQG9BJ7hzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ndMRNcMEQMMx5GlzrCaeasDAaHZwaZwSXWDu40xXaHE=;
 b=UCN+Par6KIh/4hyc909t96PVw8byh1k3GW9R7tze+ByMNf3KqqjoqmocEb8HcDQx8HjFvqrm4YSBf8VOMYmW8LNOweG4Az1sgSPXYwhs+SWmET7F9DbUuLl+nd9xm5YFaJMGaRsrGgrYyRZiUfdl9amV3HnqTk2l/Ds6+qDMYKQmATzr6MLSfR7ZTsMATQ+lvJrKnpDAyHHmKeRaqFIYGrDPHLzOGYpyZWf0buooyycTVVSRSRE8V4h8LYF9wXFTBbxAlUFXYHX9Amgg+vAHhtmQr+tMwzdb2+HGP14KeDpz4s+hHZj6WhSodlnAnVjHAN1oY2nmRnZgf/c9W4e+ug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ndMRNcMEQMMx5GlzrCaeasDAaHZwaZwSXWDu40xXaHE=;
 b=Qb2TRRsA2kdo5mKmG10i4nFgIea1AwyjCVJywzot7IHcoaO1pbiyR6XN96SIKw98XlrIYhKGpm7D+hlBSKWUIoNoNSYqP2SRf8E0XXXM/po779TJEN5uouQbhlnlclI9ykqLMM/LVXWDc/aum0+Y0tPK/odoqBfGnPjtX+kkoMo=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2710.eurprd04.prod.outlook.com (2603:10a6:4:95::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.19; Thu, 7 May
 2020 06:05:53 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.2979.028; Thu, 7 May 2020
 06:05:53 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, leonard.crestez@nxp.com,
 abel.vesa@nxp.com, aisheng.dong@nxp.com
Subject: [PATCH V3 04/10] clk: imx8mp: Define gates for pll1/2 fixed dividers
Date: Thu,  7 May 2020 13:56:13 +0800
Message-Id: <1588830979-11586-5-git-send-email-peng.fan@nxp.com>
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
 Transport; Thu, 7 May 2020 06:05:48 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 45b68f1f-b66d-4498-3431-08d7f24cb2bd
X-MS-TrafficTypeDiagnostic: DB6PR0402MB2710:|DB6PR0402MB2710:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0402MB2710B718856117B2ABF8203588A50@DB6PR0402MB2710.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:576;
X-Forefront-PRVS: 03965EFC76
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: D0PLwWWrgK7Eizc667Ot/jbg6F0AIehNllUsmiXTzeF3X+V8GuR95qPWQJbSOe5c3/+13L8E2sOfMtAXk1i4VJ55mJFBbcDC2S4nc73Lj3I/8YIq2Ue53aB5auvJx2Y5GzZ1DiwVW54D7wcGQljRv6OXreZ7dQplSTyFH3V7izaVjAbHXkOjQ1regFuk06lsiz+DqO/xk3lVO5/IS9S+FNoqaUFi+tCqHWi/pQPqxfks5AC+BN/j+0g7RSkfgAMzVmzMrxDGer7IoOeShOrHTB8Pk/2za/pzwHRl/UInDhsD6iOFxuF1i4isSH28IdPdXA4se9xZF0/4aZno4X1QLQGXYaNVrcC4MFy6RhhfJbsqHe8bFmxhk6CQxY2iVm7ZBWtLQdPJjIsn/IrWyZi4Vdp3PaUCGOxyl/W9RSLhIk8eKLwHEOs8kobTQymGD7DElSTO5TfC+plAhjaM3UcNTRAyFLY2S6daGRcQA/l6tcYhXGc5Z+GMAbDajuWrPHBS9/2y1l0P7A/USdxUbtL+tHIuepV3ikZXpDLJx31G/e71wN5eh5kWAayJxFPX48i6uhEv08KExODuW1kNCcpbMg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(376002)(346002)(136003)(39860400002)(396003)(33430700001)(316002)(33440700001)(478600001)(2616005)(16526019)(69590400007)(6666004)(4326008)(66476007)(66946007)(86362001)(2906002)(66556008)(956004)(6486002)(52116002)(36756003)(8676002)(26005)(6506007)(8936002)(5660300002)(186003)(6512007)(9686003)(83320400001)(83280400001)(83300400001)(83310400001)(83290400001)(32563001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: MGGFMKmDx8PL9AWxgluFMxj5JhA9RQ/X5cItvuY71HdO+HscbY6060jW+aM+HWmK2IPFG206/pkunl37QwqgY98xkb6vqy7HVhpLh5xKcXFqkCw56Qub6gZE/uZzTjaASErTT5fWEhQyWsGcErcdM+UKz2EbJtTFGXaoBWbxZlyxd00WAWoKL78LTg1LbA1hXZwMvDJ6a8Y5wonibuw2CDWUppj1zI7EaO7E7sN6kj4HeCgeggp3Kug3ZG1Lxse1bGkVEvpI0hO/0QRchgAeFkZtJmjBO4LCOH+8tRXsWboSRYsJQ4hPTMNF7INDa2DJf6Z/emHZSwt7gdz25XhxfPb4UVLEtHoicjcasO8ocE4Y+pmrhsAkzxoZWjA0JTwI4TBpesFW5LkpLtmrdlh/ePpH3vpJ5goadzwdDF0UwO5vruXT7cCSRpdx3cG6CYM/+XTqWFt3/DNRkVFvyoXNOmmjqXTW+7wDBpmDzt9Y0PGDPmhc8rhLA4NdiVXo9XHHClXWkwJekUh4BVXnNKLc5umNibFw3V4wv70sCPYWdA3x9NMjgjk3CBPE17qBUaYCzs3Mkml6xWEV8m2TOcaM0hZgR24vZZfug/k/SyLXNY/6AWBhSI5dXTnxPsfrwkaEqR6W+O9K77ubWTlH9PRw+SUwhGRffyyRMEz3reNPgytlyV1jOVtQki2zHNFnbR8+pcYyu9W2xLBzpO/55ePQyxIz+l87CMa8L9y1RunSBiT+o6PPIngoa9lcTUUUgwKpAjD3MvEmhJc/H85zgcyfE1dWQFSarp22BPnAK6X0630=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 45b68f1f-b66d-4498-3431-08d7f24cb2bd
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2020 06:05:52.8823 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wsnCVkJ7rNX9L0XgM0QUy7PRChe9b3sjMvEtHClyCUfr/j2Kk07fy/diLz/BuA3phw+Ad1BTGhRaCDr3HtqiAg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2710
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_230556_212153_CCFF8206 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.14.78 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.14.78 listed in wl.mailspike.net]
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

Inspried from
commit e8688fe8df7d ("clk: imx8mn: Define gates for pll1/2 fixed dividers")

On imx8mp there are 9 fixed-factor dividers for SYS_PLL1 and SYS_PLL2
each with their own gate. Only one of these gates (the one "dividing" by
one) is currently defined and it's incorrectly set as the parent of all
the fixed-factor dividers.

Add the other 8 gates to the clock tree between sys_pll1/2_bypass and
the fixed dividers.

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-imx8mp.c             | 54 +++++++++++++++++++++-----------
 include/dt-bindings/clock/imx8mp-clock.h | 19 ++++++++++-
 2 files changed, 54 insertions(+), 19 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mp.c b/drivers/clk/imx/clk-imx8mp.c
index e9ed8a188031..a7613c7355c8 100644
--- a/drivers/clk/imx/clk-imx8mp.c
+++ b/drivers/clk/imx/clk-imx8mp.c
@@ -504,28 +504,46 @@ static int imx8mp_clocks_probe(struct platform_device *pdev)
 	hws[IMX8MP_GPU_PLL_OUT] = imx_clk_hw_gate("gpu_pll_out", "gpu_pll_bypass", anatop_base + 0x64, 11);
 	hws[IMX8MP_VPU_PLL_OUT] = imx_clk_hw_gate("vpu_pll_out", "vpu_pll_bypass", anatop_base + 0x74, 11);
 	hws[IMX8MP_ARM_PLL_OUT] = imx_clk_hw_gate("arm_pll_out", "arm_pll_bypass", anatop_base + 0x84, 11);
-	hws[IMX8MP_SYS_PLL1_OUT] = imx_clk_hw_gate("sys_pll1_out", "sys_pll1_bypass", anatop_base + 0x94, 11);
-	hws[IMX8MP_SYS_PLL2_OUT] = imx_clk_hw_gate("sys_pll2_out", "sys_pll2_bypass", anatop_base + 0x104, 11);
 	hws[IMX8MP_SYS_PLL3_OUT] = imx_clk_hw_gate("sys_pll3_out", "sys_pll3_bypass", anatop_base + 0x114, 11);
 
-	hws[IMX8MP_SYS_PLL1_40M] = imx_clk_hw_fixed_factor("sys_pll1_40m", "sys_pll1_out", 1, 20);
-	hws[IMX8MP_SYS_PLL1_80M] = imx_clk_hw_fixed_factor("sys_pll1_80m", "sys_pll1_out", 1, 10);
-	hws[IMX8MP_SYS_PLL1_100M] = imx_clk_hw_fixed_factor("sys_pll1_100m", "sys_pll1_out", 1, 8);
-	hws[IMX8MP_SYS_PLL1_133M] = imx_clk_hw_fixed_factor("sys_pll1_133m", "sys_pll1_out", 1, 6);
-	hws[IMX8MP_SYS_PLL1_160M] = imx_clk_hw_fixed_factor("sys_pll1_160m", "sys_pll1_out", 1, 5);
-	hws[IMX8MP_SYS_PLL1_200M] = imx_clk_hw_fixed_factor("sys_pll1_200m", "sys_pll1_out", 1, 4);
-	hws[IMX8MP_SYS_PLL1_266M] = imx_clk_hw_fixed_factor("sys_pll1_266m", "sys_pll1_out", 1, 3);
-	hws[IMX8MP_SYS_PLL1_400M] = imx_clk_hw_fixed_factor("sys_pll1_400m", "sys_pll1_out", 1, 2);
+	hws[IMX8MP_SYS_PLL1_40M_CG] = imx_clk_hw_gate("sys_pll1_40m_cg", "sys_pll1_bypass", anatop_base + 0x94, 27);
+	hws[IMX8MP_SYS_PLL1_80M_CG] = imx_clk_hw_gate("sys_pll1_80m_cg", "sys_pll1_bypass", anatop_base + 0x94, 25);
+	hws[IMX8MP_SYS_PLL1_100M_CG] = imx_clk_hw_gate("sys_pll1_100m_cg", "sys_pll1_bypass", anatop_base + 0x94, 23);
+	hws[IMX8MP_SYS_PLL1_133M_CG] = imx_clk_hw_gate("sys_pll1_133m_cg", "sys_pll1_bypass", anatop_base + 0x94, 21);
+	hws[IMX8MP_SYS_PLL1_160M_CG] = imx_clk_hw_gate("sys_pll1_160m_cg", "sys_pll1_bypass", anatop_base + 0x94, 19);
+	hws[IMX8MP_SYS_PLL1_200M_CG] = imx_clk_hw_gate("sys_pll1_200m_cg", "sys_pll1_bypass", anatop_base + 0x94, 17);
+	hws[IMX8MP_SYS_PLL1_266M_CG] = imx_clk_hw_gate("sys_pll1_266m_cg", "sys_pll1_bypass", anatop_base + 0x94, 15);
+	hws[IMX8MP_SYS_PLL1_400M_CG] = imx_clk_hw_gate("sys_pll1_400m_cg", "sys_pll1_bypass", anatop_base + 0x94, 13);
+	hws[IMX8MP_SYS_PLL1_OUT] = imx_clk_hw_gate("sys_pll1_out", "sys_pll1_bypass", anatop_base + 0x94, 11);
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
+	hws[IMX8MP_SYS_PLL2_50M_CG] = imx_clk_hw_gate("sys_pll2_50m_cg", "sys_pll2_bypass", anatop_base + 0x104, 27);
+	hws[IMX8MP_SYS_PLL2_100M_CG] = imx_clk_hw_gate("sys_pll2_100m_cg", "sys_pll2_bypass", anatop_base + 0x104, 25);
+	hws[IMX8MP_SYS_PLL2_125M_CG] = imx_clk_hw_gate("sys_pll2_125m_cg", "sys_pll2_bypass", anatop_base + 0x104, 23);
+	hws[IMX8MP_SYS_PLL2_166M_CG] = imx_clk_hw_gate("sys_pll2_166m_cg", "sys_pll2_bypass", anatop_base + 0x104, 21);
+	hws[IMX8MP_SYS_PLL2_200M_CG] = imx_clk_hw_gate("sys_pll2_200m_cg", "sys_pll2_bypass", anatop_base + 0x104, 19);
+	hws[IMX8MP_SYS_PLL2_250M_CG] = imx_clk_hw_gate("sys_pll2_250m_cg", "sys_pll2_bypass", anatop_base + 0x104, 17);
+	hws[IMX8MP_SYS_PLL2_333M_CG] = imx_clk_hw_gate("sys_pll2_333m_cg", "sys_pll2_bypass", anatop_base + 0x104, 15);
+	hws[IMX8MP_SYS_PLL2_500M_CG] = imx_clk_hw_gate("sys_pll2_500m_cg", "sys_pll2_bypass", anatop_base + 0x104, 13);
+	hws[IMX8MP_SYS_PLL2_OUT] = imx_clk_hw_gate("sys_pll2_out", "sys_pll2_bypass", anatop_base + 0x104, 11);
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
index 305433f9cc07..3a8c55a11c1e 100644
--- a/include/dt-bindings/clock/imx8mp-clock.h
+++ b/include/dt-bindings/clock/imx8mp-clock.h
@@ -296,7 +296,24 @@
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
 
 #define IMX8MP_CLK_AUDIOMIX_SAI1_IPG		0
 #define IMX8MP_CLK_AUDIOMIX_SAI1_MCLK1		1
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
