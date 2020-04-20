Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99D011B197E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 00:28:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3u6IOwIxQQbMzgvaSym+llR7UpJ+bf/9G7xDgCT9b3o=; b=so9PzCiXMEcK6r
	godODnI5vVeb3/9OkF3LGTa30aHdbLlo0vfqOo7BDmEJN5hdOecQLCqfSVuFifn5P2z1rG83Mk/XT
	L83mcDkT1BaHY12SO9WiBP5DPyC0WmzuK5stsuc6JeZ1WuSguu4L/an293I5RrJbogh+X77NZ3AP7
	BI1nZH2aRwJTHDK9tpb5/PyIdZCsVKP/zMxA2t9nLgL5lHfp2ktiiopr9cOY6XfZ913eSVY3m6T/8
	Ge6DxnydCQ/RXvV0beByACD9q3i8x7WeRje7K07mNdfl+7zQ4ftYa24/f3PIchm8e8he5Hm+1BlXm
	GEEJh7Vq5gau3h+bjnuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQeu7-0002lo-ER; Mon, 20 Apr 2020 22:28:39 +0000
Received: from mail-mw2nam10on2061.outbound.protection.outlook.com
 ([40.107.94.61] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQest-0001qr-Hc
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 22:27:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PUkIaapcN8s1zddoi6kVxtoyDIQu/zlVPG+UnhLLpi2F4QyZbjUxy4+r8W6D0DeEybphWfCX9ewjIgomF/g9MFDIXrUNrCbDW03Pyj0Scpzt8qZVXmQR3Ed0ANgfByS+o7uI/rY8YVwwtgQJi4U4eNOpcTft51E/f0J3SX22C9htoabU8orpc6r7gI9KEI0eADvtBS+ALQlv140d29mEKBFDf89+7D87JnoZ8teQF/1tZZx4xz2iqQ9SYNnm8PgZF5QE4ZFpFS8lQjkG3mFfQuhQ2BY6iF1wjgC71GeV/Dx2ihKspPv/KZaVKrj6v3JPB/r0DZF8n9P4m1TK4UGcGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8Y+GJAwFske+LJFmpBtV0A6pyU67g9nbtYpxtOFkzBg=;
 b=QkFsdd5i44tczhPi8akl3B7jaRh6hK0e9HGLkyfY0J698JqRQIO3sQHj11ot9PsRQtYfJzYlu5uP4NiBRMt/229H/ashDcXE4LYZQ5fUJw0BXpuuzWddPxkHe0N32mMsYNuI43znwxV3JuwDgKk1CIHUQ41StjBs3jPLGlQZcXDmcad+kVqTbNw43CJA6U1Xk9qX1GkVD1+qskq82XZlK91BKKXsyyaVAFPljp0hOHGNy9bmQtouuSsykqlpO6xLaKvoN3bkWv0Oz2ATxaisjqSmKWdFt8zh7qvI6/ZRgFbGZ+wQ6GJyhOggw1Q/U8ZZ6srs9ggF5Aimi46ApFKrtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8Y+GJAwFske+LJFmpBtV0A6pyU67g9nbtYpxtOFkzBg=;
 b=F3S7VFzbXsAuc/GfLu9iv/Dev+cOmPy76zLyDYpuh+dFfCya50C0eSVxvhrva7cZS8/oEfAKNv9IUs9/9cbMbKcBebgbPTz03hmr/3UXtFd9vEtqVSFAD25tTwDtc2gN4ha7UnjZKEGV9ShS9zsimpb+kA4WvclE3c3NDxuFTZ8=
Received: from SN4PR0601CA0002.namprd06.prod.outlook.com
 (2603:10b6:803:2f::12) by BL0PR02MB5633.namprd02.prod.outlook.com
 (2603:10b6:208:84::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.29; Mon, 20 Apr
 2020 22:27:20 +0000
Received: from SN1NAM02FT009.eop-nam02.prod.protection.outlook.com
 (2603:10b6:803:2f:cafe::23) by SN4PR0601CA0002.outlook.office365.com
 (2603:10b6:803:2f::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.25 via Frontend
 Transport; Mon, 20 Apr 2020 22:27:20 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT009.mail.protection.outlook.com (10.152.73.32) with Microsoft SMTP
 Server id 15.20.2921.25 via Frontend Transport; Mon, 20 Apr 2020 22:27:19
 +0000
Received: from [149.199.38.66] (port=33644 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <ben.levinsky@xilinx.com>)
 id 1jQers-0000Sa-1E; Mon, 20 Apr 2020 15:26:20 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <ben.levinsky@xilinx.com>)
 id 1jQesp-0008OD-6G; Mon, 20 Apr 2020 15:27:19 -0700
Received: from xsj-pvapsmtp01 (maildrop.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 03KMR9lw006354; 
 Mon, 20 Apr 2020 15:27:09 -0700
Received: from [172.19.2.206] (helo=xsjblevinsk50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <ben.levinsky@xilinx.com>)
 id 1jQesf-0008MN-90; Mon, 20 Apr 2020 15:27:09 -0700
From: Ben Levinsky <ben.levinsky@xilinx.com>
To: ohad@wizery.com, bjorn.andersson@linaro.org, michal.simek@xilinx.com,
 jollys@xilinx.com, rajan.vaja@xilinx.com, robh+dt@kernel.org,
 mark.rutland@arm.com
Subject: [PATCH v3 2/5] firmware: xilinx: Add shutdown/wakeup APIs
Date: Mon, 20 Apr 2020 15:27:06 -0700
Message-Id: <1587421629-914-3-git-send-email-ben.levinsky@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1587421629-914-1-git-send-email-ben.levinsky@xilinx.com>
References: <1587421629-914-1-git-send-email-ben.levinsky@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(346002)(396003)(136003)(376002)(39860400002)(46966005)(70206006)(478600001)(82740400003)(47076004)(356005)(81166007)(36756003)(70586007)(4326008)(8936002)(81156014)(9786002)(8676002)(2906002)(186003)(5660300002)(7696005)(336012)(2616005)(316002)(6666004)(44832011)(26005)(426003);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: fe490bee-1505-491c-b253-08d7e579fd09
X-MS-TrafficTypeDiagnostic: BL0PR02MB5633:
X-Microsoft-Antispam-PRVS: <BL0PR02MB563307C7AB08B64878C3BDA0B5D40@BL0PR02MB5633.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:2512;
X-Forefront-PRVS: 03793408BA
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /GgEjo84TbQmcbnIJogXnw3tbf9d5s4b6nIkrL5Fo+JFescILbpPo8PUwxTVNkuq580V9UPACJQrZxY/QileV5OY3N7Jqmvwc0sZ26AvwloJzBO3WG35BeifYT/qV15OxXEA/w8ksst6NyKE1CF9CBPVtUVcqm/89C7I+A5qbW9//iKeawUukYb2DwwShLz6o1bqJFFw2W6i5E24Y+DckYUTHHEU3WoHBo+WJH7PE3LsvgSu5Iw9UOzxBnHqiPWs4HhbCP3PfFsOPn7hJvjJkFYbQGG2fwyx4/xKBhxei2JLHXsVGTB0SIYuJDzkKk7dm5KNeDwgmDSUAcNPf3eWLtK/8+ZCTQkDBbEKVOWs/krAPQGCHbv5EDd+4fAUrbsIoKxydXayvujyDVmKgqJRh58IacIBR0Xje6fgfiGU/Hbkxz45KUz1cTZ71M6n8dPfpMqlbeFT0qANR5rd8Yuru17EdmbVayFtTIeFsJpOb4bn+k4WMNemODLN1YXdM85jaMs7qIHbUTMerr9Bvrpc+Q==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Apr 2020 22:27:19.5169 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: fe490bee-1505-491c-b253-08d7e579fd09
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR02MB5633
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_152723_598999_5E13456E 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.94.61 listed in list.dnswl.org]
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

---
 drivers/firmware/xilinx/zynqmp.c     | 35 +++++++++++++++++++++++++++++++++++
 include/linux/firmware/xlnx-zynqmp.h | 20 ++++++++++++++++++++
 2 files changed, 55 insertions(+)

diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index bfaf29a..b0d140f 100644
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
+ * Return: Returns status, either success or error+reason
+ */
+int zynqmp_pm_force_powerdown(const u32 target,
+                  const enum zynqmp_pm_request_ack ack)
+{
+   return zynqmp_pm_invoke_fn(PM_FORCE_POWERDOWN, target, ack, 0, 0, NULL);
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
+ * Return: Returns status, either success or error+reason
+ */
+int zynqmp_pm_request_wakeup(const u32 node,
+                  const bool set_addr,
+                  const u64 address,
+                  const enum zynqmp_pm_request_ack ack)
+{
+   /* set_addr flag is encoded into 1st bit of address */
+   return zynqmp_pm_invoke_fn(PM_REQUEST_WAKEUP, node, address | set_addr,
+                   address >> 32, ack, NULL);
+}
+EXPORT_SYMBOL_GPL(zynqmp_pm_request_wakeup);
+
+/**
  * zynqmp_pm_set_requirement() - PM call to set requirement for PM slaves
  * @node:		Node ID of the slave
  * @capabilities:	Requested capabilities of the slave
diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index 074ad71..1235923 100644
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
+			const enum zynqmp_pm_request_ack ack);
+int zynqmp_pm_request_wakeup(const u32 node,
+			const bool set_addr,
+			const u64 address,
+			const enum zynqmp_pm_request_ack ack);
 #else
 static inline struct zynqmp_eemi_ops *zynqmp_pm_get_eemi_ops(void)
 {
@@ -526,6 +534,18 @@ static inline int zynqmp_pm_set_boot_health_status(u32 value)
 {
 	return -ENODEV;
 }
+static inline int zynqmp_pm_force_powerdown(const u32 target,
+			const enum zynqmp_pm_request_ack ack)
+{
+	return -ENODEV;
+}
+static inline int zynqmp_pm_request_wakeup(const u32 node,
+			const bool set_addr,
+			const u64 address,
+			const enum zynqmp_pm_request_ack ack)
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
