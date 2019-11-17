Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 215E3FFA47
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 Nov 2019 15:28:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ckAAIiR7Wfrfq4mp1A9myQCowW6UeMiN6f5baHdXPSQ=; b=USasRA39HHVWMM
	xJvY52bV9x17BrH2gDNk63xfgK2MeaDgMlPg9gNs9U9Ra3rZ1XIeEesQFwGEY/cL7DY+bapik5yg3
	DaJG0z/WXB4cCqIpNBe5UnJiR2xVcClPKCxxzHIFUq3KKdYcfEB+iIbx5oKDBmEoMagDYmaVFuZD5
	JfIS5Ew7+sXSC5kzDfyPenXj8anIZqSKZPvL/ZU5FOahH4T71B76vOliQc+zdH9uPs8Gcwr4S1Tjp
	ol7VjugAF48FPnRLsasb66ooY7j39nICIoRg2UWklxNPmg3brlPy05Xkd57XeO4fEu2N8zC66B++2
	hnEu0NMHGNyyD9Aq3S1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWLXO-0004fr-2B; Sun, 17 Nov 2019 14:28:26 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWLWX-00041X-Ix; Sun, 17 Nov 2019 14:27:37 +0000
Received: by mail-wr1-x442.google.com with SMTP id q15so3600529wrw.7;
 Sun, 17 Nov 2019 06:27:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ve2fXqp9qpFMQB4/VdPHGPuiL06CfVsauAv8Rfi8BjU=;
 b=GgrNh29AGFFzQGzRy3wwHFifNx5oDkYUUaexSufunPuCJqMye5NiWFwLrbGIDIFPkL
 pTc4pk9auYPd/CMZ9b2bnmnLt2hznVDruszWfLnwD8vv1PzTPCDhMYuEwX07IuMVJnJB
 L5i2JQbNIL7ZgFCE0qP9g8Lzz1nQP/wm5E797JOxIw9dwoQoJIikFe1+8/vPwx2XZRau
 /FMvmpty6g8hlVk1setlunJmCiv/KGES0N/u/nPEcMrFeryY/STVXLaICBf/B/0QrvbD
 TUkFscj8IXRUyEktagHhrUpcBhWPrSHletl8aFE198vM6Mw/dVnjg+vSxI+0sgQjglfr
 953w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ve2fXqp9qpFMQB4/VdPHGPuiL06CfVsauAv8Rfi8BjU=;
 b=U0tBWXn9GQeekIBLBHw28WGnu1JI51e2tcSn0LgQMocsi76qJ2/4ye1R5nIKgGt1d6
 58NvKhdbGQMcm6/EWgY6eK1yQUb9zFE9hUca/cCIliBO+6Ydk3ChezLlKQ/4oO9iJDBK
 Ip468d2eG/IRZ7Xd6p8B8S/cTu9DH6hlmUPoArF3rqNmX+mmEhaV+AJ7ibYGjRj3OJQu
 srrleF2C5eks6IQhxevIXBu+Wtr8e5dpiQHCxflmyWlggpQgK7IlIY4LvIohQCWeykne
 OqdrK0SYqg1oTAXVcXD7Q/xY5cCMJwoI2H518pbNyc05JYonpUqKYGLOfBQZmr2tKTno
 8RkA==
X-Gm-Message-State: APjAAAUyNqInNxMrhH56pZmeHP+GocItsbmqEZI5Ge30YZ+4zZ98xFP4
 sdg5mtFf0LOqFGG6QlAikTX/xuXd
X-Google-Smtp-Source: APXvYqzij50l+yYxCXIJW+PEk3gmm7pRuxMwkDd2ecWuujpRR1CGvhsoaGiA7PkWOs0a3c57/lX7jQ==
X-Received: by 2002:a5d:444a:: with SMTP id x10mr6216686wrr.228.1574000851396; 
 Sun, 17 Nov 2019 06:27:31 -0800 (PST)
Received: from localhost.localdomain
 (p200300F1371CB100428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:371c:b100:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id y6sm19298404wrw.6.2019.11.17.06.27.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 17 Nov 2019 06:27:30 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
 linux-mmc@vger.kernel.org, robh+dt@kernel.org, ulf.hansson@linaro.org
Subject: [PATCH v2 2/2] mmc: host: meson-mx-sdhc: new driver for the Amlogic
 Meson SDHC host
Date: Sun, 17 Nov 2019 15:27:16 +0100
Message-Id: <20191117142716.154764-3-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191117142716.154764-1-martin.blumenstingl@googlemail.com>
References: <20191117142716.154764-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_062733_839837_E049B226 
X-CRM114-Status: GOOD (  16.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, jianxin.pan@amlogic.com,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, yinxin_1989@aliyun.com,
 linux-arm-kernel@lists.infradead.org, lnykww@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The SDHC MMC host controller on Amlogic SoCs provides an eMMC and MMC
card interface with 1/4/8-bit bus width.
It supports eMMC spec 4.4x/4.5x including HS200 (up to 100MHz clock).

The public S805 datasheet [0] contains a short documentation about the
registers. Unfortunately it does not describe how to use the registers
to make the hardware work. Thus this driver is based on reading (and
understanding) the Amlogic 3.10 GPL kernel code.

Some hardware details are not easy to see. Jianxin Pan was kind enough
to answer my questions:
The hardware has built-in busy timeout support. The maximum timeout is
30 seconds. This is only documented in Amlogic's internal
documentation.

The controller only works with very specific clock configurations. The
details are not part of the public datasheet. In my own words the
supported configurations are:
- 399.812kHz:	clkin =  850MHz div = 2126 sd_rx_phase = 63
- 1MHz:		clkin =  850MHz div = 850  sd_rx_phase = 55
- 5.986MHz:	clkin =  850MHz div = 142  sd_rx_phase = 24
- 25MHz:	clkin =  850MHz div = 34   sd_rx_phase = 15
- 47.222MHz:	clkin =  850MHz div = 18   sd_rx_phase = 11/15 (SDR50/HS)
- 53.125MHz:	clkin =  850MHz div = 16   sd_rx_phase = (tuning)
- 70.833MHz:	clkin =  850MHz div = 12   sd_rx_phase = (tuning)
- 85MHz:	clkin =  850MHz div = 10   sd_rx_phase = (tuning)
- 94.44MHz:	clkin =  850MHz div = 9    sd_rx_phase = (tuning)
- 106.25MHz:	clkin =  850MHz div = 8    sd_rx_phase = (tuning)
- 127.5MHz:     clkin = 1275MHz div = 10   sd_rx_phase = (tuning)
- 141.667MHz:   clkin =  850MHz div = 6    sd_rx_phase = (tuning)
- 159.375MHz:	clkin = 1275MHz div = 8    sd_rx_phase = (tuning)
- 212.5MHz:	clkin = 1275MHz div = 6    sd_rx_phase = (tuning)
- (sd_tx_phase is always 1, 94.44MHz is not listed in the datasheet
   but this is what the 3.10 BSP kernel on Odroid-C1 actually uses)

NOTE: CMD23 support is disabled for now because it results in command
timeouts and thus decreases read performance.

Tested-by: Wei Wang <lnykww@gmail.com>
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/mmc/host/Kconfig         |   14 +
 drivers/mmc/host/Makefile        |    1 +
 drivers/mmc/host/meson-mx-sdhc.c | 1174 ++++++++++++++++++++++++++++++
 3 files changed, 1189 insertions(+)
 create mode 100644 drivers/mmc/host/meson-mx-sdhc.c

diff --git a/drivers/mmc/host/Kconfig b/drivers/mmc/host/Kconfig
index 49ea02c467bf..292d1dde9331 100644
--- a/drivers/mmc/host/Kconfig
+++ b/drivers/mmc/host/Kconfig
@@ -393,6 +393,20 @@ config MMC_MESON_GX
 
 	  If you have a controller with this interface, say Y here.
 
+config MMC_MESON_MX_SDHC
+	tristate "Amlogic Meson SDHC Host Controller support"
+	depends on (ARM && ARCH_MESON) || COMPILE_TEST
+	depends on COMMON_CLK
+	depends on OF
+	help
+	  This selects support for the SDHC Host Controller on
+	  Amlogic Meson6, Meson8, Meson8b and Meson8m2 SoCs.
+	  The controller supports the SD/SDIO Spec 3.x and eMMC Spec 4.5x
+	  with 1, 4, and 8 bit bus widths.
+
+	  If you have a controller with this interface, say Y or M here.
+	  If unsure, say N.
+
 config MMC_MESON_MX_SDIO
 	tristate "Amlogic Meson6/Meson8/Meson8b SD/MMC Host Controller support"
 	depends on ARCH_MESON || COMPILE_TEST
diff --git a/drivers/mmc/host/Makefile b/drivers/mmc/host/Makefile
index 11c4598e91d9..e6f819046c35 100644
--- a/drivers/mmc/host/Makefile
+++ b/drivers/mmc/host/Makefile
@@ -67,6 +67,7 @@ obj-$(CONFIG_MMC_VUB300)	+= vub300.o
 obj-$(CONFIG_MMC_USHC)		+= ushc.o
 obj-$(CONFIG_MMC_WMT)		+= wmt-sdmmc.o
 obj-$(CONFIG_MMC_MESON_GX)	+= meson-gx-mmc.o
+obj-$(CONFIG_MMC_MESON_MX_SDHC)	+= meson-mx-sdhc.o
 obj-$(CONFIG_MMC_MESON_MX_SDIO)	+= meson-mx-sdio.o
 obj-$(CONFIG_MMC_MOXART)	+= moxart-mmc.o
 obj-$(CONFIG_MMC_SUNXI)		+= sunxi-mmc.o
diff --git a/drivers/mmc/host/meson-mx-sdhc.c b/drivers/mmc/host/meson-mx-sdhc.c
new file mode 100644
index 000000000000..9053c73e3f50
--- /dev/null
+++ b/drivers/mmc/host/meson-mx-sdhc.c
@@ -0,0 +1,1174 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Amlogic Meson6/Meson8/Meson8b/Meson8m2 SDHC MMC host controller driver.
+ *
+ * Copyright (C) 2019 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
+ */
+
+#include <linux/bitfield.h>
+#include <linux/clk.h>
+#include <linux/clk-provider.h>
+#include <linux/device.h>
+#include <linux/dma-mapping.h>
+#include <linux/interrupt.h>
+#include <linux/iopoll.h>
+#include <linux/module.h>
+#include <linux/platform_device.h>
+#include <linux/regulator/consumer.h>
+#include <linux/types.h>
+
+#include <linux/mmc/host.h>
+#include <linux/mmc/mmc.h>
+#include <linux/mmc/sdio.h>
+#include <linux/mmc/slot-gpio.h>
+
+#define MESON_SDHC_ARGU						0x00
+
+#define MESON_SDHC_SEND						0x04
+	#define MESON_SDHC_SEND_CMD_INDEX			GENMASK(5, 0)
+	#define MESON_SDHC_SEND_CMD_HAS_RESP			BIT(6)
+	#define MESON_SDHC_SEND_CMD_HAS_DATA			BIT(7)
+	#define MESON_SDHC_SEND_RESP_LEN			BIT(8)
+	#define MESON_SDHC_SEND_RESP_NO_CRC			BIT(9)
+	#define MESON_SDHC_SEND_DATA_DIR			BIT(10)
+	#define MESON_SDHC_SEND_DATA_STOP			BIT(11)
+	#define MESON_SDHC_SEND_R1B				BIT(12)
+	#define MESON_SDHC_SEND_TOTAL_PACK			GENMASK(31, 16)
+
+#define MESON_SDHC_CTRL						0x08
+	#define MESON_SDHC_CTRL_DAT_TYPE			GENMASK(1, 0)
+	#define MESON_SDHC_CTRL_DDR_MODE			BIT(2)
+	#define MESON_SDHC_CTRL_TX_CRC_NOCHECK			BIT(3)
+	#define MESON_SDHC_CTRL_PACK_LEN			GENMASK(12, 4)
+	#define MESON_SDHC_CTRL_RX_TIMEOUT			GENMASK(19, 13)
+	#define MESON_SDHC_CTRL_RX_PERIOD			GENMASK(23, 20)
+	#define MESON_SDHC_CTRL_RX_ENDIAN			GENMASK(26, 24)
+	#define MESON_SDHC_CTRL_SDIO_IRQ_MODE			BIT(27)
+	#define MESON_SDHC_CTRL_DAT0_IRQ_SEL			BIT(28)
+	#define MESON_SDHC_CTRL_TX_ENDIAN			GENMASK(31, 29)
+
+#define MESON_SDHC_STAT						0x0c
+	#define MESON_SDHC_STAT_CMD_BUSY			BIT(0)
+	#define MESON_SDHC_STAT_DAT3_0				GENMASK(4, 1)
+	#define MESON_SDHC_STAT_CMD				BIT(5)
+	#define MESON_SDHC_STAT_RXFIFO_CNT			GENMASK(12, 6)
+	#define MESON_SDHC_STAT_TXFIFO_CNT			GENMASK(19, 13)
+	#define MESON_SDHC_STAT_DAT7_4				GENMASK(23, 20)
+
+#define MESON_SDHC_CLKC						0x10
+	#define MESON_SDHC_CLKC_CLK_DIV				GENMASK(11, 0)
+	#define MESON_SDHC_CLKC_TX_CLK_ON			BIT(12)
+	#define MESON_SDHC_CLKC_RX_CLK_ON			BIT(13)
+	#define MESON_SDHC_CLKC_SD_CLK_ON			BIT(14)
+	#define MESON_SDHC_CLKC_MOD_CLK_ON			BIT(15)
+	#define MESON_SDHC_CLKC_CLK_SRC_SEL			GENMASK(18, 16)
+	#define MESON_SDHC_CLKC_CLK_JIC				BIT(24)
+	#define MESON_SDHC_CLKC_MEM_PWR_OFF			GENMASK(26, 25)
+
+#define MESON_SDHC_ADDR						0x14
+
+#define MESON_SDHC_PDMA						0x18
+	#define MESON_SDHC_PDMA_DMA_MODE			BIT(0)
+	#define MESON_SDHC_PDMA_PIO_RDRESP			GENMASK(3, 1)
+	#define MESON_SDHC_PDMA_DMA_URGENT			BIT(4)
+	#define MESON_SDHC_PDMA_WR_BURST			GENMASK(9, 5)
+	#define MESON_SDHC_PDMA_RD_BURST			GENMASK(14, 10)
+	#define MESON_SDHC_PDMA_RXFIFO_TH			GENMASK(21, 15)
+	#define MESON_SDHC_PDMA_TXFIFO_TH			GENMASK(28, 22)
+	#define MESON_SDHC_PDMA_RXFIFO_MANUAL_FLUSH		GENMASK(30, 29)
+	#define MESON_SDHC_PDMA_TXFIFO_FILL			BIT(31)
+
+#define MESON_SDHC_MISC						0x1c
+	#define MESON_SDHC_MISC_WCRC_ERR_PATT			GENMASK(6, 4)
+	#define MESON_SDHC_MISC_WCRC_OK_PATT			GENMASK(9, 7)
+	#define MESON_SDHC_MISC_BURST_NUM			GENMASK(21, 16)
+	#define MESON_SDHC_MISC_THREAD_ID			GENMASK(27, 22)
+	#define MESON_SDHC_MISC_MANUAL_STOP			BIT(28)
+	#define MESON_SDHC_MISC_TXSTART_THRES			GENMASK(31, 29)
+
+#define MESON_SDHC_DATA						0x20
+
+#define MESON_SDHC_ICTL						0x24
+	#define MESON_SDHC_ICTL_RESP_OK				BIT(0)
+	#define MESON_SDHC_ICTL_RESP_TIMEOUT			BIT(1)
+	#define MESON_SDHC_ICTL_RESP_ERR_CRC			BIT(2)
+	#define MESON_SDHC_ICTL_RESP_OK_NOCLEAR			BIT(3)
+	#define MESON_SDHC_ICTL_DATA_1PACK_OK			BIT(4)
+	#define MESON_SDHC_ICTL_DATA_TIMEOUT			BIT(5)
+	#define MESON_SDHC_ICTL_DATA_ERR_CRC			BIT(6)
+	#define MESON_SDHC_ICTL_DATA_XFER_OK			BIT(7)
+	#define MESON_SDHC_ICTL_RX_HIGHER			BIT(8)
+	#define MESON_SDHC_ICTL_RX_LOWER			BIT(9)
+	#define MESON_SDHC_ICTL_DAT1_IRQ			BIT(10)
+	#define MESON_SDHC_ICTL_DMA_DONE			BIT(11)
+	#define MESON_SDHC_ICTL_RXFIFO_FULL			BIT(12)
+	#define MESON_SDHC_ICTL_TXFIFO_EMPTY			BIT(13)
+	#define MESON_SDHC_ICTL_ADDI_DAT1_IRQ			BIT(14)
+	#define MESON_SDHC_ICTL_ALL_IRQS			GENMASK(14, 0)
+	#define MESON_SDHC_ICTL_DAT1_IRQ_DELAY			GENMASK(17, 16)
+
+#define MESON_SDHC_ISTA						0x28
+	#define MESON_SDHC_ISTA_RESP_OK				BIT(0)
+	#define MESON_SDHC_ISTA_RESP_TIMEOUT			BIT(1)
+	#define MESON_SDHC_ISTA_RESP_ERR_CRC			BIT(2)
+	#define MESON_SDHC_ISTA_RESP_OK_NOCLEAR			BIT(3)
+	#define MESON_SDHC_ISTA_DATA_1PACK_OK			BIT(4)
+	#define MESON_SDHC_ISTA_DATA_TIMEOUT			BIT(5)
+	#define MESON_SDHC_ISTA_DATA_ERR_CRC			BIT(6)
+	#define MESON_SDHC_ISTA_DATA_XFER_OK			BIT(7)
+	#define MESON_SDHC_ISTA_RX_HIGHER			BIT(8)
+	#define MESON_SDHC_ISTA_RX_LOWER			BIT(9)
+	#define MESON_SDHC_ISTA_DAT1_IRQ			BIT(10)
+	#define MESON_SDHC_ISTA_DMA_DONE			BIT(11)
+	#define MESON_SDHC_ISTA_RXFIFO_FULL			BIT(12)
+	#define MESON_SDHC_ISTA_TXFIFO_EMPTY			BIT(13)
+	#define MESON_SDHC_ISTA_ADDI_DAT1_IRQ			BIT(14)
+	#define MESON_SDHC_ISTA_ALL_IRQS			GENMASK(14, 0)
+
+#define MESON_SDHC_SRST						0x2c
+	#define MESON_SDHC_SRST_MAIN_CTRL			BIT(0)
+	#define MESON_SDHC_SRST_RXFIFO				BIT(1)
+	#define MESON_SDHC_SRST_TXFIFO				BIT(2)
+	#define MESON_SDHC_SRST_DPHY_RX				BIT(3)
+	#define MESON_SDHC_SRST_DPHY_TX				BIT(4)
+	#define MESON_SDHC_SRST_DMA_IF				BIT(5)
+
+#define MESON_SDHC_ESTA						0x30
+	#define MESON_SDHC_ESTA_11_13				GENMASK(13, 11)
+
+#define MESON_SDHC_ENHC						0x34
+	#define MESON_SDHC_ENHC_MESON8M2_WRRSP_MODE		BIT(0)
+	#define MESON_SDHC_ENHC_MESON8M2_CHK_WRRSP		BIT(1)
+	#define MESON_SDHC_ENHC_MESON8M2_CHK_DMA		BIT(2)
+	#define MESON_SDHC_ENHC_MESON8M2_DEBUG			GENMASK(5, 3)
+	#define MESON_SDHC_ENHC_MESON6_RX_TIMEOUT		GENMASK(7, 0)
+	#define MESON_SDHC_ENHC_MESON6_DMA_RD_RESP		BIT(16)
+	#define MESON_SDHC_ENHC_MESON6_DMA_WR_RESP		BIT(17)
+	#define MESON_SDHC_ENHC_SDIO_IRQ_PERIOD			GENMASK(15, 8)
+	#define MESON_SDHC_ENHC_RXFIFO_TH			GENMASK(24, 18)
+	#define MESON_SDHC_ENHC_TXFIFO_TH			GENMASK(31, 25)
+
+#define MESON_SDHC_CLK2						0x38
+	#define MESON_SDHC_CLK2_RX_CLK_PHASE			GENMASK(11, 0)
+	#define MESON_SDHC_CLK2_SD_CLK_PHASE			GENMASK(23, 12)
+
+#define MESON_SDHC_MAX_BLK_SIZE					512
+#define MESON_SDHC_NUM_TUNING_TRIES				10
+
+struct meson_mx_sdhc_data {
+	void (*init_hw)(struct mmc_host *mmc);
+	void (*set_pdma)(struct mmc_host *mmc);
+	void (*wait_before_send)(struct mmc_host *mmc);
+	bool hardware_flush_all_cmds;
+};
+
+struct meson_mx_sdhc_host {
+	struct mmc_host			*mmc;
+
+	struct mmc_request		*mrq;
+	struct mmc_command		*cmd;
+	int				error;
+
+	void __iomem			*base;
+
+	struct clk_divider		clkc_clk_div;
+	struct clk_gate			clkc_tx_clk_on;
+	struct clk_gate			clkc_rx_clk_on;
+	struct clk_gate			clkc_sd_clk_on;
+	struct clk_gate			clkc_mod_clk_on;
+	struct clk_mux			clkc_clk_src_sel;
+
+	struct clk			*pclk;
+
+	struct clk			*tx_clk;
+	struct clk			*rx_clk;
+	struct clk			*sd_clk;
+	struct clk			*mod_clk;
+
+	bool				clocks_enabled;
+
+	const struct meson_mx_sdhc_data	*platform;
+};
+
+static void meson_mx_sdhc_mask_bits(struct mmc_host *mmc, u8 reg, u32 mask,
+				    u32 val)
+{
+	struct meson_mx_sdhc_host *host = mmc_priv(mmc);
+	u32 regval;
+
+	regval = readl(host->base + reg);
+	regval &= ~mask;
+	regval |= (val & mask);
+
+	writel(regval, host->base + reg);
+}
+
+static void meson_mx_sdhc_hw_reset(struct mmc_host *mmc)
+{
+	struct meson_mx_sdhc_host *host = mmc_priv(mmc);
+
+	writel(MESON_SDHC_SRST_MAIN_CTRL |  MESON_SDHC_SRST_RXFIFO |
+	       MESON_SDHC_SRST_TXFIFO | MESON_SDHC_SRST_DPHY_RX |
+	       MESON_SDHC_SRST_DPHY_TX | MESON_SDHC_SRST_DMA_IF,
+	       host->base + MESON_SDHC_SRST);
+	usleep_range(10, 100);
+
+	writel(0, host->base + MESON_SDHC_SRST);
+	usleep_range(10, 100);
+}
+
+static void meson_mx_sdhc_clear_fifo(struct mmc_host *mmc)
+{
+	struct meson_mx_sdhc_host *host = mmc_priv(mmc);
+	u32 stat;
+
+	stat = readl(host->base + MESON_SDHC_STAT);
+	if (!FIELD_GET(MESON_SDHC_STAT_RXFIFO_CNT, stat) &&
+	    !FIELD_GET(MESON_SDHC_STAT_TXFIFO_CNT, stat))
+		return;
+
+	writel(MESON_SDHC_SRST_RXFIFO | MESON_SDHC_SRST_TXFIFO |
+	       MESON_SDHC_SRST_MAIN_CTRL, host->base + MESON_SDHC_SRST);
+	udelay(5);
+
+	stat = readl(host->base + MESON_SDHC_STAT);
+	if (FIELD_GET(MESON_SDHC_STAT_RXFIFO_CNT, stat) ||
+	    FIELD_GET(MESON_SDHC_STAT_TXFIFO_CNT, stat))
+		dev_warn(mmc_dev(host->mmc),
+			 "Failed to clear FIFOs, RX: %lu, TX: %lu\n",
+			 FIELD_GET(MESON_SDHC_STAT_RXFIFO_CNT, stat),
+			 FIELD_GET(MESON_SDHC_STAT_TXFIFO_CNT, stat));
+}
+
+static void meson_mx_sdhc_wait_cmd_ready(struct mmc_host *mmc)
+{
+	struct meson_mx_sdhc_host *host = mmc_priv(mmc);
+	u32 stat, esta;
+	int ret;
+
+	ret = readl_poll_timeout(host->base + MESON_SDHC_STAT, stat,
+				 !(stat & MESON_SDHC_STAT_CMD_BUSY), 1,
+				 100000);
+	if (ret) {
+		dev_warn(mmc_dev(mmc),
+			 "Failed to poll for CMD_BUSY while processing CMD%d\n",
+			 host->cmd->opcode);
+		meson_mx_sdhc_hw_reset(mmc);
+	}
+
+	ret = readl_poll_timeout(host->base + MESON_SDHC_ESTA, esta,
+				 !(esta & MESON_SDHC_ESTA_11_13), 1, 100000);
+	if (ret) {
+		dev_warn(mmc_dev(mmc),
+			 "Failed to poll for ESTA[13:11] while processing CMD%d\n",
+			 host->cmd->opcode);
+		meson_mx_sdhc_hw_reset(mmc);
+	}
+}
+
+static void meson_mx_sdhc_start_cmd(struct mmc_host *mmc,
+				    struct mmc_command *cmd)
+{
+	struct meson_mx_sdhc_host *host = mmc_priv(mmc);
+	u32 ictl, send;
+	int pack_len;
+
+	host->cmd = cmd;
+
+	ictl = MESON_SDHC_ICTL_DATA_TIMEOUT | MESON_SDHC_ICTL_DATA_ERR_CRC |
+	       MESON_SDHC_ICTL_RXFIFO_FULL | MESON_SDHC_ICTL_TXFIFO_EMPTY |
+	       MESON_SDHC_ICTL_RESP_TIMEOUT | MESON_SDHC_ICTL_RESP_ERR_CRC;
+
+	send = FIELD_PREP(MESON_SDHC_SEND_CMD_INDEX, cmd->opcode);
+
+	if (cmd->data) {
+		send |= MESON_SDHC_SEND_CMD_HAS_DATA;
+		send |= FIELD_PREP(MESON_SDHC_SEND_TOTAL_PACK,
+				   cmd->data->blocks - 1);
+
+		if (cmd->data->blksz < MESON_SDHC_MAX_BLK_SIZE)
+			pack_len = cmd->data->blksz;
+		else
+			pack_len = 0;
+
+		if (cmd->data->flags & MMC_DATA_WRITE)
+			send |= MESON_SDHC_SEND_DATA_DIR;
+
+		/*
+		 * If command with no data, just wait response done
+		 * interrupt(int[0]), and if command with data transfer, just
+		 * wait dma done interrupt(int[11]), don't need care about
+		 * dat0 busy or not.
+		 */
+		if (host->platform->hardware_flush_all_cmds ||
+		    cmd->data->flags & MMC_DATA_WRITE)
+			/* hardware flush: */
+			ictl |= MESON_SDHC_ICTL_DMA_DONE;
+		else
+			/* software flush: */
+			ictl |= MESON_SDHC_ICTL_DATA_XFER_OK;
+	} else {
+		pack_len = 0;
+
+		ictl |= MESON_SDHC_ICTL_RESP_OK;
+	}
+
+	if (cmd->opcode == MMC_STOP_TRANSMISSION)
+		send |= MESON_SDHC_SEND_DATA_STOP;
+
+	if (cmd->flags & MMC_RSP_PRESENT)
+		send |= MESON_SDHC_SEND_CMD_HAS_RESP;
+
+	if (cmd->flags & MMC_RSP_136) {
+		send |= MESON_SDHC_SEND_RESP_LEN;
+		send |= MESON_SDHC_SEND_RESP_NO_CRC;
+	}
+
+	if (!(cmd->flags & MMC_RSP_CRC))
+		send |= MESON_SDHC_SEND_RESP_NO_CRC;
+
+	if (cmd->flags & MMC_RSP_BUSY)
+		send |= MESON_SDHC_SEND_R1B;
+
+	/* enable the new IRQs and mask all pending ones */
+	writel(ictl, host->base + MESON_SDHC_ICTL);
+	writel(MESON_SDHC_ISTA_ALL_IRQS, host->base + MESON_SDHC_ISTA);
+
+	writel(cmd->arg, host->base + MESON_SDHC_ARGU);
+
+	meson_mx_sdhc_mask_bits(mmc, MESON_SDHC_CTRL, MESON_SDHC_CTRL_PACK_LEN,
+				FIELD_PREP(MESON_SDHC_CTRL_PACK_LEN, pack_len));
+
+	if (cmd->data)
+		writel(sg_dma_address(cmd->data->sg),
+		       host->base + MESON_SDHC_ADDR);
+
+	meson_mx_sdhc_wait_cmd_ready(mmc);
+
+	if (cmd->data)
+		host->platform->set_pdma(mmc);
+
+	if (host->platform->wait_before_send)
+		host->platform->wait_before_send(mmc);
+
+	writel(send, host->base + MESON_SDHC_SEND);
+}
+
+static void meson_mx_sdhc_disable_clks(struct mmc_host *mmc)
+{
+	struct meson_mx_sdhc_host *host = mmc_priv(mmc);
+
+	if (!host->clocks_enabled)
+		return;
+
+	clk_disable_unprepare(host->tx_clk);
+	clk_disable_unprepare(host->rx_clk);
+	clk_disable_unprepare(host->sd_clk);
+
+	clk_disable_unprepare(host->mod_clk);
+
+	host->clocks_enabled = false;
+}
+
+static int meson_mx_sdhc_enable_clks(struct mmc_host *mmc)
+{
+	struct meson_mx_sdhc_host *host = mmc_priv(mmc);
+	struct clk *clocks[] = {
+		host->mod_clk,
+		host->sd_clk,
+		host->tx_clk,
+		host->rx_clk,
+	};
+	int i, ret;
+
+	if (host->clocks_enabled)
+		return 0;
+
+	for (i = 0; i < ARRAY_SIZE(clocks); i++) {
+		ret = clk_prepare_enable(clocks[i]);
+		if (ret) {
+			dev_err(mmc_dev(mmc), "Failed to enable clock %s\n",
+				__clk_get_name(clocks[i]));
+			goto err;
+		}
+	}
+
+	host->clocks_enabled = true;
+
+	return 0;
+
+err:
+	while (--i >= 0)
+		clk_disable_unprepare(clocks[i]);
+
+	return ret;
+}
+
+static int meson_mx_sdhc_set_clk(struct mmc_host *mmc, struct mmc_ios *ios)
+{
+	struct meson_mx_sdhc_host *host = mmc_priv(mmc);
+	u32 rx_clk_phase, val;
+	int ret;
+
+	meson_mx_sdhc_disable_clks(mmc);
+
+	if (ios->clock) {
+		ret = clk_set_rate(host->sd_clk, ios->clock);
+		if (ret) {
+			dev_warn(mmc_dev(mmc),
+				 "Failed to set MMC clock to %uHz: %d\n",
+				 ios->clock, host->error);
+			return ret;
+		}
+
+		ret = meson_mx_sdhc_enable_clks(mmc);
+		if (ret)
+			return ret;
+
+		mmc->actual_clock = clk_get_rate(host->sd_clk);
+
+		/*
+		 * according to Amlogic the following latching points are
+		 * selected with empirical values, there is no (known) formula
+		 * to calculate these.
+		 */
+		if (mmc->actual_clock > 100000000) {
+			rx_clk_phase = 1;
+		} else if (mmc->actual_clock > 45000000) {
+			if (ios->signal_voltage == MMC_SIGNAL_VOLTAGE_330)
+				rx_clk_phase = 15;
+			else
+				rx_clk_phase = 11;
+		} else if (mmc->actual_clock >= 25000000) {
+			rx_clk_phase = 15;
+		} else if (mmc->actual_clock > 5000000) {
+			rx_clk_phase = 23;
+		} else if (mmc->actual_clock > 1000000) {
+			rx_clk_phase = 55;
+		} else {
+			rx_clk_phase = 1061;
+		}
+
+		val = FIELD_PREP(MESON_SDHC_CLK2_RX_CLK_PHASE, rx_clk_phase);
+		meson_mx_sdhc_mask_bits(mmc, MESON_SDHC_CLK2,
+					MESON_SDHC_CLK2_RX_CLK_PHASE, val);
+	} else {
+		mmc->actual_clock = 0;
+	}
+
+	return 0;
+}
+
+static void meson_mx_sdhc_set_ios(struct mmc_host *mmc, struct mmc_ios *ios)
+{
+	struct meson_mx_sdhc_host *host = mmc_priv(mmc);
+	unsigned short vdd = ios->vdd;
+	u32 dat_type;
+
+	switch (ios->power_mode) {
+	case MMC_POWER_OFF:
+		vdd = 0;
+		/* fall through */
+
+	case MMC_POWER_UP:
+		if (!IS_ERR(mmc->supply.vmmc)) {
+			host->error = mmc_regulator_set_ocr(mmc,
+							    mmc->supply.vmmc,
+							    vdd);
+			if (host->error)
+				return;
+		}
+
+		break;
+
+	case MMC_POWER_ON:
+		break;
+	}
+
+	host->error = meson_mx_sdhc_set_clk(mmc, ios);
+	if (host->error)
+		return;
+
+	switch (ios->bus_width) {
+	case MMC_BUS_WIDTH_1:
+		dat_type = FIELD_PREP(MESON_SDHC_CTRL_DAT_TYPE, 0);
+		break;
+
+	case MMC_BUS_WIDTH_4:
+		dat_type = FIELD_PREP(MESON_SDHC_CTRL_DAT_TYPE, 1);
+		break;
+
+	case MMC_BUS_WIDTH_8:
+		dat_type = FIELD_PREP(MESON_SDHC_CTRL_DAT_TYPE, 2);
+		break;
+
+	default:
+		dev_err(mmc_dev(mmc), "unsupported bus width: %d\n",
+			ios->bus_width);
+		host->error = -EINVAL;
+		return;
+	}
+
+	meson_mx_sdhc_mask_bits(mmc, MESON_SDHC_CTRL, MESON_SDHC_CTRL_DAT_TYPE,
+				dat_type);
+}
+
+static int meson_mx_sdhc_map_dma(struct mmc_host *mmc, struct mmc_request *mrq)
+{
+	struct mmc_data *data = mrq->data;
+	int dma_len;
+
+	if (!data)
+		return 0;
+
+	dma_len = dma_map_sg(mmc_dev(mmc), data->sg, data->sg_len,
+			     mmc_get_dma_dir(data));
+	if (dma_len <= 0) {
+		dev_err(mmc_dev(mmc), "dma_map_sg failed\n");
+		return -ENOMEM;
+	}
+
+	return 0;
+}
+
+static void meson_mx_sdhc_request(struct mmc_host *mmc, struct mmc_request *mrq)
+{
+	struct meson_mx_sdhc_host *host = mmc_priv(mmc);
+	struct mmc_command *cmd = mrq->cmd;
+
+	if (!host->error)
+		host->error = meson_mx_sdhc_map_dma(mmc, mrq);
+
+	if (host->error) {
+		cmd->error = host->error;
+		mmc_request_done(mmc, mrq);
+		return;
+	}
+
+	host->mrq = mrq;
+
+	meson_mx_sdhc_start_cmd(mmc, mrq->cmd);
+}
+
+static int meson_mx_sdhc_card_busy(struct mmc_host *mmc)
+{
+	struct meson_mx_sdhc_host *host = mmc_priv(mmc);
+	u32 stat = readl(host->base + MESON_SDHC_STAT);
+
+	return FIELD_GET(MESON_SDHC_STAT_DAT3_0, stat) == 0;
+}
+
+static bool meson_mx_sdhc_tuning_point_matches(struct mmc_host *mmc,
+					       u32 opcode)
+{
+	unsigned int i, num_matches = 0;
+	int ret;
+
+	for (i = 0; i < MESON_SDHC_NUM_TUNING_TRIES; i++) {
+		ret = mmc_send_tuning(mmc, opcode, NULL);
+		if (!ret)
+			num_matches++;
+	}
+
+	return num_matches == MESON_SDHC_NUM_TUNING_TRIES;
+}
+
+static int meson_mx_sdhc_execute_tuning(struct mmc_host *mmc, u32 opcode)
+{
+	struct meson_mx_sdhc_host *host = mmc_priv(mmc);
+	int div, start, len, best_start, best_len;
+	int curr_phase, old_phase, new_phase;
+	u32 val;
+
+	len = 0;
+	start = 0;
+	best_len = 0;
+
+	val = readl(host->base + MESON_SDHC_CLK2);
+	old_phase = FIELD_GET(MESON_SDHC_CLK2_RX_CLK_PHASE, val);
+
+	val = readl(host->base + MESON_SDHC_CLKC);
+	div = FIELD_GET(MESON_SDHC_CLKC_CLK_DIV, val);
+
+	for (curr_phase = 0; curr_phase <= div; curr_phase++) {
+		val = FIELD_PREP(MESON_SDHC_CLK2_RX_CLK_PHASE, curr_phase);
+		meson_mx_sdhc_mask_bits(mmc, MESON_SDHC_CLK2,
+					MESON_SDHC_CLK2_RX_CLK_PHASE, val);
+
+		if (meson_mx_sdhc_tuning_point_matches(mmc, opcode)) {
+			if (!len) {
+				start = curr_phase;
+
+				dev_dbg(mmc_dev(mmc),
+					"New RX phase window starts at %u\n",
+					start);
+			}
+
+			len++;
+		} else {
+			if (len > best_len) {
+				best_start = start;
+				best_len = len;
+
+				dev_dbg(mmc_dev(mmc),
+					"New best RX phase window: %u - %u\n",
+					best_start, best_start + best_len);
+			}
+
+			/* reset the current window */
+			len = 0;
+		}
+	}
+
+	if (len > best_len)
+		/* the last window is the best (or possibly only) window */
+		new_phase = start + (len / 2);
+	else if (best_len)
+		/* there was a better window than the last */
+		new_phase = best_start + (best_len / 2);
+	else
+		/* no window was found at all, reset to the original phase */
+		new_phase = old_phase;
+
+	val = FIELD_PREP(MESON_SDHC_CLK2_RX_CLK_PHASE, new_phase);
+	meson_mx_sdhc_mask_bits(mmc, MESON_SDHC_CLK2,
+				MESON_SDHC_CLK2_RX_CLK_PHASE, val);
+
+	if (!len && !best_len)
+		return -EIO;
+
+	dev_dbg(mmc_dev(mmc), "Tuned RX clock phase to %u\n", new_phase);
+
+	return 0;
+}
+
+static const struct mmc_host_ops meson_mx_sdhc_ops = {
+	.hw_reset			= meson_mx_sdhc_hw_reset,
+	.request			= meson_mx_sdhc_request,
+	.set_ios			= meson_mx_sdhc_set_ios,
+	.card_busy			= meson_mx_sdhc_card_busy,
+	.execute_tuning			= meson_mx_sdhc_execute_tuning,
+	.get_cd				= mmc_gpio_get_cd,
+	.get_ro				= mmc_gpio_get_ro,
+};
+
+static void meson_mx_sdhc_request_done(struct meson_mx_sdhc_host *host)
+{
+	struct mmc_request *mrq = host->mrq;
+	struct mmc_host *mmc = host->mmc;
+
+	/* disable interrupts and mask all pending ones */
+	meson_mx_sdhc_mask_bits(mmc, MESON_SDHC_ICTL,
+				MESON_SDHC_ICTL_ALL_IRQS, 0);
+	meson_mx_sdhc_mask_bits(mmc, MESON_SDHC_ISTA, MESON_SDHC_ISTA_ALL_IRQS,
+				MESON_SDHC_ISTA_ALL_IRQS);
+
+	host->mrq = NULL;
+	host->cmd = NULL;
+
+	mmc_request_done(mmc, mrq);
+}
+
+static u32 meson_mx_sdhc_read_response(struct meson_mx_sdhc_host *host, u8 idx)
+{
+	meson_mx_sdhc_mask_bits(host->mmc, MESON_SDHC_PDMA,
+				MESON_SDHC_PDMA_DMA_MODE, 0);
+
+	meson_mx_sdhc_mask_bits(host->mmc, MESON_SDHC_PDMA,
+				MESON_SDHC_PDMA_PIO_RDRESP,
+				FIELD_PREP(MESON_SDHC_PDMA_PIO_RDRESP, idx));
+
+	return readl(host->base + MESON_SDHC_ARGU);
+}
+
+static irqreturn_t meson_mx_sdhc_irq(int irq, void *data)
+{
+	struct meson_mx_sdhc_host *host = data;
+	struct mmc_command *cmd = host->cmd;
+	u32 ictl, ista;
+
+	ictl = readl(host->base + MESON_SDHC_ICTL);
+	ista = readl(host->base + MESON_SDHC_ISTA);
+
+	if (!(ictl & ista))
+		return IRQ_NONE;
+
+	if (ista & MESON_SDHC_ISTA_RXFIFO_FULL ||
+	    ista & MESON_SDHC_ISTA_TXFIFO_EMPTY)
+		cmd->error = -EIO;
+	else if (ista & MESON_SDHC_ISTA_RESP_ERR_CRC)
+		cmd->error = -EILSEQ;
+	else if (ista & MESON_SDHC_ISTA_RESP_TIMEOUT)
+		cmd->error = -ETIMEDOUT;
+
+	if (cmd->data) {
+		if (ista & MESON_SDHC_ISTA_DATA_ERR_CRC)
+			cmd->data->error = -EILSEQ;
+		else if (ista & MESON_SDHC_ISTA_DATA_TIMEOUT)
+			cmd->data->error = -ETIMEDOUT;
+	}
+
+	if (cmd->error || (cmd->data && cmd->data->error))
+		dev_dbg(mmc_dev(host->mmc), "CMD%d error, ISTA: 0x%08x\n",
+			cmd->opcode, ista);
+
+	return IRQ_WAKE_THREAD;
+}
+
+static irqreturn_t meson_mx_sdhc_irq_thread(int irq, void *irq_data)
+{
+	struct meson_mx_sdhc_host *host = irq_data;
+	struct mmc_command *cmd;
+	u32 pdma;
+
+	cmd = host->cmd;
+	if (WARN_ON(!cmd))
+		return IRQ_HANDLED;
+
+	if (cmd->data && !cmd->data->error) {
+		if (!host->platform->hardware_flush_all_cmds &&
+		    cmd->data->flags & MMC_DATA_READ) {
+			meson_mx_sdhc_wait_cmd_ready(host->mmc);
+
+			pdma = readl(host->base + MESON_SDHC_PDMA);
+			pdma |= FIELD_PREP(MESON_SDHC_PDMA_RXFIFO_MANUAL_FLUSH,
+					   2);
+			writel(pdma, host->base);
+		}
+
+		dma_unmap_sg(mmc_dev(host->mmc), cmd->data->sg,
+			     cmd->data->sg_len, mmc_get_dma_dir(cmd->data));
+
+		cmd->data->bytes_xfered = cmd->data->blksz * cmd->data->blocks;
+	}
+
+	meson_mx_sdhc_wait_cmd_ready(host->mmc);
+
+	if (cmd->flags & MMC_RSP_136) {
+		cmd->resp[0] = meson_mx_sdhc_read_response(host, 4);
+		cmd->resp[1] = meson_mx_sdhc_read_response(host, 3);
+		cmd->resp[2] = meson_mx_sdhc_read_response(host, 2);
+		cmd->resp[3] = meson_mx_sdhc_read_response(host, 1);
+	} else {
+		cmd->resp[0] = meson_mx_sdhc_read_response(host, 0);
+	}
+
+	if (cmd->error == -EIO || cmd->error == -ETIMEDOUT)
+		meson_mx_sdhc_hw_reset(host->mmc);
+	else if (cmd->data)
+		/*
+		 * Clear the FIFOs after completing data transfers to prevent
+		 * corrupting data on write access. It's not clear why this is
+		 * needed (for reads and writes), but it mimics what the BSP
+		 * kernel did.
+		 */
+		meson_mx_sdhc_clear_fifo(host->mmc);
+
+	meson_mx_sdhc_request_done(host);
+
+	return IRQ_HANDLED;
+}
+
+static struct clk *meson_mx_sdhc_register_clk(struct device *dev,
+					      struct clk_hw *hw,
+					      const char *name,
+					      int num_parents,
+					      const struct clk_parent_data *pd,
+					      unsigned long flags,
+					      const struct clk_ops *ops)
+{
+	struct clk_init_data init;
+
+	init.name = devm_kasprintf(dev, GFP_KERNEL, "%s#%s", dev_name(dev),
+				   name);
+	if (!init.name)
+		return ERR_PTR(-ENOMEM);
+
+	init.num_parents = num_parents;
+	init.parent_data = pd;
+	init.flags = flags;
+	init.ops = ops;
+
+	hw->init = &init;
+
+	return devm_clk_register(dev, hw);
+}
+
+static int meson_mx_sdhc_register_clks(struct meson_mx_sdhc_host *host)
+{
+	static const struct clk_div_table clk_div_table[] = {
+		{ .div = 6, .val = 5, },
+		{ .div = 8, .val = 7, },
+		{ .div = 9, .val = 8, },
+		{ .div = 10, .val = 9, },
+		{ .div = 12, .val = 11, },
+		{ .div = 16, .val = 15, },
+		{ .div = 18, .val = 17, },
+		{ .div = 34, .val = 33, },
+		{ .div = 142, .val = 141, },
+		{ .div = 850, .val = 849, },
+		{ .div = 2126, .val = 2125, },
+		{ .div = 4096, .val = 4095, },
+		{ /* sentinel */ },
+	};
+	static const struct clk_parent_data mux_parent_data[] = {
+		{ .fw_name = "clkin0", .index = -1, },
+		{ .fw_name = "clkin1", .index = -1, },
+		{ .fw_name = "clkin2", .index = -1, },
+		{ .fw_name = "clkin3", .index = -1, },
+	};
+	struct clk_parent_data div_parent_data = {
+		.hw = &host->clkc_clk_src_sel.hw, .index = -1,
+	};
+	struct clk_parent_data gate_parent_data = {
+		.hw = &host->clkc_clk_div.hw, .index = -1,
+	};
+	struct clk *clk;
+
+	host->clkc_clk_src_sel.reg = host->base + MESON_SDHC_CLKC;
+	host->clkc_clk_src_sel.shift = __ffs(MESON_SDHC_CLKC_CLK_SRC_SEL);
+	host->clkc_clk_src_sel.mask = MESON_SDHC_CLKC_CLK_SRC_SEL >>
+				      host->clkc_clk_src_sel.shift;
+	clk = meson_mx_sdhc_register_clk(mmc_dev(host->mmc),
+					 &host->clkc_clk_src_sel.hw,
+					 "clk_src_sel",
+					 ARRAY_SIZE(mux_parent_data),
+					 mux_parent_data, 0, &clk_mux_ops);
+	if (IS_ERR(clk))
+		return PTR_ERR(clk);
+
+	host->clkc_clk_div.reg = host->base + MESON_SDHC_CLKC;
+	host->clkc_clk_div.shift = __ffs(MESON_SDHC_CLKC_CLK_DIV);
+	host->clkc_clk_div.width = fls(MESON_SDHC_CLKC_CLK_DIV) -
+				   host->clkc_clk_div.shift;
+	host->clkc_clk_div.table = clk_div_table;
+	clk = meson_mx_sdhc_register_clk(mmc_dev(host->mmc),
+					 &host->clkc_clk_div.hw, "clk_div", 1,
+					 &div_parent_data, CLK_SET_RATE_PARENT,
+					 &clk_divider_ops);
+	if (IS_ERR(clk))
+		return PTR_ERR(clk);
+
+	host->clkc_mod_clk_on.reg = host->base + MESON_SDHC_CLKC;
+	host->clkc_mod_clk_on.bit_idx = __ffs(MESON_SDHC_CLKC_MOD_CLK_ON);
+	host->mod_clk = meson_mx_sdhc_register_clk(mmc_dev(host->mmc),
+						   &host->clkc_mod_clk_on.hw,
+						   "mod_clk_on", 1,
+						   &gate_parent_data, 0,
+						   &clk_gate_ops);
+	if (IS_ERR(host->mod_clk))
+		return PTR_ERR(host->mod_clk);
+
+	host->clkc_tx_clk_on.reg = host->base + MESON_SDHC_CLKC;
+	host->clkc_tx_clk_on.bit_idx = __ffs(MESON_SDHC_CLKC_TX_CLK_ON);
+	host->tx_clk = meson_mx_sdhc_register_clk(mmc_dev(host->mmc),
+						  &host->clkc_tx_clk_on.hw,
+						  "tx_clk_on", 1,
+						  &gate_parent_data,
+						  CLK_SET_RATE_PARENT,
+						  &clk_gate_ops);
+	if (IS_ERR(host->tx_clk))
+		return PTR_ERR(host->tx_clk);
+
+	host->clkc_rx_clk_on.reg = host->base + MESON_SDHC_CLKC;
+	host->clkc_rx_clk_on.bit_idx = __ffs(MESON_SDHC_CLKC_RX_CLK_ON);
+	host->rx_clk = meson_mx_sdhc_register_clk(mmc_dev(host->mmc),
+						  &host->clkc_rx_clk_on.hw,
+						  "rx_clk_on", 1,
+						  &gate_parent_data,
+						  CLK_SET_RATE_PARENT,
+						  &clk_gate_ops);
+	if (IS_ERR(host->rx_clk))
+		return PTR_ERR(host->rx_clk);
+
+	host->clkc_sd_clk_on.reg = host->base + MESON_SDHC_CLKC;
+	host->clkc_sd_clk_on.bit_idx = __ffs(MESON_SDHC_CLKC_SD_CLK_ON);
+	host->sd_clk = meson_mx_sdhc_register_clk(mmc_dev(host->mmc),
+						  &host->clkc_sd_clk_on.hw,
+						  "sd_clk_on", 1,
+						  &gate_parent_data,
+						  CLK_SET_RATE_PARENT,
+						  &clk_gate_ops);
+	if (IS_ERR(host->sd_clk))
+		return PTR_ERR(host->sd_clk);
+
+	return 0;
+}
+
+static void meson_mx_sdhc_init_hw_meson8(struct mmc_host *mmc)
+{
+	struct meson_mx_sdhc_host *host = mmc_priv(mmc);
+	u32 val;
+
+	val = FIELD_PREP(MESON_SDHC_MISC_TXSTART_THRES, 7) |
+	      FIELD_PREP(MESON_SDHC_MISC_WCRC_ERR_PATT, 5) |
+	      FIELD_PREP(MESON_SDHC_MISC_WCRC_OK_PATT, 2);
+	writel(val, host->base + MESON_SDHC_MISC);
+
+	val = FIELD_PREP(MESON_SDHC_ENHC_RXFIFO_TH, 63) |
+	      MESON_SDHC_ENHC_MESON6_DMA_WR_RESP |
+	      FIELD_PREP(MESON_SDHC_ENHC_MESON6_RX_TIMEOUT, 255) |
+	      FIELD_PREP(MESON_SDHC_ENHC_SDIO_IRQ_PERIOD, 12);
+	writel(val, host->base + MESON_SDHC_ENHC);
+};
+
+static void meson_mx_sdhc_set_pdma_meson8(struct mmc_host *mmc)
+{
+	struct meson_mx_sdhc_host *host = mmc_priv(mmc);
+	u32 pdma;
+
+	pdma = readl(host->base + MESON_SDHC_PDMA);
+
+	pdma |= MESON_SDHC_PDMA_DMA_MODE;
+
+	if (host->cmd->data->flags & MMC_DATA_WRITE) {
+		pdma &= ~MESON_SDHC_PDMA_RD_BURST;
+		pdma |= FIELD_PREP(MESON_SDHC_PDMA_RD_BURST, 31);
+
+		pdma |= MESON_SDHC_PDMA_TXFIFO_FILL;
+	} else {
+		pdma &= ~MESON_SDHC_PDMA_RXFIFO_MANUAL_FLUSH;
+		pdma |= FIELD_PREP(MESON_SDHC_PDMA_RXFIFO_MANUAL_FLUSH, 1);
+	}
+
+	writel(pdma, host->base + MESON_SDHC_PDMA);
+
+	if (host->cmd->data->flags & MMC_DATA_WRITE) {
+		pdma &= ~MESON_SDHC_PDMA_RD_BURST;
+		pdma |= FIELD_PREP(MESON_SDHC_PDMA_RD_BURST, 15);
+
+		writel(pdma, host->base + MESON_SDHC_PDMA);
+	}
+}
+
+static void meson_mx_sdhc_wait_before_send_meson8(struct mmc_host *mmc)
+{
+	struct meson_mx_sdhc_host *host = mmc_priv(mmc);
+	u32 val;
+	int ret;
+
+	ret = readl_poll_timeout(host->base + MESON_SDHC_ESTA, val, val == 0,
+				 1, 200);
+	if (ret)
+		dev_warn(mmc_dev(mmc),
+			 "Failed to wait for ESTA to clear: 0x%08x\n", val);
+
+	if (host->cmd->data && host->cmd->data->flags & MMC_DATA_WRITE) {
+		ret = readl_poll_timeout(host->base + MESON_SDHC_STAT, val,
+					 val & MESON_SDHC_STAT_TXFIFO_CNT,
+					 1, 200);
+		if (ret)
+			dev_warn(mmc_dev(mmc),
+				 "Failed to wait for TX FIFO to fill\n");
+	}
+}
+
+static void meson_mx_sdhc_init_hw_meson8m2(struct mmc_host *mmc)
+{
+	struct meson_mx_sdhc_host *host = mmc_priv(mmc);
+	u32 val;
+
+	val = FIELD_PREP(MESON_SDHC_MISC_TXSTART_THRES, 6) |
+	      FIELD_PREP(MESON_SDHC_MISC_WCRC_ERR_PATT, 5) |
+	      FIELD_PREP(MESON_SDHC_MISC_WCRC_OK_PATT, 2);
+	writel(val, host->base + MESON_SDHC_MISC);
+
+	val = FIELD_PREP(MESON_SDHC_ENHC_RXFIFO_TH, 64) |
+	      FIELD_PREP(MESON_SDHC_ENHC_MESON8M2_DEBUG, 1) |
+	      MESON_SDHC_ENHC_MESON8M2_WRRSP_MODE |
+	      FIELD_PREP(MESON_SDHC_ENHC_SDIO_IRQ_PERIOD, 12),
+	writel(val, host->base + MESON_SDHC_ENHC);
+}
+
+static void meson_mx_sdhc_set_pdma_meson8m2(struct mmc_host *mmc)
+{
+	meson_mx_sdhc_mask_bits(mmc, MESON_SDHC_PDMA,
+				MESON_SDHC_PDMA_DMA_MODE,
+				MESON_SDHC_PDMA_DMA_MODE);
+}
+
+static void meson_mx_sdhc_init_hw(struct mmc_host *mmc)
+{
+	struct meson_mx_sdhc_host *host = mmc_priv(mmc);
+	u32 val;
+
+	meson_mx_sdhc_hw_reset(mmc);
+
+	val = FIELD_PREP(MESON_SDHC_CTRL_RX_PERIOD, 0xf) |
+	      FIELD_PREP(MESON_SDHC_CTRL_RX_TIMEOUT, 0x7f) |
+	      FIELD_PREP(MESON_SDHC_CTRL_RX_ENDIAN, 0x7) |
+	      FIELD_PREP(MESON_SDHC_CTRL_TX_ENDIAN, 0x7);
+	writel(val, host->base + MESON_SDHC_CTRL);
+
+	/*
+	 * start with a valid divider and enable the memory (un-setting
+	 * MESON_SDHC_CLKC_MEM_PWR_OFF).
+	 */
+	val = MESON_SDHC_CLKC_CLK_DIV;
+	writel(val, host->base + MESON_SDHC_CLKC);
+
+	val = FIELD_PREP(MESON_SDHC_CLK2_SD_CLK_PHASE, 1);
+	writel(val, host->base + MESON_SDHC_CLK2);
+
+	val = MESON_SDHC_PDMA_DMA_URGENT |
+	      FIELD_PREP(MESON_SDHC_PDMA_WR_BURST, 7) |
+	      FIELD_PREP(MESON_SDHC_PDMA_TXFIFO_TH, 49) |
+	      FIELD_PREP(MESON_SDHC_PDMA_RD_BURST, 15) |
+	      FIELD_PREP(MESON_SDHC_PDMA_RXFIFO_TH, 7);
+	writel(val, host->base + MESON_SDHC_PDMA);
+
+	/* some initialization bits depend on the SoC: */
+	host->platform->init_hw(mmc);
+
+	/* disable and mask all interrupts: */
+	writel(0, host->base + MESON_SDHC_ICTL);
+	writel(MESON_SDHC_ISTA_ALL_IRQS, host->base + MESON_SDHC_ISTA);
+}
+
+static int meson_mx_sdhc_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct meson_mx_sdhc_host *host;
+	struct mmc_host *mmc;
+	int ret, irq;
+
+	mmc = mmc_alloc_host(sizeof(*host), dev);
+	if (!mmc)
+		return -ENOMEM;
+
+	ret = devm_add_action_or_reset(dev, (void(*)(void *))mmc_free_host,
+				       mmc);
+	if (ret) {
+		dev_err(dev, "Failed to register mmc_free_host action\n");
+		return ret;
+	}
+
+	host = mmc_priv(mmc);
+	host->mmc = mmc;
+
+	platform_set_drvdata(pdev, host);
+
+	host->platform = device_get_match_data(dev);
+	if (!host->platform)
+		return -EINVAL;
+
+	host->base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(host->base))
+		return PTR_ERR(host->base);
+
+	host->pclk = devm_clk_get(dev, "pclk");
+	if (IS_ERR(host->pclk))
+		return PTR_ERR(host->pclk);
+
+	/* accessing any register requires the module clock to be enabled: */
+	ret = clk_prepare_enable(host->pclk);
+	if (ret) {
+		dev_err(dev, "Failed to enable 'pclk' clock\n");
+		return ret;
+	}
+
+	ret = devm_add_action_or_reset(dev,
+				       (void(*)(void *))clk_disable_unprepare,
+				       host->pclk);
+	if (ret) {
+		dev_err(dev,
+			"Failed to register clk_disable_unprepare action\n");
+		return ret;
+	}
+
+	meson_mx_sdhc_init_hw(mmc);
+
+	ret = meson_mx_sdhc_register_clks(host);
+	if (ret)
+		return ret;
+
+	/* Get regulators and the supported OCR mask */
+	ret = mmc_regulator_get_supply(mmc);
+	if (ret)
+		return ret;
+
+	mmc->max_req_size = SZ_128K;
+	mmc->max_seg_size = mmc->max_req_size;
+	mmc->max_blk_count = FIELD_GET(MESON_SDHC_SEND_TOTAL_PACK, ~0);
+	mmc->max_blk_size = MESON_SDHC_MAX_BLK_SIZE;
+	mmc->max_busy_timeout = 30 * MSEC_PER_SEC;
+	mmc->f_min = clk_round_rate(host->sd_clk, 1);
+	mmc->f_max = clk_round_rate(host->sd_clk, ULONG_MAX);
+	mmc->max_current_180 = 300;
+	mmc->max_current_330 = 300;
+	mmc->caps |= MMC_CAP_ERASE | MMC_CAP_HW_RESET;
+	mmc->ops = &meson_mx_sdhc_ops;
+
+	ret = mmc_of_parse(mmc);
+	if (ret)
+		return ret;
+
+	irq = platform_get_irq(pdev, 0);
+	ret = devm_request_threaded_irq(dev, irq, meson_mx_sdhc_irq,
+					meson_mx_sdhc_irq_thread, IRQF_ONESHOT,
+					NULL, host);
+	if (ret)
+		return ret;
+
+	ret = mmc_add_host(mmc);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static int meson_mx_sdhc_remove(struct platform_device *pdev)
+{
+	struct meson_mx_sdhc_host *host = platform_get_drvdata(pdev);
+
+	mmc_remove_host(host->mmc);
+
+	meson_mx_sdhc_disable_clks(host->mmc);
+
+	return 0;
+}
+
+static const struct meson_mx_sdhc_data meson_mx_sdhc_data_meson8 = {
+	.init_hw			= meson_mx_sdhc_init_hw_meson8,
+	.set_pdma			= meson_mx_sdhc_set_pdma_meson8,
+	.wait_before_send		= meson_mx_sdhc_wait_before_send_meson8,
+	.hardware_flush_all_cmds	= false,
+};
+
+static const struct meson_mx_sdhc_data meson_mx_sdhc_data_meson8m2 = {
+	.init_hw			= meson_mx_sdhc_init_hw_meson8m2,
+	.set_pdma			= meson_mx_sdhc_set_pdma_meson8m2,
+	.hardware_flush_all_cmds	= true,
+};
+
+static const struct of_device_id meson_mx_sdhc_of_match[] = {
+	{
+		.compatible = "amlogic,meson8-sdhc",
+		.data = &meson_mx_sdhc_data_meson8
+	},
+	{
+		.compatible = "amlogic,meson8b-sdhc",
+		.data = &meson_mx_sdhc_data_meson8
+	},
+	{
+		.compatible = "amlogic,meson8m2-sdhc",
+		.data = &meson_mx_sdhc_data_meson8m2
+	},
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, meson_mx_sdhc_of_match);
+
+static struct platform_driver meson_mx_sdhc_driver = {
+	.probe   = meson_mx_sdhc_probe,
+	.remove  = meson_mx_sdhc_remove,
+	.driver  = {
+		.name = "meson-mx-sdhc",
+		.of_match_table = of_match_ptr(meson_mx_sdhc_of_match),
+	},
+};
+
+module_platform_driver(meson_mx_sdhc_driver);
+
+MODULE_DESCRIPTION("Meson6, Meson8, Meson8b and Meson8m2 SDHC Host Driver");
+MODULE_AUTHOR("Martin Blumenstingl <martin.blumenstingl@googlemail.com>");
+MODULE_LICENSE("GPL v2");
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
