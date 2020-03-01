Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA672174D3E
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Mar 2020 13:22:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=pLKQKj9xx+sKcz+pBCwfCYTCKWeFkDb6U4OnpWa1+P8=; b=jaA
	f54FKf4wentjm848pIIxtWZuYxo4f0rXlHjpOauRFPbTXKlYpkcV6YFH8yhTgyEllIVKXuqk8PZjG
	ioxehnw5/rSJd/x/ZDXQQcg0ueBpJniM5P3CT+UmL2k2/jgkY62mD3kd2ezMY6GiYb5UcWJDsz19A
	6zXgmPCR5q98MRq6KNJhmrdI/hJokXhEyT/YCGHLkvB0LaX6fu5JGbHjAIqL6l61EEjvCbv36wmEh
	k13PC/UqOLnkIG6FOguS74nepxW3vDugk/PDc+XsibPYhraapxu0vWA43mIDQlxwVAz5c6a/JWXDn
	TT5ETZo8kSiBSFDWFluG36ZDICfGX/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8NbZ-0005dx-0X; Sun, 01 Mar 2020 12:21:57 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8NbR-0005dV-LV
 for linux-arm-kernel@lists.infradead.org; Sun, 01 Mar 2020 12:21:51 +0000
Received: by mail-pl1-x641.google.com with SMTP id b22so3060942pls.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 01 Mar 2020 04:21:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=w0c1c1TYgjKKGwrCeZ2Sljbbbzmh76leW+pgvpNj85Y=;
 b=ViNPVmmLWxxG/CwD68Lub0v7mK66X9tJA70hy1uU8/SPwC6X+9VMTqtZznRl12WxTR
 9wDgN577CZ+EFavhIg89mRV7RrP4stiPWpdlr1q2Qf/LbfZmSwAbFFc/Wi/G9RjNCbvi
 +GaYEy/9aYJNwDrr8mNeBtOr5ecCLNvCNhfqtypZ0v47wRZR1uI8lPDmWRoMoXNqDeOd
 908Bbq/i6tzTrJwWnYRcDmZLSEhRgPr7qp+UkwAauY9NvwU6b2J57Sq72atp0YKXySs0
 Q1FOkmAVvn232wbubQg3qvRLrGpYoxD6weNXmzkNcpXYmcTRi5MhJYxAcFRBtPHinw4e
 SDMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=w0c1c1TYgjKKGwrCeZ2Sljbbbzmh76leW+pgvpNj85Y=;
 b=ucABbjE+sxWjnW8VoCZ8o9ZlZYN8R0IEWJd+GnmICWDZqv5qTzNQ4J0pUDCgIcaL3+
 5he7ipmqgwJg0ggEVznY17SUwMpoDnxsx5uNEc+9epVAXyhOunbT+G0jpq7eIZqKOplw
 0QkEMobbJGwf0NgdMl9G6xPo4Rt3e1AMwvpdJnqufSo/XUYTaggu+/RtdtJnXi+RlJ5F
 s9gEuEvApZWbMB2ZvYq2qLMQ2IxTsmshRNRuAmTtxiIsH1QrBG86J5VNlL9WgoWuoU9+
 m4MelXbRMkCCw5UWBWUXbihqQTk/GZwu6R6mCu5V66i3RV6iLuEY3pkejrlNv9pURyC/
 1EJA==
X-Gm-Message-State: APjAAAUKsbFzAw6z6YPmCxewYkpjW0Kw2fDaaioRGX//0PxkJ//aIlLj
 XW4drLtWjE0G/92UUNCCVQo=
X-Google-Smtp-Source: APXvYqwMFvJWHsyQrA7KFM/r4/41Gk9jRdjsEvQG+mOPx10nGLsQdSxf9naUiKWaF6kk2cwtz6BvAA==
X-Received: by 2002:a17:90a:c78b:: with SMTP id
 gn11mr15416280pjb.97.1583065308737; 
 Sun, 01 Mar 2020 04:21:48 -0800 (PST)
Received: from localhost.localdomain ([106.51.232.35])
 by smtp.gmail.com with ESMTPSA id j21sm8227043pji.13.2020.03.01.04.21.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 01 Mar 2020 04:21:48 -0800 (PST)
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Viresh Kumar <viresh.kumar@linaro.org>,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3] ARM: footbridge: replace setup_irq() by request_irq()
Date: Sun,  1 Mar 2020 17:51:31 +0530
Message-Id: <20200301122131.3902-1-afzal.mohd.ma@gmail.com>
X-Mailer: git-send-email 2.18.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_042149_699527_1E3338DB 
X-CRM114-Status: GOOD (  13.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: afzal mohammed <afzal.mohd.ma@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

request_irq() is preferred over setup_irq(). Invocations of setup_irq()
occur after memory allocators are ready.

Per tglx[1], setup_irq() existed in olden days when allocators were not
ready by the time early interrupts were initialized.

Hence replace setup_irq() by request_irq().

[1] https://lkml.kernel.org/r/alpine.DEB.2.20.1710191609480.1971@nanos

Signed-off-by: afzal mohammed <afzal.mohd.ma@gmail.com>
---
Hi sub-arch maintainers,

If the patch is okay, please take it thr' your tree.

Regards
afzal

v3:
 * Split out from series, also create subarch level patch as Thomas
	suggested to take it thr' respective maintainers
 * Modify string displayed in case of error as suggested by Thomas
 * Re-arrange code as required to improve readability
 * Remove irrelevant parts from commit message & improve
 
v2:
 * Replace pr_err("request_irq() on %s failed" by
           pr_err("%s: request_irq() failed"
 * Commit message massage

 arch/arm/mach-footbridge/dc21285-timer.c | 11 +++--------
 arch/arm/mach-footbridge/isa-irq.c       | 10 ++++------
 arch/arm/mach-footbridge/isa-timer.c     | 11 +++--------
 3 files changed, 10 insertions(+), 22 deletions(-)

diff --git a/arch/arm/mach-footbridge/dc21285-timer.c b/arch/arm/mach-footbridge/dc21285-timer.c
index f76212d2dbf1..2908c9ef3c9b 100644
--- a/arch/arm/mach-footbridge/dc21285-timer.c
+++ b/arch/arm/mach-footbridge/dc21285-timer.c
@@ -101,13 +101,6 @@ static irqreturn_t timer1_interrupt(int irq, void *dev_id)
 	return IRQ_HANDLED;
 }
 
-static struct irqaction footbridge_timer_irq = {
-	.name		= "dc21285_timer1",
-	.handler	= timer1_interrupt,
-	.flags		= IRQF_TIMER | IRQF_IRQPOLL,
-	.dev_id		= &ckevt_dc21285,
-};
-
 /*
  * Set up timer interrupt.
  */
@@ -118,7 +111,9 @@ void __init footbridge_timer_init(void)
 
 	clocksource_register_hz(&cksrc_dc21285, rate);
 
-	setup_irq(ce->irq, &footbridge_timer_irq);
+	if (request_irq(ce->irq, timer1_interrupt, IRQF_TIMER | IRQF_IRQPOLL,
+			"dc21285_timer1", &ckevt_dc21285))
+		pr_err("Failed to request irq %d (dc21285_timer1)", ce->irq);
 
 	ce->cpumask = cpumask_of(smp_processor_id());
 	clockevents_config_and_register(ce, rate, 0x4, 0xffffff);
diff --git a/arch/arm/mach-footbridge/isa-irq.c b/arch/arm/mach-footbridge/isa-irq.c
index 88a553932c33..16c5455199e8 100644
--- a/arch/arm/mach-footbridge/isa-irq.c
+++ b/arch/arm/mach-footbridge/isa-irq.c
@@ -96,11 +96,6 @@ static void isa_irq_handler(struct irq_desc *desc)
 	generic_handle_irq(isa_irq);
 }
 
-static struct irqaction irq_cascade = {
-	.handler = no_action,
-	.name = "cascade",
-};
-
 static struct resource pic1_resource = {
 	.name	= "pic1",
 	.start	= 0x20,
@@ -146,6 +141,8 @@ void __init isa_init_irq(unsigned int host_irq)
 	}
 
 	if (host_irq != (unsigned int)-1) {
+		int irq = IRQ_ISA_CASCADE;
+
 		for (irq = _ISA_IRQ(0); irq < _ISA_IRQ(8); irq++) {
 			irq_set_chip_and_handler(irq, &isa_lo_chip,
 						 handle_level_irq);
@@ -160,7 +157,8 @@ void __init isa_init_irq(unsigned int host_irq)
 
 		request_resource(&ioport_resource, &pic1_resource);
 		request_resource(&ioport_resource, &pic2_resource);
-		setup_irq(IRQ_ISA_CASCADE, &irq_cascade);
+		if (request_irq(irq, no_action, 0, "cascade", NULL))
+			pr_err("Failed to request irq %d (cascade)\n", irq);
 
 		irq_set_chained_handler(host_irq, isa_irq_handler);
 
diff --git a/arch/arm/mach-footbridge/isa-timer.c b/arch/arm/mach-footbridge/isa-timer.c
index 82f45591fb2c..723e3eae995d 100644
--- a/arch/arm/mach-footbridge/isa-timer.c
+++ b/arch/arm/mach-footbridge/isa-timer.c
@@ -25,17 +25,12 @@ static irqreturn_t pit_timer_interrupt(int irq, void *dev_id)
 	return IRQ_HANDLED;
 }
 
-static struct irqaction pit_timer_irq = {
-	.name		= "pit",
-	.handler	= pit_timer_interrupt,
-	.flags		= IRQF_TIMER | IRQF_IRQPOLL,
-	.dev_id		= &i8253_clockevent,
-};
-
 void __init isa_timer_init(void)
 {
 	clocksource_i8253_init();
 
-	setup_irq(i8253_clockevent.irq, &pit_timer_irq);
+	if (request_irq(i8253_clockevent.irq, pit_timer_interrupt,
+			IRQF_TIMER | IRQF_IRQPOLL, "pit", &i8253_clockevent))
+		pr_err("Failed to request irq %d(pit)\n", i8253_clockevent.irq);
 	clockevent_i8253_init(false);
 }
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
