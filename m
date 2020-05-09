Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C4E81CC080
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 12:45:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=bQlr3+tAQb7Jt6Lxu3HkrIw1kjPf3EhGgS19EsnxE4k=; b=p5H
	szLp+nLygHCCfVmrbo3ernZoghTDryDDJQHpJSFlUHPPUTTsTawGb44+iuK6xF32b7WbtVL3kXVTb
	95vftoawR82tDwsZ8p8wkAqilV0MvVFuQZDOI5fwrmXWdNqEig1/cTAZilXGmx6BsKArbhK+WvREF
	UlcTMq+gU/Wr+IbE4DL2rMkYSe6cp/5w67S7+dqrjPILUNmipTHZ3PZFFtX1aMtpfzoUvZlBl67ad
	uDEurs75UBWk8HZinVz6AZGY8laWyMolyFgIqJRIIlcZ1/XdhvQautuk18b1cC/CYtt64xxMs201U
	LzmfQ8AD4+h6SYxLEztKjWi/cValkIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXMyl-0004U2-BI; Sat, 09 May 2020 10:45:11 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXMyE-0004In-5J
 for linux-arm-kernel@lists.infradead.org; Sat, 09 May 2020 10:44:39 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 5A8601A02B7;
 Sat,  9 May 2020 12:44:36 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 0FE891A02D9;
 Sat,  9 May 2020 12:44:33 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id D8EC6402E6;
 Sat,  9 May 2020 18:44:28 +0800 (SGT)
From: Hui Song <hui.song_1@nxp.com>
To: u-boot@linux.nxdi.nxp.com,
	jiafei.pan@nxp.com
Subject: [PATCH v1 1/3] gpio: mpc8xxx: support fsl-layerscape platform.
Date: Sat,  9 May 2020 18:39:54 +0800
Message-Id: <20200509103956.26038-1-hui.song_1@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_034438_482697_652DDE63 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, "hui.song" <hui.song_1@nxp.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-gpio@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "hui.song" <hui.song_1@nxp.com>

Make the MPC8XXX gpio driver to support the fsl-layerscape.

Signed-off-by: hui.song <hui.song_1@nxp.com>
---
 drivers/gpio/mpc8xxx_gpio.c | 59 +++++++++++++++++++++++++++++++++++++
 1 file changed, 59 insertions(+)

diff --git a/drivers/gpio/mpc8xxx_gpio.c b/drivers/gpio/mpc8xxx_gpio.c
index 1dfd22522c..466f5f50cf 100644
--- a/drivers/gpio/mpc8xxx_gpio.c
+++ b/drivers/gpio/mpc8xxx_gpio.c
@@ -12,6 +12,8 @@
 #include <dm.h>
 #include <mapmem.h>
 #include <asm/gpio.h>
+#include <asm/io.h>
+#include <dm/of_access.h>
 
 struct ccsr_gpio {
 	u32	gpdir;
@@ -20,6 +22,7 @@ struct ccsr_gpio {
 	u32	gpier;
 	u32	gpimr;
 	u32	gpicr;
+	u32	gpibe;
 };
 
 struct mpc8xxx_gpio_data {
@@ -49,31 +52,51 @@ inline u32 gpio_mask(uint gpio)
 
 static inline u32 mpc8xxx_gpio_get_val(struct ccsr_gpio *base, u32 mask)
 {
+#if CONFIG_ARM
+	return in_le32(&base->gpdat) & mask;
+#else
 	return in_be32(&base->gpdat) & mask;
+#endif
 }
 
 static inline u32 mpc8xxx_gpio_get_dir(struct ccsr_gpio *base, u32 mask)
 {
+#if CONFIG_ARM
+	return in_le32(&base->gpdir) & mask;
+#else
 	return in_be32(&base->gpdir) & mask;
+#endif
 }
 
 static inline int mpc8xxx_gpio_open_drain_val(struct ccsr_gpio *base, u32 mask)
 {
+#if CONFIG_ARM
+	return in_le32(&base->gpodr) & mask;
+#else
 	return in_be32(&base->gpodr) & mask;
+#endif
 }
 
 static inline void mpc8xxx_gpio_open_drain_on(struct ccsr_gpio *base, u32
 					      gpios)
 {
+#if CONFIG_ARM
+	setbits_le32(&base->gpodr, gpios);
+#else
 	/* GPODR register 1 -> open drain on */
 	setbits_be32(&base->gpodr, gpios);
+#endif
 }
 
 static inline void mpc8xxx_gpio_open_drain_off(struct ccsr_gpio *base,
 					       u32 gpios)
 {
+#if CONFIG_ARM
+	clrbits_le32(&base->gpodr, gpios);
+#else
 	/* GPODR register 0 -> open drain off (actively driven) */
 	clrbits_be32(&base->gpodr, gpios);
+#endif
 }
 
 static int mpc8xxx_gpio_direction_input(struct udevice *dev, uint gpio)
@@ -81,9 +104,13 @@ static int mpc8xxx_gpio_direction_input(struct udevice *dev, uint gpio)
 	struct mpc8xxx_gpio_data *data = dev_get_priv(dev);
 	u32 mask = gpio_mask(gpio);
 
+#if CONFIG_ARM
+	clrbits_le32(&data->base->gpdir, mask);
+#else
 	/* GPDIR register 0 -> input */
 	clrbits_be32(&data->base->gpdir, mask);
 
+#endif
 	return 0;
 }
 
@@ -100,10 +127,19 @@ static int mpc8xxx_gpio_set_value(struct udevice *dev, uint gpio, int value)
 		data->dat_shadow &= ~mask;
 	}
 
+#if CONFIG_ARM
+	gpdir = in_le32(&base->gpdir);
+#else
 	gpdir = in_be32(&base->gpdir);
+#endif
 	gpdir |= gpio_mask(gpio);
+#if CONFIG_ARM
+	out_le32(&base->gpdat, gpdir & data->dat_shadow);
+	out_le32(&base->gpdir, gpdir);
+#else
 	out_be32(&base->gpdat, gpdir & data->dat_shadow);
 	out_be32(&base->gpdir, gpdir);
+#endif
 
 	return 0;
 }
@@ -147,13 +183,29 @@ static int mpc8xxx_gpio_ofdata_to_platdata(struct udevice *dev)
 {
 	struct mpc8xxx_gpio_plat *plat = dev_get_platdata(dev);
 	fdt_addr_t addr;
+	u32 i;
+#if CONFIG_ARM
+	u32 reg[4];
+
+	dev_read_u32_array(dev, "reg", reg, 4);
+#else
 	u32 reg[2];
 
 	dev_read_u32_array(dev, "reg", reg, 2);
+#endif
+
+#if CONFIG_ARM
+	for (i = 0; i < 2; i++)
+		reg[i] = be32_to_cpu(reg[i]);
+#endif
 	addr = dev_translate_address(dev, reg);
 
 	plat->addr = addr;
+#if CONFIG_ARM
+	plat->size = reg[3];
+#else
 	plat->size = reg[1];
+#endif
 	plat->ngpios = dev_read_u32_default(dev, "ngpios", 32);
 
 	return 0;
@@ -187,6 +239,7 @@ static int mpc8xxx_gpio_platdata_to_priv(struct udevice *dev)
 static int mpc8xxx_gpio_probe(struct udevice *dev)
 {
 	struct gpio_dev_priv *uc_priv = dev_get_uclass_priv(dev);
+	struct device_node const  *np = dev->node.np;
 	struct mpc8xxx_gpio_data *data = dev_get_priv(dev);
 	char name[32], *str;
 
@@ -198,6 +251,12 @@ static int mpc8xxx_gpio_probe(struct udevice *dev)
 	if (!str)
 		return -ENOMEM;
 
+	if (of_device_is_compatible(np, "fsl,qoriq-gpio", NULL, NULL)) {
+		unsigned long gpibe = data->addr + sizeof(struct ccsr_gpio);
+
+		out_be32(gpibe, 0xffffffff);
+	}
+
 	uc_priv->bank_name = str;
 	uc_priv->gpio_count = data->gpio_count;
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
