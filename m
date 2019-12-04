Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B530113834
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 00:29:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=38GxF0jzyj1ZNuCe95hTSPrRgqkNWGV5W9Jy7Taq8LU=; b=bF7tTygWMEsX2k
	9HfOXiHLs2kR5b0jUX8QqpSpVllShusaSVLQo8fEDYx49M/DCo1fwi456ikPH5yk/OBSfKalck9P3
	cnuxYJnDC7cujtBd552jA2zIgN1iSCtGmjv/6jKnWiXf2ykYXUo67NYvOSP5nDD3P+BdMp4R1qVFs
	ZSSp8Bdgd1mbCHv7n4T/64ZM+yGbZ3WdmYV0Y0Yraj3kF8B8k6qcSi4G1dQgJbuG0T2YAMahXgbA/
	vgQal6DanxF2PmhIULnm02sYd0wu3/AiC/LfVfAHoHz5pab87O1E0zdcZKIdhlPXljYDIgRftz7ZH
	XxOe7Dz9PqmJo6f8MNIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ice5g-0000FZ-AF; Wed, 04 Dec 2019 23:29:52 +0000
Received: from mail-bn8nam12on20613.outbound.protection.outlook.com
 ([2a01:111:f400:fe5b::613]
 helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ice5V-0000DV-Ev
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 23:29:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XBOnBB0q7EmCLcmU1sbItKipSwNvkClifzM277hqQPJe5KRD8t2q0zOu66Bmxb1Uj+psHvcVW/k215+VAEkKCFQla3JUGxaLKYFJnmSyHUabsQ5k9H/jucThxbpqQgN0wUJuoUwCsYo8G3Ukl6wepPKqjw6cHyxQOVXo5jPUIaTtvaP4xGSSI6FHCgIV7lfk6JhN2q94r/n45S4x480THOO8m1WHfVpVHR6SHhajB3FDEeroKeuJHkx5sKCUUm8bQ76N6MXpLiVJiNqv+vv0x7OLlbO1IIdZU+KNmJdivIpelof4RFLLqPm6JZQIWduO63ne3Tosscqd9HY9kNeNBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xnn5m9BIVahwpHM5ev2ifCNMt2qkTs7Gds0xdWYYI8w=;
 b=Z2PenWzUciiMUaxLuOoqh/IVhwMq8kOL9s2s4hScTWz6hSvF2WDzYzM5H4iX/ESYDrvvBmw5EXfe+bmVjXMK8UcT9AuRHPOu2BXQ0R3HW3kZxZfobJ6wU3kkHA3HF3hMQpe2GmYQ/03ed/BpN3PML2btmTgnnq4N+jP71IIMOmrF32PznNb40FLwLEuXZ3m4V2vfkBfghpmTDqdg8tiyfaoe3f+poNSwXKTlsVOQjBMzfrM3C2ReAJ/fAJiB5wYT8nidNSBMy6hJ9sbwLqIao/KfS8Pxc5Co1SIYl7PmelcjkKfj/bGR4veshSApQ05q3Oqkhoi1tg1ERfqMX7XETw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xnn5m9BIVahwpHM5ev2ifCNMt2qkTs7Gds0xdWYYI8w=;
 b=TC9oKOxfvb9EhzO1diQj830Uls8NNpyJeG4KrpgBa5/N90G3Bsgz2i37FCOjTDXHWJsJ1p39mV4tYkRPkx/grBYmCyggFWouSC6DVvQUoUs7gEg4WC1MkDC+6bddSkH1i4syi6aR0aKd7Ey3fBP0spHe6AehHI6QkDkgHSJ/4VA=
Received: from CH2PR02CA0019.namprd02.prod.outlook.com (2603:10b6:610:4e::29)
 by MWHPR02MB2829.namprd02.prod.outlook.com (2603:10b6:300:109::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2495.17; Wed, 4 Dec
 2019 23:29:35 +0000
Received: from SN1NAM02FT018.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::208) by CH2PR02CA0019.outlook.office365.com
 (2603:10b6:610:4e::29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2495.20 via Frontend
 Transport; Wed, 4 Dec 2019 23:29:35 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT018.mail.protection.outlook.com (10.152.72.122) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2474.17
 via Frontend Transport; Wed, 4 Dec 2019 23:29:35 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1ice5O-0005aD-S1; Wed, 04 Dec 2019 15:29:34 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1ice5J-00080R-Ox; Wed, 04 Dec 2019 15:29:29 -0800
Received: from xsj-pvapsmtp01 (mailhub.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xB4NTR0E024865; 
 Wed, 4 Dec 2019 15:29:27 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1ice5H-000802-FS; Wed, 04 Dec 2019 15:29:27 -0800
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH 1/5] firmware: xilinx: Adds new eemi call for reg access
Date: Wed,  4 Dec 2019 15:29:15 -0800
Message-Id: <1575502159-11327-2-git-send-email-jolly.shah@xilinx.com>
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
 SFS:(10009020)(4636009)(396003)(136003)(376002)(346002)(39860400002)(189003)(199004)(7696005)(2906002)(2616005)(76176011)(107886003)(50466002)(50226002)(36386004)(336012)(7416002)(16586007)(26005)(5660300002)(186003)(426003)(14444005)(51416003)(36756003)(48376002)(54906003)(305945005)(316002)(81156014)(8676002)(70206006)(81166006)(4326008)(356004)(8936002)(9786002)(6666004)(11346002)(44832011)(70586007)(478600001)(6636002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR02MB2829; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9f3d2813-194b-4610-5ccb-08d77911d2d4
X-MS-TrafficTypeDiagnostic: MWHPR02MB2829:
X-Microsoft-Antispam-PRVS: <MWHPR02MB28297CA02E424906BB395ABEB85D0@MWHPR02MB2829.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:639;
X-Forefront-PRVS: 0241D5F98C
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ANDJU3SiTmReaeCz0b3PkicK9ij/R1lMNEXUaxt7oW4H7CS5PybQtV04YbSFjHhthwKpGIprq7uO4y/XNF1M/zVTdYZEXM61cNq2vcyp58I1rLMJ0bzZOhuvpxGliD0rKplr5FWDLoJS2C0U8vwcXHYAYGolslIEmk/R6VCEtlcsc6bS765gjudRmcRO3Jl0AkJCSJnW/KHTQObfkSmbdW8TjVtGEul5Bf47ncQ92GE+M7Q4rYWXVzO7/qG16Ns5RPj0Mp9+vV/kzyxyNUI/hrsN4acteorZfMNrUixkBWMeh5tfogMOOkVU44cTGYQSEUcy1iCFtHVYEebl7UOmkJrcva27cIjptU62/JQUGWIexh3VG19TH9vfbQ+u6ROCDsytu45aJCVz9rxtjHJNWwh7bi4HsQWJNbCIE5k9H/BNjyWucVhAsv8SGDMOtAgk
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Dec 2019 23:29:35.2910 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f3d2813-194b-4610-5ccb-08d77911d2d4
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR02MB2829
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_152941_503510_227C984D 
X-CRM114-Status: GOOD (  17.49  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

This patch adds new EEMI call which is used for CSU/PMU register
access from linux.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
---
 drivers/firmware/xilinx/zynqmp.c     | 183 +++++++++++++++++++++++++++++++++++
 include/linux/firmware/xlnx-zynqmp.h |   9 ++
 2 files changed, 192 insertions(+)

diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index fd3d837..56431ad 100644
--- a/drivers/firmware/xilinx/zynqmp.c
+++ b/drivers/firmware/xilinx/zynqmp.c
@@ -24,6 +24,8 @@
 #include <linux/firmware/xlnx-zynqmp.h>
 #include "zynqmp-debug.h"
 
+static unsigned long register_address;
+
 static const struct zynqmp_eemi_ops *eemi_ops_tbl;
 
 static const struct mfd_cell firmware_devs[] = {
@@ -664,6 +666,26 @@ static int zynqmp_pm_set_requirement(const u32 node, const u32 capabilities,
 				   qos, ack, NULL);
 }
 
+/**
+ * zynqmp_pm_config_reg_access - PM Config API for Config register access
+ * @register_access_id:	ID of the requested REGISTER_ACCESS
+ * @address:		Address of the register to be accessed
+ * @mask:		Mask to be written to the register
+ * @value:		Value to be written to the register
+ * @out:		Returned output value
+ *
+ * This function calls REGISTER_ACCESS to configure CSU/PMU registers.
+ *
+ * Return:	Returns status, either success or error+reason
+ */
+
+static int zynqmp_pm_config_reg_access(u32 register_access_id, u32 address,
+				       u32 mask, u32 value, u32 *out)
+{
+	return zynqmp_pm_invoke_fn(PM_REGISTER_ACCESS, register_access_id,
+				   address, mask, value, out);
+}
+
 static const struct zynqmp_eemi_ops eemi_ops = {
 	.get_api_version = zynqmp_pm_get_api_version,
 	.get_chipid = zynqmp_pm_get_chipid,
@@ -687,6 +709,7 @@ static const struct zynqmp_eemi_ops eemi_ops = {
 	.set_requirement = zynqmp_pm_set_requirement,
 	.fpga_load = zynqmp_pm_fpga_load,
 	.fpga_get_status = zynqmp_pm_fpga_get_status,
+	.register_access = zynqmp_pm_config_reg_access,
 };
 
 /**
@@ -704,6 +727,160 @@ const struct zynqmp_eemi_ops *zynqmp_pm_get_eemi_ops(void)
 }
 EXPORT_SYMBOL_GPL(zynqmp_pm_get_eemi_ops);
 
+/**
+ * config_reg_store - Write config_reg sysfs attribute
+ * @kobj:	Kobject structure
+ * @attr:	Kobject attribute structure
+ * @buf:	User entered health_status attribute string
+ * @count:	Buffer size
+ *
+ * User-space interface for setting the config register.
+ *
+ * To write any CSU/PMU register
+ * echo <address> <mask> <values> > /sys/firmware/zynqmp/config_reg
+ * Usage:
+ * echo 0x345AB234 0xFFFFFFFF 0x1234ABCD > /sys/firmware/zynqmp/config_reg
+ *
+ * To Read any CSU/PMU register, write address to the variable like below
+ * echo <address> > /sys/firmware/zynqmp/config_reg
+ *
+ * Return:	count argument if request succeeds, the corresponding error
+ *		code otherwise
+ */
+static ssize_t config_reg_store(struct kobject *kobj,
+				struct kobj_attribute *attr,
+				const char *buf, size_t count)
+{
+	char *kern_buff, *inbuf, *tok;
+	unsigned long address, value, mask;
+	int ret;
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
+	/* Read the addess */
+	tok = strsep(&inbuf, " ");
+	if (!tok) {
+		ret = -EFAULT;
+		goto err;
+	}
+	ret = kstrtol(tok, 16, &address);
+	if (ret) {
+		ret = -EFAULT;
+		goto err;
+	}
+	/* Read the write value */
+	tok = strsep(&inbuf, " ");
+	/*
+	 * If parameter provided is only address, then its a read operation.
+	 * Store the address in a global variable and retrieve whenever
+	 * required.
+	 */
+	if (!tok) {
+		register_address = address;
+		goto err;
+	}
+	register_address = address;
+
+	ret = kstrtol(tok, 16, &mask);
+	if (ret) {
+		ret = -EFAULT;
+		goto err;
+	}
+	tok = strsep(&inbuf, " ");
+	if (!tok) {
+		ret = -EFAULT;
+		goto err;
+	}
+	ret = kstrtol(tok, 16, &value);
+	if (!tok) {
+		ret = -EFAULT;
+		goto err;
+	}
+	ret = zynqmp_pm_config_reg_access(CONFIG_REG_WRITE, address,
+					  mask, value, NULL);
+	if (ret)
+		pr_err("unable to write value to %lx\n", value);
+err:
+	kfree(kern_buff);
+	if (ret)
+		return ret;
+	return count;
+}
+
+/**
+ * config_reg_show - Read config_reg sysfs attribute
+ * @kobj:	Kobject structure
+ * @attr:	Kobject attribute structure
+ * @buf:	User entered health_status attribute string
+ *
+ * User-space interface for getting the config register.
+ *
+ * To Read any CSU/PMU register, write address to the variable like below
+ * echo <address> > /sys/firmware/zynqmp/config_reg
+ *
+ * Then Read the address using below command
+ * cat /sys/firmware/zynqmp/config_reg
+ *
+ * Return: number of chars written to buf.
+ */
+static ssize_t config_reg_show(struct kobject *kobj,
+			       struct kobj_attribute *attr,
+			       char *buf)
+{
+	int ret;
+	u32 ret_payload[PAYLOAD_ARG_CNT];
+
+	ret = zynqmp_pm_config_reg_access(CONFIG_REG_READ, register_address,
+					  0, 0, ret_payload);
+	if (ret)
+		return ret;
+
+	return sprintf(buf, "0x%x\n", ret_payload[1]);
+}
+
+static struct kobj_attribute zynqmp_attr_config_reg =
+					__ATTR_RW(config_reg);
+
+static struct attribute *attrs[] = {
+	&zynqmp_attr_config_reg.attr,
+	NULL,
+};
+
+static const struct attribute_group attr_group = {
+	.attrs = attrs,
+	NULL,
+};
+
+static int zynqmp_pm_sysfs_init(void)
+{
+	struct kobject *zynqmp_kobj;
+	int ret;
+
+	zynqmp_kobj = kobject_create_and_add("zynqmp", firmware_kobj);
+	if (!zynqmp_kobj) {
+		pr_err("zynqmp: Firmware kobj add failed.\n");
+		return -ENOMEM;
+	}
+
+	ret = sysfs_create_group(zynqmp_kobj, &attr_group);
+	if (ret) {
+		pr_err("%s() sysfs creation fail with error %d\n",
+		       __func__, ret);
+	}
+
+	return ret;
+}
+
 static int zynqmp_firmware_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -748,6 +925,12 @@ static int zynqmp_firmware_probe(struct platform_device *pdev)
 	/* Assign eemi_ops_table */
 	eemi_ops_tbl = &eemi_ops;
 
+	ret = zynqmp_pm_sysfs_init();
+	if (ret) {
+		pr_err("%s() sysfs init fail with error %d\n", __func__, ret);
+		return ret;
+	}
+
 	zynqmp_pm_api_debugfs_init();
 
 	ret = mfd_add_devices(&pdev->dev, PLATFORM_DEVID_NONE, firmware_devs,
diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index df366f1..55561d0 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -77,6 +77,8 @@ enum pm_api_id {
 	PM_CLOCK_GETRATE,
 	PM_CLOCK_SETPARENT,
 	PM_CLOCK_GETPARENT,
+	/* PM_REGISTER_ACCESS API */
+	PM_REGISTER_ACCESS = 52,
 };
 
 /* PMU-FW return status codes */
@@ -261,6 +263,11 @@ enum tap_delay_type {
 	PM_TAPDELAY_OUTPUT,
 };
 
+enum pm_register_access_id {
+	CONFIG_REG_WRITE,
+	CONFIG_REG_READ,
+};
+
 /**
  * struct zynqmp_pm_query_data - PM query data
  * @qid:	query ID
@@ -305,6 +312,8 @@ struct zynqmp_eemi_ops {
 			       const u32 capabilities,
 			       const u32 qos,
 			       const enum zynqmp_pm_request_ack ack);
+	int (*register_access)(u32 register_access_id, u32 address,
+			       u32 mask, u32 value, u32 *out);
 };
 
 int zynqmp_pm_invoke_fn(u32 pm_api_id, u32 arg0, u32 arg1,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
