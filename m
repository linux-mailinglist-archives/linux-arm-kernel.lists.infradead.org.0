Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 984F9168339
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 17:25:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wA0snlqgPpu+2jRsUeqUo0OQEXml97tePlObe/27uTg=; b=EJGP4Fy3WEwBPTr9mAUVbTMYm
	ONoylXpTW6XxHjiP/NBBFhFVNZOdak6qCqn5+fQ8ifyNfHo8uwBY3ve2jIM7/dNkxjhnxgmzSzxod
	JRvwQtLfgIc1e8LCKbyKFZfDn5GF7pyYwUWhA8NgsR1U2NKUILEXZxQ/LUo1NoMsmaejmlvB7crZY
	govjqLgoo+7naiwceFPcceVbentM4Uyjtaz8+Rx8WcvrvAGRUW5G2Uf/pmYt5tSdqGlAUrAVPOtZH
	oNM7iWVOJBGrVOBflMu1P5KTs8AgpqFqVVVjNmaMu0CrdX2n/9vyCrOLAcnO6LSPq6dRAz2U9side
	XbCoKddhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5B74-0001is-9A; Fri, 21 Feb 2020 16:25:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5B6n-0001i2-C8
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 16:24:59 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D44AC20578;
 Fri, 21 Feb 2020 16:24:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582302297;
 bh=3fw8Z+13XXcXQdUbHBpVHdnEy61aCCDAIOza8cOqswg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=swYWU67SROlL4WRC3Ck2gqT/A/dG09f8N3UiYYTfFhYpoWNcC1zL1KxJ0bYTKUeh0
 BdhEZv0AnvNIw4LOF6KKU991WyGfm8VKVzqTg0j0RQSPRB3hN5Fdejk2JmZKAlUYPN
 SrLM5mMA6fvwtQGe1t2Kp50QtDdF1k/ExsYPBqmo=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j5B6l-0074uC-61; Fri, 21 Feb 2020 16:24:55 +0000
MIME-Version: 1.0
Date: Fri, 21 Feb 2020 16:24:55 +0000
From: Marc Zyngier <maz@kernel.org>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH] clocksource: Fix arm_arch_timer clockmode when vDSO
 disabled
In-Reply-To: <ccc457a4-dfc2-dedb-06a4-3ffb11a3c587@arm.com>
References: <20200221130355.21373-1-vincenzo.frascino@arm.com>
 <a81251e813d54caddd56b9aac4b55e85@kernel.org>
 <c438aa7e-2c96-8c11-bb87-204929a01a20@arm.com>
 <6df28d31cf6d4dd6109415fbd73a9c48@kernel.org>
 <ccc457a4-dfc2-dedb-06a4-3ffb11a3c587@arm.com>
Message-ID: <076d13fd01ca5e17f278cdb1db53b9ff@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: vincenzo.frascino@arm.com, linux-arch@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 catalin.marinas@arm.com, will.deacon@arm.com, linux@armlinux.org.uk,
 luto@kernel.org, tglx@linutronix.de, m.szyprowski@samsung.com,
 mark.rutland@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_082457_455322_3993286C 
X-CRM114-Status: GOOD (  20.02  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arch@vger.kernel.org, mark.rutland@arm.com, catalin.marinas@arm.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, linux@armlinux.org.uk,
 luto@kernel.org, tglx@linutronix.de, linux-arm-kernel@lists.infradead.org,
 m.szyprowski@samsung.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-02-21 15:56, Vincenzo Frascino wrote:
> Hi Marc,
> 
> On 21/02/2020 15:28, Marc Zyngier wrote:
> 
> [...]
> 
>> 
>> This isn't what I'm saying. What I'm suggesting here is that there is
>> possibly a missing indirection, which defaults to ARCH_TIMER when the
>> VDSO is selected, and NONE when it isn't.
>> 
>> Overloading a known symbol feels like papering over the issue.
>> 
>> Ideally, this default symbol would be provided by asm/clocksource.h, 
>> but
>> that may not even be the right thing to do.
>> 
> 
> I must admit I really like this idea :), how about:
> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 03bbfc312fe7..97864aabc2a6 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -3,6 +3,7 @@ config ARM
>         bool
>         default y
>         select ARCH_32BIT_OFF_T
> +       select ARCH_CLOCKSOURCE_DATA
>         select ARCH_HAS_BINFMT_FLAT
>         select ARCH_HAS_DEBUG_VIRTUAL if MMU
>         select ARCH_HAS_DEVMEM_IS_ALLOWED
> diff --git a/arch/arm/include/asm/clocksource.h
> b/arch/arm/include/asm/clocksource.h
> index 73beb7f131de..e37f6d74ba49 100644
> --- a/arch/arm/include/asm/clocksource.h
> +++ b/arch/arm/include/asm/clocksource.h
> @@ -1,7 +1,18 @@
>  #ifndef _ASM_CLOCKSOURCE_H
>  #define _ASM_CLOCKSOURCE_H
> 
> +/*
> + * Unused required for compilation only
> + */
> +struct arch_clocksource_data {
> +       bool __reserved;
> +};
> +
> +#ifdef CONFIG_GENERIC_GETTIMEOFDAY
>  #define VDSO_ARCH_CLOCKMODES   \
>         VDSO_CLOCKMODE_ARCHTIMER
> +#else
> +#define VDSO_CLOCKMODE_ARCHTIMER       VDSO_CLOCKMODE_NONE
> +#endif

Which is exactly the same thing as before. It's not an indirection,
it is just another overloading of an existing symbol.

>> Fair enough. But don't override the symbol locally. Create a new one:
>> 
> 
> I see what you mean now, you mean to not overload the semantical 
> meaning of the
> symbol. The symbol (VDSO_CLOCKMODE_ARCHTIMER) at this point is never 
> defined
> when VDSO=n, but I agree with you it can cause confusion.

Exactly. It breaks the expectation that if VDSO_CLOCKMODE_ARCHTIMER 
exists,
it has a unique, known value. Yes, the outcome is the same. That doesn't
make it acceptable though.

So building on your above example, here's what I'd like to see:

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 1dcc64bd3621..202b41dae05b 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -3,6 +3,7 @@ config ARM
         bool
         default y
         select ARCH_32BIT_OFF_T
+       select ARCH_CLOCKSOURCE_DATA
         select ARCH_HAS_BINFMT_FLAT
         select ARCH_HAS_DEBUG_VIRTUAL if MMU
         select ARCH_HAS_DEVMEM_IS_ALLOWED
diff --git a/arch/arm/include/asm/clocksource.h 
b/arch/arm/include/asm/clocksource.h
index 73beb7f131de..bd4347865f6d 100644
--- a/arch/arm/include/asm/clocksource.h
+++ b/arch/arm/include/asm/clocksource.h
@@ -1,7 +1,17 @@
  #ifndef _ASM_CLOCKSOURCE_H
  #define _ASM_CLOCKSOURCE_H

+struct arch_clocksource_data {
+       /* Empty on purpose */
+};
+
+#ifdef CONFIG_GENERIC_GETTIMEOFDAY
  #define VDSO_ARCH_CLOCKMODES   \
         VDSO_CLOCKMODE_ARCHTIMER

+#define ARCH_VDSO_DEFAULT_CLOCKMODE    VDSO_CLOCKMODE_ARCHTIMER
+#else
+#define ARCH_VDSO_DEFAULT_CLOCKMODE    VDSO_CLOCKMODE_NONE
+#endif
+
  #endif
diff --git a/arch/arm64/include/asm/clocksource.h 
b/arch/arm64/include/asm/clocksource.h
index eb82e9d95c5d..de706362fa81 100644
--- a/arch/arm64/include/asm/clocksource.h
+++ b/arch/arm64/include/asm/clocksource.h
@@ -5,4 +5,6 @@
  #define VDSO_ARCH_CLOCKMODES   \
         VDSO_CLOCKMODE_ARCHTIMER

+#define ARCH_VDSO_DEFAULT_CLOCKMODE    VDSO_CLOCKMODE_ARCHTIMER
+
  #endif
diff --git a/drivers/clocksource/arm_arch_timer.c 
b/drivers/clocksource/arm_arch_timer.c
index ee2420d56f67..8b7081583eeb 100644
--- a/drivers/clocksource/arm_arch_timer.c
+++ b/drivers/clocksource/arm_arch_timer.c
@@ -69,7 +69,7 @@ static enum arch_timer_ppi_nr arch_timer_uses_ppi = 
ARCH_TIMER_VIRT_PPI;
  static bool arch_timer_c3stop;
  static bool arch_timer_mem_use_virtual;
  static bool arch_counter_suspend_stop;
-static enum vdso_clock_mode vdso_default = VDSO_CLOCKMODE_ARCHTIMER;
+static enum vdso_clock_mode vdso_default = ARCH_VDSO_DEFAULT_CLOCKMODE;

  static cpumask_t evtstrm_available = CPU_MASK_NONE;
  static bool evtstrm_enable = 
IS_ENABLED(CONFIG_ARM_ARCH_TIMER_EVTSTREAM);

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
