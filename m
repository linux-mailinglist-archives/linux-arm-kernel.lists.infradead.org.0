Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50690164125
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 11:02:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zTDYtmpiEDNKKido3lSn3DNzdx8Zr/MyXfJIfwjHbqU=; b=MM1qolesZdljkR
	klcUIIHXp0pzxZgLyoqfv0K7VJprpsyhvOWQ2dod5EU5c0fGf7cwNOy1XXfpj7cp72vI128LC3u77
	/1A1XZbT2JcrAqGSFymkB3sI/X1Aqs9yMJ+8o+sqEMoex4d5ipCGfvqxbn2Vy4TOTQkXfdQiCl3lg
	d4U/c2cOUtT+qJojTG2SurfNtcMFEwyYsi7ltoLWMWJ8pO4JwRrMIwy0zSmYwdBkL0rnRtsnRcHHc
	BkBtOFwl8yT4TX3mBqwOySQWnvIoGCmmAy1ZvYz5zPp9nCwf7imEGTBCm6DxiJXvJsDCTvNtIk3nO
	kYjhrKLVVZ4O3qCxqdCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4MBQ-00056y-6T; Wed, 19 Feb 2020 10:02:20 +0000
Received: from mail-eopbgr30059.outbound.protection.outlook.com ([40.107.3.59]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4M9O-0002FA-U6
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 10:00:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZRgSXu7+D2HNLjkvica3zOoswzyuGlz9uOsn7ikcQfnRe+3/+p2OJ4wWZLeQQS4KbuCcLhMbsy0EwgoqxgIlSS0QxEGphWn79zzVN483BYQssnhYcU3M/anGLrDNgzYOfXwB/7vohovI4ui4tEK1uIi9Ea/k2H5KK9/ieYRqTkVvVPHGrDCphFt+NySmLoMa4yKBS4rtC6jo25NRzBEgKzssomVg8Y2bSTdZ0cA2IKh0M3rhYiJOV/WMzxaGvPpgtNgq0+ETDl6FhJTWk0dJjtVCjznGpWHTkBkOQnMK8ApG1a76sU1DLlfoCLTsAiVY4uCbf5PB6lXAaHapWC5bTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NnIP/LvffcyQRkVUHMCeJcefBacRUeRSPqlu5t1wdIc=;
 b=bYLAHOMOMxPleIkPaB+rRXXnVPlwbUbrLhhL32AkAAZrw0UIg5+EEDHEWvpYpmiJOjIcJX9pJuz9mcqq3qjgqt8Aio7+0L+GjKkeKVSWlj/aYOw11kZXJYu7H0QzVVVpWi47KY1bZYTRMh/ohq6mCOJ1JMLKkz7g54oUUncW0RzdFWHnpjWghhl2aSQvjqUMzawZAJIiMnn6k8PBTzcr8tE4R+Fs2f8x9uxudq5RQIp+Y8TUTd6lGbICOQ+kVvwovxst4y9QSk44rO31JuiiokcBijXihHqNH1YSEEn9i+ebdrs54EfcGsx51fnmGb3Uq7tSVPcZDl5dC/00A4FXWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NnIP/LvffcyQRkVUHMCeJcefBacRUeRSPqlu5t1wdIc=;
 b=shvOWKDqqJT3fsmWN/4oLTeIqr/cUWbDnbQE7qYELohvnu8LvMGqKU8HrLDWV4ToMFkobtSNzr4Vq0291hxWqeOCB5yh6sz1dhvcoSGzy0qr2JNA9qYMHa8vIPoFlvxmYQd40JRkUb7Yu2LU/HzfXineoIX3uSLZ7tpJshP493Q=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6514.eurprd04.prod.outlook.com (20.179.254.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.17; Wed, 19 Feb 2020 10:00:13 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2729.032; Wed, 19 Feb 2020
 10:00:13 +0000
From: peng.fan@nxp.com
To: sboyd@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, abel.vesa@nxp.com, leonard.crestez@nxp.com
Subject: [PATCH V3 4/4] clk: imx: imx8mn: use imx8m_clk_hw_composite_core
Date: Wed, 19 Feb 2020 17:53:41 +0800
Message-Id: <1582106022-20926-8-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582106022-20926-1-git-send-email-peng.fan@nxp.com>
References: <1582106022-20926-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: HK2PR0302CA0008.apcprd03.prod.outlook.com
 (2603:1096:202::18) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
Received: from localhost.localdomain (119.31.174.66) by
 HK2PR0302CA0008.apcprd03.prod.outlook.com (2603:1096:202::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2750.8 via Frontend Transport; Wed, 19 Feb 2020 10:00:08 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 25fd5413-824e-4ac9-482a-08d7b522831a
X-MS-TrafficTypeDiagnostic: AM0PR04MB6514:|AM0PR04MB6514:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB6514D2D3BBACBBCB9213A71B88100@AM0PR04MB6514.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:361;
X-Forefront-PRVS: 0318501FAE
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(366004)(396003)(136003)(39860400002)(189003)(199004)(4326008)(2616005)(956004)(6512007)(5660300002)(8936002)(9686003)(16526019)(186003)(478600001)(81166006)(81156014)(8676002)(36756003)(2906002)(6486002)(6506007)(86362001)(66946007)(52116002)(69590400006)(66556008)(66476007)(316002)(6666004)(26005)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6514;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kcy4GhvawcAn3/UjkaHLwT8e8mY0Z5G6IdbHjB3s+JVry7o+XEDGzaFK9Tuza65/FsAZOk5LxSGlWiWoePCna4JLdpHrz1mGFg2Ffa6nvvZvWQN1W4GIxxkt+8Uqb1BhWlS1V9+3VB1SHVBca9490wXOz3xYKDPL9SBW2ZHCXySDmjvLKEweemmufJlSlcW89SN8gTpxwmu5oUunFgxiWRt2w8Z9Uqyp4L14jfw1DDz7O/fSEuC/Ky1f2ktwEYe55AsCKTRZKQJSuxDVO8ooLHQkOjsBIXDLuQ6nYc6fStVd1g07+RB7pmfG8keuhWHuET8kViYpB92fSDZ/ucTzTyk6ySHoREgt6oBSJJefo4Cr4jTZAzrvqpH97C8PViYqY0l7HlOD/44GUvnJPiLS/iuHRN/nnUvX3ZZ9kJurC6CyqIEhZUA5hEMZkl9PiTwfXhSNU2LxKfCwW1/O7OTMZKc+TkzhskGdmB3I1cquU1w3DcQ1kNsO9b9Xi51FanWs0462hN3CiMAWuDpdIEkp2LUq31/c0N7rnlS13X68g11GxGh5ddpy9gVuZ0LkQZig
X-MS-Exchange-AntiSpam-MessageData: NJpYp7jxQ8dvvlvww036xzhhuDdm72f5jwHzmecEhVB4dOrIioT/TeQCGaRoXCObrAkTyIxzhTP8JTN/PWIDdyYlFgdqmaYZ3wRcMjT1wMDhREjL+JmjLjnNLLsTgReNQJwH33VpdHQs1jRQyJfmGA==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 25fd5413-824e-4ac9-482a-08d7b522831a
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2020 10:00:13.1316 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: m+fEwVWglCgxiMueub66Dfr6djRkxMZiFCLbL/OuGPgu+7HcG8/HcyNLoogmlMKeAiNsU2knMCfGPfUHkt/MMw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6514
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_020015_017896_0AE10D91 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.59 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: aisheng.dong@nxp.com, Peng Fan <peng.fan@nxp.com>, ping.bai@nxp.com,
 anson.huang@nxp.com, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
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
