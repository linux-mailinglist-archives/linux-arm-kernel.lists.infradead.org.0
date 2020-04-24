Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D75AB1B818A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 23:08:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DPn02fkMxv2gqyGVU0D4JzSKbCJlkPKYnkYf36c4DIU=; b=LWlWexR5rCg41P
	dV9KWdBg+PZN3gknNcSghLurm7NRq08E0kSRYh8luvAFfJMQsUIy/b8QCgYD0VIi7tg4G5cMHogz6
	svOsK5+eme0vt+fxeF3KIsFYCVjvBxwUmM84COadUk8svh+aB5RINmRCh28i6MPFHjofZgEP8N5aU
	SGjVSWyBAVRXGzUjdcx3MGvIfjC/I4J2GucawNzvqitYktkk5rTM0z2MdjRs0OqYPbBQsdknjfsdi
	OmyE8Db79pTjDv+EBV8bEQt88htmJfYgOBJzFf3Y/UUH5W2YfN0Lvn6HhM/GD2HQ/Y8C8SGKNt179
	ME7+JKp183STl+JQqnbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS5YN-0001Ui-Jo; Fri, 24 Apr 2020 21:08:07 +0000
Received: from mail-dm6nam12on2068.outbound.protection.outlook.com
 ([40.107.243.68] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS5PD-0006X6-LL
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 20:58:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bUYQCFZxkP+2s9jkY/pLCDDtNK+cvZaiUL7h0pl/N5IwNh4vnWbLsbvc9IzmuWyn9P4JPOi/jfBGdSjwqv8La9Qyfvx5jJqdva0PBLczfD18ulMo83R/AQy3rRbtri84A6qz2zRatwRE4VIVQM4JLc9pmkRrox91IFQbIpdiNAo+30DjIsweFj09czAeDxVEpC4snLB9HRs7S39I8Lwpo/Qqg9FzQhY6IQyc9KqayCZeJiN9O6gI4TMtA7gVPZMDYctiKjlhaqETuKCk5BfIQhkhIrOWbqV0Qa6uSyDmPKNhpxL4YhwLTldo5riYjtSFVnt2dublh3j76lA2xgafmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d+mf9rwO/n15xHIS9msCOTr7R9NWRpcy2Bmf01VpHIs=;
 b=TMI2sa1ghS/1exFxWEhdzejn+MDgZxyKJbrSi3EpziXJWA4/zqgGRjEiglZnrw61f67n40YE85dfVvQkxQZpwIgyxZdBiACyuBUztZY9zZi4kaCb2+VdNb7BA7nKTAfQQcqxiNa3TXqtzdbwTLoT6narxaC0Ge2r8AvCEZZjUj7+hEdTZw0/FTkBWEVhSgvA/2bfx0nf1bO0HKWfPyicqJxUDYbYSgNq5y6eR6S63m4tWrDY7e8y6+aXaxKqRaYBj3lnLjjpdKvlZH59QwW60X6pyXMkz0JCpEkAu6OVSutdoYAE8mxAVQnPoyx/GkmoE1ifK/Arj+MtBC0li/y/gg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d+mf9rwO/n15xHIS9msCOTr7R9NWRpcy2Bmf01VpHIs=;
 b=K4BrTpsyp3wyTCYIH9nw3YwUIPeHUkDTKRrQemJZNut30/EIZNy5jyycOGCrAGFyaiSfHsKsgfBmFCOL69dz7jFNLHdTQ7YDu3sUuqE72249CvA0z8WQaSCL/gUmM8pbEf9l7KHgMSTYcgdTI2Hq/7MiWrMYbAauBHVWt6wVk1k=
Received: from DM5PR21CA0040.namprd21.prod.outlook.com (2603:10b6:3:ed::26) by
 CH2PR02MB6726.namprd02.prod.outlook.com (2603:10b6:610:aa::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2921.29; Fri, 24 Apr 2020 20:58:33 +0000
Received: from CY1NAM02FT033.eop-nam02.prod.protection.outlook.com
 (2603:10b6:3:ed:cafe::28) by DM5PR21CA0040.outlook.office365.com
 (2603:10b6:3:ed::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.2 via Frontend
 Transport; Fri, 24 Apr 2020 20:58:33 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT033.mail.protection.outlook.com (10.152.75.179) with Microsoft SMTP
 Server id 15.20.2937.19 via Frontend Transport; Fri, 24 Apr 2020 20:58:32
 +0000
Received: from [149.199.38.66] (port=33417 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jS5Nx-0002Da-D2; Fri, 24 Apr 2020 13:57:21 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jS5P6-0007Pe-CO; Fri, 24 Apr 2020 13:58:32 -0700
Received: from xsj-pvapsmtp01 (mailhub.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 03OKwKVH026343; 
 Fri, 24 Apr 2020 13:58:20 -0700
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jS5Ou-0007Lo-0A; Fri, 24 Apr 2020 13:58:20 -0700
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH v5 21/25] firmware: xilinx: Add APIs to read/write GGS/PGGS
 registers
Date: Fri, 24 Apr 2020 13:58:03 -0700
Message-Id: <1587761887-4279-22-git-send-email-jolly.shah@xilinx.com>
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
 SFS:(10009020)(4636009)(346002)(396003)(376002)(136003)(39860400002)(46966005)(2906002)(4326008)(336012)(5660300002)(44832011)(426003)(186003)(2616005)(70206006)(356005)(6666004)(82740400003)(107886003)(47076004)(81166007)(7416002)(6636002)(70586007)(26005)(36756003)(54906003)(316002)(8676002)(8936002)(81156014)(9786002)(7696005)(478600001)(82310400002);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f08b2d63-65c3-4f88-3370-08d7e8923fa3
X-MS-TrafficTypeDiagnostic: CH2PR02MB6726:
X-Microsoft-Antispam-PRVS: <CH2PR02MB6726E4E662C4E0E0FEA2A51CB8D00@CH2PR02MB6726.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:1091;
X-Forefront-PRVS: 03838E948C
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rWch3StKL90AjPDKHrXZ0ysvpsgEwJG1YYqOBlgXUCXuknsUjlqVyiLFRMJPnV3fYbX18cCUREIbzCKtj5V8VmJc4ScsxK2ITZVkssOgJM6mIdzAZDwoEe4mX0O/73OmXZ8GIqnqWA9Ehzs7hM4g74FOObRY6FOmZYlbaEv4iLK+fUUcx+mQdYFjEaFC1GX2P+9arCRnM0QzrIQqXucZxpxyA539qTQotcxSzCVShnMQ3OGixFF/7rYKqajtMj+5clugBW55aFMknDEE2fHjrH1MDCU3uysFeYkngUv+JKqy2JuoriW6UJsJ/dvrgjHDpwKdy6MB/bLJhECbi/60sOAlNH+AiUypmuV/7ayg3cggYcJ/HkRx6QwDBMuw/Mj9vPIls6jU9OriIthazW1wJD2fTdK+yhcG8ye4PSRMlZ8cxfMrxfarWx796mzVaVUNFXM+UtEmqAmztCoEAZ/sqC5u3gri1/n1BWBehiO9ki0oXYJU86XhFwbAnO4RBzjwBlWcEfJpObNwO1DsnaT5Ew==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2020 20:58:32.6464 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f08b2d63-65c3-4f88-3370-08d7e8923fa3
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6726
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_135839_717981_FFD87950 
X-CRM114-Status: UNSURE (   8.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.243.68 listed in list.dnswl.org]
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

Add APIs to read/write PGGS and GGS registers.

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
---
 drivers/firmware/xilinx/zynqmp.c     | 66 ++++++++++++++++++++++++++++++++++++
 include/linux/firmware/xlnx-zynqmp.h | 24 +++++++++++++
 2 files changed, 90 insertions(+)

diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index ef7ba32..3518456 100644
--- a/drivers/firmware/xilinx/zynqmp.c
+++ b/drivers/firmware/xilinx/zynqmp.c
@@ -618,6 +618,72 @@ int zynqmp_pm_sd_dll_reset(u32 node_id, u32 type)
 EXPORT_SYMBOL_GPL(zynqmp_pm_sd_dll_reset);
 
 /**
+ * zynqmp_pm_write_ggs() - PM API for writing global general storage (ggs)
+ * @index	GGS register index
+ * @value	Register value to be written
+ *
+ * This function writes value to GGS register.
+ *
+ * @return      Returns status, either success or error+reason
+ */
+int zynqmp_pm_write_ggs(u32 index, u32 value)
+{
+	return zynqmp_pm_invoke_fn(PM_IOCTL, 0, IOCTL_WRITE_GGS,
+				   index, value, NULL);
+}
+EXPORT_SYMBOL_GPL(zynqmp_pm_write_ggs);
+
+/**
+ * zynqmp_pm_write_ggs() - PM API for reading global general storage (ggs)
+ * @index	GGS register index
+ * @value	Register value to be written
+ *
+ * This function returns GGS register value.
+ *
+ * @return      Returns status, either success or error+reason
+ */
+int zynqmp_pm_read_ggs(u32 index, u32 *value)
+{
+	return zynqmp_pm_invoke_fn(PM_IOCTL, 0, IOCTL_READ_GGS,
+				   index, 0, value);
+}
+EXPORT_SYMBOL_GPL(zynqmp_pm_read_ggs);
+
+/**
+ * zynqmp_pm_write_pggs() - PM API for writing persistent global general
+ *			     storage (pggs)
+ * @index	PGGS register index
+ * @value	Register value to be written
+ *
+ * This function writes value to PGGS register.
+ *
+ * @return      Returns status, either success or error+reason
+ */
+int zynqmp_pm_write_pggs(u32 index, u32 value)
+{
+	return zynqmp_pm_invoke_fn(PM_IOCTL, 0, IOCTL_WRITE_PGGS, index, value,
+				   NULL);
+}
+EXPORT_SYMBOL_GPL(zynqmp_pm_write_pggs);
+
+/**
+ * zynqmp_pm_write_pggs() - PM API for reading persistent global general
+ *			     storage (pggs)
+ * @index	PGGS register index
+ * @value	Register value to be written
+ *
+ * This function returns PGGS register value.
+ *
+ * @return      Returns status, either success or error+reason
+ */
+int zynqmp_pm_read_pggs(u32 index, u32 *value)
+{
+	return zynqmp_pm_invoke_fn(PM_IOCTL, 0, IOCTL_READ_PGGS, index, 0,
+				   value);
+}
+EXPORT_SYMBOL_GPL(zynqmp_pm_read_pggs);
+
+/**
  * zynqmp_pm_reset_assert - Request setting of reset (1 - assert, 0 - release)
  * @reset:		Reset to be configured
  * @assert_flag:	Flag stating should reset be asserted (1) or
diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index 44ffb4f..e23251d 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -107,6 +107,10 @@ enum pm_ioctl_id {
 	IOCTL_GET_PLL_FRAC_MODE,
 	IOCTL_SET_PLL_FRAC_DATA,
 	IOCTL_GET_PLL_FRAC_DATA,
+	IOCTL_WRITE_GGS = 12,
+	IOCTL_READ_GGS = 13,
+	IOCTL_WRITE_PGGS = 14,
+	IOCTL_READ_PGGS = 15,
 };
 
 enum pm_query_id {
@@ -330,6 +334,10 @@ int zynqmp_pm_set_requirement(const u32 node, const u32 capabilities,
 int zynqmp_pm_aes_engine(const u64 address, u32 *out);
 int zynqmp_pm_fpga_load(const u64 address, const u32 size, const u32 flags);
 int zynqmp_pm_fpga_get_status(u32 *value);
+int zynqmp_pm_write_ggs(u32 index, u32 value);
+int zynqmp_pm_read_ggs(u32 index, u32 *value);
+int zynqmp_pm_write_pggs(u32 index, u32 value);
+int zynqmp_pm_read_pggs(u32 index, u32 *value);
 #else
 static inline struct zynqmp_eemi_ops *zynqmp_pm_get_eemi_ops(void)
 {
@@ -456,6 +464,22 @@ static inline int zynqmp_pm_fpga_get_status(u32 *value)
 {
 	return -ENODEV;
 }
+static inline int zynqmp_pm_write_ggs(u32 index, u32 value)
+{
+	return -ENODEV;
+}
+static inline int zynqmp_pm_read_ggs(u32 index, u32 *value)
+{
+	return -ENODEV;
+}
+static inline int zynqmp_pm_write_pggs(u32 index, u32 value)
+{
+	return -ENODEV;
+}
+static inline int zynqmp_pm_read_pggs(u32 index, u32 *value)
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
