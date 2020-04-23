Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 181051B5509
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 09:01:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IKLevpdum0DYYjIUL4MjWhU1TwOaoFjHdFQQKjHv9vg=; b=mqXMGXbDkJEzMe
	A7V4udYT1t2nGqPArDNTmwnaNcIVCjpkC+z2jzrEmGwOWnaiwb6nnjcxhQs+vpWqC9DQSbN1zLoSq
	OYkL3eJKT/E7r2cE1D4UDjkYElIRU5xGwcPu6fgFsdtdmGdj3ZCGMRRsgr4y+BxjS/ZWu/gYcH/XY
	XFCdCfwaBISfMMRUxWZl/7gZvcbTYFvMm6XMRcHIsCo2RBvKhUWIU4d852eSND5AxY1hTor48Wzuz
	fYgA1egUNkaKAJNLF3JTJe9JlbGeuGeMzgB4+2sq1Ep+ZJ8Bi6cqMLpum7Yx5OxsMCk5QuSzFxvpm
	jE/KjjyVq+CkBx40z9gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRVrN-0007Vi-1n; Thu, 23 Apr 2020 07:01:21 +0000
Received: from mail-eopbgr60043.outbound.protection.outlook.com ([40.107.6.43]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRVrD-0007TY-7V
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 07:01:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QZuO+2Q3nUmvIE/UZRNHG3IeNBQGwZJjuMuPAW4YuLycR/c3QvI9hg//yA71rgUEyR5Qie1znvSVN+9Cjl4Eq5p6Re6EGJaTo5liqvk4lBuj01UBRrGfCAXTnyOXBnGrXtA7TQ2VNWp1GqvVR8MOlayVSDsbfXiOvE5J1jkLB3xXKexNvf/zx+OHXbgMkTKq4Jf+Ia6hFygC0S+PhbNuLfOCYigfXXZzTG0E+2GI3BXHW7fEgq439GxgqVcrRWTXAu3XCNdZl/jM8EuUErpO78ESidAwXWM1ctT2/Df7LzBpKC/6X+a08TY+IAVNg9YppFac9Svor9pfV5MxNGLnNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ffBclFaIhjRLAK7MzFsb012aA60idB+fH+Vz0PPO97w=;
 b=SkdBE7zaMtgROUveuqliuNnebvuWX8hFKXBfS20vmRSjDHvdg8285zf0XC26rHjv8ZJN52UAIUuxaAuYs16kcMprQErszomurCpHuyzYfA1hlGqijkGoURXQW98Nc/ZO8jHcgi4lG+Ekd9HWqACQcvWgRWL4B5ublbtAEUZ+2KLs8ExKAG/rCBkXUlr85/ScpW2JrA+Lf5vR5hLw8fqMoHRYX/uPECV9j9m3VcZrPTkWQi59yvYCijojdGeafJ8FjPtWJ94W2GWgeYfGA9AgEa7Qxnjbf7n/AQ3o2OK/0ek+60Bwyv2hwuVhURBgyw2jQASwytLLiwfbweE2jwrIvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ffBclFaIhjRLAK7MzFsb012aA60idB+fH+Vz0PPO97w=;
 b=CP9Uls27hw/hBbP9qMwLDcu9Ot1mqP5pwmkjoZkZqesAJH+iHMRGWjC8H5pDub9GbAvmNmjqT3stq4qrHd/2tPTkTKaY8sdozLf1tSwoLV/rMhLmBMB8vbwlLBU8/7DOWLxKM39gWnNAlTStf3iaNdNONnaRKhsV/+AtI8oQOuo=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2822.eurprd04.prod.outlook.com (2603:10a6:4:96::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.29; Thu, 23 Apr
 2020 07:01:06 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.2937.012; Thu, 23 Apr 2020
 07:01:06 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	sboyd@kernel.org
Subject: [PATCH] clk: imx: introduce imx_clk_hw_critical
Date: Thu, 23 Apr 2020 14:52:28 +0800
Message-Id: <1587624748-27228-1-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: SG2PR04CA0133.apcprd04.prod.outlook.com
 (2603:1096:3:16::17) To DB6PR0402MB2760.eurprd04.prod.outlook.com
 (2603:10a6:4:a1::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR04CA0133.apcprd04.prod.outlook.com (2603:1096:3:16::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2937.13 via Frontend Transport; Thu, 23 Apr 2020 07:01:02 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 58967f40-8bd2-463f-ae2e-08d7e75417e5
X-MS-TrafficTypeDiagnostic: DB6PR0402MB2822:|DB6PR0402MB2822:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0402MB28221B5F19EBCEBFACF1A2B188D30@DB6PR0402MB2822.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-Forefront-PRVS: 03827AF76E
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(366004)(396003)(136003)(39860400002)(346002)(376002)(66946007)(66556008)(66476007)(5660300002)(6512007)(2616005)(6506007)(69590400007)(316002)(8936002)(6666004)(9686003)(956004)(81156014)(186003)(8676002)(36756003)(6486002)(86362001)(478600001)(52116002)(16526019)(2906002)(4326008)(26005);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2PtT2wqPZDmpJHcsl/XXQjfTudtWy4pGegZdcH4Vxj/xgrSN4o25G4/7N7fliafYE+LDZQs3mn3q5OEbKokQKnc8iFV5pWPsCJ1mcARQBNOchwGz+Pjol9KrOv2V/wUfEIuve7HKX7XvxTa7SN2gTncmRj/YgptcBpogb8TBDPNbtUYdZ02CJmDhQfAkXCIQQTKnBDlewkamLRBfZZyDVW9pB8Ti6XPElng1LZVd3XpwevuShaJV6XrQ0uZh9ro9M8zNKLgr+gONK3vHOpGmGgJLPR6I9DL23m/8WAf8Xlc7Hieb60O37irqWqOgSdwkn5Vl2fjXrdHRYH8VyVVti1eeia4xTouHXKg/4a5FgSg3e9QsjZIyKLDftR7XYMNOliVoFaE4ZBMgZN8+otvk29ccYRBgWghalppH6x0QFEfoURwHz3ZtKRxdIfTZgA5eMzf+6jtXh41XOO/Bf41yWlpm4cEcotGxfCuAdFm1CrIBuC11oxWI4nrXODQGE2/p
X-MS-Exchange-AntiSpam-MessageData: gfCkf5d4pE8PelfW25KWiGngQq2Pjk8f+wqJgunq8QGDbzAYzmkjjIsHZZhgeuyPAtB1vLsYZyWPL6JqaMj6TZpMH+Nba6AcxE60PodK8VWPE5CtSmDzdpR2FglrFvKuqi51iLIuUhCK5IZOcYk7dw==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 58967f40-8bd2-463f-ae2e-08d7e75417e5
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Apr 2020 07:01:06.2520 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: B5lCUn35qCvTcTcdrRXSSsv3RVClfiKyLOP/dwK/t4AQcsQu35qsHrGdQy6mwKhRrc7BYERm+FJjXa6MLuKeoA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2822
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_000111_378839_872544B4 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.43 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Peng Fan <peng.fan@nxp.com>, abel.vesa@nxp.com, Anson.Huang@nxp.com,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

To i.MX8M SoC, there is an case is when running dual OSes
with hypervisor, the clk of the hardware that passthrough
to the 2nd OS needs to be setup by 1st Linux OS.
So detect clock-critical from ccm node and enable the clocks to let
the 2nd OS could use the hardware without touch CCM module.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk.c | 19 +++++++++++++++++++
 drivers/clk/imx/clk.h |  1 +
 2 files changed, 20 insertions(+)

diff --git a/drivers/clk/imx/clk.c b/drivers/clk/imx/clk.c
index 87ab8db3d282..ec7d422540c1 100644
--- a/drivers/clk/imx/clk.c
+++ b/drivers/clk/imx/clk.c
@@ -177,3 +177,22 @@ static int __init imx_clk_disable_uart(void)
 	return 0;
 }
 late_initcall_sync(imx_clk_disable_uart);
+
+int imx_clk_hw_critical(struct device_node *np, struct clk_hw * const hws[])
+{
+	struct property *prop;
+	const __be32 *cur;
+	u32 idx;
+	int ret;
+
+	if (!np || !hws)
+		return -EINVAL;
+
+	of_property_for_each_u32(np, "clock-critical", prop, cur, idx) {
+		ret = clk_prepare_enable(hws[idx]->clk);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index d4ea1609bcb7..701d7440f98c 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -9,6 +9,7 @@ extern spinlock_t imx_ccm_lock;
 
 void imx_check_clocks(struct clk *clks[], unsigned int count);
 void imx_check_clk_hws(struct clk_hw *clks[], unsigned int count);
+int imx_clk_hw_critical(struct device_node *np, struct clk_hw * const hws[]);
 void imx_register_uart_clocks(struct clk ** const clks[]);
 void imx_mmdc_mask_handshake(void __iomem *ccm_base, unsigned int chn);
 void imx_unregister_clocks(struct clk *clks[], unsigned int count);
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
