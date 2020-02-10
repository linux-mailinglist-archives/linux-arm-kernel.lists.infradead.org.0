Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BC98157CC4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 14:49:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c3LDD8eUzpG+mX9KPXf30nrPfZRlNeP4MPMoAp23+lc=; b=vBgT+bcST2rd+I
	UbUrTTOqqHo/OG1F0MpfNsuNyDyKDh9w6RtbfV6EJiQjo7RCHxnbumhFnDLBHlX5lz9/Y2HQzvmwZ
	r0WkzzAfaX8+6YG7lOP9qSFYUmGTCruF4NhvqNkHqjRiY+R519zXUSFCkF8BmY452ss7waHY5Ny0s
	ecrTRGMEC9F500W414ure7AzUiW8miD0LYUQrkyjzU71/6szJPX9GC8gDg489Nws1hwtNh5TMJkeW
	KuKRASjXXx/RxytIK/qFFW0VHaz9jeh3om6l/iKLcS0P+b2a7mDtkWUhynjDUJuKvPpc9YEwPZ8Ul
	xiClqcaYtGx26ZWNF7Mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j19RZ-0000fp-Gw; Mon, 10 Feb 2020 13:49:45 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j19RC-0000X3-9e
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 13:49:23 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 01ADjnMT027085; Mon, 10 Feb 2020 14:49:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=2LPP53kZYmHtlL5dGE8TqJ5G+UvsVYZ0tIBu17vFOOI=;
 b=ok7ZrewK0qvAIaFR/P2ySVWXtiE34iaCQiLhnWJiD/ZoDir595UPg86alEB4MOLji6es
 QrXbzsFkthoqhz8QvtCB7Ags3mV5opNlj/EmKvJIUBmgYy75llrktQs2rUmhqP6Hl+Mp
 T0UIiuOUy6TYrx5rDFr5yEJR6gXm3HQEr3Ib175gfRwXaqcx+wcFQadI3i2Dc2he9Q+K
 ZBrv9DQ3K9EJV/M1lL1orrpX17Kzv4+3cY6A+9zckrHJvI6vV9MvkEgf1+6S8cmdMT6m
 +EvLb2hqPzDbJL9aqLUNXAhNsIkSJWrMW2hJnGhkerZfG1jmCeffu5oIHGBXNcyDnud3 mQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2y1uvd2kfe-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 10 Feb 2020 14:49:09 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 7B5AE100038;
 Mon, 10 Feb 2020 14:49:05 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 69E8E2BD418;
 Mon, 10 Feb 2020 14:49:05 +0100 (CET)
Received: from localhost (10.75.127.44) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 10 Feb 2020 14:49:05
 +0100
From: Alexandre Torgue <alexandre.torgue@st.com>
To: Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>, 
 Marc Zyngier <marc.zyngier@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 1/2] irqchip/stm32: Add irq retrigger support
Date: Mon, 10 Feb 2020 14:49:00 +0100
Message-ID: <20200210134901.1939-2-alexandre.torgue@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200210134901.1939-1-alexandre.torgue@st.com>
References: <20200210134901.1939-1-alexandre.torgue@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG7NODE3.st.com (10.75.127.21) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-10_04:2020-02-10,
 2020-02-10 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_054922_620253_627D4219 
X-CRM114-Status: GOOD (  12.91  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: marex@denx.de, linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This commit introduces retrigger support for stm32_ext_h chip.
It consists to rise the GIC interrupt mapped to an EXTI line.

Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>

diff --git a/drivers/irqchip/irq-stm32-exti.c b/drivers/irqchip/irq-stm32-exti.c
index e00f2fa27f00..c971d115edb4 100644
--- a/drivers/irqchip/irq-stm32-exti.c
+++ b/drivers/irqchip/irq-stm32-exti.c
@@ -604,12 +604,24 @@ static void stm32_exti_h_syscore_deinit(void)
 	unregister_syscore_ops(&stm32_exti_h_syscore_ops);
 }
 
+static int stm32_exti_h_retrigger(struct irq_data *d)
+{
+	struct stm32_exti_chip_data *chip_data = irq_data_get_irq_chip_data(d);
+	const struct stm32_exti_bank *stm32_bank = chip_data->reg_bank;
+	void __iomem *base = chip_data->host_data->base;
+	u32 mask = BIT(d->hwirq % IRQS_PER_BANK);
+
+	writel_relaxed(mask, base + stm32_bank->swier_ofst);
+
+	return irq_chip_retrigger_hierarchy(d);
+}
+
 static struct irq_chip stm32_exti_h_chip = {
 	.name			= "stm32-exti-h",
 	.irq_eoi		= stm32_exti_h_eoi,
 	.irq_mask		= stm32_exti_h_mask,
 	.irq_unmask		= stm32_exti_h_unmask,
-	.irq_retrigger		= irq_chip_retrigger_hierarchy,
+	.irq_retrigger		= stm32_exti_h_retrigger,
 	.irq_set_type		= stm32_exti_h_set_type,
 	.irq_set_wake		= stm32_exti_h_set_wake,
 	.flags			= IRQCHIP_MASK_ON_SUSPEND,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
