Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1813717A546
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 13:30:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cWVdRhYB7w98CpEa2206JPhaCfLJqArFSBsbWlBsHaE=; b=Hl+QJFTwJ5Jm63
	jVVNwLeCXMTrY9uvFTK6Cm2NcEISIRJaW/KYT2pCi6j7FY5NhHNNdl3HAMsLFFXq93ekoifRzLeUZ
	fxugASmjbPbCU58FhUNMHhqFjjdpOzMHF2kOv7QvGeORR/CeZyqaMluPoXg9VH15VCrRjaF4X3wNw
	XunxuA5XmcEgkVYtJlHTMxJgt/XRbgTUgKqyy5BCU76OX9CMYQB0C2AhPFPL0v/33NXItzhwtsZpk
	mLOImHtrG8eBu6flNUpORmy/prPf6Q8Jb043r7W7AnZ51NJu5iY4OEOYx2nNSLTmO/SJQDDpNkbXX
	5gvOW/C28TpGjpqSHXuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9pdp-0002yF-0b; Thu, 05 Mar 2020 12:30:17 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9pdV-0002x6-3Q
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 12:29:58 +0000
Received: by mail-pj1-x1042.google.com with SMTP id s8so2474048pjq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Mar 2020 04:29:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=NsRFIJGbLn09Yax3ALyppTmkBEnV+CVKPbERHBMJArw=;
 b=sfLY1PVAAba9flVNioMeI/lpgOvKqnCrbN/jvx2s7G2M/KM8LF5qFZI3vYwUVYwH8A
 wu0rLrgHHp9lcLeR0qxEqY3tDGe4V0VjSvfEBl+n/To44sG45BiJMCge+7gy6VdmBJMy
 z7wRevZFUrlGABpABDREyaCzhrONhlYC9LKSDpo0AvxgtthFEZgx5WAntPfSpWv8cHFE
 0j+YqesLJSRZJA+47k+8KUAmBejbHzzxrCmlHiq2Fge2T0JcfXPF5/4hPecEmPt2w0Pq
 MzQegrZy43EqqYn7u4bar67QlT5y/0NQLkMIkqG+CMa5fiuxtARUVY0mjL8FvpuihnUW
 i6/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=NsRFIJGbLn09Yax3ALyppTmkBEnV+CVKPbERHBMJArw=;
 b=bWP+H1/sNDplewp4L9xjMpyIplmKUtNp/MEnnIYFkQ3+JORT2wcHOxdvF4BegRQgKb
 4t8+manSur+bH4U3oIeaasly7/aLJYwf3n5oPqj+DhsHsmolve2+sZ2a+UYS1ICMYzDb
 ZtHjGibAkiz+mSsBdFWGvnfYwYJ5b2fajjQ8KhAcwXuziZvrStoDQp+nUyQxmSZUF+s+
 W3lq+ZsSJ8BNKRba7Xu3rR/WfNEDJtL6hmdE3WkJF+BDlylcv3uosybblMONo4ON2wnw
 rUDD3rBGFunq8n51qxL9/b0IBJX6nkn6SrtL9LbPCSPJli3yy6efkO6AI87IXrtkeu0k
 s+3A==
X-Gm-Message-State: ANhLgQ3mWNBDI4AQu9vREOGSo6ZzDx0ymUGk5VFjDli7ZwbnArPhYJWc
 nMcDEenZnInv4IgvWp3vwvs=
X-Google-Smtp-Source: ADFU+vvJHPjqW9pEsQ+KnwdNio1Po/d3nZ0nPLW6PPI8aKwONgI+eNX/DpuFxwpDPdA/m1IlT2WoMg==
X-Received: by 2002:a17:90b:3542:: with SMTP id
 lt2mr7959300pjb.96.1583411393413; 
 Thu, 05 Mar 2020 04:29:53 -0800 (PST)
Received: from localhost ([106.51.232.35])
 by smtp.gmail.com with ESMTPSA id h29sm29221565pfk.57.2020.03.05.04.29.52
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 05 Mar 2020 04:29:52 -0800 (PST)
Date: Thu, 5 Mar 2020 17:59:50 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Subject: Re: [PATCH v3] MIPS: Replace setup_irq() by request_irq()
Message-ID: <20200305122950.GA4981@afzalpc>
References: <20200304005549.5832-1-afzal.mohd.ma@gmail.com>
 <20200304203144.GA4323@alpha.franken.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200304203144.GA4323@alpha.franken.de>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_042957_171080_7963316E 
X-CRM114-Status: GOOD (  19.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
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

On Wed, Mar 04, 2020 at 09:31:44PM +0100, Thomas Bogendoerfer wrote:
> On Wed, Mar 04, 2020 at 06:25:43AM +0530, afzal mohammed wrote:

> > Hi mips maintainers,
> > 
> > if okay w/ this change, please consider taking it thr' your tree, else please
> > let me know.
> 
> sorry this doesn't even compile for the first platform I've tested:

i apologize for the mistake.

Of the 15 architectures that were subjected to setup_irq() cleanup,
i had done build & boot test only on ARM & x86_64, at the minimum i
should have informed you upfront in the previous mail (in v2 & v1 it was
mentioned in cover letter). i was trying to rely on kbuild test robot
for help in building other arch's. Seems it is randomly selecting
patches, since some of the issues were present in v2 & v1 as well and
no error report were recieved on v1 & v2 MIPS patch.

kbuild test robot had provided the way to create mips cross compiler
as well as the config. The build error has been fixed that were
spotted by you as well kbuild test robot, also there were a few more
issues including other build error. v4 that resolves all these
has been sent.

All the files that has been modified has been verifed to generate
object files w/o error or warnings. w/ the test robot provided config,
not all changes in my patch were being compiled, so i had to manually
select each machines one at a time to verify every change. Also i
couldn't build 3 machines (msp71xx, loongson64 & bcm63xx) even w/o my
changes. Those i had to find out defconfig's that can make those
changes build, then they also could be verified.

Sorry for the trouble, please let me know if further issues.

For your reference, diff between v4 & v3 below,

Regards
afzal


diff --git a/arch/alpha/kernel/irq_alpha.c b/arch/alpha/kernel/irq_alpha.c
index d4f136c7fb11..d17e44c99df9 100644
--- a/arch/alpha/kernel/irq_alpha.c
+++ b/arch/alpha/kernel/irq_alpha.c
@@ -214,7 +214,7 @@ process_mcheck_info(unsigned long vector, unsigned long la_ptr,
  * processed by PALcode, and comes in via entInt vector 1.
  */
 void __init
-init_rtc_irq(irqreturn_t handler)
+init_rtc_irq(irq_handler_t handler)
 {
 	irq_set_chip_and_handler_name(RTC_IRQ, &dummy_irq_chip,
 				      handle_percpu_irq, "RTC");
diff --git a/arch/alpha/kernel/irq_impl.h b/arch/alpha/kernel/irq_impl.h
index 7ac58be4ccf4..fbf21892e66d 100644
--- a/arch/alpha/kernel/irq_impl.h
+++ b/arch/alpha/kernel/irq_impl.h
@@ -23,7 +23,7 @@ extern void pyxis_device_interrupt(unsigned long);
 
 extern void init_srm_irqs(long, unsigned long);
 extern void init_pyxis_irqs(unsigned long);
-extern void init_rtc_irq(irqreturn_t handler);
+extern void init_rtc_irq(irq_handler_t  handler);
 
 extern void common_init_isa_dma(void);
 
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
