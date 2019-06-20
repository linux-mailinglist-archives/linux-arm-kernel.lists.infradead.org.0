Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 687FD4CA6A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 11:13:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=k3kHTUlUsxwknqmNCMou6PFbRpW2ORGOw7GQr7AyQGU=; b=N+HneWElNa06ZE
	rz4QqEga+bK6TJbvNvuLE+6+1O6c5BBliL/8nUvcF/m2hCUZRlXZUnXGT0zueXkNwuKFWDBT/WSA9
	gKm6HhHVLzupoD0a9pyc/6+BTzQxG6N09DaKEhpDol/BaVEEfg+5QzL0tOw8Xq9sRwKQE0KyJewsC
	mV/10k4k6Wa2o30JgXeYmQRMXT99A+FQMHSWNBTDN28LViVBzVFIXXezg4GUynkhYLUli5az9WzX4
	D9HLQDd6UFDyfY4CbcpLTR1XwXRtpgttUuxBpD9Sz2FJzoY0LMSQcHAcKJyidAZckhPUOXdDfE/gI
	+zzB6NAv1M8N5tivroLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdt8n-0007Lg-3m; Thu, 20 Jun 2019 09:13:57 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdt8X-0007LD-2M
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 09:13:42 +0000
X-UUID: 1b4a654402d640cf818d05742b596e2a-20190620
X-UUID: 1b4a654402d640cf818d05742b596e2a-20190620
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <lecopzer.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 614963788; Thu, 20 Jun 2019 01:12:54 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 20 Jun 2019 02:12:52 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 20 Jun 2019 17:12:50 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 20 Jun 2019 17:12:51 +0800
From: Lecopzer Chen <lecopzer.chen@mediatek.com>
To: <linux-kernel@vger.kernel.org>
Subject: [PATCH] genirq: Remove warning on preemptible in prepare_percpu_nmi()
Date: Thu, 20 Jun 2019 17:12:33 +0800
Message-ID: <20190620091233.22731-1-lecopzer.chen@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_021341_122880_AD59C6CE 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Lecopzer Chen <lecopzer.chen@mediatek.com>,
 Julien Thierry <julien.thierry@arm.com>, Peter
 Zijlstra <peterz@infradead.org>, YJ Chiang <yj.chiang@mediatek.com>,
 Marc Zyngier <marc.zyngier@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Ingo Molnar <mingo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

prepare_percpu_nmi() acquires lock first by irq_get_desc_lock(),
no matter whether preempt enabled or not, acquiring lock forces preempt off.

This simplifies the usage of prepare_percpu_nmi() and we don't need to
acquire extra lock or explicitly call preempt_[disable,enable]().

Signed-off-by: Lecopzer Chen <lecopzer.chen@mediatek.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Ingo Molnar <mingo@kernel.org>
Cc: Marc Zyngier <marc.zyngier@arm.com>
Cc: Julien Thierry <julien.thierry@arm.com>
Cc: YJ Chiang <yj.chiang@mediatek.com>
Cc: Lecopzer Chen <lecopzer.chen@mediatek.com>
---
 kernel/irq/manage.c | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/kernel/irq/manage.c b/kernel/irq/manage.c
index 78f3ddeb7fe4..aa03640cd7fb 100644
--- a/kernel/irq/manage.c
+++ b/kernel/irq/manage.c
@@ -2509,9 +2509,6 @@ int request_percpu_nmi(unsigned int irq, irq_handler_t handler,
  *	This call prepares an interrupt line to deliver NMI on the current CPU,
  *	before that interrupt line gets enabled with enable_percpu_nmi().
  *
- *	As a CPU local operation, this should be called from non-preemptible
- *	context.
- *
  *	If the interrupt line cannot be used to deliver NMIs, function
  *	will fail returning a negative value.
  */
@@ -2521,8 +2518,6 @@ int prepare_percpu_nmi(unsigned int irq)
 	struct irq_desc *desc;
 	int ret = 0;
 
-	WARN_ON(preemptible());
-
 	desc = irq_get_desc_lock(irq, &flags,
 				 IRQ_GET_DESC_CHECK_PERCPU);
 	if (!desc)
@@ -2554,17 +2549,12 @@ int prepare_percpu_nmi(unsigned int irq)
  *	This call undoes the setup done by prepare_percpu_nmi().
  *
  *	IRQ line should not be enabled for the current CPU.
- *
- *	As a CPU local operation, this should be called from non-preemptible
- *	context.
  */
 void teardown_percpu_nmi(unsigned int irq)
 {
 	unsigned long flags;
 	struct irq_desc *desc;
 
-	WARN_ON(preemptible());
-
 	desc = irq_get_desc_lock(irq, &flags,
 				 IRQ_GET_DESC_CHECK_PERCPU);
 	if (!desc)
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
