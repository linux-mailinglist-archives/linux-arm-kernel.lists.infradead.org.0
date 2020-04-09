Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CFF31A3A5E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 21:17:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DPn02fkMxv2gqyGVU0D4JzSKbCJlkPKYnkYf36c4DIU=; b=U48D0oqbc/IVPy
	oXiZFLaw9Ezn4TlLqrPGSFMTa38nENfgPbxNarPrSHBhD6BUncoUJR/XVUIVfwREZWJIn4NDtJfmM
	64hrjNI0OxgI++KAqkV0dJOLpN2nBLxVB6Rns73ptaE72t4kHw7HPSOTrM8Qd8dNeGfAM3x6spKyA
	kDgXSIfZ9/1tx3kF+wW8xxfXcrl5KqpuDrEWHBkwCo1h7P4u3gRtVDkf0ruNt7/9JUwgpL7nXpyJx
	G9JZDlNv3LTctg+ko5D6g/0kk0lLUJkFjteNjdpDTLz9QoQ+FmXez1KFUeENw/KgrrbSz5/eq1Mdx
	a6aaNoRd3VPIzUMKDMpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMcfV-0004bb-92; Thu, 09 Apr 2020 19:16:53 +0000
Received: from mail-bn8nam12on2079.outbound.protection.outlook.com
 ([40.107.237.79] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMcbe-0007Ly-CH
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 19:13:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VGmV6gNRS9UPcQfxO4ye7ACsq0/aIi7r17ZGyGw+x+3/dCusf1FPUOUZ8EmX7SUg8kr36lkfjSHsHXs3FmreFUF1Tbut9bEuCRazQDCBA29DZHwdIaun/pIDvNMd1KT41U9F/LsZulM9ApvIMUjXl8u974+Nf70JLZ/GiyzPx3EX0vAjjhU5RxFc0XXyk3oNRPpfKn50PCODHdA+gV3Zv6tScd+WUxoAlMWB4yt9lGmmv7sb6qu44RO8mi/a4q+DDn0OwwqDHVmsurKhdCTjrHk82WcGst5Wo5mfAx7HFxSfQzhnsO/4nU2XpB2iQbySSg3P8Ki6LrQGLny3ZUeEQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d+mf9rwO/n15xHIS9msCOTr7R9NWRpcy2Bmf01VpHIs=;
 b=S0DPfnff6mQmLU3MYUh7UY6/U9/MFzgZsdoyh49VhAj4fLA2zvEavA0oR7OL6UrzgI/imQPjncfB4stg7c3uxjFD7/qqkaIkvMCJ2/0AvBdY7wGpMMf8WEGjxHFzXIoQPGSP3gelUNy/xFg88fMjo9ro+hpOZjF+tFtaJ7QfWWGOtdDqQSRw2Io3Ojh6v34vTR6A+eHs5csS9DVgkUe6/jLeDVxMUocrNb/uNN7nofExIiR4Mjhf82HsInkGd+oHrW+1A6r+AHWpG7nm1+ECEVgtj7gna8o5mAGMYJaEN2dcbMH/pcrmvex8n3IG5pG8Z+Hz1h91y6Nqa5OE5xxgUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=linaro.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d+mf9rwO/n15xHIS9msCOTr7R9NWRpcy2Bmf01VpHIs=;
 b=s8V7uRaOiXHXRZVi6k+5kNzreBCmGLAs+GmlD0sTyEjGnHNcJrZYERu1BuVvis2QST+kiTvuLeyWZYtL1tODIHgwKmaJsGGAk5sUbH+VaFfLuiFIW1LKIwaPLCMQxfjg3wgCdW4y9A0qnToqZqGU3laqSO9og6lm5vKN0cOa2mc=
Received: from BL0PR02CA0078.namprd02.prod.outlook.com (2603:10b6:208:51::19)
 by BL0PR02MB6530.namprd02.prod.outlook.com (2603:10b6:208:1c1::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.15; Thu, 9 Apr
 2020 19:12:51 +0000
Received: from BL2NAM02FT029.eop-nam02.prod.protection.outlook.com
 (2603:10b6:208:51:cafe::5e) by BL0PR02CA0078.outlook.office365.com
 (2603:10b6:208:51::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.15 via Frontend
 Transport; Thu, 9 Apr 2020 19:12:51 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; linaro.org; dkim=none (message not signed)
 header.d=none;linaro.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT029.mail.protection.outlook.com (10.152.77.100) with Microsoft SMTP
 Server id 15.20.2900.15 via Frontend Transport; Thu, 9 Apr 2020 19:12:51
 +0000
Received: from [149.199.38.66] (port=44368 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jMcbA-00060p-6H; Thu, 09 Apr 2020 12:12:24 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jMcba-0007NV-Kx; Thu, 09 Apr 2020 12:12:50 -0700
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jMcbT-0007La-7m; Thu, 09 Apr 2020 12:12:43 -0700
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH v4 21/25] firmware: xilinx: Add APIs to read/write GGS/PGGS
 registers
Date: Thu,  9 Apr 2020 12:12:10 -0700
Message-Id: <1586459534-8997-22-git-send-email-jolly.shah@xilinx.com>
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
 SFS:(10009020)(4636009)(396003)(376002)(39860400002)(346002)(136003)(46966005)(478600001)(186003)(81156014)(54906003)(70206006)(7696005)(8936002)(316002)(2616005)(2906002)(426003)(70586007)(6636002)(26005)(36756003)(7416002)(5660300002)(8676002)(107886003)(4326008)(9786002)(44832011)(336012)(82740400003)(6666004)(81166007)(356004)(47076004);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b2d7d161-92bb-4db0-fc3f-08d7dcb9ff91
X-MS-TrafficTypeDiagnostic: BL0PR02MB6530:
X-Microsoft-Antispam-PRVS: <BL0PR02MB653062DE239439866D897BD8B8C10@BL0PR02MB6530.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:1091;
X-Forefront-PRVS: 0368E78B5B
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GKaCtgBJVytfqpwlkyGrwGTKQK+XBW+b/mbHc9E/ZXWd/cIky2NvnALwkcWR+lXQD8PUHwj35S8Owam5rJsn7K6qz68pKqsU+jGlRsvxte/6YEe41AQJv9Lp21NKKRDF7h+4j5Zcw4fZMRW43m15iDKYp/m7DyovluGkHD591m6SZo+WxLBN8r5T0+om0rWAnJMpSrmSBZ9K+2DtlWVh/WN3mJBaAbyC6UUFKGBabmdqzg1PF505Rid6dk5Sm5qAa7kmHBqPW6lddT2BuqI3URjopnqaNy523nM4lbHXkNvbkIPDRhWZTcQOQyqbg2bV3FgU/mNJZdfOSn4B63hZyJ94kB4WK4P0wJTLNauah54wiY+wW4t1CUjJlPqK22Gtn0ztw6QRDKqgI+pxkMouoJUOBRKdEj4iYr54RKrDePkYk+/58UHmJ6jM4a8DRxypwbyZmCx3n04IjRPynxLCrGZz0hHDLnMGqL5AXWDDlNtwWBpFfhHnSbynaELlCjjYL26xERooKU6d5N/g8aWTfQ==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2020 19:12:51.0752 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b2d7d161-92bb-4db0-fc3f-08d7dcb9ff91
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR02MB6530
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_121254_418217_C049C945 
X-CRM114-Status: UNSURE (   8.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.237.79 listed in list.dnswl.org]
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
