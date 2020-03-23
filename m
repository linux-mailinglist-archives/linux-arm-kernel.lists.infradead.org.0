Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78C5019023F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 00:51:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=alAUetau8DCe+fvH8gqg42foXY+bCes+DYah9yjCAQ0=; b=mAVyG5MqUtZMAd
	wn7raVr9lMw7b5lwO2PrLCVhpnWleADXz7F0D84uf2Z6K1nUnImSvJRjYDKN5tmGh/PQSb8mSYEu+
	yU+7ofWYuAq06rJvVRkCmmffxdOy4r6wEPelOTD62omUKT0L8tRopGtEwURgHCw4wynPK1K++9V4F
	ZMAYXvsVJJ0m0FTFXNiichO1Hk8PNhn5PrWbM7evun8buCxysa+VD6NdMz5599l3wNdBMUcPtWiiJ
	d8JJSnZ+44iY2YnJqRnMAZxi4JPCZQlMFz4vtNOs4EwkBzaBsZ9u/raREh3KyZ7jSBBLvVgQi4n44
	o39WbOa7SwM82THtL5Mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGWrE-0005a1-0v; Mon, 23 Mar 2020 23:51:48 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGWr5-0005ZY-Uh
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 23:51:41 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48mWPN2dYYz1qsZp;
 Tue, 24 Mar 2020 00:51:36 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48mWPN1tZ9z1qyDv;
 Tue, 24 Mar 2020 00:51:36 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id V8WqiL3sBpwT; Tue, 24 Mar 2020 00:51:34 +0100 (CET)
X-Auth-Info: fYrbgeBEJtUWyFdzn5WfLLQMdR0dzZxQ6mlQUdSA0vE=
Received: from desktop.lan (ip-86-49-35-8.net.upcbroadband.cz [86.49.35.8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Tue, 24 Mar 2020 00:51:34 +0100 (CET)
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] irqchip/stm32: Retrigger both in eoi and unmask callbacks
Date: Tue, 24 Mar 2020 00:51:32 +0100
Message-Id: <20200323235132.530550-1-marex@denx.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_165140_139440_4FDF30E1 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.9 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.9 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Marek Vasut <marex@denx.de>, Alexandre Torgue <alexandre.torgue@st.com>,
 Marc Zyngier <maz@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 linux-gpio@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 Jason Cooper <jason@lakedaemon.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sampling the IRQ line state in EOI and retriggering the interrupt to
work around missing level-triggered interrupt support only works for
non-threaded interrupts. Threaded interrupts must be retriggered the
same way in unmask callback.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Jason Cooper <jason@lakedaemon.net>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Marc Zyngier <maz@kernel.org>,
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: linux-gpio@vger.kernel.org
To: linux-arm-kernel@lists.infradead.org
---
 drivers/pinctrl/stm32/pinctrl-stm32.c | 18 ++++++++++++++----
 1 file changed, 14 insertions(+), 4 deletions(-)

diff --git a/drivers/pinctrl/stm32/pinctrl-stm32.c b/drivers/pinctrl/stm32/pinctrl-stm32.c
index 9ac9ecfc2f34..2dd4a4dd944c 100644
--- a/drivers/pinctrl/stm32/pinctrl-stm32.c
+++ b/drivers/pinctrl/stm32/pinctrl-stm32.c
@@ -304,18 +304,22 @@ static const struct gpio_chip stm32_gpio_template = {
 	.get_direction		= stm32_gpio_get_direction,
 };
 
-void stm32_gpio_irq_eoi(struct irq_data *d)
+static void stm32_gpio_irq_trigger(struct irq_data *d)
 {
 	struct stm32_gpio_bank *bank = d->domain->host_data;
 	int level;
 
-	irq_chip_eoi_parent(d);
-
 	/* If level interrupt type then retrig */
 	level = stm32_gpio_get(&bank->gpio_chip, d->hwirq);
 	if ((level == 0 && bank->irq_type[d->hwirq] == IRQ_TYPE_LEVEL_LOW) ||
 	    (level == 1 && bank->irq_type[d->hwirq] == IRQ_TYPE_LEVEL_HIGH))
 		irq_chip_retrigger_hierarchy(d);
+}
+
+void stm32_gpio_irq_eoi(struct irq_data *d)
+{
+	irq_chip_eoi_parent(d);
+	stm32_gpio_irq_trigger(d);
 };
 
 static int stm32_gpio_set_type(struct irq_data *d, unsigned int type)
@@ -371,12 +375,18 @@ static void stm32_gpio_irq_release_resources(struct irq_data *irq_data)
 	gpiochip_unlock_as_irq(&bank->gpio_chip, irq_data->hwirq);
 }
 
+static void stm32_gpio_irq_unmask(struct irq_data *d)
+{
+	irq_chip_unmask_parent(d);
+	stm32_gpio_irq_trigger(d);
+}
+
 static struct irq_chip stm32_gpio_irq_chip = {
 	.name		= "stm32gpio",
 	.irq_eoi	= stm32_gpio_irq_eoi,
 	.irq_ack	= irq_chip_ack_parent,
 	.irq_mask	= irq_chip_mask_parent,
-	.irq_unmask	= irq_chip_unmask_parent,
+	.irq_unmask	= stm32_gpio_irq_unmask,
 	.irq_set_type	= stm32_gpio_set_type,
 	.irq_set_wake	= irq_chip_set_wake_parent,
 	.irq_request_resources = stm32_gpio_irq_request_resources,
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
