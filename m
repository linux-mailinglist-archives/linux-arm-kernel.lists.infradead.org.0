Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BA061DDA4A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 00:35:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4QUXpRXIFdkRX7HgwKNOQDs+4R4+ULkkrpGyQB7FMAY=; b=qct4/rd7SW51bx
	cSQBxj0x+zu6IlSLqZfeyj//aREskKvYKoJwNhwwelTnuNhA/iv4IqMY6mYvz5EaINbXvQHurSLiS
	TG0FLY5EyXNdhhtp/gsUgtftfQtUq9fxQvTYChpYXplL4bZl6ZxBS4zqdmEcMbkjiyqKZuN/UGr+4
	RNDvdm4AQup6bH0kVOD4uYG8EMriegRisw4ETJ+lKt6x2dPwvN3EZ4XftwRknn4EjCOS9SZxnOWyN
	gqrwXWhj9+5b0by96z/CkgGAkuklH+XZF5lHn9acupP01o+2B+/uFW2AzJraBamV9irLmNXaMy9tq
	/pQ+A24wd9hqNfBFIVgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbtmi-0001Jy-BD; Thu, 21 May 2020 22:35:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbtmZ-0001J2-Mw
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 22:35:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5897D31B;
 Thu, 21 May 2020 15:35:16 -0700 (PDT)
Received: from e113632-lin.cambridge.arm.com (e113632-lin.cambridge.arm.com
 [10.1.194.46])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 6FA5D3F305;
 Thu, 21 May 2020 15:35:15 -0700 (PDT)
From: Valentin Schneider <valentin.schneider@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH] irqchip/gic-v2,
 v3: Drop extra IRQ_NOAUTOEN setting for (E)PPIs
Date: Thu, 21 May 2020 23:35:00 +0100
Message-Id: <20200521223500.834-1-valentin.schneider@arm.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_153519_790918_CCCF2FE5 
X-CRM114-Status: GOOD (  10.02  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Marc Zyngier <maz@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Jason Cooper <jason@lakedaemon.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

(E)PPIs are per-CPU interrupts, so we want each CPU to go and enable them
via enable_percpu_irq(); this also means we want IRQ_NOAUTOEN for them as
the autoenable would lead to calling irq_enable() instead of the more
appropriate irq_percpu_enable().

Calling irq_set_percpu_devid() is enough to get just that since it trickles
down to irq_set_percpu_devid_flags(), which gives us IRQ_NOAUTOEN (and a
few others). Setting IRQ_NOAUTOEN *again* right after this call is just
redundant, so don't do it.

Signed-off-by: Valentin Schneider <valentin.schneider@arm.com>
---
 drivers/irqchip/irq-gic-v3.c | 1 -
 drivers/irqchip/irq-gic.c    | 1 -
 2 files changed, 2 deletions(-)

diff --git a/drivers/irqchip/irq-gic-v3.c b/drivers/irqchip/irq-gic-v3.c
index d7006ef18a0d..1ed0cf9c586f 100644
--- a/drivers/irqchip/irq-gic-v3.c
+++ b/drivers/irqchip/irq-gic-v3.c
@@ -1282,7 +1282,6 @@ static int gic_irq_domain_map(struct irq_domain *d, unsigned int irq,
 		irq_set_percpu_devid(irq);
 		irq_domain_set_info(d, irq, hw, chip, d->host_data,
 				    handle_percpu_devid_irq, NULL, NULL);
-		irq_set_status_flags(irq, IRQ_NOAUTOEN);
 		break;
 
 	case SPI_RANGE:
diff --git a/drivers/irqchip/irq-gic.c b/drivers/irqchip/irq-gic.c
index 30ab623343d3..00de05abd3c3 100644
--- a/drivers/irqchip/irq-gic.c
+++ b/drivers/irqchip/irq-gic.c
@@ -982,7 +982,6 @@ static int gic_irq_domain_map(struct irq_domain *d, unsigned int irq,
 		irq_set_percpu_devid(irq);
 		irq_domain_set_info(d, irq, hw, &gic->chip, d->host_data,
 				    handle_percpu_devid_irq, NULL, NULL);
-		irq_set_status_flags(irq, IRQ_NOAUTOEN);
 	} else {
 		irq_domain_set_info(d, irq, hw, &gic->chip, d->host_data,
 				    handle_fasteoi_irq, NULL, NULL);
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
