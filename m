Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3F7778066
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Jul 2019 18:14:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=EOntlnDDz5wNIWB1TRCOD4dLtHcjAiTMl2UWoHbvrAw=; b=A06
	H0SqIJBx128B/+TNQeuKoCcoUZhxGQRsUGwl9EK1esGkC63aqgDJhpXA9sAeWeJ6VcvcBjyypT2Qw
	uAn5xFdQAOyNB5oh+jbrr6Lt94Z67eWVgIQ509vKkIo10roRL/T1pqz1otd3pV4qhDa9Xm3jJJH2M
	LcMDftFKKz777yDprtYuR0+URE7vjIq2JpKb8jRoXTMK1Eo50s7pGSnkq0EoqtbrxgKesZW79k+Jg
	HY2reeB/GnsZxRgCaIzICXHf8mqJl0gsvMkGC6jQQyK0YmCZg6LO2ug4LULYSzgnsGdyejIu0lQ1/
	4+ddNG71y4vvyYT0PiWl+611KLdB/8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrloi-0004e3-Hl; Sun, 28 Jul 2019 16:14:36 +0000
Received: from conuserg-09.nifty.com ([210.131.2.76])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrloW-0004de-K2
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Jul 2019 16:14:27 +0000
Received: from grover.flets-west.jp (softbank126026094249.bbtec.net
 [126.26.94.249]) (authenticated)
 by conuserg-09.nifty.com with ESMTP id x6SGDuWi006387;
 Mon, 29 Jul 2019 01:13:56 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com x6SGDuWi006387
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1564330437;
 bh=F8yipN2J8Ahe/nIfNMzrQnTUVqFtg1wcPdej60225qQ=;
 h=From:To:Cc:Subject:Date:From;
 b=QRPYISr2P9pKG1ndbW7W0s2X16E12JCkXVBuWkK3EAVZtcBv++MAHkYdqSkzy4ovo
 Mj5nWlSqT2dMyTC4+m415xZj2S83fNaE5tJLwKHsO9xGaTF/KKwNdOwtsaXOr07rPq
 y7VKabq3uc8qHBUtL27AUjMjbkcokM7fYSo9sNMMHGwmqP8BUtKjoX+IzAWGOa/ocX
 cvJ+OleVm1uuTdtVf9UVP1ytVeGZRHFSzYJIJfIspG7uopZ0HQNahxjUBAmGGvAU++
 93N3ViRgARD7Dsur3GhNDGy+gQ0ku6tatFIgY5NJCLQrAQI0PGEUNIiWlvF+ahaR8p
 0g7RzffJioAyQ==
X-Nifty-SrcIP: [126.26.94.249]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: Mark Brown <broonie@kernel.org>, linux-spi@vger.kernel.org
Subject: [RFC PATCH] spi: tle620x: remove stale driver
Date: Mon, 29 Jul 2019 01:13:04 +0900
Message-Id: <20190728161304.32022-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_091424_997034_404B16A8 
X-CRM114-Status: GOOD (  12.58  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.76 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Arnd Bergmann <arnd@arndb.de>, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Ben Dooks <ben.dooks@codethink.co.uk>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This driver seems obsolte because this driver needs platform data
but no one in upstream passes it.

Link: https://lkml.org/lkml/2019/7/21/19
Cc: Ben Dooks <ben.dooks@codethink.co.uk>
Suggested-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 arch/arm/configs/s3c2410_defconfig |   1 -
 drivers/spi/Kconfig                |   9 -
 drivers/spi/Makefile               |   1 -
 drivers/spi/spi-tle62x0.c          | 317 -----------------------------
 include/linux/spi/tle62x0.h        |  12 --
 5 files changed, 340 deletions(-)
 delete mode 100644 drivers/spi/spi-tle62x0.c
 delete mode 100644 include/linux/spi/tle62x0.h

diff --git a/arch/arm/configs/s3c2410_defconfig b/arch/arm/configs/s3c2410_defconfig
index 95b5a4ffddea..45ee51f690be 100644
--- a/arch/arm/configs/s3c2410_defconfig
+++ b/arch/arm/configs/s3c2410_defconfig
@@ -270,7 +270,6 @@ CONFIG_SPI=y
 CONFIG_SPI_GPIO=m
 CONFIG_SPI_S3C24XX=m
 CONFIG_SPI_SPIDEV=m
-CONFIG_SPI_TLE62X0=m
 CONFIG_SENSORS_LM75=m
 CONFIG_SENSORS_LM78=m
 CONFIG_SENSORS_LM85=m
diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
index 3a1d8f1170de..38e0651946c1 100644
--- a/drivers/spi/Kconfig
+++ b/drivers/spi/Kconfig
@@ -900,15 +900,6 @@ config SPI_LOOPBACK_TEST
 	  primarily used for development of spi_master drivers
 	  and to detect regressions
 
-config SPI_TLE62X0
-	tristate "Infineon TLE62X0 (for power switching)"
-	depends on SYSFS
-	help
-	  SPI driver for Infineon TLE62X0 series line driver chips,
-	  such as the TLE6220, TLE6230 and TLE6240.  This provides a
-	  sysfs interface, with each line presented as a kind of GPIO
-	  exposing both switch control and diagnostic feedback.
-
 #
 # Add new SPI protocol masters in alphabetical order above this line
 #
diff --git a/drivers/spi/Makefile b/drivers/spi/Makefile
index 63dcab552bcb..9566d896a4c8 100644
--- a/drivers/spi/Makefile
+++ b/drivers/spi/Makefile
@@ -110,7 +110,6 @@ obj-$(CONFIG_SPI_SYNQUACER)		+= spi-synquacer.o
 obj-$(CONFIG_SPI_TEGRA114)		+= spi-tegra114.o
 obj-$(CONFIG_SPI_TEGRA20_SFLASH)	+= spi-tegra20-sflash.o
 obj-$(CONFIG_SPI_TEGRA20_SLINK)		+= spi-tegra20-slink.o
-obj-$(CONFIG_SPI_TLE62X0)		+= spi-tle62x0.o
 spi-thunderx-objs			:= spi-cavium.o spi-cavium-thunderx.o
 obj-$(CONFIG_SPI_THUNDERX)		+= spi-thunderx.o
 obj-$(CONFIG_SPI_TOPCLIFF_PCH)		+= spi-topcliff-pch.o
diff --git a/drivers/spi/spi-tle62x0.c b/drivers/spi/spi-tle62x0.c
deleted file mode 100644
index 60dc69a39ace..000000000000
--- a/drivers/spi/spi-tle62x0.c
+++ /dev/null
@@ -1,317 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * Support Infineon TLE62x0 driver chips
- *
- * Copyright (c) 2007 Simtec Electronics
- *	Ben Dooks, <ben@simtec.co.uk>
- */
-
-#include <linux/device.h>
-#include <linux/kernel.h>
-#include <linux/module.h>
-#include <linux/slab.h>
-
-#include <linux/spi/spi.h>
-#include <linux/spi/tle62x0.h>
-
-
-#define CMD_READ	0x00
-#define CMD_SET		0xff
-
-#define DIAG_NORMAL	0x03
-#define DIAG_OVERLOAD	0x02
-#define DIAG_OPEN	0x01
-#define DIAG_SHORTGND	0x00
-
-struct tle62x0_state {
-	struct spi_device	*us;
-	struct mutex		lock;
-	unsigned int		nr_gpio;
-	unsigned int		gpio_state;
-
-	unsigned char		tx_buff[4];
-	unsigned char		rx_buff[4];
-};
-
-static int to_gpio_num(struct device_attribute *attr);
-
-static inline int tle62x0_write(struct tle62x0_state *st)
-{
-	unsigned char *buff = st->tx_buff;
-	unsigned int gpio_state = st->gpio_state;
-
-	buff[0] = CMD_SET;
-
-	if (st->nr_gpio == 16) {
-		buff[1] = gpio_state >> 8;
-		buff[2] = gpio_state;
-	} else {
-		buff[1] = gpio_state;
-	}
-
-	dev_dbg(&st->us->dev, "buff %3ph\n", buff);
-
-	return spi_write(st->us, buff, (st->nr_gpio == 16) ? 3 : 2);
-}
-
-static inline int tle62x0_read(struct tle62x0_state *st)
-{
-	unsigned char *txbuff = st->tx_buff;
-	struct spi_transfer xfer = {
-		.tx_buf		= txbuff,
-		.rx_buf		= st->rx_buff,
-		.len		= (st->nr_gpio * 2) / 8,
-	};
-	struct spi_message msg;
-
-	txbuff[0] = CMD_READ;
-	txbuff[1] = 0x00;
-	txbuff[2] = 0x00;
-	txbuff[3] = 0x00;
-
-	spi_message_init(&msg);
-	spi_message_add_tail(&xfer, &msg);
-
-	return spi_sync(st->us, &msg);
-}
-
-static unsigned char *decode_fault(unsigned int fault_code)
-{
-	fault_code &= 3;
-
-	switch (fault_code) {
-	case DIAG_NORMAL:
-		return "N";
-	case DIAG_OVERLOAD:
-		return "V";
-	case DIAG_OPEN:
-		return "O";
-	case DIAG_SHORTGND:
-		return "G";
-	}
-
-	return "?";
-}
-
-static ssize_t tle62x0_status_show(struct device *dev,
-		struct device_attribute *attr, char *buf)
-{
-	struct tle62x0_state *st = dev_get_drvdata(dev);
-	char *bp = buf;
-	unsigned char *buff = st->rx_buff;
-	unsigned long fault = 0;
-	int ptr;
-	int ret;
-
-	mutex_lock(&st->lock);
-	ret = tle62x0_read(st);
-	dev_dbg(dev, "tle62x0_read() returned %d\n", ret);
-	if (ret < 0) {
-		mutex_unlock(&st->lock);
-		return ret;
-	}
-
-	for (ptr = 0; ptr < (st->nr_gpio * 2)/8; ptr += 1) {
-		fault <<= 8;
-		fault  |= ((unsigned long)buff[ptr]);
-
-		dev_dbg(dev, "byte %d is %02x\n", ptr, buff[ptr]);
-	}
-
-	for (ptr = 0; ptr < st->nr_gpio; ptr++) {
-		bp += sprintf(bp, "%s ", decode_fault(fault >> (ptr * 2)));
-	}
-
-	*bp++ = '\n';
-
-	mutex_unlock(&st->lock);
-	return bp - buf;
-}
-
-static DEVICE_ATTR(status_show, S_IRUGO, tle62x0_status_show, NULL);
-
-static ssize_t tle62x0_gpio_show(struct device *dev,
-		struct device_attribute *attr, char *buf)
-{
-	struct tle62x0_state *st = dev_get_drvdata(dev);
-	int gpio_num = to_gpio_num(attr);
-	int value;
-
-	mutex_lock(&st->lock);
-	value = (st->gpio_state >> gpio_num) & 1;
-	mutex_unlock(&st->lock);
-
-	return snprintf(buf, PAGE_SIZE, "%d", value);
-}
-
-static ssize_t tle62x0_gpio_store(struct device *dev,
-		struct device_attribute *attr,
-		const char *buf, size_t len)
-{
-	struct tle62x0_state *st = dev_get_drvdata(dev);
-	int gpio_num = to_gpio_num(attr);
-	unsigned long val;
-	char *endp;
-
-	val = simple_strtoul(buf, &endp, 0);
-	if (buf == endp)
-		return -EINVAL;
-
-	dev_dbg(dev, "setting gpio %d to %ld\n", gpio_num, val);
-
-	mutex_lock(&st->lock);
-
-	if (val)
-		st->gpio_state |= 1 << gpio_num;
-	else
-		st->gpio_state &= ~(1 << gpio_num);
-
-	tle62x0_write(st);
-	mutex_unlock(&st->lock);
-
-	return len;
-}
-
-static DEVICE_ATTR(gpio1, S_IWUSR|S_IRUGO,
-		tle62x0_gpio_show, tle62x0_gpio_store);
-static DEVICE_ATTR(gpio2, S_IWUSR|S_IRUGO,
-		tle62x0_gpio_show, tle62x0_gpio_store);
-static DEVICE_ATTR(gpio3, S_IWUSR|S_IRUGO,
-		tle62x0_gpio_show, tle62x0_gpio_store);
-static DEVICE_ATTR(gpio4, S_IWUSR|S_IRUGO,
-		tle62x0_gpio_show, tle62x0_gpio_store);
-static DEVICE_ATTR(gpio5, S_IWUSR|S_IRUGO,
-		tle62x0_gpio_show, tle62x0_gpio_store);
-static DEVICE_ATTR(gpio6, S_IWUSR|S_IRUGO,
-		tle62x0_gpio_show, tle62x0_gpio_store);
-static DEVICE_ATTR(gpio7, S_IWUSR|S_IRUGO,
-		tle62x0_gpio_show, tle62x0_gpio_store);
-static DEVICE_ATTR(gpio8, S_IWUSR|S_IRUGO,
-		tle62x0_gpio_show, tle62x0_gpio_store);
-static DEVICE_ATTR(gpio9, S_IWUSR|S_IRUGO,
-		tle62x0_gpio_show, tle62x0_gpio_store);
-static DEVICE_ATTR(gpio10, S_IWUSR|S_IRUGO,
-		tle62x0_gpio_show, tle62x0_gpio_store);
-static DEVICE_ATTR(gpio11, S_IWUSR|S_IRUGO,
-		tle62x0_gpio_show, tle62x0_gpio_store);
-static DEVICE_ATTR(gpio12, S_IWUSR|S_IRUGO,
-		tle62x0_gpio_show, tle62x0_gpio_store);
-static DEVICE_ATTR(gpio13, S_IWUSR|S_IRUGO,
-		tle62x0_gpio_show, tle62x0_gpio_store);
-static DEVICE_ATTR(gpio14, S_IWUSR|S_IRUGO,
-		tle62x0_gpio_show, tle62x0_gpio_store);
-static DEVICE_ATTR(gpio15, S_IWUSR|S_IRUGO,
-		tle62x0_gpio_show, tle62x0_gpio_store);
-static DEVICE_ATTR(gpio16, S_IWUSR|S_IRUGO,
-		tle62x0_gpio_show, tle62x0_gpio_store);
-
-static struct device_attribute *gpio_attrs[] = {
-	[0]		= &dev_attr_gpio1,
-	[1]		= &dev_attr_gpio2,
-	[2]		= &dev_attr_gpio3,
-	[3]		= &dev_attr_gpio4,
-	[4]		= &dev_attr_gpio5,
-	[5]		= &dev_attr_gpio6,
-	[6]		= &dev_attr_gpio7,
-	[7]		= &dev_attr_gpio8,
-	[8]		= &dev_attr_gpio9,
-	[9]		= &dev_attr_gpio10,
-	[10]		= &dev_attr_gpio11,
-	[11]		= &dev_attr_gpio12,
-	[12]		= &dev_attr_gpio13,
-	[13]		= &dev_attr_gpio14,
-	[14]		= &dev_attr_gpio15,
-	[15]		= &dev_attr_gpio16
-};
-
-static int to_gpio_num(struct device_attribute *attr)
-{
-	int ptr;
-
-	for (ptr = 0; ptr < ARRAY_SIZE(gpio_attrs); ptr++) {
-		if (gpio_attrs[ptr] == attr)
-			return ptr;
-	}
-
-	return -1;
-}
-
-static int tle62x0_probe(struct spi_device *spi)
-{
-	struct tle62x0_state *st;
-	struct tle62x0_pdata *pdata;
-	int ptr;
-	int ret;
-
-	pdata = dev_get_platdata(&spi->dev);
-	if (pdata == NULL) {
-		dev_err(&spi->dev, "no device data specified\n");
-		return -EINVAL;
-	}
-
-	st = kzalloc(sizeof(struct tle62x0_state), GFP_KERNEL);
-	if (st == NULL)
-		return -ENOMEM;
-
-	st->us = spi;
-	st->nr_gpio = pdata->gpio_count;
-	st->gpio_state = pdata->init_state;
-
-	mutex_init(&st->lock);
-
-	ret = device_create_file(&spi->dev, &dev_attr_status_show);
-	if (ret) {
-		dev_err(&spi->dev, "cannot create status attribute\n");
-		goto err_status;
-	}
-
-	for (ptr = 0; ptr < pdata->gpio_count; ptr++) {
-		ret = device_create_file(&spi->dev, gpio_attrs[ptr]);
-		if (ret) {
-			dev_err(&spi->dev, "cannot create gpio attribute\n");
-			goto err_gpios;
-		}
-	}
-
-	/* tle62x0_write(st); */
-	spi_set_drvdata(spi, st);
-	return 0;
-
- err_gpios:
-	while (--ptr >= 0)
-		device_remove_file(&spi->dev, gpio_attrs[ptr]);
-
-	device_remove_file(&spi->dev, &dev_attr_status_show);
-
- err_status:
-	kfree(st);
-	return ret;
-}
-
-static int tle62x0_remove(struct spi_device *spi)
-{
-	struct tle62x0_state *st = spi_get_drvdata(spi);
-	int ptr;
-
-	for (ptr = 0; ptr < st->nr_gpio; ptr++)
-		device_remove_file(&spi->dev, gpio_attrs[ptr]);
-
-	device_remove_file(&spi->dev, &dev_attr_status_show);
-	kfree(st);
-	return 0;
-}
-
-static struct spi_driver tle62x0_driver = {
-	.driver = {
-		.name	= "tle62x0",
-	},
-	.probe		= tle62x0_probe,
-	.remove		= tle62x0_remove,
-};
-
-module_spi_driver(tle62x0_driver);
-
-MODULE_AUTHOR("Ben Dooks <ben@simtec.co.uk>");
-MODULE_DESCRIPTION("TLE62x0 SPI driver");
-MODULE_LICENSE("GPL v2");
-MODULE_ALIAS("spi:tle62x0");
diff --git a/include/linux/spi/tle62x0.h b/include/linux/spi/tle62x0.h
deleted file mode 100644
index 5d74b9fffca2..000000000000
--- a/include/linux/spi/tle62x0.h
+++ /dev/null
@@ -1,12 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-/*
- * tle62x0.h - platform glue to Infineon TLE62x0 driver chips
- *
- * Copyright 2007 Simtec Electronics
- *	Ben Dooks <ben@simtec.co.uk>
-*/
-
-struct tle62x0_pdata {
-	unsigned int		init_state;
-	unsigned int		gpio_count;
-};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
