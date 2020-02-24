Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4667616AE25
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 18:53:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IkBK21hCQ13J0QlcapNbbvtZWvzBWuTKVbAE0T/gtZI=; b=nB5u2fQ+k1GKSa
	HWyv8e8ymDdamFL1Q915rO2pTvmgNmsA1VrRrX+2JPA14gL1b+9voPw909o0IPTFXp6BRs0gz3HqF
	PoTTa5MS+wAhU5qIJSSC/QolAVc0330pc1rTPPJOT5lYKHiSsYTiPEPtZl0rot3atP/cX8lVA+6Kk
	mV+0EHK0miPKUhZ3QQ9pGUluMK/hCECfl1KZBpYmxcmtgZOjDVG9PnIHoNFgZTqKhA7gqjA0vKLGZ
	OdcQwAuUHOaSOqvWN7rFFbQbi50ehuLQgZRmi4m0SqEc3rXF/970armH+WhjTC/oqmO4jj8jDBP7P
	TEUD4W9nP6hc5kAlTq1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Hux-0008F0-3z; Mon, 24 Feb 2020 17:53:19 +0000
Received: from mail-bn7nam10on2059.outbound.protection.outlook.com
 ([40.107.92.59] helo=NAM10-BN7-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6HuO-00083T-Mm
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 17:52:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H0aSU9sT1abNs7RUC+zpaWpVZwbE2EyOzZbKIS8xGGPEZHl23JsQRYxnFNqOKgTnu3WLvHB2BK4P6fI5XWQtj5SeT5kqunAaJU+/RERPRfUhg7WAPY/9PfbP+YzdsJnMHipuZBzadF6oOsoo+09TwHBqOB7S+I3ZJQI37M3cScxIwc7w+ZNpQCYEzQVK3OJLAvoeGDhGH+txw6w8mbCRXb/uQxVWgXHQB/+uY8oCZsdDRjsUStP0zRAOulM/xlTwyPgCU5arFVH0zhsyd5Opxo28LRT1CfMMx/tcNVHrfMvD409WnVUfy8R+Lwn9bgli1KZblDvP4r86vPizpKVM7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TlOLxhheTmJ7VFpAza6SiAmhY+0TDqWub//Lg7ORgyg=;
 b=Ftfc7whG4TeXb00vMWU8B81izpfgE4JIXB9yoGnTz0PPaPt2Vlv73lTHECsc18M2AhNUl4lyvgQmvKpoNGKsZhs2ig+qOjhJ3uat5KxYPHWORp5I+8RoZhp2epi/E/i4ireFTyqxUkH/zVZO935G7xboe/WJs3Ux34UISZBncVNI06GNa1lloHHcQNtWiZm9fV5JIGVhl2R/LRvwobMq0MFqxgqx8s3vLOjyf84coYUnNppcImjTnsD7zNXsXsrYjKoduC8tkyxK1QlPIh+CXiYsKz+3DVfU2qfFi8Lx0DuceX/Jsbba2ngTGFiVwLd946SQZShitPXPQGGtkx9Hrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TlOLxhheTmJ7VFpAza6SiAmhY+0TDqWub//Lg7ORgyg=;
 b=gZzHaEcyAXIl/taHiV03/xMAYgeLiqGysG6quLLfVaTyd7leC40+iQblKLJStywM0jMW6ehAk32TeLxTs9B5IDroA1TZAgM5kBTvNEzR0theyaOakr2gPCh9QS2cMPsEG8AbRCo1ruPnIZuTCCjFVX7kgxvRTK0m/SlgjLL8LSo=
Received: from BL0PR02CA0105.namprd02.prod.outlook.com (2603:10b6:208:51::46)
 by CH2PR02MB6760.namprd02.prod.outlook.com (2603:10b6:610:7f::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2750.17; Mon, 24 Feb
 2020 17:52:42 +0000
Received: from BL2NAM02FT006.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::206) by BL0PR02CA0105.outlook.office365.com
 (2603:10b6:208:51::46) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2750.18 via Frontend
 Transport; Mon, 24 Feb 2020 17:52:41 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT006.mail.protection.outlook.com (10.152.76.239) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2750.18
 via Frontend Transport; Mon, 24 Feb 2020 17:52:41 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <ben.levinsky@xilinx.com>)
 id 1j6HuL-0006VH-09; Mon, 24 Feb 2020 09:52:41 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <ben.levinsky@xilinx.com>)
 id 1j6HuF-0007aa-TS; Mon, 24 Feb 2020 09:52:35 -0800
Received: from xsj-pvapsmtp01 (maildrop.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 01OHqV0I001813; 
 Mon, 24 Feb 2020 09:52:31 -0800
Received: from [172.19.2.206] (helo=xsjblevinsk50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <ben.levinsky@xilinx.com>)
 id 1j6HuB-0007aE-LD; Mon, 24 Feb 2020 09:52:31 -0800
From: Ben Levinsky <ben.levinsky@xilinx.com>
To: ohad@wizery.com, bjorn.andersson@linaro.org, michal.simek@xilinx.com,
 jollys@xilinx.com, rajan.vaja@xilinx.com, robh+dt@kernel.org,
 mark.rutland@arm.com
Subject: [PATCH 3/5] firmware: xilinx: Add zynqmp_get_node_status API
Date: Mon, 24 Feb 2020 09:52:29 -0800
Message-Id: <1582566751-13118-4-git-send-email-ben.levinsky@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582566751-13118-1-git-send-email-ben.levinsky@xilinx.com>
References: <1582566751-13118-1-git-send-email-ben.levinsky@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39850400004)(376002)(396003)(136003)(199004)(189003)(44832011)(426003)(336012)(36756003)(478600001)(70206006)(70586007)(7696005)(9786002)(5660300002)(2906002)(356004)(26005)(316002)(8936002)(2616005)(186003)(4326008)(8676002)(81156014)(81166006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6760; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 66bb1543-414f-4b26-72e3-08d7b9525863
X-MS-TrafficTypeDiagnostic: CH2PR02MB6760:
X-Microsoft-Antispam-PRVS: <CH2PR02MB676003BA3B7CA8DCC9606AA6B5EC0@CH2PR02MB6760.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:3631;
X-Forefront-PRVS: 032334F434
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: EUbnVppEtPYRWfOZR1ky/YB94mw8FwQgbaEWv0Li6uYpi9mMh5yG4ReA9GmhdAp4XNocgtOry0srifFnCYXeAobte2mrLYLInzSPelhQe1tBs1pXOSfbrrlD1v3jbWu+8O/oRDckScFvMRAADvP+OFByxgtY25a6gGr2fcBb5Nb+4gWY1frUUn6MAJNdGS6IH7JFaGynZxHk2rkkXzdCmFm+49b+o9DPJXvki9n8qTb+X3RP/aphiCDavqQ2C/5u+pZ7950ZFpnr06YM940n9/9CdOjgK6HA+RFNov1HtZv3iLrTEhJyFMk1QJZ1jUz4l25nMyc/LHVWB0Jdmt/kYHF7+qiO32HatshjdCSQ47T0K27nbTKa/SVKutYNXmaaXkH9jUJD5QjnpvKhoFXiOxQPUw9w2nL/pC8pI8G0dy/t9DVFSi3DBTlkjUtq1cFF
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2020 17:52:41.5181 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 66bb1543-414f-4b26-72e3-08d7b9525863
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6760
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_095244_750948_C32AF3F3 
X-CRM114-Status: GOOD (  13.91  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.92.59 listed in list.dnswl.org]
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
index 486dcb1..98e35d4 100644
--- a/drivers/firmware/xilinx/zynqmp.c
+++ b/drivers/firmware/xilinx/zynqmp.c
@@ -725,6 +725,47 @@ static int zynqmp_pm_request_wakeup(const u32 node,
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
@@ -769,6 +810,7 @@ static const struct zynqmp_eemi_ops eemi_ops = {
 	.set_requirement = zynqmp_pm_set_requirement,
 	.fpga_load = zynqmp_pm_fpga_load,
 	.fpga_get_status = zynqmp_pm_fpga_get_status,
+	.get_node_status = zynqmp_pm_get_node_status,
 };
 
 /**
diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index 0a68849..fb4efc9 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -62,6 +62,7 @@
 
 enum pm_api_id {
 	PM_GET_API_VERSION = 1,
+	PM_GET_NODE_STATUS = 3,
 	PM_REQUEST_NODE = 13,
 	PM_RELEASE_NODE,
 	PM_SET_REQUIREMENT,
@@ -309,6 +310,8 @@ struct zynqmp_pm_query_data {
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
