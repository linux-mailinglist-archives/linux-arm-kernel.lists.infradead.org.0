Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D548F3FC3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 06:22:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LVAXpFLfl5RhInQsKUMvlRtVVSvUA1oP7c1aHjWWbU0=; b=e/thzu4gvOJ8KV
	ShIaYaIFPhZplTmV2te1H8RP1Q6Ii2YO8hdjMu1L1QwE5VIAwVLkJcS8SiClKVsDd96qcQG0FygtV
	8z5f6GXMT38lGl5Ild5B8hr/FOtDvKkADwmYcUtN+e96Idb3IBzv8lP/e/Bkp/coUXz0qSA91urYM
	q+6QJWMN/sUpLLyz6H5K2TgfRMIBrb4vXi2eYpyw8x0FbQcg2EfMKPgirND72HWfOkpXQGhe7lk40
	KbWSDgkxB/I/TX2ISQYcWmUtSKc7ZenpfapDIa06TVsN5FFmad93O1DGfYYRV3C77e+pSAiYrRuCp
	d3US/nPCD8NBe2FBvtNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSwjH-0005Jm-SE; Fri, 08 Nov 2019 05:22:39 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSwhV-0003dc-Kd
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 05:20:56 +0000
Received: by mail-pl1-x641.google.com with SMTP id d7so1383196pls.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 21:20:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=75+GBsm3s/u8w6X4ShxUr5jXVzQl8E1Ldm8VDSkE0ok=;
 b=aRwHnnd9+o9vNBa90kdKBJ5woCmX7y7E1jRHJtYC1NZ8YE6nFGm48L1pZXuxzClkmF
 YVZ0nBgMu9g4wIZvjpvTyqev4ABDxMKThxtSkgPYVlJx0ei+cfm15xOMVh0451Q7M/5M
 LvzwCEc2ha9KyP18JOufPWlSpxoM0X9q4Gghmz1mqw/RkZb1qhxwbrkewWEcgv+eRzVp
 TyEwoGJRnpODDSMVlzoL6/MKK2Rfpx5gVgZhqGSmIh+uJj3rjz4Ms91BLUIA850pvmqM
 weUqauZ5OpopcankkksJHF2fNTNpN/ovE40bD/RUvJnwzIshPO4Z3ke/kkPDpQSWAIir
 1NHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=75+GBsm3s/u8w6X4ShxUr5jXVzQl8E1Ldm8VDSkE0ok=;
 b=fAlRfbA3zNbN14mEulzYlkkePx+gCr3NwmWjsZMxdIzSaswsOI9XxbEXl6xCm9M7mG
 X7adCDpMR8RCyMCH3b6YiV0ZshrldQpwmQGtBn47knBnZYUL9QW9eedxLsw9wA38MS8u
 SAYvNTuUpLMwHA7taAcNi4bafFeHGsT4u72bnAwUC5UyfnUpkYF2RhNie8vrhc1UW291
 yQRorcIXbqJ4ExJaCcfxYscCVyVfGhkaZjwEhRuJfZSVVJo8G7+LRYVl1RVUSi25TzCv
 /yEg/6IdJcwuwnxDCAfv6NDIEMvvz525kk3el8ypedhCMYvSMjvPV09eUy8KbthwcmHW
 DpaQ==
X-Gm-Message-State: APjAAAV74/+HlNqN3Q0uqIFdjkQVjYqq4spBQeJ0afKNZmtq51cH1Sqm
 Vse27WioY+Tnbo2y+3JPG3E=
X-Google-Smtp-Source: APXvYqxD8aYRbwO9nbVABXX7ZoNVvByHpgAbFkZ32j3uH3jFTH6Wu8eM3CLTgyrDtrm4pKtecEEJdg==
X-Received: by 2002:a17:902:bb8f:: with SMTP id
 m15mr4846211pls.121.1573190448378; 
 Thu, 07 Nov 2019 21:20:48 -0800 (PST)
Received: from voyager.ibm.com ([36.255.48.244])
 by smtp.gmail.com with ESMTPSA id v19sm3798443pjr.14.2019.11.07.21.20.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 21:20:47 -0800 (PST)
From: Joel Stanley <joel@jms.id.au>
To: Rob Herring <robh+dt@kernel.org>, Greg KH <gregkh@linuxfoundation.org>,
 Jeremy Kerr <jk@ozlabs.org>
Subject: [PATCH v2 09/11] fsi: Add ast2600 master driver
Date: Fri,  8 Nov 2019 15:49:43 +1030
Message-Id: <20191108051945.7109-10-joel@jms.id.au>
X-Mailer: git-send-email 2.24.0.rc1
In-Reply-To: <20191108051945.7109-1-joel@jms.id.au>
References: <20191108051945.7109-1-joel@jms.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_212049_756065_031500E5 
X-CRM114-Status: GOOD (  20.00  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, Alistar Popple <alistair@popple.id.au>,
 Eddie James <eajames@linux.ibm.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>, Ingo Molnar <mingo@redhat.com>,
 linux-arm-kernel@lists.infradead.org, linux-fsi@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The ast2600 BMC has a pair of FSI masters in it, behind an AHB to OPB
bridge.

The master driver supports reads and writes of full words, half word and
byte accesses to remote CFAMs. It can perform very basic error recovery
through resetting of the FSI port when an error is detected, and the
issuing of breaks and terms.

Signed-off-by: Joel Stanley <joel@jms.id.au>
--
v2:
 - remove debugging
 - squash in fixes
---
 drivers/fsi/Kconfig             |   8 +
 drivers/fsi/Makefile            |   1 +
 drivers/fsi/fsi-master-aspeed.c | 522 ++++++++++++++++++++++++++++++++
 3 files changed, 531 insertions(+)
 create mode 100644 drivers/fsi/fsi-master-aspeed.c

diff --git a/drivers/fsi/Kconfig b/drivers/fsi/Kconfig
index c612db7a914a..92ce6d85802c 100644
--- a/drivers/fsi/Kconfig
+++ b/drivers/fsi/Kconfig
@@ -53,6 +53,14 @@ config FSI_MASTER_AST_CF
 	lines driven by the internal ColdFire coprocessor. This requires
 	the corresponding machine specific ColdFire firmware to be available.
 
+config FSI_MASTER_ASPEED
+	tristate "FSI ASPEED master"
+	help
+	 This option enables a FSI master that is present behind an OPB bridge
+	 in the AST2600.
+
+	 Enable it for your BMC kernel in an OpenPower or IBM Power system.
+
 config FSI_SCOM
 	tristate "SCOM FSI client device driver"
 	---help---
diff --git a/drivers/fsi/Makefile b/drivers/fsi/Makefile
index e4a2ff043c32..da218a1ad8e1 100644
--- a/drivers/fsi/Makefile
+++ b/drivers/fsi/Makefile
@@ -2,6 +2,7 @@
 
 obj-$(CONFIG_FSI) += fsi-core.o
 obj-$(CONFIG_FSI_MASTER_HUB) += fsi-master-hub.o
+obj-$(CONFIG_FSI_MASTER_ASPEED) += fsi-master-aspeed.o
 obj-$(CONFIG_FSI_MASTER_GPIO) += fsi-master-gpio.o
 obj-$(CONFIG_FSI_MASTER_AST_CF) += fsi-master-ast-cf.o
 obj-$(CONFIG_FSI_SCOM) += fsi-scom.o
diff --git a/drivers/fsi/fsi-master-aspeed.c b/drivers/fsi/fsi-master-aspeed.c
new file mode 100644
index 000000000000..d1b83f035483
--- /dev/null
+++ b/drivers/fsi/fsi-master-aspeed.c
@@ -0,0 +1,522 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+// Copyright (C) IBM Corporation 2018
+// FSI master driver for AST2600
+
+#include <linux/clk.h>
+#include <linux/delay.h>
+#include <linux/fsi.h>
+#include <linux/io.h>
+#include <linux/mfd/syscon.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
+#include <linux/regmap.h>
+#include <linux/slab.h>
+#include <linux/iopoll.h>
+
+#include "fsi-master.h"
+
+struct fsi_master_aspeed {
+	struct fsi_master	master;
+	struct device		*dev;
+	void __iomem		*base;
+	struct clk		*clk;
+};
+
+#define to_fsi_master_aspeed(m) \
+	container_of(m, struct fsi_master_aspeed, master)
+
+/* Control register (size 0x400) */
+static const u32 ctrl_base = 0x80000000;
+
+static const u32 fsi_base = 0xa0000000;
+
+#define OPB_FSI_VER	0x00
+#define OPB_TRIGGER	0x04
+#define OPB_CTRL_BASE	0x08
+#define OPB_FSI_BASE	0x0c
+#define OPB_CLK_SYNC	0x3c
+#define OPB_IRQ_CLEAR	0x40
+#define OPB_IRQ_MASK	0x44
+#define OPB_IRQ_STATUS	0x48
+
+#define OPB0_SELECT	0x10
+#define OPB0_RW		0x14
+#define OPB0_XFER_SIZE	0x18
+#define OPB0_FSI_ADDR	0x1c
+#define OPB0_FSI_DATA_W	0x20
+#define OPB0_STATUS	0x80
+#define OPB0_FSI_DATA_R	0x84
+
+#define OPB0_WRITE_ORDER1	0x4c
+#define OPB0_WRITE_ORDER2	0x50
+#define OPB1_WRITE_ORDER1	0x54
+#define OPB1_WRITE_ORDER2	0x58
+#define OPB0_READ_ORDER1	0x5c
+#define OPB1_READ_ORDER2	0x60
+
+#define OPB_RETRY_COUNTER	0x64
+
+/* OPBn_STATUS */
+#define STATUS_HALFWORD_ACK	BIT(0)
+#define STATUS_FULLWORD_ACK	BIT(1)
+#define STATUS_ERR_ACK		BIT(2)
+#define STATUS_RETRY		BIT(3)
+#define STATUS_TIMEOUT		BIT(4)
+
+/* OPB_IRQ_MASK */
+#define OPB1_XFER_ACK_EN BIT(17)
+#define OPB0_XFER_ACK_EN BIT(16)
+
+/* OPB_RW */
+#define CMD_READ	BIT(0)
+#define CMD_WRITE	0
+
+/* OPBx_XFER_SIZE */
+#define XFER_FULLWORD	(BIT(1) | BIT(0))
+#define XFER_HALFWORD	(BIT(0))
+#define XFER_BYTE	(0)
+
+#define FSI_LINK_ENABLE_SETUP_TIME	10	/* in mS */
+
+#define DEFAULT_DIVISOR			14
+#define OPB_POLL_TIMEOUT		10000
+
+static int __opb_write(struct fsi_master_aspeed *aspeed, u32 addr,
+		       u32 val, u32 transfer_size)
+{
+	void __iomem *base = aspeed->base;
+	u32 reg, status;
+	int ret;
+
+	writel(CMD_WRITE, base + OPB0_RW);
+	writel(transfer_size, base + OPB0_XFER_SIZE);
+	writel(addr, base + OPB0_FSI_ADDR);
+	writel(val, base + OPB0_FSI_DATA_W);
+	writel(0x1, base + OPB_IRQ_CLEAR);
+	writel(0x1, base + OPB_TRIGGER);
+
+	ret = readl_poll_timeout(base + OPB_IRQ_STATUS, reg,
+				(reg & OPB0_XFER_ACK_EN) != 0,
+				0, OPB_POLL_TIMEOUT);
+
+	status = readl(base + OPB0_STATUS);
+
+	/* Return error when poll timed out */
+	if (ret)
+		return ret;
+
+	/* Command failed, master will reset */
+	if (status & STATUS_ERR_ACK)
+		return -EIO;
+
+	return 0;
+}
+
+static int opb_writeb(struct fsi_master_aspeed *aspeed, u32 addr, u8 val)
+{
+	return __opb_write(aspeed, addr, val, XFER_BYTE);
+}
+
+static int opb_writew(struct fsi_master_aspeed *aspeed, u32 addr, __be16 val)
+{
+	return __opb_write(aspeed, addr, (__force u16)val, XFER_HALFWORD);
+}
+
+static int opb_writel(struct fsi_master_aspeed *aspeed, u32 addr, __be32 val)
+{
+	return __opb_write(aspeed, addr, (__force u32)val, XFER_FULLWORD);
+}
+
+static int __opb_read(struct fsi_master_aspeed *aspeed, uint32_t addr,
+		      u32 transfer_size, void *out)
+{
+	void __iomem *base = aspeed->base;
+	u32 result, reg;
+	int status, ret;
+
+	writel(CMD_READ, base + OPB0_RW);
+	writel(transfer_size, base + OPB0_XFER_SIZE);
+	writel(addr, base + OPB0_FSI_ADDR);
+	writel(0x1, base + OPB_IRQ_CLEAR);
+	writel(0x1, base + OPB_TRIGGER);
+
+	ret = readl_poll_timeout(base + OPB_IRQ_STATUS, reg,
+			   (reg & OPB0_XFER_ACK_EN) != 0,
+			   0, OPB_POLL_TIMEOUT);
+
+	status = readl(base + OPB0_STATUS);
+
+	result = readl(base + OPB0_FSI_DATA_R);
+
+	/* Return error when poll timed out */
+	if (ret)
+		return ret;
+
+	/* Command failed, master will reset */
+	if (status & STATUS_ERR_ACK)
+		return -EIO;
+
+	if (out) {
+		switch (transfer_size) {
+		case XFER_BYTE:
+			*(u8 *)out = result;
+			break;
+		case XFER_HALFWORD:
+			*(u16 *)out = result;
+			break;
+		case XFER_FULLWORD:
+			*(u32 *)out = result;
+			break;
+		default:
+			return -EINVAL;
+		}
+
+	}
+
+	return 0;
+}
+
+static int opb_readl(struct fsi_master_aspeed *aspeed, uint32_t addr, __be32 *out)
+{
+	return __opb_read(aspeed, addr, XFER_FULLWORD, out);
+}
+
+static int opb_readw(struct fsi_master_aspeed *aspeed, uint32_t addr, __be16 *out)
+{
+	return __opb_read(aspeed, addr, XFER_HALFWORD, (void *)out);
+}
+
+static int opb_readb(struct fsi_master_aspeed *aspeed, uint32_t addr, u8 *out)
+{
+	return __opb_read(aspeed, addr, XFER_BYTE, (void *)out);
+}
+
+static int check_errors(struct fsi_master_aspeed *aspeed, int err)
+{
+	int ret;
+
+	if (err == -EIO) {
+		/* Check MAEB (0x70) ? */
+
+		/* Then clear errors in master */
+		ret = opb_writel(aspeed, ctrl_base + FSI_MRESP0,
+				cpu_to_be32(FSI_MRESP_RST_ALL_MASTER));
+		if (ret) {
+			/* TODO: log? return different code? */
+			return ret;
+		}
+		/* TODO: confirm that 0x70 was okay */
+	}
+
+	/* This will pass through timeout errors */
+	return err;
+}
+
+static int aspeed_master_read(struct fsi_master *master, int link,
+			uint8_t id, uint32_t addr, void *val, size_t size)
+{
+	struct fsi_master_aspeed *aspeed = to_fsi_master_aspeed(master);
+	int ret;
+
+	if (id != 0)
+		return -EINVAL;
+
+	addr += link * FSI_HUB_LINK_SIZE;
+
+	switch (size) {
+	case 1:
+		ret = opb_readb(aspeed, fsi_base + addr, val);
+		break;
+	case 2:
+		ret = opb_readw(aspeed, fsi_base + addr, val);
+		break;
+	case 4:
+		ret = opb_readl(aspeed, fsi_base + addr, val);
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	ret = check_errors(aspeed, ret);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static int aspeed_master_write(struct fsi_master *master, int link,
+			uint8_t id, uint32_t addr, const void *val, size_t size)
+{
+	struct fsi_master_aspeed *aspeed = to_fsi_master_aspeed(master);
+	int ret;
+
+	if (id != 0)
+		return -EINVAL;
+
+	addr += link * FSI_HUB_LINK_SIZE;
+
+	switch (size) {
+	case 1:
+		ret = opb_writeb(aspeed, fsi_base + addr, *(u8 *)val);
+		break;
+	case 2:
+		ret = opb_writew(aspeed, fsi_base + addr, *(__be16 *)val);
+		break;
+	case 4:
+		ret = opb_writel(aspeed, fsi_base + addr, *(__be32 *)val);
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	ret = check_errors(aspeed, ret);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static int aspeed_master_link_enable(struct fsi_master *master, int link)
+{
+	struct fsi_master_aspeed *aspeed = to_fsi_master_aspeed(master);
+	int idx, bit, ret;
+	__be32 reg, result;
+
+	idx = link / 32;
+	bit = link % 32;
+
+	reg = cpu_to_be32(0x80000000 >> bit);
+
+	ret = opb_writel(aspeed, ctrl_base + FSI_MSENP0 + (4 * idx), reg);
+	if (ret)
+		return ret;
+
+	mdelay(FSI_LINK_ENABLE_SETUP_TIME);
+
+	ret = opb_readl(aspeed, ctrl_base + FSI_MENP0 + (4 * idx), &result);
+	if (ret)
+		return ret;
+
+	if (result != reg) {
+		dev_err(aspeed->dev, "%s failed: %08x\n", __func__, result);
+		return -EIO;
+	}
+
+	return 0;
+}
+
+static int aspeed_master_term(struct fsi_master *master, int link, uint8_t id)
+{
+	uint32_t addr;
+	__be32 cmd;
+
+	addr = 0x4;
+	cmd = cpu_to_be32(0xecc00000);
+
+	return aspeed_master_write(master, link, id, addr, &cmd, 4);
+}
+
+static int aspeed_master_break(struct fsi_master *master, int link)
+{
+	uint32_t addr;
+	__be32 cmd;
+
+	addr = 0x0;
+	cmd = cpu_to_be32(0xc0de0000);
+
+	return aspeed_master_write(master, link, 0, addr, &cmd, 4);
+}
+
+static void aspeed_master_release(struct device *dev)
+{
+	struct fsi_master_aspeed *aspeed =
+		to_fsi_master_aspeed(dev_to_fsi_master(dev));
+
+	kfree(aspeed);
+}
+
+/* mmode encoders */
+static inline u32 fsi_mmode_crs0(u32 x)
+{
+	return (x & FSI_MMODE_CRS0MASK) << FSI_MMODE_CRS0SHFT;
+}
+
+static inline u32 fsi_mmode_crs1(u32 x)
+{
+	return (x & FSI_MMODE_CRS1MASK) << FSI_MMODE_CRS1SHFT;
+}
+
+static int aspeed_master_init(struct fsi_master_aspeed *aspeed)
+{
+	__be32 reg;
+
+	reg = cpu_to_be32(FSI_MRESP_RST_ALL_MASTER | FSI_MRESP_RST_ALL_LINK
+			| FSI_MRESP_RST_MCR | FSI_MRESP_RST_PYE);
+	opb_writel(aspeed, ctrl_base + FSI_MRESP0, reg);
+
+	/* Initialize the MFSI (hub master) engine */
+	reg = cpu_to_be32(FSI_MRESP_RST_ALL_MASTER | FSI_MRESP_RST_ALL_LINK
+			| FSI_MRESP_RST_MCR | FSI_MRESP_RST_PYE);
+	opb_writel(aspeed, ctrl_base + FSI_MRESP0, reg);
+
+	reg = cpu_to_be32(FSI_MECTRL_EOAE | FSI_MECTRL_P8_AUTO_TERM);
+	opb_writel(aspeed, ctrl_base + FSI_MECTRL, reg);
+
+	reg = cpu_to_be32(FSI_MMODE_ECRC | FSI_MMODE_EPC | FSI_MMODE_RELA
+			| fsi_mmode_crs0(DEFAULT_DIVISOR)
+			| fsi_mmode_crs1(DEFAULT_DIVISOR)
+			| FSI_MMODE_P8_TO_LSB);
+	opb_writel(aspeed, ctrl_base + FSI_MMODE, reg);
+
+	reg = cpu_to_be32(0xffff0000);
+	opb_writel(aspeed, ctrl_base + FSI_MDLYR, reg);
+
+	reg = cpu_to_be32(~0);
+	opb_writel(aspeed, ctrl_base + FSI_MSENP0, reg);
+
+	/* Leave enabled long enough for master logic to set up */
+	mdelay(FSI_LINK_ENABLE_SETUP_TIME);
+
+	opb_writel(aspeed, ctrl_base + FSI_MCENP0, reg);
+
+	opb_readl(aspeed, ctrl_base + FSI_MAEB, NULL);
+
+	reg = cpu_to_be32(FSI_MRESP_RST_ALL_MASTER | FSI_MRESP_RST_ALL_LINK);
+	opb_writel(aspeed, ctrl_base + FSI_MRESP0, reg);
+
+	opb_readl(aspeed, ctrl_base + FSI_MLEVP0, NULL);
+
+	/* Reset the master bridge */
+	reg = cpu_to_be32(FSI_MRESB_RST_GEN);
+	opb_writel(aspeed, ctrl_base + FSI_MRESB0, reg);
+
+	reg = cpu_to_be32(FSI_MRESB_RST_ERR);
+	opb_writel(aspeed, ctrl_base + FSI_MRESB0, reg);
+
+	return 0;
+}
+
+static int fsi_master_aspeed_probe(struct platform_device *pdev)
+{
+	struct fsi_master_aspeed *aspeed;
+	struct resource *res;
+	int rc, links, reg;
+	__be32 raw;
+
+	aspeed = devm_kzalloc(&pdev->dev, sizeof(*aspeed), GFP_KERNEL);
+	if (!aspeed)
+		return -ENOMEM;
+
+	aspeed->dev = &pdev->dev;
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	aspeed->base = devm_ioremap_resource(&pdev->dev, res);
+	if (IS_ERR(aspeed->base))
+		return PTR_ERR(aspeed->base);
+
+	aspeed->clk = devm_clk_get(aspeed->dev, NULL);
+	if (IS_ERR(aspeed->clk)) {
+		dev_err(aspeed->dev, "couldn't get clock\n");
+		return PTR_ERR(aspeed->clk);
+	}
+	rc = clk_prepare_enable(aspeed->clk);
+	if (rc) {
+		dev_err(aspeed->dev, "couldn't enable clock\n");
+		return rc;
+	}
+
+	writel(0x1, aspeed->base + OPB_CLK_SYNC);
+	writel(OPB1_XFER_ACK_EN | OPB0_XFER_ACK_EN,
+			aspeed->base + OPB_IRQ_MASK);
+
+	/* TODO: determine an appropriate value */
+	writel(0x10, aspeed->base + OPB_RETRY_COUNTER);
+
+	writel(ctrl_base, aspeed->base + OPB_CTRL_BASE);
+	writel(fsi_base, aspeed->base + OPB_FSI_BASE);
+
+	/* Set read data order */
+	writel(0x0011bb1b, aspeed->base + OPB0_READ_ORDER1);
+
+	/* Set write data order */
+	writel(0x0011bb1b, aspeed->base + OPB0_WRITE_ORDER1);
+	writel(0xffaa5500, aspeed->base + OPB0_WRITE_ORDER2);
+
+	/*
+	 * Select OPB0 for all operations.
+	 * Will need to be reworked when enabling DMA or anything that uses
+	 * OPB1.
+	 */
+	writel(0x1, aspeed->base + OPB0_SELECT);
+
+	rc = opb_readl(aspeed, ctrl_base + FSI_MVER, &raw);
+	if (rc) {
+		dev_err(&pdev->dev, "failed to read hub version\n");
+		return rc;
+	}
+
+	reg = be32_to_cpu(raw);
+	links = (reg >> 8) & 0xff;
+	dev_info(&pdev->dev, "hub version %08x (%d links)\n", reg, links);
+
+	aspeed->master.dev.parent = &pdev->dev;
+	aspeed->master.dev.release = aspeed_master_release;
+	aspeed->master.dev.of_node = of_node_get(dev_of_node(&pdev->dev));
+
+	aspeed->master.n_links = links;
+	aspeed->master.read = aspeed_master_read;
+	aspeed->master.write = aspeed_master_write;
+	aspeed->master.send_break = aspeed_master_break;
+	aspeed->master.term = aspeed_master_term;
+	aspeed->master.link_enable = aspeed_master_link_enable;
+
+	dev_set_drvdata(&pdev->dev, aspeed);
+
+	aspeed_master_init(aspeed);
+
+	rc = fsi_master_register(&aspeed->master);
+	if (rc)
+		goto err_release;
+
+	/* At this point, fsi_master_register performs the device_initialize(),
+	 * and holds the sole reference on master.dev. This means the device
+	 * will be freed (via ->release) during any subsequent call to
+	 * fsi_master_unregister.  We add our own reference to it here, so we
+	 * can perform cleanup (in _remove()) without it being freed before
+	 * we're ready.
+	 */
+	get_device(&aspeed->master.dev);
+	return 0;
+
+err_release:
+	clk_disable_unprepare(aspeed->clk);
+	return rc;
+}
+
+static int fsi_master_aspeed_remove(struct platform_device *pdev)
+{
+	struct fsi_master_aspeed *aspeed = platform_get_drvdata(pdev);
+
+	fsi_master_unregister(&aspeed->master);
+	clk_disable_unprepare(aspeed->clk);
+
+	return 0;
+}
+
+static const struct of_device_id fsi_master_aspeed_match[] = {
+	{ .compatible = "aspeed,ast2600-fsi-master" },
+	{ },
+};
+
+static struct platform_driver fsi_master_aspeed_driver = {
+	.driver = {
+		.name		= "fsi-master-aspeed",
+		.of_match_table	= fsi_master_aspeed_match,
+	},
+	.probe	= fsi_master_aspeed_probe,
+	.remove = fsi_master_aspeed_remove,
+};
+
+module_platform_driver(fsi_master_aspeed_driver);
+MODULE_LICENSE("GPL");
-- 
2.24.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
