Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DC2D95528
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 05:26:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RY0z94zOSvi0fjWL/LRB6hrBSNcZ1X2kqJmq9VpsgJI=; b=mzdKA5nTOu2rOq
	xvDJmtLVwo9WQzydi6ecpyhl/ov3BPW18BcmMEPH3jkQqTQGYs9Z+7pRiIxKvv5HnmZYe5hmpapuF
	2kr96hUSwdNHokjKVLTkRL8qGRRiwpBiDe3TJZoLvDrJ/IpCoxxnzaokWr8c07h5Tt2Oel0geR75M
	apZmKj+y3XW5U6vokorGgN5xoBPsrA0a22Cd/KpjBsivWLppIIy2gJc0dlGyV0WMFLFMMxGvcQogh
	jYNC/E2FanEv+Vj0D6kyTWd80hRYmYfr3TyPwKPtn8dQa77fqtWM8JcpggdfvIBrmbSGvEZXC1XXu
	zEljhpVqE6hTdJ9tDq1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzumm-0006Zk-Kk; Tue, 20 Aug 2019 03:26:16 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzujv-00034u-OM
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 03:23:22 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 234313536;
 Mon, 19 Aug 2019 23:23:19 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Mon, 19 Aug 2019 23:23:19 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=43b9Z0w2/sueU
 Lbuz+zMR9jc90HTmmnqAVIiMUenoB4=; b=zr/QsYb7GW02BBon48QgyvHZFGFmJ
 AhRSb2wPmN/9eN7aCVTUYiBvaAR/3Jx9mYnSqRD27fiAuy0lHRCArbCRlOepDAmD
 PQV+ML9pdFYfAcpjzB5LFlvdplqUVbUOrKgnmGFF30WmHKOoqkKsbMJ5kwoLCKWM
 eGlspU8+IFA251/p8EfBV3WFZWkhPBhWNThpvzV+5L/C3YsCXKtkk0da5yXBcqrf
 CrTVLAVn4z4pNcTUSBW8FB2jlmuLdlzZsMRr8tD+94T/05i3Yed17AXRQ0q/tQDT
 /ZYuMk+wLgh4b4yEJ7sBX2c3QKBkn3bb9gh3IV/dLNJlriZttipMAB++g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=43b9Z0w2/sueULbuz+zMR9jc90HTmmnqAVIiMUenoB4=; b=G1/LcdY1
 mepSW5OoCYBnm/dkEwBGJiXGordmGRP8MTUnEcgVSxH6sKdi+g8AxT4Ez2FJ426q
 hGk6/2npLayNMvVpxYEzU4VlGLL/YTyO2TdVcEFCmGg4dwDz09YhMOHuzJ+7Kxth
 +b1DGWbE0+Ami+pLwvpguyRjGEfTUQBUh1XOpRprvjHrCnwHRnpXQ1DfxsJbF5RG
 7wBlwCjZsJkJ0Ln3Z4FdwavKpdS0ansetqLzY1U9KIFOJdj3RSnEwEJ99kQ+G4SM
 btwcj5VpNMF0WuGMIiwBaIX3c9ue5U0M1vDB2P9Psp3K4gJ8cLnh5pkQ5Qek8/5r
 czR7tt6Wkr/OlA==
X-ME-Sender: <xms:pmdbXfEexxX7CxiFXxRfSYB9MFWmWf3Z56-3Sgi9ws2buNwjzYhFgQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudegtddgjeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucffoh
 hmrghinhepghhithhhuhgsrdgtohhmnecukfhppeejtddrudefhedrudegkedrudehuden
 ucfrrghrrghmpehmrghilhhfrhhomhepshgrmhhuvghlsehshhholhhlrghnugdrohhrgh
 enucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:pmdbXYsyofB8SopFw2iujTzsyMWYY8aZmjHpJ97XfQD72b3TNfA5pA>
 <xmx:pmdbXVn46qxXRojU9qfy_AFoEtDZwbB2zKtqEhykSVcLWCgm0tE-gw>
 <xmx:pmdbXbPIbGJgN-k36-y0iJefwKEjVbybaRCh8FkUqpazxNSSHc5D_Q>
 <xmx:p2dbXUdjDzuGT2yM0xczGpLEH-VQDM1cFJgjuf5C2Y61xa0cM0J5qQ>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 0E8DB80059;
 Mon, 19 Aug 2019 23:23:18 -0400 (EDT)
From: Samuel Holland <samuel@sholland.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Jassi Brar <jassisinghbrar@gmail.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Corentin Labbe <clabbe.montjoie@gmail.com>,
 Vasily Khoruzhick <anarsoul@gmail.com>
Subject: [PATCH v4 10/10] [DO NOT MERGE] drivers: firmware: msgbox demo
Date: Mon, 19 Aug 2019 22:23:11 -0500
Message-Id: <20190820032311.6506-11-samuel@sholland.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190820032311.6506-1-samuel@sholland.org>
References: <20190820032311.6506-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_202320_010712_B735BF7C 
X-CRM114-Status: GOOD (  19.45  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.229 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Samuel Holland <samuel@sholland.org>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This driver provides a trivial mailbox client that can be used with the
mailbox-demo branch of https://github.com/crust-firmware/crust for
verifying the functionality of the sunxi-msgbox driver.

This is not a "real" driver, nor a "real" firmware protocol. This driver
is not intended to be merged. It is provided only as an example that
won't interfere with any other hardware.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi |  24 ++
 arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi  |  24 ++
 drivers/firmware/Kconfig                      |   6 +
 drivers/firmware/Makefile                     |   1 +
 drivers/firmware/sunxi_msgbox_demo.c          | 310 ++++++++++++++++++
 5 files changed, 365 insertions(+)
 create mode 100644 drivers/firmware/sunxi_msgbox_demo.c

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
index 428f539a091a..78315d5512db 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
@@ -121,6 +121,30 @@
 		};
 	};
 
+	demo_0 {
+		compatible = "allwinner,sunxi-msgbox-demo";
+		mboxes = <&msgbox 0>, <&msgbox 1>;
+		mbox-names = "tx", "rx";
+	};
+
+	demo_1 {
+		compatible = "allwinner,sunxi-msgbox-demo";
+		mboxes = <&msgbox 2>, <&msgbox 3>;
+		mbox-names = "tx", "rx";
+	};
+
+	demo_2 {
+		compatible = "allwinner,sunxi-msgbox-demo";
+		mboxes = <&msgbox 4>, <&msgbox 5>;
+		mbox-names = "tx", "rx";
+	};
+
+	demo_3 {
+		compatible = "allwinner,sunxi-msgbox-demo";
+		mboxes = <&msgbox 6>, <&msgbox 7>;
+		mbox-names = "tx", "rx";
+	};
+
 	de: display-engine {
 		compatible = "allwinner,sun50i-a64-display-engine";
 		allwinner,pipelines = <&mixer0>,
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi
index f002a496d7cb..5a2d85b7e0a1 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi
@@ -76,6 +76,30 @@
 		};
 	};
 
+	demo_0 {
+		compatible = "allwinner,sunxi-msgbox-demo";
+		mboxes = <&msgbox 0>, <&msgbox 1>;
+		mbox-names = "tx", "rx";
+	};
+
+	demo_1 {
+		compatible = "allwinner,sunxi-msgbox-demo";
+		mboxes = <&msgbox 2>, <&msgbox 3>;
+		mbox-names = "tx", "rx";
+	};
+
+	demo_2 {
+		compatible = "allwinner,sunxi-msgbox-demo";
+		mboxes = <&msgbox 4>, <&msgbox 5>;
+		mbox-names = "tx", "rx";
+	};
+
+	demo_3 {
+		compatible = "allwinner,sunxi-msgbox-demo";
+		mboxes = <&msgbox 6>, <&msgbox 7>;
+		mbox-names = "tx", "rx";
+	};
+
 	psci {
 		compatible = "arm,psci-0.2";
 		method = "smc";
diff --git a/drivers/firmware/Kconfig b/drivers/firmware/Kconfig
index ba8d3d0ef32c..e0f8f3c856c1 100644
--- a/drivers/firmware/Kconfig
+++ b/drivers/firmware/Kconfig
@@ -240,6 +240,12 @@ config QCOM_SCM_DOWNLOAD_MODE_DEFAULT
 
 	  Say Y here to enable "download mode" by default.
 
+config SUNXI_MSGBOX_DEMO
+	tristate "sunxi msgbox demo"
+	depends on MAILBOX
+	help
+	  Demo client for demo firmware to use in mailbox driver validation.
+
 config TI_SCI_PROTOCOL
 	tristate "TI System Control Interface (TISCI) Message Protocol"
 	depends on TI_MESSAGE_MANAGER
diff --git a/drivers/firmware/Makefile b/drivers/firmware/Makefile
index 3fa0b34eb72f..6f8e17a854b6 100644
--- a/drivers/firmware/Makefile
+++ b/drivers/firmware/Makefile
@@ -20,6 +20,7 @@ obj-$(CONFIG_QCOM_SCM)		+= qcom_scm.o
 obj-$(CONFIG_QCOM_SCM_64)	+= qcom_scm-64.o
 obj-$(CONFIG_QCOM_SCM_32)	+= qcom_scm-32.o
 CFLAGS_qcom_scm-32.o :=$(call as-instr,.arch armv7-a\n.arch_extension sec,-DREQUIRES_SEC=1) -march=armv7-a
+obj-$(CONFIG_SUNXI_MSGBOX_DEMO)	+= sunxi_msgbox_demo.o
 obj-$(CONFIG_TI_SCI_PROTOCOL)	+= ti_sci.o
 obj-$(CONFIG_TRUSTED_FOUNDATIONS) += trusted_foundations.o
 
diff --git a/drivers/firmware/sunxi_msgbox_demo.c b/drivers/firmware/sunxi_msgbox_demo.c
new file mode 100644
index 000000000000..9431b1ef1841
--- /dev/null
+++ b/drivers/firmware/sunxi_msgbox_demo.c
@@ -0,0 +1,310 @@
+// SPDX-License-Identifier: GPL-2.0
+//
+// Copyright (c) 2018-2019 Samuel Holland <samuel@sholland.org>
+
+#include <linux/completion.h>
+#include <linux/mailbox_client.h>
+#include <linux/module.h>
+#include <linux/of_platform.h>
+#include <linux/random.h>
+
+enum {
+	OP_MAGIC,
+	OP_VERSION,
+	OP_LOOPBACK,
+	OP_LOOPBACK_INVERTED,
+	OP_TIME_SECONDS,
+	OP_TIME_TICKS,
+	OP_DELAY_MICROS,
+	OP_DELAY_MILLIS,
+	OP_ADDR_SET_LO,
+	OP_ADDR_SET_HI,
+	OP_ADDR_READ,
+	OP_ADDR_WRITE,
+	OP_INVALID_1,
+	OP_INVALID_2,
+	OP_RESET = 16,
+};
+
+struct msgbox_demo {
+	struct mbox_chan *rx_chan;
+	struct mbox_chan *tx_chan;
+	struct mbox_client cl;
+	struct completion completion;
+	uint32_t request;
+	uint32_t response;
+	uint32_t address;
+	uint32_t value;
+};
+
+static void msgbox_demo_rx(struct mbox_client *cl, void *msg)
+{
+	struct msgbox_demo *demo = container_of(cl, struct msgbox_demo, cl);
+
+	demo->response = *(uint32_t *)msg;
+	complete(&demo->completion);
+}
+
+static int msgbox_demo_tx(struct msgbox_demo *demo, uint32_t request)
+{
+	unsigned long timeout = msecs_to_jiffies(10);
+	int ret;
+
+	demo->request  = request;
+	demo->response = 0;
+	reinit_completion(&demo->completion);
+
+	ret = mbox_send_message(demo->tx_chan, &demo->request);
+	if (ret < 0) {
+		dev_err(demo->cl.dev, "Failed to send request: %d\n", ret);
+		return ret;
+	}
+
+	if (wait_for_completion_timeout(&demo->completion, timeout))
+		return 0;
+
+	return -ETIMEDOUT;
+}
+
+static void msgbox_demo_do_operation(struct msgbox_demo *demo, uint16_t op)
+{
+	struct device *dev = demo->cl.dev;
+	uint16_t data = 0;
+	uint32_t resp = 0;
+	int exp = 0;
+	int ret;
+
+	switch (op) {
+	case OP_MAGIC:
+		resp = 0x1a2a3a4a;
+		break;
+	case OP_LOOPBACK:
+		data = get_random_u32();
+		resp = data;
+		break;
+	case OP_LOOPBACK_INVERTED:
+		data = get_random_u32();
+		resp = ~data;
+		break;
+	case OP_DELAY_MICROS:
+		data = 25000;
+		exp  = -ETIMEDOUT;
+		break;
+	case OP_DELAY_MILLIS:
+		data = 500;
+		exp  = -ETIMEDOUT;
+		break;
+	case OP_ADDR_SET_LO:
+		data = demo->address & 0xffff;
+		resp = demo->address;
+		break;
+	case OP_ADDR_SET_HI:
+		data = demo->address >> 16;
+		break;
+	case OP_ADDR_WRITE:
+		data = demo->value;
+		resp = demo->value;
+		break;
+	case OP_INVALID_1:
+	case OP_INVALID_2:
+		resp = -1U;
+		break;
+	case OP_RESET:
+		exp  = -ETIMEDOUT;
+		break;
+	}
+
+	dev_info(demo->cl.dev, "Sending opcode %d, data 0x%08x\n", op, data);
+	ret = msgbox_demo_tx(demo, op << 16 | data);
+
+	if (ret) {
+		/* Nothing was received. */
+		if (exp)
+			dev_info(dev, "No response received, as expected\n");
+		else
+			dev_err(dev, "Timeout receiving response\n");
+		return;
+	}
+
+	/* Something was received. */
+	if (exp)
+		dev_err(dev, "Unexpected response 0x%08x\n", demo->response);
+	else if (!resp)
+		dev_info(dev, "Received response 0x%08x\n", demo->response);
+	else if (demo->response == resp)
+		dev_info(dev, "Good response 0x%08x\n", resp);
+	else
+		dev_err(dev, "Expected 0x%08x, received 0x%08x\n",
+			     resp, demo->response);
+}
+
+ssize_t demo_address_show(struct device *dev, struct device_attribute *attr,
+			  char *buf)
+{
+	struct msgbox_demo *demo = dev_get_drvdata(dev);
+
+	return sprintf(buf, "%08x\n", demo->address);
+}
+
+static ssize_t demo_address_store(struct device *dev,
+				  struct device_attribute *attr,
+				  const char *buf, size_t count)
+{
+	struct msgbox_demo *demo = dev_get_drvdata(dev);
+	uint32_t val;
+
+	if (sscanf(buf, "%x", &val)) {
+		demo->address = val;
+		msgbox_demo_do_operation(demo, OP_ADDR_SET_HI);
+		msgbox_demo_do_operation(demo, OP_ADDR_SET_LO);
+		return count;
+	}
+
+	return 0;
+}
+
+ssize_t demo_value_show(struct device *dev, struct device_attribute *attr,
+			char *buf)
+{
+	struct msgbox_demo *demo = dev_get_drvdata(dev);
+
+	msgbox_demo_do_operation(demo, OP_ADDR_READ);
+	demo->value = demo->response;
+
+	return sprintf(buf, "%08x\n", demo->value);
+}
+
+static ssize_t demo_value_store(struct device *dev,
+				struct device_attribute *attr,
+				const char *buf, size_t count)
+{
+	struct msgbox_demo *demo = dev_get_drvdata(dev);
+	int16_t val;
+
+	if (sscanf(buf, "%hx", &val)) {
+		demo->value = (int32_t)val;
+		msgbox_demo_do_operation(demo, OP_ADDR_WRITE);
+		return count;
+	}
+
+	return 0;
+}
+
+static ssize_t demo_operation_store(struct device *dev,
+				    struct device_attribute *attr,
+				    const char *buf, size_t count)
+{
+	struct msgbox_demo *demo = dev_get_drvdata(dev);
+	uint16_t val;
+
+	if (sscanf(buf, "%hu", &val)) {
+		msgbox_demo_do_operation(demo, val);
+		return count;
+	}
+
+	return 0;
+}
+
+static DEVICE_ATTR(demo_address,   0644, demo_address_show, demo_address_store);
+static DEVICE_ATTR(demo_value,     0644, demo_value_show,   demo_value_store);
+static DEVICE_ATTR(demo_operation, 0200, NULL,              demo_operation_store);
+
+static int msgbox_demo_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct device_attribute *attr;
+	struct msgbox_demo *demo;
+	int ret;
+
+	demo = devm_kzalloc(dev, sizeof(*demo), GFP_KERNEL);
+	if (!demo)
+		return -ENOMEM;
+
+	demo->cl.dev         = dev;
+	demo->cl.rx_callback = msgbox_demo_rx;
+
+	if (of_get_property(dev->of_node, "mbox-names", NULL)) {
+		demo->rx_chan = mbox_request_channel_byname(&demo->cl, "rx");
+		if (IS_ERR(demo->rx_chan)) {
+			ret = PTR_ERR(demo->rx_chan);
+			dev_err(dev, "Failed to request rx mailbox channel\n");
+			goto err;
+		}
+		demo->tx_chan = mbox_request_channel_byname(&demo->cl, "tx");
+		if (IS_ERR(demo->tx_chan)) {
+			ret = PTR_ERR(demo->tx_chan);
+			dev_err(dev, "Failed to request tx mailbox channel\n");
+			goto err_free_rx_chan;
+		}
+	} else {
+		demo->rx_chan = mbox_request_channel(&demo->cl, 0);
+		demo->tx_chan = demo->rx_chan;
+		if (IS_ERR(demo->tx_chan)) {
+			ret = PTR_ERR(demo->tx_chan);
+			dev_err(dev, "Failed to request mailbox channel\n");
+			goto err;
+		}
+	}
+
+	attr = &dev_attr_demo_address;
+	ret = device_create_file(dev, attr);
+	if (ret)
+		goto err_creating_files;
+	attr = &dev_attr_demo_value;
+	ret = device_create_file(dev, attr);
+	if (ret)
+		goto err_creating_files;
+	attr = &dev_attr_demo_operation;
+	ret = device_create_file(dev, attr);
+	if (ret)
+		goto err_creating_files;
+
+	init_completion(&demo->completion);
+
+	platform_set_drvdata(pdev, demo);
+
+	msgbox_demo_do_operation(demo, OP_VERSION);
+
+	return 0;
+
+err_creating_files:
+	dev_err(dev, "Failed to create sysfs attribute %s: %d\n",
+		attr->attr.name, ret);
+	if (demo->tx_chan != demo->rx_chan)
+		mbox_free_channel(demo->tx_chan);
+err_free_rx_chan:
+	mbox_free_channel(demo->rx_chan);
+err:
+	return ret;
+}
+
+static int msgbox_demo_remove(struct platform_device *pdev)
+{
+	struct msgbox_demo *demo = platform_get_drvdata(pdev);
+
+	if (demo->tx_chan != demo->rx_chan)
+		mbox_free_channel(demo->tx_chan);
+	mbox_free_channel(demo->rx_chan);
+
+	return 0;
+}
+
+static const struct of_device_id msgbox_demo_of_match[] = {
+	{ .compatible = "allwinner,sunxi-msgbox-demo" },
+	{},
+};
+MODULE_DEVICE_TABLE(of, msgbox_demo_of_match);
+
+static struct platform_driver msgbox_demo_driver = {
+	.driver = {
+		.name = KBUILD_MODNAME,
+		.of_match_table = msgbox_demo_of_match,
+	},
+	.probe  = msgbox_demo_probe,
+	.remove = msgbox_demo_remove,
+};
+module_platform_driver(msgbox_demo_driver);
+
+MODULE_AUTHOR("Samuel Holland <samuel@sholland.org>");
+MODULE_DESCRIPTION("sunxi msgbox demo");
+MODULE_LICENSE("GPL v2");
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
