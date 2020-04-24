Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 095351B7CF7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 19:37:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EoNzJ2H1BbRrbOHfRr+nbuyOg6m6n0UWPJUhlpj5cfI=; b=L3++j0y9TqfAm0
	g6PB/UTnfZ01DGHcjGIG7k8htjLFcVomXo4VCK8CwlrojXJ0MH+Y8NYpYbe9cKe3Yt2oRPu4fZKzS
	oPr9SeBnuOndghVnqwc5yVXGoK9mTUAeVBNQifMnDSZA1F8A9oosC/JqMRgztUc+c55kru0knB8sn
	btLeJcdXsb8qDrF5UL9JEQ4XBN9pooQcJK328hNwCdYTDJTHdL7FBuE2yEmz8oA0qfujN7Fj47DS8
	Ehx6apir3nQVsNnsbS9gJvnj3oi7Lkm7wsqAVqagc7YT0Pql2MArtfAMnIJuurVb2rmT4No9DVgiJ
	3J+vU468Tb9N9ygjcSfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS2G5-00062U-QV; Fri, 24 Apr 2020 17:37:01 +0000
Received: from mail-bn8nam12on2089.outbound.protection.outlook.com
 ([40.107.237.89] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS2FW-0005oq-56
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 17:36:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N/kszrhg8FNctmeUZjL3218RZ40O9dGM3adVnBxtbjRyoODOy6MaCiHu1qW6fRMAVTeQzQB8ZFyxzdECKl02bglXTIL96vq/9yULLif7J/qrlxMwjAhcZ3UK+oawdl0lrYo13wNfw74Ubk34PlCygP08ctpQoG8cewFoLhT+VoUAG21UHanhqUKwBQdT3LREQHGyHmOS4fqq9wcmDGmw+6mAWDb1tcszL4FHjJ+d7sZJkQhRSxojTIhrBbDuGxpJCAltzPn8OgN+x0h1gqH5uNoysjmH2j1rZrR03jVLyhMEMR0LZSVRGo7aB1V/9RxNo7puMRUIwV3e9cCIxm9NaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0qD58fp4Riwb2wvqzecDl5BbGSm84drgIQJ1mXWwED4=;
 b=hg0u5hRosLNAPRV2dkqJ3QMHAT/Oa0TfvT4+/1ZcSOjjLT21b2BQDe+y8Ar/a9tdfbMAqHSO07aE8RHrve4QiKnpTa/8N+bl5e54XQ1ErJQQKvU6Zp4LWrslZlBcFLTdg9jgwRbK1DXb3megWUDucpyx0M8osMwBMSmtVNeszHeiPheOh02Z+Z9h1jz/NrexA8xKYawdHpUz+zOOAPHCMQraZl2Fa105jHDhutifiNP6s/2ESfeX9ppXD3fEPl+Jaaz4CjKrWT8ygZVCrwFNNYQBeiQJXivBaAdARaR35yGdZPtpbj1fj0zZDLjZ3OBYSX0SgkARytdRDMinVuQqqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0qD58fp4Riwb2wvqzecDl5BbGSm84drgIQJ1mXWwED4=;
 b=tedTUoJZ24JtLyGvivluiEEEocH3WAr3vHRIr07BEtmRnHUlIbEz1uBlscroNWQHhDiEYx3+gYq5WEF//gl/dzf3Z+OxcKTb2m76IDRWyZij5g3uI7zm7pQ/C3WBVrwtmcLdulajmS+CnNlQNKjtqHlNYaNX1BG9T3A6x+2SqKk=
Received: from SN4PR0801CA0024.namprd08.prod.outlook.com
 (2603:10b6:803:29::34) by DM6PR02MB6825.namprd02.prod.outlook.com
 (2603:10b6:5:21a::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.22; Fri, 24 Apr
 2020 17:36:23 +0000
Received: from SN1NAM02FT055.eop-nam02.prod.protection.outlook.com
 (2603:10b6:803:29:cafe::eb) by SN4PR0801CA0024.outlook.office365.com
 (2603:10b6:803:29::34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13 via Frontend
 Transport; Fri, 24 Apr 2020 17:36:23 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT055.mail.protection.outlook.com (10.152.72.174) with Microsoft SMTP
 Server id 15.20.2937.19 via Frontend Transport; Fri, 24 Apr 2020 17:36:22
 +0000
Received: from [149.199.38.66] (port=41728 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <ben.levinsky@xilinx.com>)
 id 1jS2EJ-0005BO-Nq; Fri, 24 Apr 2020 10:35:11 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <ben.levinsky@xilinx.com>)
 id 1jS2FS-0006l0-9C; Fri, 24 Apr 2020 10:36:22 -0700
Received: from xsj-pvapsmtp01 (mailhost.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 03OHaAmU026366; 
 Fri, 24 Apr 2020 10:36:11 -0700
Received: from [172.19.2.206] (helo=xsjblevinsk50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <ben.levinsky@xilinx.com>)
 id 1jS2FG-0006h9-SI; Fri, 24 Apr 2020 10:36:10 -0700
From: Ben Levinsky <ben.levinsky@xilinx.com>
To: ohad@wizery.com, bjorn.andersson@linaro.org, michal.simek@xilinx.com,
 jollys@xilinx.com, rajan.vaja@xilinx.com, robh+dt@kernel.org,
 mark.rutland@arm.com
Subject: [PATCH v4 2/5] firmware: xilinx: Add shutdown/wakeup APIs
Date: Fri, 24 Apr 2020 10:36:07 -0700
Message-Id: <1587749770-15082-3-git-send-email-ben.levinsky@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1587749770-15082-1-git-send-email-ben.levinsky@xilinx.com>
References: <1587749770-15082-1-git-send-email-ben.levinsky@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(346002)(39860400002)(136003)(396003)(46966005)(478600001)(2616005)(6666004)(26005)(47076004)(44832011)(2906002)(70206006)(8676002)(81156014)(9786002)(8936002)(186003)(4326008)(336012)(70586007)(36756003)(426003)(81166007)(316002)(7696005)(82740400003)(82310400002)(356005)(5660300002);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 513ebff1-7af9-4383-ad04-08d7e8760188
X-MS-TrafficTypeDiagnostic: DM6PR02MB6825:
X-Microsoft-Antispam-PRVS: <DM6PR02MB6825DCD3CB30E5353B8A1C3EB5D00@DM6PR02MB6825.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:2512;
X-Forefront-PRVS: 03838E948C
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /YycdCJ5oXL7OmYzoDEtsWXGJ61Eu8NcOntP60htN+iKWoC374ouJ1lLO4LPCv6/eelaiMQgi7oGc0S7Mslcar/zcJmlQZhsaNiiNTHrojx65Nwue0aXmgi5CaXqbIXWPH0PZi0+Yiu1ch83993zU4QZoPvIHmB+OpImH/cf3k4s0h2svIdgNcxSQZBNQP+xvzdCM/TVuGLQRPB/RCLo6W/joIuN6NZRwWJxAfAZkUryJ7YNCQox8+8IIQNYmI1vT9uGe6EixRvBjel9YPGwsFjenzYWtH1VVbmejWaC7u63s4Wj6sHbkr0lrbWy/JLW/UNuiPGBaYQSQcKSrXNS00tRpz3ozsmNtSupn3ISBdElVJ/iZ7xi2pwhwk7yi+KCtAswyeBfVhD0tQc2reraBWUcy8X6cly7M3D5mkZ0c//NvPvFRhV2VTPz9dS8RBhwt5XsY2KjyCviY5AYev+WLi00/C9z+2OPijWEuTgiyTcG0KxRjVTg2jND//vGKhV54PC/f4h5HXYUi+Q+mKDACA==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2020 17:36:22.5613 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 513ebff1-7af9-4383-ad04-08d7e8760188
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB6825
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_103626_195565_B8CB70C9 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.237.89 listed in list.dnswl.org]
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
changes since v2:
- add xilinx-related platform mgmt fn's instead of wrapping around
  function pointer in xilinx eemi ops struct

changes since v3:
- fix formatting
---
 drivers/firmware/xilinx/zynqmp.c     | 35 +++++++++++++++++++++++++++++++++++
 include/linux/firmware/xlnx-zynqmp.h | 22 ++++++++++++++++++++++
 2 files changed, 57 insertions(+)

diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index bfaf29a..16a8d69 100644
--- a/drivers/firmware/xilinx/zynqmp.c
+++ b/drivers/firmware/xilinx/zynqmp.c
@@ -845,6 +845,41 @@ int zynqmp_pm_release_node(const u32 node)
 EXPORT_SYMBOL_GPL(zynqmp_pm_release_node);
 
 /**
+ * zynqmp_pm_force_powerdown - PM call to request for another PU or subsystem to
+ *             be powered down forcefully
+ * @target:    Node ID of the targeted PU or subsystem
+ * @ack:   Flag to specify whether acknowledge is requested
+ *
+ * Return: status, either success or error+reason
+ */
+int zynqmp_pm_force_powerdown(const u32 target,
+			      const enum zynqmp_pm_request_ack ack)
+{
+	return zynqmp_pm_invoke_fn(PM_FORCE_POWERDOWN, target, ack, 0, 0, NULL);
+}
+EXPORT_SYMBOL_GPL(zynqmp_pm_force_powerdown);
+
+/**
+ * zynqmp_pm_request_wakeup - PM call to wake up selected master or subsystem
+ * @node:  Node ID of the master or subsystem
+ * @set_addr:  Specifies whether the address argument is relevant
+ * @address:   Address from which to resume when woken up
+ * @ack:   Flag to specify whether acknowledge requested
+ *
+ * Return: status, either success or error+reason
+ */
+int zynqmp_pm_request_wakeup(const u32 node,
+			     const bool set_addr,
+			     const u64 address,
+			     const enum zynqmp_pm_request_ack ack)
+{
+	/* set_addr flag is encoded into 1st bit of address */
+	return zynqmp_pm_invoke_fn(PM_REQUEST_WAKEUP, node, address | set_addr,
+				   address >> 32, ack, NULL);
+}
+EXPORT_SYMBOL_GPL(zynqmp_pm_request_wakeup);
+
+/**
  * zynqmp_pm_set_requirement() - PM call to set requirement for PM slaves
  * @node:		Node ID of the slave
  * @capabilities:	Requested capabilities of the slave
diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index bb347df..4d83a7d 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -64,6 +64,8 @@
 
 enum pm_api_id {
 	PM_GET_API_VERSION = 1,
+	PM_FORCE_POWERDOWN = 8,
+	PM_REQUEST_WAKEUP = 10,
 	PM_SYSTEM_SHUTDOWN = 12,
 	PM_REQUEST_NODE = 13,
 	PM_RELEASE_NODE,
@@ -376,6 +378,12 @@ int zynqmp_pm_write_pggs(u32 index, u32 value);
 int zynqmp_pm_read_pggs(u32 index, u32 *value);
 int zynqmp_pm_system_shutdown(const u32 type, const u32 subtype);
 int zynqmp_pm_set_boot_health_status(u32 value);
+int zynqmp_pm_force_powerdown(const u32 target,
+			      const enum zynqmp_pm_request_ack ack);
+int zynqmp_pm_request_wakeup(const u32 node,
+			     const bool set_addr,
+			     const u64 address,
+			     const enum zynqmp_pm_request_ack ack);
 #else
 static inline struct zynqmp_eemi_ops *zynqmp_pm_get_eemi_ops(void)
 {
@@ -526,6 +534,20 @@ static inline int zynqmp_pm_set_boot_health_status(u32 value)
 {
 	return -ENODEV;
 }
+
+static inline int zynqmp_pm_force_powerdown(const u32 target,
+				    const enum zynqmp_pm_request_ack ack)
+{
+	return -ENODEV;
+}
+
+static inline int zynqmp_pm_request_wakeup(const u32 node,
+					   const bool set_addr,
+					   const u64 address,
+				   const enum zynqmp_pm_request_ack ack)
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
