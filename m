Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE1C01AD25A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 23:55:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2RoRkne1g14I7CElN1QmgN/f7pNCSIfGdYAIN2h2rYA=; b=uxzpRVMSnpOYwv
	YrXcWgsIHZQyCp/nrKKCgvcw57FuKBtrWFm2GeGnvm4wCFaz36mdcb80TQ+9iJde4vU7UZkEK7uvD
	O9KwSzrixtWL7+h2aVpq3Gdlhe5Ba6flbKpm0N4lBTwBiySiT2e6057SyaChxvb0VwrNoxxn9X4CB
	KtIhVDp3+EgWfxG5OLLvP6ILH4zY2UdTEcHEx+rY6/hFAaG8CbDdrXNaQlvWrJE569GhBOkdQFA82
	ETdPnD4D9cd+npABU7TybS4w9PXxCxGGxowRUHMNZEFCkD4U+At8nWcgRJcpwX/1ceR1+8Fz7WHiN
	+n8wmi5e3G0b0g+ab7dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPCTt-0005NR-NY; Thu, 16 Apr 2020 21:55:33 +0000
Received: from mail-mw2nam10on2056.outbound.protection.outlook.com
 ([40.107.94.56] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPCTC-0002nV-Q3
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 21:54:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IFWVBSn1CyCLkTlvWGknEuoiBWnP4Ur6L/QbPQl9BkNC5hGuz7ahEQZvC2Fwj0afO8/invLeAqxuZZeNEJypYRsBHWILf2ncezI7kIod+nzfYPs+Jf/5pot91lZlAEpuqen7OzWmEI0CmIxhbLf/VYkoPNjjawNS5uMcfEDFTNR/D2szGfQQnXpJK79t/p7BbLg+sWvNQjYTWNy0HnJ694tzQ5h5RJU8QCDHaUabY8/7JFYYyPgD9dQBE9EAdhK6M02YQ0yAkaiDnxDoLEopMzxIPh++S9OghgFyRyaEe6TshMNcLaKtQaSPvV/RshxRv9ycJXaky//fy9GDSnfCoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9WqrD7LBiBunrsj9HOaj53bxUwVO+GIZjl21Y89+zUY=;
 b=nS1mK4OmvfSQG1Txyl5yAKSbgR/FpmqEbH06NMhC3bMFLY5WEiPdxXQlZmiB5IxWjxbWIKmUmHtAr7bjixsDg1TfQBhcefYQs6z4KRgLvgi1AXW2UU+uo4QenWIJBlZmKMxMNyaqAtmfSXEbKBFzl/XjoZOlHRp795+wZJDKpT+EZOmt4TgSbwH2ALcHd0Mz93sPMALBpIItWT24Oy2CevmENlnHfEapqh9CBWxLd5+sox0++EpKVaI5CPgqygY+sXUL2lhdce5LOfDkB9rYBw8+/IOLeypwrjW0ZaPQ0/nHcEjkgdPpFHlKTbza9VkzN2o2Lll2LtQBbYsCzHVngA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=wizery.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9WqrD7LBiBunrsj9HOaj53bxUwVO+GIZjl21Y89+zUY=;
 b=AD4PwM9N/zTnfZ8i6PZ7y7S9rx5W0aFOCpuWwvdLsKO/mEZG7t+UaFYE74RupCRujY1Kp5JaDdqPyppIXWCevwrXSvBtWztaJNhf46XxaCp4R8PrJZduxvG1sVMqlfHmpsObDos3IIYxagnv1eFzOyyG/I6DoihSNmZJwcZx1Nw=
Received: from CY4PR02CA0016.namprd02.prod.outlook.com (2603:10b6:903:18::26)
 by MWHPR02MB3359.namprd02.prod.outlook.com (2603:10b6:301:62::31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.28; Thu, 16 Apr
 2020 21:54:47 +0000
Received: from CY1NAM02FT041.eop-nam02.prod.protection.outlook.com
 (2603:10b6:903:18:cafe::7c) by CY4PR02CA0016.outlook.office365.com
 (2603:10b6:903:18::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.26 via Frontend
 Transport; Thu, 16 Apr 2020 21:54:47 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; wizery.com; dkim=none (message not signed)
 header.d=none;wizery.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT041.mail.protection.outlook.com (10.152.74.156) with Microsoft SMTP
 Server id 15.20.2921.25 via Frontend Transport; Thu, 16 Apr 2020 21:54:46
 +0000
Received: from [149.199.38.66] (port=38374 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <ben.levinsky@xilinx.com>)
 id 1jPCSN-0004cS-8T; Thu, 16 Apr 2020 14:53:59 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <ben.levinsky@xilinx.com>)
 id 1jPCT8-0003e3-FH; Thu, 16 Apr 2020 14:54:46 -0700
Received: from [172.19.2.206] (helo=xsjblevinsk50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <ben.levinsky@xilinx.com>)
 id 1jPCT4-0003cm-7B; Thu, 16 Apr 2020 14:54:42 -0700
From: Ben Levinsky <ben.levinsky@xilinx.com>
To: ohad@wizery.com, bjorn.andersson@linaro.org, michal.simek@xilinx.com,
 jollys@xilinx.com, rajan.vaja@xilinx.com, robh+dt@kernel.org,
 mark.rutland@arm.com
Subject: [PATCH v2 2/5] firmware: xilinx: Add shutdown/wakeup APIs
Date: Thu, 16 Apr 2020 14:54:39 -0700
Message-Id: <1587074082-14836-3-git-send-email-ben.levinsky@xilinx.com>
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
 SFS:(10009020)(4636009)(346002)(396003)(376002)(39860400002)(136003)(46966005)(81166007)(186003)(2906002)(4326008)(26005)(9786002)(8936002)(81156014)(478600001)(5660300002)(8676002)(36756003)(356005)(6666004)(2616005)(426003)(336012)(70586007)(316002)(82740400003)(7696005)(44832011)(47076004)(70206006);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 06bc6204-b084-4f5d-293d-08d7e250c784
X-MS-TrafficTypeDiagnostic: MWHPR02MB3359:
X-Microsoft-Antispam-PRVS: <MWHPR02MB3359D810DBA828039B41208BB5D80@MWHPR02MB3359.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:2512;
X-Forefront-PRVS: 0375972289
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: aOwAXies5VhjaJtr2QE4sWZHEl9XeC4intJ3FDQ63o3wvaySP/uyDtEdb4TE514gcTVsdgfHy2aCuKKyu4Z8JwPTt3hGnaDAZU0mFuHDO39wWbLVvokc08NMkiiIIxfQuWZlP1+UmgM5dHD/wsoZdE3BoYvKRpTYIUHK/eKxqWKm3vtRxyXFgko6L+3F5092fu9lCP3CFsSjLB3yhIbtRIlJ3Xs+WgUQLQgQG8NmOt4IVSGFsasXXM4woPBkYrw2aXeWkyQMYPJA1asGDtalR5w9KS3Jzt2D6iPYXg0up8tNxlJBqjO9D/MkCPieeyH4QYMuPN84LAgPsSvbluntCwzFwNxFR1nw1CaawmiSzBdAO2zU0VMoG3GcJ/eOKkg9pLa7/3P0rjzyx5q2SHGRW9fsUXfcCk96V9rko/yEl3nM83wDUYW4dGBBk/qw5RDVDQCcVwdgU5dNNYjRZUPnkoHNgctwTzYLW8LW9xnLvUzlfMd5zZ4FM43XshNDiqXGHhpHeYnNfNgywI4+bS7Org==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Apr 2020 21:54:46.8672 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 06bc6204-b084-4f5d-293d-08d7e250c784
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR02MB3359
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_145450_859612_7502D62A 
X-CRM114-Status: GOOD (  10.30  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.94.56 listed in list.dnswl.org]
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

Add shutdown/wakeup a resource eemi operations to shutdown
or bringup a resource.

Signed-off-by: Ben Levinsky <ben.levinsky@xilinx.com>
---
 drivers/firmware/xilinx/zynqmp.c     | 35 +++++++++++++++++++++++++++++++++++
 include/linux/firmware/xlnx-zynqmp.h |  8 ++++++++
 2 files changed, 43 insertions(+)

diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index 7978065..0a545a2 100644
--- a/drivers/firmware/xilinx/zynqmp.c
+++ b/drivers/firmware/xilinx/zynqmp.c
@@ -694,6 +694,39 @@ static int zynqmp_pm_release_node(const u32 node)
 }
 
 /**
+ * zynqmp_pm_force_powerdown - PM call to request for another PU or subsystem to
+ *             be powered down forcefully
+ * @target:    Node ID of the targeted PU or subsystem
+ * @ack:   Flag to specify whether acknowledge is requested
+ *
+ * Return: Returns status, either success or error+reason
+ */
+static int zynqmp_pm_force_powerdown(const u32 target,
+				   const enum zynqmp_pm_request_ack ack)
+{
+	return zynqmp_pm_invoke_fn(PM_FORCE_POWERDOWN, target, ack, 0, 0, NULL);
+}
+
+/**
+ * zynqmp_pm_request_wakeup - PM call to wake up selected master or subsystem
+ * @node:  Node ID of the master or subsystem
+ * @set_addr:  Specifies whether the address argument is relevant
+ * @address:   Address from which to resume when woken up
+ * @ack:   Flag to specify whether acknowledge requested
+ *
+ * Return: Returns status, either success or error+reason
+ */
+static int zynqmp_pm_request_wakeup(const u32 node,
+				   const bool set_addr,
+				   const u64 address,
+				   const enum zynqmp_pm_request_ack ack)
+{
+	/* set_addr flag is encoded into 1st bit of address */
+	return zynqmp_pm_invoke_fn(PM_REQUEST_WAKEUP, node, address | set_addr,
+					address >> 32, ack, NULL);
+}
+
+/**
  * zynqmp_pm_set_requirement() - PM call to set requirement for PM slaves
  * @node:		Node ID of the slave
  * @capabilities:	Requested capabilities of the slave
@@ -750,9 +783,11 @@ static const struct zynqmp_eemi_ops eemi_ops = {
 	.clock_getrate = zynqmp_pm_clock_getrate,
 	.clock_setparent = zynqmp_pm_clock_setparent,
 	.clock_getparent = zynqmp_pm_clock_getparent,
+	.force_powerdown = zynqmp_pm_force_powerdown,
 	.ioctl = zynqmp_pm_ioctl,
 	.reset_assert = zynqmp_pm_reset_assert,
 	.reset_get_status = zynqmp_pm_reset_get_status,
+	.request_wakeup = zynqmp_pm_request_wakeup,
 	.init_finalize = zynqmp_pm_init_finalize,
 	.set_suspend_mode = zynqmp_pm_set_suspend_mode,
 	.request_node = zynqmp_pm_request_node,
diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index ddc996de..899febc 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -62,6 +62,8 @@
 
 enum pm_api_id {
 	PM_GET_API_VERSION = 1,
+	PM_FORCE_POWERDOWN = 8,
+	PM_REQUEST_WAKEUP = 10,
 	PM_REQUEST_NODE = 13,
 	PM_RELEASE_NODE,
 	PM_SET_REQUIREMENT,
@@ -338,6 +340,12 @@ struct zynqmp_eemi_ops {
 			    const u32 qos,
 			    const enum zynqmp_pm_request_ack ack);
 	int (*release_node)(const u32 node);
+	int (*force_powerdown)(const u32 target,
+				const enum zynqmp_pm_request_ack ack);
+	int (*request_wakeup)(const u32 node,
+				const bool set_addr,
+				const u64 address,
+				const enum zynqmp_pm_request_ack ack);
 	int (*set_requirement)(const u32 node,
 			       const u32 capabilities,
 			       const u32 qos,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
