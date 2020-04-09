Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 388091A3A5C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 21:16:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XUlOZXxYnHorli+xjktGCxZBfobnrWvmXzrEz0d6fWA=; b=hMLms5WftxYQYt
	UukEroKUUZLktB3A072QJAkXDd21O6+Ll40XORiPi/OD3vRfMrzPOBlB8e3xBn3DRDoRTVgMhVvsp
	cKW6m+WEMe+2oqH7CDPKkOE7D/irhdcBHIy5V75vEzubyf6bZylEGNiyOK/fhmSCmZ6c9bVeGzIkN
	IWDVNW9/9mEbnDJFjX3ttJr+8ObEDQNARx3mc6ZIRP0ypKPGuAK0Nai/nM63AVJ5MOroRKslX73O5
	LpvTmQRqif8V9FqphnPFT4xehudORwxPHgayLjDh709U2gk0BYYpYWrXzPFTNJ/DdATJzG6uJVG3a
	ThZC9yFAPy+riP9cOjAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMcez-000488-HJ; Thu, 09 Apr 2020 19:16:21 +0000
Received: from mail-co1nam11on2053.outbound.protection.outlook.com
 ([40.107.220.53] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMcbd-0007Ki-O3
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 19:13:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ikw+FC3XbW+ZeuiS6xMno4fawDN9oYt5ozB60E5IliCfzexaXeao6yjNGuOdww7FjmAzJtaM8BzKE2AXbKLoaVgw7wahS7nF7MV+3RpVadaKZ7W7FNI744p6fiBrk+dreTQQT54+x4r63BItQczZbL4g4v4epCrx3CKmsv3em4D2kI4xsSV6afMZZL9QqFTfGrKdlv5i3shKkHDcr9ayvEEngDoRlOF/dIb5o6ExqG1ZuL6x8zIKe4yaSusH0umFBt1V+QIR8l2JUeBofQlemftOIIfp+nn/1U+0TKY6lHx6SIqAvdJtXkR7r7p77nnHjhleMunc2fHKrtXkTGAMvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eE9E4UqxZHPRPsIR6m5we0QgvAqlAAnOxx20TYuDZ5A=;
 b=kGZqic4qyeKfgd88VXWq4WFvnRx7CVXx7mcDA1a820AivHV+WoiZUS9gHOWDI4i+66MD/Fhh0ARwC/ZkO5SZG2kNaVo7eCkRxx+VclyfRoyU4OW610WssRLJdTTZOiXNAa09jqwFID8z8FblYfLvwPEqFIkZ5CVOLDiIWK33tUjcb2fICb1Li+Crs88pahReZF+1MEpLidAJW7n4Tia1ZeyplNSKdb0mK6/4ln2W5wyV1p6tzs79YC7UhnXs41/YXW3d5HMrZtjXm1aj4Z1D9s+YWlpd1xHSm6GXvY89Xxg7LJjW4KjqSX5QzHTH9kA7iwKETQ0hMJMeFIFxAUTS/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=linaro.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eE9E4UqxZHPRPsIR6m5we0QgvAqlAAnOxx20TYuDZ5A=;
 b=hWiKPGWHeMIo4WD8W7Vc29X2iu30+gq3HNPOTCWDTGCUuqxYS/Q/ML19Pnh445OilE4dHZXBm1iveDLr2uc7y2iSKlrnRU+Po24l1sYjDRMbauOgX8blxV+GCwOVCCG8FrMbf6HqzqEHdFa1hq8j5a5NtgwgbwNUot6OTTndi0s=
Received: from MN2PR18CA0024.namprd18.prod.outlook.com (2603:10b6:208:23c::29)
 by BN6PR02MB2292.namprd02.prod.outlook.com (2603:10b6:404:2b::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.20; Thu, 9 Apr
 2020 19:12:51 +0000
Received: from BL2NAM02FT007.eop-nam02.prod.protection.outlook.com
 (2603:10b6:208:23c:cafe::5c) by MN2PR18CA0024.outlook.office365.com
 (2603:10b6:208:23c::29) with Microsoft SMTP Server (version=TLS1_2,
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
 BL2NAM02FT007.mail.protection.outlook.com (10.152.77.46) with Microsoft SMTP
 Server id 15.20.2900.15 via Frontend Transport; Thu, 9 Apr 2020 19:12:50
 +0000
Received: from [149.199.38.66] (port=44356 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jMcbA-00060g-0J; Thu, 09 Apr 2020 12:12:24 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jMcba-0007NV-F1; Thu, 09 Apr 2020 12:12:50 -0700
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jMcbT-0007La-9w; Thu, 09 Apr 2020 12:12:43 -0700
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH v4 22/25] firmware: xilinx: Add sysfs interface
Date: Thu,  9 Apr 2020 12:12:11 -0700
Message-Id: <1586459534-8997-23-git-send-email-jolly.shah@xilinx.com>
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
 SFS:(10009020)(4636009)(136003)(346002)(396003)(39860400002)(376002)(46966005)(4326008)(7696005)(356004)(6666004)(9786002)(8936002)(6636002)(5660300002)(478600001)(186003)(81156014)(26005)(2906002)(316002)(336012)(36756003)(82740400003)(47076004)(426003)(2616005)(70586007)(70206006)(81166007)(107886003)(54906003)(44832011)(8676002)(7416002);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3cf89192-1697-4fb7-72b3-08d7dcb9ff6e
X-MS-TrafficTypeDiagnostic: BN6PR02MB2292:
X-Microsoft-Antispam-PRVS: <BN6PR02MB2292211403DD250DD8C34C86B8C10@BN6PR02MB2292.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:3383;
X-Forefront-PRVS: 0368E78B5B
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gUf1VG2fPsdsvOUk9POSoM4t82iTXzzFg/MAuZpsJKiSRWRf6mIrye4K2rDRdj/rj9QPmDxCSuc1Tr5yI0O6OzIl3FGf151A4tufBjG8YL+cnt41FEd3tpNd6/U18xwx6/uO9ZBuLqcLAD1YrYqyjM6eCIZD36mxaitxVJk0WcrlptSH6IriS6QRdy9o6S+n1v/KUvHIs+qKXpxbQOYbljaxEuazqAKcsgNn26iAY1I0T74SqhcDK7nDZuZgAcBWg33vyCTlFu2DRZOxYdI6egK1KJ7cS4tW3Kn0legS4rCFL3MfjcAT//fFYYoQD4G8UXQcMBS53wMc+w0KH4LnqdntjtWQqG1tYCV/pCYRMRkp6QCjlWiqOwhXaANts5kGbJvRjy9LDXBRQ9d5KehkVgHW9b3PHc1TKixB/VMAr1MtTp9pL2VGituTF3ryVgzlsXTb03Np7v2y13Do3euRrli+WbjWTIsQ0lTDpy0M6yYzVftzgMxDZdmKqZGa5PyJ
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2020 19:12:50.8533 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 3cf89192-1697-4fb7-72b3-08d7dcb9ff6e
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR02MB2292
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_121253_779374_CA99B7D7 
X-CRM114-Status: GOOD (  15.17  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.220.53 listed in list.dnswl.org]
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
Cc: Tejas Patel <tejas.patel@xilinx.com>, Rajan Vaja <rajan.vaja@xilinx.com>,
 linux-kernel@vger.kernel.org, rajanv@xilinx.com,
 Jolly Shah <jolly.shah@xilinx.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Rajan Vaja <rajan.vaja@xilinx.com>

Add firmware-ggs sysfs interface which provides read/write
interface to global storage registers.

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
Signed-off-by: Tejas Patel <tejas.patel@xilinx.com>
Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
---
 .../ABI/stable/sysfs-driver-firmware-zynqmp        |  50 ++++++
 drivers/firmware/xilinx/zynqmp.c                   | 167 ++++++++++++++++++++-
 include/linux/firmware/xlnx-zynqmp.h               |   2 +
 3 files changed, 218 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/ABI/stable/sysfs-driver-firmware-zynqmp

diff --git a/Documentation/ABI/stable/sysfs-driver-firmware-zynqmp b/Documentation/ABI/stable/sysfs-driver-firmware-zynqmp
new file mode 100644
index 0000000..2e3aebd
--- /dev/null
+++ b/Documentation/ABI/stable/sysfs-driver-firmware-zynqmp
@@ -0,0 +1,50 @@
+What:		/sys/devices/platform/firmware\:zynqmp-firmware/ggs*
+Date:		March 2020
+KernelVersion:	5.6
+Contact:	"Jolly Shah" <jollys@xilinx.com>
+Description:
+		Read/Write PMU global general storage register value,
+		GLOBAL_GEN_STORAGE{0:3}.
+		Global general storage register that can be used
+		by system to pass information between masters.
+
+		The register is reset during system or power-on
+		resets. Three registers are used by the FSBL and
+		other Xilinx software products: GLOBAL_GEN_STORAGE{4:6}.
+
+		Usage:
+		# cat /sys/devices/platform/firmware\:zynqmp-firmware/ggs0
+		# echo <value> > /sys/devices/platform/firmware\:zynqmp-firmware/ggs0
+
+		Example:
+		# cat /sys/devices/platform/firmware\:zynqmp-firmware/ggs0
+		# echo 0x1234ABCD > /sys/devices/platform/firmware\:zynqmp-firmware/ggs0
+
+Users:		Xilinx
+
+What:		/sys/devices/platform/firmware\:zynqmp-firmware/pggs*
+Date:		March 2020
+KernelVersion:	5.6
+Contact:	"Jolly Shah" <jollys@xilinx.com>
+Description:
+		Read/Write PMU persistent global general storage register
+		value, PERS_GLOB_GEN_STORAGE{0:3}.
+		Persistent global general storage register that
+		can be used by system to pass information between
+		masters.
+
+		This register is only reset by the power-on reset
+		and maintains its value through a system reset.
+		Four registers are used by the FSBL and other Xilinx
+		software products: PERS_GLOB_GEN_STORAGE{4:7}.
+		Register is reset only by a POR reset.
+
+		Usage:
+		# cat /sys/devices/platform/firmware\:zynqmp-firmware/pggs0
+		# echo <value> > /sys/devices/platform/firmware\:zynqmp-firmware/pggs0
+
+		Example:
+		# cat /sys/devices/platform/firmware\:zynqmp-firmware/pggs0
+		# echo 0x1234ABCD > /sys/devices/platform/firmware\:zynqmp-firmware/pggs0
+
+Users:		Xilinx
diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index 3518456..2fe4f57 100644
--- a/drivers/firmware/xilinx/zynqmp.c
+++ b/drivers/firmware/xilinx/zynqmp.c
@@ -2,7 +2,7 @@
 /*
  * Xilinx Zynq MPSoC Firmware layer
  *
- *  Copyright (C) 2014-2018 Xilinx, Inc.
+ *  Copyright (C) 2014-2020 Xilinx, Inc.
  *
  *  Michal Simek <michal.simek@xilinx.com>
  *  Davorin Mista <davorin.mista@aggios.com>
@@ -875,6 +875,170 @@ int zynqmp_pm_aes_engine(const u64 address, u32 *out)
 }
 EXPORT_SYMBOL_GPL(zynqmp_pm_aes_engine);
 
+static ssize_t ggs_show(struct device *device,
+			struct device_attribute *attr,
+			char *buf,
+			u32 reg)
+{
+	int ret;
+	u32 ret_payload[PAYLOAD_ARG_CNT];
+
+	ret = zynqmp_pm_read_ggs(reg, ret_payload);
+	if (ret)
+		return ret;
+
+	return sprintf(buf, "0x%x\n", ret_payload[1]);
+}
+
+static ssize_t ggs_store(struct device *device,
+			 struct device_attribute *attr,
+			 const char *buf, size_t count,
+			 u32 reg)
+{
+	long value;
+	int ret;
+
+	if (reg >= GSS_NUM_REGS)
+		return -EINVAL;
+
+	ret = kstrtol(buf, 16, &value);
+	if (ret) {
+		count = -EFAULT;
+		goto err;
+	}
+
+	ret = zynqmp_pm_write_ggs(reg, value);
+	if (ret)
+		count = -EFAULT;
+
+err:
+	return count;
+}
+
+/* GGS register show functions */
+#define GGS0_SHOW(N)						\
+	ssize_t ggs##N##_show(struct device *device,		\
+			      struct device_attribute *attr,	\
+			      char *buf)			\
+	{							\
+		return ggs_show(device, attr, buf, N);		\
+	}
+
+static GGS0_SHOW(0);
+static GGS0_SHOW(1);
+static GGS0_SHOW(2);
+static GGS0_SHOW(3);
+
+/* GGS register store function */
+#define GGS0_STORE(N)						\
+	ssize_t ggs##N##_store(struct device *device,		\
+			       struct device_attribute *attr,	\
+			       const char *buf,			\
+			       size_t count)			\
+	{							\
+		return ggs_store(device, attr, buf, count, N);	\
+	}
+
+static GGS0_STORE(0);
+static GGS0_STORE(1);
+static GGS0_STORE(2);
+static GGS0_STORE(3);
+
+static ssize_t pggs_show(struct device *device,
+			 struct device_attribute *attr,
+			 char *buf,
+			 u32 reg)
+{
+	int ret;
+	u32 ret_payload[PAYLOAD_ARG_CNT];
+
+	ret = zynqmp_pm_read_pggs(reg, ret_payload);
+	if (ret)
+		return ret;
+
+	return sprintf(buf, "0x%x\n", ret_payload[1]);
+}
+
+static ssize_t pggs_store(struct device *device,
+			  struct device_attribute *attr,
+			  const char *buf, size_t count,
+			  u32 reg)
+{
+	long value;
+	int ret;
+
+	if (reg >= GSS_NUM_REGS)
+		return -EINVAL;
+
+	ret = kstrtol(buf, 16, &value);
+	if (ret) {
+		count = -EFAULT;
+		goto err;
+	}
+
+	ret = zynqmp_pm_write_pggs(reg, value);
+	if (ret)
+		count = -EFAULT;
+
+err:
+	return count;
+}
+
+#define PGGS0_SHOW(N)						\
+	ssize_t pggs##N##_show(struct device *device,		\
+			       struct device_attribute *attr,	\
+			       char *buf)			\
+	{							\
+		return pggs_show(device, attr, buf, N);		\
+	}
+
+#define PGGS0_STORE(N)						\
+	ssize_t pggs##N##_store(struct device *device,		\
+				struct device_attribute *attr,	\
+				const char *buf,		\
+				size_t count)			\
+	{							\
+		return pggs_store(device, attr, buf, count, N);	\
+	}
+
+/* PGGS register show functions */
+static PGGS0_SHOW(0);
+static PGGS0_SHOW(1);
+static PGGS0_SHOW(2);
+static PGGS0_SHOW(3);
+
+/* PGGS register store functions */
+static PGGS0_STORE(0);
+static PGGS0_STORE(1);
+static PGGS0_STORE(2);
+static PGGS0_STORE(3);
+
+/* GGS register attributes */
+static DEVICE_ATTR_RW(ggs0);
+static DEVICE_ATTR_RW(ggs1);
+static DEVICE_ATTR_RW(ggs2);
+static DEVICE_ATTR_RW(ggs3);
+
+/* PGGS register attributes */
+static DEVICE_ATTR_RW(pggs0);
+static DEVICE_ATTR_RW(pggs1);
+static DEVICE_ATTR_RW(pggs2);
+static DEVICE_ATTR_RW(pggs3);
+
+static struct attribute *zynqmp_firmware_attrs[] = {
+	&dev_attr_ggs0.attr,
+	&dev_attr_ggs1.attr,
+	&dev_attr_ggs2.attr,
+	&dev_attr_ggs3.attr,
+	&dev_attr_pggs0.attr,
+	&dev_attr_pggs1.attr,
+	&dev_attr_pggs2.attr,
+	&dev_attr_pggs3.attr,
+	NULL,
+};
+
+ATTRIBUTE_GROUPS(zynqmp_firmware);
+
 static int zynqmp_firmware_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -952,6 +1116,7 @@ static struct platform_driver zynqmp_firmware_driver = {
 	.driver = {
 		.name = "zynqmp_firmware",
 		.of_match_table = zynqmp_firmware_of_match,
+		.dev_groups = zynqmp_firmware_groups,
 	},
 	.probe = zynqmp_firmware_probe,
 	.remove = zynqmp_firmware_remove,
diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index e23251d..c1356e9 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -42,6 +42,8 @@
 
 #define ZYNQMP_PM_MAX_QOS		100U
 
+#define GSS_NUM_REGS	(4)
+
 /* Node capabilities */
 #define	ZYNQMP_PM_CAPABILITY_ACCESS	0x1U
 #define	ZYNQMP_PM_CAPABILITY_CONTEXT	0x2U
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
