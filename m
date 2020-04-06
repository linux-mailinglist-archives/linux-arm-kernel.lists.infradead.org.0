Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCAEF19F984
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 17:59:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RklyyOtLM7zYUlPk5KJMj3SmnEoFPnGaG28AcwWex7o=; b=QAhQYRrh1aDXDj
	CayVnwUacnrtE11kTY1uXlBel2KW3h85V67t0h431fGQWPrrPb5L7ARGa5T3ilCicrCbdjfKUYWdn
	jI7RE2w3aWZUj+Pyh3VlTXnX+23n3HLa7i9wIU79k2mzMIsSlVbAKUXlUXS3W+d6TFQp6hYk08jhL
	6LgSw+SP3VxGTeJmtgFbDs/a17aKxz2UxdsZHtiv6MPZoo/j6NDt4EAvanytNjtwfEgFLhzSNwI6V
	ftSeHvkL/+7yNN1lN7JVBABGq1GCw8/cCzAC3gOKwZ491PbPwxy55+FhrMa350VDXqHhuoF66HgMO
	7g5Z/TX6c6ADV38qko5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLU9m-00009l-UK; Mon, 06 Apr 2020 15:59:27 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLU8s-0007om-Bb
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 15:58:32 +0000
X-Originating-IP: 78.193.40.249
Received: from localhost (unknown [78.193.40.249])
 (Authenticated sender: kamel.bouhara@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 0936F240012;
 Mon,  6 Apr 2020 15:58:27 +0000 (UTC)
From: Kamel Bouhara <kamel.bouhara@bootlin.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 3/3] Input: add a rotary encoders based on counter devices
Date: Mon,  6 Apr 2020 17:58:06 +0200
Message-Id: <20200406155806.1295169-4-kamel.bouhara@bootlin.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200406155806.1295169-1-kamel.bouhara@bootlin.com>
References: <20200406155806.1295169-1-kamel.bouhara@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_085830_670599_E9D3FDA7 
X-CRM114-Status: GOOD (  17.62  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Kamel Bouhara <kamel.bouhara@bootlin.com>, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-input@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This add support for rotary encoders that use the counter subsystem to
expose an input device.

Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
---
 drivers/input/misc/Kconfig                  |   9 ++
 drivers/input/misc/Makefile                 |   1 +
 drivers/input/misc/rotary_encoder_counter.c | 152 ++++++++++++++++++++
 3 files changed, 162 insertions(+)
 create mode 100644 drivers/input/misc/rotary_encoder_counter.c

diff --git a/drivers/input/misc/Kconfig b/drivers/input/misc/Kconfig
index 7e2e658d551c..b91b4257e337 100644
--- a/drivers/input/misc/Kconfig
+++ b/drivers/input/misc/Kconfig
@@ -619,6 +619,15 @@ config INPUT_GPIO_ROTARY_ENCODER
 	  To compile this driver as a module, choose M here: the
 	  module will be called rotary_encoder.
 
+config INPUT_COUNTER_ROTARY_ENCODER
+       tristate "Rotary encoders connected to counter devices"
+       depends on COUNTER || COMPILE_TEST
+       help
+         Say Y here to add support for rotary encoders connected to counter devices.
+
+         To compile this driver as a module, choose M here: the
+         module will be called rotary_encoder_counter.
+
 config INPUT_RB532_BUTTON
 	tristate "Mikrotik Routerboard 532 button interface"
 	depends on MIKROTIK_RB532
diff --git a/drivers/input/misc/Makefile b/drivers/input/misc/Makefile
index 8fd187f314bd..74bbe6d400a3 100644
--- a/drivers/input/misc/Makefile
+++ b/drivers/input/misc/Makefile
@@ -68,6 +68,7 @@ obj-$(CONFIG_INPUT_REGULATOR_HAPTIC)	+= regulator-haptic.o
 obj-$(CONFIG_INPUT_RETU_PWRBUTTON)	+= retu-pwrbutton.o
 obj-$(CONFIG_INPUT_AXP20X_PEK)		+= axp20x-pek.o
 obj-$(CONFIG_INPUT_GPIO_ROTARY_ENCODER)	+= rotary_encoder.o
+obj-$(CONFIG_INPUT_COUNTER_ROTARY_ENCODER) += rotary_encoder_counter.o
 obj-$(CONFIG_INPUT_RK805_PWRKEY)	+= rk805-pwrkey.o
 obj-$(CONFIG_INPUT_SC27XX_VIBRA)	+= sc27xx-vibra.o
 obj-$(CONFIG_INPUT_SGI_BTNS)		+= sgi_btns.o
diff --git a/drivers/input/misc/rotary_encoder_counter.c b/drivers/input/misc/rotary_encoder_counter.c
new file mode 100644
index 000000000000..20017308f4f3
--- /dev/null
+++ b/drivers/input/misc/rotary_encoder_counter.c
@@ -0,0 +1,152 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * A rotary encoder driver using the generic counter interface.
+ *
+ * Author: Kamel Bouhara <kamel.bouhara@bootlin.com>
+ *
+ */
+
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/interrupt.h>
+#include <linux/input.h>
+#include <linux/device.h>
+#include <linux/platform_device.h>
+#include <linux/counter.h>
+#include <linux/slab.h>
+#include <linux/of.h>
+#include <linux/pm.h>
+#include <linux/property.h>
+
+#define MAX_STEPS	24
+
+struct rotary_encoder {
+	struct input_dev *input;
+	u32 steps;
+	u32 axis;
+	bool relative_axis;
+	bool rollover;
+	long last_pos;
+	struct counter_device *counter;
+};
+
+static void rotary_encoder_poll(struct input_dev *input)
+{
+	struct rotary_encoder *encoder = input_get_drvdata(input);
+	long rotary_pos;
+	int ret;
+
+	ret = counter_count_get(encoder->counter, &rotary_pos);
+	if (ret)
+		return;
+
+	if (encoder->relative_axis) {
+		input_report_rel(encoder->input, encoder->axis,
+				 rotary_pos - encoder->last_pos);
+	} else {
+		if (encoder->rollover)
+			rotary_pos %= encoder->steps;
+		input_report_abs(encoder->input, encoder->axis, rotary_pos);
+	}
+
+	encoder->last_pos = rotary_pos;
+	input_sync(encoder->input);
+}
+
+static int rotary_encoder_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct counter_device *counter;
+	struct rotary_encoder *encoder;
+	struct input_dev *input;
+	int qdec_mode;
+	u32 poll_interval;
+	int err;
+
+	encoder = devm_kzalloc(dev, sizeof(struct rotary_encoder), GFP_KERNEL);
+	if (!encoder)
+		return -ENOMEM;
+
+	encoder->rollover =
+		device_property_read_bool(dev, "rollover");
+
+	device_property_read_u32(dev, "steps", &encoder->steps);
+
+	device_property_read_u32(dev, "linux-axis", &encoder->axis);
+
+	encoder->relative_axis =
+		device_property_read_bool(dev, "relative-axis");
+
+	counter = devm_counter_get(dev);
+	if (IS_ERR(counter))
+		return PTR_ERR(counter);
+
+	if (device_property_read_u32(dev, "qdec-mode", &qdec_mode)) {
+		dev_err(dev, "Invalid or missing quadrature mode\n");
+		return -EINVAL;
+	}
+
+	err = counter_function_set(counter, qdec_mode);
+	if (err) {
+		dev_err(dev, "Failed to set quadrature mode %d\n",
+			qdec_mode);
+		return err;
+	}
+
+	input = devm_input_allocate_device(dev);
+	if (!input)
+		return -ENOMEM;
+
+	input_set_drvdata(input, encoder);
+	encoder->input = input;
+	encoder->counter = counter;
+	encoder->steps = (!encoder->steps) ? MAX_STEPS : encoder->steps;
+	input->name = pdev->name;
+	input->id.bustype = BUS_HOST;
+	input->dev.parent = dev;
+
+	if (encoder->relative_axis)
+		input_set_capability(input, EV_REL, encoder->axis);
+	else
+		input_set_abs_params(input, encoder->axis, 0,
+				     encoder->steps, 0, 1);
+
+	err = input_setup_polling(input, rotary_encoder_poll);
+	if (err)
+		return err;
+
+	if (!device_property_read_u32(dev, "poll-interval",
+				      &poll_interval))
+		input_set_poll_interval(input, poll_interval);
+
+	err = input_register_device(input);
+	if (err) {
+		dev_err(dev, "failed to register device, err=%d\n", err);
+		return err;
+	}
+
+	platform_set_drvdata(pdev, encoder);
+
+	return 0;
+}
+
+#ifdef CONFIG_OF
+static const struct of_device_id rotary_encoder_of_match[] = {
+	{ .compatible = "rotary-encoder-counter", },
+	{ /* sentinel */ },
+};
+MODULE_DEVICE_TABLE(of, rotary_encoder_of_match);
+#endif
+
+static struct platform_driver rotary_encoder_driver = {
+	.probe		= rotary_encoder_probe,
+	.driver		= {
+		.name	= "rotary-encoder-counter",
+		.of_match_table = of_match_ptr(rotary_encoder_of_match),
+	}
+};
+module_platform_driver(rotary_encoder_driver);
+
+MODULE_DESCRIPTION("Counter rotary encoder driver");
+MODULE_AUTHOR("Kamel Bouhara <kamel.bouhara@bootlin.com>");
+MODULE_LICENSE("GPL v2");
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
