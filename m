Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BEDD1A3A83
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 21:30:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yy0WCG/lXVJS5TQ1XRembHNgyktK9zfzu+OXcy26bP0=; b=IXY6hs9PdsjxV7
	QiEtoslDJwI4QFCj2dtiHxUS5faWkQBMDhwlKiJFz/Eunr57izvgBZXOk+1xmIMDcBPnnme3KKEWT
	N4Wx6B1FMqvaP8hDyp2GW7EDNw2yTSumRxuYM8AbfqUWd0cnBLvoFZEj92D2qS6S6nRLPH+BEOEW7
	YR+WUlPLyzcmf7SzJT8DqdBur1oolqm3orC7+0naZjEeLIUEWHK3gUEuzdmoEpgXK4CZEN2v8hOOg
	bTC5kP2e5x6hqunfYtYjhJOQlfqnXp14b+PPYyBxMaUn2E1klnbt15Mryky1zpwHUCTXPAhTZw545
	auXL7xV736f9eX/nYERw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMcsq-00069V-MU; Thu, 09 Apr 2020 19:30:40 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMcsh-0005yT-C7
 for linux-arm-kernel@bombadil.infradead.org; Thu, 09 Apr 2020 19:30:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=UtkfAb+OctstBJIdILKS1FBwP2Cp3vedcBC+0xJGhUE=; b=sAeY+nUzXtzEBuMWmGs/jmq21s
 HSuQ16oBmvY7wt/ML0qprzov8h/OORhr1n9Z5Zaa4lbfY8PrmQRIK4kho6WDA6mNiRviiBggw5Vah
 GINb6NOuRwyASJZUoOu+tw5oLvGggiBoS5QZknrQLMmGENQrU1NGWuhI1CuSahrZBmiBYqs44UaH5
 S2e/M4AjYBjqjnVUo5k4hR7X7GTl5XWkQo5YDjILvDua/zyEgXYyXm/LOCmTsqSOwNCUC4wfMCKkv
 egWpHCVYL43vHyOIZjFEXSwiKTZZKbItbRp9QrrV4E4ulrGITmkKMNpT2yLehfFOty6L2Jhvflod2
 j258gHVA==;
Received: from mail-bn8nam11on2058.outbound.protection.outlook.com
 ([40.107.236.58] helo=NAM11-BN8-obe.outbound.protection.outlook.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMcbi-0006w0-0v
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 19:12:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ElGWHadgKf5a7SDkfnnMKLAX1idqrzJzRKSqdmP0tJF/lBBr+ttQjTvJfu0ssIByOwZvKi66DgJfCmpCBJMk9l2sB1C1xCib0yiGBxn5Rg5XKgTDkYqui+YszmiCzWDbnVEXJdSlg+AMZg8nB39eznMiXjljJ1pPcVdT25c4KGifa/VLdYV1IOUo72w+q8ofByj36WlTzvW3k7E7p7up0s/jBurQWy9UC9VvXPLpRIKJ0Y5GwtY1K3x3IisHSRlKz0m0zU4aY0BujhHGd015MJwdGOqg0yjpOo6kA5UOVGTHgDqY3F4SghVD3c8MQkn3a04fNiKHvfZl7uoUlSxAJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UtkfAb+OctstBJIdILKS1FBwP2Cp3vedcBC+0xJGhUE=;
 b=cfniobyZlttjFvV/4mqwVKl2psNH6hNqbpalr3gbYQZUSfarL/JBthvqjFGc9mlb9Hb+PQcrC4lNH81SjxQIB9U44CRw6mSUCFGoBDc9k7cCpQc9v0J3iS8XRGGZYnFy2od2qMd6n6tQfqrv6mGlRpG/Anv79/uzMKqTwSwvwtWnpRzSAL4d0V9ZN2ZGfUHGja/1yUAs0xAjPrYO6JAagNz5mnLivjepsH38uqRiB29g/ZAuXYtsVlr1ic1ozk/sFhFjmtxzz5QX5NZcir9Yvlh7FM5+SyCR0MEENJRxQLVCRCcBYzNvT6khmhDRomDIvdFGmfnMsUfZKg7S6Wv4/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=linaro.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UtkfAb+OctstBJIdILKS1FBwP2Cp3vedcBC+0xJGhUE=;
 b=lGnit14vCdZf7Eg6wNeSwLh3Km9PRY0iI9YGyQFp6nX9q88kXSCGlP4ixaMxTc5ftYLf518MqZIh+5cmmaOQefvUyXfuKvx/SlTvqg2H8vxRtAlg7/okvOuVo6MoGSqeSJj9bCme2OMAdwD0QC7Hk3gd8p/JFMIbmmj3wQ4lmN8=
Received: from MN2PR14CA0016.namprd14.prod.outlook.com (2603:10b6:208:23e::21)
 by SN6PR02MB5342.namprd02.prod.outlook.com (2603:10b6:805:74::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.20; Thu, 9 Apr
 2020 19:12:50 +0000
Received: from BL2NAM02FT051.eop-nam02.prod.protection.outlook.com
 (2603:10b6:208:23e:cafe::e5) by MN2PR14CA0016.outlook.office365.com
 (2603:10b6:208:23e::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.16 via Frontend
 Transport; Thu, 9 Apr 2020 19:12:50 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; linaro.org; dkim=none (message not signed)
 header.d=none;linaro.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT051.mail.protection.outlook.com (10.152.76.181) with Microsoft SMTP
 Server id 15.20.2900.15 via Frontend Transport; Thu, 9 Apr 2020 19:12:50
 +0000
Received: from [149.199.38.66] (port=44311 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jMcb9-00060J-D7; Thu, 09 Apr 2020 12:12:23 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jMcbZ-0007NV-Rp; Thu, 09 Apr 2020 12:12:49 -0700
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jMcbT-0007La-ED; Thu, 09 Apr 2020 12:12:43 -0700
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH v4 24/25] firmware: xilinx: Add sysfs to set shutdown scope
Date: Thu,  9 Apr 2020 12:12:13 -0700
Message-Id: <1586459534-8997-25-git-send-email-jolly.shah@xilinx.com>
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
 SFS:(10009020)(4636009)(46966005)(186003)(70586007)(36756003)(26005)(8936002)(9786002)(81156014)(81166007)(70206006)(4326008)(7696005)(498600001)(5660300002)(54906003)(8676002)(107886003)(7416002)(44832011)(2616005)(6636002)(2906002)(356004)(6666004)(47076004)(336012)(426003);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 70bc3e54-a723-4e42-7e09-08d7dcb9ff17
X-MS-TrafficTypeDiagnostic: SN6PR02MB5342:
X-Microsoft-Antispam-PRVS: <SN6PR02MB53423C22E7C815B6D350B5F3B8C10@SN6PR02MB5342.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-Forefront-PRVS: 0368E78B5B
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: spfkOjKsCRjJ3KPONTci/YKDmf4I0pZDWOteQQxykvffaMHfC8MvC9WWLM79FULS6cVze2JYSGiNvNnXS74linS9AosGrSaXkB3KdGPecmrrLSBk94spxrC3Q/Z97KN60GpVRsCVPaEBXMff50lHE6cDYQDv2Dex5sfR9XoNASMC0eR2M5LqX2sZezVYae1cvs0RgxxaIeIdnAULECJ4s2ucsXXBUHOrdB3TiT0BRs/EeRXcDq4JoQB9vX1SxePdh7vfR+G+x5LUDBQ5Vo+KuVeP/yw8yeLtmwgW0rFYlxARrYXhOHFeexVf2OorG/V0eyo3Kcm2/1KElQpmhhLomoksgRX1J49dkTiQrXp0d+fD/8WtPRJHH8wd0qNs9lfHkDHnAuNhonjo/858oesOIBvj3Tu5AGjJbS7ng1H0nlZk2zyCUZqtb01t1CE0mhCFPWrYIKwbFcXScmmUy+2OJ6KAU2thcNFCfPDMJBnIgF9xlBMvhDKXdd400XbmEW0mgbnRyPgJgIPFxXNycN2tIA==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2020 19:12:50.2839 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 70bc3e54-a723-4e42-7e09-08d7dcb9ff17
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB5342
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.236.58 listed in list.dnswl.org]
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
