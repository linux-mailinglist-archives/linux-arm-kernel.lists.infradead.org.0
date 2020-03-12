Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE783183159
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 14:27:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TUupyk+mN8h/5WprxhZWtmSj1laLZTJZHdJIF4/i8qo=; b=NtXT7NfXBuuWVn
	/kkh+xWi6Z1+18FITxycacWIfnlpAPZx+J21Ae+LKckh4YAU76UwY6s074vAotJwyQUlxdnhKHu+O
	CMS5u7M+tPG2FOKcTcivZQjAftebc5lORtZUeTrWZwJ8cYggKrZvS/NC9jExeE5RxZZjlUCrOjbIV
	o+RZsZC6KOrrsYrg9vW3lzjXpADx16lzz2U4E7NbJ/3JDwMTMAPje6dV1zOYQG79EFO7XRnTenHDH
	HX0SfrDSINv6+d5qlymvsCDpuEG6sjDz579n4fkRrQwO4EuvDsXsyVv6NX/eoREGfWH/yZbiFBCHV
	T5TeQSfz/MUnWSVLOSTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCNsK-0001Gy-RE; Thu, 12 Mar 2020 13:27:48 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCNsA-0001Gb-8k
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 13:27:39 +0000
Received: by mail-pl1-x643.google.com with SMTP id a23so2682617plm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Mar 2020 06:27:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=JKFqhd+nMSKzAdoK7AjT9pTQERNeETS/59Lgbygkk7g=;
 b=OvlWQc6WNDKyowJH9y7kcTign22MgmP0oeefvShUzlLlMI4OJsS/HVZP5lLVLKdOaX
 PUSTrSA/qK7Ylf81hq66/4wLWraG0Ry8kSqXplcY9boO4EBryXKGH1l2XwYCMnB+heDX
 5Ks886ykbbEpB1U0DwnksAHNoP2WgQba7UO2ibSAqONwpzRK/YAJtGS1jdpXCF7UvgWh
 4PIIq+dMMtIyQPpEQRMZ+sLjLuSxEC8l+QyZprGHgFYGb86ECgAb1xV8+Xvsxx73iI3A
 DrsoB5yONwZFvex3s2IZmqYBpbt0VTWJTHYhQdohvi1zVPQ7EC1BNY0bfNsKHWq6Mzvv
 UpcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=JKFqhd+nMSKzAdoK7AjT9pTQERNeETS/59Lgbygkk7g=;
 b=ZVUPIPlzVypURawehjJS4jK2+moqhlsoDKAm8FA3gtrf5EtCLuvGRKS8M2c90HwlWv
 9hVRNiTxL81lB6ZedRBcqSbysRymllrsk7+Emw/DE1MnvC+KZNZEtZPYlEkRY+d5ny4m
 NJZ/RulkS9th3vQ7cED4irfNg0XwiX8YRXDFcD24t8PiZ3FDIVtCSUOuqhmsqoDCsoWm
 a82UcHijcIDrmZ8pYJD6tRvih7C5kWiFG2hrxZ2jS6SzoWoL0/f89yCDbn1kXv+3ppLh
 5PN/qtfB66+btIJOYraZr8sp0UyxHNB9JrQIavs+LplFBy63F58oY2eYlQJgNCN/c1/I
 iCFA==
X-Gm-Message-State: ANhLgQ0RGwEYSRG1vm7EDWtvzdCvl4MvjmS0NpMIYq1fEB4W6NtaNqlq
 JJzFb/OCKzCScYTw0Qiv17nDvKCj
X-Google-Smtp-Source: ADFU+vv1g/KTsOCtkIcpAhvugu4fcEvtCVm20e2j1kQt3LgV/3Qdfaeon9yFI0blBvlDo9PwSbvnig==
X-Received: by 2002:a17:90a:ac05:: with SMTP id
 o5mr4331961pjq.143.1584019657326; 
 Thu, 12 Mar 2020 06:27:37 -0700 (PDT)
Received: from localhost ([106.51.232.35])
 by smtp.gmail.com with ESMTPSA id s13sm9204098pjp.1.2020.03.12.06.27.36
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 12 Mar 2020 06:27:36 -0700 (PDT)
Date: Thu, 12 Mar 2020 18:57:34 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: [PATCH v4] ARM: footbridge: replace setup_irq() by request_irq()
Message-ID: <20200312132734.GA5294@afzalpc>
References: <20200301122131.3902-1-afzal.mohd.ma@gmail.com>
 <20200312123432.GZ25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200312123432.GZ25745@shell.armlinux.org.uk>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_062738_309272_FC7A372D 
X-CRM114-Status: GOOD (  14.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Viresh Kumar <viresh.kumar@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
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

v4:
 * Fix build warning in isa-irq.c & ensure no build warnings
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
index 88a553932c33..842ddb4121ef 100644
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
@@ -160,7 +155,10 @@ void __init isa_init_irq(unsigned int host_irq)
 
 		request_resource(&ioport_resource, &pic1_resource);
 		request_resource(&ioport_resource, &pic2_resource);
-		setup_irq(IRQ_ISA_CASCADE, &irq_cascade);
+
+		irq = IRQ_ISA_CASCADE;
+		if (request_irq(irq, no_action, 0, "cascade", NULL))
+			pr_err("Failed to request irq %u (cascade)\n", irq);
 
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
