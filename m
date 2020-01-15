Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B915513BE98
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 12:35:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N3zsu+K9nzn8xJ/UF1qkjkrvFR7a03J7TWsq36DDjKU=; b=pmR8dG10eJsjlS
	YieVZTcuqT+qFW6C31KFJ1Vn0R6Q99ig1+cPT1PYgwg7g03UO3G2KB55CTQJ7WK8LkrSiYAXN2gWg
	Ifl/M0kbRoj0V7ejj//IGsrKFaWoB40mimHEevBwW7lTq7bkim42mfQTbVo8AsxR6rzuYuT3OhBiQ
	3H5F2OXQDNsJsknmAz+edMT3fZYqs9fLddyIRjQedUBM4kKprfv3sknVcTuUCIVxQ3lSJczgCynJg
	To7az8azN7Y8ykvlwNQXnzIHcUmt8GtRSv/5h8scq5wDEwLmAW3CQsn5QI/vw+Pxd55HBbuyTZ11t
	sQyQDWamwN2MIricbrQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irgwu-0004Nb-QD; Wed, 15 Jan 2020 11:35:00 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irgwe-0004MQ-CS
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 11:34:49 +0000
Received: by mail-io1-xd42.google.com with SMTP id n11so17401871iom.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 03:34:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ojzhgAl+4gWNfYdEFpF+cmgwNJMJnLz3oDiOxYEPZfU=;
 b=igQq5nQgETtO9SXsQX/d5w5ZM34lFaR3K5RVxqxu3f9tWbirZ2mzK54lGbQJI48oQj
 i4iLoqi1aZcOabbmLdmKo+bFHslqju/hHn6DH2cEGn88wm9PSyop5PPZq3VzIK9UCmXv
 ohc0iecvvkOuKoQinunIfEKUP0mD4kNes9hB8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ojzhgAl+4gWNfYdEFpF+cmgwNJMJnLz3oDiOxYEPZfU=;
 b=CC1W9gmugXxUclMnuSFKFetp011ms95xGWEJzpKH4GCTQ/tXddPIACMwE+NJ9TfA1y
 tF51ms8V+9aIESzkqRnS8TGxYf9p1krb1KtKbjEOD3yRLwlTBr3qMKcXEDNkfz+QnM+r
 K+kiAKBRiEOhVIRS0RSKZPTKu6ZXYZpR63aaaus01JQjgqvaLcSfagfxM0VrY2U3ejn0
 oYC7jd20Bx6DpeHyd1tLf6k8ka6Fs9GgHO7HJqUniZNPzwf1SgGRrt0slWosqdWHSAQe
 onQdPSyPAABqJOktgzwOLvs6MwKpsYCssJF+TJtCHjWOUQqScXG1riAF7TJXLmqnYtQf
 39OA==
X-Gm-Message-State: APjAAAX1IBA8QofCxidhRpAulTvajsCXsOKhQrMUwj4Tlh5YIRJtf1rZ
 yFnv546w5kbHa8KMxPtAtCoEhq+ySyM7gkzlb1wKDg==
X-Google-Smtp-Source: APXvYqyXQxo2sXMh7CF1na9rm0gQdmLHTI1jI0nmSKq3jJK/VE/cud+yxidf/6iaxqDP9aqob4Xw39/4q2FI506v3zw=
X-Received: by 2002:a6b:3b49:: with SMTP id i70mr21933237ioa.106.1579088083140; 
 Wed, 15 Jan 2020 03:34:43 -0800 (PST)
MIME-Version: 1.0
References: <20200115063410.131692-1-hsinyi@chromium.org>
 <CAJZ5v0jng1hpPzYUcPj96G9c8aqNYCwDqLHyQEVC9tD=F1dObw@mail.gmail.com>
In-Reply-To: <CAJZ5v0jng1hpPzYUcPj96G9c8aqNYCwDqLHyQEVC9tD=F1dObw@mail.gmail.com>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Wed, 15 Jan 2020 19:34:17 +0800
Message-ID: <CAJMQK-jES7NOAga3w+pQUuoFW+dm0Uw3--SQ7S0BAARFCrT6qQ@mail.gmail.com>
Subject: Re: [PATCH v5] reboot: support offline CPUs before reboot
To: "Rafael J. Wysocki" <rafael@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_033444_464070_E1B66792 
X-CRM114-Status: GOOD (  27.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-ia64@vger.kernel.org,
 Linux-sh list <linux-sh@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 sparclinux@vger.kernel.org, Guenter Roeck <groeck@chromium.org>,
 Will Deacon <will@kernel.org>, Ingo Molnar <mingo@kernel.org>,
 linux-s390@vger.kernel.org, linux-csky@vger.kernel.org,
 Aaro Koskinen <aaro.koskinen@nokia.com>, Fenghua Yu <fenghua.yu@intel.com>,
 Linux PM <linux-pm@vger.kernel.org>, linux-xtensa@linux-xtensa.org,
 Stephen Boyd <swboyd@chromium.org>, Josh Poimboeuf <jpoimboe@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Pavankumar Kondeti <pkondeti@codeaurora.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-parisc@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 James Morse <james.morse@arm.com>, Jiri Kosina <jkosina@suse.cz>,
 Vitaly Kuznetsov <vkuznets@redhat.com>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 15, 2020 at 5:49 PM Rafael J. Wysocki <rafael@kernel.org> wrote:
>
> On Wed, Jan 15, 2020 at 7:35 AM Hsin-Yi Wang <hsinyi@chromium.org> wrote:
> >
> > Currently system reboots uses architecture specific codes (smp_send_stop)
> > to offline non reboot CPUs. Most architecture's implementation is looping
> > through all non reboot online CPUs and call ipi function to each of them. Some
> > architecture like arm64, arm, and x86... would set offline masks to cpu without
> > really offline them. This causes some race condition and kernel warning comes
> > out sometimes when system reboots.
> >
> > This patch adds a config ARCH_OFFLINE_CPUS_ON_REBOOT, which would offline cpus in
> > migrate_to_reboot_cpu(). If non reboot cpus are all offlined here, the loop for
> > checking online cpus would be an empty loop. If architecture don't enable this
> > config, or some cpus somehow fails to offline, it would fallback to ipi
> > function.
> >
> > Opt in this config for architectures that support CONFIG_HOTPLUG_CPU.
> >
> > Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> > ---
> > Change from v4:
> > * fix a few nits: naming, comments, remove Kconfig text...
> >
> > Change from v3:
> > * Opt in config for architectures that support CONFIG_HOTPLUG_CPU
> > * Merge function offline_secondary_cpus() and freeze_secondary_cpus()
> >   with an additional flag.
>
> This does not seem to be a very good idea, since
> freeze_secondary_cpus() does much more than you need for reboot.
>
> For reboot, you basically only need to do something like this AFAICS:
>
> cpu_maps_update_begin();
>
> for_each_online_cpu(i) {
>         if (i != cpu)
>                 _cpu_down(i, 1, CPUHP_OFFLINE);
> }
> cpu_hotplug_disabled++;
>
> cpu_maps_update_done();
>
> And you may put this into a function defined outside of CONFIG_PM_SLEEP.
>
v2's implementation is similar to this. The conclusion in v2[1] is
that since these 2 functions are similar, we should merge them. I'm
fine both ways but slightly prefer v2's. Maybe wait for others to
comment?

[1] https://lore.kernel.org/lkml/87muarpcwm.fsf@vitty.brq.redhat.com/
> >
> > Change from v2:
> > * Add another config instead of configed by CONFIG_HOTPLUG_CPU
>
> So why exactly is this new Kconfig option needed?
>
> Everybody supporting CPU hotplug seems to opt in anyway.
>
Currently we opt-in for all arch that supports HOTPLUG_CPU, but if
some arch decides that this would make reboot slow (or maybe other
reasons), they can choose to opt-out.
I have only tested on arm64 and x86 for now.
> [cut]
>
> >
> > -int freeze_secondary_cpus(int primary)
> > +int freeze_secondary_cpus(int primary, bool reboot)
> >  {
> >         int cpu, error = 0;
> >
> > @@ -1237,11 +1237,13 @@ int freeze_secondary_cpus(int primary)
> >                 if (cpu == primary)
> >                         continue;
> >
> > -               if (pm_wakeup_pending()) {
> > +#ifdef CONFIG_PM_SLEEP
> > +               if (!reboot && pm_wakeup_pending()) {
> >                         pr_info("Wakeup pending. Abort CPU freeze\n");
> >                         error = -EBUSY;
> >                         break;
> >                 }
> > +#endif
>
> Please avoid using #ifdefs in function bodies.  This makes the code
> hard to maintain in the long term.
>
> >
> >                 trace_suspend_resume(TPS("CPU_OFF"), cpu, true);
> >                 error = _cpu_down(cpu, 1, CPUHP_OFFLINE);
> > @@ -1250,7 +1252,9 @@ int freeze_secondary_cpus(int primary)
> >                         cpumask_set_cpu(cpu, frozen_cpus);
> >                 else {
> >                         pr_err("Error taking CPU%d down: %d\n", cpu, error);
> > -                       break;
> > +                       /* When rebooting, offline as many CPUs as possible. */
> > +                       if (!reboot)
> > +                               break;
> >                 }
> >         }
> >
> > diff --git a/kernel/reboot.c b/kernel/reboot.c
> > index c4d472b7f1b4..12f643b66e57 100644
> > --- a/kernel/reboot.c
> > +++ b/kernel/reboot.c
> > @@ -7,6 +7,7 @@
> >
> >  #define pr_fmt(fmt)    "reboot: " fmt
> >
> > +#include <linux/cpu.h>
> >  #include <linux/ctype.h>
> >  #include <linux/export.h>
> >  #include <linux/kexec.h>
> > @@ -220,7 +221,9 @@ void migrate_to_reboot_cpu(void)
> >         /* The boot cpu is always logical cpu 0 */
> >         int cpu = reboot_cpu;
> >
> > +#if !IS_ENABLED(CONFIG_ARCH_OFFLINE_CPUS_ON_REBOOT)
> >         cpu_hotplug_disable();
> > +#endif
>
> You can write this as
>
> if (!IS_ENABLED(CONFIG_ARCH_OFFLINE_CPUS_ON_REBOOT))
>         cpu_hotplug_disable();
>
> That's what IS_ENABLED() is there for.
>
> >
> >         /* Make certain the cpu I'm about to reboot on is online */
> >         if (!cpu_online(cpu))
> > @@ -231,6 +234,11 @@ void migrate_to_reboot_cpu(void)
> >
> >         /* Make certain I only run on the appropriate processor */
> >         set_cpus_allowed_ptr(current, cpumask_of(cpu));
> > +
> > +#if IS_ENABLED(CONFIG_ARCH_OFFLINE_CPUS_ON_REBOOT)
> > +       /* Offline other cpus if possible */
> > +       freeze_secondary_cpus(cpu, true);
> > +#endif
>
> The above comment applies here too.
>
> >  }
> >
> >  /**
> > --

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
