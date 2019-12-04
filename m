Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B34A11383C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 00:31:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YGSes5u4aeEsx0sqS/Ep2szmhjwHe/ClMotv2WjgAPA=; b=PYL/kscRACYSH7
	TrdLtpJz9kJ8fzQs6YmIE110f1IuxC3In/MdUJzN+Jjp3ihOsRftPC26gYnDBNN/MQTJQKLzzkklf
	hNRAK3g3NglBO+Ou5uFa6w9+A3VT2DfJRu0Y2oKxzYKmjmp3Wb4pAk/xSSFk7OqtGmgu0XAI+vCuq
	zzH+YozzyAyYS0hKh6FIPhhlz/L4W3Z71GYr3Y+Jkrhg799lw8dQ8Yrir080YHSf435r50AjwT5oT
	n5tzBj66OsP1fnGQ9cuIoNtz4xSNfHFjA4uhb71wOVQ31RdDLflrmXzki6cjTIVvR/CoR4B9UwuTd
	3QZcdC5NYRNQ6JwOCp/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ice6k-0002QY-Lr; Wed, 04 Dec 2019 23:30:58 +0000
Received: from mail-eopbgr750045.outbound.protection.outlook.com
 ([40.107.75.45] helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ice5V-0000DX-SL
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 23:29:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DhsUYZlfQKBXitU5MjQ37YZ+bjbrldXFxm67lhxsL16liK6kc1KE7quLxgQKt72ZdRoc/LNDN/cf7BPNs0wp5ec6G8IBJjCHp/J4HLfbClLrFiQZ6sHDZb6UmugmG+mbxlN9Y0AYUwbdsHBOr3LO7szCQOB/Om0V7xN35cV3701NChggb9enxoIJ/96zhXEihuMTC1/JCCKE50uTIGX7Qh+CePuz+lMTliSG4o378FvddG6aCmnXT4AKnGqBY2TXo5b2FFkOca/nS5VCusF+cscpMS5AB9OwmwjIssbE8U3YJpIP9cXyNxYdsdJrcLj+L0J8dVRiy2UfCdpDrs9Zuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C6ehSa67b2eRuoG+daJ6YIk5dss8v60v6CUqO5i+olg=;
 b=RMNm55tRnYRlwcl2rQn6uZjGjsZw26REvIP54APJzLUSdXBfN+DIIu9y0irWctaSmRvQIOUKLwEv7yZY8tHkvzVS5pHRzhu4UYBGIakbAGGjgkiNBQwkd9NeLTWqfklpwVZKHQJwkdVPC9jzA3rl55MSh3WJpxq+oaqfiCukhT4+vkQeYU8lzBCqzbnuA030ObejRjeKST+EDvskEkF1iC8bUcZLzsF1YHuNAd+oRgGIbQ0nju4miu8g4GVvTiM0EMzpaoL+RpRGt3tRRA8Nv0plj95oL8u7uwhy8abALrbA0cOZUTbk5rpfAcDJhAuLuklixNjaSqIRrNqBX2aIgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C6ehSa67b2eRuoG+daJ6YIk5dss8v60v6CUqO5i+olg=;
 b=jrkrkmSvDvIn+4BvgZP592iPO36IQlV4Qa86jA1cp/lsVIux+U+4vNfGeZNSy1j02FaXDo8eAJKMlmQlotF+/DMZoWAePk7Vs4f+s9XtXBnez/Yl/TZ4RiuovahCJPtXHqSvw1oBFS1hgvuhWbuWvy42Mka6UuYrF7Zt4GTik1g=
Received: from CY4PR02CA0015.namprd02.prod.outlook.com (2603:10b6:903:18::25)
 by BYAPR02MB5512.namprd02.prod.outlook.com (2603:10b6:a03:9a::30)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2516.12; Wed, 4 Dec
 2019 23:29:37 +0000
Received: from BL2NAM02FT032.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::209) by CY4PR02CA0015.outlook.office365.com
 (2603:10b6:903:18::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2516.12 via Frontend
 Transport; Wed, 4 Dec 2019 23:29:37 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT032.mail.protection.outlook.com (10.152.77.169) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2474.17
 via Frontend Transport; Wed, 4 Dec 2019 23:29:36 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1ice5P-0005aF-09; Wed, 04 Dec 2019 15:29:35 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1ice5J-00080R-TI; Wed, 04 Dec 2019 15:29:29 -0800
Received: from xsj-pvapsmtp01 (xsj-smtp.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xB4NTREc024867; 
 Wed, 4 Dec 2019 15:29:27 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1ice5H-000802-Hf; Wed, 04 Dec 2019 15:29:27 -0800
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH 2/5] firmware: xilinx: Add sysfs interface
Date: Wed,  4 Dec 2019 15:29:16 -0800
Message-Id: <1575502159-11327-3-git-send-email-jolly.shah@xilinx.com>
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
 SFS:(10009020)(4636009)(346002)(376002)(39860400002)(136003)(396003)(199004)(189003)(70586007)(5660300002)(11346002)(76176011)(30864003)(107886003)(81166006)(6636002)(51416003)(70206006)(7696005)(81156014)(478600001)(305945005)(50226002)(8936002)(2616005)(336012)(186003)(426003)(26005)(8676002)(7416002)(4326008)(316002)(356004)(9786002)(48376002)(16586007)(50466002)(14444005)(44832011)(54906003)(2906002)(36386004)(6666004)(36756003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR02MB5512; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: fbf06d41-47d4-48e5-2d46-08d77911d3b7
X-MS-TrafficTypeDiagnostic: BYAPR02MB5512:
X-Microsoft-Antispam-PRVS: <BYAPR02MB551279574D13220DD798F5A7B85D0@BYAPR02MB5512.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:327;
X-Forefront-PRVS: 0241D5F98C
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IVAiAs06neRB50URjcic5nVfyVtxAQXWgMdmtN2gyAz330O4OC+QoDiXdffMMS368dn/A6wPN2ndynPGqcaDr9PU66fz6yqIv4eZR4OADRmcs222OKPFokzgVa2XHKmd1CMAItYH7JLfD8GFi3bFbrmBnJ/4TGtL1PfDFiVoscVOmv0bmRWX+Drk1AczlO2RQEfpc2D7YlkiLtGnA/hp2EbiG1PkeDkxAyc+QkkdU9Chx1kRm5sX9yKo1aPi6k2AeG3b1O4cLy1g1p4N6QoFrwwrIsvE2JiaKtgaOKES0Tyh2QQxCho5Y3Dwf9hBEcrzbIDH8Il/moeBS06kFLrswMJN/K91sBCijesfc6SBOy9UbOzSiKvkL8tqD/+wO8jNu/aF088ckB3S8TIaAEb3N0XsjaTPHU6GD2ixpCmL3hzJG0zRTiPA8viURQ3W7Es3
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Dec 2019 23:29:36.6454 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: fbf06d41-47d4-48e5-2d46-08d77911d3b7
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB5512
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_152941_979001_705C9BBE 
X-CRM114-Status: GOOD (  18.16  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.75.45 listed in list.dnswl.org]
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

Add Firmware-ggs sysfs interface which provides read/write
interface to global storage registers.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
---
 Documentation/ABI/stable/sysfs-firmware-zynqmp |  50 +++++
 drivers/firmware/xilinx/Makefile               |   2 +-
 drivers/firmware/xilinx/zynqmp-ggs.c           | 289 +++++++++++++++++++++++++
 drivers/firmware/xilinx/zynqmp.c               |  12 +
 include/linux/firmware/xlnx-zynqmp.h           |  10 +
 5 files changed, 362 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/ABI/stable/sysfs-firmware-zynqmp
 create mode 100644 drivers/firmware/xilinx/zynqmp-ggs.c

diff --git a/Documentation/ABI/stable/sysfs-firmware-zynqmp b/Documentation/ABI/stable/sysfs-firmware-zynqmp
new file mode 100644
index 0000000..0a75812
--- /dev/null
+++ b/Documentation/ABI/stable/sysfs-firmware-zynqmp
@@ -0,0 +1,50 @@
+What:		/sys/firmware/zynqmp/ggs*
+Date:		January 2018
+KernelVersion:	4.15.0
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
+		# cat /sys/firmware/zynqmp/ggs0
+		# echo <mask> <value> > /sys/firmware/zynqmp/ggs0
+
+		Example:
+		# cat /sys/firmware/zynqmp/ggs0
+		# echo 0xFFFFFFFF 0x1234ABCD > /sys/firmware/zynqmp/ggs0
+
+Users:		Xilinx
+
+What:		/sys/firmware/zynqmp/pggs*
+Date:		January 2018
+KernelVersion:	4.15.0
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
+		# cat /sys/firmware/zynqmp/pggs0
+		# echo <mask> <value> > /sys/firmware/zynqmp/pggs0
+
+		Example:
+		# cat /sys/firmware/zynqmp/pggs0
+		# echo 0xFFFFFFFF 0x1234ABCD > /sys/firmware/zynqmp/pggs0
+
+Users:		Xilinx
diff --git a/drivers/firmware/xilinx/Makefile b/drivers/firmware/xilinx/Makefile
index 875a537..1e8643c 100644
--- a/drivers/firmware/xilinx/Makefile
+++ b/drivers/firmware/xilinx/Makefile
@@ -1,5 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0
 # Makefile for Xilinx firmwares
 
-obj-$(CONFIG_ZYNQMP_FIRMWARE) += zynqmp.o
+obj-$(CONFIG_ZYNQMP_FIRMWARE) += zynqmp.o zynqmp-ggs.o
 obj-$(CONFIG_ZYNQMP_FIRMWARE_DEBUG) += zynqmp-debug.o
diff --git a/drivers/firmware/xilinx/zynqmp-ggs.c b/drivers/firmware/xilinx/zynqmp-ggs.c
new file mode 100644
index 0000000..42179ad
--- /dev/null
+++ b/drivers/firmware/xilinx/zynqmp-ggs.c
@@ -0,0 +1,289 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Xilinx Zynq MPSoC Firmware layer
+ *
+ *  Copyright (C) 2014-2018 Xilinx, Inc.
+ *
+ *  Jolly Shah <jollys@xilinx.com>
+ *  Rajan Vaja <rajanv@xilinx.com>
+ */
+
+#include <linux/compiler.h>
+#include <linux/of.h>
+#include <linux/init.h>
+#include <linux/module.h>
+#include <linux/uaccess.h>
+#include <linux/slab.h>
+#include <linux/firmware/xlnx-zynqmp.h>
+
+static ssize_t read_register(char *buf, u32 ioctl_id, u32 reg)
+{
+	int ret;
+	u32 ret_payload[PAYLOAD_ARG_CNT];
+	const struct zynqmp_eemi_ops *eemi_ops = zynqmp_pm_get_eemi_ops();
+
+	if (!eemi_ops->ioctl)
+		return -EFAULT;
+
+	ret = eemi_ops->ioctl(0, ioctl_id, reg, 0, ret_payload);
+	if (ret)
+		return ret;
+
+	return sprintf(buf, "0x%x\n", ret_payload[1]);
+}
+
+static ssize_t write_register(const char *buf, size_t count, u32 read_ioctl,
+			      u32 write_ioctl, u32 reg)
+{
+	char *kern_buff, *inbuf, *tok;
+	long mask, value;
+	int ret;
+	u32 ret_payload[PAYLOAD_ARG_CNT];
+	const struct zynqmp_eemi_ops *eemi_ops = zynqmp_pm_get_eemi_ops();
+
+	if (!eemi_ops->ioctl)
+		return -EFAULT;
+
+	kern_buff = kzalloc(count, GFP_KERNEL);
+	if (!kern_buff)
+		return -ENOMEM;
+
+	ret = strlcpy(kern_buff, buf, count);
+	if (ret < 0) {
+		ret = -EFAULT;
+		goto err;
+	}
+
+	inbuf = kern_buff;
+
+	/* Read the write mask */
+	tok = strsep(&inbuf, " ");
+	if (!tok) {
+		ret = -EFAULT;
+		goto err;
+	}
+
+	ret = kstrtol(tok, 16, &mask);
+	if (ret) {
+		ret = -EFAULT;
+		goto err;
+	}
+
+	/* Read the write value */
+	tok = strsep(&inbuf, " ");
+	if (!tok) {
+		ret = -EFAULT;
+		goto err;
+	}
+
+	ret = kstrtol(tok, 16, &value);
+	if (ret) {
+		ret = -EFAULT;
+		goto err;
+	}
+
+	ret = eemi_ops->ioctl(0, read_ioctl, reg, 0, ret_payload);
+	if (ret) {
+		ret = -EFAULT;
+		goto err;
+	}
+	ret_payload[1] &= ~mask;
+	value &= mask;
+	value |= ret_payload[1];
+
+	ret = eemi_ops->ioctl(0, write_ioctl, reg, value, NULL);
+	if (ret)
+		ret = -EFAULT;
+
+err:
+	kfree(kern_buff);
+	if (ret)
+		return ret;
+
+	return count;
+}
+
+/**
+ * ggs_show - Show global general storage (ggs) sysfs attribute
+ * @kobj: Kobject structure
+ * @attr: Kobject attribute structure
+ * @buf: Requested available shutdown_scope attributes string
+ * @reg: Register number
+ *
+ * Return:Number of bytes printed into the buffer.
+ *
+ * Helper function for viewing a ggs register value.
+ *
+ * User-space interface for viewing the content of the ggs0 register.
+ * cat /sys/firmware/zynqmp/ggs0
+ */
+static ssize_t ggs_show(struct kobject *kobj,
+			struct kobj_attribute *attr,
+			char *buf,
+			u32 reg)
+{
+	return read_register(buf, IOCTL_READ_GGS, reg);
+}
+
+/**
+ * ggs_store - Store global general storage (ggs) sysfs attribute
+ * @kobj: Kobject structure
+ * @attr: Kobject attribute structure
+ * @buf: User entered shutdown_scope attribute string
+ * @count: Size of buf
+ * @reg: Register number
+ *
+ * Return: count argument if request succeeds, the corresponding
+ * error code otherwise
+ *
+ * Helper function for storing a ggs register value.
+ *
+ * For example, the user-space interface for storing a value to the
+ * ggs0 register:
+ * echo 0xFFFFFFFF 0x1234ABCD > /sys/firmware/zynqmp/ggs0
+ */
+static ssize_t ggs_store(struct kobject *kobj,
+			 struct kobj_attribute *attr,
+			 const char *buf,
+			 size_t count,
+			 u32 reg)
+{
+	if (!kobj || !attr || !buf || !count || reg >= GSS_NUM_REGS)
+		return -EINVAL;
+
+	return write_register(buf, count, IOCTL_READ_GGS, IOCTL_WRITE_GGS, reg);
+}
+
+/* GGS register show functions */
+#define GGS0_SHOW(N)						\
+	ssize_t ggs##N##_show(struct kobject *kobj,		\
+				struct kobj_attribute *attr,	\
+				char *buf)			\
+	{							\
+		return ggs_show(kobj, attr, buf, N);		\
+	}
+
+static GGS0_SHOW(0);
+static GGS0_SHOW(1);
+static GGS0_SHOW(2);
+static GGS0_SHOW(3);
+
+/* GGS register store function */
+#define GGS0_STORE(N)						\
+	ssize_t ggs##N##_store(struct kobject *kobj,		\
+				struct kobj_attribute *attr,	\
+				const char *buf,		\
+				size_t count)			\
+	{							\
+		return ggs_store(kobj, attr, buf, count, N);	\
+	}
+
+static GGS0_STORE(0);
+static GGS0_STORE(1);
+static GGS0_STORE(2);
+static GGS0_STORE(3);
+
+/**
+ * pggs_show - Show persistent global general storage (pggs) sysfs attribute
+ * @kobj: Kobject structure
+ * @attr: Kobject attribute structure
+ * @buf: Requested available shutdown_scope attributes string
+ * @reg: Register number
+ *
+ * Return:Number of bytes printed into the buffer.
+ *
+ * Helper function for viewing a pggs register value.
+ */
+static ssize_t pggs_show(struct kobject *kobj,
+			 struct kobj_attribute *attr,
+			 char *buf,
+			 u32 reg)
+{
+	return read_register(buf, IOCTL_READ_PGGS, reg);
+}
+
+/**
+ * pggs_store - Store persistent global general storage (pggs) sysfs attribute
+ * @kobj: Kobject structure
+ * @attr: Kobject attribute structure
+ * @buf: User entered shutdown_scope attribute string
+ * @count: Size of buf
+ * @reg: Register number
+ *
+ * Return: count argument if request succeeds, the corresponding
+ * error code otherwise
+ *
+ * Helper function for storing a pggs register value.
+ */
+static ssize_t pggs_store(struct kobject *kobj,
+			  struct kobj_attribute *attr,
+			  const char *buf,
+			  size_t count,
+			  u32 reg)
+{
+	return write_register(buf, count, IOCTL_READ_PGGS,
+			      IOCTL_WRITE_PGGS, reg);
+}
+
+#define PGGS0_SHOW(N)						\
+	ssize_t pggs##N##_show(struct kobject *kobj,		\
+				struct kobj_attribute *attr,	\
+				char *buf)			\
+	{							\
+		return pggs_show(kobj, attr, buf, N);		\
+	}
+
+#define PGGS0_STORE(N)						\
+	ssize_t pggs##N##_store(struct kobject *kobj,		\
+				   struct kobj_attribute *attr,	\
+				   const char *buf,		\
+				   size_t count)		\
+	{							\
+		return pggs_store(kobj, attr, buf, count, N);	\
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
+static struct kobj_attribute zynqmp_attr_ggs0 = __ATTR_RW(ggs0);
+static struct kobj_attribute zynqmp_attr_ggs1 = __ATTR_RW(ggs1);
+static struct kobj_attribute zynqmp_attr_ggs2 = __ATTR_RW(ggs2);
+static struct kobj_attribute zynqmp_attr_ggs3 = __ATTR_RW(ggs3);
+
+/* PGGS register attributes */
+static struct kobj_attribute zynqmp_attr_pggs0 = __ATTR_RW(pggs0);
+static struct kobj_attribute zynqmp_attr_pggs1 = __ATTR_RW(pggs1);
+static struct kobj_attribute zynqmp_attr_pggs2 = __ATTR_RW(pggs2);
+static struct kobj_attribute zynqmp_attr_pggs3 = __ATTR_RW(pggs3);
+
+static struct attribute *attrs[] = {
+	&zynqmp_attr_ggs0.attr,
+	&zynqmp_attr_ggs1.attr,
+	&zynqmp_attr_ggs2.attr,
+	&zynqmp_attr_ggs3.attr,
+	&zynqmp_attr_pggs0.attr,
+	&zynqmp_attr_pggs1.attr,
+	&zynqmp_attr_pggs2.attr,
+	&zynqmp_attr_pggs3.attr,
+	NULL,
+};
+
+static const struct attribute_group attr_group = {
+	.attrs = attrs,
+	NULL,
+};
+
+int zynqmp_pm_ggs_init(struct kobject *parent_kobj)
+{
+	return sysfs_create_group(parent_kobj, &attr_group);
+}
diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index 56431ad..9836174 100644
--- a/drivers/firmware/xilinx/zynqmp.c
+++ b/drivers/firmware/xilinx/zynqmp.c
@@ -475,6 +475,10 @@ static inline int zynqmp_is_valid_ioctl(u32 ioctl_id)
 	case IOCTL_GET_PLL_FRAC_MODE:
 	case IOCTL_SET_PLL_FRAC_DATA:
 	case IOCTL_GET_PLL_FRAC_DATA:
+	case IOCTL_WRITE_GGS:
+	case IOCTL_READ_GGS:
+	case IOCTL_WRITE_PGGS:
+	case IOCTL_READ_PGGS:
 		return 1;
 	default:
 		return 0;
@@ -876,8 +880,16 @@ static int zynqmp_pm_sysfs_init(void)
 	if (ret) {
 		pr_err("%s() sysfs creation fail with error %d\n",
 		       __func__, ret);
+		goto err;
 	}
 
+	ret = zynqmp_pm_ggs_init(zynqmp_kobj);
+	if (ret) {
+		pr_err("%s() GGS init fail with error %d\n",
+		       __func__, ret);
+		goto err;
+	}
+err:
 	return ret;
 }
 
diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index 55561d0..bf6e9db 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -13,6 +13,8 @@
 #ifndef __FIRMWARE_ZYNQMP_H__
 #define __FIRMWARE_ZYNQMP_H__
 
+#include <linux/device.h>
+
 #define ZYNQMP_PM_VERSION_MAJOR	1
 #define ZYNQMP_PM_VERSION_MINOR	0
 
@@ -42,6 +44,8 @@
 
 #define ZYNQMP_PM_MAX_QOS		100U
 
+#define GSS_NUM_REGS	(4)
+
 /* Node capabilities */
 #define	ZYNQMP_PM_CAPABILITY_ACCESS	0x1U
 #define	ZYNQMP_PM_CAPABILITY_CONTEXT	0x2U
@@ -98,6 +102,10 @@ enum pm_ioctl_id {
 	IOCTL_GET_PLL_FRAC_MODE,
 	IOCTL_SET_PLL_FRAC_DATA,
 	IOCTL_GET_PLL_FRAC_DATA,
+	IOCTL_WRITE_GGS,
+	IOCTL_READ_GGS,
+	IOCTL_WRITE_PGGS,
+	IOCTL_READ_PGGS,
 };
 
 enum pm_query_id {
@@ -319,6 +327,8 @@ struct zynqmp_eemi_ops {
 int zynqmp_pm_invoke_fn(u32 pm_api_id, u32 arg0, u32 arg1,
 			u32 arg2, u32 arg3, u32 *ret_payload);
 
+int zynqmp_pm_ggs_init(struct kobject *parent_kobj);
+
 #if IS_REACHABLE(CONFIG_ARCH_ZYNQMP)
 const struct zynqmp_eemi_ops *zynqmp_pm_get_eemi_ops(void);
 #else
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
