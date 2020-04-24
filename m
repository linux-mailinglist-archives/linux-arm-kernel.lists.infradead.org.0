Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F0581B816B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 23:00:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qfeJu62ulSZyy0B6ZGQp5GGvpdBwCq47KF2u4OcNMso=; b=lnl11gNh+zbJPt
	qXWibGjru8HG/2j/tVQ1Jftk20p+IFK39Lmf+TjLPf+Kef0xlFfX0Z0o9z/mrOL2YsPFQcLxZZIYV
	scxMa/57UkIV+7Jg/OkjaFw4HpjBbko9w6yrF6DdBDs2VH2dYDZRSGAkqHtYdCTHpnzLSFwTNq2uV
	LAz7Awz1n1K6LHLj7NKse9jBYduJiag3hByS+o4uaedkcMTqFAM/uxjSTDx/FYICBQT8icItHiSTo
	Q8aEwM/5qpee25lm5G2X67Bzm0OFqd1WNBPqJWGdc6jJlk/mQNOxqYFVeQzg22JqMvzC6NhhnroDq
	kjnJBFN9lVlAFzycS1FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS5RA-0001UJ-J6; Fri, 24 Apr 2020 21:00:40 +0000
Received: from mail-eopbgr770049.outbound.protection.outlook.com
 ([40.107.77.49] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS5Oz-0006J6-1v
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 20:58:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AGS9xYOeRNdzNro44z5VOMXAsnqDPrs8djyVL72nH0JYbVJT3KwRQbyFrFtFPCk2cT9l9mw/EL36+rNql1qnTwQx1v5dCwFaEKVKJ0tGqXjkgPvKUSvx/cV6uq0RLz8Zd6YrNaFUTIoDfGzIAzbsB10nsILYWJkSf2O3PcY0Sv4OHd+W32TzVJz6IjzNru463NOffZPht59bFXriW939k0CClekhzb2dMJZ9sGjx9cBkBge8NqIpPPw6BPDV/gEvfG55MFdNJ6D/yYcQI+XjW5wX+c3MC4nQSRHiFo+kcv1RoeZ6m+X+Q8JcIg9eymfkPyoG2zRzrGOzopqTUe4tXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ipW0UsClo2pc4QFwai8/rdVe7fqM2Gs+DuOOP8moBBQ=;
 b=Np464A6Ssq8XGfjD2yw5HYw5z5+hVH3I7lui2uiACNlhxQ065x4h93UXpPiAFMbL07XuKJJUw5WaCQdVnVyA4bC9vsyeBavrumOK+ls3RcardooT1M3EZE/3xrzelkZlFChK+ecj/F3MCb4ZpncyboIWLvB4ZbVZIzyOteCuA4cNSwvNdDikiTn5qVneTHJVVr//xB+BU20oiXXOPqG8oqc6LgpckO7jyk9LiqU2PZxA5xo8D1hZBxCttl8gXF/Pf1+DNdKxnWUvhBqIYSTDqTTpj/oEvz+hSzeT7PXSaVgEB57ralM0whlM9Vh9c/s2I+/cF8lqI71uAcx72iLEBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ipW0UsClo2pc4QFwai8/rdVe7fqM2Gs+DuOOP8moBBQ=;
 b=ZXSVlj5a7mia38UG+xwUtRcpDB82sLMm/WpcaMyb3RA/el9QeFvSEcB+8+Nj1v8I8wRkIYnuKotF+DHNmQC/1PQVeTA9MPYaBr6Rm/S0hqvsJf0pBL++fQAyOlPHcmCgmihQEDZlNhp51xTwiXc5m10JeXJgTIdrpin7xe/J8K4=
Received: from MN2PR19CA0024.namprd19.prod.outlook.com (2603:10b6:208:178::37)
 by BL0PR02MB4259.namprd02.prod.outlook.com (2603:10b6:208:4d::30)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.29; Fri, 24 Apr
 2020 20:58:21 +0000
Received: from BL2NAM02FT017.eop-nam02.prod.protection.outlook.com
 (2603:10b6:208:178:cafe::50) by MN2PR19CA0024.outlook.office365.com
 (2603:10b6:208:178::37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13 via Frontend
 Transport; Fri, 24 Apr 2020 20:58:21 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT017.mail.protection.outlook.com (10.152.77.174) with Microsoft SMTP
 Server id 15.20.2937.19 via Frontend Transport; Fri, 24 Apr 2020 20:58:21
 +0000
Received: from [149.199.38.66] (port=33231 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jS5Nl-0002Ce-Tl; Fri, 24 Apr 2020 13:57:09 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jS5Ou-0007N4-T0; Fri, 24 Apr 2020 13:58:20 -0700
Received: from xsj-pvapsmtp01 (xsj-pvapsmtp01.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 03OKwJaJ030381; 
 Fri, 24 Apr 2020 13:58:19 -0700
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jS5Ot-0007Lo-1x; Fri, 24 Apr 2020 13:58:19 -0700
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH v5 07/25] firmware: xilinx: Remove eemi ops for
 clock_setdivider
Date: Fri, 24 Apr 2020 13:57:49 -0700
Message-Id: <1587761887-4279-8-git-send-email-jolly.shah@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1587761887-4279-1-git-send-email-jolly.shah@xilinx.com>
References: <1587761887-4279-1-git-send-email-jolly.shah@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(376002)(39860400002)(136003)(346002)(396003)(46966005)(4326008)(2616005)(8676002)(5660300002)(36756003)(8936002)(9786002)(81156014)(82740400003)(186003)(7416002)(107886003)(44832011)(426003)(336012)(478600001)(316002)(26005)(6666004)(81166007)(7696005)(82310400002)(356005)(6636002)(2906002)(70586007)(47076004)(70206006)(54906003);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 616a7366-b0c2-45c2-e66f-08d7e89238d8
X-MS-TrafficTypeDiagnostic: BL0PR02MB4259:
X-Microsoft-Antispam-PRVS: <BL0PR02MB42593C48A97CF814C3FD421AB8D00@BL0PR02MB4259.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:60;
X-Forefront-PRVS: 03838E948C
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: I8c46S/iFVOl3sCKU8BzCYF9UpBGfKX+0LW5aVos1d+LOPeTh/7FyhGK3LWtRD5C+35VpMIRXXRtNtfQE400p4N/ATWhlhbp5LYBkUdNB6H/TPR7fm6BifjlGgV0hhqAwshD44R9ZLRNMjyrXOymQsh0O2gdiUmV7F5G96fwM/yw5X+D+N10qTHuXitA8utdwu7KYTWMcxZ+31lWT5U869RFODNRXdT9fWOLBOVgAFEixbUYmuoJTNTSX6tXjSao4OlP9CDRozeCC0CYNz8cMfJuSc/ayTtK5QgRBFqrB4D41kMyml1aLZR8Mvn4WuzlHuTwtQYxVFvjGeHpVZjMP+GxwHG1ieOxDXSOsLiAbFrGrrngcu1x1DDOrdleFTZ93QAiZIJENPkZcVrCDD6Ud5BCHbh1fqRlFX1H2oSZsJZtLzJiAyCRqHm1+3Ml66QN5otECvtHsgKaYKKUojzQ4TgYiwonOUtmgbxMkHwL6Iprc+MSEZvPEARaDoeYYwZC9dhnyPms7QusS13x3TRlzw==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2020 20:58:21.2672 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 616a7366-b0c2-45c2-e66f-08d7e89238d8
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR02MB4259
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_135825_096160_930AC66B 
X-CRM114-Status: GOOD (  11.52  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.77.49 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.77.49 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jolly Shah <jolly.shah@xilinx.com>, Rajan Vaja <rajan.vaja@xilinx.com>,
 rajanv@xilinx.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Rajan Vaja <rajan.vaja@xilinx.com>

Use direct function call instead of using eemi ops for
clock_setdivider.

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
---
 drivers/clk/zynqmp/divider.c         | 3 +--
 drivers/clk/zynqmp/pll.c             | 4 ++--
 drivers/firmware/xilinx/zynqmp.c     | 4 ++--
 include/linux/firmware/xlnx-zynqmp.h | 6 +++++-
 4 files changed, 10 insertions(+), 7 deletions(-)

diff --git a/drivers/clk/zynqmp/divider.c b/drivers/clk/zynqmp/divider.c
index e21f4ea..13041cd 100644
--- a/drivers/clk/zynqmp/divider.c
+++ b/drivers/clk/zynqmp/divider.c
@@ -219,7 +219,6 @@ static int zynqmp_clk_divider_set_rate(struct clk_hw *hw, unsigned long rate,
 	u32 div_type = divider->div_type;
 	u32 value, div;
 	int ret;
-	const struct zynqmp_eemi_ops *eemi_ops = zynqmp_pm_get_eemi_ops();
 
 	value = zynqmp_divider_get_val(parent_rate, rate, divider->flags);
 	if (div_type == TYPE_DIV1) {
@@ -233,7 +232,7 @@ static int zynqmp_clk_divider_set_rate(struct clk_hw *hw, unsigned long rate,
 	if (divider->flags & CLK_DIVIDER_POWER_OF_TWO)
 		div = __ffs(div);
 
-	ret = eemi_ops->clock_setdivider(clk_id, div);
+	ret = zynqmp_pm_clock_setdivider(clk_id, div);
 
 	if (ret)
 		pr_warn_once("%s() set divider failed for %s, ret = %d\n",
diff --git a/drivers/clk/zynqmp/pll.c b/drivers/clk/zynqmp/pll.c
index 41f376a..95fad06 100644
--- a/drivers/clk/zynqmp/pll.c
+++ b/drivers/clk/zynqmp/pll.c
@@ -187,7 +187,7 @@ static int zynqmp_pll_set_rate(struct clk_hw *hw, unsigned long rate,
 		rate = parent_rate * m;
 		frac = (parent_rate * f) / FRAC_DIV;
 
-		ret = eemi_ops->clock_setdivider(clk_id, m);
+		ret = zynqmp_pm_clock_setdivider(clk_id, m);
 		if (ret == -EUSERS)
 			WARN(1, "More than allowed devices are using the %s, which is forbidden\n",
 			     clk_name);
@@ -201,7 +201,7 @@ static int zynqmp_pll_set_rate(struct clk_hw *hw, unsigned long rate,
 
 	fbdiv = DIV_ROUND_CLOSEST(rate, parent_rate);
 	fbdiv = clamp_t(u32, fbdiv, PLL_FBDIV_MIN, PLL_FBDIV_MAX);
-	ret = eemi_ops->clock_setdivider(clk_id, fbdiv);
+	ret = zynqmp_pm_clock_setdivider(clk_id, fbdiv);
 	if (ret)
 		pr_warn_once("%s() set divider failed for %s, ret = %d\n",
 			     __func__, clk_name, ret);
diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index c11b528..ef2412d 100644
--- a/drivers/firmware/xilinx/zynqmp.c
+++ b/drivers/firmware/xilinx/zynqmp.c
@@ -405,11 +405,12 @@ EXPORT_SYMBOL_GPL(zynqmp_pm_clock_getstate);
  *
  * Return: Returns status, either success or error+reason
  */
-static int zynqmp_pm_clock_setdivider(u32 clock_id, u32 divider)
+int zynqmp_pm_clock_setdivider(u32 clock_id, u32 divider)
 {
 	return zynqmp_pm_invoke_fn(PM_CLOCK_SETDIVIDER, clock_id, divider,
 				   0, 0, NULL);
 }
+EXPORT_SYMBOL_GPL(zynqmp_pm_clock_setdivider);
 
 /**
  * zynqmp_pm_clock_getdivider() - Get the clock divider for given id
@@ -740,7 +741,6 @@ static int zynqmp_pm_aes_engine(const u64 address, u32 *out)
 }
 
 static const struct zynqmp_eemi_ops eemi_ops = {
-	.clock_setdivider = zynqmp_pm_clock_setdivider,
 	.clock_getdivider = zynqmp_pm_clock_getdivider,
 	.clock_setrate = zynqmp_pm_clock_setrate,
 	.clock_getrate = zynqmp_pm_clock_getrate,
diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index e874f0c..023f1f9 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -296,7 +296,6 @@ struct zynqmp_pm_query_data {
 struct zynqmp_eemi_ops {
 	int (*fpga_load)(const u64 address, const u32 size, const u32 flags);
 	int (*fpga_get_status)(u32 *value);
-	int (*clock_setdivider)(u32 clock_id, u32 divider);
 	int (*clock_getdivider)(u32 clock_id, u32 *divider);
 	int (*clock_setrate)(u32 clock_id, u64 rate);
 	int (*clock_getrate)(u32 clock_id, u64 *rate);
@@ -331,6 +330,7 @@ int zynqmp_pm_query_data(struct zynqmp_pm_query_data qdata, u32 *out);
 int zynqmp_pm_clock_enable(u32 clock_id);
 int zynqmp_pm_clock_disable(u32 clock_id);
 int zynqmp_pm_clock_getstate(u32 clock_id, u32 *state);
+int zynqmp_pm_clock_setdivider(u32 clock_id, u32 divider);
 #else
 static inline struct zynqmp_eemi_ops *zynqmp_pm_get_eemi_ops(void)
 {
@@ -361,6 +361,10 @@ static inline int zynqmp_pm_clock_getstate(u32 clock_id, u32 *state)
 {
 	return -ENODEV;
 }
+static inline int zynqmp_pm_clock_setdivider(u32 clock_id, u32 divider)
+{
+	return -ENODEV;
+}
 #endif
 
 #endif /* __FIRMWARE_ZYNQMP_H__ */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
