Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46EE43A280
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  9 Jun 2019 02:05:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ribXKJp1e2IUInUVxKaYWkRxONjgRqpSAzGpVmor0Ks=; b=MUXe2f+zUumtFB
	CDKpPLdDCKa2cfAHI3xDfFJ2neynSSrBWcMt5PhkiyER4/Z8as0hcvF5daoSl5QJmJCw/NYb2VuwG
	GJf+/fSOtLngcbwppGtOZNxTDBfzA/4GepIp810XxLx1fKHE1LrsIAOJ7yZXCBb61rRJAfzjDDt6d
	6l+5ww4HPzLIMCH9KO1Pp2ajbSP/iv7THJoHQkf1VJpJWw0CHabgyZDdv3DHGY14vz+/uaqTqBrGk
	OaHZcPdbH7Y9M1XAFdy0i3wmtq8b8OmmSSyXtQNQL1mKdP6lJ4jzjyfNooyNbpux6lbI6Pe89ADGZ
	ZxnuSoPgVE4cIar2zKog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZlKi-0006hw-0n; Sun, 09 Jun 2019 00:05:12 +0000
Received: from mail-eopbgr810053.outbound.protection.outlook.com
 ([40.107.81.53] helo=NAM01-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZlK1-0006Y4-MN
 for linux-arm-kernel@lists.infradead.org; Sun, 09 Jun 2019 00:04:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NmINdFOJ6kOyOeCp0Xeb59GLlVew6UDBXum3k5gM20Y=;
 b=CjhdglCXim/NBgWqN0qNJSPJsb9pMojArwZcTbhs0NM100wm6MbQjlP6w7cbwgJOAm24IEm11G8cXkIw37kz+M06dvX8XF/SYNshBB54qUGjgkRSPahdKezqFX055uJc3oQoWr0c5RIKz4dBxtFeNy/rR1ZLI9P3Vcb+BHGoq10=
Received: from BL0PR02CA0108.namprd02.prod.outlook.com (2603:10b6:208:51::49)
 by BL0PR02MB4932.namprd02.prod.outlook.com (2603:10b6:208:53::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1965.17; Sun, 9 Jun
 2019 00:04:26 +0000
Received: from BL2NAM02FT056.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::200) by BL0PR02CA0108.outlook.office365.com
 (2603:10b6:208:51::49) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1965.15 via Frontend
 Transport; Sun, 9 Jun 2019 00:04:26 +0000
Authentication-Results: spf=pass (sender IP is 149.199.80.198)
 smtp.mailfrom=xilinx.com; arndb.de; dkim=none (message not signed)
 header.d=none;arndb.de; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.80.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.80.198; helo=xir-pvapexch01.xlnx.xilinx.com;
Received: from xir-pvapexch01.xlnx.xilinx.com (149.199.80.198) by
 BL2NAM02FT056.mail.protection.outlook.com (10.152.77.221) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.1965.12 via Frontend Transport; Sun, 9 Jun 2019 00:04:26 +0000
Received: from xir-pvapexch01.xlnx.xilinx.com (172.21.17.15) by
 xir-pvapexch01.xlnx.xilinx.com (172.21.17.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1531.3; Sun, 9 Jun 2019 01:04:24 +0100
Received: from smtp.xilinx.com (172.21.105.198) by
 xir-pvapexch01.xlnx.xilinx.com (172.21.17.15) with Microsoft SMTP Server id
 15.1.1531.3 via Frontend Transport; Sun, 9 Jun 2019 01:04:24 +0100
Received: from [149.199.110.15] (port=48046 helo=xirdraganc40.xilinx.com)
 by smtp.xilinx.com with esmtp (Exim 4.90)
 (envelope-from <dragan.cvetic@xilinx.com>)
 id 1hZlJw-0001PN-75; Sun, 09 Jun 2019 01:04:24 +0100
From: Dragan Cvetic <dragan.cvetic@xilinx.com>
To: <arnd@arndb.de>, <gregkh@linuxfoundation.org>, <michal.simek@xilinx.com>, 
 <linux-arm-kernel@lists.infradead.org>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <devicetree@vger.kernel.org>
Subject: [PATCH V5 02/11] misc: xilinx-sdfec: add core driver
Date: Sun, 9 Jun 2019 01:04:07 +0100
Message-ID: <1560038656-380620-3-git-send-email-dragan.cvetic@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1560038656-380620-1-git-send-email-dragan.cvetic@xilinx.com>
References: <1560038656-380620-1-git-send-email-dragan.cvetic@xilinx.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.80.198; IPV:CAL; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(396003)(136003)(346002)(376002)(39860400002)(2980300002)(189003)(199004)(26005)(47776003)(186003)(60926002)(71366001)(2906002)(7696005)(51416003)(76176011)(4326008)(76130400001)(26826003)(48376002)(5660300002)(50466002)(478600001)(14444005)(6666004)(356004)(2201001)(246002)(44832011)(8936002)(50226002)(126002)(9786002)(446003)(70206006)(7636002)(956004)(2616005)(305945005)(11346002)(486006)(70586007)(476003)(426003)(107886003)(8676002)(28376004)(316002)(36906005)(16586007)(110136005)(54906003)(36756003)(336012)(106002)(102446001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BL0PR02MB4932; H:xir-pvapexch01.xlnx.xilinx.com;
 FPR:; SPF:Pass; LANG:en; PTR:unknown-80-198.xilinx.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 28c6e619-aa01-4de1-259a-08d6ec6e0937
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328);
 SRVR:BL0PR02MB4932; 
X-MS-TrafficTypeDiagnostic: BL0PR02MB4932:
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-Microsoft-Antispam-PRVS: <BL0PR02MB49320FB5835C8B60A9D61A52CB120@BL0PR02MB4932.namprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3383;
X-Forefront-PRVS: 006339698F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: vc9zcb8bdQ/PkyLq5mQ9zm3yMgo/Y2GYgfbMuqhYEegAntcZAZEoen7y25mMe2Uu5wNqmlz0BdWu0Q49qyiPV40/UraGt+l20jnmBeQutyeAz6XqVApp2UrcJLmnYU6CU0MHmOnc7PzWLz11qI0x4/CKRL0EVOD5VMezMoW67lKDUzVnO1XAF2wgJR9vM3p/cFhnxlP/hniJue0TmrqJX4ZDWtxuZCVVKa8toHRD6ricypZ0a7kqt8WhicFzv4QG0hGsvhE9+I62FIr8D/Ozp2AwtVKWThLzJrQ0mEtuq354oR1nz4TYqTtcpqi5/B4vRpcFsmdRYvAbQXBvpLnu0zfZ2BXvPnQwTgL6bExwpNGAO289mGzzunAiG0oPombHi1O/rXMW6yFxj3vCbXVwsMvpFn4r6mg79i4tVUS8ZQQ=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jun 2019 00:04:26.3059 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 28c6e619-aa01-4de1-259a-08d6ec6e0937
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.80.198];
 Helo=[xir-pvapexch01.xlnx.xilinx.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR02MB4932
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_170429_795259_AD878C48 
X-CRM114-Status: GOOD (  16.66  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.81.53 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Dragan Cvetic <dragan.cvetic@xilinx.com>,
 Derek Kiernan <derek.kiernan@xilinx.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Implement a platform driver that matches with xlnx,
sd-fec-1.1 device tree node and registers as a character
device, including:
- SD-FEC driver binds to sdfec DT node.
- creates and initialise an initial driver dev structure.
- add the driver in Linux build and Kconfig.

Tested-by: Dragan Cvetic <dragan.cvetic@xilinx.com>
Signed-off-by: Derek Kiernan <derek.kiernan@xilinx.com>
Signed-off-by: Dragan Cvetic <dragan.cvetic@xilinx.com>
---
 drivers/misc/Kconfig        |  12 +++++
 drivers/misc/Makefile       |   1 +
 drivers/misc/xilinx_sdfec.c | 118 ++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 131 insertions(+)
 create mode 100644 drivers/misc/xilinx_sdfec.c

diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig
index 6b0417b..319a6bf 100644
--- a/drivers/misc/Kconfig
+++ b/drivers/misc/Kconfig
@@ -471,6 +471,18 @@ config PCI_ENDPOINT_TEST
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
index b9affcd..0cb3546 100644
--- a/drivers/misc/Makefile
+++ b/drivers/misc/Makefile
@@ -59,3 +59,4 @@ obj-$(CONFIG_OCXL)		+= ocxl/
 obj-y				+= cardreader/
 obj-$(CONFIG_PVPANIC)   	+= pvpanic.o
 obj-$(CONFIG_HABANA_AI)		+= habanalabs/
+obj-$(CONFIG_XILINX_SDFEC)	+= xilinx_sdfec.o
diff --git a/drivers/misc/xilinx_sdfec.c b/drivers/misc/xilinx_sdfec.c
new file mode 100644
index 0000000..75cc980
--- /dev/null
+++ b/drivers/misc/xilinx_sdfec.c
@@ -0,0 +1,118 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Xilinx SDFEC
+ *
+ * Copyright (C) 2019 Xilinx, Inc.
+ *
+ * Description:
+ * This driver is developed for SDFEC16 (Soft Decision FEC 16nm)
+ * IP. It exposes a char device which supports file operations
+ * like  open(), close() and ioctl().
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
+static int xsdfec_ndevs;
+
+/**
+ * struct xsdfec_dev - Driver data for SDFEC
+ * @regs: device physical base address
+ * @dev: pointer to device struct
+ * @miscdev: Misc device handle
+ * @error_data_lock: Error counter and states spinlock
+ *
+ * This structure contains necessary state for SDFEC driver to operate
+ */
+struct xsdfec_dev {
+	void __iomem *regs;
+	struct device *dev;
+	struct miscdevice miscdev;
+	/* Spinlock to protect state_updated and stats_updated */
+	spinlock_t error_data_lock;
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
+	struct resource *res;
+	int err;
+	char buf[16];
+
+	xsdfec = devm_kzalloc(&pdev->dev, sizeof(*xsdfec), GFP_KERNEL);
+	if (!xsdfec)
+		return -ENOMEM;
+
+	xsdfec->dev = &pdev->dev;
+	spin_lock_init(&xsdfec->error_data_lock);
+
+	dev = xsdfec->dev;
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	xsdfec->regs = devm_ioremap_resource(dev, res);
+	if (IS_ERR(xsdfec->regs)) {
+		err = PTR_ERR(xsdfec->regs);
+		return err;
+	}
+
+	/* Save driver private data */
+	platform_set_drvdata(pdev, xsdfec);
+
+	snprintf(buf, 16, "xsdfec%d", xsdfec_ndevs);
+	xsdfec->miscdev.minor = MISC_DYNAMIC_MINOR;
+	xsdfec->miscdev.name = buf;
+	xsdfec->miscdev.fops = &xsdfec_fops;
+	xsdfec->miscdev.parent = dev;
+	err = misc_register(&xsdfec->miscdev);
+	if (err) {
+		dev_err(dev, "error:%d. Unable to register device", err);
+		return err;
+	}
+
+	xsdfec_ndevs += 1;
+	return 0;
+}
+
+static int xsdfec_remove(struct platform_device *pdev)
+{
+	struct xsdfec_dev *xsdfec;
+
+	xsdfec = platform_get_drvdata(pdev);
+	misc_deregister(&xsdfec->miscdev);
+	xsdfec_ndevs -= 1;
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
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
