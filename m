Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 514931A3A3B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 21:13:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pT7F+Em+q3dgenw+5eRycrijX6bSpnVxk+178s95lpA=; b=VT/1z9Stsxku4J
	8n066AKrEXPyLBfL41v8ISAmW6C+ByTlEp1FAyIzDWFmgYqtqitj8h10rWA0uVgYSgjzY1SAPcoeY
	DpiamG2F5n/UdHucMO6eCcH37mwpABipqD4nTfQJPDaWmbxa3hvDS4r7y5K+aF/6bFshbaxIcTiIe
	tf1QlBz31KDNcqdchVJZeT7FX+7RrNTAlr0qXv1iZZ3a0T1ziSAYuFa4t/lJbB4vGXZeqtXrjQRdc
	2/WuMZTfJMbRpANHMcIMMDHrG/g2fxvzbSbNuIKmXLB/s39P6ipAVNbgavA+fYZvxL3LYc64paxAt
	M0XpPqXUTYtvPEhBYawA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMcby-0007RC-FD; Thu, 09 Apr 2020 19:13:14 +0000
Received: from mail-dm6nam11on20603.outbound.protection.outlook.com
 ([2a01:111:f400:7eaa::603]
 helo=NAM11-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMcbd-0007K6-0U
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 19:12:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jL3xkUvXidn0rLmJI1apuSAxw1Bhjl6s1pHBUD7paYET48XK2zr0bJ2xOjJp9cgN8+JhfCmmUsTEBCLfpz15ZEy4U34Of6sYDQhi9aA4SJM92Mp7D+FtQP2Ig6Ha+n5U8ayMFUjB/AUtyULuO+bcAJ6h2e+bc1/dAMgU8VbOSZmmvHNyFVSpUk6rv2zbenvaYldDA1sMMNGf5cUWGc9bV355NhIsDgBk50dkjQ5zYOuW0B1GBKn5TOroitJ5yHUvEUvgFMgrqGT4KNbZJ8dQMVUgwYPDMHWUVCgvEeAXIcx+BUGwZ2qW2o7p4d2GeOTvYuD+NACaaUeq4tnTo5eL1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YS8FwPDarqj06h6I7+4l8DbmQvhTNtRxErn/anQkua8=;
 b=SecfxnKGc60YPpPCZydOqFi93Kxm4zti/xGqRhYYkdNBAUtKthvGY/Cg41BXwSOu8Uv0sReYLqnIi54YUZb4hhdJxe8pPd+3eT7dT9zOiXtheCR11lNd1NhcnfwRnmKBB7K0cYCLkUnL5pTvfcBA9MYyZsB55YhHz0hww6hHrig1Vbh2DYKl7AaUsUpyj6xYe3YBzAaD8+NfmeD/TARes/Y247ltiHhhuDCi69QJNzg+jpb0wsxKrMeHKkb/ev4aUMUVPzUVgOnnlB0vI9vzvWrrnElpa02c3m6oG0YZybSmCGwIh6dFajaXgqJArEeZuMNHopLBjwXLOG0agWt7NA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=linaro.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YS8FwPDarqj06h6I7+4l8DbmQvhTNtRxErn/anQkua8=;
 b=qG07yGTYNDiGKtT0aXfmo0NLNu1V7epoFAZk2rHNb46rD7Jwld8j6zj692fPp8ePRbpomu53TVuP9xgVCJDxguVomVS503VGjyQGUHztEpprw8YrA2HrTQ5s3ANYSYcA4GIsqvwqJvis7sUGS3uJcdoL9OTjH8/REV8S2XWg1p8=
Received: from MN2PR18CA0009.namprd18.prod.outlook.com (2603:10b6:208:23c::14)
 by CY4PR02MB2709.namprd02.prod.outlook.com (2603:10b6:903:124::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.20; Thu, 9 Apr
 2020 19:12:51 +0000
Received: from BL2NAM02FT007.eop-nam02.prod.protection.outlook.com
 (2603:10b6:208:23c:cafe::ef) by MN2PR18CA0009.outlook.office365.com
 (2603:10b6:208:23c::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.17 via Frontend
 Transport; Thu, 9 Apr 2020 19:12:50 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; linaro.org; dkim=none (message not signed)
 header.d=none;linaro.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT007.mail.protection.outlook.com (10.152.77.46) with Microsoft SMTP
 Server id 15.20.2900.15 via Frontend Transport; Thu, 9 Apr 2020 19:12:50
 +0000
Received: from [149.199.38.66] (port=44314 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jMcb9-00060N-Ea; Thu, 09 Apr 2020 12:12:23 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jMcbZ-0007NV-TI; Thu, 09 Apr 2020 12:12:49 -0700
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jMcbT-0007La-C7; Thu, 09 Apr 2020 12:12:43 -0700
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH v4 23/25] firmware: xilinx: Add system shutdown API interface
Date: Thu,  9 Apr 2020 12:12:12 -0700
Message-Id: <1586459534-8997-24-git-send-email-jolly.shah@xilinx.com>
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
 SFS:(10009020)(4636009)(136003)(346002)(39860400002)(396003)(376002)(46966005)(107886003)(426003)(2906002)(44832011)(26005)(6636002)(7696005)(4326008)(2616005)(54906003)(336012)(70206006)(186003)(7416002)(9786002)(81166007)(8936002)(81156014)(5660300002)(6666004)(478600001)(82740400003)(70586007)(36756003)(316002)(356004)(8676002)(47076004);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0daab35a-63aa-47a1-a680-08d7dcb9ff19
X-MS-TrafficTypeDiagnostic: CY4PR02MB2709:
X-Microsoft-Antispam-PRVS: <CY4PR02MB27099DE9AC34858C9606D3F2B8C10@CY4PR02MB2709.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:556;
X-Forefront-PRVS: 0368E78B5B
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 08u7Xu2edJXcfB4mUb0OT10iAi/ysEtx3XigGjGrTzr2xnir4LSHYb38bhGYj3cW3+vY1UQoO4QR038B7RqL5oUg4llCQCIElhljrMbnLmK04xSijofv+aIVe5fRflIXmO4LLNkz9e9P1TBJifiFWDaCAbeYqNl/Xo8DfUIrMQGFRTg51D/n8gNOIdJKpImIP39P4Rn9qNtZpnjoin6kbP622byA+V0jbH9dJs6qUpEadzoHW9vNqiJCdhCZKBoVtOlPtlGeev5oziuSA+TOumwhrO2POjDMEUhrsV0VWGWpkm+cQulcJZdHiyvLW/8DhDQIeA8L3fFQ44yQRl9abxZbYSbq0F7FjCaXJRpv7RD0e1WFpc36CS2bPDMUob71aqulCEw9pkwjPtpK/0y8lECfQFO1gt6DUexzkKkm1pb+sSF9RzTFLtTh0ihP/pKZ7+yyBn5KXwQQCx/5vsto3rWK8VUE8CT+nu0+xdhYfMjh96pt73l/LDtk63IhMtYGIZesR0KeLYHtpPqLDQyNEg==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2020 19:12:50.2996 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 0daab35a-63aa-47a1-a680-08d7dcb9ff19
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR02MB2709
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_121253_063847_8E1FCF1C 
X-CRM114-Status: UNSURE (   7.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

Add system shutdown API interface which asks firmware to
perform system shutdown/restart.

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
---
 drivers/firmware/xilinx/zynqmp.c     | 13 +++++++++++++
 include/linux/firmware/xlnx-zynqmp.h |  6 ++++++
 2 files changed, 19 insertions(+)

diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index 2fe4f57..9ba376c 100644
--- a/drivers/firmware/xilinx/zynqmp.c
+++ b/drivers/firmware/xilinx/zynqmp.c
@@ -875,6 +875,19 @@ int zynqmp_pm_aes_engine(const u64 address, u32 *out)
 }
 EXPORT_SYMBOL_GPL(zynqmp_pm_aes_engine);
 
+/**
+ * zynqmp_pm_system_shutdown - PM call to request a system shutdown or restart
+ * @type:	Shutdown or restart? 0 for shutdown, 1 for restart
+ * @subtype:	Specifies which system should be restarted or shut down
+ *
+ * Return:	Returns status, either success or error+reason
+ */
+int zynqmp_pm_system_shutdown(const u32 type, const u32 subtype)
+{
+	return zynqmp_pm_invoke_fn(PM_SYSTEM_SHUTDOWN, type, subtype,
+				   0, 0, NULL);
+}
+
 static ssize_t ggs_show(struct device *device,
 			struct device_attribute *attr,
 			char *buf,
diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index c1356e9..2254c7c 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -64,6 +64,7 @@
 
 enum pm_api_id {
 	PM_GET_API_VERSION = 1,
+	PM_SYSTEM_SHUTDOWN = 12,
 	PM_REQUEST_NODE = 13,
 	PM_RELEASE_NODE,
 	PM_SET_REQUIREMENT,
@@ -340,6 +341,7 @@ int zynqmp_pm_write_ggs(u32 index, u32 value);
 int zynqmp_pm_read_ggs(u32 index, u32 *value);
 int zynqmp_pm_write_pggs(u32 index, u32 value);
 int zynqmp_pm_read_pggs(u32 index, u32 *value);
+int zynqmp_pm_system_shutdown(const u32 type, const u32 subtype);
 #else
 static inline struct zynqmp_eemi_ops *zynqmp_pm_get_eemi_ops(void)
 {
@@ -482,6 +484,10 @@ static inline int zynqmp_pm_read_pggs(u32 index, u32 *value)
 {
 	return -ENODEV;
 }
+static inline int zynqmp_pm_system_shutdown(const u32 type, const u32 subtype)
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
