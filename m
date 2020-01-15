Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E038A13BCCB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 10:49:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T1me4JrR7ZupS6Wzxsxe3G33Fg7WOYsvX6zYx1rFJ3w=; b=awsXsgkU7B5Spx
	TqNB7wSqH7DJJeegDMsJBkOzCs+a5pG8H3EAxgcFDMO78ljkVWKcKoKpuqu3z0zUltXBZlXqFNK8e
	8F9+5BM1f1ePQ2nPNNNL92PxBlsMiBRMqY160ZT8e6ITxqSzcqGb94jMovF1H/XtUzouuSVqldzol
	OdZypUklDDPXQO5fdoSdYKIuof1U9qAYN1urdZ1nCzbyyUSvrTlFfY3F+Tfa395MHZ1P749koCQrr
	CNzNd+23uxNbGZVC+QnB8hfFTpbu1U0z0v3VTvvpuEVZmU6bICMv4t5hGL3VIpmJoR5Ft2fiwQ9RC
	sqPUgjhC+URtrOE/QHsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irfJ5-0006ky-Ol; Wed, 15 Jan 2020 09:49:47 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irfIn-0006aa-St
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 09:49:31 +0000
Received: by mail-oi1-f193.google.com with SMTP id l136so14824896oig.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 01:49:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xlblpk3Q7AFTy8Enno95ZSx0IUH147BofZyxZsTxPpQ=;
 b=E6jTvjLossMzpYec3Hgv2n7FqkQKKrvWeI5cMbI22dJX6l3MA2hJsh5D+ZWgNFckyV
 5DWJufqNRWeyeYirpEyREfylIKaR6Vf3aHu0vQTnKthSjCq+Gm1qKlUw00CtFs/PrQ4D
 4p56zlgs9KtXCIInJ0/+2/+2CgEjqAjRMD+meYQCybm7VrFi9165/hmdzy5N2tO8T0SU
 sUPpEuid8YsT098/Uvpapm4nybkrhf8IJmO/Wqp7pChBIeIWLDduYwr8v5F7Yx46kvxi
 aFunADRmJJDpDDQh81DXwmkQ7ZaOctX8EP3mzdSo/Dkn/3RMRm7ZHTGkX+JgXs0blwua
 IYbw==
X-Gm-Message-State: APjAAAVClmmM0BHkG3QdY5pRskthYemR2t4WlSnKw5QiqibweJ3SD47L
 uVjhJmwDiuakbqdcwmz98ut5+cg1RzJXf51Rp2josVfD
X-Google-Smtp-Source: APXvYqzvsE9JWkTyA/qGCPe6FC5SfX/eWtD++abCAXNNUKmVhLTpM4TrHUCIWNo6kY2HmIQTdm2QXbcLDAmQBj9bi24=
X-Received: by 2002:aca:d6c8:: with SMTP id
 n191mr21412346oig.103.1579081768509; 
 Wed, 15 Jan 2020 01:49:28 -0800 (PST)
MIME-Version: 1.0
References: <20200115063410.131692-1-hsinyi@chromium.org>
In-Reply-To: <20200115063410.131692-1-hsinyi@chromium.org>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Wed, 15 Jan 2020 10:49:17 +0100
Message-ID: <CAJZ5v0jng1hpPzYUcPj96G9c8aqNYCwDqLHyQEVC9tD=F1dObw@mail.gmail.com>
Subject: Re: [PATCH v5] reboot: support offline CPUs before reboot
To: Hsin-Yi Wang <hsinyi@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_014929_952462_C426235C 
X-CRM114-Status: GOOD (  23.56  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rjwysocki[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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

On Wed, Jan 15, 2020 at 7:35 AM Hsin-Yi Wang <hsinyi@chromium.org> wrote:
>
> Currently system reboots uses architecture specific codes (smp_send_stop)
> to offline non reboot CPUs. Most architecture's implementation is looping
> through all non reboot online CPUs and call ipi function to each of them. Some
> architecture like arm64, arm, and x86... would set offline masks to cpu without
> really offline them. This causes some race condition and kernel warning comes
> out sometimes when system reboots.
>
> This patch adds a config ARCH_OFFLINE_CPUS_ON_REBOOT, which would offline cpus in
> migrate_to_reboot_cpu(). If non reboot cpus are all offlined here, the loop for
> checking online cpus would be an empty loop. If architecture don't enable this
> config, or some cpus somehow fails to offline, it would fallback to ipi
> function.
>
> Opt in this config for architectures that support CONFIG_HOTPLUG_CPU.
>
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> ---
> Change from v4:
> * fix a few nits: naming, comments, remove Kconfig text...
>
> Change from v3:
> * Opt in config for architectures that support CONFIG_HOTPLUG_CPU
> * Merge function offline_secondary_cpus() and freeze_secondary_cpus()
>   with an additional flag.

This does not seem to be a very good idea, since
freeze_secondary_cpus() does much more than you need for reboot.

For reboot, you basically only need to do something like this AFAICS:

cpu_maps_update_begin();

for_each_online_cpu(i) {
        if (i != cpu)
                _cpu_down(i, 1, CPUHP_OFFLINE);
}
cpu_hotplug_disabled++;

cpu_maps_update_done();

And you may put this into a function defined outside of CONFIG_PM_SLEEP.

>
> Change from v2:
> * Add another config instead of configed by CONFIG_HOTPLUG_CPU

So why exactly is this new Kconfig option needed?

Everybody supporting CPU hotplug seems to opt in anyway.

[cut]

>
> -int freeze_secondary_cpus(int primary)
> +int freeze_secondary_cpus(int primary, bool reboot)
>  {
>         int cpu, error = 0;
>
> @@ -1237,11 +1237,13 @@ int freeze_secondary_cpus(int primary)
>                 if (cpu == primary)
>                         continue;
>
> -               if (pm_wakeup_pending()) {
> +#ifdef CONFIG_PM_SLEEP
> +               if (!reboot && pm_wakeup_pending()) {
>                         pr_info("Wakeup pending. Abort CPU freeze\n");
>                         error = -EBUSY;
>                         break;
>                 }
> +#endif

Please avoid using #ifdefs in function bodies.  This makes the code
hard to maintain in the long term.

>
>                 trace_suspend_resume(TPS("CPU_OFF"), cpu, true);
>                 error = _cpu_down(cpu, 1, CPUHP_OFFLINE);
> @@ -1250,7 +1252,9 @@ int freeze_secondary_cpus(int primary)
>                         cpumask_set_cpu(cpu, frozen_cpus);
>                 else {
>                         pr_err("Error taking CPU%d down: %d\n", cpu, error);
> -                       break;
> +                       /* When rebooting, offline as many CPUs as possible. */
> +                       if (!reboot)
> +                               break;
>                 }
>         }
>
> diff --git a/kernel/reboot.c b/kernel/reboot.c
> index c4d472b7f1b4..12f643b66e57 100644
> --- a/kernel/reboot.c
> +++ b/kernel/reboot.c
> @@ -7,6 +7,7 @@
>
>  #define pr_fmt(fmt)    "reboot: " fmt
>
> +#include <linux/cpu.h>
>  #include <linux/ctype.h>
>  #include <linux/export.h>
>  #include <linux/kexec.h>
> @@ -220,7 +221,9 @@ void migrate_to_reboot_cpu(void)
>         /* The boot cpu is always logical cpu 0 */
>         int cpu = reboot_cpu;
>
> +#if !IS_ENABLED(CONFIG_ARCH_OFFLINE_CPUS_ON_REBOOT)
>         cpu_hotplug_disable();
> +#endif

You can write this as

if (!IS_ENABLED(CONFIG_ARCH_OFFLINE_CPUS_ON_REBOOT))
        cpu_hotplug_disable();

That's what IS_ENABLED() is there for.

>
>         /* Make certain the cpu I'm about to reboot on is online */
>         if (!cpu_online(cpu))
> @@ -231,6 +234,11 @@ void migrate_to_reboot_cpu(void)
>
>         /* Make certain I only run on the appropriate processor */
>         set_cpus_allowed_ptr(current, cpumask_of(cpu));
> +
> +#if IS_ENABLED(CONFIG_ARCH_OFFLINE_CPUS_ON_REBOOT)
> +       /* Offline other cpus if possible */
> +       freeze_secondary_cpus(cpu, true);
> +#endif

The above comment applies here too.

>  }
>
>  /**
> --

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
