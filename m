Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C871875B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 11:01:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bxFtHrfTj8MBOTss93GS06wXYaa6zKf6fQ24OGLP6hg=; b=FdNQKY/ujQljKl
	fscTmS7kY/YZNltNUIoiYmJBOoSqmb6EV6G6Yt1CNMOd57TznX812dY8Mpz6l85PxGEZRRP3jDDfn
	J1uBmup1Tf5VmlPd9FIo4JypPX8PMrjlXrI+13HkE5m4GJIbZzHXrnTn3tE3ik/rPR9FhSKjR4nCU
	EmAkr5adnTyhHLPj9Px/m2L/bQpVw7lzwm6yEyDGUPbIq3kz00gVrlHRsBL+mNl+eCRRpM4BfO9Vf
	w9rnhvRIiOInEnzaj845MZloe/gvGi76sU7qnUl/L4fAgBB6zxC9oq1iDNo+iMJigqMdbGkide0Qj
	2AxRzs7Lr44FdeEPk9QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOevt-0002TM-88; Thu, 09 May 2019 09:01:41 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOeta-0007wO-6w
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 08:59:21 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x498w5j3020266; Thu, 9 May 2019 10:59:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=C+Pu7A5SASucva3qHosHHUdz1bLZoluYnVjrxRYsQxg=;
 b=xAS7Vms8ls7Q3jYZeqFiV5JLYQI1IX40Za3Vz/wZk0smaMM2gb53n29uf+NaXhN23Wp/
 jZ7I8NsG3gBUnzIE8wkPIw/f3RTPW1dpl0XSsDnxVVDof7UmNzdXaVfevlwBQF0Ibl8X
 LE3WKqyjHQxs/sp60AwZY0mhKx8CpS7BX6tZJgDh5Irf0SyhUkZzbChussjFSiPiGxjn
 zHNANSaG7JcQLw0lF3cz4P3qmnvcQQloCL82XB37WEBz6zrk4xhzT1gy5ZxFrf0kXQH6
 zRtK89vpOI8/Q3BlkvdXrT/lBlr7mPbGPd2QYfd2HIW6kQi3n8onaH56mowL9rSzAcyU Nw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2scfv2gj3e-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Thu, 09 May 2019 10:59:13 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id C372542;
 Thu,  9 May 2019 08:59:09 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas22.st.com [10.75.90.92])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 2C492153E;
 Thu,  9 May 2019 08:59:09 +0000 (GMT)
Received: from SAFEX1HUBCAS24.st.com (10.75.90.95) by Safex1hubcas22.st.com
 (10.75.90.92) with Microsoft SMTP Server (TLS) id 14.3.439.0; Thu, 9 May 2019
 10:59:09 +0200
Received: from localhost (10.201.20.5) by webmail-ga.st.com (10.75.90.48) with
 Microsoft SMTP Server (TLS) id 14.3.439.0;
 Thu, 9 May 2019 10:59:08 +0200
From: Amelie Delaunay <amelie.delaunay@st.com>
To: Lee Jones <lee.jones@linaro.org>, Linus Walleij <linus.walleij@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, "Maxime
 Coquelin" <mcoquelin.stm32@gmail.com>
Subject: [PATCH v6 4/9] pinctrl: Add STMFX GPIO expander Pinctrl/GPIO driver
Date: Thu, 9 May 2019 10:58:51 +0200
Message-ID: <1557392336-28239-5-git-send-email-amelie.delaunay@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1557392336-28239-1-git-send-email-amelie.delaunay@st.com>
References: <1557392336-28239-1-git-send-email-amelie.delaunay@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.20.5]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-09_02:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_015918_755170_30B42611 
X-CRM114-Status: GOOD (  22.92  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Amelie Delaunay <amelie.delaunay@st.com>,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds pinctrl/GPIO driver for STMicroelectronics
Multi-Function eXpander (STMFX) GPIO expander.
STMFX is an I2C slave controller, offering up to 24 GPIOs.
The driver relies on generic pin config interface to configure the GPIOs.

Signed-off-by: Amelie Delaunay <amelie.delaunay@st.com>
---
 drivers/pinctrl/Kconfig         |  12 +
 drivers/pinctrl/Makefile        |   1 +
 drivers/pinctrl/pinctrl-stmfx.c | 820 ++++++++++++++++++++++++++++++++++++++++
 3 files changed, 833 insertions(+)
 create mode 100644 drivers/pinctrl/pinctrl-stmfx.c

diff --git a/drivers/pinctrl/Kconfig b/drivers/pinctrl/Kconfig
index 2764d71..ab2eab7 100644
--- a/drivers/pinctrl/Kconfig
+++ b/drivers/pinctrl/Kconfig
@@ -265,6 +265,18 @@ config PINCTRL_ST
 	select PINCONF
 	select GPIOLIB_IRQCHIP
 
+config PINCTRL_STMFX
+	tristate "STMicroelectronics STMFX GPIO expander pinctrl driver"
+	select GENERIC_PINCONF
+	select GPIOLIB_IRQCHIP
+	select MFD_STMFX
+	help
+	  Driver for STMicroelectronics Multi-Function eXpander (STMFX)
+	  GPIO expander.
+	  This provides a GPIO interface supporting inputs and outputs,
+	  and configuring push-pull, open-drain, and can also be used as
+	  interrupt-controller.
+
 config PINCTRL_U300
 	bool "U300 pin controller driver"
 	depends on ARCH_U300
diff --git a/drivers/pinctrl/Makefile b/drivers/pinctrl/Makefile
index 712184b..c188e0f 100644
--- a/drivers/pinctrl/Makefile
+++ b/drivers/pinctrl/Makefile
@@ -40,6 +40,7 @@ obj-$(CONFIG_PINCTRL_LANTIQ)	+= pinctrl-lantiq.o
 obj-$(CONFIG_PINCTRL_LPC18XX)	+= pinctrl-lpc18xx.o
 obj-$(CONFIG_PINCTRL_TB10X)	+= pinctrl-tb10x.o
 obj-$(CONFIG_PINCTRL_ST) 	+= pinctrl-st.o
+obj-$(CONFIG_PINCTRL_STMFX) 	+= pinctrl-stmfx.o
 obj-$(CONFIG_PINCTRL_ZYNQ)	+= pinctrl-zynq.o
 obj-$(CONFIG_PINCTRL_INGENIC)	+= pinctrl-ingenic.o
 obj-$(CONFIG_PINCTRL_RK805)	+= pinctrl-rk805.o
diff --git a/drivers/pinctrl/pinctrl-stmfx.c b/drivers/pinctrl/pinctrl-stmfx.c
new file mode 100644
index 0000000..bcd8126
--- /dev/null
+++ b/drivers/pinctrl/pinctrl-stmfx.c
@@ -0,0 +1,820 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Driver for STMicroelectronics Multi-Function eXpander (STMFX) GPIO expander
+ *
+ * Copyright (C) 2019 STMicroelectronics
+ * Author(s): Amelie Delaunay <amelie.delaunay@st.com>.
+ */
+#include <linux/gpio/driver.h>
+#include <linux/interrupt.h>
+#include <linux/mfd/stmfx.h>
+#include <linux/module.h>
+#include <linux/platform_device.h>
+#include <linux/pinctrl/pinconf.h>
+#include <linux/pinctrl/pinmux.h>
+
+#include "core.h"
+#include "pinctrl-utils.h"
+
+/* GPIOs expander */
+/* GPIO_STATE1 0x10, GPIO_STATE2 0x11, GPIO_STATE3 0x12 */
+#define STMFX_REG_GPIO_STATE		STMFX_REG_GPIO_STATE1 /* R */
+/* GPIO_DIR1 0x60, GPIO_DIR2 0x61, GPIO_DIR3 0x63 */
+#define STMFX_REG_GPIO_DIR		STMFX_REG_GPIO_DIR1 /* RW */
+/* GPIO_TYPE1 0x64, GPIO_TYPE2 0x65, GPIO_TYPE3 0x66 */
+#define STMFX_REG_GPIO_TYPE		STMFX_REG_GPIO_TYPE1 /* RW */
+/* GPIO_PUPD1 0x68, GPIO_PUPD2 0x69, GPIO_PUPD3 0x6A */
+#define STMFX_REG_GPIO_PUPD		STMFX_REG_GPIO_PUPD1 /* RW */
+/* GPO_SET1 0x6C, GPO_SET2 0x6D, GPO_SET3 0x6E */
+#define STMFX_REG_GPO_SET		STMFX_REG_GPO_SET1 /* RW */
+/* GPO_CLR1 0x70, GPO_CLR2 0x71, GPO_CLR3 0x72 */
+#define STMFX_REG_GPO_CLR		STMFX_REG_GPO_CLR1 /* RW */
+/* IRQ_GPI_SRC1 0x48, IRQ_GPI_SRC2 0x49, IRQ_GPI_SRC3 0x4A */
+#define STMFX_REG_IRQ_GPI_SRC		STMFX_REG_IRQ_GPI_SRC1 /* RW */
+/* IRQ_GPI_EVT1 0x4C, IRQ_GPI_EVT2 0x4D, IRQ_GPI_EVT3 0x4E */
+#define STMFX_REG_IRQ_GPI_EVT		STMFX_REG_IRQ_GPI_EVT1 /* RW */
+/* IRQ_GPI_TYPE1 0x50, IRQ_GPI_TYPE2 0x51, IRQ_GPI_TYPE3 0x52 */
+#define STMFX_REG_IRQ_GPI_TYPE		STMFX_REG_IRQ_GPI_TYPE1 /* RW */
+/* IRQ_GPI_PENDING1 0x0C, IRQ_GPI_PENDING2 0x0D, IRQ_GPI_PENDING3 0x0E*/
+#define STMFX_REG_IRQ_GPI_PENDING	STMFX_REG_IRQ_GPI_PENDING1 /* R */
+/* IRQ_GPI_ACK1 0x54, IRQ_GPI_ACK2 0x55, IRQ_GPI_ACK3 0x56 */
+#define STMFX_REG_IRQ_GPI_ACK		STMFX_REG_IRQ_GPI_ACK1 /* RW */
+
+#define NR_GPIO_REGS			3
+#define NR_GPIOS_PER_REG		8
+#define get_reg(offset)			((offset) / NR_GPIOS_PER_REG)
+#define get_shift(offset)		((offset) % NR_GPIOS_PER_REG)
+#define get_mask(offset)		(BIT(get_shift(offset)))
+
+/*
+ * STMFX pinctrl can have up to 24 pins if STMFX other functions are not used.
+ * Pins availability is managed thanks to gpio-ranges property.
+ */
+static const struct pinctrl_pin_desc stmfx_pins[] = {
+	PINCTRL_PIN(0, "gpio0"),
+	PINCTRL_PIN(1, "gpio1"),
+	PINCTRL_PIN(2, "gpio2"),
+	PINCTRL_PIN(3, "gpio3"),
+	PINCTRL_PIN(4, "gpio4"),
+	PINCTRL_PIN(5, "gpio5"),
+	PINCTRL_PIN(6, "gpio6"),
+	PINCTRL_PIN(7, "gpio7"),
+	PINCTRL_PIN(8, "gpio8"),
+	PINCTRL_PIN(9, "gpio9"),
+	PINCTRL_PIN(10, "gpio10"),
+	PINCTRL_PIN(11, "gpio11"),
+	PINCTRL_PIN(12, "gpio12"),
+	PINCTRL_PIN(13, "gpio13"),
+	PINCTRL_PIN(14, "gpio14"),
+	PINCTRL_PIN(15, "gpio15"),
+	PINCTRL_PIN(16, "agpio0"),
+	PINCTRL_PIN(17, "agpio1"),
+	PINCTRL_PIN(18, "agpio2"),
+	PINCTRL_PIN(19, "agpio3"),
+	PINCTRL_PIN(20, "agpio4"),
+	PINCTRL_PIN(21, "agpio5"),
+	PINCTRL_PIN(22, "agpio6"),
+	PINCTRL_PIN(23, "agpio7"),
+};
+
+struct stmfx_pinctrl {
+	struct device *dev;
+	struct stmfx *stmfx;
+	struct pinctrl_dev *pctl_dev;
+	struct pinctrl_desc pctl_desc;
+	struct gpio_chip gpio_chip;
+	struct irq_chip irq_chip;
+	struct mutex lock; /* IRQ bus lock */
+	unsigned long gpio_valid_mask;
+	/* Cache of IRQ_GPI_* registers for bus_lock */
+	u8 irq_gpi_src[NR_GPIO_REGS];
+	u8 irq_gpi_type[NR_GPIO_REGS];
+	u8 irq_gpi_evt[NR_GPIO_REGS];
+	u8 irq_toggle_edge[NR_GPIO_REGS];
+#ifdef CONFIG_PM
+	/* Backup of GPIO_* registers for suspend/resume */
+	u8 bkp_gpio_state[NR_GPIO_REGS];
+	u8 bkp_gpio_dir[NR_GPIO_REGS];
+	u8 bkp_gpio_type[NR_GPIO_REGS];
+	u8 bkp_gpio_pupd[NR_GPIO_REGS];
+#endif
+};
+
+static int stmfx_gpio_get(struct gpio_chip *gc, unsigned int offset)
+{
+	struct stmfx_pinctrl *pctl = gpiochip_get_data(gc);
+	u32 reg = STMFX_REG_GPIO_STATE + get_reg(offset);
+	u32 mask = get_mask(offset);
+	u32 value;
+	int ret;
+
+	ret = regmap_read(pctl->stmfx->map, reg, &value);
+
+	return ret ? ret : !!(value & mask);
+}
+
+static void stmfx_gpio_set(struct gpio_chip *gc, unsigned int offset, int value)
+{
+	struct stmfx_pinctrl *pctl = gpiochip_get_data(gc);
+	u32 reg = value ? STMFX_REG_GPO_SET : STMFX_REG_GPO_CLR;
+	u32 mask = get_mask(offset);
+
+	regmap_write_bits(pctl->stmfx->map, reg + get_reg(offset),
+			  mask, mask);
+}
+
+static int stmfx_gpio_get_direction(struct gpio_chip *gc, unsigned int offset)
+{
+	struct stmfx_pinctrl *pctl = gpiochip_get_data(gc);
+	u32 reg = STMFX_REG_GPIO_DIR + get_reg(offset);
+	u32 mask = get_mask(offset);
+	u32 val;
+	int ret;
+
+	ret = regmap_read(pctl->stmfx->map, reg, &val);
+	/*
+	 * On stmfx, gpio pins direction is (0)input, (1)output.
+	 * .get_direction returns 0=out, 1=in
+	 */
+
+	return ret ? ret : !(val & mask);
+}
+
+static int stmfx_gpio_direction_input(struct gpio_chip *gc, unsigned int offset)
+{
+	struct stmfx_pinctrl *pctl = gpiochip_get_data(gc);
+	u32 reg = STMFX_REG_GPIO_DIR + get_reg(offset);
+	u32 mask = get_mask(offset);
+
+	return regmap_write_bits(pctl->stmfx->map, reg, mask, 0);
+}
+
+static int stmfx_gpio_direction_output(struct gpio_chip *gc,
+				       unsigned int offset, int value)
+{
+	struct stmfx_pinctrl *pctl = gpiochip_get_data(gc);
+	u32 reg = STMFX_REG_GPIO_DIR + get_reg(offset);
+	u32 mask = get_mask(offset);
+
+	stmfx_gpio_set(gc, offset, value);
+
+	return regmap_write_bits(pctl->stmfx->map, reg, mask, mask);
+}
+
+static int stmfx_pinconf_get_pupd(struct stmfx_pinctrl *pctl,
+				  unsigned int offset)
+{
+	u32 reg = STMFX_REG_GPIO_PUPD + get_reg(offset);
+	u32 pupd, mask = get_mask(offset);
+	int ret;
+
+	ret = regmap_read(pctl->stmfx->map, reg, &pupd);
+	if (ret)
+		return ret;
+
+	return !!(pupd & mask);
+}
+
+static int stmfx_pinconf_set_pupd(struct stmfx_pinctrl *pctl,
+				  unsigned int offset, u32 pupd)
+{
+	u32 reg = STMFX_REG_GPIO_PUPD + get_reg(offset);
+	u32 mask = get_mask(offset);
+
+	return regmap_write_bits(pctl->stmfx->map, reg, mask, pupd ? mask : 0);
+}
+
+static int stmfx_pinconf_get_type(struct stmfx_pinctrl *pctl,
+				  unsigned int offset)
+{
+	u32 reg = STMFX_REG_GPIO_TYPE + get_reg(offset);
+	u32 type, mask = get_mask(offset);
+	int ret;
+
+	ret = regmap_read(pctl->stmfx->map, reg, &type);
+	if (ret)
+		return ret;
+
+	return !!(type & mask);
+}
+
+static int stmfx_pinconf_set_type(struct stmfx_pinctrl *pctl,
+				  unsigned int offset, u32 type)
+{
+	u32 reg = STMFX_REG_GPIO_TYPE + get_reg(offset);
+	u32 mask = get_mask(offset);
+
+	return regmap_write_bits(pctl->stmfx->map, reg, mask, type ? mask : 0);
+}
+
+static int stmfx_pinconf_get(struct pinctrl_dev *pctldev,
+			     unsigned int pin, unsigned long *config)
+{
+	struct stmfx_pinctrl *pctl = pinctrl_dev_get_drvdata(pctldev);
+	u32 param = pinconf_to_config_param(*config);
+	struct pinctrl_gpio_range *range;
+	u32 dir, type, pupd;
+	u32 arg = 0;
+	int ret;
+
+	range = pinctrl_find_gpio_range_from_pin_nolock(pctldev, pin);
+	if (!range)
+		return -EINVAL;
+
+	dir = stmfx_gpio_get_direction(&pctl->gpio_chip, pin);
+	if (dir < 0)
+		return dir;
+	type = stmfx_pinconf_get_type(pctl, pin);
+	if (type < 0)
+		return type;
+	pupd = stmfx_pinconf_get_pupd(pctl, pin);
+	if (pupd < 0)
+		return pupd;
+
+	switch (param) {
+	case PIN_CONFIG_BIAS_DISABLE:
+		if ((!dir && (!type || !pupd)) || (dir && !type))
+			arg = 1;
+		break;
+	case PIN_CONFIG_BIAS_PULL_DOWN:
+		if (dir && type && !pupd)
+			arg = 1;
+		break;
+	case PIN_CONFIG_BIAS_PULL_UP:
+		if (type && pupd)
+			arg = 1;
+		break;
+	case PIN_CONFIG_DRIVE_OPEN_DRAIN:
+		if ((!dir && type) || (dir && !type))
+			arg = 1;
+		break;
+	case PIN_CONFIG_DRIVE_PUSH_PULL:
+		if ((!dir && !type) || (dir && type))
+			arg = 1;
+		break;
+	case PIN_CONFIG_OUTPUT:
+		if (dir)
+			return -EINVAL;
+
+		ret = stmfx_gpio_get(&pctl->gpio_chip, pin);
+		if (ret < 0)
+			return ret;
+
+		arg = ret;
+		break;
+	default:
+		return -ENOTSUPP;
+	}
+
+	*config = pinconf_to_config_packed(param, arg);
+
+	return 0;
+}
+
+static int stmfx_pinconf_set(struct pinctrl_dev *pctldev, unsigned int pin,
+			     unsigned long *configs, unsigned int num_configs)
+{
+	struct stmfx_pinctrl *pctl = pinctrl_dev_get_drvdata(pctldev);
+	struct pinctrl_gpio_range *range;
+	enum pin_config_param param;
+	u32 arg;
+	int dir, i, ret;
+
+	range = pinctrl_find_gpio_range_from_pin_nolock(pctldev, pin);
+	if (!range) {
+		dev_err(pctldev->dev, "pin %d is not available\n", pin);
+		return -EINVAL;
+	}
+
+	dir = stmfx_gpio_get_direction(&pctl->gpio_chip, pin);
+	if (dir < 0)
+		return dir;
+
+	for (i = 0; i < num_configs; i++) {
+		param = pinconf_to_config_param(configs[i]);
+		arg = pinconf_to_config_argument(configs[i]);
+
+		switch (param) {
+		case PIN_CONFIG_BIAS_PULL_PIN_DEFAULT:
+		case PIN_CONFIG_BIAS_DISABLE:
+		case PIN_CONFIG_BIAS_PULL_DOWN:
+			ret = stmfx_pinconf_set_pupd(pctl, pin, 0);
+			if (ret)
+				return ret;
+			break;
+		case PIN_CONFIG_BIAS_PULL_UP:
+			ret = stmfx_pinconf_set_pupd(pctl, pin, 1);
+			if (ret)
+				return ret;
+			break;
+		case PIN_CONFIG_DRIVE_OPEN_DRAIN:
+			if (!dir)
+				ret = stmfx_pinconf_set_type(pctl, pin, 1);
+			else
+				ret = stmfx_pinconf_set_type(pctl, pin, 0);
+			if (ret)
+				return ret;
+			break;
+		case PIN_CONFIG_DRIVE_PUSH_PULL:
+			if (!dir)
+				ret = stmfx_pinconf_set_type(pctl, pin, 0);
+			else
+				ret = stmfx_pinconf_set_type(pctl, pin, 1);
+			if (ret)
+				return ret;
+			break;
+		case PIN_CONFIG_OUTPUT:
+			ret = stmfx_gpio_direction_output(&pctl->gpio_chip,
+							  pin, arg);
+			if (ret)
+				return ret;
+			break;
+		default:
+			return -ENOTSUPP;
+		}
+	}
+
+	return 0;
+}
+
+static void stmfx_pinconf_dbg_show(struct pinctrl_dev *pctldev,
+				   struct seq_file *s, unsigned int offset)
+{
+	struct stmfx_pinctrl *pctl = pinctrl_dev_get_drvdata(pctldev);
+	struct pinctrl_gpio_range *range;
+	int dir, type, pupd, val;
+
+	range = pinctrl_find_gpio_range_from_pin_nolock(pctldev, offset);
+	if (!range)
+		return;
+
+	dir = stmfx_gpio_get_direction(&pctl->gpio_chip, offset);
+	if (dir < 0)
+		return;
+	type = stmfx_pinconf_get_type(pctl, offset);
+	if (type < 0)
+		return;
+	pupd = stmfx_pinconf_get_pupd(pctl, offset);
+	if (pupd < 0)
+		return;
+	val = stmfx_gpio_get(&pctl->gpio_chip, offset);
+	if (val < 0)
+		return;
+
+	if (!dir) {
+		seq_printf(s, "output %s ", val ? "high" : "low");
+		if (type)
+			seq_printf(s, "open drain %s internal pull-up ",
+				   pupd ? "with" : "without");
+		else
+			seq_puts(s, "push pull no pull ");
+	} else {
+		seq_printf(s, "input %s ", val ? "high" : "low");
+		if (type)
+			seq_printf(s, "with internal pull-%s ",
+				   pupd ? "up" : "down");
+		else
+			seq_printf(s, "%s ", pupd ? "floating" : "analog");
+	}
+}
+
+static const struct pinconf_ops stmfx_pinconf_ops = {
+	.pin_config_get		= stmfx_pinconf_get,
+	.pin_config_set		= stmfx_pinconf_set,
+	.pin_config_dbg_show	= stmfx_pinconf_dbg_show,
+};
+
+static int stmfx_pinctrl_get_groups_count(struct pinctrl_dev *pctldev)
+{
+	return 0;
+}
+
+static const char *stmfx_pinctrl_get_group_name(struct pinctrl_dev *pctldev,
+						unsigned int selector)
+{
+	return NULL;
+}
+
+static int stmfx_pinctrl_get_group_pins(struct pinctrl_dev *pctldev,
+					unsigned int selector,
+					const unsigned int **pins,
+					unsigned int *num_pins)
+{
+	return -ENOTSUPP;
+}
+
+static const struct pinctrl_ops stmfx_pinctrl_ops = {
+	.get_groups_count = stmfx_pinctrl_get_groups_count,
+	.get_group_name = stmfx_pinctrl_get_group_name,
+	.get_group_pins = stmfx_pinctrl_get_group_pins,
+	.dt_node_to_map = pinconf_generic_dt_node_to_map_pin,
+	.dt_free_map = pinctrl_utils_free_map,
+};
+
+static void stmfx_pinctrl_irq_mask(struct irq_data *data)
+{
+	struct gpio_chip *gpio_chip = irq_data_get_irq_chip_data(data);
+	struct stmfx_pinctrl *pctl = gpiochip_get_data(gpio_chip);
+	u32 reg = get_reg(data->hwirq);
+	u32 mask = get_mask(data->hwirq);
+
+	pctl->irq_gpi_src[reg] &= ~mask;
+}
+
+static void stmfx_pinctrl_irq_unmask(struct irq_data *data)
+{
+	struct gpio_chip *gpio_chip = irq_data_get_irq_chip_data(data);
+	struct stmfx_pinctrl *pctl = gpiochip_get_data(gpio_chip);
+	u32 reg = get_reg(data->hwirq);
+	u32 mask = get_mask(data->hwirq);
+
+	pctl->irq_gpi_src[reg] |= mask;
+}
+
+static int stmfx_pinctrl_irq_set_type(struct irq_data *data, unsigned int type)
+{
+	struct gpio_chip *gpio_chip = irq_data_get_irq_chip_data(data);
+	struct stmfx_pinctrl *pctl = gpiochip_get_data(gpio_chip);
+	u32 reg = get_reg(data->hwirq);
+	u32 mask = get_mask(data->hwirq);
+
+	if (type & IRQ_TYPE_NONE)
+		return -EINVAL;
+
+	if (type & IRQ_TYPE_EDGE_BOTH) {
+		pctl->irq_gpi_evt[reg] |= mask;
+		irq_set_handler_locked(data, handle_edge_irq);
+	} else {
+		pctl->irq_gpi_evt[reg] &= ~mask;
+		irq_set_handler_locked(data, handle_level_irq);
+	}
+
+	if ((type & IRQ_TYPE_EDGE_RISING) || (type & IRQ_TYPE_LEVEL_HIGH))
+		pctl->irq_gpi_type[reg] |= mask;
+	else
+		pctl->irq_gpi_type[reg] &= ~mask;
+
+	/*
+	 * In case of (type & IRQ_TYPE_EDGE_BOTH), we need to know current
+	 * GPIO value to set the right edge trigger. But in atomic context
+	 * here we can't access registers over I2C. That's why (type &
+	 * IRQ_TYPE_EDGE_BOTH) will be managed in .irq_sync_unlock.
+	 */
+
+	if ((type & IRQ_TYPE_EDGE_BOTH) == IRQ_TYPE_EDGE_BOTH)
+		pctl->irq_toggle_edge[reg] |= mask;
+	else
+		pctl->irq_toggle_edge[reg] &= mask;
+
+	return 0;
+}
+
+static void stmfx_pinctrl_irq_bus_lock(struct irq_data *data)
+{
+	struct gpio_chip *gpio_chip = irq_data_get_irq_chip_data(data);
+	struct stmfx_pinctrl *pctl = gpiochip_get_data(gpio_chip);
+
+	mutex_lock(&pctl->lock);
+}
+
+static void stmfx_pinctrl_irq_bus_sync_unlock(struct irq_data *data)
+{
+	struct gpio_chip *gpio_chip = irq_data_get_irq_chip_data(data);
+	struct stmfx_pinctrl *pctl = gpiochip_get_data(gpio_chip);
+	u32 reg = get_reg(data->hwirq);
+	u32 mask = get_mask(data->hwirq);
+
+	/*
+	 * In case of IRQ_TYPE_EDGE_BOTH), read the current GPIO value
+	 * (this couldn't be done in .irq_set_type because of atomic context)
+	 * to set the right irq trigger type.
+	 */
+	if (pctl->irq_toggle_edge[reg] & mask) {
+		if (stmfx_gpio_get(gpio_chip, data->hwirq))
+			pctl->irq_gpi_type[reg] &= ~mask;
+		else
+			pctl->irq_gpi_type[reg] |= mask;
+	}
+
+	regmap_bulk_write(pctl->stmfx->map, STMFX_REG_IRQ_GPI_EVT,
+			  pctl->irq_gpi_evt, NR_GPIO_REGS);
+	regmap_bulk_write(pctl->stmfx->map, STMFX_REG_IRQ_GPI_TYPE,
+			  pctl->irq_gpi_type, NR_GPIO_REGS);
+	regmap_bulk_write(pctl->stmfx->map, STMFX_REG_IRQ_GPI_SRC,
+			  pctl->irq_gpi_src, NR_GPIO_REGS);
+
+	mutex_unlock(&pctl->lock);
+}
+
+static void stmfx_pinctrl_irq_toggle_trigger(struct stmfx_pinctrl *pctl,
+					     unsigned int offset)
+{
+	u32 reg = get_reg(offset);
+	u32 mask = get_mask(offset);
+	int val;
+
+	if (!(pctl->irq_toggle_edge[reg] & mask))
+		return;
+
+	val = stmfx_gpio_get(&pctl->gpio_chip, offset);
+	if (val < 0)
+		return;
+
+	if (val) {
+		pctl->irq_gpi_type[reg] &= mask;
+		regmap_write_bits(pctl->stmfx->map,
+				  STMFX_REG_IRQ_GPI_TYPE + reg,
+				  mask, 0);
+
+	} else {
+		pctl->irq_gpi_type[reg] |= mask;
+		regmap_write_bits(pctl->stmfx->map,
+				  STMFX_REG_IRQ_GPI_TYPE + reg,
+				  mask, mask);
+	}
+}
+
+static irqreturn_t stmfx_pinctrl_irq_thread_fn(int irq, void *dev_id)
+{
+	struct stmfx_pinctrl *pctl = (struct stmfx_pinctrl *)dev_id;
+	struct gpio_chip *gc = &pctl->gpio_chip;
+	u8 pending[NR_GPIO_REGS];
+	u8 src[NR_GPIO_REGS] = {0, 0, 0};
+	unsigned long n, status;
+	int ret;
+
+	ret = regmap_bulk_read(pctl->stmfx->map, STMFX_REG_IRQ_GPI_PENDING,
+			       &pending, NR_GPIO_REGS);
+	if (ret)
+		return IRQ_NONE;
+
+	regmap_bulk_write(pctl->stmfx->map, STMFX_REG_IRQ_GPI_SRC,
+			  src, NR_GPIO_REGS);
+
+	status = *(unsigned long *)pending;
+	for_each_set_bit(n, &status, gc->ngpio) {
+		handle_nested_irq(irq_find_mapping(gc->irq.domain, n));
+		stmfx_pinctrl_irq_toggle_trigger(pctl, n);
+	}
+
+	regmap_bulk_write(pctl->stmfx->map, STMFX_REG_IRQ_GPI_SRC,
+			  pctl->irq_gpi_src, NR_GPIO_REGS);
+
+	return IRQ_HANDLED;
+}
+
+static int stmfx_pinctrl_gpio_function_enable(struct stmfx_pinctrl *pctl)
+{
+	struct pinctrl_gpio_range *gpio_range;
+	struct pinctrl_dev *pctl_dev = pctl->pctl_dev;
+	u32 func = STMFX_FUNC_GPIO;
+
+	pctl->gpio_valid_mask = GENMASK(15, 0);
+
+	gpio_range = pinctrl_find_gpio_range_from_pin(pctl_dev, 16);
+	if (gpio_range) {
+		func |= STMFX_FUNC_ALTGPIO_LOW;
+		pctl->gpio_valid_mask |= GENMASK(19, 16);
+	}
+
+	gpio_range = pinctrl_find_gpio_range_from_pin(pctl_dev, 20);
+	if (gpio_range) {
+		func |= STMFX_FUNC_ALTGPIO_HIGH;
+		pctl->gpio_valid_mask |= GENMASK(23, 20);
+	}
+
+	return stmfx_function_enable(pctl->stmfx, func);
+}
+
+static int stmfx_pinctrl_probe(struct platform_device *pdev)
+{
+	struct stmfx *stmfx = dev_get_drvdata(pdev->dev.parent);
+	struct device_node *np = pdev->dev.of_node;
+	struct stmfx_pinctrl *pctl;
+	u32 n;
+	int irq, ret;
+
+	pctl = devm_kzalloc(stmfx->dev, sizeof(*pctl), GFP_KERNEL);
+	if (!pctl)
+		return -ENOMEM;
+
+	platform_set_drvdata(pdev, pctl);
+
+	pctl->dev = &pdev->dev;
+	pctl->stmfx = stmfx;
+
+	if (!of_find_property(np, "gpio-ranges", NULL)) {
+		dev_err(pctl->dev, "missing required gpio-ranges property\n");
+		return -EINVAL;
+	}
+
+	irq = platform_get_irq(pdev, 0);
+	if (irq <= 0) {
+		dev_err(pctl->dev, "failed to get irq\n");
+		return -ENXIO;
+	}
+
+	mutex_init(&pctl->lock);
+
+	/* Register pin controller */
+	pctl->pctl_desc.name = "stmfx-pinctrl";
+	pctl->pctl_desc.pctlops = &stmfx_pinctrl_ops;
+	pctl->pctl_desc.confops = &stmfx_pinconf_ops;
+	pctl->pctl_desc.pins = stmfx_pins;
+	pctl->pctl_desc.npins = ARRAY_SIZE(stmfx_pins);
+	pctl->pctl_desc.owner = THIS_MODULE;
+
+	ret = devm_pinctrl_register_and_init(pctl->dev, &pctl->pctl_desc,
+					     pctl, &pctl->pctl_dev);
+	if (ret) {
+		dev_err(pctl->dev, "pinctrl registration failed\n");
+		return ret;
+	}
+
+	ret = pinctrl_enable(pctl->pctl_dev);
+	if (ret) {
+		dev_err(pctl->dev, "pinctrl enable failed\n");
+		return ret;
+	}
+
+	/* Register gpio controller */
+	pctl->gpio_chip.label = "stmfx-gpio";
+	pctl->gpio_chip.parent = pctl->dev;
+	pctl->gpio_chip.get_direction = stmfx_gpio_get_direction;
+	pctl->gpio_chip.direction_input = stmfx_gpio_direction_input;
+	pctl->gpio_chip.direction_output = stmfx_gpio_direction_output;
+	pctl->gpio_chip.get = stmfx_gpio_get;
+	pctl->gpio_chip.set = stmfx_gpio_set;
+	pctl->gpio_chip.set_config = gpiochip_generic_config;
+	pctl->gpio_chip.base = -1;
+	pctl->gpio_chip.ngpio = pctl->pctl_desc.npins;
+	pctl->gpio_chip.can_sleep = true;
+	pctl->gpio_chip.of_node = np;
+	pctl->gpio_chip.need_valid_mask = true;
+
+	ret = devm_gpiochip_add_data(pctl->dev, &pctl->gpio_chip, pctl);
+	if (ret) {
+		dev_err(pctl->dev, "gpio_chip registration failed\n");
+		return ret;
+	}
+
+	ret = stmfx_pinctrl_gpio_function_enable(pctl);
+	if (ret)
+		return ret;
+
+	pctl->irq_chip.name = dev_name(pctl->dev);
+	pctl->irq_chip.irq_mask = stmfx_pinctrl_irq_mask;
+	pctl->irq_chip.irq_unmask = stmfx_pinctrl_irq_unmask;
+	pctl->irq_chip.irq_set_type = stmfx_pinctrl_irq_set_type;
+	pctl->irq_chip.irq_bus_lock = stmfx_pinctrl_irq_bus_lock;
+	pctl->irq_chip.irq_bus_sync_unlock = stmfx_pinctrl_irq_bus_sync_unlock;
+	for_each_clear_bit(n, &pctl->gpio_valid_mask, pctl->gpio_chip.ngpio)
+		clear_bit(n, pctl->gpio_chip.valid_mask);
+
+	ret = gpiochip_irqchip_add_nested(&pctl->gpio_chip, &pctl->irq_chip,
+					  0, handle_bad_irq, IRQ_TYPE_NONE);
+	if (ret) {
+		dev_err(pctl->dev, "cannot add irqchip to gpiochip\n");
+		return ret;
+	}
+
+	ret = devm_request_threaded_irq(pctl->dev, irq, NULL,
+					stmfx_pinctrl_irq_thread_fn,
+					IRQF_ONESHOT,
+					pctl->irq_chip.name, pctl);
+	if (ret) {
+		dev_err(pctl->dev, "cannot request irq%d\n", irq);
+		return ret;
+	}
+
+	gpiochip_set_nested_irqchip(&pctl->gpio_chip, &pctl->irq_chip, irq);
+
+	dev_info(pctl->dev,
+		 "%ld GPIOs available\n", hweight_long(pctl->gpio_valid_mask));
+
+	return 0;
+}
+
+static int stmfx_pinctrl_remove(struct platform_device *pdev)
+{
+	struct stmfx *stmfx = dev_get_platdata(&pdev->dev);
+
+	return stmfx_function_disable(stmfx,
+				      STMFX_FUNC_GPIO |
+				      STMFX_FUNC_ALTGPIO_LOW |
+				      STMFX_FUNC_ALTGPIO_HIGH);
+}
+
+#ifdef CONFIG_PM_SLEEP
+static int stmfx_pinctrl_backup_regs(struct stmfx_pinctrl *pctl)
+{
+	int ret;
+
+	ret = regmap_bulk_read(pctl->stmfx->map, STMFX_REG_GPIO_STATE,
+			       &pctl->bkp_gpio_state, NR_GPIO_REGS);
+	if (ret)
+		return ret;
+	ret = regmap_bulk_read(pctl->stmfx->map, STMFX_REG_GPIO_DIR,
+			       &pctl->bkp_gpio_dir, NR_GPIO_REGS);
+	if (ret)
+		return ret;
+	ret = regmap_bulk_read(pctl->stmfx->map, STMFX_REG_GPIO_TYPE,
+			       &pctl->bkp_gpio_type, NR_GPIO_REGS);
+	if (ret)
+		return ret;
+	ret = regmap_bulk_read(pctl->stmfx->map, STMFX_REG_GPIO_PUPD,
+			       &pctl->bkp_gpio_pupd, NR_GPIO_REGS);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static int stmfx_pinctrl_restore_regs(struct stmfx_pinctrl *pctl)
+{
+	int ret;
+
+	ret = regmap_bulk_write(pctl->stmfx->map, STMFX_REG_GPIO_DIR,
+				pctl->bkp_gpio_dir, NR_GPIO_REGS);
+	if (ret)
+		return ret;
+	ret = regmap_bulk_write(pctl->stmfx->map, STMFX_REG_GPIO_TYPE,
+				pctl->bkp_gpio_type, NR_GPIO_REGS);
+	if (ret)
+		return ret;
+	ret = regmap_bulk_write(pctl->stmfx->map, STMFX_REG_GPIO_PUPD,
+				pctl->bkp_gpio_pupd, NR_GPIO_REGS);
+	if (ret)
+		return ret;
+	ret = regmap_bulk_write(pctl->stmfx->map, STMFX_REG_GPO_SET,
+				pctl->bkp_gpio_state, NR_GPIO_REGS);
+	if (ret)
+		return ret;
+	ret = regmap_bulk_write(pctl->stmfx->map, STMFX_REG_IRQ_GPI_EVT,
+				pctl->irq_gpi_evt, NR_GPIO_REGS);
+	if (ret)
+		return ret;
+	ret = regmap_bulk_write(pctl->stmfx->map, STMFX_REG_IRQ_GPI_TYPE,
+				pctl->irq_gpi_type, NR_GPIO_REGS);
+	if (ret)
+		return ret;
+	ret = regmap_bulk_write(pctl->stmfx->map, STMFX_REG_IRQ_GPI_SRC,
+				pctl->irq_gpi_src, NR_GPIO_REGS);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static int stmfx_pinctrl_suspend(struct device *dev)
+{
+	struct stmfx_pinctrl *pctl = dev_get_drvdata(dev);
+	int ret;
+
+	ret = stmfx_pinctrl_backup_regs(pctl);
+	if (ret) {
+		dev_err(pctl->dev, "registers backup failure\n");
+		return ret;
+	}
+
+	return 0;
+}
+
+static int stmfx_pinctrl_resume(struct device *dev)
+{
+	struct stmfx_pinctrl *pctl = dev_get_drvdata(dev);
+	int ret;
+
+	ret = stmfx_pinctrl_restore_regs(pctl);
+	if (ret) {
+		dev_err(pctl->dev, "registers restoration failure\n");
+		return ret;
+	}
+
+	return 0;
+}
+#endif
+
+static SIMPLE_DEV_PM_OPS(stmfx_pinctrl_dev_pm_ops,
+			 stmfx_pinctrl_suspend, stmfx_pinctrl_resume);
+
+static const struct of_device_id stmfx_pinctrl_of_match[] = {
+	{ .compatible = "st,stmfx-0300-pinctrl", },
+	{},
+};
+MODULE_DEVICE_TABLE(of, stmfx_pinctrl_of_match);
+
+static struct platform_driver stmfx_pinctrl_driver = {
+	.driver = {
+		.name = "stmfx-pinctrl",
+		.of_match_table = stmfx_pinctrl_of_match,
+		.pm = &stmfx_pinctrl_dev_pm_ops,
+	},
+	.probe = stmfx_pinctrl_probe,
+	.remove = stmfx_pinctrl_remove,
+};
+module_platform_driver(stmfx_pinctrl_driver);
+
+MODULE_DESCRIPTION("STMFX pinctrl/GPIO driver");
+MODULE_AUTHOR("Amelie Delaunay <amelie.delaunay@st.com>");
+MODULE_LICENSE("GPL v2");
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
