Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 559A41D9C55
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 18:19:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nxDdyq8E+a7VfKnJ0vL44jxE2BLtBd2hnTMgM1insww=; b=WDg2rY5bLVPHQ+
	f7vnAk2Xy8FDA/PjYEwMIXXXES095PwNPowtcjpIhSwzrSFwR0BKuaHY5s99RjbFYjhuiypBtTU9/
	L+DMLhdDd7DfspoTCUJ/gYweXPp2Fi9l1gZKk8cJSAaKf6e9GWI/ysj9uzeor3z6pVBqkfKnoIj8T
	38Ce4SMkZ41bnJTuNq6PouhoIZxUrxO8hB0BpzK5Jq3XLqtZ6xpoVJCLsxdCs1GMsU24QypLgeJ6T
	f0dVBiTBfjfsG85RSebJFEYQy/qxd5qGmP2HaLFUota1xOjCsx1q4+bC0Kbci7pSpmRqpZh7b9q7B
	RuEpUavshfWaqnEC6eiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb4xJ-0003Wa-Bf; Tue, 19 May 2020 16:19:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb4wg-0003G8-Qp
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 16:18:24 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 69B142081A;
 Tue, 19 May 2020 16:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589905102;
 bh=ETceS5yARBIur5hySytUSkticz4wlgZ6d9YCm3cxtPg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=i3yZhUlGNvJcRentzFVvLNeLIyti5dro9BGoBLWzXGOCw9ZpaxMTHWk9kUwZxuT3d
 MxFmp0fiJeK3uDMYmnao8e8HIguvnsF5UDrii/DgLlaC2/Qblj3zXE22znL5P4bzgk
 MI2gLoZBr+AH1PIrqdcPmOJKV98gF6MD5C39CrDU=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jb4we-00Decy-QX; Tue, 19 May 2020 17:18:20 +0100
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 01/11] genirq: Add fasteoi IPI flow
Date: Tue, 19 May 2020 17:17:45 +0100
Message-Id: <20200519161755.209565-2-maz@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200519161755.209565-1-maz@kernel.org>
References: <20200519161755.209565-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, will@kernel.org, catalin.marinas@arm.com,
 linux@arm.linux.org.uk, tglx@linutronix.de, jason@lakedaemon.net,
 sumit.garg@linaro.org, kernel-team@android.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_091822_904629_68DDF998 
X-CRM114-Status: GOOD (  15.46  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sumit Garg <sumit.garg@linaro.org>, kernel-team@android.com,
 Russell King <linux@arm.linux.org.uk>, Jason Cooper <jason@lakedaemon.net>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For irqchips using the fasteoi flow, IPIs are a bit special.

They need to be EOId early (before calling the handler), as
funny things may happen in the handler (they do not necessarily
behave like a normal interrupt), and that the arch code is
already handling the stats.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 include/linux/irq.h |  1 +
 kernel/irq/chip.c   | 26 ++++++++++++++++++++++++++
 2 files changed, 27 insertions(+)

diff --git a/include/linux/irq.h b/include/linux/irq.h
index 8d5bc2c237d7..726f94d8b8cc 100644
--- a/include/linux/irq.h
+++ b/include/linux/irq.h
@@ -621,6 +621,7 @@ static inline int irq_set_parent(int irq, int parent_irq)
  */
 extern void handle_level_irq(struct irq_desc *desc);
 extern void handle_fasteoi_irq(struct irq_desc *desc);
+extern void handle_percpu_devid_fasteoi_ipi(struct irq_desc *desc);
 extern void handle_edge_irq(struct irq_desc *desc);
 extern void handle_edge_eoi_irq(struct irq_desc *desc);
 extern void handle_simple_irq(struct irq_desc *desc);
diff --git a/kernel/irq/chip.c b/kernel/irq/chip.c
index 41e7e37a0928..7b0b789cfed4 100644
--- a/kernel/irq/chip.c
+++ b/kernel/irq/chip.c
@@ -955,6 +955,32 @@ void handle_percpu_devid_irq(struct irq_desc *desc)
 		chip->irq_eoi(&desc->irq_data);
 }
 
+/**
+ * handle_percpu_devid_fasteoi_ipi - Per CPU local IPI handler with per cpu
+ *				     dev ids
+ * @desc:	the interrupt description structure for this irq
+ *
+ * The biggest differences with the IRQ version are that:
+ * - the interrupt is EOIed early, as the IPI could result in a context
+ *   switch, and we need to make sure the IPI can fire again
+ * - Stats are usually handled at the architecture level, so we ignore them
+ *   here
+ */
+void handle_percpu_devid_fasteoi_ipi(struct irq_desc *desc)
+{
+	struct irq_chip *chip = irq_desc_get_chip(desc);
+	struct irqaction *action = desc->action;
+	unsigned int irq = irq_desc_get_irq(desc);
+	irqreturn_t res;
+
+	if (chip->irq_eoi)
+		chip->irq_eoi(&desc->irq_data);
+
+	trace_irq_handler_entry(irq, action);
+	res = action->handler(irq, raw_cpu_ptr(action->percpu_dev_id));
+	trace_irq_handler_exit(irq, action, res);
+}
+
 /**
  * handle_percpu_devid_fasteoi_nmi - Per CPU local NMI handler with per cpu
  *				     dev ids
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
