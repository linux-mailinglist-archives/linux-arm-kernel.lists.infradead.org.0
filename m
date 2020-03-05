Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B082017A577
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 13:42:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Pb8nD4nPFssD+cUcKfBvnRU1DsdQvRgEFGcX6lVDFw=; b=r/vOzVOxxnX1Jz
	Ke4BPboM6CSAMyr8hwTP5WByryZzzuZAeljb/Yqq7+yc33ZHrsGivlYIWggEIkRZZ/TJtyrwZSbTL
	nKNo6uN2wi3CGDcydMJu7bbx5yoGgTDpNvCOrHKGlcQ9EBa047h+5xjnMSErlKhh0pVqfzmLUNzS8
	ALjRLjhJWOL+MnVk3RgI3G6ov+bYQ9tuCyZjX5XWg/Pvo9OFcXnjNLrLNjsqAbiVAzhgss4Qiph3C
	sQwLddzdM2A6QS8hq6ljmaivzTupIObTBvnbx63h01DQHwDXccxQ6R+DaFH7D78oZ2TCRtMGZuFeG
	j1bLCuFuxiGnUuIMFLxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9ppz-00006f-68; Thu, 05 Mar 2020 12:42:51 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9ppr-000061-MO
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 12:42:45 +0000
Received: by mail-pg1-x543.google.com with SMTP id z12so2719623pgl.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Mar 2020 04:42:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Iv+8lkf0g9FKK4aGWH4FIny5NJBBPfHf9mcxAx6Usno=;
 b=vU/DIA2JriGM1rc8p00USJ6gdHsZ5BR6i8mFgZBslRFCcZJf3lWyuL/hEcjDcjWXsQ
 M2mM+hEBtRdN3ib2OsUf706OptuaUPu2sBlX1JBGSSMA1wJeWy34m23puTA8Tn5yND80
 1V97QccuIFkkgVj55WkNTYelL6uVYDOHPV/qZUn553vCcU/XeBL+skLsNo/9xeucBLnF
 mrEzTDnqMXzyKdeCKYZsEg03k+cwbZMbh77lG0OaOdRCzW6jK6FEjIdj4aSNEDdiqpDk
 T6K79tf1w6PoN6Dh2FuW/7i0CZG+n0RGlaqO5mmlJpevaT6qcdesvhnp+ElkHKBKs1nd
 qy7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Iv+8lkf0g9FKK4aGWH4FIny5NJBBPfHf9mcxAx6Usno=;
 b=Sijnk7pNT/W026EdVNOpijPTKdpg9EJZFjyWG9eMBl5pRshftWdADeSXCgX3QVgEX8
 aVvhrsySmMSLfNGvwlyXsy6b50Glys3JN2l7iyyMxa3rpPN9D9SU0plA7sFjOhjgFv0w
 gkgIgOXe8IBFfpJgfeiZ4KV01sgP/1IAogEVH3zodCDhNzvEKqZcBCRzEUQUTAD2wSe7
 1f6DR3JSn9FmIqSCchScFs2CMsbl7RiqrAeUWJtXGWQ+UVIuJbuS3FLxOEXozDjtyLFw
 rBJu8f9B6UnxbkrN+kga1hSXtPktN1id6WywrCaax9gnChv+issF/idk/lRapBOnnvrA
 D6DQ==
X-Gm-Message-State: ANhLgQ0zU2U4ANz1ygEm+M/Xf+8T0ybV7XDXgr0kyEEzp8xvGO+SjWt9
 4nhi1B0uFCm87lOTEHKpxcA=
X-Google-Smtp-Source: ADFU+vtYWl43QzYXnKwbkZvQID3ixOcFBQpoNs4i8/pbVTarGyppbev2Io0/PMNQniAOpJVFs5jfRg==
X-Received: by 2002:a63:d244:: with SMTP id t4mr7428763pgi.241.1583412162761; 
 Thu, 05 Mar 2020 04:42:42 -0800 (PST)
Received: from localhost ([106.51.232.35])
 by smtp.gmail.com with ESMTPSA id z6sm7412661pfq.39.2020.03.05.04.42.41
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 05 Mar 2020 04:42:42 -0800 (PST)
Date: Thu, 5 Mar 2020 18:12:40 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Subject: Re: [PATCH v3] MIPS: Replace setup_irq() by request_irq()
Message-ID: <20200305124240.GA4940@afzalpc>
References: <20200304005549.5832-1-afzal.mohd.ma@gmail.com>
 <20200304203144.GA4323@alpha.franken.de>
 <20200305122950.GA4981@afzalpc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200305122950.GA4981@afzalpc>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_044243_756228_35934C17 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Huacai Chen <chenhc@lemote.com>, Keguang Zhang <keguang.zhang@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Thomas,

On Thu, Mar 05, 2020 at 05:59:50PM +0530, afzal mohammed wrote:

> For your reference, diff between v4 & v3 below,

i messed up with the diff b/n v4 & v3, correct one as follows, v4 is a
proper one, only diff generation got messed up.

Regards
afzal

diff --git a/arch/mips/include/asm/sni.h b/arch/mips/include/asm/sni.h
index b8653de25ca1..7dfa297ce597 100644
--- a/arch/mips/include/asm/sni.h
+++ b/arch/mips/include/asm/sni.h
@@ -11,6 +11,8 @@
 #ifndef __ASM_SNI_H
 #define __ASM_SNI_H
 
+#include <linux/irqreturn.h>
+
 extern unsigned int sni_brd_type;
 
 #define SNI_BRD_10		   2
diff --git a/arch/mips/pmcs-msp71xx/msp_time.c b/arch/mips/pmcs-msp71xx/msp_time.c
index 5f211d2d14ff..baf0da8b4c98 100644
--- a/arch/mips/pmcs-msp71xx/msp_time.c
+++ b/arch/mips/pmcs-msp71xx/msp_time.c
@@ -76,7 +76,7 @@ void __init plat_time_init(void)
 
 unsigned int get_c0_compare_int(void)
 {
-	unsigned log flags = IRQF_PERCPU | IRQF_TIMER | IRQF_SHARED;
+	unsigned long flags = IRQF_PERCPU | IRQF_TIMER | IRQF_SHARED;
 
 	/* MIPS_MT modes may want timer for second VPE */
 	if ((get_current_vpe()) && !tim_installed) {
diff --git a/arch/mips/ralink/cevt-rt3352.c b/arch/mips/ralink/cevt-rt3352.c
index 84013214434a..269d4877d120 100644
--- a/arch/mips/ralink/cevt-rt3352.c
+++ b/arch/mips/ralink/cevt-rt3352.c
@@ -89,7 +89,7 @@ static int systick_shutdown(struct clock_event_device *evt)
 	sdev = container_of(evt, struct systick_device, dev);
 
 	if (sdev->irq_requested)
-		free_irq(systick.dev.irq, &systick_irqaction);
+		free_irq(systick.dev.irq, &systick.dev);
 	sdev->irq_requested = 0;
 	iowrite32(0, systick.membase + SYSTICK_CONFIG);
 
diff --git a/arch/mips/sni/time.c b/arch/mips/sni/time.c
index 5254a3a1f37c..240bb68ec247 100644
--- a/arch/mips/sni/time.c
+++ b/arch/mips/sni/time.c
@@ -62,14 +62,12 @@ static irqreturn_t a20r_interrupt(int irq, void *dev_id)
 static void __init sni_a20r_timer_setup(void)
 {
 	struct clock_event_device *cd = &a20r_clockevent_device;
-	struct irqaction *action = &a20r_irqaction;
 	unsigned int cpu = smp_processor_id();
 
 	cd->cpumask		= cpumask_of(cpu);
 	clockevents_register_device(cd);
-	action->dev_id = cd;
 	if (request_irq(SNI_A20R_IRQ_TIMER, a20r_interrupt,
-			IRQF_PERCPU | IRQF_TIMER, "a20r-timer", NULL))
+			IRQF_PERCPU | IRQF_TIMER, "a20r-timer", cd))
 		pr_err("Failed to register a20r-timer interrupt\n");
 }
 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
