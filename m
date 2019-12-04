Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A867711383E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 00:31:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8wB3CJtdLz+4HbAz+PL50QbjVZ6DFGqT2eHOiv738Kc=; b=To1gtwZNBAoFSX
	u8hxk0e9Zp3Cr8HbqyxcUIO73r/mxJrBbU/vvCRavoO/PEZAD+UetAs2WqDwu+03Jecm2XEgQbk9t
	uEbX7cpv3T6NlpLW15EprDuTsoLq+8EBv+0KgC5Frz75h2TxZ+oDX5rglZGtMh7lPGZia1F/HLEJI
	UcK0lrhS6er6M4AoRHAMNVlnCT5hzmSTir4SuqyTGB3yFhvnAaK4eklTWIy9bosbMUMRVWdG1BWlw
	7HZFpVxHFIHcNr9Fh5vBxiECdTwhB/6vSttgv5mzrpJ3/XpTGEo1c6DzFIeQy//8t616grym0I/q1
	ER1KfJOxWcHN6UXFkZxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ice71-0002fe-Fm; Wed, 04 Dec 2019 23:31:15 +0000
Received: from mail-dm6nam12on2088.outbound.protection.outlook.com
 ([40.107.243.88] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ice5X-0000DZ-3c
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 23:29:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lupwCQQsywKqGRKBCu/5+jk3bFgdRotUBnPJpPecEjGq2Q8TShM9blMcP/RLozW1IHxQM7ZX9kTIe24JLFXLWsOh2YZFp0eHAQM0qGk2lXsvaZEDHuyLtpVOLvxCq8vUAn9ke//vm8ndhEmwtUQzzT2YnyQ+Tl3FIp2eiSO8GA2n/asbhkAoiIcnZL+QJKeGfPLbA+d5Rf5ejSTkxDUje5siZG+dXu2QH6AM+B3q4lePuNsGPWVMsbjw20mU7h948QdlmSdwqnXmFMkzVLwChciafLwi2S2tLFFeI8S0HX14NriCL8yr0jVvQfqcsQ31DKTDd+U8cFJTfvVW2MD+lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A3YQP68LJyymWuPbnb67Z3B2nv5ikzPivDfqLAz/Qs8=;
 b=MVAZk3njaSD7GWqVSojTF/Gisog+BfYaAWYVy/WxFhzt9ucba7FI2Yy6v3aFs4Dt18R8ThaBJbTLZCOg5iN5VOSzmMW/ud8tGHixGon09RmKk6VPiyHujSEJTvRazmdO/0bQdIst7428DJxmy1B5tcd4ykZGiugfxOsm7eUkgwRXi6BSOsYypSD5XZ+iXzSvtf6uHJPIa9hGKtkEfOEWAlBvU28/cdqCYxTmgqIJQpgZKFJAtqxyE9rQAFbLtuGha4HA3JXEs17xYPGD7JumT3saF6lLMmrFl+ORPVyY217HShvuOBABkCl4oiZnbUyZPEt7aV+PLvi3xopU0PdxbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=aggios.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A3YQP68LJyymWuPbnb67Z3B2nv5ikzPivDfqLAz/Qs8=;
 b=YkLJ6tx16HOLx60iV5YbRnt4xfA2bpAqcCDTZAKllO7+BEms7W64Vlk/FncvoUDnM1fbM5jFkomPCErPBZ56zU3+c5QCpADz4qYkBZWj0qBGggbHEX0p8eYs/PYzKp+3Jayl32TYKbumJydSXEj/NVfqCO1ROYktIxH0WZqPH3U=
Received: from BN6PR02CA0045.namprd02.prod.outlook.com (2603:10b6:404:5f::31)
 by MWHPR02MB2575.namprd02.prod.outlook.com (2603:10b6:300:46::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2495.22; Wed, 4 Dec
 2019 23:29:37 +0000
Received: from BL2NAM02FT055.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::203) by BN6PR02CA0045.outlook.office365.com
 (2603:10b6:404:5f::31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2516.12 via Frontend
 Transport; Wed, 4 Dec 2019 23:29:36 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; aggios.com; dkim=none (message not signed)
 header.d=none;aggios.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT055.mail.protection.outlook.com (10.152.77.126) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2474.17
 via Frontend Transport; Wed, 4 Dec 2019 23:29:35 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1ice5P-0005aG-9H; Wed, 04 Dec 2019 15:29:35 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1ice5K-00080R-5q; Wed, 04 Dec 2019 15:29:30 -0800
Received: from xsj-pvapsmtp01 (xsj-pvapsmtp01.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xB4NTRrD004749; 
 Wed, 4 Dec 2019 15:29:27 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1ice5H-000802-Ki; Wed, 04 Dec 2019 15:29:27 -0800
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH 4/5] firmware: xilinx: Add sysfs to set shutdown scope
Date: Wed,  4 Dec 2019 15:29:18 -0800
Message-Id: <1575502159-11327-5-git-send-email-jolly.shah@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1575502159-11327-1-git-send-email-jolly.shah@xilinx.com>
References: <1575502159-11327-1-git-send-email-jolly.shah@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(376002)(396003)(346002)(189003)(199004)(8936002)(5660300002)(48376002)(8676002)(44832011)(107886003)(36756003)(14444005)(478600001)(2906002)(26005)(36386004)(6636002)(16586007)(7696005)(336012)(305945005)(70206006)(50226002)(54906003)(186003)(316002)(2616005)(11346002)(4326008)(81156014)(9786002)(50466002)(51416003)(356004)(76176011)(6666004)(70586007)(426003)(7416002)(81166006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR02MB2575; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d9dda446-b850-4d39-ce5f-08d77911d344
X-MS-TrafficTypeDiagnostic: MWHPR02MB2575:
X-Microsoft-Antispam-PRVS: <MWHPR02MB2575389CCDFF5DB9C2C7A4F8B85D0@MWHPR02MB2575.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-Forefront-PRVS: 0241D5F98C
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FeCR3HLqa+V+/jp2L/7Fi5wHb9rmpP0v7ZGWz63P0OUEiVPBFXI+CmnaygNtSYZ+CrQ9vHHdw94JTofDu/cFHXIcmXmHqDByuJomHJP0ilaLqyHKggI8PUFgKPWLsAOkm5gamiBnba4+z4O4DT5CiJMTCaXSE2GNCpeNARSeqhBvrCY/yl1QPWsze3Km+EeLgR8Hiak1SwMTfCU3iOAeWwbYaAnlPjgTZfnulbtC1aNlWN7KYO3uOobBgfcicyK+0/oLAArpjY1PMppOdUBJVcAHL9nu+eC0n/8i+nSC3nsqYRqipR8lyE7NzhO+pypVFt9BRqijWJqP5cgcDwASgRBZaWwi+gbyawJjJ2ri8VNvcHrhdkKMAWzndRvY485T3CxpgGvVIErXZ8ggw4z+oBGwsw3+qTl+1NeDqeGTlYTPKLOud4fOSqgVL5D8tTab
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Dec 2019 23:29:35.9279 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d9dda446-b850-4d39-ce5f-08d77911d344
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR02MB2575
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_152943_244454_FD39D6BB 
X-CRM114-Status: GOOD (  19.01  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.243.88 listed in list.dnswl.org]
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
Cc: Stefan Krsmanovic <stefan.krsmanovic@aggios.com>,
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

Signed-off-by: Stefan Krsmanovic <stefan.krsmanovic@aggios.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
---
 Documentation/ABI/stable/sysfs-firmware-zynqmp |  32 ++++++
 drivers/firmware/xilinx/zynqmp.c               | 141 +++++++++++++++++++++++++
 include/linux/firmware/xlnx-zynqmp.h           |  12 +++
 3 files changed, 185 insertions(+)

diff --git a/Documentation/ABI/stable/sysfs-firmware-zynqmp b/Documentation/ABI/stable/sysfs-firmware-zynqmp
index 0a75812..13e4fd2 100644
--- a/Documentation/ABI/stable/sysfs-firmware-zynqmp
+++ b/Documentation/ABI/stable/sysfs-firmware-zynqmp
@@ -48,3 +48,35 @@ Description:
 		# echo 0xFFFFFFFF 0x1234ABCD > /sys/firmware/zynqmp/pggs0
 
 Users:		Xilinx
+
+What:		/sys/firmware/zynqmp/shutdown_scope
+Date:		February 2018
+KernelVersion:	4.15.6
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
index 8dcf5a4..b23bda4 100644
--- a/drivers/firmware/xilinx/zynqmp.c
+++ b/drivers/firmware/xilinx/zynqmp.c
@@ -746,6 +746,146 @@ const struct zynqmp_eemi_ops *zynqmp_pm_get_eemi_ops(void)
 EXPORT_SYMBOL_GPL(zynqmp_pm_get_eemi_ops);
 
 /**
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
+ * @kobj:	Kobject structure
+ * @attr:	Kobject attribute structure
+ * @buf:	Requested available shutdown_scope attributes string
+ *
+ * User-space interface for viewing the available scope options for system
+ * shutdown. Scope option for next shutdown call is marked with [].
+ *
+ * Usage: cat /sys/firmware/zynqmp/shutdown_scope
+ *
+ * Return:	Number of bytes printed into the buffer.
+ */
+static ssize_t shutdown_scope_show(struct kobject *kobj,
+				   struct kobj_attribute *attr,
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
+ * @kobj:	Kobject structure
+ * @attr:	Kobject attribute structure
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
+static ssize_t shutdown_scope_store(struct kobject *kobj,
+				    struct kobj_attribute *attr,
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
+static struct kobj_attribute zynqmp_attr_shutdown_scope =
+						__ATTR_RW(shutdown_scope);
+
+/**
  * config_reg_store - Write config_reg sysfs attribute
  * @kobj:	Kobject structure
  * @attr:	Kobject attribute structure
@@ -870,6 +1010,7 @@ static struct kobj_attribute zynqmp_attr_config_reg =
 					__ATTR_RW(config_reg);
 
 static struct attribute *attrs[] = {
+	&zynqmp_attr_shutdown_scope.attr,
 	&zynqmp_attr_config_reg.attr,
 	NULL,
 };
diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index b96ea5d..54061de 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -277,6 +277,18 @@ enum pm_register_access_id {
 	CONFIG_REG_READ,
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
