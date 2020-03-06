Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D1A017C90C
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 00:50:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fUtuRgGDEMIwMqf8hvKWheo4su6QJ0R1bISj8hx22Cg=; b=WhzW3qdR+V9bQw
	ANfH69YUDyW3VfVdBSHe+IYrz2aLP5euDn7v0YbjEwgXhgTkvIzsghqMKqCuVtJUdxAyAP35CinME
	CzKBCriDlHPuyxFnDvEz0ib8gPgSDbMzdmYQdDDe4/uJahxxueqoYqFJz7SZEfYoMg/1sszf1LaeD
	njAOY3FylZT7ZuxAezEnJ4spoDLKyEdXv6hcWio6rK0cdLN0vAYe8qJ8L0q2g4KTf2fxPNRCo/R9j
	UkclGLvQbqtcubV4Yo+5NLluEXW11PctHubtYvk5A/SUe/b2j6ReONEzmKpvsnRTzlMuLN0YZ6BWw
	KI/sz3RtqUhk4N2h0j4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAMjX-0007j5-Mz; Fri, 06 Mar 2020 23:50:23 +0000
Received: from mail-dm6nam10on2046.outbound.protection.outlook.com
 ([40.107.93.46] helo=NAM10-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAMhF-0005z9-4f
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 23:48:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GrCqjEwl8rsWuGhPikC3SbGxOZbLSKdDam4VxmKemU9OBJbVkYjjPdfOaB3TKwArIPBaNwz7D/q9fh8PGiIgllGuURYrRfeHsewO7ilRxfgy0LbTNMsWdsenfrXDRwNxEhd5KQTo63FC5bL+ikcmJNjG0kPNnYAc2AzZxnL+DSjGxs3cQ108WtqMeHb5SzjJjbMD8C5s8ufGZ5PHPGxZ4OhRoaGHKf2ozaoEPkyXPM8IiByWKRvU7BTTMqnBiuZSE0bXI+fzEsityJt0VrkvYI+V6PXEE6waCDOFHZ1n6VtlciLl2P7PfApU8ecR1AgwjP8Y8RB5PSNdKtFb0I+dyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GuSJkdmvGBpRYlYRfNsJM3AZ/6KMAauY9hBgSSjJpWs=;
 b=VAHSF+iqAQnOxbpdZE5K7Z/6cdbmyhsqqvg7eN/8nOZ3bggbZ5VMlxP/qgNhI9urM11syuU+sngEGT1azjFDT4rnHGhgFmBzDaDsFVRhkVhtIPZULMIl2VM+WTNfahNoTaYyBlRSNm68zx52k90Y1jT9QbnbT7qV39EyD1vGncFlN2uQwSF7HvQKGJqrO/AtLaxI4H6WaZWrBCmVKNgtOLn2+VvWZdtVEJKVLsz+PtDecfBiMxByijIaqS0v5Nh6KnSSY5v72LD7bnB4gMQCeLLYvPRK3TpsD17T+Du29reHx+hV9IKNVFFkvx/OQJCUWuo3BSr0LJBT+wxkjP84KQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GuSJkdmvGBpRYlYRfNsJM3AZ/6KMAauY9hBgSSjJpWs=;
 b=hmSBVJlW6D3V3flynU61Mw6P6B3LczshKDY44rkCwReGcHFELmsagBQKXilivZygFd3N98D9++lc3dvEoarVFDWxw7X9kTc4cbZhlZz/x0pgE0SnY72y4twhi2hX6WbTmwu8STS59pZXf1wmbT+U29HDkle3cYC5Kn8gsB2Lfsg=
Received: from BL0PR0102CA0019.prod.exchangelabs.com (2603:10b6:207:18::32) by
 SN6PR02MB4557.namprd02.prod.outlook.com (2603:10b6:805:b4::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.14; Fri, 6 Mar 2020 23:47:58 +0000
Received: from BL2NAM02FT015.eop-nam02.prod.protection.outlook.com
 (2603:10b6:207:18:cafe::35) by BL0PR0102CA0019.outlook.office365.com
 (2603:10b6:207:18::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.16 via Frontend
 Transport; Fri, 6 Mar 2020 23:47:58 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT015.mail.protection.outlook.com (10.152.77.167) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2793.11
 via Frontend Transport; Fri, 6 Mar 2020 23:47:57 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jAMhB-0003Q5-CZ; Fri, 06 Mar 2020 15:47:57 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jAMh6-0002g8-94; Fri, 06 Mar 2020 15:47:52 -0800
Received: from xsj-pvapsmtp01 (xsj-smtp.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 026NllXW001025; 
 Fri, 6 Mar 2020 15:47:47 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jAMh1-0002eg-3A; Fri, 06 Mar 2020 15:47:47 -0800
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH v3 24/24] firmware: xilinx: Add sysfs and API to set boot
 health status
Date: Fri,  6 Mar 2020 15:47:32 -0800
Message-Id: <1583538452-1992-25-git-send-email-jolly.shah@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583538452-1992-1-git-send-email-jolly.shah@xilinx.com>
References: <1583538452-1992-1-git-send-email-jolly.shah@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(396003)(136003)(39860400002)(189003)(199004)(336012)(107886003)(36756003)(54906003)(7416002)(478600001)(426003)(44832011)(2616005)(2906002)(316002)(5660300002)(8676002)(9786002)(26005)(4326008)(6666004)(356004)(6636002)(7696005)(81166006)(70586007)(81156014)(70206006)(186003)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN6PR02MB4557; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8e15b597-9ae3-4d21-aca4-08d7c228cc83
X-MS-TrafficTypeDiagnostic: SN6PR02MB4557:
X-Microsoft-Antispam-PRVS: <SN6PR02MB455741C8FF1F54B2C0E52739B8E30@SN6PR02MB4557.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-Forefront-PRVS: 0334223192
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NuKpZbQyXIL7DRcEMxPzTB4LuUiScC51zYnj6FJWLbpHAPN4tth0P+RHC9HuUJlbq+pwmY8XWV7CIaB0trqjSuKhRv1WhQGGDtsyRYZBVubcY0bDvRqj2gmm/t/bRTKLkCkjRq9XfCVGGlTSeYl0t2KZLviEpG3B4s487u+tc24AJOwf/2m4mALs0CmPIJM9YxEHntfjieF484MpaQcFa8CxDE+JAAPGloeZ6k8/zbRvsnUcw91pGotZSyXV6RyCXYkwTSfcq0cdn9Zxrh56LqNrVHhh2eJj9LENBQK+3OmbgHt2zONA/JNP7UiDIq5HpwxV3aai0RuqG6EG2+RD1FN0UgNBRuweAjWKiViOxVKC/8dwgCMl/DU7hGwoE5+8oUZ1aSHww1zugV6+5BZESfL/aSDxcvOM/TW6f+2q2HJJZhZ3CnDlC7jNo6C2z4ce
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2020 23:47:57.9474 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e15b597-9ae3-4d21-aca4-08d7c228cc83
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB4557
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_154801_180571_070C3AA9 
X-CRM114-Status: GOOD (  15.42  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.93.46 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Tejas Patel <tejas.patel@xilinx.com>, Rajan Vaja <rajan.vaja@xilinx.com>,
 linux-kernel@vger.kernel.org, Jolly Shah <jollys@xilinx.com>,
 rajanv@xilinx.com, Jolly Shah <jolly.shah@xilinx.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Rajan Vaja <rajan.vaja@xilinx.com>

Add sysfs interface to set boot health status from user space.
Add API used by this interface to communicate with firmware.

If PMUFW is compiled with CHECK_HEALTHY_BOOT, it will check the
healthy bit on FPD WDT expiration. If healthy bit is set by a user
application running in Linux, PMUFW will do APU only restart. If
healthy bit is not set during FPD WDT expiration, PMUFW will do
system restart.

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
Signed-off-by: Jolly Shah <jollys@xilinx.com>
Signed-off-by: Tejas Patel <tejas.patel@xilinx.com>
Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
---
 .../ABI/stable/sysfs-driver-firmware-zynqmp        | 21 ++++++++
 drivers/firmware/xilinx/zynqmp.c                   | 63 ++++++++++++++++++++++
 include/linux/firmware/xlnx-zynqmp.h               |  3 ++
 3 files changed, 87 insertions(+)

diff --git a/Documentation/ABI/stable/sysfs-driver-firmware-zynqmp b/Documentation/ABI/stable/sysfs-driver-firmware-zynqmp
index b46ec0c..a37b408 100644
--- a/Documentation/ABI/stable/sysfs-driver-firmware-zynqmp
+++ b/Documentation/ABI/stable/sysfs-driver-firmware-zynqmp
@@ -80,3 +80,24 @@ Description:
 		# echo "subsystem" > /sys/devices/platform/firmware\:zynqmp-firmware/shutdown_scope
 
 Users:		Xilinx
+
+What:		/sys/devices/platform/firmware\:zynqmp-firmware/health_status
+Date:		March 2020
+KernelVersion:	5.6
+Contact:	"Jolly Shah" <jollys@xilinx.com>
+Description:
+		This sysfs interface allows to set the health status. If PMUFW
+		is compiled with CHECK_HEALTHY_BOOT, it will check the healthy
+		bit on FPD WDT expiration. If healthy bit is set by a user
+		application running in Linux, PMUFW will do APU only restart. If
+		healthy bit is not set during FPD WDT expiration, PMUFW will do
+		system restart.
+
+		Usage:
+		Set healthy bit
+		# echo 1 > /sys/devices/platform/firmware\:zynqmp-firmware/health_status
+
+		Unset healthy bit
+		# echo 0 > /sys/devices/platform/firmware\:zynqmp-firmware/health_status
+
+Users:		Xilinx
diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index 9caf1cf..fc3aa4e 100644
--- a/drivers/firmware/xilinx/zynqmp.c
+++ b/drivers/firmware/xilinx/zynqmp.c
@@ -667,6 +667,21 @@ int zynqmp_pm_read_pggs(u32 index, u32 *value)
 EXPORT_SYMBOL_GPL(zynqmp_pm_read_pggs);
 
 /**
+ * zynqmp_pm_set_boot_health_status() - PM API for setting healthy boot status
+ * @value	Status value to be written
+ *
+ * This function sets healthy bit value to indicate boot health status
+ * to firmware.
+ *
+ * @return      Returns status, either success or error+reason
+ */
+int zynqmp_pm_set_boot_health_status(u32 value)
+{
+	return zynqmp_pm_invoke_fn(PM_IOCTL, 0, IOCTL_SET_BOOT_HEALTH_STATUS,
+				   value, 0, NULL);
+}
+
+/**
  * zynqmp_pm_reset_assert - Request setting of reset (1 - assert, 0 - release)
  * @reset:		Reset to be configured
  * @assert_flag:	Flag stating should reset be asserted (1) or
@@ -995,6 +1010,53 @@ static const struct attribute_group shutdown_scope_attribute_group = {
 };
 
 /**
+ * health_status_store - Store health_status sysfs attribute
+ * @device:	Device structure
+ * @attr:	Device attribute structure
+ * @buf:	User entered health_status attribute string
+ * @count:	Buffer size
+ *
+ * User-space interface for setting the boot health status.
+ * Usage: echo <value> > /sys/devices/platform/firmware\:zynqmp-firmware/health_status
+ *
+ * Value:
+ *	1 - Set healthy bit to 1
+ *	0 - Unset healthy bit
+ *
+ * Return:	count argument if request succeeds, the corresponding error
+ *		code otherwise
+ */
+static ssize_t health_status_store(struct device *device,
+				   struct device_attribute *attr,
+				   const char *buf, size_t count)
+{
+	int ret;
+	unsigned int value;
+
+	ret = kstrtouint(buf, 10, &value);
+	if (ret)
+		return ret;
+
+	ret = zynqmp_pm_set_boot_health_status(value);
+	if (ret) {
+		pr_err("unable to set healthy bit value to %u\n", value);
+		return ret;
+	}
+
+	return count;
+}
+
+static DEVICE_ATTR_WO(health_status);
+
+static struct attribute *zynqmp_health_status_attrs[] = {
+	&dev_attr_health_status.attr,
+	NULL,
+};
+static const struct attribute_group health_status_attribute_group = {
+	.attrs = zynqmp_health_status_attrs,
+};
+
+/**
  * ggs_show - Show global general storage (ggs) sysfs attribute
  * @device: Device structure
  * @attr: Device attribute structure
@@ -1307,6 +1369,7 @@ static const struct attribute_group ggs_attribute_group = {
 const struct attribute_group *firmware_attribute_groups[] = {
 	&ggs_attribute_group,
 	&shutdown_scope_attribute_group,
+	&health_status_attribute_group,
 	NULL,
 };
 
diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index 31ed58c..1900349 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -114,6 +114,8 @@ enum pm_ioctl_id {
 	IOCTL_READ_GGS,
 	IOCTL_WRITE_PGGS,
 	IOCTL_READ_PGGS,
+	/* Set healthy bit value */
+	IOCTL_SET_BOOT_HEALTH_STATUS = 17,
 };
 
 enum pm_query_id {
@@ -341,6 +343,7 @@ int zynqmp_pm_read_ggs(u32 index, u32 *value);
 int zynqmp_pm_write_pggs(u32 index, u32 value);
 int zynqmp_pm_read_pggs(u32 index, u32 *value);
 int zynqmp_pm_system_shutdown(const u32 type, const u32 subtype);
+int zynqmp_pm_set_boot_health_status(u32 value);
 int zynqmp_pm_invoke_fn(u32 pm_api_id, u32 arg0, u32 arg1,
 			u32 arg2, u32 arg3, u32 *ret_payload);
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
