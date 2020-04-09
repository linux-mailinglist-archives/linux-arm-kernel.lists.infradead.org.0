Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6439F1A3A60
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 21:17:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qfeJu62ulSZyy0B6ZGQp5GGvpdBwCq47KF2u4OcNMso=; b=q3FL/mBGvn8wdG
	YvGGf/ESQDhVVrjNRKG19MTlzqA3cE2CyHpKsVTdf17TSeYF0FINtMUpZ9Ez5HzYVgiE2O5W2ETcB
	GiVyT8mhLuou7OJtUatts0OHEEfmRKTcJuifC6nRO1CvU+YMiC/rVdYVhV5ohfIqECwsVBvzEtAUT
	Gfe97hymnfmam4sXqSyoJNdj/t4Lyrk15WjbxgkrrovIL4WmPYr2uNI/ug/RV7kHarTsppaonxWaL
	B8GtQ8fvQtuhIR+3uRZ6aG0Uz5GcPQnf7R7cRBIvdEArs0frzj5tX/0BFRXb2ET6vNbIfN2Vq+xTg
	PboB1/1k/g80i62F9DsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMcff-0004qi-Ok; Thu, 09 Apr 2020 19:17:03 +0000
Received: from mail-bn7nam10on2051.outbound.protection.outlook.com
 ([40.107.92.51] helo=NAM10-BN7-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMcbe-0007Mx-W0
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 19:13:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QUNMxEmkB8tiIl+OcpI1ZVkxM/OEvSUiNfA5+wrkdjuyLQEIrsx/rLRmf7XCkwAEncm5SYSDISKZs3sE1j+7mCyJXlxNCzQTPg9GJdjvinG7W2eZxJZu5tC+mccOHXWZ5AASEt7R8DvkA9iZ8drPLyk+R7gKfZ7fKORapQKHzSklg81ynWn2iFR6Wb5A7vaCI/GCs8DR5ojQ+Z8O3Z1wdHtd72gJaOyfazNwUnbFXqPUZltrm6i75szQf7Oa7KmiSjBefnoHazpjRzE7mCuT6K/UcafsbvcdX26X//yGjttw038zHHezena1mzh4jQKbVc0fWxkTn2/oG27zdrr/AQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ipW0UsClo2pc4QFwai8/rdVe7fqM2Gs+DuOOP8moBBQ=;
 b=YUZoMDRkyPUxzEQ/bEhmPLCxkcH+O0zHq4ueH4ROLDbOIwFZMZwr2O3mkCMfAqu9ccqgtKGLbOmrsKxM/Z9+3nqBpt+CEdww0jJBBnyIsocPBEtrH7ID7bJSJ4SZrMBI5z+ZbsVReKWpZ03dc+1u8FCqL+6br/SkjbsDuvXHp8KC4ll9AezySjSBhNks3IF64Eb3OP2rSzz9DUdweatUZQCLHSRvz0mIEiU+TaN3KoWmi5cG+FPS279pv+CIm7AFodTZbITdVXj3gaiN6CcDtc9BnzBloZ+YRjHbTAPZH8RcW1exp7HufLLuvFZF/Ajv3/aLZ75JOFFsGeVRhJiKEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=linaro.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ipW0UsClo2pc4QFwai8/rdVe7fqM2Gs+DuOOP8moBBQ=;
 b=ZKdlqn1Ig8cfjTxUfWPW8Gylx384mKyydsPFJxa1BdEeHGUvj0vPKZukKCvbMnrp5s2aTfNXfInrIjx7jaWGR6KSTie+rAEprP9Bzj+1wMIMRKmQDgyE1Y2uVvPMZdZgXDDtDqYTSCZeEURZLn4Sd7J/u7SPPiYBJFkUpmE/Lvk=
Received: from BL0PR03CA0003.namprd03.prod.outlook.com (2603:10b6:208:2d::16)
 by MWHPR02MB2381.namprd02.prod.outlook.com (2603:10b6:300:5a::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.20; Thu, 9 Apr
 2020 19:12:50 +0000
Received: from BL2NAM02FT025.eop-nam02.prod.protection.outlook.com
 (2603:10b6:208:2d:cafe::e1) by BL0PR03CA0003.outlook.office365.com
 (2603:10b6:208:2d::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.15 via Frontend
 Transport; Thu, 9 Apr 2020 19:12:50 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; linaro.org; dkim=none (message not signed)
 header.d=none;linaro.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT025.mail.protection.outlook.com (10.152.77.151) with Microsoft SMTP
 Server id 15.20.2900.15 via Frontend Transport; Thu, 9 Apr 2020 19:12:49
 +0000
Received: from [149.199.38.66] (port=44281 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jMcb9-000602-41; Thu, 09 Apr 2020 12:12:23 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jMcbZ-0007NV-IM; Thu, 09 Apr 2020 12:12:49 -0700
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jMcbS-0007La-3m; Thu, 09 Apr 2020 12:12:42 -0700
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH v4 07/25] firmware: xilinx: Remove eemi ops for
 clock_setdivider
Date: Thu,  9 Apr 2020 12:11:56 -0700
Message-Id: <1586459534-8997-8-git-send-email-jolly.shah@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1586459534-8997-1-git-send-email-jolly.shah@xilinx.com>
References: <1586459534-8997-1-git-send-email-jolly.shah@xilinx.com>
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(46966005)(7416002)(6636002)(70206006)(8936002)(9786002)(54906003)(7696005)(36756003)(336012)(2906002)(426003)(81156014)(44832011)(5660300002)(6666004)(356004)(8676002)(70586007)(107886003)(26005)(4326008)(81166007)(498600001)(2616005)(47076004)(186003);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5f8d8863-b40e-484c-e427-08d7dcb9fee6
X-MS-TrafficTypeDiagnostic: MWHPR02MB2381:
X-Microsoft-Antispam-PRVS: <MWHPR02MB2381320003B7012E46F0CBB2B8C10@MWHPR02MB2381.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:60;
X-Forefront-PRVS: 0368E78B5B
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QGknWMUIeO5MoU2y4w7nR1eeIgI5T4Oj+JYM2/PUj0d6rpan57w9mZTEhdN/JhwpZbfy8Jsc73s2y+mjWO4LVKExRBvmJSWBEVkQysbCgt9A9U7QP28rz/001soFFtq75fSZKWdfod2vDaczE8xaZSTSCAAOZKhM8Z6NyhqtQnXjmgoWeqBO9Xgexkg7zGAzSlY6ik0NtiND76TJFX3DVK/rJeZ6gfE1lq62xBsM0fLwcb5h9/bpq3wQqxcsHG6J8a1mTuuFZmiwNvpGnxEz8xVxiGU+DrRviZQmwv6FHZlxm2AFs7EhcOMPMbKN2OT+8yyMRx6pE3eMqvcLtSHswwKc3IW/FneWLAhZQ5SPU2445TcPqpWDpTpBepVTWg7NWjaiKs7UN+1LmfQ2nYuP7Ph8CVuQoGGCxE1neQDl5eTW9G9nnZqniVDqOpPEEITXjMSrw5GT2HVX+nuJXh4ot9rYH/XXYOWTCj6I+xGWZ2Gkda4kwO6goNkpDJBCEN2bahRCJ7Ldx+sC3K3MUcQrCw==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2020 19:12:49.9669 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f8d8863-b40e-484c-e427-08d7dcb9fee6
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR02MB2381
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_121255_049585_4CF3150C 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.92.51 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
