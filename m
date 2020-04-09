Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1704D1A3A4D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 21:14:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1hYGXqf2eJojc9WSFoj8qSTDDQf1S/A6LMHQCm/UKNI=; b=SWgdLa1FYwdKrT
	23igcQpu7OX3TBS84VIu7sDRg0LtWrQjtddqxoBSTg9529igQaJzSHFLqgxfspQlU9x4vA7P9rV9D
	BlD+Exdyl8ktC6sweggP+mJjfFzNmSJRwHoMozIyrH1hRxUrv3Kc3ExavwTCEVTfacjI/wR1GTAGA
	c4YYqrxoDeqWKKA3ezc89ZcCflnvZM0/e9uMmMEjyD533v/gpkqxi3/yUhq1Ij+b9xMzB2OLT77DG
	jmvEEbTsNlobg4g4EkMyaJRJUcfNnT1trTFAQdCE1RBl619nzE3hOCdqhLmxXR2p1dg3vfPjXS5xY
	JYtOi3kT6WNTAbqrw6wA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMcch-0007xw-Cm; Thu, 09 Apr 2020 19:13:59 +0000
Received: from mail-mw2nam10on2062.outbound.protection.outlook.com
 ([40.107.94.62] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMcbd-0007KI-DZ
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 19:12:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XGn3TgcHvonWaGXUNXzE7tM+Fu2cPgFlWxe8Xdk+8GuhArlJRaBweWM5Ns4ed+B0wHL/dRMHNsT3RpeUGNBs930GK94UaIYnFSqgfrIbZWXKMM5+X+mg3IubAu3G7BvIPOtUGPkp/3/Sn3gZGvQM3kEC0jmB1Ns5f88wVwGYI7esaF834Y4euekWTlusz92sOEzKvRa0XwFFAJIvemG9J+pXhs1PhRLS4CB6jraS6BuLpx52+ILVz+RyZklCYKVp90W1kdK/XETX8Wwb7dbYUxHJYadsJEZ+dpYKq087FGf9dTY51mDvYrhwR9afw9Oh4Nx6UBlxYY+XvAV+b1TJeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DqclKS3RV/O7dP34PD+acwYtMUZEQxLv3aoXsZMUq/U=;
 b=a9aZq36ynXuqkUK7VY1YbjgouRusUQoWMHWCsThwtoBHgzP1O+qz2p89KqJnKQcwkbmjxTimjex7ZPtcQdr88/2/b3DOD3F910rQjbVAGUciliJhtDuAIG6FA7LsvtW1uGzXBhznjNol6f/ndD3f3TIonto+XFqXXjrfXIr8nZLFJhd/YN1PLJN5mIh3DidpSq1sC2acIUsfUrAVg537JCJ9SNO7WrKXBIrQS0BBIx+sAmuGLjCIpcjwMraORYFPbpMUQvaJCX4eTzkotJok+kPmIpwj9MnAmtoBRP5AiCK6921mHQ83t6kUH4QuF/bvb8oR3UNz4lOHBzsQv98vUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=linaro.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DqclKS3RV/O7dP34PD+acwYtMUZEQxLv3aoXsZMUq/U=;
 b=MDx05pz7LTAvJju8UivZKrX6OWCmV9sYo8WWS+wdP9dB2kMYHJAPtUXuY2SXv3zhw+CxMN8OCkNv5aHUPjDOAYnkxbFd2KTc5fbOsByRrw/t/fJeHpywG9uFwGvdqYlI0AG9zFGkGXnEd5w8YE2FHgsHhx+UUS4Awf3pgkxj3ok=
Received: from SN4PR0201CA0022.namprd02.prod.outlook.com
 (2603:10b6:803:2b::32) by BL0PR02MB4419.namprd02.prod.outlook.com
 (2603:10b6:208:44::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.19; Thu, 9 Apr
 2020 19:12:50 +0000
Received: from SN1NAM02FT035.eop-nam02.prod.protection.outlook.com
 (2603:10b6:803:2b:cafe::8e) by SN4PR0201CA0022.outlook.office365.com
 (2603:10b6:803:2b::32) with Microsoft SMTP Server (version=TLS1_2,
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
 SN1NAM02FT035.mail.protection.outlook.com (10.152.72.145) with Microsoft SMTP
 Server id 15.20.2900.15 via Frontend Transport; Thu, 9 Apr 2020 19:12:49
 +0000
Received: from [149.199.38.66] (port=44262 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jMcb8-0005zv-Sd; Thu, 09 Apr 2020 12:12:22 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jMcbZ-0007NV-Aq; Thu, 09 Apr 2020 12:12:49 -0700
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jMcbS-0007La-Qc; Thu, 09 Apr 2020 12:12:42 -0700
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH v4 18/25] firmware: xilinx: Remove eemi ops for set_requirement
Date: Thu,  9 Apr 2020 12:12:07 -0700
Message-Id: <1586459534-8997-19-git-send-email-jolly.shah@xilinx.com>
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
 SFS:(10009020)(4636009)(39860400002)(346002)(136003)(376002)(396003)(46966005)(81156014)(478600001)(356004)(5660300002)(107886003)(2616005)(44832011)(8936002)(36756003)(6666004)(426003)(8676002)(336012)(186003)(4326008)(9786002)(82740400003)(54906003)(26005)(316002)(2906002)(81166007)(6636002)(70206006)(47076004)(7416002)(70586007)(7696005);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6634eb14-2611-46cb-24e9-08d7dcb9febf
X-MS-TrafficTypeDiagnostic: BL0PR02MB4419:
X-Microsoft-Antispam-PRVS: <BL0PR02MB44194E325D4B3AF12BE421CFB8C10@BL0PR02MB4419.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:5797;
X-Forefront-PRVS: 0368E78B5B
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: K6enNV0Lb9ZOW1E5jSCtfu96fM2x2m0AhBJKrboxQ/UfRk7U1NMYAa3HQWaIyG7TD95N23RkVw97R5DDpXrnEqLjyOM/16I1JyNKzHMRrbOm/1LQ5/5YNuIr+OJcAAhgUJT0015MyC/qsaMOU+1xeq2RLeGiUqev/4JBcspf04nunriLGHsDMlNwbXQcws//RepPzOWbMfXrexWlM4E86g3bi92wYUSsqOXgOjNZa24d7iOIxvYC7o8zqm2DmNkse5nGYPJRr9n/C9sAqPTfQ5jFafhK9ELH3m567WRfFZL0lWMOHHAmHHorBUtZnV97bsbTCZhN0QKw6zyop/B748JMksn7AsuGz6AEXgakxQGR7AHPDIxoBo6DejpOMVBA66dHHeTMYHsPsrFDLK5YCYMSXVAZg8dKJZljB5u8AgdSAznPfvIU2lteU4Qa/Sa6QS946QnUk2sGV9Gxvb5HQ6crLMZDVSzef9hoKwAYhePsOWAaSy82PNNclJlkpwgzn7VNMn8OB6JTokSB2LHDaw==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2020 19:12:49.7054 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6634eb14-2611-46cb-24e9-08d7dcb9febf
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR02MB4419
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_121253_495273_0F98BE63 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.94.62 listed in list.dnswl.org]
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
