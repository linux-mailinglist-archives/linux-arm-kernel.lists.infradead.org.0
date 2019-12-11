Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 274E711BD77
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 20:49:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lNMdIPCHu/FefGmrid3pvQD7Bmib0MV7+ZQS12GVz6k=; b=mDfoRwBh+/3IkBV7NmM5WjQ/mr
	0amSLn3t1jeHjoQiAoqOGwiKg+qOfJYVEP3nrEQY4KxkVRE35YkpzSaFY/kPcfo7x7zi4kLNPiA1t
	RT7dYR40HCtRdlmEFvKinCtYwo6yMCKbCmrdiyvyb69lMY8rPPPAP9++WsSesD9Fa5T3slpdcvf7a
	dAdmW8Zs+ACK3h0hS2O9ElF32Ao6LUc88ckD44xq3gzBYTZfa4tOQfz/PH1BFFPE4Gy1b0qUgDC0m
	cJ3a4hedLSCl3UdMkofr3AJ7I/NX3XptVFUre9A6YGe6ijgIt2h3arBRjAqObonzVJ2MIvAe9mRgq
	/huVG+Cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if7z5-0007Ze-Kg; Wed, 11 Dec 2019 19:49:19 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if7wa-00058g-9q
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 19:46:46 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 11:46:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,303,1571727600"; d="scan'208";a="216033886"
Received: from yoojae-mobl1.amr.corp.intel.com (HELO ubuntu.jf.intel.com)
 ([10.7.153.143])
 by orsmga003.jf.intel.com with ESMTP; 11 Dec 2019 11:46:43 -0800
From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
To: Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, Jean Delvare <jdelvare@suse.com>,
 Guenter Roeck <linux@roeck-us.net>, Mark Rutland <mark.rutland@arm.com>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Jonathan Corbet <corbet@lwn.net>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "Darrick J . Wong" <darrick.wong@oracle.com>,
 Eric Sandeen <sandeen@redhat.com>, Arnd Bergmann <arnd@arndb.de>,
 Wu Hao <hao.wu@intel.com>, Tomohiro Kusumi <kusumi.tomohiro@gmail.com>,
 "Bryant G . Ly" <bryantly@linux.vnet.ibm.com>,
 Frederic Barrat <fbarrat@linux.vnet.ibm.com>,
 "David S . Miller" <davem@davemloft.net>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Randy Dunlap <rdunlap@infradead.org>,
 Philippe Ombredanne <pombredanne@nexb.com>, Vinod Koul <vkoul@kernel.org>,
 Stephen Boyd <sboyd@codeaurora.org>,
 David Kershner <david.kershner@unisys.com>,
 Uwe Kleine-Konig <u.kleine-koenig@pengutronix.de>,
 Sagar Dharia <sdharia@codeaurora.org>, Johan Hovold <johan@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Juergen Gross <jgross@suse.com>,
 Cyrille Pitchen <cyrille.pitchen@wedev4u.fr>,
 Tomer Maimon <tmaimon77@gmail.com>
Subject: [PATCH v11 11/14] mfd: intel-peci-client: Add Intel PECI client driver
Date: Wed, 11 Dec 2019 11:46:21 -0800
Message-Id: <20191211194624.2872-12-jae.hyun.yoo@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191211194624.2872-1-jae.hyun.yoo@linux.intel.com>
References: <20191211194624.2872-1-jae.hyun.yoo@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_114644_754418_CA5ABA13 
X-CRM114-Status: GOOD (  25.04  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
 Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>, linux-doc@vger.kernel.org,
 Vernon Mauery <vernon.mauery@linux.intel.com>, openbmc@lists.ozlabs.org,
 James Feist <james.feist@linux.intel.com>,
 Jason M Biils <jason.m.bills@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This commit adds Intel PECI client driver.

Cc: Lee Jones <lee.jones@linaro.org>
Cc: Randy Dunlap <rdunlap@infradead.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Andrew Jeffery <andrew@aj.id.au>
Cc: James Feist <james.feist@linux.intel.com>
Cc: Jason M Biils <jason.m.bills@linux.intel.com>
Cc: Joel Stanley <joel@jms.id.au>
Cc: Vernon Mauery <vernon.mauery@linux.intel.com>
Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
---
Changes since v10:
- Fixed minor style issues.

 drivers/mfd/Kconfig                   |  17 +++
 drivers/mfd/Makefile                  |   1 +
 drivers/mfd/intel-peci-client.c       | 149 ++++++++++++++++++++++++++
 include/linux/mfd/intel-peci-client.h | 117 ++++++++++++++++++++
 4 files changed, 284 insertions(+)
 create mode 100644 drivers/mfd/intel-peci-client.c
 create mode 100644 include/linux/mfd/intel-peci-client.h

diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index 420900852166..7022e54a4703 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -632,6 +632,23 @@ config MFD_INTEL_MSIC
 	  Passage) chip. This chip embeds audio, battery, GPIO, etc.
 	  devices used in Intel Medfield platforms.
 
+config MFD_INTEL_PECI_CLIENT
+	tristate "Intel PECI client"
+	depends on (PECI || COMPILE_TEST)
+	select MFD_CORE
+	help
+	  If you say yes to this option, support will be included for the
+	  Intel PECI (Platform Environment Control Interface) client. PECI is a
+	  one-wire bus interface that provides a communication channel from PECI
+	  clients in Intel processors and chipset components to external
+	  monitoring or control devices.
+
+	  Additional drivers must be enabled in order to use the functionality
+	  of the device.
+
+	  This driver can also be built as a module. If so, the module
+	  will be called intel-peci-client.
+
 config MFD_IPAQ_MICRO
 	bool "Atmel Micro ASIC (iPAQ h3100/h3600/h3700) Support"
 	depends on SA1100_H3100 || SA1100_H3600
diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
index aed99f08739f..91c6fda5cec6 100644
--- a/drivers/mfd/Makefile
+++ b/drivers/mfd/Makefile
@@ -211,6 +211,7 @@ obj-$(CONFIG_MFD_INTEL_LPSS)	+= intel-lpss.o
 obj-$(CONFIG_MFD_INTEL_LPSS_PCI)	+= intel-lpss-pci.o
 obj-$(CONFIG_MFD_INTEL_LPSS_ACPI)	+= intel-lpss-acpi.o
 obj-$(CONFIG_MFD_INTEL_MSIC)	+= intel_msic.o
+obj-$(CONFIG_MFD_INTEL_PECI_CLIENT)	+= intel-peci-client.o
 obj-$(CONFIG_MFD_PALMAS)	+= palmas.o
 obj-$(CONFIG_MFD_VIPERBOARD)    += viperboard.o
 obj-$(CONFIG_MFD_RC5T583)	+= rc5t583.o rc5t583-irq.o
diff --git a/drivers/mfd/intel-peci-client.c b/drivers/mfd/intel-peci-client.c
new file mode 100644
index 000000000000..18bf0af0e09e
--- /dev/null
+++ b/drivers/mfd/intel-peci-client.c
@@ -0,0 +1,149 @@
+// SPDX-License-Identifier: GPL-2.0
+// Copyright (c) 2018-2019 Intel Corporation
+
+#include <linux/bitfield.h>
+#include <linux/mfd/core.h>
+#include <linux/mfd/intel-peci-client.h>
+#include <linux/module.h>
+#include <linux/of_device.h>
+#include <linux/peci.h>
+
+#define CPU_ID_MODEL_MASK      GENMASK(7, 4)
+#define CPU_ID_FAMILY_MASK     GENMASK(11, 8)
+#define CPU_ID_EXT_MODEL_MASK  GENMASK(19, 16)
+#define CPU_ID_EXT_FAMILY_MASK GENMASK(27, 20)
+
+#define LOWER_NIBBLE_MASK      GENMASK(3, 0)
+#define UPPER_NIBBLE_MASK      GENMASK(7, 4)
+#define LOWER_BYTE_MASK        GENMASK(7, 0)
+#define UPPER_BYTE_MASK        GENMASK(16, 8)
+
+static struct mfd_cell peci_functions[] = {
+	{ .name = "peci-cputemp", },
+	{ .name = "peci-dimmtemp", },
+	/* TODO: Add additional PECI sideband functions into here */
+};
+
+static const struct cpu_gen_info cpu_gen_info_table[] = {
+	{ /* Haswell Xeon */
+		.family        = 6, /* Family code */
+		.model         = INTEL_FAM6_HASWELL_X,
+		.core_max      = CORE_MAX_ON_HSX,
+		.chan_rank_max = CHAN_RANK_MAX_ON_HSX,
+		.dimm_idx_max  = DIMM_IDX_MAX_ON_HSX },
+	{ /* Broadwell Xeon */
+		.family        = 6, /* Family code */
+		.model         = INTEL_FAM6_BROADWELL_X,
+		.core_max      = CORE_MAX_ON_BDX,
+		.chan_rank_max = CHAN_RANK_MAX_ON_BDX,
+		.dimm_idx_max  = DIMM_IDX_MAX_ON_BDX },
+	{ /* Skylake Xeon */
+		.family        = 6, /* Family code */
+		.model         = INTEL_FAM6_SKYLAKE_X,
+		.core_max      = CORE_MAX_ON_SKX,
+		.chan_rank_max = CHAN_RANK_MAX_ON_SKX,
+		.dimm_idx_max  = DIMM_IDX_MAX_ON_SKX },
+	{ /* Skylake Xeon D */
+		.family        = 6, /* Family code */
+		.model         = INTEL_FAM6_SKYLAKE_XD,
+		.core_max      = CORE_MAX_ON_SKXD,
+		.chan_rank_max = CHAN_RANK_MAX_ON_SKXD,
+		.dimm_idx_max  = DIMM_IDX_MAX_ON_SKXD },
+};
+
+static int peci_client_get_cpu_gen_info(struct peci_client_manager *priv)
+{
+	struct device *dev = &priv->client->dev;
+	u32 cpu_id;
+	u16 family;
+	u8 model;
+	int ret;
+	int i;
+
+	ret = peci_get_cpu_id(priv->client->adapter, priv->client->addr,
+			      &cpu_id);
+	if (ret)
+		return ret;
+
+	family = FIELD_PREP(LOWER_BYTE_MASK,
+			    FIELD_GET(CPU_ID_FAMILY_MASK, cpu_id)) |
+		 FIELD_PREP(UPPER_BYTE_MASK,
+			    FIELD_GET(CPU_ID_EXT_FAMILY_MASK, cpu_id));
+	model = FIELD_PREP(LOWER_NIBBLE_MASK,
+			   FIELD_GET(CPU_ID_MODEL_MASK, cpu_id)) |
+		FIELD_PREP(UPPER_NIBBLE_MASK,
+			   FIELD_GET(CPU_ID_EXT_MODEL_MASK, cpu_id));
+
+	for (i = 0; i < ARRAY_SIZE(cpu_gen_info_table); i++) {
+		const struct cpu_gen_info *cpu_info = &cpu_gen_info_table[i];
+
+		if (family == cpu_info->family && model == cpu_info->model) {
+			priv->gen_info = cpu_info;
+			break;
+		}
+	}
+
+	if (!priv->gen_info) {
+		dev_err(dev, "Can't support this CPU: 0x%x\n", cpu_id);
+		ret = -ENODEV;
+	}
+
+	return ret;
+}
+
+static int peci_client_probe(struct peci_client *client)
+{
+	struct device *dev = &client->dev;
+	struct peci_client_manager *priv;
+	uint cpu_no;
+	int ret;
+
+	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
+	dev_set_drvdata(dev, priv);
+	priv->client = client;
+	cpu_no = client->addr - PECI_BASE_ADDR;
+
+	ret = peci_client_get_cpu_gen_info(priv);
+	if (ret)
+		return ret;
+
+	ret = devm_mfd_add_devices(dev, cpu_no, peci_functions,
+				   ARRAY_SIZE(peci_functions), NULL, 0, NULL);
+	if (ret < 0) {
+		dev_err(dev, "Failed to register child devices: %d\n", ret);
+		return ret;
+	}
+
+	return 0;
+}
+
+#if IS_ENABLED(CONFIG_OF)
+static const struct of_device_id peci_client_of_table[] = {
+	{ .compatible = "intel,peci-client" },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, peci_client_of_table);
+#endif /* CONFIG_OF */
+
+static const struct peci_device_id peci_client_ids[] = {
+	{ .name = "peci-client" },
+	{ }
+};
+MODULE_DEVICE_TABLE(peci, peci_client_ids);
+
+static struct peci_driver peci_client_driver = {
+	.probe    = peci_client_probe,
+	.id_table = peci_client_ids,
+	.driver   = {
+		.name           = KBUILD_MODNAME,
+		.of_match_table = of_match_ptr(peci_client_of_table),
+	},
+};
+module_peci_driver(peci_client_driver);
+
+MODULE_AUTHOR("Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>");
+MODULE_DESCRIPTION("PECI client driver");
+MODULE_LICENSE("GPL v2");
diff --git a/include/linux/mfd/intel-peci-client.h b/include/linux/mfd/intel-peci-client.h
new file mode 100644
index 000000000000..9854303bbc26
--- /dev/null
+++ b/include/linux/mfd/intel-peci-client.h
@@ -0,0 +1,117 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/* Copyright (c) 2018-2019 Intel Corporation */
+
+#ifndef __LINUX_MFD_INTEL_PECI_CLIENT_H
+#define __LINUX_MFD_INTEL_PECI_CLIENT_H
+
+#include <linux/peci.h>
+
+#if IS_ENABLED(CONFIG_X86)
+#include <asm/intel-family.h>
+#else
+/*
+ * Architectures other than x86 cannot include the header file so define these
+ * at here. These are needed for detecting type of client x86 CPUs behind a PECI
+ * connection.
+ */
+#define INTEL_FAM6_HASWELL_X		0x3F
+#define INTEL_FAM6_BROADWELL_X		0x4F
+#define INTEL_FAM6_SKYLAKE_X		0x55
+#define INTEL_FAM6_SKYLAKE_XD		0x56
+#endif
+
+#define CORE_MAX_ON_HSX        18 /* Max number of cores on Haswell */
+#define CHAN_RANK_MAX_ON_HSX   8  /* Max number of channel ranks on Haswell */
+#define DIMM_IDX_MAX_ON_HSX    3  /* Max DIMM index per channel on Haswell */
+
+#define CORE_MAX_ON_BDX        24 /* Max number of cores on Broadwell */
+#define CHAN_RANK_MAX_ON_BDX   4  /* Max number of channel ranks on Broadwell */
+#define DIMM_IDX_MAX_ON_BDX    3  /* Max DIMM index per channel on Broadwell */
+
+#define CORE_MAX_ON_SKX        28 /* Max number of cores on Skylake */
+#define CHAN_RANK_MAX_ON_SKX   6  /* Max number of channel ranks on Skylake */
+#define DIMM_IDX_MAX_ON_SKX    2  /* Max DIMM index per channel on Skylake */
+
+#define CORE_MAX_ON_SKXD       16 /* Max number of cores on Skylake D */
+#define CHAN_RANK_MAX_ON_SKXD  2  /* Max number of channel ranks on Skylake D */
+#define DIMM_IDX_MAX_ON_SKXD   2  /* Max DIMM index per channel on Skylake D */
+
+#define CORE_NUMS_MAX          CORE_MAX_ON_SKX
+#define CHAN_RANK_MAX          CHAN_RANK_MAX_ON_HSX
+#define DIMM_IDX_MAX           DIMM_IDX_MAX_ON_HSX
+#define DIMM_NUMS_MAX          (CHAN_RANK_MAX * DIMM_IDX_MAX)
+
+/**
+ * struct cpu_gen_info - CPU generation specific information
+ * @family: CPU family ID
+ * @model: CPU model
+ * @core_max: max number of cores
+ * @chan_rank_max: max number of channel ranks
+ * @dimm_idx_max: max number of DIMM indices
+ *
+ * CPU generation specific information to identify maximum number of cores and
+ * DIMM slots.
+ */
+struct cpu_gen_info {
+	u16  family;
+	u8   model;
+	uint core_max;
+	uint chan_rank_max;
+	uint dimm_idx_max;
+};
+
+/**
+ * struct peci_client_manager - PECI client manager information
+ * @client; pointer to the PECI client
+ * @name: PECI client manager name
+ * @gen_info: CPU generation info of the detected CPU
+ *
+ * PECI client manager information for managing PECI sideband functions on a CPU
+ * client.
+ */
+struct peci_client_manager {
+	struct peci_client *client;
+	char name[PECI_NAME_SIZE];
+	const struct cpu_gen_info *gen_info;
+};
+
+/**
+ * peci_client_read_package_config - read from the Package Configuration Space
+ * @priv: driver private data structure
+ * @index: encoding index for the requested service
+ * @param: parameter to specify the exact data being requested
+ * @data: data buffer to store the result
+ * Context: can sleep
+ *
+ * A generic PECI command that provides read access to the
+ * "Package Configuration Space" that is maintained by the PCU, including
+ * various power and thermal management functions. Typical PCS read services
+ * supported by the processor may include access to temperature data, energy
+ * status, run time information, DIMM temperatures and so on.
+ *
+ * Return: zero on success, else a negative error code.
+ */
+static inline int
+peci_client_read_package_config(struct peci_client_manager *priv,
+				u8 index, u16 param, u8 *data)
+{
+	struct peci_rd_pkg_cfg_msg msg;
+	int ret;
+
+	msg.addr = priv->client->addr;
+	msg.index = index;
+	msg.param = param;
+	msg.rx_len = 4;
+
+	ret = peci_command(priv->client->adapter, PECI_CMD_RD_PKG_CFG, &msg);
+	if (msg.cc != PECI_DEV_CC_SUCCESS)
+		ret = -EAGAIN;
+	if (ret)
+		return ret;
+
+	memcpy(data, msg.pkg_config, 4);
+
+	return 0;
+}
+
+#endif /* __LINUX_MFD_INTEL_PECI_CLIENT_H */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
