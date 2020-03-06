Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8EE117C911
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 00:52:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J5swhkWJ7z3r8XZZ4zhZ1i2bgICPW0KJKuIhLb5yTQY=; b=YjP2lJ/w6ettae
	hDASi1XYxdm9K5SXqm65PvmSU86lKihpW7LujxXPVgUZhKomgmUIeK4AcFaS2zz4L1Kk10hXqf+4u
	WH8gcA02Ac/rNnHsO/AbKWfyPQQhIvSAr86knvVfBn4iYA174ymie3NYRGL38hD0uTCC4SRuLR4zL
	etBwdBJx4fFHZKzY8BAraa15a8FIRzry0GP6YnR+0RtGFdja0HmH+nI7cH3ivmJH3Sg28IW4seW2M
	WmAd3iWP+eX6cgT+Ggycy1cHv8KY8t0+bOx7SC5GQpHLcCcK3DR3xMNMLfCV5pUsOoVkNIxn90wNH
	oVWk1cfMjGqOfqKAkTBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAMlM-0001yI-BJ; Fri, 06 Mar 2020 23:52:16 +0000
Received: from mail-co1nam11on2042.outbound.protection.outlook.com
 ([40.107.220.42] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAMhG-00060o-4c
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 23:48:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LymF9Xh0st/nWY+ScajCL3scjGemwPzpWkq1DaAkJc7m61VXB7tnEQzR2IWsNHztjqgs0ujbnnuTEIM0pbrfkZqq61raGVN1FGaK58y3UrUt5NU4eQykHk0pmgcTdklf+KItBhPcTnhiweJsaqxpZFJZzgq4iM+4ba2A/K3GAqhFxYRBr8GHZ1l5+Spk7BzgTDxFV4pFAo2GgRnhoKXNheCG/7zM/yKeKZ/ovVml1ABy1Des9gL1vHvVsMfyw0IqYhrcH+Sx9YrW318slFoqsFswj9griWqSkEjkpiUV2IuKblaF2KtvjKpicg+/z1S0EhmBwi3yKfnuOyoY/jBg5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jaa56BXCyqsMALFjc01SIc4++0Jf6sC60obubvTZMes=;
 b=LyTvcyq6nOmxAarDyePmSY7RvlgYH37VlajwlTZVfqr4t2zrduk1iicZtuEWCOejifjByBwP2kA+iub/B5M4G0IHdTQ2m4tYLVJ5TSmSvcec/mzuEySkHbi4vJxcYH7ZlVcieqzluJRA4VEoWlbcEQp62WDoIkLt+r9J098+ec9wcTYvpg1v3nLQaPiJWinIOwt4G8gbpNIC4AcdB7CJ4rPPlhHvD5gdxaPp1XPqPqG9BbBhsojeVo3r9nyPP0bFddnukjMMzsLEGv9LCMzAnXNwOuGa9oK0DIvh3tAUsko63RTssziEHh3GsKIiigfnDp+6C/7OPjo90ATWWAUQGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jaa56BXCyqsMALFjc01SIc4++0Jf6sC60obubvTZMes=;
 b=OWdbK3O1YKHbICIwbK9m4uIfXpo1hhZMc25i1E3/iiJ9Tj3a3II0Zhv7d1LkfYsTABSs3wA0HfDhFS19cRgMPaSdm+Dq4/vlK5QUvWRfYklNAJS3AmjtCtA0m4jipTaXJaoLjhiuDsEvn27P1e7GJixkiBwdi2zWDyvM/8ir+/Q=
Received: from MN2PR16CA0027.namprd16.prod.outlook.com (2603:10b6:208:134::40)
 by CY4PR02MB3237.namprd02.prod.outlook.com (2603:10b6:910:7c::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.15; Fri, 6 Mar
 2020 23:47:59 +0000
Received: from BL2NAM02FT004.eop-nam02.prod.protection.outlook.com
 (2603:10b6:208:134:cafe::5e) by MN2PR16CA0027.outlook.office365.com
 (2603:10b6:208:134::40) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.15 via Frontend
 Transport; Fri, 6 Mar 2020 23:47:59 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT004.mail.protection.outlook.com (10.152.76.168) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2793.11
 via Frontend Transport; Fri, 6 Mar 2020 23:47:59 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jAMhC-0003QF-EZ; Fri, 06 Mar 2020 15:47:58 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jAMh7-0002g8-BN; Fri, 06 Mar 2020 15:47:53 -0800
Received: from xsj-pvapsmtp01 (mail.xilinx.com [149.199.38.66] (may be forged))
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 026NlkMj001007; 
 Fri, 6 Mar 2020 15:47:46 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jAMh0-0002eg-5X; Fri, 06 Mar 2020 15:47:46 -0800
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH v3 10/24] firmware: xilinx: Remove eemi ops for clock set/get
 parent
Date: Fri,  6 Mar 2020 15:47:18 -0800
Message-Id: <1583538452-1992-11-git-send-email-jolly.shah@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583538452-1992-1-git-send-email-jolly.shah@xilinx.com>
References: <1583538452-1992-1-git-send-email-jolly.shah@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(396003)(39860400002)(136003)(199004)(189003)(70206006)(36756003)(7416002)(8936002)(336012)(26005)(70586007)(81166006)(81156014)(2906002)(478600001)(186003)(8676002)(6636002)(44832011)(2616005)(9786002)(7696005)(356004)(5660300002)(4326008)(316002)(107886003)(54906003)(426003)(6666004)(42866002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR02MB3237; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: dc42d4f0-d4ca-4377-e722-08d7c228cd26
X-MS-TrafficTypeDiagnostic: CY4PR02MB3237:
X-Microsoft-Antispam-PRVS: <CY4PR02MB3237FBF849938E186DEADD13B8E30@CY4PR02MB3237.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:115;
X-Forefront-PRVS: 0334223192
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tvvbrATaJvlrwWX25ytubTVAgXnyubcWIjynlmjaUVIOnHprOs0Bn/ukuUpfazgB4Z/2gCzT02eV3upXDNRsaJpUn8i033t8N/ioX8/T7AU+BXeHuwaIfNqj4FppaZWQwl/lKqP7AmmcuhGBWdTIv2kx543rJKHDaPsb4wLPwnWWenMm+m8RZqvHbhPskg/YKC2GKGHE84dXsdv931Sy2gqHsBB8v7ZcbjItDe5UKb7IwNIW5WIIjJQI7l5KjdgHYHfSV/dWNDR8SC0qvTy/zPjkPMb/TzsxxQxy9TehgJJ1/B/XEy/lJpCjqFQ+yYG7nxrbMEbscM0s0odqzWJvw3PF1l2+SqwFtGwF+xwIiRA3urHmp51azjpTjY/D1JrQGiT6KMlgbc/yYd0s5D5ARuOUzilviQBoQ+FWvIXefusj9l6IWSv/OiTcAAXvVu9zTgFqKMs3sdLw8gk4ZFGHLjr7g4zVNoIkWuznDyJHCfdh6gXL9DuefcJBo4JyCVEl
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2020 23:47:59.0171 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: dc42d4f0-d4ca-4377-e722-08d7c228cd26
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR02MB3237
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_154802_215255_4530587B 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.220.42 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 drivers/clk/zynqmp/clk-mux-zynqmp.c  | 6 ++----
 drivers/firmware/xilinx/zynqmp.c     | 8 ++++----
 include/linux/firmware/xlnx-zynqmp.h | 4 ++--
 3 files changed, 8 insertions(+), 10 deletions(-)

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
index 60a5675..563c77e 100644
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
@@ -718,8 +720,6 @@ static int zynqmp_pm_set_requirement(const u32 node, const u32 capabilities,
 }
 
 static const struct zynqmp_eemi_ops eemi_ops = {
-	.clock_setparent = zynqmp_pm_clock_setparent,
-	.clock_getparent = zynqmp_pm_clock_getparent,
 	.ioctl = zynqmp_pm_ioctl,
 	.reset_assert = zynqmp_pm_reset_assert,
 	.reset_get_status = zynqmp_pm_reset_get_status,
diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index 42dbdf3..f94cfa8 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -288,8 +288,6 @@ struct zynqmp_pm_query_data {
 struct zynqmp_eemi_ops {
 	int (*fpga_load)(const u64 address, const u32 size, const u32 flags);
 	int (*fpga_get_status)(u32 *value);
-	int (*clock_setparent)(u32 clock_id, u32 parent_id);
-	int (*clock_getparent)(u32 clock_id, u32 *parent_id);
 	int (*ioctl)(u32 node_id, u32 ioctl_id, u32 arg1, u32 arg2, u32 *out);
 	int (*reset_assert)(const enum zynqmp_pm_reset reset,
 			    const enum zynqmp_pm_reset_action assert_flag);
@@ -317,6 +315,8 @@ int zynqmp_pm_clock_setdivider(u32 clock_id, u32 divider);
 int zynqmp_pm_clock_getdivider(u32 clock_id, u32 *divider);
 int zynqmp_pm_clock_setrate(u32 clock_id, u64 rate);
 int zynqmp_pm_clock_getrate(u32 clock_id, u64 *rate);
+int zynqmp_pm_clock_setparent(u32 clock_id, u32 parent_id);
+int zynqmp_pm_clock_getparent(u32 clock_id, u32 *parent_id);
 int zynqmp_pm_invoke_fn(u32 pm_api_id, u32 arg0, u32 arg1,
 			u32 arg2, u32 arg3, u32 *ret_payload);
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
