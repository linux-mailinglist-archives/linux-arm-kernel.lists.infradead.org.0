Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC111525C2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 10:00:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F+PJrcVUhXksvnoy6LSt00/N1iWqn/3jKlj0+75uYxE=; b=LQu620mIC/CMyu
	4wNgNNhgCbBSnGps1ohRaAIc8s6vK9ixCk7gay5WIYTO46klhyT5fAQkelegYp63Q6yjSHCgkIxTj
	cnazNsjuTZFTBcohK98TXidooxy4/ATvtv5YllZ5wEwLXFaE0tl1iv/VYfFLECILZaDf04s+6LBwe
	U67XhvuOT3p176YqMAQDybCJQ+1nbjKrxlTU9TNEgp+Wv4aF6wM8FfrDMNN/APtPt1q/65FKV2xMN
	KMXrGvmx7msP7b8wylacF7MKBYje/UKXsJJ3kUxyyj8esrRD/BAuFT8voAS3LaBqiI2wu4bO6QN2B
	ViY28Rn8IraWYfPle9fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfgN3-0004GJ-1A; Tue, 25 Jun 2019 08:00:05 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfgKt-0002lm-WB; Tue, 25 Jun 2019 07:57:54 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5P7vmKo024371;
 Tue, 25 Jun 2019 02:57:48 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1561449468;
 bh=QwDsgdN4hKpSf+rg7r/VR8Poo1xAkALuv+phZtIa9FM=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=vzjAbWilHecyY53nnquwZBVabe//mxxCdLKwNMQQezJT/u1aVQu/euAWxtrQDUOVY
 FcBNkdDxzRAEBZ6gkNO5TfU4QXTA10vWoyAxDTpAaqGQinxXiNQxKk0W9g3OsAGKzt
 7cbN96Ha2LlbTm02Ko6l7wdhuU9eTfv9xvOrgQFI=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5P7vm1i008779
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 25 Jun 2019 02:57:48 -0500
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 25
 Jun 2019 02:57:47 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 25 Jun 2019 02:57:47 -0500
Received: from a0132425.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5P7vWTj105511;
 Tue, 25 Jun 2019 02:57:44 -0500
From: Vignesh Raghavendra <vigneshr@ti.com>
To: Vignesh Raghavendra <vigneshr@ti.com>, Boris Brezillon
 <bbrezillon@kernel.org>, Marek Vasut <marek.vasut@gmail.com>, Richard
 Weinberger <richard@nod.at>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v8 3/5] mtd: Add support for HyperBus memory devices
Date: Tue, 25 Jun 2019 13:27:44 +0530
Message-ID: <20190625075746.10439-4-vigneshr@ti.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190625075746.10439-1-vigneshr@ti.com>
References: <20190625075746.10439-1-vigneshr@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_005752_303908_46688ED6 
X-CRM114-Status: GOOD (  25.55  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org,
 Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>,
 Tokunori Ikegami <ikegami.t@gmail.com>, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Mason Yang <masonccyang@mxic.com.tw>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cypress' HyperBus is Low Signal Count, High Performance Double Data Rate
Bus interface between a host system master and one or more slave
interfaces. HyperBus is used to connect microprocessor, microcontroller,
or ASIC devices with random access NOR flash memory (called HyperFlash)
or self refresh DRAM (called HyperRAM).

Its a 8-bit data bus (DQ[7:0]) with  Read-Write Data Strobe (RWDS)
signal and either Single-ended clock(3.0V parts) or Differential clock
(1.8V parts). It uses ChipSelect lines to select b/w multiple slaves.
At bus level, it follows a separate protocol described in HyperBus
specification[1].

HyperFlash follows CFI AMD/Fujitsu Extended Command Set (0x0002) similar
to that of existing parallel NORs. Since HyperBus is x8 DDR bus,
its equivalent to x16 parallel NOR flash with respect to bits per clock
cycle. But HyperBus operates at >166MHz frequencies.
HyperRAM provides direct random read/write access to flash memory
array.

But, HyperBus memory controllers seem to abstract implementation details
and expose a simple MMIO interface to access connected flash.

Add support for registering HyperFlash devices with MTD framework. MTD
maps framework along with CFI chip support framework are used to support
communicating with flash.

Framework is modelled along the lines of spi-nor framework. HyperBus
memory controller (HBMC) drivers calls hyperbus_register_device() to
register a single HyperFlash device. HyperFlash core parses MMIO access
information from DT, sets up the map_info struct, probes CFI flash and
registers it with MTD framework.

Some HBMC masters need calibration/training sequence[3] to be carried
out, in order for DLL inside the controller to lock, by reading a known
string/pattern. This is done by repeatedly reading CFI Query
Identification String. Calibration needs to be done before trying to detect
flash as part of CFI flash probe.

HyperRAM is not supported at the moment.

HyperBus specification can be found at[1]
HyperFlash datasheet can be found at[2]

[1] https://www.cypress.com/file/213356/download
[2] https://www.cypress.com/file/213346/download
[3] http://www.ti.com/lit/ug/spruid7b/spruid7b.pdf
    Table 12-5741. HyperFlash Access Sequence

Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
---
v8:
Fix documentation comments on core APIs

 MAINTAINERS                          |   7 ++
 drivers/mtd/Kconfig                  |   2 +
 drivers/mtd/Makefile                 |   1 +
 drivers/mtd/hyperbus/Kconfig         |  11 ++
 drivers/mtd/hyperbus/Makefile        |   3 +
 drivers/mtd/hyperbus/hyperbus-core.c | 154 +++++++++++++++++++++++++++
 include/linux/mtd/hyperbus.h         |  86 +++++++++++++++
 7 files changed, 264 insertions(+)
 create mode 100644 drivers/mtd/hyperbus/Kconfig
 create mode 100644 drivers/mtd/hyperbus/Makefile
 create mode 100644 drivers/mtd/hyperbus/hyperbus-core.c
 create mode 100644 include/linux/mtd/hyperbus.h

diff --git a/MAINTAINERS b/MAINTAINERS
index 10359a30ed3c..c4860e53c695 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -7363,6 +7363,13 @@ F:	include/uapi/linux/hyperv.h
 F:	tools/hv/
 F:	Documentation/ABI/stable/sysfs-bus-vmbus
 
+HYPERBUS SUPPORT
+M:	Vignesh Raghavendra <vigneshr@ti.com>
+S:	Supported
+F:	drivers/mtd/hyperbus/
+F:	include/linux/mtd/hyperbus.h
+F:	Documentation/devicetree/bindings/mtd/cypress,hyperflash.txt
+
 HYPERVISOR VIRTUAL CONSOLE DRIVER
 L:	linuxppc-dev@lists.ozlabs.org
 S:	Odd Fixes
diff --git a/drivers/mtd/Kconfig b/drivers/mtd/Kconfig
index fb31a7f649a3..80a6e2dcd085 100644
--- a/drivers/mtd/Kconfig
+++ b/drivers/mtd/Kconfig
@@ -274,4 +274,6 @@ source "drivers/mtd/spi-nor/Kconfig"
 
 source "drivers/mtd/ubi/Kconfig"
 
+source "drivers/mtd/hyperbus/Kconfig"
+
 endif # MTD
diff --git a/drivers/mtd/Makefile b/drivers/mtd/Makefile
index 806287e80e84..62d649a959e2 100644
--- a/drivers/mtd/Makefile
+++ b/drivers/mtd/Makefile
@@ -34,3 +34,4 @@ obj-y		+= chips/ lpddr/ maps/ devices/ nand/ tests/
 
 obj-$(CONFIG_MTD_SPI_NOR)	+= spi-nor/
 obj-$(CONFIG_MTD_UBI)		+= ubi/
+obj-$(CONFIG_MTD_HYPERBUS)	+= hyperbus/
diff --git a/drivers/mtd/hyperbus/Kconfig b/drivers/mtd/hyperbus/Kconfig
new file mode 100644
index 000000000000..98147e28caa0
--- /dev/null
+++ b/drivers/mtd/hyperbus/Kconfig
@@ -0,0 +1,11 @@
+menuconfig MTD_HYPERBUS
+	tristate "HyperBus support"
+	select MTD_CFI
+	select MTD_MAP_BANK_WIDTH_2
+	select MTD_CFI_AMDSTD
+	select MTD_COMPLEX_MAPPINGS
+	help
+	  This is the framework for the HyperBus which can be used by
+	  the HyperBus Controller driver to communicate with
+	  HyperFlash. See Cypress HyperBus specification for more
+	  details
diff --git a/drivers/mtd/hyperbus/Makefile b/drivers/mtd/hyperbus/Makefile
new file mode 100644
index 000000000000..ca61dedd730d
--- /dev/null
+++ b/drivers/mtd/hyperbus/Makefile
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0
+
+obj-$(CONFIG_MTD_HYPERBUS)	+= hyperbus-core.o
diff --git a/drivers/mtd/hyperbus/hyperbus-core.c b/drivers/mtd/hyperbus/hyperbus-core.c
new file mode 100644
index 000000000000..63a9e64895bc
--- /dev/null
+++ b/drivers/mtd/hyperbus/hyperbus-core.c
@@ -0,0 +1,154 @@
+// SPDX-License-Identifier: GPL-2.0
+//
+// Copyright (C) 2019 Texas Instruments Incorporated - http://www.ti.com/
+// Author: Vignesh Raghavendra <vigneshr@ti.com>
+
+#include <linux/err.h>
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/mtd/hyperbus.h>
+#include <linux/mtd/map.h>
+#include <linux/mtd/mtd.h>
+#include <linux/of.h>
+#include <linux/of_address.h>
+#include <linux/types.h>
+
+static struct hyperbus_device *map_to_hbdev(struct map_info *map)
+{
+	return container_of(map, struct hyperbus_device, map);
+}
+
+static map_word hyperbus_read16(struct map_info *map, unsigned long addr)
+{
+	struct hyperbus_device *hbdev = map_to_hbdev(map);
+	struct hyperbus_ctlr *ctlr = hbdev->ctlr;
+	map_word read_data;
+
+	read_data.x[0] = ctlr->ops->read16(hbdev, addr);
+
+	return read_data;
+}
+
+static void hyperbus_write16(struct map_info *map, map_word d,
+			     unsigned long addr)
+{
+	struct hyperbus_device *hbdev = map_to_hbdev(map);
+	struct hyperbus_ctlr *ctlr = hbdev->ctlr;
+
+	ctlr->ops->write16(hbdev, addr, d.x[0]);
+}
+
+static void hyperbus_copy_from(struct map_info *map, void *to,
+			       unsigned long from, ssize_t len)
+{
+	struct hyperbus_device *hbdev = map_to_hbdev(map);
+	struct hyperbus_ctlr *ctlr = hbdev->ctlr;
+
+	ctlr->ops->copy_from(hbdev, to, from, len);
+}
+
+static void hyperbus_copy_to(struct map_info *map, unsigned long to,
+			     const void *from, ssize_t len)
+{
+	struct hyperbus_device *hbdev = map_to_hbdev(map);
+	struct hyperbus_ctlr *ctlr = hbdev->ctlr;
+
+	ctlr->ops->copy_to(hbdev, to, from, len);
+}
+
+int hyperbus_register_device(struct hyperbus_device *hbdev)
+{
+	const struct hyperbus_ops *ops;
+	struct hyperbus_ctlr *ctlr;
+	struct device_node *np;
+	struct map_info *map;
+	struct resource res;
+	struct device *dev;
+	int ret;
+
+	if (!hbdev || !hbdev->np || !hbdev->ctlr || !hbdev->ctlr->dev) {
+		pr_err("hyperbus: please fill all the necessary fields!\n");
+		return -EINVAL;
+	}
+
+	np = hbdev->np;
+	ctlr = hbdev->ctlr;
+	if (!of_device_is_compatible(np, "cypress,hyperflash"))
+		return -ENODEV;
+
+	hbdev->memtype = HYPERFLASH;
+
+	ret = of_address_to_resource(np, 0, &res);
+	if (ret)
+		return ret;
+
+	dev = ctlr->dev;
+	map = &hbdev->map;
+	map->size = resource_size(&res);
+	map->virt = devm_ioremap_resource(dev, &res);
+	if (IS_ERR(map->virt))
+		return PTR_ERR(map->virt);
+
+	map->name = dev_name(dev);
+	map->bankwidth = 2;
+	map->device_node = np;
+
+	simple_map_init(map);
+	ops = ctlr->ops;
+	if (ops) {
+		if (ops->read16)
+			map->read = hyperbus_read16;
+		if (ops->write16)
+			map->write = hyperbus_write16;
+		if (ops->copy_to)
+			map->copy_to = hyperbus_copy_to;
+		if (ops->copy_from)
+			map->copy_from = hyperbus_copy_from;
+
+		if (ops->calibrate && !ctlr->calibrated) {
+			ret = ops->calibrate(hbdev);
+			if (!ret) {
+				dev_err(dev, "Calibration failed\n");
+				return -ENODEV;
+			}
+			ctlr->calibrated = true;
+		}
+	}
+
+	hbdev->mtd = do_map_probe("cfi_probe", map);
+	if (!hbdev->mtd) {
+		dev_err(dev, "probing of hyperbus device failed\n");
+		return -ENODEV;
+	}
+
+	hbdev->mtd->dev.parent = dev;
+	mtd_set_of_node(hbdev->mtd, np);
+
+	ret = mtd_device_register(hbdev->mtd, NULL, 0);
+	if (ret) {
+		dev_err(dev, "failed to register mtd device\n");
+		map_destroy(hbdev->mtd);
+		return ret;
+	}
+	hbdev->registered = true;
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(hyperbus_register_device);
+
+int hyperbus_unregister_device(struct hyperbus_device *hbdev)
+{
+	int ret = 0;
+
+	if (hbdev && hbdev->mtd && hbdev->registered) {
+		ret = mtd_device_unregister(hbdev->mtd);
+		map_destroy(hbdev->mtd);
+	}
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(hyperbus_unregister_device);
+
+MODULE_DESCRIPTION("HyperBus Framework");
+MODULE_LICENSE("GPL v2");
+MODULE_AUTHOR("Vignesh Raghavendra <vigneshr@ti.com>");
diff --git a/include/linux/mtd/hyperbus.h b/include/linux/mtd/hyperbus.h
new file mode 100644
index 000000000000..45c59152f116
--- /dev/null
+++ b/include/linux/mtd/hyperbus.h
@@ -0,0 +1,86 @@
+/* SPDX-License-Identifier: GPL-2.0
+ *
+ * Copyright (C) 2019 Texas Instruments Incorporated - http://www.ti.com/
+ */
+
+#ifndef __LINUX_MTD_HYPERBUS_H__
+#define __LINUX_MTD_HYPERBUS_H__
+
+#include <linux/mtd/map.h>
+
+enum hyperbus_memtype {
+	HYPERFLASH,
+	HYPERRAM,
+};
+
+/**
+ * struct hyperbus_device - struct representing HyperBus slave device
+ * @map: map_info struct for accessing MMIO HyperBus flash memory
+ * @np: pointer to HyperBus slave device node
+ * @mtd: pointer to MTD struct
+ * @ctlr: pointer to HyperBus controller struct
+ * @memtype: type of memory device: HyperFlash or HyperRAM
+ * @registered: flag to indicate whether device is registered with MTD core
+ */
+
+struct hyperbus_device {
+	struct map_info map;
+	struct device_node *np;
+	struct mtd_info *mtd;
+	struct hyperbus_ctlr *ctlr;
+	enum hyperbus_memtype memtype;
+	bool registered;
+};
+
+/**
+ * struct hyperbus_ops - struct representing custom HyperBus operations
+ * @read16: read 16 bit of data from flash in a single burst. Used to read
+ *          from non default address space, such as ID/CFI space
+ * @write16: write 16 bit of data to flash in a single burst. Used to
+ *           send cmd to flash or write single 16 bit word at a time.
+ * @copy_from: copy data from flash memory
+ * @copy_to: copy data to flash memory
+ * @calibrate: calibrate HyperBus controller
+ */
+
+struct hyperbus_ops {
+	u16 (*read16)(struct hyperbus_device *hbdev, unsigned long addr);
+	void (*write16)(struct hyperbus_device *hbdev,
+			unsigned long addr, u16 val);
+	void (*copy_from)(struct hyperbus_device *hbdev, void *to,
+			  unsigned long from, ssize_t len);
+	void (*copy_to)(struct hyperbus_device *dev, unsigned long to,
+			const void *from, ssize_t len);
+	int (*calibrate)(struct hyperbus_device *dev);
+};
+
+/**
+ * struct hyperbus_ctlr - struct representing HyperBus controller
+ * @dev: pointer to HyperBus controller device
+ * @calibrated: flag to indicate ctlr calibration sequence is complete
+ * @ops: HyperBus controller ops
+ */
+struct hyperbus_ctlr {
+	struct device *dev;
+	bool calibrated;
+
+	const struct hyperbus_ops *ops;
+};
+
+/**
+ * hyperbus_register_device - probe and register a HyperBus slave memory device
+ * @hbdev: hyperbus_device struct with dev, np and ctlr field populated
+ *
+ * Return: 0 for success, others for failure.
+ */
+int hyperbus_register_device(struct hyperbus_device *hbdev);
+
+/**
+ * hyperbus_unregister_device - deregister HyperBus slave memory device
+ * @hbdev: hyperbus_device to be unregistered
+ *
+ * Return: 0 for success, others for failure.
+ */
+int hyperbus_unregister_device(struct hyperbus_device *hbdev);
+
+#endif /* __LINUX_MTD_HYPERBUS_H__ */
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
