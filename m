Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D491A3A5B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 21:16:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z/R7g/WUCVRpqq61FFE7ovJFoVIcQn8QkJJE61hU27M=; b=sAtHK0PlNRfynI
	ScypZKX6bvcDWAriRQES+7/UB5Rp5sc8j7sKQim3CFEIrV4BhEFmQ2EWU/5MXvtyAvYSn+nLM1fUk
	O+I58xlj3cFN68mEugHg+s5knSZyAJPGZRSMV8KCeMUqNyC037JnGHwz2p5HsbkUPMbXCj7Sm8fiP
	N7ASjW9btzA0pC0avc2uXqfNleOz5w2b8qNksv5TEwvDKLpRbYo7p6i3yFQ1S+1kDA7Wwtjo+uvkb
	EC1CD02QV9Euhl/fsC2TzSyINtGrDd8vWcO5cL28OpMBIKlVm8dhaQz/TWkfeYXJH19nQMDzgEgSn
	mywFbxWOf46eeQGVa1Ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMceh-0003vE-C0; Thu, 09 Apr 2020 19:16:03 +0000
Received: from mail-dm6nam11on2049.outbound.protection.outlook.com
 ([40.107.223.49] helo=NAM11-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMcbd-0007KY-Lt
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 19:13:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HOHOKOMp5v+wZiGEJ9lXcLXPyrAyuE1Vr9QB0Vrme/B8dolvkIkkhPuIiFD/b+TFS1rLuKT6OxdoOxdWWfWYYOeYo0YbE4a8DYDFm4YrfBaPTJ97MI8QDkrQFDBjkeUKKlbJNRsxA8fSN8h0e3C1Q4f99hOeXL0bpG9FGP9/fz+tIqfzZASNfCg5Ul+87ldF9pGpM5gAdox0EszCncFmydGjP+FzEguFVaAyoKIIVb7FkQkLkfhK4asT9ZXVbJsteZe0kH8bBSKype5bXLwK6JZ9qVxJaOyGiC6hWY6DRXS9Onf87fLpdOTdi0TwG5CuPcN/MBydAwUe+HVNvsq7lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KsHwjiDtIA212nyXKvw7jSTkJbgQxuduxd/ggG0x8Eg=;
 b=l6xJb6PqhfYpug8R7gqakxOjGB3ie8aQ7N9BT03Pwq0OH3Ru6IXalPd8NH0etsAjfxZd+w7n9Fx0MLvNbY6RQtFdzSPr7OdaUmNrLhqb9eiSrM7g/okDPqqpzIYJaAtcaqxRfEpEbRtPii22zkKZdEafDvx50cHMCnEMuPQgmPOxxDz9C28fMDMF3sXhdA6x/sJtqX6PAfMbyh7H42MX2YWau2YAmivOusUHT4lxTN+xT4jCKdxV1iOmdYUeXQ9SMVuodJbVO/0B0+N8hDWJtsioGMwDPU8D4S6HoX0JfsGJRuMdqVreNLtwnTIDxI3FsIT1fz5b5eWALW4DHHSjJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=linaro.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KsHwjiDtIA212nyXKvw7jSTkJbgQxuduxd/ggG0x8Eg=;
 b=OndaXyGNU5KXBaj2o2FjwLDP3d630Ba/ubAtFtcxeD2L1hyYB7MrTpYKs7aWRgxsSgccBkXx5OyX/THLSrPGndH1eo+E7Jo7bfASPfEDT+J6vTRY0q6ZAKup2UFLd2Z6PYW0st/63/hOvgR9D7g6Ke+uCofUy/mv0QwA9EmnVJA=
Received: from MN2PR05CA0056.namprd05.prod.outlook.com (2603:10b6:208:236::25)
 by MN2PR02MB6192.namprd02.prod.outlook.com (2603:10b6:208:181::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.15; Thu, 9 Apr
 2020 19:12:50 +0000
Received: from BL2NAM02FT042.eop-nam02.prod.protection.outlook.com
 (2603:10b6:208:236:cafe::30) by MN2PR05CA0056.outlook.office365.com
 (2603:10b6:208:236::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.14 via Frontend
 Transport; Thu, 9 Apr 2020 19:12:50 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; linaro.org; dkim=none (message not signed)
 header.d=none;linaro.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT042.mail.protection.outlook.com (10.152.76.193) with Microsoft SMTP
 Server id 15.20.2900.15 via Frontend Transport; Thu, 9 Apr 2020 19:12:50
 +0000
Received: from [149.199.38.66] (port=44296 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jMcb9-00060A-8t; Thu, 09 Apr 2020 12:12:23 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jMcbZ-0007NV-NA; Thu, 09 Apr 2020 12:12:49 -0700
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jMcbR-0007La-Tz; Thu, 09 Apr 2020 12:12:41 -0700
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH v4 04/25] firmware: xilinx: Remove eemi ops for clock_enable
Date: Thu,  9 Apr 2020 12:11:53 -0700
Message-Id: <1586459534-8997-5-git-send-email-jolly.shah@xilinx.com>
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
 SFS:(10009020)(4636009)(396003)(346002)(376002)(136003)(39860400002)(46966005)(70206006)(44832011)(4326008)(47076004)(6636002)(316002)(7696005)(478600001)(186003)(82740400003)(107886003)(70586007)(2616005)(54906003)(5660300002)(36756003)(81156014)(426003)(26005)(81166007)(8676002)(2906002)(356004)(7416002)(336012)(9786002)(8936002)(6666004);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2da33704-e211-4a9e-4361-08d7dcb9fefd
X-MS-TrafficTypeDiagnostic: MN2PR02MB6192:
X-Microsoft-Antispam-PRVS: <MN2PR02MB6192C122A0D4B92A5AD03876B8C10@MN2PR02MB6192.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:229;
X-Forefront-PRVS: 0368E78B5B
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xhZkJfSv+YJYmr1X/en5904p7I7dd8BDbOLpWA5xl2Rkfxz9B6OQ0z0ehtCTBTDDwHiZZi3mMOp9b27vGtBPPgXF5jquD8IYPG/jIKDB+slKRJgxRGGf82kLPGkh50pIyAaWOpy5t9bgVtJJoBy3cQXw4C02chK67RZdvpwfc7fVXPuHefwzcMgYq/aERnzbS7dFn7SSE2D7csQYDQrXO/K87kwuClSIMncOxvmnJzzDfU9jGBIGf9oNifSwl0AZ1B0DNC4SpreEfV4cGCoaxSf1zEeawxV/xaht8iJqapAFmaGv2U/Jr/jEYpN8Akg31vpB7j8V9EDfLrGNKNVPuAZr3XIbhMXnyYDe6465zdx4tuARXS7WVcysXn8WkLXnw+wEvWe3OlrY0XBPTTkSZK2lHzcWPRPjLmgdRZBdnBh5+BoHtNeDriSH04BVWTevtOlTg+jdbu9AgBfuskrZ68ISNByyh7lhgfFrZwynjS5YBmtctvujpDSM1H0WE1Cgnr3qYO6oUJSD2TZP2TOZFw==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2020 19:12:50.1135 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2da33704-e211-4a9e-4361-08d7dcb9fefd
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR02MB6192
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_121253_729302_8321630C 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.223.49 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.223.49 listed in wl.mailspike.net]
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
