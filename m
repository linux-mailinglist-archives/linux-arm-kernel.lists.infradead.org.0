Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28CF3106916
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 10:46:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fqpInA1+xlFiU8pH4r4NJ0OcZga2GBTiBhWg2hUSST4=; b=E5tmBLpSU/UKEt
	VcuAd8RwXfxn0ZkgNy0Wyl3puN1NOaAkwuPIrVTR2f0q5OQaxdOyAybRLGtEjWdXg7qU0Y9rHBvxx
	YPrlt55gGgQLPbRXBUySB6JdowFRTiMSawtCtYFOon5Ikeyvjkru4vagULWkta9AUyG5S85hG6M/A
	yu2spg1F/XEsK2cJEoPgE5xdDphtYyVW2mXKDFJCzajmbx0Fd9ttLb2ontz/eLEyOzc2oZ7312wFD
	qGfL28yJNCxxYKLP4MPVY72G4FUR9UIrU6peWCvaDeJ+tI7/jNMQZbHHE5h6OG87borOW+hXxu55q
	LsrBVcs+Cqo0RMh0m4DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY5Vp-0000y3-2s; Fri, 22 Nov 2019 09:46:01 +0000
Received: from mail-eopbgr730086.outbound.protection.outlook.com
 ([40.107.73.86] helo=NAM05-DM3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY5VR-0000sX-Vo
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 09:45:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SDM6uZnYnnQMH/s6Tcx+2B4kePjdE2RNtPksJJxVBCtJGD0pa9c7SV+y4BP14+y/BT0W0tNX80ZztyW73UjaJoGKYqZuTFQFRePRhuf7rjGvo4p8TOeW8TaitHyGiAFvq8mkNUGhGBvp8y8Ik+OotXGRu5xSDXhZH+93ONOjuuWVLtePEq9w/dWTcELFoTMjfhNarT22oELZAKW4GnrL2UCCmwmUPleWaLM2yHCy2sh7cresXCHfQw4R8EVpNjDP5m1KGq/1SDEpRaSGnlYojYU3ifamcBHTRINpwyZys3lELdapkAPnVRmAFp6NCxgypaCTnDgSjCXf1HOm8idtbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f2ZBg83lGfUj0DfhyWSb64nyUYJNXtQgQndPSIHkG7k=;
 b=a/PK/AHyBI4f48/64kFPa03OB2f06uQuDVbgtRpEVd+O8mJIY2zYx4HW+5wVMjHao+m65z8DdTaXxVO+ioPzqr0WlqpKI2T08GY+WpC7InIY636avTy3blGg8fmgrcnLL4mGo1lMnxzpXRETnkcGMQlRT6dOad0I216CFj2KXec2zsSfKN9XvQuUv4fNDFbG2NdDRn10bKggNTlDd2uPnS1987db7RslAlVn8Zctr+2pf2azRnMtOzw13wUc31yPhK6ru2p1J/AqVWw3EQYt7kLq//SCijlxItqzKtE0JwvsqmLpIo3trdzsykSLqxczd6F3mGKGxho9ZWvwvGiAtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=xilinx.com; dmarc=bestguesspass action=none
 header.from=xilinx.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f2ZBg83lGfUj0DfhyWSb64nyUYJNXtQgQndPSIHkG7k=;
 b=rU0wxuxPFepyg628T9LxdYo0pjggiAx5MjvAU5D+ND6neb2Ut3pkt/VA9qC2810pw4MIC+TRyWQaMh18863cQilqfqKceLUB2weiAN741sP8Q85i5kTaMORYI1s7/97yNqkKEB8GW8d45TDfphHxCaWrf1XvjzmgWUTNRsg1PPU=
Received: from CH2PR02CA0007.namprd02.prod.outlook.com (2603:10b6:610:4e::17)
 by CH2PR02MB6262.namprd02.prod.outlook.com (2603:10b6:610:8::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2474.19; Fri, 22 Nov
 2019 09:45:35 +0000
Received: from BL2NAM02FT042.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::203) by CH2PR02CA0007.outlook.office365.com
 (2603:10b6:610:4e::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2474.17 via Frontend
 Transport; Fri, 22 Nov 2019 09:45:35 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT042.mail.protection.outlook.com (10.152.76.193) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2474.17
 via Frontend Transport; Fri, 22 Nov 2019 09:45:35 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iY5VO-0008SN-Iy; Fri, 22 Nov 2019 01:45:34 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iY5VJ-0002pC-Gf; Fri, 22 Nov 2019 01:45:29 -0800
Received: from xsj-pvapsmtp01 (smtp.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xAM9jLkF003471; 
 Fri, 22 Nov 2019 01:45:21 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iY5VB-0002ob-K3; Fri, 22 Nov 2019 01:45:21 -0800
From: Rajan Vaja <rajan.vaja@xilinx.com>
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, michal.simek@xilinx.com, jolly.shah@xilinx.com,
 m.tretter@pengutronix.de, gustavo@embeddedor.com,
 dan.carpenter@oracle.com, tejas.patel@xilinx.com,
 nava.manne@xilinx.com, mdf@kernel.org
Subject: [PATCH v2 3/6] clk: zynqmp: Warn user if clock user are more than
 allowed
Date: Fri, 22 Nov 2019 01:43:31 -0800
Message-Id: <1574415814-19797-4-git-send-email-rajan.vaja@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1574415814-19797-1-git-send-email-rajan.vaja@xilinx.com>
References: <1573564580-9006-1-git-send-email-rajan.vaja@xilinx.com>
 <1574415814-19797-1-git-send-email-rajan.vaja@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(396003)(136003)(39860400002)(199004)(189003)(36756003)(9786002)(2906002)(186003)(26005)(107886003)(106002)(4326008)(70586007)(70206006)(48376002)(44832011)(446003)(426003)(11346002)(76176011)(51416003)(50466002)(478600001)(316002)(2616005)(7696005)(336012)(6666004)(356004)(50226002)(47776003)(8676002)(81156014)(81166006)(36386004)(8936002)(305945005)(7416002)(5660300002)(16586007)(14444005)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6262; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ad253728-624a-450b-5549-08d76f30b947
X-MS-TrafficTypeDiagnostic: CH2PR02MB6262:
X-Microsoft-Antispam-PRVS: <CH2PR02MB62627DC1C39776E66F7AE301B7490@CH2PR02MB6262.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:46;
X-Forefront-PRVS: 02296943FF
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SH8h9DV/wsXnWM860J2levpZIWlDz3m861dXvYHN3r4YagW3IvDqYg/WNHecnQxElXVatiAwTANujd5Qx3T01zsQaTftl/bcYHTbKxye8aQUnyY3VgWHV+Em7ograDCUeOSMNEYt0tofVWEbqGotGgREnt14wOHRbautqDqaB8h3+2QHrmgro3NuJzQXyVVjVSgWlDp0/eqBBi8VakGD7p5lySmNg9p/GstnqxqPSBWJw/xT5fZAIN7b8W1Jntm3gGuBR0AJ8nm5Z64PblU1owamlMcbBjqNdIXZd2GekM46f1s9qNfMZYGR1x4eB0auHfywUZylIFdgxJBDAvpofnkMAG+nIq7psLfHIdadL9Gdm5JldOuT+EIaD7Zf4gjXfjSIAHhlPfgMcYRO7no8DIEbUUzwvJPnbwrBCsd1uOvJsM0Ok+cFcJHrkSPYrM9d
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Nov 2019 09:45:35.2056 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ad253728-624a-450b-5549-08d76f30b947
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6262
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_014538_064597_6BCA1818 
X-CRM114-Status: GOOD (  15.04  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.73.86 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Rajan Vaja <rajan.vaja@xilinx.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
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

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
---
Changes in v2:
 - Leave the existing warning as it is and print new warning in case of
   -EUSERS instead of printing error and warning both.
---
 drivers/clk/zynqmp/pll.c             | 6 ++++--
 drivers/firmware/xilinx/zynqmp.c     | 2 ++
 include/linux/firmware/xlnx-zynqmp.h | 1 +
 3 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/zynqmp/pll.c b/drivers/clk/zynqmp/pll.c
index a541397..89b5995 100644
--- a/drivers/clk/zynqmp/pll.c
+++ b/drivers/clk/zynqmp/pll.c
@@ -188,10 +188,12 @@ static int zynqmp_pll_set_rate(struct clk_hw *hw, unsigned long rate,
 		frac = (parent_rate * f) / FRAC_DIV;
 
 		ret = eemi_ops->clock_setdivider(clk_id, m);
-		if (ret)
+		if (ret == -EUSERS)
+			WARN(1, "More than allowed devices are using the %s, which is forbidden\n",
+			     clk_name);
+		else if (ret)
 			pr_warn_once("%s() set divider failed for %s, ret = %d\n",
 				     __func__, clk_name, ret);
-
 		eemi_ops->ioctl(0, IOCTL_SET_PLL_FRAC_DATA, clk_id, f, NULL);
 
 		return rate + frac;
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
