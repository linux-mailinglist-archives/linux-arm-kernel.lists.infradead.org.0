Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A21111B8171
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 23:02:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z/R7g/WUCVRpqq61FFE7ovJFoVIcQn8QkJJE61hU27M=; b=pll1sUkYw1MRwu
	MLPxExE6CuUSVR3/pzXhhyf+DZE7Lmbij7CKFyLuUNt9vp8XfShZM0EI2sEmkQdZ+sNCDm9yzMJDE
	1BJIeaK0DuD0WH0ORV3SPzi4PQJK+NuKNbg/IKpuxckmOF58D6bZxc8S72MUkST2acnYuy0ayB9q8
	Jm2Qm4fCYAN1hTM/JtK4MzagaOsCe6mibz746PrP2MP5cPogZlsECKo4YfNnqZSULoBZXxikmACb8
	sx17V04fRTXDElqDSt44HRBuE0kEaIiyOyu4FiBAVKJu7FEywtRQcrs8EewRcm3tOZnqquNMMTUqd
	T51VxWsE+GOOglv6q6tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS5T6-0003B4-B6; Fri, 24 Apr 2020 21:02:40 +0000
Received: from mail-co1nam11on2064.outbound.protection.outlook.com
 ([40.107.220.64] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS5Oz-0006KF-QI
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 20:58:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J7gGhpSExqihxsxqieadJ1PcLo5cpuUcyPTj8iaSkvye3hPJt47I4pv4puDC2vQB4vUkMMB5N8dWALQCyHA9VlHeSE3b9oo3jwXkvxuCw0MX0gr35ZcXiyZAgioHI/uGHbzP+4eJ1ZguPRmtrvIVm+oxP/9+X7x2XXAMJv7goZkEmfgPdKVuqXh4lsUeG1Tza1bwhD7RmaFpecTOxBbMWYhSEQ4ehtgmp4nzobqJHJl5P091q8MVzUZgdwKA0Rs7O16AE8NfoimmvXTWcRvUwdNd+uDQ9zvZON8hsvQX5p43SJ6fXEgIpZqQ/dJ3A+W/mHE7rIskKTLaUrv0C5tnnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KsHwjiDtIA212nyXKvw7jSTkJbgQxuduxd/ggG0x8Eg=;
 b=Hf5tZ4HQJUQ2zWSEmPq5/y+sNfatjiTyZucdHVwBKiSWwdUDN2xFTKxZcnZ1Dlqs3lHO8MekaozQX0zFuDBEjy//f5x1WX2jRi/iDrWTqqiUxclspLTT1LjKcXcki6+iHLB4GdlxskqCVnzp/a1eoqlP6OIMmYtsIQXuie7fFOQY+ENwAfTqMtJHQ7jgxb5VJyZXuLOXBHWFUkXsNU0VNrECRWHPXYO/e+b/etrHQdGItIxv5Dtttv7pmM05Uc+tMfR66F0sA1ig45KM1W5UczDfgglqzenmkdxf4ZhjJLH/YA6wGRPPm69/fDsFR3IP3sn5DGmpJuA+DptAB/vOog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KsHwjiDtIA212nyXKvw7jSTkJbgQxuduxd/ggG0x8Eg=;
 b=Jt5roKnaMsRwZ8QqEqWO3kDVxgC+tr7rKTgNuze81sIJ8ioDw5G4c0rDOfOfjOrTs+0NK26kI2bHLhfuIj77ADqGqpANINr0rTsHmHFajBHoKKTBZi1mU9i9yy60lz+d+OOFH2KUO+Q3QGCflIvV6SlmNoMmduLcVl4HoxZvCV8=
Received: from CY4PR20CA0044.namprd20.prod.outlook.com (2603:10b6:903:cb::30)
 by BYAPR02MB4008.namprd02.prod.outlook.com (2603:10b6:a02:f0::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.22; Fri, 24 Apr
 2020 20:58:22 +0000
Received: from CY1NAM02FT042.eop-nam02.prod.protection.outlook.com
 (2603:10b6:903:cb:cafe::ee) by CY4PR20CA0044.outlook.office365.com
 (2603:10b6:903:cb::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13 via Frontend
 Transport; Fri, 24 Apr 2020 20:58:22 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT042.mail.protection.outlook.com (10.152.75.136) with Microsoft SMTP
 Server id 15.20.2937.19 via Frontend Transport; Fri, 24 Apr 2020 20:58:21
 +0000
Received: from [149.199.38.66] (port=33286 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jS5Nm-0002Cx-G5; Fri, 24 Apr 2020 13:57:10 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jS5Ov-0007N4-FN; Fri, 24 Apr 2020 13:58:21 -0700
Received: from xsj-pvapsmtp01 (mail.xilinx.com [149.199.38.66] (may be forged))
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 03OKwI1G026313; 
 Fri, 24 Apr 2020 13:58:19 -0700
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jS5Os-0007Lo-St; Fri, 24 Apr 2020 13:58:18 -0700
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH v5 04/25] firmware: xilinx: Remove eemi ops for clock_enable
Date: Fri, 24 Apr 2020 13:57:46 -0700
Message-Id: <1587761887-4279-5-git-send-email-jolly.shah@xilinx.com>
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
 SFS:(4636009)(376002)(39860400002)(396003)(346002)(136003)(46966005)(9786002)(70586007)(2616005)(82310400002)(70206006)(47076004)(36756003)(82740400003)(5660300002)(54906003)(81166007)(356005)(2906002)(44832011)(186003)(4326008)(6666004)(8936002)(336012)(26005)(7696005)(81156014)(7416002)(6636002)(8676002)(107886003)(478600001)(426003)(316002)(42866002);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 21f233f3-707d-4d1c-8706-08d7e8923929
X-MS-TrafficTypeDiagnostic: BYAPR02MB4008:
X-Microsoft-Antispam-PRVS: <BYAPR02MB40084117DDB3D923FF4AEB84B8D00@BYAPR02MB4008.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:229;
X-Forefront-PRVS: 03838E948C
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VTJOa4g7odCOgZUqrVbfUzxaJ9LUSKMpAiDI/di5tDfJeIjFmIJ/wFE6r2VXUlwqFYkIaJRxQojuj1X38Gp8K5Dz9CtqQU3v8e8Jl9nf0XeJQTejInnwr8j5SFpMCFrurNFwHyxKC/yV3hj6cVLeMcfljRQwP7BRMR6Zbz2S+Yw0k16kj1G4QnkoS7KWVavyEQJ/eyYczURLdcvOpN+T5uBVObWrIzpgDBDYTXMXE7IcMKl/0ORy7Xu+Fy1vifxO0yHqDjIaR4qrnxOiVuRXa3MtWkiFrd9Bzxok0RaIcdOEyS0qfCx5Voqe0PFrj8H8UQSP54IKgb4ZBOM79G9u39kZC0+++UyNvDLqtPJ3M0scnRIoDJ1je6ixk8pMD8xjYQXt9dorOC9LWWINUYJSdfa/jaS8SfZIYUuZi4xEy0Z7qdSIdCJvnWhUX8q4irWg/83uHbp6fkairCYCX4UhnSSakXbhlqxPJ0NAVa+aVyqjHj02WaClT2Sk/Dmyxz+uVhuK9KM/mmmNtZ4a9aowORQAZHuO0NvRWpV+nCqN0So=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2020 20:58:21.7876 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 21f233f3-707d-4d1c-8706-08d7e8923929
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB4008
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_135825_849290_5695EEA9 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.220.64 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.220.64 listed in wl.mailspike.net]
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

Use direct function call for clock_enable instead of eemi ops.

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
---
 drivers/clk/zynqmp/clk-gate-zynqmp.c | 2 +-
 drivers/clk/zynqmp/pll.c             | 3 +--
 drivers/firmware/xilinx/zynqmp.c     | 4 ++--
 include/linux/firmware/xlnx-zynqmp.h | 6 +++++-
 4 files changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/clk/zynqmp/clk-gate-zynqmp.c b/drivers/clk/zynqmp/clk-gate-zynqmp.c
index 83b236f..437b921 100644
--- a/drivers/clk/zynqmp/clk-gate-zynqmp.c
+++ b/drivers/clk/zynqmp/clk-gate-zynqmp.c
@@ -39,7 +39,7 @@ static int zynqmp_clk_gate_enable(struct clk_hw *hw)
 	int ret;
 	const struct zynqmp_eemi_ops *eemi_ops = zynqmp_pm_get_eemi_ops();
 
-	ret = eemi_ops->clock_enable(clk_id);
+	ret = zynqmp_pm_clock_enable(clk_id);
 
 	if (ret)
 		pr_warn_once("%s() clock enabled failed for %s, ret = %d\n",
diff --git a/drivers/clk/zynqmp/pll.c b/drivers/clk/zynqmp/pll.c
index 89b5995..153aa67 100644
--- a/drivers/clk/zynqmp/pll.c
+++ b/drivers/clk/zynqmp/pll.c
@@ -246,12 +246,11 @@ static int zynqmp_pll_enable(struct clk_hw *hw)
 	const char *clk_name = clk_hw_get_name(hw);
 	u32 clk_id = clk->clk_id;
 	int ret;
-	const struct zynqmp_eemi_ops *eemi_ops = zynqmp_pm_get_eemi_ops();
 
 	if (zynqmp_pll_is_enabled(hw))
 		return 0;
 
-	ret = eemi_ops->clock_enable(clk_id);
+	ret = zynqmp_pm_clock_enable(clk_id);
 	if (ret)
 		pr_warn_once("%s() clock enable failed for %s, ret = %d\n",
 			     __func__, clk_name, ret);
diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index 3fbab29..da13627 100644
--- a/drivers/firmware/xilinx/zynqmp.c
+++ b/drivers/firmware/xilinx/zynqmp.c
@@ -351,10 +351,11 @@ EXPORT_SYMBOL_GPL(zynqmp_pm_query_data);
  *
  * Return: Returns status, either success or error+reason
  */
-static int zynqmp_pm_clock_enable(u32 clock_id)
+int zynqmp_pm_clock_enable(u32 clock_id)
 {
 	return zynqmp_pm_invoke_fn(PM_CLOCK_ENABLE, clock_id, 0, 0, 0, NULL);
 }
+EXPORT_SYMBOL_GPL(zynqmp_pm_clock_enable);
 
 /**
  * zynqmp_pm_clock_disable() - Disable the clock for given id
@@ -737,7 +738,6 @@ static int zynqmp_pm_aes_engine(const u64 address, u32 *out)
 }
 
 static const struct zynqmp_eemi_ops eemi_ops = {
-	.clock_enable = zynqmp_pm_clock_enable,
 	.clock_disable = zynqmp_pm_clock_disable,
 	.clock_getstate = zynqmp_pm_clock_getstate,
 	.clock_setdivider = zynqmp_pm_clock_setdivider,
diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index fa1195c7..77365d1 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -296,7 +296,6 @@ struct zynqmp_pm_query_data {
 struct zynqmp_eemi_ops {
 	int (*fpga_load)(const u64 address, const u32 size, const u32 flags);
 	int (*fpga_get_status)(u32 *value);
-	int (*clock_enable)(u32 clock_id);
 	int (*clock_disable)(u32 clock_id);
 	int (*clock_getstate)(u32 clock_id, u32 *state);
 	int (*clock_setdivider)(u32 clock_id, u32 divider);
@@ -331,6 +330,7 @@ const struct zynqmp_eemi_ops *zynqmp_pm_get_eemi_ops(void);
 int zynqmp_pm_get_api_version(u32 *version);
 int zynqmp_pm_get_chipid(u32 *idcode, u32 *version);
 int zynqmp_pm_query_data(struct zynqmp_pm_query_data qdata, u32 *out);
+int zynqmp_pm_clock_enable(u32 clock_id);
 #else
 static inline struct zynqmp_eemi_ops *zynqmp_pm_get_eemi_ops(void)
 {
@@ -349,6 +349,10 @@ static inline int zynqmp_pm_query_data(struct zynqmp_pm_query_data qdata,
 {
 	return -ENODEV;
 }
+static inline int zynqmp_pm_clock_enable(u32 clock_id)
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
