Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B11F7F2BA8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 10:58:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=okMccJiqoUSSbORz/nn8ZS9/MWwCPCOfxepy2uvBUpg=; b=dsyoqw0tU2shuk
	3ZcOpD4LWA+MZ5/683vOd7ZbX93Ub7sqI7EDnmYitMf/Jl35L4lmL1YLj4VTpGQt40HFkgMGW4Td0
	arXaBbrQ8KeI5sPNEpECgPl15eqmuOnQUkvzxAbZujocCRURiBP2kz4KiPjscuFQbvJuxVnklIxpb
	Qtq3KqkhYp/SEDmHqLmh1lvWI+a9RT055HA20j6OeI+vZxlxcdUrNedY3kHzp/8FR7pFz8m9yIvJZ
	4C7ByqV9bas84Zk7vFgBCxPHdehpqoaH0h+c9UMRmXJ7gWGTjOGU3eB8iztT3zNz3OgDCBDuWEAli
	Hyah8ycKwkuhpbu7wGvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSeZ7-0005xd-OE; Thu, 07 Nov 2019 09:58:57 +0000
Received: from mail-eopbgr820040.outbound.protection.outlook.com
 ([40.107.82.40] helo=NAM01-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSeYw-0005x5-J6
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 09:58:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OkYP/R3SqDW5dD7EI5JYpPsLKKsuegYi3X1YHJR5mqVttbjzaf/evlBZH26WaAhAVzfPDH8IiVe4Si8xCtvkxVp/KQ9hYFr0EcvPNYZ4JLW1YTbIIr0hS1CfWklgromWLJV32dqn/nT/30Z6+HX7xc0J4zDCQ4YegKalUDTbgHmJVhvW8yFPPTzUInIPOr8Q1hi3sxK9rRmgh6kfI4v+nCCGD5HLxkTtJkbPXfJ94E2+K4S44Oepv7+AH4SmseI6Nnq9B4O2v1BTGjSeM8Ezy6SWSXzZccDrULANCEmCosi8WGxUh5PdBMysiSr7AunZLRSlcZHPiHWFJtDvb9o7Ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=utnQmyOC7DmJloCvFG9Re5bMwKQqSTdIudL3gjCpA68=;
 b=BfmXpgaXDhGIK3+wFW4W5QWSrzX3WX+TvEP3w0lqqygESwyGVCb0tDsJZLd0ZUS6kkXnRXM1TpyKneMzv2sVK364bi+mZqwQpeT/pW5KqUihLhTk3vU6kVXjPJPZQxB8m9ph0pf6IxQpkUa7bu1F/EDYkRF2J+Y3/ROp2kYW9SNhlBOy8XOU9LcuEfMyerk44vm4Dmok09E3PaDdTuNamVtO6x+IopQ0uJx/50/YdKqZp8xJ+2eLQCQI9pMbJlqRF6PqVN9OV6/rjxRaAf3cqTgiYWO7Tt0qqI0HJrLluBzu91ptjoDVc4lq85rlUsN5RUGXK3n/mLwfCbFqOBzj2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=utnQmyOC7DmJloCvFG9Re5bMwKQqSTdIudL3gjCpA68=;
 b=SyZp80y9m5w74fCbnLkZ2FoVXzPqdKw6SqeDISlttjdZV9fFAwhGyvnM+NWq1zWruheM2nsdU5FSSnZu+boXv6/PsIsEYwjI0KNaebSwK1VMT5yhIPPc4upfeLuOhXhvP2Uge5QfEOWSG4HQL5b9pA4TRlBBpKtd0GwF23dnSAs=
Received: from BL0PR02CA0030.namprd02.prod.outlook.com (2603:10b6:207:3c::43)
 by BYAPR02MB4071.namprd02.prod.outlook.com (2603:10b6:a02:fc::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2430.23; Thu, 7 Nov
 2019 09:58:43 +0000
Received: from CY1NAM02FT030.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::206) by BL0PR02CA0030.outlook.office365.com
 (2603:10b6:207:3c::43) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2430.20 via Frontend
 Transport; Thu, 7 Nov 2019 09:58:43 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT030.mail.protection.outlook.com (10.152.75.163) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2430.20
 via Frontend Transport; Thu, 7 Nov 2019 09:58:42 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iSeYs-0003CH-EO; Thu, 07 Nov 2019 01:58:42 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iSeYn-0003c6-Bm; Thu, 07 Nov 2019 01:58:37 -0800
Received: from xsj-pvapsmtp01 (xsj-smtp1.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xA79wRSK016564; 
 Thu, 7 Nov 2019 01:58:27 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iSeYd-0003bQ-4g; Thu, 07 Nov 2019 01:58:27 -0800
From: Rajan Vaja <rajan.vaja@xilinx.com>
To: mturquette@baylibre.com, sboyd@kernel.org, michal.simek@xilinx.com,
 shubhrajyoti.datta@xilinx.com, jolly.shah@xilinx.com,
 nava.manne@xilinx.com, tejas.patel@xilinx.com
Subject: [PATCH] clk: zynqmp: Warn user if clock user are more than allowed
Date: Thu,  7 Nov 2019 01:58:14 -0800
Message-Id: <1573120694-6015-1-git-send-email-rajan.vaja@xilinx.com>
X-Mailer: git-send-email 2.7.4
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(136003)(346002)(396003)(199004)(189003)(36386004)(36756003)(106002)(50466002)(426003)(14444005)(26005)(16586007)(4326008)(336012)(356004)(5660300002)(48376002)(186003)(107886003)(6666004)(478600001)(8676002)(81156014)(81166006)(44832011)(70586007)(2906002)(305945005)(8936002)(70206006)(47776003)(316002)(486006)(51416003)(6636002)(476003)(7696005)(126002)(2616005)(9786002)(50226002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR02MB4071; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ce7d3cd8-b394-47dc-217d-08d763691294
X-MS-TrafficTypeDiagnostic: BYAPR02MB4071:
X-Microsoft-Antispam-PRVS: <BYAPR02MB4071259E393FDD0C9099F7DCB7780@BYAPR02MB4071.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:513;
X-Forefront-PRVS: 0214EB3F68
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rwh0KwULzVcdgxeNTwHHJf/K14baqh0Q+GOO0etdUcRxbcEFM8+lA8OS8jKAuV4O8/fT3k5hJ+jqsal+pyypUmu7MvB2vgh0SUvKNFQvOjLGbQGcoP4CZZS92SYCz8htUKXf4AMQP3qQJfePVkC3sS9MAgvb/oqX1NHbt09J9jLkPtr/ZV4jxjRTV0Eagpxkbb982n314ZjoIlmAXxNl06FvQ+asPaYAQ90DuBmYwR0u9dLpiVz3QBNEsMfdzY3ElXL4tq08MZzd7eQ8gEV4T3x+85Ao8EKXBuvMrroCGpJNtUesDNtKPoiwevz6GNsSs7Vj7PXNlpX8GyF/QBw5p5AwVseTUufhkdFN5OO7WAWIUp5xY/5fQAh5ueDnegSWLUJlOGQi8QRjsnsNXdBU9dvOrhvKFQRPyfhuauKMe/zMebpwrmwToQ4C5tK5Dp9P
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Nov 2019 09:58:42.9227 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ce7d3cd8-b394-47dc-217d-08d763691294
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB4071
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_015846_693296_F1B6B314 
X-CRM114-Status: GOOD (  13.91  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.82.40 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Rajan Vaja <rajan.vaja@xilinx.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Warn user if clock is used by more than allowed devices.
This check is done by firmware and returns respective
error code. Upon receiving error code for excessive user,
warn user for the same.

This change is done to restrict VPLL use count. It is
assumed that VPLL is used by one user only.

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---
 drivers/clk/zynqmp/pll.c             | 9 ++++++---
 drivers/firmware/xilinx/zynqmp.c     | 2 ++
 include/linux/firmware/xlnx-zynqmp.h | 1 +
 3 files changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/zynqmp/pll.c b/drivers/clk/zynqmp/pll.c
index a541397..2f4ccaa 100644
--- a/drivers/clk/zynqmp/pll.c
+++ b/drivers/clk/zynqmp/pll.c
@@ -188,9 +188,12 @@ static int zynqmp_pll_set_rate(struct clk_hw *hw, unsigned long rate,
 		frac = (parent_rate * f) / FRAC_DIV;
 
 		ret = eemi_ops->clock_setdivider(clk_id, m);
-		if (ret)
-			pr_warn_once("%s() set divider failed for %s, ret = %d\n",
-				     __func__, clk_name, ret);
+		if (ret) {
+			if (ret == -EUSERS)
+				WARN(1, "More than allowed devices are using the %s, which is forbidden\n", clk_name);
+			pr_err("%s() set divider failed for %s, ret = %d\n",
+			       __func__, clk_name, ret);
+		}
 
 		eemi_ops->ioctl(0, IOCTL_SET_PLL_FRAC_DATA, clk_id, f, NULL);
 
diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index 75bdfaa..74d9f13 100644
--- a/drivers/firmware/xilinx/zynqmp.c
+++ b/drivers/firmware/xilinx/zynqmp.c
@@ -48,6 +48,8 @@ static int zynqmp_pm_ret_code(u32 ret_status)
 		return -EACCES;
 	case XST_PM_ABORT_SUSPEND:
 		return -ECANCELED;
+	case XST_PM_MULT_USER:
+		return -EUSERS;
 	case XST_PM_INTERNAL:
 	case XST_PM_CONFLICT:
 	case XST_PM_INVALID_NODE:
diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index adb14bc..a3b0a39 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -89,6 +89,7 @@ enum pm_ret_status {
 	XST_PM_INVALID_NODE,
 	XST_PM_DOUBLE_REQ,
 	XST_PM_ABORT_SUSPEND,
+	XST_PM_MULT_USER = 2008,
 };
 
 enum pm_ioctl_id {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
