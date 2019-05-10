Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 084AB19925
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 09:43:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XwTqZSvS+vuUOr6mk/2OC5dQ9Bc8BJwsGDWycAfz16E=; b=hKlBliqoXm7Shj
	PP5B2JNTsEs8LEQB/lsibuzb8smjHs4GRXTt3FH3taNl7awZQ52UFsywhVrVflvfMqQjwTbKeAfcy
	9XWfuuCjkycEsJW1MxeYjzxIUdRmjucCbaMtS4iH4TB/gr1+vKUtwFhA8RSGnQUL5EPZnuOePSiYa
	26d1HBVK2iVHojL7CKOszC0fWyGlsP/qlMTz8/wo0DBmBz8MyJ4alFuZbCCLfp8gUKHujdtmkUNz3
	4OS78ZgwmUI2oLyArUDkZm6uVg/XBRhSjs7r8A8mUCcXXta10W0mpNfQ6bBwix1iNnMuXVmE/928F
	rkqepvbHQad7P7tp/kKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP0Bk-0004fg-HE; Fri, 10 May 2019 07:43:28 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP0BP-0004RF-SI
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 07:43:19 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4A7gCkn028382; Fri, 10 May 2019 09:43:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=8I2N6G3vO9y9aZ71WM6kdoKYNSOsW+23DY/TOYHKYeA=;
 b=oTSHYknBEu/ctOQkiI3lUJ+GlBPI+wnUXrAbpXXlVNUcxi4Lv2HqD3HZlnl5qWXPs/4T
 b1zI2oGg9K0/YnZeXfcBXRWrFnlvreqcag84iYulSNy4Y5wAs6chqbJm3olqxhvrwT7p
 hGEw2YRlJVlwiXp9MF4UeWtUgj9/vUh0k7EBrRPEAmlx6pvajYf0RlBIPSHWywx2T1+C
 TBH7Quc3fY97feXkyKND+uf8uOsEcaMHtCzWsPxIHUbZBAHs48Dr58IyAGrY0VR6CofJ
 aoBoE9MrVv0EQ38EH5gIYnbAT6IhLvjqTsB/IreO+x8krXLLB4nAf6TvKtzjqKjq5MZu Ag== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2scfv2pya9-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 10 May 2019 09:43:06 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 92B7D31;
 Fri, 10 May 2019 07:43:04 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 73B2D15B0;
 Fri, 10 May 2019 07:43:04 +0000 (GMT)
Received: from localhost (10.75.127.44) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 10 May 2019 09:43:04
 +0200
From: Alexandre Torgue <alexandre.torgue@st.com>
To: Linus Walleij <linus.walleij@linaro.org>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>
Subject: [PATCH] pinctrl: stm32: add lock mechanism for irqmux selection
Date: Fri, 10 May 2019 09:43:03 +0200
Message-ID: <1557474183-19719-1-git-send-email-alexandre.torgue@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG1NODE3.st.com (10.75.127.3) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-09_02:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_004308_649115_FEDFB66A 
X-CRM114-Status: GOOD (  16.39  )
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

GPIOs are split between several banks (A, B, ...) and each bank can have
up to 16 lines. Those GPIOs could be used as interrupt lines thanks to
exti lines. As there are only 16 exti lines, a mux is used to select which
gpio line is connected to which exti line. Mapping is done as follow:

-A0, B0, C0.. -->exti_line_0 (X0 selected by mux_0)
-A1, B1, C1.. -->exti_line_1 (X1 selected by mux_1)
...

This patch adds a protection to avoid overriding on mux_n for exti_line_n.

Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>

diff --git a/drivers/pinctrl/stm32/pinctrl-stm32.c b/drivers/pinctrl/stm32/pinctrl-stm32.c
index 2317ccf..99e4149 100644
--- a/drivers/pinctrl/stm32/pinctrl-stm32.c
+++ b/drivers/pinctrl/stm32/pinctrl-stm32.c
@@ -98,6 +98,8 @@ struct stm32_pinctrl {
 	struct stm32_desc_pin *pins;
 	u32 npins;
 	u32 pkg;
+	u16 irqmux_map;
+	spinlock_t irqmux_lock;
 };
 
 static inline int stm32_gpio_pin(int gpio)
@@ -307,9 +309,53 @@ static int stm32_gpio_domain_activate(struct irq_domain *d,
 {
 	struct stm32_gpio_bank *bank = d->host_data;
 	struct stm32_pinctrl *pctl = dev_get_drvdata(bank->gpio_chip.parent);
+	unsigned long flags;
+	int ret = 0;
+
+	/*
+	 * gpio irq mux is shared between several banks, a lock has to be done
+	 * to avoid overriding.
+	 */
+	spin_lock_irqsave(&pctl->irqmux_lock, flags);
+	if (pctl->hwlock)
+		ret = hwspin_lock_timeout(pctl->hwlock, HWSPINLOCK_TIMEOUT);
+
+	if (ret) {
+		dev_err(pctl->dev, "Can't get hwspinlock\n");
+		goto unlock;
+	}
+
+	if (pctl->irqmux_map & BIT(irq_data->hwirq)) {
+		dev_err(pctl->dev, "irq line %ld already requested.\n",
+			irq_data->hwirq);
+		ret = -EBUSY;
+		if (pctl->hwlock)
+			hwspin_unlock(pctl->hwlock);
+		goto unlock;
+	} else {
+		pctl->irqmux_map |= BIT(irq_data->hwirq);
+	}
 
 	regmap_field_write(pctl->irqmux[irq_data->hwirq], bank->bank_ioport_nr);
-	return 0;
+
+	if (pctl->hwlock)
+		hwspin_unlock(pctl->hwlock);
+
+unlock:
+	spin_unlock_irqrestore(&pctl->irqmux_lock, flags);
+	return ret;
+}
+
+static void stm32_gpio_domain_deactivate(struct irq_domain *d,
+					 struct irq_data *irq_data)
+{
+	struct stm32_gpio_bank *bank = d->host_data;
+	struct stm32_pinctrl *pctl = dev_get_drvdata(bank->gpio_chip.parent);
+	unsigned long flags;
+
+	spin_lock_irqsave(&pctl->irqmux_lock, flags);
+	pctl->irqmux_map &= ~BIT(irq_data->hwirq);
+	spin_unlock_irqrestore(&pctl->irqmux_lock, flags);
 }
 
 static int stm32_gpio_domain_alloc(struct irq_domain *d,
@@ -338,6 +384,7 @@ static const struct irq_domain_ops stm32_gpio_domain_ops = {
 	.alloc          = stm32_gpio_domain_alloc,
 	.free           = irq_domain_free_irqs_common,
 	.activate	= stm32_gpio_domain_activate,
+	.deactivate	= stm32_gpio_domain_deactivate,
 };
 
 /* Pinctrl functions */
@@ -1290,6 +1337,8 @@ int stm32_pctl_probe(struct platform_device *pdev)
 		pctl->hwlock = hwspin_lock_request_specific(hwlock_id);
 	}
 
+	spin_lock_init(&pctl->irqmux_lock);
+
 	pctl->dev = dev;
 	pctl->match_data = match->data;
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
