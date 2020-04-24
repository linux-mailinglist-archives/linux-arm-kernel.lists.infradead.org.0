Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 458BB1B816C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 23:01:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JDDjXwNHr50Y6+He7wYSLy9jQ2ae7vJq3FoDHVpPWhs=; b=ZTvH1yfI1VYdfm
	sW5VtZrwTPfHNj1DyWcWL/QBeZu4gCbzyRyvBSdxPXCH/7MqnN+aM13pwFLQ248nQY+KEJDwAok0p
	NWBCVPH/ytffdUpLDDO/1HffaaDoAJPkhGOb3z43AjNo2R4NsjU5PsQ73ojfP04jiqcBUiiEAVLkd
	KE5okm3X6jnl9ggQcfeWWkfiIrJjvbSajrJOkeoyXqe9WwIF4q4DP1vagGDPNlgxZQIOr4u4uYeAj
	HbBGeqx7lkuwRxXZE/LcZfr4H7EqDvY8QGLlHCm2GpIhTHV1vL+xuUDqhaEIvVxUEFee2DEom+mqZ
	RFkPKP6FJN9GoJD/ud4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS5RY-0001qL-DV; Fri, 24 Apr 2020 21:01:04 +0000
Received: from mail-eopbgr700074.outbound.protection.outlook.com
 ([40.107.70.74] helo=NAM04-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS5Oy-0006Iw-Tf
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 20:58:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EQJaBHc6PvjTNdizalncVvpAbzCeS/Uq2UGnaGr2aAPdRAKa6JJVbFN/bxQkb0vk29mp/1Oads/gbHmDjnfPcCuLPCxRuUc3UojnzAFPlj+FXAno0uT/8AGdcF+JBrNB2+5OiJWLLjZoxygoNOwFt8Nz46Hryqi6OJ6o8cZvk57U4TL6dbyFZ5Ds2Ur7r/eUjIyqHCPgyfbrdCszpjAclgJw6TR2slrOcaNKmxlgCvw217b0490w7qLnuJdZvR/KIUsqQ02UBi0r0tmEcptmwspMaLEmuk13IgmDdZQa0oLVyzrvyoU0fLiWtJuGAWA5IuOgpiIMIbMpaoKu05sXVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z8vxUs/0dedErrEdwi1bx+iB6oF92F7WrtxM2KNCHZM=;
 b=lIkiurGywIFRyPPpYy//78FbEqSqg1mwCzAJ9Y2PitGKBmKaiRZBcIN6035JHCKmDZUO7iP8aRaLtK3ZHDHHj6qS0WMlOPVkSS+Gy+UWPmmNeaiCUKmmNVa+b0Sydmyi05KOlbfd+aPSfv6cQUTq15xwHE1ZLJFrPLuoXjh3+3JufDaQHo4I6ZyO3MjICIcgUa/vlOVzvZlDWKI+hf80w1NuFHjc79Mz0re78cWOQxiZEaqQcVHwFfKQ87d0hNIUZBzWhthbn9M5x0j7gl5BubjrMzzigt7Qhxz+zj/kljSddjJyYFIF4YkDmRRsqnZUDsyLnhzb5NL+t1mUL6wFdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z8vxUs/0dedErrEdwi1bx+iB6oF92F7WrtxM2KNCHZM=;
 b=TV9jHjzvBZVa6MnjHBNOKh2gpiluJT/4KNgeDUPXHJa2mWXgD3lvMqvw+XFYmTFhHTA+ZeH4asV4T5y2AQ/wLMA+Cr7B5jh+FcyIvHLT8QFdsPgGSszrgX3AOlk8aSvfnwNA+cXmbip1VpfF8ykwD5Lxjlbev0QNr6UwZyELUI4=
Received: from CY4PR18CA0041.namprd18.prod.outlook.com (2603:10b6:903:9a::27)
 by DM5PR02MB3798.namprd02.prod.outlook.com (2603:10b6:4:b0::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.29; Fri, 24 Apr
 2020 20:58:21 +0000
Received: from CY1NAM02FT012.eop-nam02.prod.protection.outlook.com
 (2603:10b6:903:9a:cafe::2) by CY4PR18CA0041.outlook.office365.com
 (2603:10b6:903:9a::27) with Microsoft SMTP Server (version=TLS1_2,
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
 CY1NAM02FT012.mail.protection.outlook.com (10.152.75.158) with Microsoft SMTP
 Server id 15.20.2937.19 via Frontend Transport; Fri, 24 Apr 2020 20:58:20
 +0000
Received: from [149.199.38.66] (port=33200 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jS5Nl-0002CY-M8; Fri, 24 Apr 2020 13:57:09 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jS5Ou-0007N4-LL; Fri, 24 Apr 2020 13:58:20 -0700
Received: from xsj-pvapsmtp01 (xsj-pvapsmtp01.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 03OKwJEW030383; 
 Fri, 24 Apr 2020 13:58:19 -0700
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jS5Ot-0007Lo-8O; Fri, 24 Apr 2020 13:58:19 -0700
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH v5 10/25] firmware: xilinx: Remove eemi ops for clock set/get
 parent
Date: Fri, 24 Apr 2020 13:57:52 -0700
Message-Id: <1587761887-4279-11-git-send-email-jolly.shah@xilinx.com>
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
 SFS:(10009020)(4636009)(376002)(396003)(39860400002)(346002)(136003)(46966005)(186003)(9786002)(81156014)(36756003)(8676002)(107886003)(5660300002)(70586007)(4326008)(8936002)(44832011)(7696005)(47076004)(2616005)(82310400002)(7416002)(426003)(26005)(70206006)(336012)(82740400003)(6666004)(6636002)(356005)(316002)(478600001)(2906002)(81166007)(54906003);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8a0a7c19-46d4-4091-f287-08d7e89238ac
X-MS-TrafficTypeDiagnostic: DM5PR02MB3798:
X-Microsoft-Antispam-PRVS: <DM5PR02MB379815609FBC1D3F21337055B8D00@DM5PR02MB3798.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:115;
X-Forefront-PRVS: 03838E948C
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0H17qryxifryZ9dPaBsjZWW8jcDUdujNhiVeHzTijHCNmFYxlbyIZwtiySm7UOgjE9nk2/gkzPFMkHlBHwS696ufs2KYPa1+f48j9V+xZW2INDRs6F2AaQCJd1d5jT4AZFMrxOV3tv7mju9aHvml9FWFtKtU20Wyx84iSbMGIs7PcxutL0dEbDPTTNIbUoMQIka9AXzwAsimR61n9GPa4sAxa661UIYO5LdOihgs8KVQl5JAmM5nzCamWz18Xg+q8FZXXd6MmiUr7unEVpgOltKyFBu89Ia7A+GkN4Z7iLGgbUKQRuCvjynzY1UHwP/kOftAL7TCMGr4dziZymJDzVGbTruSkKdkxPhTCOZiynUmUyGWuPnOZBCzJ0hRzm8a+PUcmjdNQfAxNmyFInXMdjUfLXCr1T485ej+nSTgO7ipWwSnm04voXyhedOo8b+iM+yEVY4/NnzQh7Msb7HN8AQmfpI7JLr/F7qfy0ynkeWozCLyq063vusf96Ir8deXFo8wKq0K1ZwqHZDADhVnZw==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2020 20:58:20.9792 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a0a7c19-46d4-4091-f287-08d7e89238ac
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR02MB3798
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_135824_957060_752A98E3 
X-CRM114-Status: GOOD (  10.67  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.70.74 listed in list.dnswl.org]
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

Use direct function call instead of eemi ops for clock set/get parent.

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
---
 drivers/clk/zynqmp/clk-mux-zynqmp.c  |  6 ++----
 drivers/firmware/xilinx/zynqmp.c     |  8 ++++----
 include/linux/firmware/xlnx-zynqmp.h | 12 ++++++++++--
 3 files changed, 16 insertions(+), 10 deletions(-)

diff --git a/drivers/clk/zynqmp/clk-mux-zynqmp.c b/drivers/clk/zynqmp/clk-mux-zynqmp.c
index 0af8f74..0619414 100644
--- a/drivers/clk/zynqmp/clk-mux-zynqmp.c
+++ b/drivers/clk/zynqmp/clk-mux-zynqmp.c
@@ -47,9 +47,8 @@ static u8 zynqmp_clk_mux_get_parent(struct clk_hw *hw)
 	u32 clk_id = mux->clk_id;
 	u32 val;
 	int ret;
-	const struct zynqmp_eemi_ops *eemi_ops = zynqmp_pm_get_eemi_ops();
 
-	ret = eemi_ops->clock_getparent(clk_id, &val);
+	ret = zynqmp_pm_clock_getparent(clk_id, &val);
 
 	if (ret)
 		pr_warn_once("%s() getparent failed for clock: %s, ret = %d\n",
@@ -71,9 +70,8 @@ static int zynqmp_clk_mux_set_parent(struct clk_hw *hw, u8 index)
 	const char *clk_name = clk_hw_get_name(hw);
 	u32 clk_id = mux->clk_id;
 	int ret;
-	const struct zynqmp_eemi_ops *eemi_ops = zynqmp_pm_get_eemi_ops();
 
-	ret = eemi_ops->clock_setparent(clk_id, index);
+	ret = zynqmp_pm_clock_setparent(clk_id, index);
 
 	if (ret)
 		pr_warn_once("%s() set parent failed for clock: %s, ret = %d\n",
diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index 8462201..b0aa967 100644
--- a/drivers/firmware/xilinx/zynqmp.c
+++ b/drivers/firmware/xilinx/zynqmp.c
@@ -485,11 +485,12 @@ EXPORT_SYMBOL_GPL(zynqmp_pm_clock_getrate);
  *
  * Return: Returns status, either success or error+reason
  */
-static int zynqmp_pm_clock_setparent(u32 clock_id, u32 parent_id)
+int zynqmp_pm_clock_setparent(u32 clock_id, u32 parent_id)
 {
 	return zynqmp_pm_invoke_fn(PM_CLOCK_SETPARENT, clock_id,
 				   parent_id, 0, 0, NULL);
 }
+EXPORT_SYMBOL_GPL(zynqmp_pm_clock_setparent);
 
 /**
  * zynqmp_pm_clock_getparent() - Get the clock parent for given id
@@ -501,7 +502,7 @@ static int zynqmp_pm_clock_setparent(u32 clock_id, u32 parent_id)
  *
  * Return: Returns status, either success or error+reason
  */
-static int zynqmp_pm_clock_getparent(u32 clock_id, u32 *parent_id)
+int zynqmp_pm_clock_getparent(u32 clock_id, u32 *parent_id)
 {
 	u32 ret_payload[PAYLOAD_ARG_CNT];
 	int ret;
@@ -512,6 +513,7 @@ static int zynqmp_pm_clock_getparent(u32 clock_id, u32 *parent_id)
 
 	return ret;
 }
+EXPORT_SYMBOL_GPL(zynqmp_pm_clock_getparent);
 
 /**
  * zynqmp_is_valid_ioctl() - Check whether IOCTL ID is valid or not
@@ -744,8 +746,6 @@ static int zynqmp_pm_aes_engine(const u64 address, u32 *out)
 }
 
 static const struct zynqmp_eemi_ops eemi_ops = {
-	.clock_setparent = zynqmp_pm_clock_setparent,
-	.clock_getparent = zynqmp_pm_clock_getparent,
 	.ioctl = zynqmp_pm_ioctl,
 	.reset_assert = zynqmp_pm_reset_assert,
 	.reset_get_status = zynqmp_pm_reset_get_status,
diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index a71f52c..7abb683 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -296,8 +296,6 @@ struct zynqmp_pm_query_data {
 struct zynqmp_eemi_ops {
 	int (*fpga_load)(const u64 address, const u32 size, const u32 flags);
 	int (*fpga_get_status)(u32 *value);
-	int (*clock_setparent)(u32 clock_id, u32 parent_id);
-	int (*clock_getparent)(u32 clock_id, u32 *parent_id);
 	int (*ioctl)(u32 node_id, u32 ioctl_id, u32 arg1, u32 arg2, u32 *out);
 	int (*reset_assert)(const enum zynqmp_pm_reset reset,
 			    const enum zynqmp_pm_reset_action assert_flag);
@@ -331,6 +329,8 @@ int zynqmp_pm_clock_setdivider(u32 clock_id, u32 divider);
 int zynqmp_pm_clock_getdivider(u32 clock_id, u32 *divider);
 int zynqmp_pm_clock_setrate(u32 clock_id, u64 rate);
 int zynqmp_pm_clock_getrate(u32 clock_id, u64 *rate);
+int zynqmp_pm_clock_setparent(u32 clock_id, u32 parent_id);
+int zynqmp_pm_clock_getparent(u32 clock_id, u32 *parent_id);
 #else
 static inline struct zynqmp_eemi_ops *zynqmp_pm_get_eemi_ops(void)
 {
@@ -377,6 +377,14 @@ static inline int zynqmp_pm_clock_getrate(u32 clock_id, u64 *rate)
 {
 	return -ENODEV;
 }
+static inline int zynqmp_pm_clock_setparent(u32 clock_id, u32 parent_id)
+{
+	return -ENODEV;
+}
+static inline int zynqmp_pm_clock_getparent(u32 clock_id, u32 *parent_id)
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
