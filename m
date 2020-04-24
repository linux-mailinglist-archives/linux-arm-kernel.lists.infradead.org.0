Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 292CE1B8183
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 23:06:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1hYGXqf2eJojc9WSFoj8qSTDDQf1S/A6LMHQCm/UKNI=; b=RRQWcYY8l/j3pr
	H50A4mMkKie58x58yrK//PEdOZ99vd9yVKIbla/Hb/AI7hetlmNzNxm7Pct/8IqeKmNIqj0LGS5Bk
	jGZJNmPg9MC0BcZxnr8H+AhkgJwUyaPUmE5xtLQfFeg9lADBzsmiBHMSqa4yIZWTxNTEoNRL5oegL
	B2Dr7k6E8vo4v4QxEG1RiCAw0sEfowvZeRNpkM6tmiDLIl7Vbv3wDFJjrhQd0ZOJkRjse5kVB+ciC
	oN+zWZEK2ta2RdguhVjtVPmYVeDNHSQnyfDMuPAUcO+8wGs5p1lI97h0VjI0vAe3NQYRJiKtQqrDS
	1fcetPe5wSC2+XtQh90A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS5WH-0008ON-3b; Fri, 24 Apr 2020 21:05:57 +0000
Received: from mail-bn8nam12on2051.outbound.protection.outlook.com
 ([40.107.237.51] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS5P9-0006SQ-S9
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 20:58:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IXFYTKpWfYHekRygPvKHKfL1o5gAnmwEj0hVj629OiW5RdgQ5fyWLdT9HMfZxQuPgFujLnKeVnv7JkEoNrAb1Cc0thJd7iDcmtlsshFBs72pxzJSQYZqw7xQ3wtFoCSWQG8zpki4yB50BAZW2X6tyRVWvNROWZ1Dwdo9oHRvLQ4oNreaYgJF4UfNItqSip2EXFBfCPpqfwwrBdhMXPfSsIrAYPbn/fTi2Ykhb/fNOFgCL/EssTZUzfkCYXZYUInfotXTJDp3gCZa2IHT0pUZ8mh4+5yLSuB41iPHn+nOa0e3nhK0pZzbBTB84/6MLRr+6OKr0oQ+rNoFE2teYPZMvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DqclKS3RV/O7dP34PD+acwYtMUZEQxLv3aoXsZMUq/U=;
 b=EUOc5bSylYKyWlID4eDZqx/rcweH6yGy4437s8xFTre3LWzl6OVQuXSigFEPlMYFopYaPZP5pUAqK8bjjX8W3JJg8O2ykZbIglqIe4w0xOVHuahRj1F3PQzKFRYrwsRiJeFpla1YydsVwuww4A2tLufk9U3OCd9yr3dG5u+wWXA2uScl8qgElqadvDizw8aV9uCAIoJzUjGSUVs2qDxEMDomtKwHkzew+MIBimViurC+OpRvYfqsxggL08NI98xqmd0cMCihDPzip01oH36lYCdoRrS1OY6he317j56Ev+dL5/mNrWBTObTtZz0dkRS3oUG62P5rKNboHkTc+xoT8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DqclKS3RV/O7dP34PD+acwYtMUZEQxLv3aoXsZMUq/U=;
 b=C4L1uZGhrvbeB4sdVR7e1FBM/u1GioW3RiIxm+s3sQubduDf73JyYVvr3ts7QS/B6zXx0vGA3/HdHzVMo1bSqx7S8JOVXQOyRJPLQTFZcURBnFM0fSwJ/jEyLS7gy7yEYddLHezskU2KEibc6KrWdynr8nBw8xUKD3Ja2uXvK7g=
Received: from MN2PR05CA0062.namprd05.prod.outlook.com (2603:10b6:208:236::31)
 by DM5PR02MB3895.namprd02.prod.outlook.com (2603:10b6:4:b9::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.27; Fri, 24 Apr
 2020 20:58:33 +0000
Received: from BL2NAM02FT014.eop-nam02.prod.protection.outlook.com
 (2603:10b6:208:236:cafe::d3) by MN2PR05CA0062.outlook.office365.com
 (2603:10b6:208:236::31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.7 via Frontend
 Transport; Fri, 24 Apr 2020 20:58:33 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT014.mail.protection.outlook.com (10.152.76.154) with Microsoft SMTP
 Server id 15.20.2937.19 via Frontend Transport; Fri, 24 Apr 2020 20:58:32
 +0000
Received: from [149.199.38.66] (port=33407 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jS5Nx-0002DU-8X; Fri, 24 Apr 2020 13:57:21 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jS5P6-0007Pe-7t; Fri, 24 Apr 2020 13:58:32 -0700
Received: from xsj-pvapsmtp01 (xsj-mail.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 03OKwJDh026335; 
 Fri, 24 Apr 2020 13:58:20 -0700
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jS5Ot-0007Lo-Pk; Fri, 24 Apr 2020 13:58:19 -0700
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH v5 18/25] firmware: xilinx: Remove eemi ops for set_requirement
Date: Fri, 24 Apr 2020 13:58:00 -0700
Message-Id: <1587761887-4279-19-git-send-email-jolly.shah@xilinx.com>
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
 SFS:(10009020)(4636009)(376002)(346002)(136003)(39860400002)(396003)(46966005)(478600001)(336012)(316002)(6636002)(82310400002)(7696005)(54906003)(7416002)(2616005)(4326008)(70586007)(70206006)(107886003)(44832011)(2906002)(5660300002)(356005)(8936002)(36756003)(9786002)(6666004)(26005)(8676002)(426003)(47076004)(81166007)(81156014)(186003)(82740400003);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 55473f64-6f1b-4005-ed7f-08d7e8923f9f
X-MS-TrafficTypeDiagnostic: DM5PR02MB3895:
X-Microsoft-Antispam-PRVS: <DM5PR02MB3895DDAAA618D98227546BFDB8D00@DM5PR02MB3895.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:5797;
X-Forefront-PRVS: 03838E948C
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PFFdGuRcblSqHh/YcOgAXMcn5PjilkXBG6L60oNt5sSfH2XpikrUfq9SeEzbv4sF2yrXkMEOdr5Jo1JhXozi4YWpUJZyQ5FvmU3XSkMPLSIDMo2VILlHKRmbNXS7QXnjPHT77WOxhiTD/0x2PPw4Wy0WhctzDnM9UPrLElobrkaXJsQRJeZNg2eNpqbC6VPEWC+YG5WGzsRPi+eSt7QDf0zA66/fQMWxex4gbtNmBUpvhU26+Z1sLEaFJfc31itXFHIYr9uZI04nBhp0kcrECsnNWr7oQoDaIYb30P2BSq8hbDGqmycih6kqWTL3AfHlKPwEiAUgorsIm6Zy5dLQIKTmdyFY4SwDYpuBAIFYQlT/d/mWShxj3DDfLW+l2AuxgiN5arOmoPDa2RW1Y/KbasRA3r3Gdy68X55vajSw4MdRq1PR2cREse46IEbXvtU1PloHiaLrw6WoEs43/AtvpB5BmlDU1Q0+d2QpiudQKUfMfC7lTopKzDh+Cwrba3j2ALQI30oUSxdpkZeYbne0JQ==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2020 20:58:32.6379 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 55473f64-6f1b-4005-ed7f-08d7e8923f9f
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR02MB3895
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_135835_994473_D9E90CF7 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.237.51 listed in list.dnswl.org]
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
set_requirement.

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
---
 drivers/firmware/xilinx/zynqmp.c       |  8 ++++----
 drivers/soc/xilinx/zynqmp_pm_domains.c | 16 ++--------------
 include/linux/firmware/xlnx-zynqmp.h   | 14 ++++++++++----
 3 files changed, 16 insertions(+), 22 deletions(-)

diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index ce65bafd..0c5c8bc 100644
--- a/drivers/firmware/xilinx/zynqmp.c
+++ b/drivers/firmware/xilinx/zynqmp.c
@@ -778,13 +778,14 @@ EXPORT_SYMBOL_GPL(zynqmp_pm_release_node);
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
 
 /**
  * zynqmp_pm_aes - Access AES hardware to encrypt/decrypt the data using
@@ -811,7 +812,6 @@ static int zynqmp_pm_aes_engine(const u64 address, u32 *out)
 }
 
 static const struct zynqmp_eemi_ops eemi_ops = {
-	.set_requirement = zynqmp_pm_set_requirement,
 	.fpga_load = zynqmp_pm_fpga_load,
 	.fpga_get_status = zynqmp_pm_fpga_get_status,
 	.aes = zynqmp_pm_aes_engine,
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
index bfa8cca..5927f6f 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -296,10 +296,6 @@ struct zynqmp_pm_query_data {
 struct zynqmp_eemi_ops {
 	int (*fpga_load)(const u64 address, const u32 size, const u32 flags);
 	int (*fpga_get_status)(u32 *value);
-	int (*set_requirement)(const u32 node,
-			       const u32 capabilities,
-			       const u32 qos,
-			       const enum zynqmp_pm_request_ack ack);
 	int (*aes)(const u64 address, u32 *out);
 };
 
@@ -334,6 +330,9 @@ int zynqmp_pm_set_suspend_mode(u32 mode);
 int zynqmp_pm_request_node(const u32 node, const u32 capabilities,
 			   const u32 qos, const enum zynqmp_pm_request_ack ack);
 int zynqmp_pm_release_node(const u32 node);
+int zynqmp_pm_set_requirement(const u32 node, const u32 capabilities,
+			      const u32 qos,
+			      const enum zynqmp_pm_request_ack ack);
 #else
 static inline struct zynqmp_eemi_ops *zynqmp_pm_get_eemi_ops(void)
 {
@@ -440,6 +439,13 @@ static inline int zynqmp_pm_release_node(const u32 node)
 {
 	return -ENODEV;
 }
+static inline int zynqmp_pm_set_requirement(const u32 node,
+					const u32 capabilities,
+					const u32 qos,
+					const enum zynqmp_pm_request_ack ack)
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
