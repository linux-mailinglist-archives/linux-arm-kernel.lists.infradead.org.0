Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05C8CB49C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 00:07:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BPbqVjxoSsPM5EtwdFe5MFRNZdYBmdMlL2E/7bQn6Tk=; b=Wn0tO57dTQPZOB
	6KTHHix/hNy2YR2DEf9XyKdSYUSWS4r0IDUfF2c92gvq2LG9dOL74IRpCEtNnIWk0SQfMf73gwDTh
	6i5CVr2DDapmbJbUcXU2CIU3gurqmykMdfKfv4QkMN4ttxS/Lb4kJZ39iTzDt44xoVr3Ktc2gSa02
	Z3tHyddXRvZsUnFNVhQO2ruidRBmXxG1tIfJdzOpz+BNIXlsNaC6R1lGzwnWWLFGwcR9Uvr2RKETa
	Iw2W/IyH8kEU5DUc2/iv5v/I4arbCSRqgJUBO35i97V+Y8BT8csoJQopwAkKlRXGW4FVoq43aJUro
	VvEobeKXiss/1mig4sJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKVTS-0002ad-IR; Sat, 27 Apr 2019 22:07:10 +0000
Received: from mail-eopbgr690089.outbound.protection.outlook.com
 ([40.107.69.89] helo=NAM04-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKVRm-0000YN-Nn
 for linux-arm-kernel@lists.infradead.org; Sat, 27 Apr 2019 22:05:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D21CTiPMNuYGPnkNNNjJLPL17nFw66ejGxSdRskCk90=;
 b=GdjWM300VbaesaInBTQqZ8dxQutEz8CE32bsA4XzAAnngk5HlIyQmid00r8EQ6bxApDWmQ4v3ENVG6RpytLUdWsjuPUKqmtIIAJGOAMaGg67UPMJH16ShsdD7tZJKskjvpN+CY//om0G+oTplGuwb3IzcWl6M1ds3QyE//ox+SY=
Received: from SN4PR0201CA0031.namprd02.prod.outlook.com
 (2603:10b6:803:2e::17) by BN1PR02MB152.namprd02.prod.outlook.com
 (2a01:111:e400:20::28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.1835.14; Sat, 27
 Apr 2019 22:05:22 +0000
Received: from CY1NAM02FT061.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::200) by SN4PR0201CA0031.outlook.office365.com
 (2603:10b6:803:2e::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1835.12 via Frontend
 Transport; Sat, 27 Apr 2019 22:05:22 +0000
Authentication-Results: spf=pass (sender IP is 149.199.80.198)
 smtp.mailfrom=xilinx.com; arndb.de; dkim=none (message not signed)
 header.d=none;arndb.de; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.80.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.80.198; helo=xir-pvapexch02.xlnx.xilinx.com;
Received: from xir-pvapexch02.xlnx.xilinx.com (149.199.80.198) by
 CY1NAM02FT061.mail.protection.outlook.com (10.152.75.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.1835.13 via Frontend Transport; Sat, 27 Apr 2019 22:05:21 +0000
Received: from xir-pvapexch01.xlnx.xilinx.com (172.21.17.15) by
 xir-pvapexch02.xlnx.xilinx.com (172.21.17.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1531.3; Sat, 27 Apr 2019 23:05:12 +0100
Received: from smtp.xilinx.com (172.21.105.197) by
 xir-pvapexch01.xlnx.xilinx.com (172.21.17.15) with Microsoft SMTP Server id
 15.1.1531.3 via Frontend Transport; Sat, 27 Apr 2019 23:05:12 +0100
Received: from [149.199.110.15] (port=52636 helo=xirdraganc40.xilinx.com)
 by smtp.xilinx.com with esmtp (Exim 4.90)
 (envelope-from <dragan.cvetic@xilinx.com>)
 id 1hKVRY-0002Gu-1W; Sat, 27 Apr 2019 23:05:12 +0100
From: Dragan Cvetic <dragan.cvetic@xilinx.com>
To: <arnd@arndb.de>, <gregkh@linuxfoundation.org>, <michal.simek@xilinx.com>, 
 <linux-arm-kernel@lists.infradead.org>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <devicetree@vger.kernel.org>
Subject: [PATCH V3 02/12] misc: xilinx-sdfec: add core driver
Date: Sat, 27 Apr 2019 23:04:56 +0100
Message-ID: <1556402706-176271-3-git-send-email-dragan.cvetic@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1556402706-176271-1-git-send-email-dragan.cvetic@xilinx.com>
References: <1556402706-176271-1-git-send-email-dragan.cvetic@xilinx.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.80.198; IPV:CAL; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(396003)(346002)(376002)(136003)(39860400002)(2980300002)(199004)(189003)(60926002)(2201001)(36906005)(106002)(316002)(356004)(6666004)(36756003)(7696005)(54906003)(110136005)(50466002)(48376002)(71366001)(93146003)(47776003)(5660300002)(11346002)(446003)(2616005)(186003)(476003)(426003)(26005)(246002)(26826003)(8936002)(107886003)(478600001)(8676002)(16586007)(2906002)(44832011)(305945005)(7636002)(28376004)(486006)(51416003)(76176011)(14444005)(50226002)(76130400001)(70206006)(70586007)(126002)(4326008)(9786002)(956004)(336012)(102446001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN1PR02MB152; H:xir-pvapexch02.xlnx.xilinx.com;
 FPR:; SPF:Pass; LANG:en; PTR:unknown-80-198.xilinx.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4dd7883b-7063-4508-71d4-08d6cb5c7197
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4709054)(2017052603328);
 SRVR:BN1PR02MB152; 
X-MS-TrafficTypeDiagnostic: BN1PR02MB152:
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-Microsoft-Antispam-PRVS: <BN1PR02MB15254D2F27617DBE44DD5ECCB3F0@BN1PR02MB152.namprd02.prod.outlook.com>
X-Forefront-PRVS: 0020414413
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: yRO39z2EwXbhknpc7KK7b2KplZoP242LjykjeQjaVg/rfNtZEHZ61mNsDa+myv6XPET4KkCDv0oWzfpQ9bmN0SFcWORU2IH/Frda0PlBluUsrO99r5VXehAqj8NRj8lNgyWVueRoIrfuxCzimHuqMCUJEVHwSDpJxH0CeWzrxyzxSE7EoGdHJKOmJO6uVZutz3zdOwHGbjV8O9d5NPtvNliONidP7/jzFDjxn9gmk2I9q2bhk8C0g+UoDjRZ/Ba9qE8cJmXUMgSpmnayZ3R4dQIjVuLs4Ti2iQd9x7aXCEwuQgw1ypXr9ZQulsNpWab7Jmh03HEAmVix+EI5z/LpcF5A65mTXnlFmIehUvQpO6Z7oIvBe6Fa/eCdLi8ZjrKCBCRpkN5z09dDyaEuYcWoUMFK0KUEkqKvIMi87djt4yw=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Apr 2019 22:05:21.6629 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4dd7883b-7063-4508-71d4-08d6cb5c7197
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.80.198];
 Helo=[xir-pvapexch02.xlnx.xilinx.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN1PR02MB152
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_150527_096077_A9B697DE 
X-CRM114-Status: GOOD (  19.19  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.69.89 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 drivers/misc/Kconfig             |  12 +++
 drivers/misc/Makefile            |   1 +
 drivers/misc/xilinx_sdfec.c      | 215 +++++++++++++++++++++++++++++++++++++++
 include/uapi/misc/xilinx_sdfec.h |  42 ++++++++
 4 files changed, 270 insertions(+)
 create mode 100644 drivers/misc/xilinx_sdfec.c
 create mode 100644 include/uapi/misc/xilinx_sdfec.h

diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig
index 3209ee0..1a1fe9c 100644
--- a/drivers/misc/Kconfig
+++ b/drivers/misc/Kconfig
@@ -528,6 +528,18 @@ config PCI_ENDPOINT_TEST
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
index c362395..ee31140c 100644
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
index 0000000..278754b
--- /dev/null
+++ b/drivers/misc/xilinx_sdfec.c
@@ -0,0 +1,215 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Xilinx SDFEC
+ *
+ * Copyright (C) 2016 - 2017 Xilinx, Inc.
+ *
+ * Description:
+ * This driver is developed for SDFEC16 (Soft Decision FEC 16nm)
+ * IP. It exposes a char device interface in sysfs and supports file
+ * operations like  open(), close() and ioctl().
+ */
+
+#include <linux/cdev.h>
+#include <linux/device.h>
+#include <linux/fs.h>
+#include <linux/io.h>
+#include <linux/interrupt.h>
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/of_platform.h>
+#include <linux/platform_device.h>
+#include <linux/poll.h>
+#include <linux/slab.h>
+#include <linux/uaccess.h>
+#include <linux/spinlock.h>
+#include <linux/clk.h>
+
+#include <uapi/misc/xilinx_sdfec.h>
+
+#define DRIVER_NAME "xilinx_sdfec"
+#define DRIVER_VERSION "0.3"
+#define DRIVER_MAX_DEV BIT(MINORBITS)
+
+static struct class *xsdfec_class;
+static atomic_t xsdfec_ndevs = ATOMIC_INIT(0);
+static dev_t xsdfec_devt;
+
+/**
+ * struct xsdfec_dev - Driver data for SDFEC
+ * @regs: device physical base address
+ * @dev: pointer to device struct
+ * @config: Configuration of the SDFEC device
+ * @open_count: Count of char device being opened
+ * @xsdfec_cdev: Character device handle
+ * @irq_lock: Driver spinlock
+ *
+ * This structure contains necessary state for SDFEC driver to operate
+ */
+struct xsdfec_dev {
+	void __iomem *regs;
+	struct device *dev;
+	struct xsdfec_config config;
+	atomic_t open_count;
+	struct cdev xsdfec_cdev;
+	/* Spinlock to protect state_updated and stats_updated */
+	spinlock_t irq_lock;
+};
+
+static const struct file_operations xsdfec_fops = {
+	.owner = THIS_MODULE,
+};
+
+static int xsdfec_probe(struct platform_device *pdev)
+{
+	struct xsdfec_dev *xsdfec;
+	struct device *dev;
+	struct device *dev_create;
+	struct resource *res;
+	int err;
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
+	cdev_init(&xsdfec->xsdfec_cdev, &xsdfec_fops);
+	xsdfec->xsdfec_cdev.owner = THIS_MODULE;
+	err = cdev_add(&xsdfec->xsdfec_cdev,
+		       MKDEV(MAJOR(xsdfec_devt), xsdfec->config.fec_id), 1);
+	if (err < 0) {
+		dev_err(dev, "cdev_add failed");
+		err = -EIO;
+		goto err_xsdfec_dev;
+	}
+
+	if (!xsdfec_class) {
+		err = -EIO;
+		dev_err(dev, "xsdfec class not created correctly");
+		goto err_xsdfec_cdev;
+	}
+
+	dev_create =
+		device_create(xsdfec_class, dev,
+			      MKDEV(MAJOR(xsdfec_devt), xsdfec->config.fec_id),
+			      xsdfec, "xsdfec%d", xsdfec->config.fec_id);
+	if (IS_ERR(dev_create)) {
+		dev_err(dev, "unable to create device");
+		err = PTR_ERR(dev_create);
+		goto err_xsdfec_cdev;
+	}
+
+	atomic_set(&xsdfec->open_count, 1);
+	dev_info(dev, "XSDFEC%d Probe Successful", xsdfec->config.fec_id);
+	atomic_inc(&xsdfec_ndevs);
+	return 0;
+
+	/* Failure cleanup */
+err_xsdfec_cdev:
+	cdev_del(&xsdfec->xsdfec_cdev);
+err_xsdfec_dev:
+	return err;
+}
+
+static int xsdfec_remove(struct platform_device *pdev)
+{
+	struct xsdfec_dev *xsdfec;
+	struct device *dev = &pdev->dev;
+
+	xsdfec = platform_get_drvdata(pdev);
+	if (!xsdfec)
+		return -ENODEV;
+
+	if (!xsdfec_class) {
+		dev_err(dev, "xsdfec_class is NULL");
+		return -EIO;
+	}
+
+	device_destroy(xsdfec_class,
+		       MKDEV(MAJOR(xsdfec_devt), xsdfec->config.fec_id));
+	cdev_del(&xsdfec->xsdfec_cdev);
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
+static int __init xsdfec_init_mod(void)
+{
+	int err;
+
+	xsdfec_class = class_create(THIS_MODULE, DRIVER_NAME);
+	if (IS_ERR(xsdfec_class)) {
+		err = PTR_ERR(xsdfec_class);
+		pr_err("%s : Unable to register xsdfec class", __func__);
+		return err;
+	}
+
+	err = alloc_chrdev_region(&xsdfec_devt, 0, DRIVER_MAX_DEV, DRIVER_NAME);
+	if (err < 0) {
+		pr_err("%s : Unable to get major number", __func__);
+		goto err_xsdfec_class;
+	}
+
+	err = platform_driver_register(&xsdfec_driver);
+	if (err < 0) {
+		pr_err("%s Unabled to register %s driver", __func__,
+		       DRIVER_NAME);
+		goto err_xsdfec_drv;
+	}
+	return 0;
+
+	/* Error Path */
+err_xsdfec_drv:
+	unregister_chrdev_region(xsdfec_devt, DRIVER_MAX_DEV);
+err_xsdfec_class:
+	class_destroy(xsdfec_class);
+	return err;
+}
+
+static void __exit xsdfec_cleanup_mod(void)
+{
+	platform_driver_unregister(&xsdfec_driver);
+	unregister_chrdev_region(xsdfec_devt, DRIVER_MAX_DEV);
+	class_destroy(xsdfec_class);
+	xsdfec_class = NULL;
+}
+
+module_init(xsdfec_init_mod);
+module_exit(xsdfec_cleanup_mod);
+
+MODULE_AUTHOR("Xilinx, Inc");
+MODULE_DESCRIPTION("Xilinx SD-FEC16 Driver");
+MODULE_LICENSE("GPL");
+MODULE_VERSION(DRIVER_VERSION);
diff --git a/include/uapi/misc/xilinx_sdfec.h b/include/uapi/misc/xilinx_sdfec.h
new file mode 100644
index 0000000..ba577fa
--- /dev/null
+++ b/include/uapi/misc/xilinx_sdfec.h
@@ -0,0 +1,42 @@
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
