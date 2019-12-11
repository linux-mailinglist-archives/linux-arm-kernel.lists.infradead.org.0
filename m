Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7576B11BD7A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 20:50:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JiFUvkBjiIlclt7KZWVSCqoCcrQTZ5rrvz1GqZYlkrI=; b=a16gqnBGdNhz6kMoSZkW+Ed8xV
	fT9CMselXLzEjZx3nAMV3b4gebWsjahKXGbqlpfgYZ60rIIP6Y1TSJbdb0j1UN+mqASODdrnx2oqV
	q0xsuyugXekMBck+Lr52803XqD8ByUFk5Sz2nSpPSSgr2vKsnGK+S6uhNhJ88yzOg8Z6O3inz7Z8r
	p9Aou7V24RXOFypKJl3GMjKqAtr2YA8yr7u3OOEXoTYJV+tT1uME+xTohwEe/zKs9cNxu6aFx6ngF
	I6BEtSw9CmaRLkvndqlKnp/op8J1YsODpJQ7V0UGEN9L2G8s5JG3FAhCCUVQkdY6T6NzBbRLqkUIA
	CE46W46g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if80E-0001Un-N0; Wed, 11 Dec 2019 19:50:30 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if7we-0005BK-TM
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 19:46:58 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 11:46:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,303,1571727600"; d="scan'208";a="216033927"
Received: from yoojae-mobl1.amr.corp.intel.com (HELO ubuntu.jf.intel.com)
 ([10.7.153.143])
 by orsmga003.jf.intel.com with ESMTP; 11 Dec 2019 11:46:48 -0800
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
Subject: [PATCH v11 14/14] hwmon: Add PECI dimmtemp driver
Date: Wed, 11 Dec 2019 11:46:24 -0800
Message-Id: <20191211194624.2872-15-jae.hyun.yoo@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191211194624.2872-1-jae.hyun.yoo@linux.intel.com>
References: <20191211194624.2872-1-jae.hyun.yoo@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_114649_020016_ECE2ABA2 
X-CRM114-Status: GOOD (  22.73  )
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
 openbmc@lists.ozlabs.org, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Andrew Lunn <andrew@lunn.ch>,
 Stef van Os <stef.van.os@prodrive-technologies.com>,
 Jason M Biils <jason.m.bills@linux.intel.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org, Alan Cox <alan@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This commit adds PECI dimmtemp hwmon driver.

Cc: Guenter Roeck <linux@roeck-us.net>
Cc: Jean Delvare <jdelvare@suse.com>
Cc: Alan Cox <alan@linux.intel.com>
Cc: Andrew Jeffery <andrew@aj.id.au>
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Jason M Biils <jason.m.bills@linux.intel.com>
Cc: Joel Stanley <joel@jms.id.au>
Cc: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Andrew Lunn <andrew@lunn.ch>
Cc: Stef van Os <stef.van.os@prodrive-technologies.com>
Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Reviewed-by: Haiyue Wang <haiyue.wang@linux.intel.com>
Reviewed-by: James Feist <james.feist@linux.intel.com>
Reviewed-by: Vernon Mauery <vernon.mauery@linux.intel.com>
Acked-by: Guenter Roeck <linux@roeck-us.net>
---
Changes since v10:
- Added Skylake Xeon D support.
- Added max and crit properties for temperature threshold checking.
- Fixed minor bugs and style issues.

 drivers/hwmon/Kconfig         |  14 ++
 drivers/hwmon/Makefile        |   1 +
 drivers/hwmon/peci-dimmtemp.c | 393 ++++++++++++++++++++++++++++++++++
 3 files changed, 408 insertions(+)
 create mode 100644 drivers/hwmon/peci-dimmtemp.c

diff --git a/drivers/hwmon/Kconfig b/drivers/hwmon/Kconfig
index b6604759579c..d3370fbab40c 100644
--- a/drivers/hwmon/Kconfig
+++ b/drivers/hwmon/Kconfig
@@ -1363,6 +1363,20 @@ config SENSORS_PECI_CPUTEMP
 	  This driver can also be built as a module. If so, the module
 	  will be called peci-cputemp.
 
+config SENSORS_PECI_DIMMTEMP
+	tristate "PECI DIMM temperature monitoring client"
+	depends on PECI
+	select MFD_INTEL_PECI_CLIENT
+	help
+	  If you say yes here you get support for the generic Intel PECI hwmon
+	  driver which provides Digital Thermal Sensor (DTS) thermal readings of
+	  DIMM components that are accessible using the PECI Client Command
+	  Suite via the processor PECI client.
+	  Check <file:Documentation/hwmon/peci-dimmtemp.rst> for details.
+
+	  This driver can also be built as a module. If so, the module
+	  will be called peci-dimmtemp.
+
 source "drivers/hwmon/pmbus/Kconfig"
 
 config SENSORS_PWM_FAN
diff --git a/drivers/hwmon/Makefile b/drivers/hwmon/Makefile
index d6fea48697af..4015c4b60bf4 100644
--- a/drivers/hwmon/Makefile
+++ b/drivers/hwmon/Makefile
@@ -145,6 +145,7 @@ obj-$(CONFIG_SENSORS_PC87360)	+= pc87360.o
 obj-$(CONFIG_SENSORS_PC87427)	+= pc87427.o
 obj-$(CONFIG_SENSORS_PCF8591)	+= pcf8591.o
 obj-$(CONFIG_SENSORS_PECI_CPUTEMP)	+= peci-cputemp.o
+obj-$(CONFIG_SENSORS_PECI_DIMMTEMP)	+= peci-dimmtemp.o
 obj-$(CONFIG_SENSORS_POWR1220)  += powr1220.o
 obj-$(CONFIG_SENSORS_PWM_FAN)	+= pwm-fan.o
 obj-$(CONFIG_SENSORS_RASPBERRYPI_HWMON)	+= raspberrypi-hwmon.o
diff --git a/drivers/hwmon/peci-dimmtemp.c b/drivers/hwmon/peci-dimmtemp.c
new file mode 100644
index 000000000000..974f453f9366
--- /dev/null
+++ b/drivers/hwmon/peci-dimmtemp.c
@@ -0,0 +1,393 @@
+// SPDX-License-Identifier: GPL-2.0
+// Copyright (c) 2018-2019 Intel Corporation
+
+#include <linux/hwmon.h>
+#include <linux/jiffies.h>
+#include <linux/mfd/intel-peci-client.h>
+#include <linux/module.h>
+#include <linux/of_device.h>
+#include <linux/platform_device.h>
+#include <linux/workqueue.h>
+#include "peci-hwmon.h"
+
+#define DIMM_MASK_CHECK_DELAY_JIFFIES  msecs_to_jiffies(5000)
+#define DIMM_MASK_CHECK_RETRY_MAX      60 /* 60 x 5 secs = 5 minutes */
+
+struct peci_dimmtemp {
+	struct peci_client_manager *mgr;
+	struct device *dev;
+	char name[PECI_NAME_SIZE];
+	const struct cpu_gen_info *gen_info;
+	struct workqueue_struct *work_queue;
+	struct delayed_work work_handler;
+	struct peci_sensor_data temp[DIMM_NUMS_MAX];
+	long temp_max[DIMM_NUMS_MAX];
+	long temp_crit[DIMM_NUMS_MAX];
+	u32 dimm_mask;
+	int retry_count;
+	u32 temp_config[DIMM_NUMS_MAX + 1];
+	struct hwmon_channel_info temp_info;
+	const struct hwmon_channel_info *info[2];
+	struct hwmon_chip_info chip;
+};
+
+static const char *dimmtemp_label[CHAN_RANK_MAX][DIMM_IDX_MAX] = {
+	{ "DIMM A1", "DIMM A2", "DIMM A3" },
+	{ "DIMM B1", "DIMM B2", "DIMM B3" },
+	{ "DIMM C1", "DIMM C2", "DIMM C3" },
+	{ "DIMM D1", "DIMM D2", "DIMM D3" },
+	{ "DIMM E1", "DIMM E2", "DIMM E3" },
+	{ "DIMM F1", "DIMM F2", "DIMM F3" },
+	{ "DIMM G1", "DIMM G2", "DIMM G3" },
+	{ "DIMM H1", "DIMM H2", "DIMM H3" },
+};
+
+static inline int read_ddr_dimm_temp_config(struct peci_dimmtemp *priv,
+					    int chan_rank,
+					    u8 *cfg_data)
+{
+	return peci_client_read_package_config(priv->mgr,
+					       PECI_MBX_INDEX_DDR_DIMM_TEMP,
+					       chan_rank, cfg_data);
+}
+
+static int get_dimm_temp(struct peci_dimmtemp *priv, int dimm_no)
+{
+	int dimm_order = dimm_no % priv->gen_info->dimm_idx_max;
+	int chan_rank = dimm_no / priv->gen_info->dimm_idx_max;
+	struct peci_rd_pci_cfg_local_msg rp_msg;
+	u8  cfg_data[4];
+	int ret;
+
+	if (!peci_sensor_need_update(&priv->temp[dimm_no]))
+		return 0;
+
+	ret = read_ddr_dimm_temp_config(priv, chan_rank, cfg_data);
+	if (ret)
+		return ret;
+
+	priv->temp[dimm_no].value = cfg_data[dimm_order] * 1000;
+
+	switch (priv->gen_info->model) {
+	case INTEL_FAM6_SKYLAKE_X:
+		rp_msg.addr = priv->mgr->client->addr;
+		rp_msg.bus = 2;
+		/*
+		 * Device 10, Function 2: IMC 0 channel 0 -> rank 0
+		 * Device 10, Function 6: IMC 0 channel 1 -> rank 1
+		 * Device 11, Function 2: IMC 0 channel 2 -> rank 2
+		 * Device 12, Function 2: IMC 1 channel 0 -> rank 3
+		 * Device 12, Function 6: IMC 1 channel 1 -> rank 4
+		 * Device 13, Function 2: IMC 1 channel 2 -> rank 5
+		 */
+		rp_msg.device = 10 + chan_rank / 3 * 2 +
+			     (chan_rank % 3 == 2 ? 1 : 0);
+		rp_msg.function = chan_rank % 3 == 1 ? 6 : 2;
+		rp_msg.reg = 0x120 + dimm_order * 4;
+		rp_msg.rx_len = 4;
+
+		ret = peci_command(priv->mgr->client->adapter,
+				   PECI_CMD_RD_PCI_CFG_LOCAL, &rp_msg);
+		if (rp_msg.cc != PECI_DEV_CC_SUCCESS)
+			ret = -EAGAIN;
+		if (ret)
+			return ret;
+
+		priv->temp_max[dimm_no] = rp_msg.pci_config[1] * 1000;
+		priv->temp_crit[dimm_no] = rp_msg.pci_config[2] * 1000;
+		break;
+	case INTEL_FAM6_SKYLAKE_XD:
+		rp_msg.addr = priv->mgr->client->addr;
+		rp_msg.bus = 2;
+		/*
+		 * Device 10, Function 2: IMC 0 channel 0 -> rank 0
+		 * Device 10, Function 6: IMC 0 channel 1 -> rank 1
+		 * Device 12, Function 2: IMC 1 channel 0 -> rank 2
+		 * Device 12, Function 6: IMC 1 channel 1 -> rank 3
+		 */
+		rp_msg.device = 10 + chan_rank / 2 * 2;
+		rp_msg.function = (chan_rank % 2) ? 6 : 2;
+		rp_msg.reg = 0x120 + dimm_order * 4;
+		rp_msg.rx_len = 4;
+
+		ret = peci_command(priv->mgr->client->adapter,
+				   PECI_CMD_RD_PCI_CFG_LOCAL, &rp_msg);
+		if (rp_msg.cc != PECI_DEV_CC_SUCCESS)
+			ret = -EAGAIN;
+		if (ret)
+			return ret;
+
+		priv->temp_max[dimm_no] = rp_msg.pci_config[1] * 1000;
+		priv->temp_crit[dimm_no] = rp_msg.pci_config[2] * 1000;
+		break;
+	case INTEL_FAM6_HASWELL_X:
+	case INTEL_FAM6_BROADWELL_X:
+		rp_msg.addr = priv->mgr->client->addr;
+		rp_msg.bus = 1;
+		/*
+		 * Device 20, Function 0: IMC 0 channel 0 -> rank 0
+		 * Device 20, Function 1: IMC 0 channel 1 -> rank 1
+		 * Device 21, Function 0: IMC 0 channel 2 -> rank 2
+		 * Device 21, Function 1: IMC 0 channel 3 -> rank 3
+		 * Device 23, Function 0: IMC 1 channel 0 -> rank 4
+		 * Device 23, Function 1: IMC 1 channel 1 -> rank 5
+		 * Device 24, Function 0: IMC 1 channel 2 -> rank 6
+		 * Device 24, Function 1: IMC 1 channel 3 -> rank 7
+		 */
+		rp_msg.device = 20 + chan_rank / 2 + chan_rank / 4;
+		rp_msg.function = chan_rank % 2;
+		rp_msg.reg = 0x120 + dimm_order * 4;
+		rp_msg.rx_len = 4;
+
+		ret = peci_command(priv->mgr->client->adapter,
+				   PECI_CMD_RD_PCI_CFG_LOCAL, &rp_msg);
+		if (rp_msg.cc != PECI_DEV_CC_SUCCESS)
+			ret = -EAGAIN;
+		if (ret)
+			return ret;
+
+		priv->temp_max[dimm_no] = rp_msg.pci_config[1] * 1000;
+		priv->temp_crit[dimm_no] = rp_msg.pci_config[2] * 1000;
+		break;
+	default:
+		return -EOPNOTSUPP;
+	}
+
+	peci_sensor_mark_updated(&priv->temp[dimm_no]);
+
+	return 0;
+}
+
+static int dimmtemp_read_string(struct device *dev,
+				enum hwmon_sensor_types type,
+				u32 attr, int channel, const char **str)
+{
+	struct peci_dimmtemp *priv = dev_get_drvdata(dev);
+	u32 dimm_idx_max = priv->gen_info->dimm_idx_max;
+	int chan_rank, dimm_idx;
+
+	if (attr != hwmon_temp_label)
+		return -EOPNOTSUPP;
+
+	chan_rank = channel / dimm_idx_max;
+	dimm_idx = channel % dimm_idx_max;
+	*str = dimmtemp_label[chan_rank][dimm_idx];
+
+	return 0;
+}
+
+static int dimmtemp_read(struct device *dev, enum hwmon_sensor_types type,
+			 u32 attr, int channel, long *val)
+{
+	struct peci_dimmtemp *priv = dev_get_drvdata(dev);
+	int ret;
+
+	ret = get_dimm_temp(priv, channel);
+	if (ret)
+		return ret;
+
+	switch (attr) {
+	case hwmon_temp_input:
+		*val = priv->temp[channel].value;
+		break;
+	case hwmon_temp_max:
+		*val = priv->temp_max[channel];
+		break;
+	case hwmon_temp_crit:
+		*val = priv->temp_crit[channel];
+		break;
+	default:
+		ret = -EOPNOTSUPP;
+		break;
+	}
+
+	return ret;
+}
+
+static umode_t dimmtemp_is_visible(const void *data,
+				   enum hwmon_sensor_types type,
+				   u32 attr, int channel)
+{
+	const struct peci_dimmtemp *priv = data;
+
+	if (priv->temp_config[channel] & BIT(attr) &&
+	    priv->dimm_mask & BIT(channel))
+		return 0444;
+
+	return 0;
+}
+
+static const struct hwmon_ops dimmtemp_ops = {
+	.is_visible = dimmtemp_is_visible,
+	.read_string = dimmtemp_read_string,
+	.read = dimmtemp_read,
+};
+
+static int check_populated_dimms(struct peci_dimmtemp *priv)
+{
+	u32 chan_rank_max = priv->gen_info->chan_rank_max;
+	u32 dimm_idx_max = priv->gen_info->dimm_idx_max;
+	int chan_rank, dimm_idx;
+	u8  cfg_data[4];
+
+	for (chan_rank = 0; chan_rank < chan_rank_max; chan_rank++) {
+		int ret;
+
+		ret = read_ddr_dimm_temp_config(priv, chan_rank, cfg_data);
+		if (ret) {
+			priv->dimm_mask = 0;
+			return ret;
+		}
+
+		for (dimm_idx = 0; dimm_idx < dimm_idx_max; dimm_idx++)
+			if (cfg_data[dimm_idx])
+				priv->dimm_mask |= BIT(chan_rank *
+						       dimm_idx_max +
+						       dimm_idx);
+	}
+
+	if (!priv->dimm_mask)
+		return -EAGAIN;
+
+	dev_dbg(priv->dev, "Scanned populated DIMMs: 0x%x\n", priv->dimm_mask);
+
+	return 0;
+}
+
+static int create_dimm_temp_info(struct peci_dimmtemp *priv)
+{
+	int ret, i, config_idx, channels;
+	struct device *hwmon_dev;
+
+	ret = check_populated_dimms(priv);
+	if (ret) {
+		if (ret == -EAGAIN) {
+			if (priv->retry_count < DIMM_MASK_CHECK_RETRY_MAX) {
+				queue_delayed_work(priv->work_queue,
+						   &priv->work_handler,
+						 DIMM_MASK_CHECK_DELAY_JIFFIES);
+				priv->retry_count++;
+				dev_dbg(priv->dev,
+					"Deferred DIMM temp info creation\n");
+			} else {
+				dev_err(priv->dev,
+					"Timeout DIMM temp info creation\n");
+				ret = -ETIMEDOUT;
+			}
+		}
+
+		return ret;
+	}
+
+	channels = priv->gen_info->chan_rank_max *
+		   priv->gen_info->dimm_idx_max;
+	for (i = 0, config_idx = 0; i < channels; i++)
+		if (priv->dimm_mask & BIT(i))
+			while (i >= config_idx)
+				priv->temp_config[config_idx++] =
+					HWMON_T_LABEL | HWMON_T_INPUT |
+					HWMON_T_MAX | HWMON_T_CRIT;
+
+	priv->chip.ops = &dimmtemp_ops;
+	priv->chip.info = priv->info;
+
+	priv->info[0] = &priv->temp_info;
+
+	priv->temp_info.type = hwmon_temp;
+	priv->temp_info.config = priv->temp_config;
+
+	hwmon_dev = devm_hwmon_device_register_with_info(priv->dev,
+							 priv->name,
+							 priv,
+							 &priv->chip,
+							 NULL);
+	ret = PTR_ERR_OR_ZERO(hwmon_dev);
+	if (!ret)
+		dev_dbg(priv->dev, "%s: sensor '%s'\n",
+			dev_name(hwmon_dev), priv->name);
+
+	return ret;
+}
+
+static void create_dimm_temp_info_delayed(struct work_struct *work)
+{
+	struct delayed_work *dwork = to_delayed_work(work);
+	struct peci_dimmtemp *priv = container_of(dwork, struct peci_dimmtemp,
+						  work_handler);
+	int ret;
+
+	ret = create_dimm_temp_info(priv);
+	if (ret && ret != -EAGAIN)
+		dev_dbg(priv->dev, "Failed to create DIMM temp info\n");
+}
+
+static int peci_dimmtemp_probe(struct platform_device *pdev)
+{
+	struct peci_client_manager *mgr = dev_get_drvdata(pdev->dev.parent);
+	struct device *dev = &pdev->dev;
+	struct peci_dimmtemp *priv;
+	int ret;
+
+	if ((mgr->client->adapter->cmd_mask &
+	    (BIT(PECI_CMD_GET_TEMP) | BIT(PECI_CMD_RD_PKG_CFG))) !=
+	    (BIT(PECI_CMD_GET_TEMP) | BIT(PECI_CMD_RD_PKG_CFG)))
+		return -ENODEV;
+
+	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
+	dev_set_drvdata(dev, priv);
+	priv->mgr = mgr;
+	priv->dev = dev;
+	priv->gen_info = mgr->gen_info;
+
+	snprintf(priv->name, PECI_NAME_SIZE, "peci_dimmtemp.cpu%d",
+		 priv->mgr->client->addr - PECI_BASE_ADDR);
+
+	priv->work_queue = alloc_ordered_workqueue(priv->name, 0);
+	if (!priv->work_queue)
+		return -ENOMEM;
+
+	INIT_DELAYED_WORK(&priv->work_handler, create_dimm_temp_info_delayed);
+
+	ret = create_dimm_temp_info(priv);
+	if (ret && ret != -EAGAIN) {
+		dev_err(dev, "Failed to create DIMM temp info\n");
+		goto err_free_wq;
+	}
+
+	return 0;
+
+err_free_wq:
+	destroy_workqueue(priv->work_queue);
+	return ret;
+}
+
+static int peci_dimmtemp_remove(struct platform_device *pdev)
+{
+	struct peci_dimmtemp *priv = dev_get_drvdata(&pdev->dev);
+
+	cancel_delayed_work_sync(&priv->work_handler);
+	destroy_workqueue(priv->work_queue);
+
+	return 0;
+}
+
+static const struct platform_device_id peci_dimmtemp_ids[] = {
+	{ .name = "peci-dimmtemp", .driver_data = 0 },
+	{ }
+};
+MODULE_DEVICE_TABLE(platform, peci_dimmtemp_ids);
+
+static struct platform_driver peci_dimmtemp_driver = {
+	.probe    = peci_dimmtemp_probe,
+	.remove   = peci_dimmtemp_remove,
+	.id_table = peci_dimmtemp_ids,
+	.driver   = { .name = KBUILD_MODNAME, },
+};
+module_platform_driver(peci_dimmtemp_driver);
+
+MODULE_AUTHOR("Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>");
+MODULE_DESCRIPTION("PECI dimmtemp driver");
+MODULE_LICENSE("GPL v2");
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
