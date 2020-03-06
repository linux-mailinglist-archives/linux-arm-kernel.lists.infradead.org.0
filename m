Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FE8117C8DD
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 00:48:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OfNorJGPS1j6v8V2eMzJhHn6ruMROW7Nabe6ZE6D1Hg=; b=XLRYT08uNEXxR3
	T9057KamR0VIT2H9qW0YoX0+CwWQIiHzVTLI0/aHh0qQL+D+iJPhyyqqnIbTa1JRcmFKxNWrJK99E
	rD09kobygThQ0Dy+Qi39KOXZ7Kf7SzQ7CcrR0SAy52vtqPuO8U4RcWSOOCra3LmcjmO8jZdEq1RHz
	NFVSC2vrTgx+FYhfwkL+Yij/s+LsX0drONrGL+EjL2f1lXzvWXyd5s+4IT+V7sU42ltEJxgzjU/Wr
	J6XUIj2y0OKRqKKR28o4XUMttjyQFE/2yvVxGgKLUJ0Hc3dkoUEHTYGq1212zYlftEf1U6h4jpDId
	RRgzM9Bom4VnfQ/lELnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAMhV-00063D-AS; Fri, 06 Mar 2020 23:48:17 +0000
Received: from mail-dm6nam12on2042.outbound.protection.outlook.com
 ([40.107.243.42] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAMhE-0005yU-4s
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 23:48:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UfAY2npiKnkvRUleVwLe1KyLuxXlRVFKkL34M2Z0QdrnFiN97W8pnQ2SPQUuGzAtHjO5n5sE1Ijniiytm9RCisDAoWN+vByPY0vM10Z2c7/4JINYA6WmNh+ZZN/nYIDGyzSAUWTADhB9f/XULLBUMfWl7PKNnrVutRd2UZhMbrVxLg24GHTycG48pk0FLeWlr1KQOiKfoZC+wyeB7WyD3t+YYXZtMluAXgtj3RuRkROiV1jkU4rcTPqjuDSQEVNLpCrPijKp5bPATkZDFdY+I/aY5xw03RE3fZ+FEJ33BDtXQPFbDRK5mR1cw2ZWb9WLXpucS7Mgns1HkDJ4oqlOog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DVvLvsJMTXqhYIwK98Y0yR9wFgagh31mNmCTJc7xZ6o=;
 b=GUbEhAreN2qFg4b0ieg025PXUgBE1SwdptmkVBxzTDZBRWyJhQbButOtkjV1aTTKmh/CNVmCVXBWmu6xBPPHhs10xpF1gpOfTge7eIMZKPYPbHAIpDymvMWU7uim5RhPahuKfeMsFv56b2ez1dO/ydpnI8Xfr/9RPFxaknJjQTW3RRB1KkKWXmxeLk0IEzOPOY/3TeLWwRZA/qQH/zjQYQz0J/YUiokDOa/Cy+5kOCbAelVJFCzFDr5HfyHiUhS8VbXKUqXVFaOo5py0FHF5FWcHRDvaSlpVFpqdLauaZz0hVXOQf+uvWTcsT9AqDI98cf3eUx+KCDcVnOvIqoCn/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DVvLvsJMTXqhYIwK98Y0yR9wFgagh31mNmCTJc7xZ6o=;
 b=bjvWEJTXe/GDB6ma2es5dEF+PpFkUBdmA1Hw8FFFGGnbyBxA3K6BJqW/qD4BnywL5j2owCKv2Pj/oOm9YYv/UfvlBp48FByVFOt/w7oqat7UTDaZiwaCZ4BdWDqznLIci9pBySvFBk+9IqmTOrVMZCuPoHq9chkCZOJ3jvU6fs4=
Received: from SN6PR16CA0051.namprd16.prod.outlook.com (2603:10b6:805:ca::28)
 by DM6PR02MB5195.namprd02.prod.outlook.com (2603:10b6:5:41::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.18; Fri, 6 Mar
 2020 23:47:57 +0000
Received: from SN1NAM02FT022.eop-nam02.prod.protection.outlook.com
 (2603:10b6:805:ca:cafe::15) by SN6PR16CA0051.outlook.office365.com
 (2603:10b6:805:ca::28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.16 via Frontend
 Transport; Fri, 6 Mar 2020 23:47:57 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT022.mail.protection.outlook.com (10.152.72.148) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2793.11
 via Frontend Transport; Fri, 6 Mar 2020 23:47:57 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jAMhA-0003Py-Os; Fri, 06 Mar 2020 15:47:56 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jAMh5-0002g8-Lu; Fri, 06 Mar 2020 15:47:51 -0800
Received: from xsj-pvapsmtp01 (xsj-smtp.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 026Nlk2f002414; 
 Fri, 6 Mar 2020 15:47:46 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jAMh0-0002eg-Lw; Fri, 06 Mar 2020 15:47:46 -0800
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH v3 18/24] firmware: xilinx: Remove eemi ops for set_requirement
Date: Fri,  6 Mar 2020 15:47:26 -0800
Message-Id: <1583538452-1992-19-git-send-email-jolly.shah@xilinx.com>
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
 SFS:(10009020)(4636009)(39860400002)(376002)(346002)(136003)(396003)(199004)(189003)(107886003)(8676002)(5660300002)(7696005)(8936002)(70206006)(81156014)(7416002)(26005)(81166006)(36756003)(186003)(336012)(70586007)(2906002)(478600001)(54906003)(316002)(426003)(356004)(44832011)(6636002)(2616005)(6666004)(9786002)(4326008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR02MB5195; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6456afe0-3ebd-44e0-03d5-08d7c228cc02
X-MS-TrafficTypeDiagnostic: DM6PR02MB5195:
X-Microsoft-Antispam-PRVS: <DM6PR02MB51955D1B4A982BF6956FAD79B8E30@DM6PR02MB5195.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:4941;
X-Forefront-PRVS: 0334223192
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Yi4cLbaX8m5BRvlIhbzbR7y4LQqEDKSu4SOlF1L0vHXGoyxNSlJiC4XjUGluFZGYjVwANpvWEAx/2GDOLm8umRuWu/DN+cCjoBlUycJ/VGbx/OZRPHq9v//jOG7rSL3i501T/6qYd427dZyZGpjKlsV3pAf3jzEzFHOEe9JyhMo7Q0ah9HKqKbOpshj3kpqRm1pEpnwBJljcdd7aDURqnyj0E3jc4N1ikQZYOX8cO2EU6O6iSKWE6onfzucx+jkakU7j3VyF95wjPFLbxGr8hH/d/wHPlLzAVDSvl2LksHrR0IajNxb5DCOPS7Noj0bYXetctM0CL60C79HUt2EEGMLxqAsJIlDYvrCbGNXdLdj+F3Lpyi0EOPe70aSAkMxKPRisuIYvlrTgecWxWydJenc9RViHEC7sBXENKp5FXxyGaIceL1DY5NdAX8ta2h4+
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2020 23:47:57.1907 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6456afe0-3ebd-44e0-03d5-08d7c228cc02
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB5195
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_154800_262633_9E113974 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.243.42 listed in list.dnswl.org]
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

Use direct function call instead of using eemi ops for
set_requirement.

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
---
 drivers/firmware/xilinx/zynqmp.c       |  8 ++++----
 drivers/soc/xilinx/zynqmp_pm_domains.c | 16 ++--------------
 include/linux/firmware/xlnx-zynqmp.h   |  7 +++----
 3 files changed, 9 insertions(+), 22 deletions(-)

diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index d59a00f..7426533 100644
--- a/drivers/firmware/xilinx/zynqmp.c
+++ b/drivers/firmware/xilinx/zynqmp.c
@@ -761,16 +761,16 @@ EXPORT_SYMBOL_GPL(zynqmp_pm_release_node);
  *
  * Return: Returns status, either success or error+reason
  */
-static int zynqmp_pm_set_requirement(const u32 node, const u32 capabilities,
-				     const u32 qos,
-				     const enum zynqmp_pm_request_ack ack)
+int zynqmp_pm_set_requirement(const u32 node, const u32 capabilities,
+			      const u32 qos,
+			      const enum zynqmp_pm_request_ack ack)
 {
 	return zynqmp_pm_invoke_fn(PM_SET_REQUIREMENT, node, capabilities,
 				   qos, ack, NULL);
 }
+EXPORT_SYMBOL_GPL(zynqmp_pm_set_requirement);
 
 static const struct zynqmp_eemi_ops eemi_ops = {
-	.set_requirement = zynqmp_pm_set_requirement,
 	.fpga_load = zynqmp_pm_fpga_load,
 	.fpga_get_status = zynqmp_pm_fpga_get_status,
 };
diff --git a/drivers/soc/xilinx/zynqmp_pm_domains.c b/drivers/soc/xilinx/zynqmp_pm_domains.c
index 20bee26..226d343 100644
--- a/drivers/soc/xilinx/zynqmp_pm_domains.c
+++ b/drivers/soc/xilinx/zynqmp_pm_domains.c
@@ -23,8 +23,6 @@
 /* Flag stating if PM nodes mapped to the PM domain has been requested */
 #define ZYNQMP_PM_DOMAIN_REQUESTED	BIT(0)
 
-static const struct zynqmp_eemi_ops *eemi_ops;
-
 static int min_capability;
 
 /**
@@ -76,11 +74,8 @@ static int zynqmp_gpd_power_on(struct generic_pm_domain *domain)
 	int ret;
 	struct zynqmp_pm_domain *pd;
 
-	if (!eemi_ops->set_requirement)
-		return -ENXIO;
-
 	pd = container_of(domain, struct zynqmp_pm_domain, gpd);
-	ret = eemi_ops->set_requirement(pd->node_id,
+	ret = zynqmp_pm_set_requirement(pd->node_id,
 					ZYNQMP_PM_CAPABILITY_ACCESS,
 					ZYNQMP_PM_MAX_QOS,
 					ZYNQMP_PM_REQUEST_ACK_BLOCKING);
@@ -111,9 +106,6 @@ static int zynqmp_gpd_power_off(struct generic_pm_domain *domain)
 	u32 capabilities = min_capability;
 	bool may_wakeup;
 
-	if (!eemi_ops->set_requirement)
-		return -ENXIO;
-
 	pd = container_of(domain, struct zynqmp_pm_domain, gpd);
 
 	/* If domain is already released there is nothing to be done */
@@ -134,7 +126,7 @@ static int zynqmp_gpd_power_off(struct generic_pm_domain *domain)
 		}
 	}
 
-	ret = eemi_ops->set_requirement(pd->node_id, capabilities, 0,
+	ret = zynqmp_pm_set_requirement(pd->node_id, capabilities, 0,
 					ZYNQMP_PM_REQUEST_ACK_NO);
 	/**
 	 * If powering down of any node inside this domain fails,
@@ -260,10 +252,6 @@ static int zynqmp_gpd_probe(struct platform_device *pdev)
 	struct zynqmp_pm_domain *pd;
 	struct device *dev = &pdev->dev;
 
-	eemi_ops = zynqmp_pm_get_eemi_ops();
-	if (IS_ERR(eemi_ops))
-		return PTR_ERR(eemi_ops);
-
 	pd = devm_kcalloc(dev, ZYNQMP_NUM_DOMAINS, sizeof(*pd), GFP_KERNEL);
 	if (!pd)
 		return -ENOMEM;
diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index e51332e..3135d62 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -288,10 +288,6 @@ struct zynqmp_pm_query_data {
 struct zynqmp_eemi_ops {
 	int (*fpga_load)(const u64 address, const u32 size, const u32 flags);
 	int (*fpga_get_status)(u32 *value);
-	int (*set_requirement)(const u32 node,
-			       const u32 capabilities,
-			       const u32 qos,
-			       const enum zynqmp_pm_request_ack ack);
 };
 
 int zynqmp_pm_get_api_version(u32 *version);
@@ -319,6 +315,9 @@ int zynqmp_pm_set_suspend_mode(u32 mode);
 int zynqmp_pm_request_node(const u32 node, const u32 capabilities,
 			   const u32 qos, const enum zynqmp_pm_request_ack ack);
 int zynqmp_pm_release_node(const u32 node);
+int zynqmp_pm_set_requirement(const u32 node, const u32 capabilities,
+			      const u32 qos,
+			      const enum zynqmp_pm_request_ack ack);
 int zynqmp_pm_invoke_fn(u32 pm_api_id, u32 arg0, u32 arg1,
 			u32 arg2, u32 arg3, u32 *ret_payload);
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
