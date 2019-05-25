Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 139732A40B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 13:38:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xEuvXz1fF3A5gdsR3sDbfFTDdq84mtWBkpzpM/mm15c=; b=sQi/1+zEO9fA9j
	aUv/LlHIhjKIUySxqnJ8a/RnYEQ990OD4VieX8tGCbVkAlfBO1+O2QJjExMeXpZF6clBkpEVPXyrK
	Jwrnn5tvKFANSFXtsMfegwVx/hx1V6MvNKiL2prI64mk3lqWtCrMIBNi0ntN2I4Sg42mRF3+2vXrw
	D5tLCNfHwIemiiyJ1aeHUVciLOl87JdaYgwIGlrLbxCwZ1bhuoQdGArBRaItMYuad7JFhudcZhAeZ
	swZ2famqxT2XWGf8fswiClp//1jj04uVNbDLI71FEe/idzJ7Vi11WbIMjQeiyVa2N59B1ziDKHOh1
	pxGGTlYNMx6kFLuVD0Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUV0M-00028S-KQ; Sat, 25 May 2019 11:38:26 +0000
Received: from mail-eopbgr700060.outbound.protection.outlook.com
 ([40.107.70.60] helo=NAM04-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUUzf-0001SS-4J
 for linux-arm-kernel@lists.infradead.org; Sat, 25 May 2019 11:37:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WFebdtfLxpI9b1nqk8vel2MmCKCDr1+/0L54u6Py11g=;
 b=xHXON6W+YlQRyor9hdYt3Fq6ycSepcdn2hFwk+wuCs9VWtlHgBdZHTmnqeVjCt//8KA4kUkYetMHqR3aYExePPpSdXVha7YRQh1L+o0QDQf3y0n/LR/yp+Oo1XPs2FAPeTr75HAHzrZWc4x/8zm+fLLF9Or/cmNq1iOETuBCFxo=
Received: from BL0PR02CA0046.namprd02.prod.outlook.com (2603:10b6:207:3d::23)
 by DM6PR02MB4938.namprd02.prod.outlook.com (2603:10b6:5:11::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1922.22; Sat, 25 May
 2019 11:37:40 +0000
Received: from SN1NAM02FT064.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::207) by BL0PR02CA0046.outlook.office365.com
 (2603:10b6:207:3d::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1922.15 via Frontend
 Transport; Sat, 25 May 2019 11:37:39 +0000
Authentication-Results: spf=pass (sender IP is 149.199.80.198)
 smtp.mailfrom=xilinx.com; arndb.de; dkim=none (message not signed)
 header.d=none;arndb.de; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.80.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.80.198; helo=xir-pvapexch02.xlnx.xilinx.com;
Received: from xir-pvapexch02.xlnx.xilinx.com (149.199.80.198) by
 SN1NAM02FT064.mail.protection.outlook.com (10.152.72.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.1922.16 via Frontend Transport; Sat, 25 May 2019 11:37:39 +0000
Received: from xir-pvapexch01.xlnx.xilinx.com (172.21.17.15) by
 xir-pvapexch02.xlnx.xilinx.com (172.21.17.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1531.3; Sat, 25 May 2019 12:37:34 +0100
Received: from smtp.xilinx.com (172.21.105.198) by
 xir-pvapexch01.xlnx.xilinx.com (172.21.17.15) with Microsoft SMTP Server id
 15.1.1531.3 via Frontend Transport; Sat, 25 May 2019 12:37:34 +0100
Received: from [149.199.110.15] (port=57194 helo=xirdraganc40.xilinx.com)
 by smtp.xilinx.com with esmtp (Exim 4.90)
 (envelope-from <dragan.cvetic@xilinx.com>)
 id 1hUUzW-00058U-JY; Sat, 25 May 2019 12:37:34 +0100
From: Dragan Cvetic <dragan.cvetic@xilinx.com>
To: <arnd@arndb.de>, <gregkh@linuxfoundation.org>, <michal.simek@xilinx.com>, 
 <linux-arm-kernel@lists.infradead.org>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <devicetree@vger.kernel.org>
Subject: [PATCH V4 02/12] misc: xilinx-sdfec: add core driver
Date: Sat, 25 May 2019 12:37:15 +0100
Message-ID: <1558784245-108751-3-git-send-email-dragan.cvetic@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1558784245-108751-1-git-send-email-dragan.cvetic@xilinx.com>
References: <1558784245-108751-1-git-send-email-dragan.cvetic@xilinx.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.80.198; IPV:CAL; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(376002)(136003)(396003)(346002)(39860400002)(2980300002)(199004)(189003)(4326008)(7636002)(186003)(60926002)(47776003)(36756003)(26005)(126002)(11346002)(446003)(14444005)(426003)(28376004)(486006)(476003)(956004)(44832011)(2616005)(9786002)(7696005)(16586007)(76176011)(246002)(51416003)(107886003)(336012)(36906005)(356004)(70206006)(8936002)(6666004)(76130400001)(8676002)(48376002)(50226002)(71366001)(110136005)(70586007)(106002)(316002)(26826003)(478600001)(54906003)(5660300002)(2201001)(2906002)(50466002)(305945005)(102446001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR02MB4938; H:xir-pvapexch02.xlnx.xilinx.com;
 FPR:; SPF:Pass; LANG:en; PTR:unknown-80-198.xilinx.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 98836080-dac2-4271-c02b-08d6e105646a
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709054)(1401327)(2017052603328);
 SRVR:DM6PR02MB4938; 
X-MS-TrafficTypeDiagnostic: DM6PR02MB4938:
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-Microsoft-Antispam-PRVS: <DM6PR02MB4938D0BFE01593B38ACF2FEACB030@DM6PR02MB4938.namprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4502;
X-Forefront-PRVS: 0048BCF4DA
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: echL2QnqTnfrYe6nlhwAP7dBCRmC5HMbbw7IxhSkF05csFcSr46a9lriTQz9G5NGanjgJnGZ10BtDc5+iC2XHPoy14Ukyqf9DZld5syTWbKS688389uKDl8wMEASIqFIHnaAi/xa6lCWA5fR262rwbeC+rupXCQfmpGBoYDuxBWWkub0BXA5jKF2txD7koYdFuMyJVMKn7VROtxl7wA1fjWnFNSheqQdJCdWqLFL92+b8lyEtgS1qZJA3HdhELhOdLu3mf0PTW8gI0M50Quu3bHxjW+wag5BcfxpfbMHYdFXNPDI3WeLH3rq0wd0GJ/xD0pMayn7O/isV5xk/QnoHCBaqyzd/Gtv3ekU0dQb8+eyOtgt4FM+Hc98PEkUMX5kxErnb2wPakh4tJJXQ8w48fUrDIhbzZOAUo8GVcsGZyk=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 May 2019 11:37:39.1554 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 98836080-dac2-4271-c02b-08d6e105646a
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.80.198];
 Helo=[xir-pvapexch02.xlnx.xilinx.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB4938
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_043743_186518_3EE9E178 
X-CRM114-Status: GOOD (  18.59  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.70.60 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Dragan Cvetic <dragan.cvetic@xilinx.com>,
 Derek Kiernan <derek.kiernan@xilinx.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Implements an platform driver that matches with xlnx,
sd-fec-1.1 device tree node and registers as a character
device, including:
- SD-FEC driver binds to sdfec DT node.
- creates and initialise an initial driver dev structure.
- add the driver in Linux build and Kconfig.

Tested-by: Dragan Cvetic <dragan.cvetic@xilinx.com>
Signed-off-by: Derek Kiernan <derek.kiernan@xilinx.com>
Signed-off-by: Dragan Cvetic <dragan.cvetic@xilinx.com>
---
 drivers/misc/Kconfig             |  12 ++++
 drivers/misc/Makefile            |   1 +
 drivers/misc/xilinx_sdfec.c      | 136 +++++++++++++++++++++++++++++++++++++++
 include/uapi/misc/xilinx_sdfec.h |  44 +++++++++++++
 4 files changed, 193 insertions(+)
 create mode 100644 drivers/misc/xilinx_sdfec.c
 create mode 100644 include/uapi/misc/xilinx_sdfec.h

diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig
index 6a0365b..15d93a7 100644
--- a/drivers/misc/Kconfig
+++ b/drivers/misc/Kconfig
@@ -480,6 +480,18 @@ config PCI_ENDPOINT_TEST
            Enable this configuration option to enable the host side test driver
            for PCI Endpoint.
 
+config XILINX_SDFEC
+	tristate "Xilinx SDFEC 16"
+	help
+	  This option enables support for the Xilinx SDFEC (Soft Decision
+	  Forward Error Correction) driver. This enables a char driver
+	  for the SDFEC.
+
+	  You may select this driver if your design instantiates the
+	  SDFEC(16nm) hardened block. To compile this as a module choose M.
+
+	  If unsure, say N.
+
 config MISC_RTSX
 	tristate
 	default MISC_RTSX_PCI || MISC_RTSX_USB
diff --git a/drivers/misc/Makefile b/drivers/misc/Makefile
index b9affcd..29fd1d7 100644
--- a/drivers/misc/Makefile
+++ b/drivers/misc/Makefile
@@ -49,6 +49,7 @@ obj-$(CONFIG_VMWARE_VMCI)	+= vmw_vmci/
 obj-$(CONFIG_LATTICE_ECP3_CONFIG)	+= lattice-ecp3-config.o
 obj-$(CONFIG_SRAM)		+= sram.o
 obj-$(CONFIG_SRAM_EXEC)		+= sram-exec.o
+obj-$(CONFIG_XILINX_SDFEC)	+= xilinx_sdfec.o
 obj-y				+= mic/
 obj-$(CONFIG_GENWQE)		+= genwqe/
 obj-$(CONFIG_ECHO)		+= echo/
diff --git a/drivers/misc/xilinx_sdfec.c b/drivers/misc/xilinx_sdfec.c
new file mode 100644
index 0000000..c437f78
--- /dev/null
+++ b/drivers/misc/xilinx_sdfec.c
@@ -0,0 +1,136 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Xilinx SDFEC
+ *
+ * Copyright (C) 2019 Xilinx, Inc.
+ *
+ * Description:
+ * This driver is developed for SDFEC16 (Soft Decision FEC 16nm)
+ * IP. It exposes a char device interface in sysfs and supports file
+ * operations like  open(), close() and ioctl().
+ */
+
+#include <linux/miscdevice.h>
+#include <linux/io.h>
+#include <linux/interrupt.h>
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/of_platform.h>
+#include <linux/poll.h>
+#include <linux/slab.h>
+#include <linux/clk.h>
+
+#include <uapi/misc/xilinx_sdfec.h>
+
+static atomic_t xsdfec_ndevs = ATOMIC_INIT(0);
+
+/**
+ * struct xsdfec_dev - Driver data for SDFEC
+ * @regs: device physical base address
+ * @dev: pointer to device struct
+ * @config: Configuration of the SDFEC device
+ * @open_count: Count of char device being opened
+ * @miscdev: Misc device handle
+ * @irq_lock: Driver spinlock
+ *
+ * This structure contains necessary state for SDFEC driver to operate
+ */
+struct xsdfec_dev {
+	void __iomem *regs;
+	struct device *dev;
+	struct xsdfec_config config;
+	atomic_t open_count;
+	struct miscdevice miscdev;
+	/* Spinlock to protect state_updated and stats_updated */
+	spinlock_t irq_lock;
+};
+
+static const struct file_operations xsdfec_fops = {
+	.owner = THIS_MODULE,
+};
+
+#define NAMEBUF_SIZE ((size_t)32)
+static int xsdfec_probe(struct platform_device *pdev)
+{
+	struct xsdfec_dev *xsdfec;
+	struct device *dev;
+	struct resource *res;
+	int err;
+	char buf[NAMEBUF_SIZE];
+
+	xsdfec = devm_kzalloc(&pdev->dev, sizeof(*xsdfec), GFP_KERNEL);
+	if (!xsdfec)
+		return -ENOMEM;
+
+	xsdfec->dev = &pdev->dev;
+	xsdfec->config.fec_id = atomic_read(&xsdfec_ndevs);
+	spin_lock_init(&xsdfec->irq_lock);
+
+	dev = xsdfec->dev;
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	xsdfec->regs = devm_ioremap_resource(dev, res);
+	if (IS_ERR(xsdfec->regs)) {
+		dev_err(dev, "Unable to map resource");
+		err = PTR_ERR(xsdfec->regs);
+		goto err_xsdfec_dev;
+	}
+
+	/* Save driver private data */
+	platform_set_drvdata(pdev, xsdfec);
+
+	snprintf(buf, NAMEBUF_SIZE, "xsdfec%d", xsdfec->config.fec_id);
+	xsdfec->miscdev.minor = MISC_DYNAMIC_MINOR;
+	xsdfec->miscdev.name = buf;
+	xsdfec->miscdev.fops = &xsdfec_fops;
+	xsdfec->miscdev.parent = dev;
+	err = misc_register(&xsdfec->miscdev);
+	if (err) {
+		dev_err(dev, "Unable to register device");
+		goto err_xsdfec_dev;
+	}
+
+	atomic_set(&xsdfec->open_count, 1);
+	dev_info(dev, "XSDFEC%d Probe Successful", xsdfec->config.fec_id);
+	atomic_inc(&xsdfec_ndevs);
+	return 0;
+
+	/* Failure cleanup */
+err_xsdfec_dev:
+	return err;
+}
+
+static int xsdfec_remove(struct platform_device *pdev)
+{
+	struct xsdfec_dev *xsdfec;
+
+	xsdfec = platform_get_drvdata(pdev);
+	if (!xsdfec)
+		return -ENODEV;
+
+	misc_deregister(&xsdfec->miscdev);
+	atomic_dec(&xsdfec_ndevs);
+	return 0;
+}
+
+static const struct of_device_id xsdfec_of_match[] = {
+	{
+		.compatible = "xlnx,sd-fec-1.1",
+	},
+	{ /* end of table */ }
+};
+MODULE_DEVICE_TABLE(of, xsdfec_of_match);
+
+static struct platform_driver xsdfec_driver = {
+	.driver = {
+		.name = "xilinx-sdfec",
+		.of_match_table = xsdfec_of_match,
+	},
+	.probe = xsdfec_probe,
+	.remove =  xsdfec_remove,
+};
+
+module_platform_driver(xsdfec_driver);
+
+MODULE_AUTHOR("Xilinx, Inc");
+MODULE_DESCRIPTION("Xilinx SD-FEC16 Driver");
+MODULE_LICENSE("GPL");
diff --git a/include/uapi/misc/xilinx_sdfec.h b/include/uapi/misc/xilinx_sdfec.h
new file mode 100644
index 0000000..1b8a63f
--- /dev/null
+++ b/include/uapi/misc/xilinx_sdfec.h
@@ -0,0 +1,44 @@
+/* SPDX-License-Identifier: GPL-2.0+ WITH Linux-syscall-note */
+/*
+ * Xilinx SD-FEC
+ *
+ * Copyright (C) 2016 - 2017 Xilinx, Inc.
+ *
+ * Description:
+ * This driver is developed for SDFEC16 IP. It provides a char device
+ * in sysfs and supports file operations like open(), close() and ioctl().
+ */
+#ifndef __XILINX_SDFEC_H__
+#define __XILINX_SDFEC_H__
+
+#include <linux/types.h>
+
+/**
+ * enum xsdfec_state - State.
+ * @XSDFEC_INIT: Driver is initialized.
+ * @XSDFEC_STARTED: Driver is started.
+ * @XSDFEC_STOPPED: Driver is stopped.
+ * @XSDFEC_NEEDS_RESET: Driver needs to be reset.
+ * @XSDFEC_PL_RECONFIGURE: Programmable Logic needs to be recofigured.
+ *
+ * This enum is used to indicate the state of the driver.
+ */
+enum xsdfec_state {
+	XSDFEC_INIT = 0,
+	XSDFEC_STARTED,
+	XSDFEC_STOPPED,
+	XSDFEC_NEEDS_RESET,
+	XSDFEC_PL_RECONFIGURE,
+};
+
+/**
+ * struct xsdfec_config - Configuration of SD-FEC core.
+ * @fec_id: ID of SD-FEC instance. ID is limited to the number of active
+ *          SD-FEC's in the FPGA and is related to the driver instance
+ *          Minor number.
+ */
+struct xsdfec_config {
+	__s32 fec_id;
+};
+
+#endif /* __XILINX_SDFEC_H__ */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
