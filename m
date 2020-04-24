Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB9121B817E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 23:05:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yy0WCG/lXVJS5TQ1XRembHNgyktK9zfzu+OXcy26bP0=; b=H8CrNNbDXa9C/B
	XcxxqONQHNpnYQKygj67hwVmW9cmmoLtW18L9xN0NCUh3kgP6zQGlGnBLF0JA8mx9KvFMjNOHnH1G
	z1srq8feXJl3b/ObrAjjYt7FXtgFjY4Xux84rNYM8utNejM1fFpR9kosw6nnGKyOWHEKm7mXIAE5g
	ob44j17b6rVYhTPGD14E2gNmiqRPw8+kmjYcfdUcPZH7IGp1HCFYqqZFa/bwsklpEtP3LhC+1m0a2
	xG/fXe/v7ucp4fOJvEVzULoZU9Gfx5m5crjs2UDEWNBbm3uTveq1npkEofLvFPISXZNV234xHfO2e
	AjWzDZaxU97yKGwJVXVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS5VL-0005HU-Ck; Fri, 24 Apr 2020 21:04:59 +0000
Received: from mail-bn8nam11on2086.outbound.protection.outlook.com
 ([40.107.236.86] helo=NAM11-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS5PA-0006T6-NR
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 20:58:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E7T0aN4FOAMvErLL8O/8QSrIXEioF7YrczOFYQl6rV9AEN1q6eQm2JlFl3utoak8qXABcU4UYOFl3hKrCCrv7pQkgqnm+SsIA7wNMZTF4S7C46v4ij9WDphSoy8rEHTeSF0cbL6Qv+C9hzQA0WU8Jvm0Ixqlh6imAoSjnL0jkMlLnJtAB/5UnRYTfF0KXnhwaZAQ4Cz9MrtOoPQUtgcfzNUxrGQMa6r2XgvqDfc3d19hpIBr/2U5scUFlrbRfSHlxk/3qC+5jBINVkKjAPaO8Zd16YjS/KcTGx+gPYAzxOe5jxo/4t/ywX3qkuPnYS0unyxzSTM/ZR0vIJNuW9xS6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UtkfAb+OctstBJIdILKS1FBwP2Cp3vedcBC+0xJGhUE=;
 b=lABZc2Jbx+JU5JxWzIfXJwuI0jeaabyeg+1PQgCNYFoiGHV0pk7cM6Pvk9uW3QuM2Dx8F4y09HGvc/rYPJL6YpBmJxoVpYtyjLm+DrB8w5ilbbodiuAq+TYNI979NODjaFFpP+8OQkdvzZPAkXXMNp37TdwlEMxZXsRB/n/qjP0cqEl4S822fqUHnHZ3iDNQaADMC6nODMuaU8VDMKfHKlohg3Msy+/lwp1tOncJZ7OXmIOlUpBy8m3B4lzVltFoXH55Vhi+nbivN/5D3WzlgRq5nImoGllaFnkQ+Onvd2VF5iI9SDqNZyK9K/6m1KictCDbOlIAihJ7QMtA7MIXJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=aggios.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UtkfAb+OctstBJIdILKS1FBwP2Cp3vedcBC+0xJGhUE=;
 b=EjEpnJIBqlPsdmSb7wBbTlmb1CWIK/D1VhrC2mSXxeUlYwvK2cMHk/+qWHCgnf1wJX0p83SvAZa6R5hr3ifN4BzLbui/KeWjD3vEO/SVUechKQ2YlAwBZXPBxp8e4UpDzfDCE6oOTK3sBKcMWXEx0/QXh+zKZxCts0OVL4XdoYk=
Received: from CY4PR1201CA0002.namprd12.prod.outlook.com
 (2603:10b6:910:16::12) by BY5PR02MB6337.namprd02.prod.outlook.com
 (2603:10b6:a03:1b3::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.22; Fri, 24 Apr
 2020 20:58:33 +0000
Received: from CY1NAM02FT047.eop-nam02.prod.protection.outlook.com
 (2603:10b6:910:16:cafe::9e) by CY4PR1201CA0002.outlook.office365.com
 (2603:10b6:910:16::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13 via Frontend
 Transport; Fri, 24 Apr 2020 20:58:33 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; aggios.com; dkim=none (message not signed)
 header.d=none;aggios.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT047.mail.protection.outlook.com (10.152.74.177) with Microsoft SMTP
 Server id 15.20.2937.19 via Frontend Transport; Fri, 24 Apr 2020 20:58:32
 +0000
Received: from [149.199.38.66] (port=33424 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jS5Nx-0002Dd-GH; Fri, 24 Apr 2020 13:57:21 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jS5P6-0007Pe-FS; Fri, 24 Apr 2020 13:58:32 -0700
Received: from xsj-pvapsmtp01 (mailman.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 03OKwKu2026349; 
 Fri, 24 Apr 2020 13:58:20 -0700
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jS5Ou-0007Lo-6I; Fri, 24 Apr 2020 13:58:20 -0700
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH v5 24/25] firmware: xilinx: Add sysfs to set shutdown scope
Date: Fri, 24 Apr 2020 13:58:06 -0700
Message-Id: <1587761887-4279-25-git-send-email-jolly.shah@xilinx.com>
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
 SFS:(4636009)(39860400002)(136003)(396003)(346002)(376002)(46966005)(316002)(7696005)(2616005)(44832011)(9786002)(426003)(26005)(36756003)(8676002)(107886003)(2906002)(4326008)(8936002)(7416002)(5660300002)(81156014)(6666004)(70586007)(70206006)(336012)(81166007)(54906003)(478600001)(82310400002)(82740400003)(47076004)(6636002)(356005)(186003);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 804339d3-e216-4003-f559-08d7e8923fb5
X-MS-TrafficTypeDiagnostic: BY5PR02MB6337:
X-Microsoft-Antispam-PRVS: <BY5PR02MB6337FE173A27145110579033B8D00@BY5PR02MB6337.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-Forefront-PRVS: 03838E948C
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iFALMs0mdSBtjYxM3AtcEbqUrHyrCxgRsB2q0YOt6LBvj1n59MCz/heTYUc2+D3yI+hvGx9/Oa2kHVmOlWCrL3P0kVCmV6Dduhb4hYQmxYxWGgpWPdTle/Eadic45r+aCZD5xA0W9lWSslTapN7XFziEzjac42aDptXPWZ+FXUecpl3VYW2W7sKRVft0beElQbm7QKhUiyjgeJqleSJmCSWEeYkcASPqbuGrNtVGjaDSCvG0CFj2xXzK+O7gsuSIiMYhpc0idXfLZHP76AJuvYXe0sRCUmvmXW22E+IUJ9zNlKqSpwFi7ljD7iagtbZrqfmGTiqVAfsGkkypdsYoueCEssYg5IJfp+mjgBuiSQHJEHkPuBl8I2mQZaZpvct1f+o8dE51KpP7snBGmOvJ8lYJMA5xbzC/uC3TGg9fK/eRbfwHdixggK0mb5qZMkoxVA2O+DDsaMZgFVK/cs/SZMfyPboG3RaVl4wSxlNTB2jLehb4i0Gyk1qGK1xfmXZWhrRmdU1ogXN+YOCZwqMeQg==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2020 20:58:32.7813 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 804339d3-e216-4003-f559-08d7e8923fb5
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR02MB6337
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_135836_812899_D49E18DB 
X-CRM114-Status: GOOD (  16.91  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.236.86 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.236.86 listed in list.dnswl.org]
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
Cc: Tejas Patel <tejas.patel@xilinx.com>,
 Stefan Krsmanovic <stefan.krsmanovic@aggios.com>,
 Rajan Vaja <rajan.vaja@xilinx.com>, linux-kernel@vger.kernel.org,
 rajanv@xilinx.com, Jolly Shah <jolly.shah@xilinx.com>,
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
Signed-off-by: Tejas Patel <tejas.patel@xilinx.com>
Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
---
 .../ABI/stable/sysfs-driver-firmware-zynqmp        | 32 +++++++
 drivers/firmware/xilinx/zynqmp.c                   | 98 +++++++++++++++++++++-
 include/linux/firmware/xlnx-zynqmp.h               | 12 +++
 3 files changed, 141 insertions(+), 1 deletion(-)

diff --git a/Documentation/ABI/stable/sysfs-driver-firmware-zynqmp b/Documentation/ABI/stable/sysfs-driver-firmware-zynqmp
index 2e3aebd..554f30c 100644
--- a/Documentation/ABI/stable/sysfs-driver-firmware-zynqmp
+++ b/Documentation/ABI/stable/sysfs-driver-firmware-zynqmp
@@ -48,3 +48,35 @@ Description:
 		# echo 0x1234ABCD > /sys/devices/platform/firmware\:zynqmp-firmware/pggs0
 
 Users:		Xilinx
+
+What:		/sys/devices/platform/firmware\:zynqmp-firmware/shutdown_scope
+Date:		March 2020
+KernelVersion:	5.6
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
+		# cat /sys/devices/platform/firmware\:zynqmp-firmware/shutdown_scope
+		# echo <scope> > /sys/devices/platform/firmware\:zynqmp-firmware/shutdown_scope
+
+		Example:
+		# cat /sys/devices/platform/firmware\:zynqmp-firmware/shutdown_scope
+		# echo "subsystem" > /sys/devices/platform/firmware\:zynqmp-firmware/shutdown_scope
+
+Users:		Xilinx
diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index 9ba376c..8d36618 100644
--- a/drivers/firmware/xilinx/zynqmp.c
+++ b/drivers/firmware/xilinx/zynqmp.c
@@ -888,6 +888,102 @@ int zynqmp_pm_system_shutdown(const u32 type, const u32 subtype)
 				   0, 0, NULL);
 }
 
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
 static ssize_t ggs_show(struct device *device,
 			struct device_attribute *attr,
 			char *buf,
@@ -923,7 +1019,6 @@ static ssize_t ggs_store(struct device *device,
 	ret = zynqmp_pm_write_ggs(reg, value);
 	if (ret)
 		count = -EFAULT;
-
 err:
 	return count;
 }
@@ -1047,6 +1142,7 @@ static struct attribute *zynqmp_firmware_attrs[] = {
 	&dev_attr_pggs1.attr,
 	&dev_attr_pggs2.attr,
 	&dev_attr_pggs3.attr,
+	&dev_attr_shutdown_scope.attr,
 	NULL,
 };
 
diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index 2254c7c..c297333 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -286,6 +286,18 @@ enum dll_reset_type {
 	PM_DLL_RESET_PULSE,
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
