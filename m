Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB9D01A293F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 21:16:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hdptUPEa9D/f12dTApzzcdi1HDa/dlh0aO/jqmN9kl0=; b=SozVM/3xRbFAce
	14O9eFuHVMmvY3/7s1xLIijvtZ6HUV8syAt6IBKhkDnYFak38ptZwLvWehdJU6yP8CfiDr7uHKMg7
	FXG4wuqb7MHtmA2MmkthkIMnZagLoBTZ2mNbvfbAbVkOuDZ6k73fJdWhzIidSv4KwmqiNX0zGPf9v
	G7cKfBaGO8kRbsIWLksDdzHYHUxhK0JoM9KPH3t5kkM/fZsVRkcB3viBZk3LILm8fZrScV7SkF8y2
	f6Uvxie65CTIt/XQIGhn14CGPk+3thgb5AgHq9bfOgSLBECrmTUMDmorK8sHVy57RTog8OK0NU5Dw
	Onha29qSrXYm5H+h+zLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMGB7-0005SW-4F; Wed, 08 Apr 2020 19:16:01 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMGB0-0005S0-ND
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 19:15:56 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 038JFfeK086312;
 Wed, 8 Apr 2020 14:15:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1586373341;
 bh=Qb5ZeAVRpJh28ykpe0w7F87pvW1U8JceUNeMw/ITQaM=;
 h=From:To:CC:Subject:Date;
 b=h/owNDU1NivTnUt4VOatmB7/pwiAwiGO1KnfFF8IFkZul3QdgNDidiTYL/o3l1hll
 kXryCYfMntuBeGKA7Ah9IF/Q9UTRqm4+td+BX1SpVNFMToYkuPwKMvM4UiT4z8O1im
 Eum9Yemss3CvZfy7/Vghx9qn4KEldqv4AyhDGl+I=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 038JFfTg006789
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 8 Apr 2020 14:15:41 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 8 Apr
 2020 14:15:41 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 8 Apr 2020 14:15:41 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 038JFd3K108863;
 Wed, 8 Apr 2020 14:15:40 -0500
From: Grygorii Strashko <grygorii.strashko@ti.com>
To: Nishanth Menon <nm@ti.com>, Tero Kristo <t-kristo@ti.com>, Santosh
 Shilimkar <ssantosh@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <maz@kernel.org>,
 Lokesh Vutla <lokeshvutla@ti.com>
Subject: [PATCH] irqchip/ti-sci-inta: fix processing of masked irqs
Date: Wed, 8 Apr 2020 22:15:32 +0300
Message-ID: <20200408191532.31252-1-grygorii.strashko@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_121554_836594_6C704094 
X-CRM114-Status: GOOD (  13.29  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Grygorii Strashko <grygorii.strashko@ti.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Sekhar Nori <nsekhar@ti.com>,
 linux-kernel@vger.kernel.org, Peter Ujfalusi <peter.ujfalusi@ti.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The ti_sci_inta_irq_handler() does not take into account INTA IRQs state
(masked/unmasked) as it uses INTA_STATUS_CLEAR_j register to get INTA IRQs
status, which provides raw status value.
This causes hard IRQ handlers to be called or threaded handlers to be
scheduled many times even if corresponding INTA IRQ is masked.
Above, first of all, affects the LEVEL interrupts processing and causes
unexpected behavior up the system stack or crash.

Fix it by using the Interrupt Masked Status INTA_STATUSM_j register which
provides masked INTA IRQs status.

Fixes: 9f1463b86c13 ("irqchip/ti-sci-inta: Add support for Interrupt Aggregator driver")
Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
---
 drivers/irqchip/irq-ti-sci-inta.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/irqchip/irq-ti-sci-inta.c b/drivers/irqchip/irq-ti-sci-inta.c
index 8f6e6b08eadf..7e3ebf6ed2cd 100644
--- a/drivers/irqchip/irq-ti-sci-inta.c
+++ b/drivers/irqchip/irq-ti-sci-inta.c
@@ -37,6 +37,7 @@
 #define VINT_ENABLE_SET_OFFSET	0x0
 #define VINT_ENABLE_CLR_OFFSET	0x8
 #define VINT_STATUS_OFFSET	0x18
+#define VINT_STATUS_MASKED_OFFSET	0x20
 
 /**
  * struct ti_sci_inta_event_desc - Description of an event coming to
@@ -116,7 +117,7 @@ static void ti_sci_inta_irq_handler(struct irq_desc *desc)
 	chained_irq_enter(irq_desc_get_chip(desc), desc);
 
 	val = readq_relaxed(inta->base + vint_desc->vint_id * 0x1000 +
-			    VINT_STATUS_OFFSET);
+			    VINT_STATUS_MASKED_OFFSET);
 
 	for_each_set_bit(bit, &val, MAX_EVENTS_PER_VINT) {
 		virq = irq_find_mapping(domain, vint_desc->events[bit].hwirq);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
