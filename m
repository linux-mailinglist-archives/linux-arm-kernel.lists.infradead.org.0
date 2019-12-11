Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91FE011BD74
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 20:48:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=N2NzqjbQCJth8p5+Hw1+/LDZIbbjpGYj9QaeD0p3iB0=; b=lE1DlYpPTmHJm0wzQ8L1dgg4Q/
	kaClYh6Phjo6At83ot/5sRvJLISXihyNDdXSJkeRDa00/3MxXPCwwCZCPzisp5QaACoo5zkFcsEX/
	y8vv4d3lzWMDEjeWS3nsUcID65Yjto9T3vkK5vR/7rPwJ5O96aq02o4ZE6vmU2CSYQdBUjC2n2shI
	BdU2Dqi6p89wczX1+NrUbvvQ8vajfd6GbGu84dTJBLaPOn/5eDMp8r1FTOJ4Vn1rFGSXteKp7kgvG
	bON/HZ2Q5+XyEZPiWrWZvRzV6+9knzfxu+MzLTvFDh6JgvNX94PiI3iVLuWmjYZFWFbVKJRmtyFrU
	kcVn1MsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if7yc-00076p-A3; Wed, 11 Dec 2019 19:48:50 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if7wY-0005BK-C3
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 19:46:45 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 11:46:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,303,1571727600"; d="scan'208";a="216033863"
Received: from yoojae-mobl1.amr.corp.intel.com (HELO ubuntu.jf.intel.com)
 ([10.7.153.143])
 by orsmga003.jf.intel.com with ESMTP; 11 Dec 2019 11:46:40 -0800
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
Subject: [PATCH v11 09/14] peci: npcm: add NPCM PECI driver
Date: Wed, 11 Dec 2019 11:46:19 -0800
Message-Id: <20191211194624.2872-10-jae.hyun.yoo@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191211194624.2872-1-jae.hyun.yoo@linux.intel.com>
References: <20191211194624.2872-1-jae.hyun.yoo@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_114642_677759_C6C42D00 
X-CRM114-Status: GOOD (  23.83  )
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
 openbmc@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tomer Maimon <tmaimon77@gmail.com>

Add support for the Nuvoton NPCM BMC hardware to the Platform
Environment Control Interface (PECI) subsystem.

Signed-off-by: Tomer Maimon <tmaimon77@gmail.com>
Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
---
Changes since v10:
- Newly added in v11Split out peci-dev module from peci-core module.

 drivers/peci/busses/Kconfig     |  13 +
 drivers/peci/busses/Makefile    |   1 +
 drivers/peci/busses/peci-npcm.c | 407 ++++++++++++++++++++++++++++++++
 3 files changed, 421 insertions(+)
 create mode 100644 drivers/peci/busses/peci-npcm.c

diff --git a/drivers/peci/busses/Kconfig b/drivers/peci/busses/Kconfig
index 2b2540221b36..bfacafb7a7ba 100644
--- a/drivers/peci/busses/Kconfig
+++ b/drivers/peci/busses/Kconfig
@@ -16,4 +16,17 @@ config PECI_ASPEED
 	  This support is also available as a module. If so, the module
 	  will be called peci-aspeed.
 
+config PECI_NPCM
+	tristate "Nuvoton NPCM PECI support"
+	select REGMAP_MMIO
+	depends on OF
+	depends on ARCH_NPCM || COMPILE_TEST
+	depends on PECI
+	help
+	  Say Y here if you want support for the Platform Environment Control
+	  Interface (PECI) bus adapter driver on the Nuvoton NPCM SoCs.
+
+	  This support is also available as a module. If so, the module
+	  will be called peci-npcm.
+
 endmenu
diff --git a/drivers/peci/busses/Makefile b/drivers/peci/busses/Makefile
index 69e31dfaca19..aa8ce3ae5947 100644
--- a/drivers/peci/busses/Makefile
+++ b/drivers/peci/busses/Makefile
@@ -4,3 +4,4 @@
 #
 
 obj-$(CONFIG_PECI_ASPEED)	+= peci-aspeed.o
+obj-$(CONFIG_PECI_NPCM)		+= peci-npcm.o
diff --git a/drivers/peci/busses/peci-npcm.c b/drivers/peci/busses/peci-npcm.c
new file mode 100644
index 000000000000..36d061e6e53d
--- /dev/null
+++ b/drivers/peci/busses/peci-npcm.c
@@ -0,0 +1,407 @@
+// SPDX-License-Identifier: GPL-2.0
+// Copyright (c) 2019 Nuvoton Technology corporation.
+
+#include <linux/bitfield.h>
+#include <linux/clk.h>
+#include <linux/interrupt.h>
+#include <linux/jiffies.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/peci.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+#include <linux/mfd/syscon.h>
+#include <linux/reset.h>
+
+/* NPCM7xx GCR module */
+#define NPCM7XX_INTCR3_OFFSET		0x9C
+#define NPCM7XX_INTCR3_PECIVSEL		BIT(19)
+
+/* NPCM PECI Registers */
+#define NPCM_PECI_CTL_STS	0x00
+#define NPCM_PECI_RD_LENGTH	0x04
+#define NPCM_PECI_ADDR		0x08
+#define NPCM_PECI_CMD		0x0C
+#define NPCM_PECI_CTL2		0x10
+#define NPCM_PECI_WR_LENGTH	0x1C
+#define NPCM_PECI_PDDR		0x2C
+#define NPCM_PECI_DAT_INOUT(n)	(0x100 + ((n) * 4))
+
+#define NPCM_PECI_MAX_REG	0x200
+
+/* NPCM_PECI_CTL_STS - 0x00 : Control Register */
+#define NPCM_PECI_CTRL_DONE_INT_EN	BIT(6)
+#define NPCM_PECI_CTRL_ABRT_ERR		BIT(4)
+#define NPCM_PECI_CTRL_CRC_ERR		BIT(3)
+#define NPCM_PECI_CTRL_DONE		BIT(1)
+#define NPCM_PECI_CTRL_START_BUSY	BIT(0)
+
+/* NPCM_PECI_RD_LENGTH - 0x04 : Command Register */
+#define NPCM_PECI_RD_LEN_MASK		GENMASK(6, 0)
+
+/* NPCM_PECI_CMD - 0x10 : Command Register */
+#define NPCM_PECI_CTL2_MASK		GENMASK(7, 6)
+
+/* NPCM_PECI_WR_LENGTH - 0x1C : Command Register */
+#define NPCM_PECI_WR_LEN_MASK		GENMASK(6, 0)
+
+/* NPCM_PECI_PDDR - 0x2C : Command Register */
+#define NPCM_PECI_PDDR_MASK		GENMASK(4, 0)
+
+#define NPCM_PECI_INT_MASK	(NPCM_PECI_CTRL_ABRT_ERR | \
+				NPCM_PECI_CTRL_CRC_ERR | \
+				NPCM_PECI_CTRL_DONE)
+
+#define NPCM_PECI_IDLE_CHECK_TIMEOUT_USEC	50000
+#define NPCM_PECI_IDLE_CHECK_INTERVAL_USEC	10000
+#define NPCM_PECI_CMD_TIMEOUT_MS_DEFAULT	1000
+#define NPCM_PECI_CMD_TIMEOUT_MS_MAX		60000
+#define NPCM_PECI_HOST_NEG_BIT_RATE_MAX		31
+#define NPCM_PECI_HOST_NEG_BIT_RATE_MIN		7
+#define NPCM_PECI_HOST_NEG_BIT_RATE_DEFAULT	15
+#define NPCM_PECI_PULL_DOWN_DEFAULT		0
+#define NPCM_PECI_PULL_DOWN_MAX			2
+
+struct npcm_peci {
+	u32			cmd_timeout_ms;
+	u32			host_bit_rate;
+	struct completion	xfer_complete;
+	struct regmap		*gcr_regmap;
+	struct peci_adapter	*adapter;
+	struct regmap		*regmap;
+	u32			status;
+	spinlock_t		lock; /* to sync completion status handling */
+	struct device		*dev;
+	struct clk		*clk;
+	int			irq;
+};
+
+static int npcm_peci_xfer_native(struct npcm_peci *priv,
+				 struct peci_xfer_msg *msg)
+{
+	long err, timeout = msecs_to_jiffies(priv->cmd_timeout_ms);
+	unsigned long flags;
+	unsigned int msg_rd;
+	u32 cmd_sts;
+	int i, rc;
+
+	/* Check command sts and bus idle state */
+	rc = regmap_read_poll_timeout(priv->regmap, NPCM_PECI_CTL_STS, cmd_sts,
+				      !(cmd_sts & NPCM_PECI_CTRL_START_BUSY),
+				      NPCM_PECI_IDLE_CHECK_INTERVAL_USEC,
+				      NPCM_PECI_IDLE_CHECK_TIMEOUT_USEC);
+	if (rc)
+		return rc; /* -ETIMEDOUT */
+
+	spin_lock_irqsave(&priv->lock, flags);
+	reinit_completion(&priv->xfer_complete);
+
+	regmap_write(priv->regmap, NPCM_PECI_ADDR, msg->addr);
+	regmap_write(priv->regmap, NPCM_PECI_RD_LENGTH,
+		     NPCM_PECI_WR_LEN_MASK & msg->rx_len);
+	regmap_write(priv->regmap, NPCM_PECI_WR_LENGTH,
+		     NPCM_PECI_WR_LEN_MASK & msg->tx_len);
+
+	if (msg->tx_len) {
+		regmap_write(priv->regmap, NPCM_PECI_CMD, msg->tx_buf[0]);
+
+		for (i = 0; i < (msg->tx_len - 1); i++)
+			regmap_write(priv->regmap, NPCM_PECI_DAT_INOUT(i),
+				     msg->tx_buf[i + 1]);
+	}
+
+	priv->status = 0;
+	regmap_update_bits(priv->regmap, NPCM_PECI_CTL_STS,
+			   NPCM_PECI_CTRL_START_BUSY,
+			   NPCM_PECI_CTRL_START_BUSY);
+
+	spin_unlock_irqrestore(&priv->lock, flags);
+
+	err = wait_for_completion_interruptible_timeout(&priv->xfer_complete,
+							timeout);
+
+	spin_lock_irqsave(&priv->lock, flags);
+
+	regmap_write(priv->regmap, NPCM_PECI_CMD, 0);
+
+	if (err <= 0 || priv->status  != NPCM_PECI_CTRL_DONE) {
+		if (err < 0) { /* -ERESTARTSYS */
+			rc = (int)err;
+			goto err_irqrestore;
+		} else if (err == 0) {
+			dev_dbg(priv->dev, "Timeout waiting for a response!\n");
+			rc = -ETIMEDOUT;
+			goto err_irqrestore;
+		}
+
+		dev_dbg(priv->dev, "No valid response!\n");
+		rc = -EIO;
+		goto err_irqrestore;
+	}
+
+	for (i = 0; i < msg->rx_len; i++) {
+		regmap_read(priv->regmap, NPCM_PECI_DAT_INOUT(i), &msg_rd);
+		msg->rx_buf[i] = (u8)msg_rd;
+	}
+
+err_irqrestore:
+	spin_unlock_irqrestore(&priv->lock, flags);
+	return rc;
+}
+
+static irqreturn_t npcm_peci_irq_handler(int irq, void *arg)
+{
+	struct npcm_peci *priv = arg;
+	u32 status_ack = 0;
+	u32 status;
+
+	spin_lock(&priv->lock);
+	regmap_read(priv->regmap, NPCM_PECI_CTL_STS, &status);
+	priv->status |= (status & NPCM_PECI_INT_MASK);
+
+	if (status & NPCM_PECI_CTRL_CRC_ERR) {
+		dev_dbg(priv->dev, "PECI_INT_W_FCS_BAD\n");
+		status_ack |= NPCM_PECI_CTRL_CRC_ERR;
+	}
+
+	if (status & NPCM_PECI_CTRL_ABRT_ERR) {
+		dev_dbg(priv->dev, "NPCM_PECI_CTRL_ABRT_ERR\n");
+		status_ack |= NPCM_PECI_CTRL_ABRT_ERR;
+	}
+
+	/*
+	 * All commands should be ended up with a NPCM_PECI_CTRL_DONE
+	 * bit set even in an error case.
+	 */
+	if (status & NPCM_PECI_CTRL_DONE) {
+		dev_dbg(priv->dev, "NPCM_PECI_CTRL_DONE\n");
+		status_ack |= NPCM_PECI_CTRL_DONE;
+		complete(&priv->xfer_complete);
+	}
+
+	regmap_write_bits(priv->regmap, NPCM_PECI_CTL_STS,
+			  NPCM_PECI_INT_MASK, status_ack);
+
+	spin_unlock(&priv->lock);
+	return IRQ_HANDLED;
+}
+
+static int npcm_peci_init_ctrl(struct npcm_peci *priv)
+{
+	u32 cmd_sts, host_neg_bit_rate = 0, pull_down = 0;
+	int ret;
+
+	priv->clk = devm_clk_get(priv->dev, NULL);
+	if (IS_ERR(priv->clk)) {
+		dev_err(priv->dev, "Failed to get clk source.\n");
+		return PTR_ERR(priv->clk);
+	}
+
+	ret = clk_prepare_enable(priv->clk);
+	if (ret) {
+		dev_err(priv->dev, "Failed to enable clock.\n");
+		return ret;
+	}
+
+	ret = of_property_read_u32(priv->dev->of_node, "cmd-timeout-ms",
+				   &priv->cmd_timeout_ms);
+	if (ret || priv->cmd_timeout_ms > NPCM_PECI_CMD_TIMEOUT_MS_MAX ||
+	    priv->cmd_timeout_ms == 0) {
+		if (ret)
+			dev_warn(priv->dev,
+				 "cmd-timeout-ms not found, use default : %u\n",
+				 NPCM_PECI_CMD_TIMEOUT_MS_DEFAULT);
+		else
+			dev_warn(priv->dev,
+				 "Invalid cmd-timeout-ms : %u. Use default : %u\n",
+				 priv->cmd_timeout_ms,
+				 NPCM_PECI_CMD_TIMEOUT_MS_DEFAULT);
+
+		priv->cmd_timeout_ms = NPCM_PECI_CMD_TIMEOUT_MS_DEFAULT;
+	}
+
+	if (of_device_is_compatible(priv->dev->of_node,
+				    "nuvoton,npcm750-peci")) {
+		priv->gcr_regmap = syscon_regmap_lookup_by_compatible
+			("nuvoton,npcm750-gcr");
+		if (!IS_ERR(priv->gcr_regmap)) {
+			bool volt = of_property_read_bool(priv->dev->of_node,
+							  "high-volt-range");
+			if (volt)
+				regmap_update_bits(priv->gcr_regmap,
+						   NPCM7XX_INTCR3_OFFSET,
+						   NPCM7XX_INTCR3_PECIVSEL,
+						   NPCM7XX_INTCR3_PECIVSEL);
+			else
+				regmap_update_bits(priv->gcr_regmap,
+						   NPCM7XX_INTCR3_OFFSET,
+						   NPCM7XX_INTCR3_PECIVSEL, 0);
+		}
+	}
+
+	ret = of_property_read_u32(priv->dev->of_node, "pull-down",
+				   &pull_down);
+	if (ret || pull_down > NPCM_PECI_PULL_DOWN_MAX) {
+		if (ret)
+			dev_warn(priv->dev,
+				 "pull-down not found, use default : %u\n",
+				 NPCM_PECI_PULL_DOWN_DEFAULT);
+		else
+			dev_warn(priv->dev,
+				 "Invalid pull-down : %u. Use default : %u\n",
+				 pull_down,
+				 NPCM_PECI_PULL_DOWN_DEFAULT);
+		pull_down = NPCM_PECI_PULL_DOWN_DEFAULT;
+	}
+
+	regmap_update_bits(priv->regmap, NPCM_PECI_CTL2, NPCM_PECI_CTL2_MASK,
+			   pull_down << 6);
+
+	ret = of_property_read_u32(priv->dev->of_node, "host-neg-bit-rate",
+				   &host_neg_bit_rate);
+	if (ret || host_neg_bit_rate > NPCM_PECI_HOST_NEG_BIT_RATE_MAX ||
+	    host_neg_bit_rate < NPCM_PECI_HOST_NEG_BIT_RATE_MIN) {
+		if (ret)
+			dev_warn(priv->dev,
+				 "host-neg-bit-rate not found, use default : %u\n",
+				 NPCM_PECI_HOST_NEG_BIT_RATE_DEFAULT);
+		else
+			dev_warn(priv->dev,
+				 "Invalid host-neg-bit-rate : %u. Use default : %u\n",
+				 host_neg_bit_rate,
+				 NPCM_PECI_HOST_NEG_BIT_RATE_DEFAULT);
+		host_neg_bit_rate = NPCM_PECI_HOST_NEG_BIT_RATE_DEFAULT;
+	}
+
+	regmap_update_bits(priv->regmap, NPCM_PECI_PDDR, NPCM_PECI_PDDR_MASK,
+			   host_neg_bit_rate);
+
+	priv->host_bit_rate = clk_get_rate(priv->clk) /
+		(4 * (host_neg_bit_rate + 1));
+
+	ret = regmap_read_poll_timeout(priv->regmap, NPCM_PECI_CTL_STS, cmd_sts,
+				       !(cmd_sts & NPCM_PECI_CTRL_START_BUSY),
+				       NPCM_PECI_IDLE_CHECK_INTERVAL_USEC,
+				       NPCM_PECI_IDLE_CHECK_TIMEOUT_USEC);
+	if (ret)
+		return ret; /* -ETIMEDOUT */
+
+	/* PECI interrupt enable */
+	regmap_update_bits(priv->regmap, NPCM_PECI_CTL_STS,
+			   NPCM_PECI_CTRL_DONE_INT_EN,
+			   NPCM_PECI_CTRL_DONE_INT_EN);
+
+	return 0;
+}
+
+static const struct regmap_config npcm_peci_regmap_config = {
+	.reg_bits = 8,
+	.val_bits = 8,
+	.max_register = NPCM_PECI_MAX_REG,
+	.fast_io = true,
+};
+
+static int npcm_peci_xfer(struct peci_adapter *adapter,
+			  struct peci_xfer_msg *msg)
+{
+	struct npcm_peci *priv = peci_get_adapdata(adapter);
+
+	return npcm_peci_xfer_native(priv, msg);
+}
+
+static int npcm_peci_probe(struct platform_device *pdev)
+{
+	struct peci_adapter *adapter;
+	struct npcm_peci *priv;
+	void __iomem *base;
+	int ret;
+
+	adapter = peci_alloc_adapter(&pdev->dev, sizeof(*priv));
+	if (!adapter)
+		return -ENOMEM;
+
+	priv = peci_get_adapdata(adapter);
+	priv->adapter = adapter;
+	priv->dev = &pdev->dev;
+	dev_set_drvdata(&pdev->dev, priv);
+
+	base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(base)) {
+		ret = PTR_ERR(base);
+		goto err_put_adapter_dev;
+	}
+
+	priv->regmap = devm_regmap_init_mmio(&pdev->dev, base,
+					     &npcm_peci_regmap_config);
+	if (IS_ERR(priv->regmap)) {
+		ret = PTR_ERR(priv->regmap);
+		goto err_put_adapter_dev;
+	}
+
+	priv->irq = platform_get_irq(pdev, 0);
+	if (!priv->irq) {
+		ret = -ENODEV;
+		goto err_put_adapter_dev;
+	}
+
+	ret = devm_request_irq(&pdev->dev, priv->irq, npcm_peci_irq_handler,
+			       0, "peci-npcm-irq", priv);
+	if (ret)
+		goto err_put_adapter_dev;
+
+	init_completion(&priv->xfer_complete);
+	spin_lock_init(&priv->lock);
+
+	priv->adapter->owner = THIS_MODULE;
+	priv->adapter->dev.of_node = of_node_get(dev_of_node(priv->dev));
+	strlcpy(priv->adapter->name, pdev->name, sizeof(priv->adapter->name));
+	priv->adapter->xfer = npcm_peci_xfer;
+
+	ret = npcm_peci_init_ctrl(priv);
+	if (ret)
+		goto err_put_adapter_dev;
+
+	ret = peci_add_adapter(priv->adapter);
+	if (ret)
+		goto err_put_adapter_dev;
+
+	dev_info(&pdev->dev, "peci bus %d registered, host negotiation bit rate %dHz",
+		 priv->adapter->nr, priv->host_bit_rate);
+
+	return 0;
+
+err_put_adapter_dev:
+	put_device(&adapter->dev);
+	return ret;
+}
+
+static int npcm_peci_remove(struct platform_device *pdev)
+{
+	struct npcm_peci *priv = dev_get_drvdata(&pdev->dev);
+
+	clk_disable_unprepare(priv->clk);
+	peci_del_adapter(priv->adapter);
+	of_node_put(priv->adapter->dev.of_node);
+
+	return 0;
+}
+
+static const struct of_device_id npcm_peci_of_table[] = {
+	{ .compatible = "nuvoton,npcm750-peci", },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, npcm_peci_of_table);
+
+static struct platform_driver npcm_peci_driver = {
+	.probe  = npcm_peci_probe,
+	.remove = npcm_peci_remove,
+	.driver = {
+		.name           = KBUILD_MODNAME,
+		.of_match_table = of_match_ptr(npcm_peci_of_table),
+	},
+};
+module_platform_driver(npcm_peci_driver);
+
+MODULE_AUTHOR("Tomer Maimon <tomer.maimon@nuvoton.com>");
+MODULE_DESCRIPTION("NPCM Platform Environment Control Interface (PECI) driver");
+MODULE_LICENSE("GPL v2");
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
