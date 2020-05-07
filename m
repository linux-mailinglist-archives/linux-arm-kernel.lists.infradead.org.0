Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA3F71C93B6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 17:08:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HCD8AzCcWdG00hnMAhdr68o8qNWBMHpPO4namWANBOY=; b=IWqMyAMkpYRHFj
	RbjrgqcPYe456a83CcwATtHO38cw57Ra1w3AIwupELT3512YgwpKsxSWSg5HGCCau4P4GMtpuViSR
	Imp4uEqf+Okl+pg8I+rsppOxJPIzXUh4xnRDejjgEoMfSlFx7BerkqoLO/c5SwV9X1GcuRHty+cKH
	D1FpPb8hOb1GQnxU2t0o2BxsBUlToaMGcB5OhzR0Wk+927dv6xquJctM9CUAh3iTKE08JyaljYilu
	+O9SEsy0GHYCFOpUcflabTgElxzi4AMiXAytbWwV3/2ArhHtNtbYwkQYSbmOiPc0BMkIcxsKVsTNv
	uxTHv2+rzVo7t9v/lAMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWi8S-0004XG-W8; Thu, 07 May 2020 15:08:29 +0000
Received: from mail-out.m-online.net ([212.18.0.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWi7g-0004LQ-7q
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 15:07:41 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 49Hxf1571Lz1rtNH;
 Thu,  7 May 2020 17:07:37 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 49Hxf14Lq0z1qtwM;
 Thu,  7 May 2020 17:07:37 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id aNUxGlV124a5; Thu,  7 May 2020 17:07:36 +0200 (CEST)
X-Auth-Info: iWDVgyW8TVCuBeXnoCZ5Bm1lCGckYWQwVlFIl94Lnow=
Received: from desktop.lan (ip-86-49-35-8.net.upcbroadband.cz [86.49.35.8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Thu,  7 May 2020 17:07:36 +0200 (CEST)
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] [RFC] genirq: Check irq_data_get_irq_chip() return value
 before use
Date: Thu,  7 May 2020 17:07:29 +0200
Message-Id: <20200507150729.244468-1-marex@denx.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_080740_424834_4B30C2F1 
X-CRM114-Status: GOOD (  12.32  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.10 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.10 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Marek Vasut <marex@denx.de>, Marc Zyngier <marc.zyngier@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Stephen Boyd <sboyd@codeaurora.org>,
 Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The irq_data_get_irq_chip() can return NULL. If the kernel accesses
chip->irq_get_irqchip_state without checking whether chip is valid,
we get a crash. Fix this by checking whether chip is not NULL before
using it.

Fixes: 1b7047edfcfb ("genirq: Allow the irqchip state of an IRQ to be save/restored")
Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Marc Zyngier <marc.zyngier@arm.com>
Cc: Stephen Boyd <sboyd@codeaurora.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
To: linux-arm-kernel@lists.infradead.org
---
NOTE: I don't know whether this is a correct fix. Maybe the
      irq_data_get_irq_chip() should never return NULL, and
      I have some other issue?
---
 kernel/irq/manage.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/kernel/irq/manage.c b/kernel/irq/manage.c
index fe40c658f86f..509128ab21ea 100644
--- a/kernel/irq/manage.c
+++ b/kernel/irq/manage.c
@@ -2663,7 +2663,7 @@ int __irq_get_irqchip_state(struct irq_data *data, enum irqchip_irq_state which,
 
 	do {
 		chip = irq_data_get_irq_chip(data);
-		if (chip->irq_get_irqchip_state)
+		if (chip && chip->irq_get_irqchip_state)
 			break;
 #ifdef CONFIG_IRQ_DOMAIN_HIERARCHY
 		data = data->parent_data;
@@ -2740,7 +2740,7 @@ int irq_set_irqchip_state(unsigned int irq, enum irqchip_irq_state which,
 
 	do {
 		chip = irq_data_get_irq_chip(data);
-		if (chip->irq_set_irqchip_state)
+		if (chip && chip->irq_set_irqchip_state)
 			break;
 #ifdef CONFIG_IRQ_DOMAIN_HIERARCHY
 		data = data->parent_data;
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
