Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A322173147
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 07:46:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5CKpf1AJvJQGTmakhyFJxvWqOS7X9U+4C1YQQKaP/80=; b=BLWEnO+Q2LYZYV
	ZkY8gTKpIeL6jGR44Gfg/gtnDusc09psZ5qdhR92JIaFnzUrN8Kes391vv4yriCjMZvX1TwUm6MuU
	MtxH0H2/l/oYO8iaJcEMnrSuJPcXRYiV0XuUIWvxIbIA5z7tpNhxwe3D+hZ5aorJko3li7nQkgXw2
	qX5exlPuSiu4wa7E8txrC5tZH3Hez8+IFt9v/xqIVjFnaK0ZAWNZBWZFKkNqe8teNLKUJCnCzU4R3
	PlDThn0q3SSMmcDmZrl0MvFktsaCt/4Sera1ssc1HQr92GacBoFWY/SlLDLzFma0fFPry7+NEQgGQ
	rWle0GIJiJiV9JVjd0gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7ZPn-0004UU-Eo; Fri, 28 Feb 2020 06:46:27 +0000
Received: from mail-eopbgr70089.outbound.protection.outlook.com ([40.107.7.89]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7ZPK-0004K7-Vt
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 06:46:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hF9cAmEMG+6Hu3nycTv/Bc6m62gwmYduXt/ZzPsG79CPArxylmk9Qsg+eXEKW+a2bJeldIjmjPIVADcI02rMWMwhunasmkDzoNtpWa8K2yJbaT4601DMAW2i+IN2VzOpm5nb5b/qK9EvvwqO5LovFRt65C3DbY5/IP8LZC9TQCXc3CjX4WV9dfCwlLb1HBFTnOUmPO1tRtEULla2ZzO+f7e7pjkrb3lYhJVO6iJp4weARFFmiPHNIRCIEfG0/hGu1k0za5iP2JBGGoGApGk9BGCDQZFGOtwA+wQ7n0U47FhFU/wDAIz+8vaerHuGwGTUzMO/VxO7dqrBDNxRfDb5Tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hXO7YkvIlv6IhlmrsQEIHqrDbacNTENjx0xM0KhHlVQ=;
 b=NTQxevuM39ImCGJD1MO2eV/8s8sdLGqqRmmwE2iFGmSen5STpuTlJ2Phi7pUwtVn5uESKC+42MublnzTuZhTwNh2247NZmwha6X82/14jJ+wMXb+vSD/UaQalC9PsHpnCid7PXVqPhCtEIOlpvMOc/8zpxrACvApHQrKd02TH7l2KH+MyQQ/oQ7N42e3wAFSjImHek4r7j6BPR/phXQRaBD2EMXZJB7a218l3leM7n+a5T/+z0OxqKQ7iE6iNjjW7tLuDX6dwxTxNsagtYbfxV2meRtT037hO8MVsqeNdFm7DWFm8GpdLznX40KOSZfRFaSu1tlZpQXwnSeD2w0zbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hXO7YkvIlv6IhlmrsQEIHqrDbacNTENjx0xM0KhHlVQ=;
 b=iunJY7MwX6lgoKSX5tBCkObUwWxh3xrMYey+RtHmCl+QTMBfjq1YNOsXcl9HFyd83OviSuzLtLaNbS/1q12G6oOjz2uHchG6pGcJAmAdKPEWk60GZDSylBe7r5MK62iC6CQ+Qim/q/WmfTXuk9/zV20t4ILOT+lU/nz4VCwjjvA=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6354.eurprd04.prod.outlook.com (20.179.255.222) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.14; Fri, 28 Feb 2020 06:45:53 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2772.012; Fri, 28 Feb 2020
 06:45:53 +0000
From: peng.fan@nxp.com
To: sboyd@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, abel.vesa@nxp.com, leonard.crestez@nxp.com
Subject: [PATCH V2 2/3] clk: imx8mp: Define gates for pll1/2 fixed dividers
Date: Fri, 28 Feb 2020 14:39:41 +0800
Message-Id: <1582871982-29662-2-git-send-email-peng.fan@nxp.com>
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
 15.20.2772.15 via Frontend Transport; Fri, 28 Feb 2020 06:45:47 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: fa0cd42c-13e3-4b01-7f27-08d7bc19da3d
X-MS-TrafficTypeDiagnostic: AM0PR04MB6354:|AM0PR04MB6354:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB6354888548F285CD50426A9D88E80@AM0PR04MB6354.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:576;
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
X-Microsoft-Antispam-Message-Info: fG0mVa9wL+sUdS/7HDCrwVw2q4IML0QG+DCKSPtR4JFRUJI0CznoMSMNj0EL7tSuPOOYQmDL4FBg8gyZKBscj4eKnvCWHvo91ejboJ/o0of9g1hafIBU7lcBPs4FQ8ZGk0Np84oJJGWVMn2LYotaAGcTP6Hg2yAXgOEczh6R1DRXaXQZeKsBgXZICK4NXozp0+IXOXWcxCl6391/GvQCX7pceab5YlHgL0lic1jbBZzPn9gHEdn51EKbZfEoo8Lquk+s8D4xfyy+mhTIsfDt0+2ZCIxxBhT+KmIb+U0HgoXivEJOUIYDIqHRZsdh2fd86eWfcAErXqfgJqJhVVtwgWb/9OZNge3K87RI905f2xfX0R1UPYOP+EC3FiAOuiCKoAgHfPdU4q+pnFtHtmmUxULgbYonLf5sgl61xx/rFdO1CN/u/SQpKkQOmqehl5cioU/wxeXic/wA9NdF8i9fotn+5cnOpwn5gzAfTeaQ5rHWAeMPA+KVr8VdxlF57UaNVrAdBmSV39BlS7PwS/0owg==
X-MS-Exchange-AntiSpam-MessageData: kMXvGINuYkFCMn1V1eXx4ZXQnGwb43VNZPdofc0P2sTCcjZE8WIL8OUKvVl82J38uADQYVfGSGMxd4reZ1mNvgQifkRw1s051C87UGPX21SJe3KLSCYmVyvM7JCOXMhlyyB/QLGCB/EHYZCaUxksFQ==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fa0cd42c-13e3-4b01-7f27-08d7bc19da3d
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Feb 2020 06:45:52.7477 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7390ABS8ped3NvZDf0GaoTKXdV0Z25E1i75Cr2pJwvKxw4VCZLoySchU2mf5Y3nwnZ4A3nUl0md0DPI0emo/Xw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6354
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_224600_021114_5A67965B 
X-CRM114-Status: GOOD (  10.84  )
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

Inspried from
commit e8688fe8df7d ("clk: imx8mn: Define gates for pll1/2 fixed dividers")

On imx8mp there are 9 fixed-factor dividers for SYS_PLL1 and SYS_PLL2
each with their own gate. Only one of these gates (the one "dividing" by
one) is currently defined and it's incorrectly set as the parent of all
the fixed-factor dividers.

Add the other 8 gates to the clock tree between sys_pll1/2_bypass and
the fixed dividers.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---

V2:
 Typo, mn->mp

 drivers/clk/imx/clk-imx8mp.c             | 54 +++++++++++++++++++++-----------
 include/dt-bindings/clock/imx8mp-clock.h | 19 ++++++++++-
 2 files changed, 54 insertions(+), 19 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mp.c b/drivers/clk/imx/clk-imx8mp.c
index a85039cfdbf1..5596dfd3387b 100644
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
