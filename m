Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A375D1991D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 09:42:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xa1V4kEQfXcIkF8TsJlXcqbRYWSw3sfdVRU3vEXcefE=; b=UgVBX6NRyl+HQf
	whzgOxrZgW72K7g6MfRmcukAeLaFW4aeso6p1uMMeku/NRNmjC12Oh3lEH9y5dvyIhg+oUk+W7nyI
	d3RKA9fYYb60dNb9fPnA5kgJXJhM32UVRCQ3bmCM2viFtjaK3tzU2UJX+nrU7I3cO/T6XUVzJ7ha1
	lrj19jC+avWLD1EQKW7B8FObPdeiYigbKZvdRhPDj1MPKZiMnT/pyJ875UB1Cp1j3oTlP+c2Qeu4l
	yZArsxp1HMres2KraRY5ECDEjRQQcIgz853HqmRZh2dTCkbDWbBfpusX62jTsKurjiGPAdwE1Rf/4
	1MEK9FUJ391OttVXEiOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP0BF-00041Q-95; Fri, 10 May 2019 07:42:57 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP0Ax-0003rq-Gp
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 07:42:41 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4A7gBUY028370; Fri, 10 May 2019 09:42:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=XKxWaaFIcl+a8G6nldZY3NTVLZp9cPJdcdxUJpJneIw=;
 b=XuKvWrQ+HkP5caPqocDSN7p2PHCYMxNpU4UkiuFQ/X9q4laiIrbSC68XZwug2envHtjh
 jNY6K6uYMBOnvjYDKogjL+4/aLWGx/uM5XIsUqGj6zCQxSGpqfYPUYx/nEUbuComcIf+
 2xK6JE0dfR1go6Zui/gD7+y4zMURAZlA9PPFC+4sQ//MihC7AGEEtv5uGaUCABHDwUSa
 EiVDZUpBFc8ULjH4WcqxXbGKL603BzJnJ/qjhud4+WNk/gwkKQKbsAmfy9+VO0LMtUER
 Ot4Jaoy/mKvh/HoglfZni1/1bmJ0z2b+W37hDPegftDMIAJ+ZasVygvD1xBz2lJpjvIB yw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2scfv2py7g-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 10 May 2019 09:42:37 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id B735034;
 Fri, 10 May 2019 07:42:36 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 8BB6015AB;
 Fri, 10 May 2019 07:42:36 +0000 (GMT)
Received: from localhost (10.75.127.44) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 10 May 2019 09:42:36
 +0200
From: Alexandre Torgue <alexandre.torgue@st.com>
To: Linus Walleij <linus.walleij@linaro.org>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>
Subject: [PATCH 1/2] pinctrl: stm32: add suspend/resume management
Date: Fri, 10 May 2019 09:42:29 +0200
Message-ID: <1557474150-19618-2-git-send-email-alexandre.torgue@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1557474150-19618-1-git-send-email-alexandre.torgue@st.com>
References: <1557474150-19618-1-git-send-email-alexandre.torgue@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG1NODE1.st.com (10.75.127.1) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-09_02:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_004239_890984_EC0FA6F2 
X-CRM114-Status: GOOD (  14.80  )
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
Cc: linux-gpio@vger.kernel.org, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

During power sequence, GPIO hardware registers could be lost if the power
supply is switched off. Each device using pinctrl API is in charge of
managing pins during suspend/resume sequences. But for pins used as gpio or
irq stm32 pinctrl driver has to save the hardware configuration.

Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>

diff --git a/drivers/pinctrl/stm32/pinctrl-stm32.c b/drivers/pinctrl/stm32/pinctrl-stm32.c
index 2317ccf..335aea5 100644
--- a/drivers/pinctrl/stm32/pinctrl-stm32.c
+++ b/drivers/pinctrl/stm32/pinctrl-stm32.c
@@ -44,6 +44,18 @@
 #define STM32_GPIO_AFRL		0x20
 #define STM32_GPIO_AFRH		0x24
 
+/* custom bitfield to backup pin status */
+#define STM32_GPIO_BKP_MODE_SHIFT	0
+#define STM32_GPIO_BKP_MODE_MASK	GENMASK(1, 0)
+#define STM32_GPIO_BKP_ALT_SHIFT	2
+#define STM32_GPIO_BKP_ALT_MASK		GENMASK(5, 2)
+#define STM32_GPIO_BKP_SPEED_SHIFT	6
+#define STM32_GPIO_BKP_SPEED_MASK	GENMASK(7, 6)
+#define STM32_GPIO_BKP_PUPD_SHIFT	8
+#define STM32_GPIO_BKP_PUPD_MASK	GENMASK(9, 8)
+#define STM32_GPIO_BKP_TYPE		10
+#define STM32_GPIO_BKP_VAL		11
+
 #define STM32_GPIO_PINS_PER_BANK 16
 #define STM32_GPIO_IRQ_LINE	 16
 
@@ -79,6 +91,7 @@ struct stm32_gpio_bank {
 	struct irq_domain *domain;
 	u32 bank_nr;
 	u32 bank_ioport_nr;
+	u32 pin_backup[STM32_GPIO_PINS_PER_BANK];
 };
 
 struct stm32_pinctrl {
@@ -133,11 +146,50 @@ static inline u32 stm32_gpio_get_alt(u32 function)
 	return 0;
 }
 
+static void stm32_gpio_backup_value(struct stm32_gpio_bank *bank,
+				    u32 offset, u32 value)
+{
+	bank->pin_backup[offset] &= ~BIT(STM32_GPIO_BKP_VAL);
+	bank->pin_backup[offset] |= value << STM32_GPIO_BKP_VAL;
+}
+
+static void stm32_gpio_backup_mode(struct stm32_gpio_bank *bank, u32 offset,
+				   u32 mode, u32 alt)
+{
+	bank->pin_backup[offset] &= ~(STM32_GPIO_BKP_MODE_MASK |
+				      STM32_GPIO_BKP_ALT_MASK);
+	bank->pin_backup[offset] |= mode << STM32_GPIO_BKP_MODE_SHIFT;
+	bank->pin_backup[offset] |= alt << STM32_GPIO_BKP_ALT_SHIFT;
+}
+
+static void stm32_gpio_backup_driving(struct stm32_gpio_bank *bank, u32 offset,
+				      u32 drive)
+{
+	bank->pin_backup[offset] &= ~BIT(STM32_GPIO_BKP_TYPE);
+	bank->pin_backup[offset] |= drive << STM32_GPIO_BKP_TYPE;
+}
+
+static void stm32_gpio_backup_speed(struct stm32_gpio_bank *bank, u32 offset,
+				    u32 speed)
+{
+	bank->pin_backup[offset] &= ~STM32_GPIO_BKP_SPEED_MASK;
+	bank->pin_backup[offset] |= speed << STM32_GPIO_BKP_SPEED_SHIFT;
+}
+
+static void stm32_gpio_backup_bias(struct stm32_gpio_bank *bank, u32 offset,
+				   u32 bias)
+{
+	bank->pin_backup[offset] &= ~STM32_GPIO_BKP_PUPD_MASK;
+	bank->pin_backup[offset] |= bias << STM32_GPIO_BKP_PUPD_SHIFT;
+}
+
 /* GPIO functions */
 
 static inline void __stm32_gpio_set(struct stm32_gpio_bank *bank,
 	unsigned offset, int value)
 {
+	stm32_gpio_backup_value(bank, offset, value);
+
 	if (!value)
 		offset += STM32_GPIO_PINS_PER_BANK;
 
@@ -620,6 +672,8 @@ static int stm32_pmx_set_mode(struct stm32_gpio_bank *bank,
 	if (pctl->hwlock)
 		hwspin_unlock(pctl->hwlock);
 
+	stm32_gpio_backup_mode(bank, pin, mode, alt);
+
 unlock:
 	spin_unlock_irqrestore(&bank->lock, flags);
 	clk_disable(bank->clk);
@@ -732,6 +786,8 @@ static int stm32_pconf_set_driving(struct stm32_gpio_bank *bank,
 	if (pctl->hwlock)
 		hwspin_unlock(pctl->hwlock);
 
+	stm32_gpio_backup_driving(bank, offset, drive);
+
 unlock:
 	spin_unlock_irqrestore(&bank->lock, flags);
 	clk_disable(bank->clk);
@@ -784,6 +840,8 @@ static int stm32_pconf_set_speed(struct stm32_gpio_bank *bank,
 	if (pctl->hwlock)
 		hwspin_unlock(pctl->hwlock);
 
+	stm32_gpio_backup_speed(bank, offset, speed);
+
 unlock:
 	spin_unlock_irqrestore(&bank->lock, flags);
 	clk_disable(bank->clk);
@@ -836,6 +894,8 @@ static int stm32_pconf_set_bias(struct stm32_gpio_bank *bank,
 	if (pctl->hwlock)
 		hwspin_unlock(pctl->hwlock);
 
+	stm32_gpio_backup_bias(bank, offset, bias);
+
 unlock:
 	spin_unlock_irqrestore(&bank->lock, flags);
 	clk_disable(bank->clk);
@@ -1369,3 +1429,75 @@ int stm32_pctl_probe(struct platform_device *pdev)
 
 	return 0;
 }
+
+static int __maybe_unused stm32_pinctrl_restore_gpio_regs(
+					struct stm32_pinctrl *pctl, u32 pin)
+{
+	const struct pin_desc *desc = pin_desc_get(pctl->pctl_dev, pin);
+	u32 val, alt, mode, offset = stm32_gpio_pin(pin);
+	struct pinctrl_gpio_range *range;
+	struct stm32_gpio_bank *bank;
+	bool pin_is_irq;
+	int ret;
+
+	range = pinctrl_find_gpio_range_from_pin(pctl->pctl_dev, pin);
+	if (!range)
+		return 0;
+
+	pin_is_irq = gpiochip_line_is_irq(range->gc, offset);
+
+	if (!desc || (!pin_is_irq && !desc->gpio_owner))
+		return 0;
+
+	bank = gpiochip_get_data(range->gc);
+
+	alt = bank->pin_backup[offset] & STM32_GPIO_BKP_ALT_MASK;
+	alt >>= STM32_GPIO_BKP_ALT_SHIFT;
+	mode = bank->pin_backup[offset] & STM32_GPIO_BKP_MODE_MASK;
+	mode >>= STM32_GPIO_BKP_MODE_SHIFT;
+
+	ret = stm32_pmx_set_mode(bank, offset, mode, alt);
+	if (ret)
+		return ret;
+
+	if (mode == 1) {
+		val = bank->pin_backup[offset] & BIT(STM32_GPIO_BKP_VAL);
+		val = val >> STM32_GPIO_BKP_VAL;
+		__stm32_gpio_set(bank, offset, val);
+	}
+
+	val = bank->pin_backup[offset] & BIT(STM32_GPIO_BKP_TYPE);
+	val >>= STM32_GPIO_BKP_TYPE;
+	ret = stm32_pconf_set_driving(bank, offset, val);
+	if (ret)
+		return ret;
+
+	val = bank->pin_backup[offset] & STM32_GPIO_BKP_SPEED_MASK;
+	val >>= STM32_GPIO_BKP_SPEED_SHIFT;
+	ret = stm32_pconf_set_speed(bank, offset, val);
+	if (ret)
+		return ret;
+
+	val = bank->pin_backup[offset] & STM32_GPIO_BKP_PUPD_MASK;
+	val >>= STM32_GPIO_BKP_PUPD_SHIFT;
+	ret = stm32_pconf_set_bias(bank, offset, val);
+	if (ret)
+		return ret;
+
+	if (pin_is_irq)
+		regmap_field_write(pctl->irqmux[offset], bank->bank_ioport_nr);
+
+	return 0;
+}
+
+int __maybe_unused stm32_pinctrl_resume(struct device *dev)
+{
+	struct stm32_pinctrl *pctl = dev_get_drvdata(dev);
+	struct stm32_pinctrl_group *g = pctl->groups;
+	int i;
+
+	for (i = g->pin; i < g->pin + pctl->ngroups; i++)
+		stm32_pinctrl_restore_gpio_regs(pctl, i);
+
+	return 0;
+}
diff --git a/drivers/pinctrl/stm32/pinctrl-stm32.h b/drivers/pinctrl/stm32/pinctrl-stm32.h
index de5e701..ec0d34c 100644
--- a/drivers/pinctrl/stm32/pinctrl-stm32.h
+++ b/drivers/pinctrl/stm32/pinctrl-stm32.h
@@ -65,5 +65,7 @@ struct stm32_gpio_bank;
 int stm32_pctl_probe(struct platform_device *pdev);
 void stm32_pmx_get_mode(struct stm32_gpio_bank *bank,
 			int pin, u32 *mode, u32 *alt);
+int stm32_pinctrl_resume(struct device *dev);
+
 #endif /* __PINCTRL_STM32_H */
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
