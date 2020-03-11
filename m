Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFAF0181956
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 14:12:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2xLMyqXUJn/dWpFhRqNp9IxvHacFTdM6Ps00cn5ikUo=; b=gc+ZZHmYO77fkn
	zAvcfBx9DDDLEIkGiRcheKIuy4OF3CcWlZKTvrkUWYNdaxmSLRH2e9dSVnVnPgTYpmmmUS5iM1uW3
	z8JPPxfgFQTHhe0aq7KNuaS2jng/8dQa566LR3lhfRga0rhAJ3hRlDZFEeDSUKqDD9frLLejxLxH4
	H86qCzrKMw5jQ2Osck1cJKCC0L1l/gkY9xT1SWgbBsey1PgmBVT+zmLfBaDp9N47wSOR5N9gMKHkX
	Vqv0ooedaFvlJgCXAdimV0eWUC5DpbuikvMxfvOXquoTPFMJAlzuXsBu+/lN+fahcM6w5KqeUp2AS
	tTBckijaEQBaHBR9Tk2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC19w-0006Zi-7M; Wed, 11 Mar 2020 13:12:28 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC19i-0006Yj-5U
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 13:12:18 +0000
Received: by mail-pj1-x1044.google.com with SMTP id y7so984262pjn.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 06:12:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=zGx3tC+j4wwScyOOZEgYfobl7ESHitp0X2fW0ePwPeA=;
 b=RnoMVBSIDlCbR9SMQjRYqG7XLNB0/Ja6aGtP5iwcyoaJXRujmvvX+3jTocNm45e2v+
 4C1RdEWhPMyliJc5W+Uw56yhgkviMT75q9GVSXP4H+f+Kx9Jwn77SCMM8a+7TF6wIP28
 WWTs5P9rShs+72+0CyLIVOG2ircaFvOpHFJ4j1VdFqQw2CnbfLW9YjVc014yQD4PbcLh
 JZCuOKD4EgYpOtlMg+6cUb87ABjKRfZNDOarV1Q0yWwlphYktjzKTYDtfVbyKajul2o8
 DHJLq9ycFfmEIbQvmiFQR8IYVaqyvBJlmlIyGnwjU78oFyw7gYYFeF5hYscaFquv8Isq
 Hb0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=zGx3tC+j4wwScyOOZEgYfobl7ESHitp0X2fW0ePwPeA=;
 b=La8r0/K5RbtyRFP5/XTjxbvjqR34Qr83s+9hFU4hVsY1z8ETEmZmcUQEIZD5Ri6j4M
 hr4wUFYR1Qv0k5tfSyG4YdkCDWcgub+AOuu0zX96ObWCm6WSO9QcgWnWrSKvkaXv6bx9
 o4E+DKF/7dH416ATHfYMuGrAvO6SwUFjgHQtAuQ8IC2DtSVE1qz0hP+bHpJhWxJhEfgC
 p/lBVL6X8+s67KcVSYb4JhVCPDk1M+ou72emNVzrBUxxyr3QZpwR7eG25X2mxJJ9tXg3
 ydZ0hHJcEeFOBJPD92MLvcdYv7H0g/2xRxutea0qxcYMSPKkGyykNUhGMrsIR8ioHKcP
 jsnA==
X-Gm-Message-State: ANhLgQ2Cpk1M61ntKO4SqpAJFi1kaKztI3l8ak9iQr/PkkCedOp7TRWX
 q0vzXTNgk6206b+dHvZbMVU=
X-Google-Smtp-Source: ADFU+vvPbgKOfQqZTcP9HlWhJ6URPoi7WwdMADheIF4FdkOYjJwaFS/KlHZK8fAVlvDk5E9wKwbJQw==
X-Received: by 2002:a17:90a:8005:: with SMTP id
 b5mr3272477pjn.37.1583932333369; 
 Wed, 11 Mar 2020 06:12:13 -0700 (PDT)
Received: from localhost ([106.51.232.35])
 by smtp.gmail.com with ESMTPSA id w24sm5497734pjh.26.2020.03.11.06.12.12
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 11 Mar 2020 06:12:12 -0700 (PDT)
Date: Wed, 11 Mar 2020 18:42:10 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Subject: Re: [PATCH v4] MIPS: Replace setup_irq() by request_irq()
Message-ID: <20200311131210.GA5115@afzalpc>
References: <20200304203144.GA4323@alpha.franken.de>
 <20200305115759.3186-1-afzal.mohd.ma@gmail.com>
 <20200311053126.GA48442@ubuntu-m2-xlarge-x86>
 <20200311090308.GA5060@afzalpc>
 <20200311104217.GA10615@alpha.franken.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311104217.GA10615@alpha.franken.de>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_061216_995004_13E3DEC3 
X-CRM114-Status: GOOD (  16.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Paul Burton <paulburton@kernel.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, Jiaxun Yang <jiaxun.yang@flygoat.com>,
 "Maciej W. Rozycki" <macro@linux-mips.org>, John Crispin <john@phrozen.org>,
 Huacai Chen <chenhc@lemote.com>, Nathan Chancellor <natechancellor@gmail.com>,
 Keguang Zhang <keguang.zhang@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Thomas,

On Wed, Mar 11, 2020 at 11:42:17AM +0100, Thomas Bogendoerfer wrote:
> On Wed, Mar 11, 2020 at 02:33:08PM +0530, afzal mohammed wrote:

> > diff --git a/arch/mips/kernel/cevt-r4k.c b/arch/mips/kernel/cevt-r4k.c

> >  int r4k_clockevent_init(void)
> >  {
> > -	unsigned long flags = IRQF_PERCPU | IRQF_TIMER | IRQF_SHARED;
> > +	unsigned long flags = IRQF_PERCPU | IRQF_TIMER;

> I don't see why this should help. In my tree only sgi-ip30 removes
> IRQF_SHARED from flags, but then it uses setup_percpu_irq().
> What do I miss ?

You did not miss anything. Though it works, i took a wrong route
following the tags & arrived at that solution in a hurry.
(struct irqaction used in sgi-ip30 was used here earlier w/ setup_irq).

The problem is sanity checks in request_irq() [ rather in
request_thread_iq() ]


	if (((irqflags & IRQF_SHARED) && !dev_id) ||
	    (!(irqflags & IRQF_SHARED) && (irqflags & IRQF_COND_SUSPEND)) ||
	    ((irqflags & IRQF_NO_SUSPEND) && (irqflags & IRQF_COND_SUSPEND)))
		return -EINVAL;

If IRQF_SHARED is passed, it exepcts a non-NULL dev_id, here it is
NULL, setup_irq() doesn't have any check like that.

So i think proper solution is to add a non NULL dev_id, as removing
IRQF_SHARED might affect some platforms that might be using that
interrupt line shared.

Patch with non-NULL dev_id below, it works w/ Nathan's test case.

Would you prefer an incremental patch or a fixed up v5 patch ?

i will test build the other cases as well & sent the patch later today,
though it is trivial, just being paranoid, since bitten by build error
earlier.

Also there was no meaningful pointer to pass as dev_id except in one
case, so i have used name itself.

Regards
afzal

--->8---

diff --git a/arch/mips/dec/setup.c b/arch/mips/dec/setup.c
index c8bbac0c5051..cbbb27fbab19 100644
--- a/arch/mips/dec/setup.c
+++ b/arch/mips/dec/setup.c
@@ -758,7 +758,7 @@ void __init arch_init_irq(void)
 	/* Register the bus error interrupt. */
 	if (dec_interrupt[DEC_IRQ_BUS] >= 0 && busirq_handler) {
 		if (request_irq(dec_interrupt[DEC_IRQ_BUS], busirq_handler,
-				busirq_flags, "bus error", NULL))
+				busirq_flags, "bus error", "bus error"))
 			pr_err("Failed to register bus error interrupt\n");
 	}
 	/* Register the HALT interrupt. */
diff --git a/arch/mips/kernel/cevt-r4k.c b/arch/mips/kernel/cevt-r4k.c
index 64e917dfe6b2..4b19810c67d4 100644
--- a/arch/mips/kernel/cevt-r4k.c
+++ b/arch/mips/kernel/cevt-r4k.c
@@ -292,7 +292,7 @@ int r4k_clockevent_init(void)
 
 	cp0_timer_irq_installed = 1;
 
-	if (request_irq(irq, c0_compare_interrupt, flags, "timer", NULL))
+	if (request_irq(irq, c0_compare_interrupt, flags, "timer", cd))
 		pr_err("Failed to request irq %d (timer)\n", irq);
 
 	return 0;
diff --git a/arch/mips/loongson2ef/lemote-2f/irq.c b/arch/mips/loongson2ef/lemote-2f/irq.c
index 34e15e8b7a8f..1c99e83cabae 100644
--- a/arch/mips/loongson2ef/lemote-2f/irq.c
+++ b/arch/mips/loongson2ef/lemote-2f/irq.c
@@ -109,7 +109,7 @@ void __init mach_init_irq(void)
 
 	/* setup north bridge irq (bonito) */
 	if (request_irq(LOONGSON_NORTH_BRIDGE_IRQ, ip6_action,
-			IRQF_SHARED | IRQF_NO_THREAD, "cascade", NULL))
+			IRQF_SHARED | IRQF_NO_THREAD, "cascade", "cascade"))
 		pr_err("Failed to register north bridge cascade interrupt\n");
 	/* setup source bridge irq (i8259) */
 	if (request_irq(LOONGSON_SOUTH_BRIDGE_IRQ, no_action,
diff --git a/arch/mips/pmcs-msp71xx/msp_time.c b/arch/mips/pmcs-msp71xx/msp_time.c
index baf0da8b4c98..0601a3f7f8f6 100644
--- a/arch/mips/pmcs-msp71xx/msp_time.c
+++ b/arch/mips/pmcs-msp71xx/msp_time.c
@@ -81,7 +81,7 @@ unsigned int get_c0_compare_int(void)
 	/* MIPS_MT modes may want timer for second VPE */
 	if ((get_current_vpe()) && !tim_installed) {
 		if (request_irq(MSP_INT_VPE1_TIMER, c0_compare_interrupt, flags,
-				"timer", NULL))
+				"timer", "timer"))
 			pr_err("Failed to register timer interrupt\n");
 		tim_installed++;
 	}
diff --git a/arch/mips/sni/a20r.c b/arch/mips/sni/a20r.c
index ba966d62fb4b..1bfea4aae124 100644
--- a/arch/mips/sni/a20r.c
+++ b/arch/mips/sni/a20r.c
@@ -223,7 +223,7 @@ void __init sni_a20r_irq_init(void)
 	sni_hwint = a20r_hwint;
 	change_c0_status(ST0_IM, IE_IRQ0);
 	if (request_irq(SNI_A20R_IRQ_BASE + 3, sni_isa_irq_handler,
-			IRQF_SHARED, "ISA", NULL))
+			IRQF_SHARED, "ISA", "ISA"))
 		pr_err("Failed to register ISA interrupt\n");
 }
 
diff --git a/arch/mips/sni/pcit.c b/arch/mips/sni/pcit.c
index 4a850ab03398..15080155cc9a 100644
--- a/arch/mips/sni/pcit.c
+++ b/arch/mips/sni/pcit.c
@@ -245,7 +245,7 @@ void __init sni_pcit_irq_init(void)
 	sni_hwint = sni_pcit_hwint;
 	change_c0_status(ST0_IM, IE_IRQ1);
 	if (request_irq(SNI_PCIT_INT_START + 6, sni_isa_irq_handler,
-			IRQF_SHARED, "ISA", NULL))
+			IRQF_SHARED, "ISA", "ISA"))
 		pr_err("Failed to register ISA interrupt\n");
 }
 
@@ -260,7 +260,7 @@ void __init sni_pcit_cplus_irq_init(void)
 	sni_hwint = sni_pcit_hwint_cplus;
 	change_c0_status(ST0_IM, IE_IRQ0);
 	if (request_irq(MIPS_CPU_IRQ_BASE + 3, sni_isa_irq_handler,
-			IRQF_SHARED, "ISA", NULL))
+			IRQF_SHARED, "ISA", "ISA"))
 		pr_err("Failed to register ISA interrupt\n");
 }
 
diff --git a/arch/mips/sni/rm200.c b/arch/mips/sni/rm200.c
index ba1f2fc6a43e..2b4a6448b428 100644
--- a/arch/mips/sni/rm200.c
+++ b/arch/mips/sni/rm200.c
@@ -473,10 +473,10 @@ void __init sni_rm200_irq_init(void)
 	sni_hwint = sni_rm200_hwint;
 	change_c0_status(ST0_IM, IE_IRQ0);
 	if (request_irq(SNI_RM200_INT_START + 0, sni_rm200_i8259A_irq_handler,
-			IRQF_SHARED, "onboard ISA", NULL))
+			IRQF_SHARED, "onboard ISA", "onboard ISA"))
 		pr_err("Failed to register onboard ISA interrupt\n");
 	if (request_irq(SNI_RM200_INT_START + 1, sni_isa_irq_handler,
-			IRQF_SHARED, "ISA", NULL))
+			IRQF_SHARED, "ISA", "ISA"))
 		pr_err("Failed to register ISA interrupt\n");
 }
 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
