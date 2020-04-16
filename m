Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BB251AD252
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 23:55:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fFoyRFY/zmuNLryKtk4ykNB10HF0Ic89Po8YshMwHAs=; b=iqg+CSzeuA6NOM
	GonO0y23SJ1Yox2bK1l3Ie2iKKYHvUNBf28NsYNn1BybmhE50Pv41vUbgrGa1bcnoZVR7H/QxZL18
	Bw2aYQQndE9Uf7UukAqMoqt+491kdG/SK7BXuHkRTGjeQiHyEXj9MgNl3N89RYrC5R3jXh1JmFxOZ
	M1ogvyjkVQKysu/rHA7KuvAsie95AymtYQLpFosseG3akpLJz1ltlknhQBjW9TYXAm0JwQeashg8j
	xmCw5CQBx2s/nODUp+Zw6rUJEa758gXBMlbV1Oa2FtU6VznxubImni/gDyb7afKs+MdpoIy7IM+Ms
	8RAnpFuKE34Sy6CK2mGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPCTe-0002qT-Cp; Thu, 16 Apr 2020 21:55:18 +0000
Received: from mail-mw2nam10on2045.outbound.protection.outlook.com
 ([40.107.94.45] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPCTD-0002nd-5Y
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 21:54:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mEQySly1d7gt7loUwO9VwQZdP/PMe1kaoqAai6lUos3kZPtTmsCArBTFI4g35Us+QSY5rg6Y/9bVU99BHBfPNgu4/UHSnka33IO3CSFRVtH/ltzX8mwTpqnBblJmf8DO6X5xSvqpfZSiWSlRViukU2MjQCR+L958eOFMzq6foAGoyVhkxCfm4bIf55MoUguI5INQmtP9m+iihRParsC5LdBuhdRDU5sgFoIfQBjJoOl4QPnBKJ306hBr/SD4MNB5hGBV8RdIF8bOSHDSPkwuxm/AgQ6pgUO1KjqiktQjbUyCRVGF0zjPZyAY26A3Xk+CW8QZ3+bv0Qdxufba+tt/rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=btZsUjCsTfExWUXR0J03tvhl+ASq8g/KU1R/B1avt0k=;
 b=lR7imA2LJHJYGbZ8TSsGzZl13vbQLKXg0c9XItuQeQxgySD0Mq8567Q3ylh/yDvspl410BM1jYnAdoeuLDIbqwP0xedVnm/jsL/wykBSTSiB54ejvqxFblG/73ndCtdzzL3hoo59NmamIMwOhFE//6sVdfgN+WHmgPuOzg5G5gXw72ne9GCcCXeq+x0wWNnDpUZCu28vE1J65aDloVyEosutDtnFYHTSfsiHwplInje+II0NB1IT4JIn8GUioaeAgqHmWrMMe3h2lmfKlp/pFjQd0Xy48CA0ltET5+whgEvAbS+lhlTS3rMFDoDgl4cNux9VKy9YNQUwza0d9LLrPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=wizery.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=btZsUjCsTfExWUXR0J03tvhl+ASq8g/KU1R/B1avt0k=;
 b=pSCTufUjJ8JtnMPYMN7aoVtrb7BOv1xPZ89QFjuE4HwtOllMCvXV6G1+mWZZhN5KbgkF9/N5zo6km793FMmUuzul05Y9n9BIP9MHaBo94+QZtrgCweFX7qJouVsVhVx9bVjd5d6LqsxHHzH2BKhtq0Aj6rG6p3fF2UHkqN6vu7I=
Received: from MN2PR16CA0045.namprd16.prod.outlook.com (2603:10b6:208:234::14)
 by CY4PR0201MB3620.namprd02.prod.outlook.com (2603:10b6:910:92::35)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.15; Thu, 16 Apr
 2020 21:54:47 +0000
Received: from BL2NAM02FT043.eop-nam02.prod.protection.outlook.com
 (2603:10b6:208:234:cafe::a1) by MN2PR16CA0045.outlook.office365.com
 (2603:10b6:208:234::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.27 via Frontend
 Transport; Thu, 16 Apr 2020 21:54:47 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; wizery.com; dkim=none (message not signed)
 header.d=none;wizery.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT043.mail.protection.outlook.com (10.152.77.95) with Microsoft SMTP
 Server id 15.20.2921.25 via Frontend Transport; Thu, 16 Apr 2020 21:54:47
 +0000
Received: from [149.199.38.66] (port=38396 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <ben.levinsky@xilinx.com>)
 id 1jPCSN-0004cb-I2; Thu, 16 Apr 2020 14:53:59 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <ben.levinsky@xilinx.com>)
 id 1jPCT8-0003e3-OR; Thu, 16 Apr 2020 14:54:46 -0700
Received: from [172.19.2.206] (helo=xsjblevinsk50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <ben.levinsky@xilinx.com>)
 id 1jPCT4-0003cm-7Y; Thu, 16 Apr 2020 14:54:42 -0700
From: Ben Levinsky <ben.levinsky@xilinx.com>
To: ohad@wizery.com, bjorn.andersson@linaro.org, michal.simek@xilinx.com,
 jollys@xilinx.com, rajan.vaja@xilinx.com, robh+dt@kernel.org,
 mark.rutland@arm.com
Subject: [PATCH v2 3/5] firmware: xilinx: Add zynqmp_get_node_status API
Date: Thu, 16 Apr 2020 14:54:40 -0700
Message-Id: <1587074082-14836-4-git-send-email-ben.levinsky@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1587074082-14836-1-git-send-email-ben.levinsky@xilinx.com>
References: <1587074082-14836-1-git-send-email-ben.levinsky@xilinx.com>
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(346002)(39860400002)(136003)(376002)(396003)(46966005)(8936002)(5660300002)(82740400003)(8676002)(47076004)(7696005)(44832011)(4326008)(336012)(186003)(2616005)(9786002)(81166007)(81156014)(70206006)(316002)(2906002)(356005)(26005)(36756003)(426003)(70586007)(478600001);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5ff81d40-e472-46b3-d9b7-08d7e250c7b0
X-MS-TrafficTypeDiagnostic: CY4PR0201MB3620:
X-Microsoft-Antispam-PRVS: <CY4PR0201MB3620F531780DA4F69D2EDA8BB5D80@CY4PR0201MB3620.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:3631;
X-Forefront-PRVS: 0375972289
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: AvzI1/bSHh7+aJaJEBG+bKToV90p/Or4ZSeqqeg3olIClu05P1qkSTfo0K9mYg9L2aCiy3MdRt3PJpvlySXzkUdkl7hcXZsIOpwF3Jx8p072/mcjZhHg8Tf1cZsVn2PUOjRr1QJ+M29o2GJQ9JoT7Xe4iwQwLH29cwgA1d//pgTZkxocGDSCCHBBVJsk15bM9Eq2yGfTZsYcrBjmo7zkM0xscKSgxbGlrZba5vAOMcKeIDapj7NU1yLRJCgElBdhfeHpcf97dgiYyqkrVIoefTNYjYYcQAtzAXnyOJaSgJsesWP9NzludYs94I+ird9/8DreHeh1xjfeJQPGr6unC1vhMet687mPAyIOQ7NU8XyjXjBJQlzqGOHsih+prI41D58E1PfkvaZs+6RsOEMeENhBkzfttPE2KppKDr/p/jSKzMt+F1J+xvfuw4NUW013mxmDX99pTlxXO+RbGrCt4CBmnJW1kGhCMEiRVsXaJuQcEFUBOkyN9O0u/2BgzDWCu+XaUr2VNpI1MNsKWI1rmQ==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Apr 2020 21:54:47.1611 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ff81d40-e472-46b3-d9b7-08d7e250c7b0
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR0201MB3620
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_145451_206862_B9D436D6 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.94.45 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds a new API to provide access to the
current power state of a sub-system on Zynqmp sub-system.

Signed-off-by: Ben Levinsky <ben.levinsky@xilinx.com>
---
 drivers/firmware/xilinx/zynqmp.c     | 42 ++++++++++++++++++++++++++++++++++++
 include/linux/firmware/xlnx-zynqmp.h |  3 +++
 2 files changed, 45 insertions(+)

diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index 0a545a2..be7e460 100644
--- a/drivers/firmware/xilinx/zynqmp.c
+++ b/drivers/firmware/xilinx/zynqmp.c
@@ -727,6 +727,47 @@ static int zynqmp_pm_request_wakeup(const u32 node,
 }
 
 /**
+ * zynqmp_pm_get_node_status - PM call to request a node's current power state
+ * @node:		ID of the component or sub-system in question
+ * @status:		Current operating state of the requested node
+ * @requirements:	Current requirements asserted on the node,
+ *			used for slave nodes only.
+ * @usage:		Usage information, used for slave nodes only:
+ *			PM_USAGE_NO_MASTER	- No master is currently using
+ *						  the node
+ *			PM_USAGE_CURRENT_MASTER	- Only requesting master is
+ *						  currently using the node
+ *			PM_USAGE_OTHER_MASTER	- Only other masters are
+ *						  currently using the node
+ *			PM_USAGE_BOTH_MASTERS	- Both the current and at least
+ *						  one other master is currently
+ *						  using the node
+ *
+ * Return:		Returns status, either success or error+reason
+ */
+static int zynqmp_pm_get_node_status(const u32 node, u32 *const status,
+				     u32 *const requirements, u32 *const usage)
+{
+	u32 ret_payload[PAYLOAD_ARG_CNT];
+	int ret;
+
+	if (!status)
+		return -EINVAL;
+
+	ret = zynqmp_pm_invoke_fn(PM_GET_NODE_STATUS, node, 0, 0,
+				  0, ret_payload);
+	if (ret_payload[0] == XST_PM_SUCCESS) {
+		*status = ret_payload[1];
+		if (requirements)
+			*requirements = ret_payload[2];
+		if (usage)
+			*usage = ret_payload[3];
+	}
+
+	return ret;
+}
+
+/**
  * zynqmp_pm_set_requirement() - PM call to set requirement for PM slaves
  * @node:		Node ID of the slave
  * @capabilities:	Requested capabilities of the slave
@@ -773,6 +814,7 @@ static int zynqmp_pm_aes_engine(const u64 address, u32 *out)
 static const struct zynqmp_eemi_ops eemi_ops = {
 	.get_api_version = zynqmp_pm_get_api_version,
 	.get_chipid = zynqmp_pm_get_chipid,
+	.get_node_status = zynqmp_pm_get_node_status,
 	.query_data = zynqmp_pm_query_data,
 	.clock_enable = zynqmp_pm_clock_enable,
 	.clock_disable = zynqmp_pm_clock_disable,
diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index 899febc..0ed7e9e 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -62,6 +62,7 @@
 
 enum pm_api_id {
 	PM_GET_API_VERSION = 1,
+	PM_GET_NODE_STATUS = 3,
 	PM_FORCE_POWERDOWN = 8,
 	PM_REQUEST_WAKEUP = 10,
 	PM_REQUEST_NODE = 13,
@@ -317,6 +318,8 @@ struct zynqmp_pm_query_data {
 struct zynqmp_eemi_ops {
 	int (*get_api_version)(u32 *version);
 	int (*get_chipid)(u32 *idcode, u32 *version);
+	int (*get_node_status)(const u32 node, u32 *const status,
+			       u32 *const requirements, u32 *const usage);
 	int (*fpga_load)(const u64 address, const u32 size, const u32 flags);
 	int (*fpga_get_status)(u32 *value);
 	int (*query_data)(struct zynqmp_pm_query_data qdata, u32 *out);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
