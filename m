Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47F1C1B8170
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 23:02:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iDmjkbq0TDAhkQoIMgpV06r+QcCW9WOjrGhy6UR7O4A=; b=te5i5u/F+54ngt
	V7tw0y5cOMHVfp3yqobMeP+ZxvbmewY/iCVAdHV/BeJ73OX93YLeqhRb4x3t7kYXjVoH+Zc4Px+F0
	5kMnhBuwRaaA795ttEx0w+HXfNEgDn3eOU1lCim1dQsdXwhb9aBRUyh+GjGtFJJkj6RdTi4A74VrQ
	0IwJDfDyT1ebs3R4Hb7ryBXxXKDwPX7C9Bnt3CaCTCMhn2Pnx0kajaqj49RMWSVK0GhaojTz+a6Dg
	nqEpfMYM//+55ysQA67bLPfIR85I5mBNzHDuE57vpRYgN/CUDP3cWe7zBXygULdjGN6aNKhSUT/Ei
	BSUs42AnjMCpsXNOd6DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS5Sl-0002wL-Ai; Fri, 24 Apr 2020 21:02:19 +0000
Received: from mail-mw2nam12on2045.outbound.protection.outlook.com
 ([40.107.244.45] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS5Oz-0006KT-Vp
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 20:58:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ayUETFL725WHvYqWEkBxycImH9yVSolAqqAEOOETXjaBiJr4XfaqwRxUNYRrbbPt6JhNngeBe6NHJX3OCzK7ghSwygu7haiNbdBMlF6ckMt6yiO1r9Pgxit7O1+nHlNKlDlWCtuyTucP4bvgcDBRLDApOBBqswK/6HktzCiOOJe39ejDKEzvdP200sOloUDaZfa5JGxayPpxLxjZIrg2i5O0f734x5TfvNdG9tUgD2RuU9AkhEbKn5e4TIQmNG+uDGTFZjujhg+9sQqgymTEYE8pVZKMeNIuIh/LOSnYDBisEvMv3jw53c1E19LGFsW/XP0S8TinRPM9xaIfvodHbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4Wn0MOr//dSvPxJzOp7hW7sFwpMBUymVIfq0k0171Nk=;
 b=IGUcD4EW8WFiu5sgsFD9L5NkrZOgLpajJGLC0njFu49n0oBqm7Jr9utoG+CV0A18afv8XWO4cWH+7FwiiuyOrMQDuVyaLMYGHz6b2f2vjKsjyiW6yYS1BQx+p7Yh2wJVRo9FEUxvsV0xaFw4noBysm2lXoEiaCmJWeIEqfcJEmq35/IIXC1+IVM9/5PU8p+Z/fYXwUOnduG8PVV7RXQzG7JdWYqERuMH0Ajx1SVfZv00PVPDZed8nuFDNzWjxxa5j/Q6XOVJ3IQEUhpKCir2rRMPjVA/8c7kMuA9q4L61lpyTCwirSQL7edgSEy7ASwq6MwSnVCNa8/s+NQXeBmzVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4Wn0MOr//dSvPxJzOp7hW7sFwpMBUymVIfq0k0171Nk=;
 b=JqFkQMc2WHp5D3WugXnqLSBNeYFeIzAe4kSpGyW6qFtlQ5oMXv8QuPE2mVIvV3vcYYSkB6Tf5c4tjT3skY/vmR0/ltUfDjJfcwLNUafqkvuOIXvR/Zicy+nudtS8UUsa9PcAerH0GZZ47zSZTX2I65TarcxV67fHKyWFyUrhmIU=
Received: from SN4PR0201CA0025.namprd02.prod.outlook.com
 (2603:10b6:803:2e::11) by BN6PR02MB3265.namprd02.prod.outlook.com
 (2603:10b6:405:62::39) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.30; Fri, 24 Apr
 2020 20:58:22 +0000
Received: from SN1NAM02FT010.eop-nam02.prod.protection.outlook.com
 (2603:10b6:803:2e:cafe::27) by SN4PR0201CA0025.outlook.office365.com
 (2603:10b6:803:2e::11) with Microsoft SMTP Server (version=TLS1_2,
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
 SN1NAM02FT010.mail.protection.outlook.com (10.152.72.86) with Microsoft SMTP
 Server id 15.20.2937.19 via Frontend Transport; Fri, 24 Apr 2020 20:58:21
 +0000
Received: from [149.199.38.66] (port=33266 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jS5Nm-0002Cq-8E; Fri, 24 Apr 2020 13:57:10 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jS5Ov-0007N4-7Y; Fri, 24 Apr 2020 13:58:21 -0700
Received: from xsj-pvapsmtp01 (smtp.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 03OKwJUO026317; 
 Fri, 24 Apr 2020 13:58:19 -0700
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jS5Os-0007Lo-Vj; Fri, 24 Apr 2020 13:58:19 -0700
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH v5 06/25] firmware: xilinx: Remove eemi ops for clock_getstate
Date: Fri, 24 Apr 2020 13:57:48 -0700
Message-Id: <1587761887-4279-7-git-send-email-jolly.shah@xilinx.com>
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
 SFS:(10009020)(4636009)(376002)(136003)(39860400002)(396003)(346002)(46966005)(6666004)(54906003)(2616005)(82310400002)(70586007)(81166007)(316002)(9786002)(5660300002)(36756003)(70206006)(426003)(82740400003)(7416002)(336012)(478600001)(2906002)(44832011)(7696005)(47076004)(186003)(8676002)(356005)(6636002)(81156014)(107886003)(26005)(8936002)(4326008);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 703376ff-10dd-4e7f-601c-08d7e89238fd
X-MS-TrafficTypeDiagnostic: BN6PR02MB3265:
X-Microsoft-Antispam-PRVS: <BN6PR02MB3265E9F8D3ED71F1623918F8B8D00@BN6PR02MB3265.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:229;
X-Forefront-PRVS: 03838E948C
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: S4vekZNH/OVPRtfz8tzxwWBoinJKSvke3pp4GiDYq2zNcgXGzRlKsJ/rzaYKSKNcaM/13SL8bIPYfgad88C1Jv9RZiRP3EyBtY6XgG7rOxY1zpS2m88NBvyXkHRXEl3BoHNpe7xGQJLElhjo8eCVjCi8/wHjvEQgWB8LqjeRyIBPcUVbptLM19KQp3hY8ZQjmKa+6arV1Q3pwRFmzrhAChBcZdW6KUFh4HRVDMgMVTbBvm2pByCJqdkCxHJ8CCu8uh88pWu8gXY/7qeENTSkQKpwnTkBs2jSWoA7RYU1TcK7KYp07c5kS3m2BOIoLDSMORm7bj7DfeKNZ7sAUhDu0heaeFZE+0seFNqGsRTzSVFBRSiCwVS2Dzxx8VaOFMRolN5ot7fdssHs1SGcg64iSbW/daI+cHD/MgFPUbXi+RQoBmmEy0ZXO6m1IYhJZ/ZSqZFeW1Ej9/qHEQyXyGYCtsJ1v50KseQSpCJWxN9RBpusRP5LyByVZLJbalA1lK3JGSCLNUPkMnonFs1eDzxpwQ==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2020 20:58:21.5063 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 703376ff-10dd-4e7f-601c-08d7e89238fd
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR02MB3265
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_135826_019997_EB8A0DE7 
X-CRM114-Status: GOOD (  10.67  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.244.45 listed in list.dnswl.org]
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

Use direct function call instead of eemi ops for clock_getstate.

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
---
 drivers/clk/zynqmp/clk-gate-zynqmp.c | 3 +--
 drivers/clk/zynqmp/pll.c             | 3 +--
 drivers/firmware/xilinx/zynqmp.c     | 4 ++--
 include/linux/firmware/xlnx-zynqmp.h | 6 +++++-
 4 files changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/clk/zynqmp/clk-gate-zynqmp.c b/drivers/clk/zynqmp/clk-gate-zynqmp.c
index 11f1b97..10c9b88 100644
--- a/drivers/clk/zynqmp/clk-gate-zynqmp.c
+++ b/drivers/clk/zynqmp/clk-gate-zynqmp.c
@@ -77,9 +77,8 @@ static int zynqmp_clk_gate_is_enabled(struct clk_hw *hw)
 	const char *clk_name = clk_hw_get_name(hw);
 	u32 clk_id = gate->clk_id;
 	int state, ret;
-	const struct zynqmp_eemi_ops *eemi_ops = zynqmp_pm_get_eemi_ops();
 
-	ret = eemi_ops->clock_getstate(clk_id, &state);
+	ret = zynqmp_pm_clock_getstate(clk_id, &state);
 	if (ret) {
 		pr_warn_once("%s() clock get state failed for %s, ret = %d\n",
 			     __func__, clk_name, ret);
diff --git a/drivers/clk/zynqmp/pll.c b/drivers/clk/zynqmp/pll.c
index 38b8dbc..41f376a 100644
--- a/drivers/clk/zynqmp/pll.c
+++ b/drivers/clk/zynqmp/pll.c
@@ -222,9 +222,8 @@ static int zynqmp_pll_is_enabled(struct clk_hw *hw)
 	u32 clk_id = clk->clk_id;
 	unsigned int state;
 	int ret;
-	const struct zynqmp_eemi_ops *eemi_ops = zynqmp_pm_get_eemi_ops();
 
-	ret = eemi_ops->clock_getstate(clk_id, &state);
+	ret = zynqmp_pm_clock_getstate(clk_id, &state);
 	if (ret) {
 		pr_warn_once("%s() clock get state failed for %s, ret = %d\n",
 			     __func__, clk_name, ret);
diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index d884805..c11b528 100644
--- a/drivers/firmware/xilinx/zynqmp.c
+++ b/drivers/firmware/xilinx/zynqmp.c
@@ -382,7 +382,7 @@ EXPORT_SYMBOL_GPL(zynqmp_pm_clock_disable);
  *
  * Return: Returns status, either success or error+reason
  */
-static int zynqmp_pm_clock_getstate(u32 clock_id, u32 *state)
+int zynqmp_pm_clock_getstate(u32 clock_id, u32 *state)
 {
 	u32 ret_payload[PAYLOAD_ARG_CNT];
 	int ret;
@@ -393,6 +393,7 @@ static int zynqmp_pm_clock_getstate(u32 clock_id, u32 *state)
 
 	return ret;
 }
+EXPORT_SYMBOL_GPL(zynqmp_pm_clock_getstate);
 
 /**
  * zynqmp_pm_clock_setdivider() - Set the clock divider for given id
@@ -739,7 +740,6 @@ static int zynqmp_pm_aes_engine(const u64 address, u32 *out)
 }
 
 static const struct zynqmp_eemi_ops eemi_ops = {
-	.clock_getstate = zynqmp_pm_clock_getstate,
 	.clock_setdivider = zynqmp_pm_clock_setdivider,
 	.clock_getdivider = zynqmp_pm_clock_getdivider,
 	.clock_setrate = zynqmp_pm_clock_setrate,
diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index f9a84d9..e874f0c 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -296,7 +296,6 @@ struct zynqmp_pm_query_data {
 struct zynqmp_eemi_ops {
 	int (*fpga_load)(const u64 address, const u32 size, const u32 flags);
 	int (*fpga_get_status)(u32 *value);
-	int (*clock_getstate)(u32 clock_id, u32 *state);
 	int (*clock_setdivider)(u32 clock_id, u32 divider);
 	int (*clock_getdivider)(u32 clock_id, u32 *divider);
 	int (*clock_setrate)(u32 clock_id, u64 rate);
@@ -331,6 +330,7 @@ int zynqmp_pm_get_chipid(u32 *idcode, u32 *version);
 int zynqmp_pm_query_data(struct zynqmp_pm_query_data qdata, u32 *out);
 int zynqmp_pm_clock_enable(u32 clock_id);
 int zynqmp_pm_clock_disable(u32 clock_id);
+int zynqmp_pm_clock_getstate(u32 clock_id, u32 *state);
 #else
 static inline struct zynqmp_eemi_ops *zynqmp_pm_get_eemi_ops(void)
 {
@@ -357,6 +357,10 @@ static inline int zynqmp_pm_clock_disable(u32 clock_id)
 {
 	return -ENODEV;
 }
+static inline int zynqmp_pm_clock_getstate(u32 clock_id, u32 *state)
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
