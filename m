Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B394213502B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 00:56:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Apmdzyx0RHVWlJIHjAptb9hjCZHGt5hHx8glApqhcKE=; b=EXTqdkEDlbwcor
	PdDr1WXn6XOvHLPxqS8+sI6uUA46abzWos+HKMZhuKy9/NvH4PkJKftBLOdTovDb0ofrkWJ14dqDf
	SJOxtOK5fbvKEtEwQlUCmt0G2Phr+snNLK6c3/Vk3B+L7cXtas9dIeVJC27H3MMv1lFe1UxcN5pyJ
	95E32J+63E2Yh9azqpxyHJuVtA8mCAud1loWba1EFH5esvnwyY31L/FZJHcIYOAcEsf8DIKu8FZ1W
	HUbj1FpQGfAkfxqyIZh2lugFRlzgkE5+vvIR88Zi0OaX0d3jMWOBo/d+kbBUdwtVaGJhpSVQgq8Et
	n9XaXPE8z2kcO+5r9r2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipLBc-0003af-Pm; Wed, 08 Jan 2020 23:56:28 +0000
Received: from mail-dm6nam10on2067.outbound.protection.outlook.com
 ([40.107.93.67] helo=NAM10-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipLA4-0000i9-Mr
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 23:54:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZRBAhUo1qhVj9M6tHEG4A8f3ROgQLLhVaQOSntlkkPXC6cwYtJ4Q0cneHY1Gp7L9DrAOSfkFhpnXN4EJwIrPPqUhZytSAWnJ7kU6OYZOHwOvnnF/wR8ZKoJPP4QMrejAAdVmkYj+HtNOm+NQXV+344TKMjg+IypNYls7H69VWBUGg0wJms0U+tY7KJK4eNDHyTyJlMuTSuXPfVJm7XzGxDG0cAqC++3zbpHqw22f2B2XmOE4d17buaqrPaHGgdUkIeIkdTWtFMcdFnRdjOHi1oC5O6S2dA8OygUUqG6YD9Su5otgDI7IBctH9JDpYk6Ml4LXPHoV4xwjeL9KAOrQzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T/PG+T5WqACzDdqllt1aXAxjkPapkb+Y9Hcb0eTfFgM=;
 b=UbIvsN/8hSOEuTrIdbGci6t8xtpz6e/Te4r2zJPUuVPYgOF6pIXxmXo5zsnLsvwb/x6Mh7KmxudZdjkbGw1PPczpnydD030h6yw+qBdpeiTxDl2nws7F7bfyEsLFPrO/Wt3ZDFYmFYvFVzzSjfW0H43pFKcrYdE5Q/74Vco1JAIeMDNd/0Emw4T5WDFzJN/kVjLsDXJS4Tn2NRdZbcekP5aeoqI4QmwKpGz636es33GouP7y+O+wFqZUs19rIYZ50jC+ysmqkeaOoyWSSeFZXauFmpdWymlsRPv3VmADfpbeLAjOiJwpdH+7dB8x4TZfMk9iCY1iQSflznLYLVdtbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=linaro.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T/PG+T5WqACzDdqllt1aXAxjkPapkb+Y9Hcb0eTfFgM=;
 b=puLfYWiq/YcPY0ItFUC3Kio2IQHYdxLv4JdM2mkBMAGr+kogigNwuG3eJH8PQ45uLzA8XxCfXfmCjcbNX1sd/9qkyBuTBSw/eIEvK5zIcY8+8YaXs2+UkQAWNhzdRvTPUw4m3vTnwUF8d5O5qco1yXzoX31PO62JF2496tUGLPI=
Received: from SN4PR0201CA0019.namprd02.prod.outlook.com
 (2603:10b6:803:2b::29) by MN2PR02MB6704.namprd02.prod.outlook.com
 (2603:10b6:208:1d6::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2623.9; Wed, 8 Jan
 2020 23:54:48 +0000
Received: from SN1NAM02FT030.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::208) by SN4PR0201CA0019.outlook.office365.com
 (2603:10b6:803:2b::29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2602.12 via Frontend
 Transport; Wed, 8 Jan 2020 23:54:48 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; linaro.org; dkim=none (message not signed)
 header.d=none;linaro.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT030.mail.protection.outlook.com (10.152.72.114) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2623.9
 via Frontend Transport; Wed, 8 Jan 2020 23:54:47 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1ipL9z-0003px-Aa; Wed, 08 Jan 2020 15:54:47 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1ipL9u-0002BN-6f; Wed, 08 Jan 2020 15:54:42 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1ipL9l-0002A4-NM; Wed, 08 Jan 2020 15:54:33 -0800
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH v2 3/4] firmware: xilinx: Add sysfs to set shutdown scope
Date: Wed,  8 Jan 2020 15:54:22 -0800
Message-Id: <1578527663-10243-4-git-send-email-jolly.shah@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578527663-10243-1-git-send-email-jolly.shah@xilinx.com>
References: <1578527663-10243-1-git-send-email-jolly.shah@xilinx.com>
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(199004)(189003)(107886003)(356004)(70206006)(2906002)(70586007)(6636002)(6666004)(426003)(336012)(36756003)(4326008)(54906003)(2616005)(26005)(186003)(498600001)(44832011)(7696005)(81156014)(8676002)(81166006)(8936002)(7416002)(9786002)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR02MB6704; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2e10b9da-a270-4d2f-ca1e-08d7949624c5
X-MS-TrafficTypeDiagnostic: MN2PR02MB6704:
X-Microsoft-Antispam-PRVS: <MN2PR02MB6704B7CA3AF04E546B7B87AFB83E0@MN2PR02MB6704.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:949;
X-Forefront-PRVS: 02760F0D1C
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Sb+vyukIlH3HVXlycQsk//e0UxTBMqnffbxiJ/wY94BR9h0xYn6hmC+/qqnTjPVGug2kJ1BeVqedmlGd2Okg9e/idgO1OJOvajRMS7lETw/0TggElYirA5b85TpA0HNXIXWnpdzJQ0QfpCbjdGWVFOe1wjr+DRhp80ULE+kyQ4W89K3sfe6VcUbmzUhuSjjF1XLN+APl90HcL7Kw6nHbn4KZYfolIJJCniYCRlSyympJaEJnDpkQlUXtGi9I5zw2qIW5owQ32gsqT5tdEBNskAHGG1JpyMPqvOQa+Rr+0D67XGU+P14ONkPqzn/VNIyDyoGl1iyr7/b/Uo5pTuuHnZvLqplIJZFG7QiL/p9h50Hebc45bgxRtCr9fbXs+5h4ohlahtqW9a6j8Kg3/emJ3MDWNSdspeDGNHZZVx4WJ+FIzVk/48GEQNc9zUNQ8lOj
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jan 2020 23:54:47.7140 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e10b9da-a270-4d2f-ca1e-08d7949624c5
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR02MB6704
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_155452_802762_CF12B2AC 
X-CRM114-Status: GOOD (  21.05  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.93.67 listed in list.dnswl.org]
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
Cc: Stefan Krsmanovic <stefan.krsmanovic@aggios.com>,
 Rajan Vaja <rajan.vaja@xilinx.com>, linux-kernel@vger.kernel.org,
 Jolly Shah <jollys@xilinx.com>, rajanv@xilinx.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Rajan Vaja <rajan.vaja@xilinx.com>

The Linux shutdown functionality implemented via PSCI system_off does
not include an option to set a scope, i.e. which parts of the system to
shut down.

This patch creates sysfs that allows to set the shutdown scope for the
next shutdown request. When the next shutdown is performed, the platform
specific portion of PSCI-system_off can use the chosen shutdown scope.

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
Signed-off-by: Stefan Krsmanovic <stefan.krsmanovic@aggios.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
Signed-off-by: Jolly Shah <jollys@xilinx.com>
---
Changes in v2:
 - Updated Linux kernel version in documentation.
 - Used DEVICE_ATTR_* and ATTRIBUTE_GROUPS macros.
 - Free Kobject structure in case of error.
 - Updated Signed-off-by sequence.
---
 Documentation/ABI/stable/sysfs-firmware-zynqmp |  32 +++++
 drivers/firmware/xilinx/zynqmp.c               | 155 +++++++++++++++++++++++++
 include/linux/firmware/xlnx-zynqmp.h           |  12 ++
 3 files changed, 199 insertions(+)

diff --git a/Documentation/ABI/stable/sysfs-firmware-zynqmp b/Documentation/ABI/stable/sysfs-firmware-zynqmp
index cffa2fc..f41e9c5 100644
--- a/Documentation/ABI/stable/sysfs-firmware-zynqmp
+++ b/Documentation/ABI/stable/sysfs-firmware-zynqmp
@@ -48,3 +48,35 @@ Description:
 		# echo 0xFFFFFFFF 0x1234ABCD > /sys/firmware/zynqmp/pggs0
 
 Users:		Xilinx
+
+What:		/sys/firmware/zynqmp/shutdown_scope
+Date:		February 2018
+KernelVersion:	5.5
+Contact:	"Jolly Shah" <jollys@xilinx.com>
+Description:
+		This sysfs interface allows to set the shutdown scope for the
+		next shutdown request. When the next shutdown is performed, the
+		platform specific portion of PSCI-system_off can use the chosen
+		shutdown scope.
+
+		Following are available shutdown scopes(subtypes):
+
+		subsystem:	Only the APU along with all of its peripherals
+				not used by other processing units will be
+				shut down. This may result in the FPD power
+				domain being shut down provided that no other
+				processing unit uses FPD peripherals or DRAM.
+		ps_only:	The complete PS will be shut down, including the
+				RPU, PMU, etc.  Only the PL domain (FPGA)
+				remains untouched.
+		system:		The complete system/device is shut down.
+
+		Usage:
+		# cat /sys/firmware/zynqmp/shutdown_scope
+		# echo <scope> > /sys/firmware/zynqmp/shutdown_scope
+
+		Example:
+		# cat /sys/firmware/zynqmp/shutdown_scope
+		# echo "subsystem" > /sys/firmware/zynqmp/shutdown_scope
+
+Users:		Xilinx
diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index 0f90793..ef7d107 100644
--- a/drivers/firmware/xilinx/zynqmp.c
+++ b/drivers/firmware/xilinx/zynqmp.c
@@ -722,6 +722,152 @@ const struct zynqmp_eemi_ops *zynqmp_pm_get_eemi_ops(void)
 }
 EXPORT_SYMBOL_GPL(zynqmp_pm_get_eemi_ops);
 
+/**
+ * struct zynqmp_pm_shutdown_scope - Struct for shutdown scope
+ * @subtype:	Shutdown subtype
+ * @name:	Matching string for scope argument
+ *
+ * This struct encapsulates mapping between shutdown scope ID and string.
+ */
+struct zynqmp_pm_shutdown_scope {
+	const enum zynqmp_pm_shutdown_subtype subtype;
+	const char *name;
+};
+
+static struct zynqmp_pm_shutdown_scope shutdown_scopes[] = {
+	[ZYNQMP_PM_SHUTDOWN_SUBTYPE_SUBSYSTEM] = {
+		.subtype = ZYNQMP_PM_SHUTDOWN_SUBTYPE_SUBSYSTEM,
+		.name = "subsystem",
+	},
+	[ZYNQMP_PM_SHUTDOWN_SUBTYPE_PS_ONLY] = {
+		.subtype = ZYNQMP_PM_SHUTDOWN_SUBTYPE_PS_ONLY,
+		.name = "ps_only",
+	},
+	[ZYNQMP_PM_SHUTDOWN_SUBTYPE_SYSTEM] = {
+		.subtype = ZYNQMP_PM_SHUTDOWN_SUBTYPE_SYSTEM,
+		.name = "system",
+	},
+};
+
+static struct zynqmp_pm_shutdown_scope *selected_scope =
+		&shutdown_scopes[ZYNQMP_PM_SHUTDOWN_SUBTYPE_SYSTEM];
+
+/**
+ * zynqmp_pm_is_shutdown_scope_valid - Check if shutdown scope string is valid
+ * @scope_string:	Shutdown scope string
+ *
+ * Return:		Return pointer to matching shutdown scope struct from
+ *			array of available options in system if string is valid,
+ *			otherwise returns NULL.
+ */
+static struct zynqmp_pm_shutdown_scope*
+		zynqmp_pm_is_shutdown_scope_valid(const char *scope_string)
+{
+	int count;
+
+	for (count = 0; count < ARRAY_SIZE(shutdown_scopes); count++)
+		if (sysfs_streq(scope_string, shutdown_scopes[count].name))
+			return &shutdown_scopes[count];
+
+	return NULL;
+}
+
+/**
+ * shutdown_scope_show - Show shutdown_scope sysfs attribute
+ * @device:	Device structure
+ * @attr:	Device attribute structure
+ * @buf:	Requested available shutdown_scope attributes string
+ *
+ * User-space interface for viewing the available scope options for system
+ * shutdown. Scope option for next shutdown call is marked with [].
+ *
+ * Usage: cat /sys/firmware/zynqmp/shutdown_scope
+ *
+ * Return:	Number of bytes printed into the buffer.
+ */
+static ssize_t shutdown_scope_show(struct device *device,
+				   struct device_attribute *attr,
+				   char *buf)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(shutdown_scopes); i++) {
+		if (&shutdown_scopes[i] == selected_scope) {
+			strcat(buf, "[");
+			strcat(buf, shutdown_scopes[i].name);
+			strcat(buf, "]");
+		} else {
+			strcat(buf, shutdown_scopes[i].name);
+		}
+		strcat(buf, " ");
+	}
+	strcat(buf, "\n");
+
+	return strlen(buf);
+}
+
+/**
+ * shutdown_scope_store - Store shutdown_scope sysfs attribute
+ * @device:	Device structure
+ * @attr:	Device attribute structure
+ * @buf:	User entered shutdown_scope attribute string
+ * @count:	Buffer size
+ *
+ * User-space interface for setting the scope for the next system shutdown.
+ * Usage: echo <scope> > /sys/firmware/zynqmp/shutdown_scope
+ *
+ * The Linux shutdown functionality implemented via PSCI system_off does not
+ * include an option to set a scope, i.e. which parts of the system to shut
+ * down.
+ *
+ * This API function allows to set the shutdown scope for the next shutdown
+ * request by passing it to the ATF running in EL3. When the next shutdown
+ * is performed, the platform specific portion of PSCI-system_off can use
+ * the chosen shutdown scope.
+ *
+ * subsystem:	Only the APU along with all of its peripherals not used by other
+ *		processing units will be shut down. This may result in the FPD
+ *		power domain being shut down provided that no other processing
+ *		unit uses FPD peripherals or DRAM.
+ * ps_only:	The complete PS will be shut down, including the RPU, PMU, etc.
+ *		Only the PL domain (FPGA) remains untouched.
+ * system:	The complete system/device is shut down.
+ *
+ * Return:	count argument if request succeeds, the corresponding error
+ *		code otherwise
+ */
+static ssize_t shutdown_scope_store(struct device *device,
+				    struct device_attribute *attr,
+				    const char *buf, size_t count)
+{
+	int ret;
+	struct zynqmp_pm_shutdown_scope *scope;
+
+	scope = zynqmp_pm_is_shutdown_scope_valid(buf);
+	if (!scope)
+		return -EINVAL;
+
+	ret = zynqmp_pm_system_shutdown(ZYNQMP_PM_SHUTDOWN_TYPE_SETSCOPE_ONLY,
+					scope->subtype);
+	if (ret) {
+		pr_err("unable to set shutdown scope %s\n", buf);
+		return ret;
+	}
+
+	selected_scope = scope;
+
+	return count;
+}
+
+static DEVICE_ATTR_RW(shutdown_scope);
+
+static struct attribute *zynqmp_attrs[] = {
+	&dev_attr_shutdown_scope.attr,
+	NULL,
+};
+
+ATTRIBUTE_GROUPS(zynqmp);
+
 static int zynqmp_pm_sysfs_init(void)
 {
 	struct kobject *zynqmp_kobj;
@@ -733,6 +879,14 @@ static int zynqmp_pm_sysfs_init(void)
 		return -ENOMEM;
 	}
 
+	ret = sysfs_create_group(zynqmp_kobj, zynqmp_groups[0]);
+	if (ret) {
+		kobject_put(zynqmp_kobj);
+		pr_err("%s() sysfs creation fail with error %d\n",
+		       __func__, ret);
+		goto err;
+	}
+
 	ret = zynqmp_pm_ggs_init(zynqmp_kobj);
 	if (ret) {
 		kobject_put(zynqmp_kobj);
@@ -740,6 +894,7 @@ static int zynqmp_pm_sysfs_init(void)
 		       __func__, ret);
 		goto err;
 	}
+
 err:
 	return ret;
 }
diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index 1fd246c..e4f83c6 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -271,6 +271,18 @@ enum tap_delay_type {
 	PM_TAPDELAY_OUTPUT,
 };
 
+enum zynqmp_pm_shutdown_type {
+	ZYNQMP_PM_SHUTDOWN_TYPE_SHUTDOWN,
+	ZYNQMP_PM_SHUTDOWN_TYPE_RESET,
+	ZYNQMP_PM_SHUTDOWN_TYPE_SETSCOPE_ONLY,
+};
+
+enum zynqmp_pm_shutdown_subtype {
+	ZYNQMP_PM_SHUTDOWN_SUBTYPE_SUBSYSTEM,
+	ZYNQMP_PM_SHUTDOWN_SUBTYPE_PS_ONLY,
+	ZYNQMP_PM_SHUTDOWN_SUBTYPE_SYSTEM,
+};
+
 /**
  * struct zynqmp_pm_query_data - PM query data
  * @qid:	query ID
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
