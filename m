Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB4E1626EB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 14:13:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S0MKz8rNJclMnX6n2pWW+v7tEedbeuvVpuvYXCMuT4g=; b=GUhnhAUMXd0C1n
	6NCzMKYfxqzCrvuP4NwxbpkcS7YDQ+jrAFFS6qy9IA4j5MZYk1LTvlYmAFDmB16md06ZqMgGBv6V8
	489husfkF1c+J9ElPFpLKPrRZ7nUiHUnYrPL9DsW9AA6oxqR/1jF3XqJaijlY/MOsuBMe6QSdCCim
	4Ar+xaCgTZULrkY5zuLDh35aA6p5Ri9CBmpPLL6fgS5enO8HShI99myvYP89omUqm9C5IYtXITLKm
	lvM1jpna0Qycq+33XxcGF4ZuWjoSUaW300rseQ0i6nupGLY2XHfukLSLVlrvZvsfssA7tTCfSU0Wb
	b2WoVyLEKG4wrOfKO91g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j42gj-0005bS-Bs; Tue, 18 Feb 2020 13:13:21 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j42gK-0005FL-Dj
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 13:12:58 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 01ID7uvk024883; Tue, 18 Feb 2020 14:12:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=QAPr4g8qtXzIzwQ0+UU8DK904BMIYhSCsGi/2L2SFsE=;
 b=wyjmfUzlPJmxLz7ZJq+ggBA8gLIEZaRuqY0tuhgU/GrrvBAF59XDBJCK7cVE7pKNglPq
 70GjZDBsePa8Xy5mb5IllABJV5U7UVIlFXVqdzKqH5yp9gSPs3pOAiHPapP7NFMycTBa
 GZiKJWBIv6AF4yEyRqgavMo+BsjVwaoFCUNT7rFxoDidPjLadJNCVoR/NSwlzKyNKtKH
 HlZwZmm+IY57ChWnvoDylFd0Bx2GfsFQs1e14dIPDINY0fUdFhyGlcVBF/aTTZ1V9L+x
 Ly0jRZocJbLvr2UtS2FNpCfPrYaELsiLc49kmWN0aCEluB9+1S1Whn7mARUlSqaFWBQz kQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2y66ne1jm1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 18 Feb 2020 14:12:45 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 9B8BA100038;
 Tue, 18 Feb 2020 14:12:38 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 8C17B2B12F5;
 Tue, 18 Feb 2020 14:12:38 +0100 (CET)
Received: from localhost (10.75.127.46) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 18 Feb 2020 14:12:37
 +0100
From: Alexandre Torgue <alexandre.torgue@st.com>
To: Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>, 
 Marc Zyngier <marc.zyngier@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH v2 2/2] pinctrl: stm32: Add level interrupt support to gpio
 irq chip
Date: Tue, 18 Feb 2020 14:12:18 +0100
Message-ID: <20200218131218.10789-3-alexandre.torgue@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200218131218.10789-1-alexandre.torgue@st.com>
References: <20200218131218.10789-1-alexandre.torgue@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG1NODE3.st.com (10.75.127.3) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-18_02:2020-02-17,
 2020-02-18 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_051256_894134_03DE2DDA 
X-CRM114-Status: GOOD (  14.75  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: marex@denx.de, linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds level interrupt support to gpio irq chip.

GPIO hardware block is directly linked to EXTI block but EXTI handles
external interrupts only on edge. To be able to handle GPIO interrupt on
level a "hack" is done in gpio irq chip: parent interrupt (exti irq chip)
is retriggered following interrupt type and gpio line value.

Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>
Tested-by: Marek Vasut <marex@denx.de>

diff --git a/drivers/pinctrl/stm32/pinctrl-stm32.c b/drivers/pinctrl/stm32/pinctrl-stm32.c
index 2d5e0435af0a..dae236562543 100644
--- a/drivers/pinctrl/stm32/pinctrl-stm32.c
+++ b/drivers/pinctrl/stm32/pinctrl-stm32.c
@@ -92,6 +92,7 @@ struct stm32_gpio_bank {
 	u32 bank_nr;
 	u32 bank_ioport_nr;
 	u32 pin_backup[STM32_GPIO_PINS_PER_BANK];
+	u32 irq_type[STM32_GPIO_PINS_PER_BANK];
 };
 
 struct stm32_pinctrl {
@@ -303,6 +304,46 @@ static const struct gpio_chip stm32_gpio_template = {
 	.get_direction		= stm32_gpio_get_direction,
 };
 
+void stm32_gpio_irq_eoi(struct irq_data *d)
+{
+	struct stm32_gpio_bank *bank = d->domain->host_data;
+	int line;
+
+	irq_chip_eoi_parent(d);
+
+	/* If level interrupt type then retrig */
+	line = stm32_gpio_get(&bank->gpio_chip, d->hwirq);
+	if ((line == 0 && bank->irq_type[d->hwirq] == IRQ_TYPE_LEVEL_LOW) ||
+	    (line == 1 && bank->irq_type[d->hwirq] == IRQ_TYPE_LEVEL_HIGH))
+		irq_chip_retrigger_hierarchy(d);
+};
+
+static int stm32_gpio_set_type(struct irq_data *d, unsigned int type)
+{
+	struct stm32_gpio_bank *bank = d->domain->host_data;
+	u32 parent_type;
+
+	bank->irq_type[d->hwirq] = type;
+
+	switch (type) {
+	case IRQ_TYPE_EDGE_RISING:
+	case IRQ_TYPE_EDGE_FALLING:
+	case IRQ_TYPE_EDGE_BOTH:
+		parent_type = type;
+		break;
+	case IRQ_TYPE_LEVEL_HIGH:
+		parent_type = IRQ_TYPE_EDGE_RISING;
+		break;
+	case IRQ_TYPE_LEVEL_LOW:
+		parent_type = IRQ_TYPE_EDGE_FALLING;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	return irq_chip_set_type_parent(d, parent_type);
+};
+
 static int stm32_gpio_irq_request_resources(struct irq_data *irq_data)
 {
 	struct stm32_gpio_bank *bank = irq_data->domain->host_data;
@@ -332,11 +373,11 @@ static void stm32_gpio_irq_release_resources(struct irq_data *irq_data)
 
 static struct irq_chip stm32_gpio_irq_chip = {
 	.name		= "stm32gpio",
-	.irq_eoi	= irq_chip_eoi_parent,
+	.irq_eoi	= stm32_gpio_irq_eoi,
 	.irq_ack	= irq_chip_ack_parent,
 	.irq_mask	= irq_chip_mask_parent,
 	.irq_unmask	= irq_chip_unmask_parent,
-	.irq_set_type	= irq_chip_set_type_parent,
+	.irq_set_type	= stm32_gpio_set_type,
 	.irq_set_wake	= irq_chip_set_wake_parent,
 	.irq_request_resources = stm32_gpio_irq_request_resources,
 	.irq_release_resources = stm32_gpio_irq_release_resources,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
