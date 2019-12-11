Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B27611AA0E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 12:39:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u8YxXxOuJbHdyYlL+uhO3lRiLm2/S318GO3K21cWtdc=; b=HG++VW8NoRHUIq
	VnT3v87H+ZeMkAMt3UgTT6PJVweeFu8BwkBDNaD/enviMeB/dgGwc+X/YvfTaM0y3fStQWvFL0c4S
	0VwQYz0mkP/XfPlE11rVtar1DcnEgR7PhHfmGn8IyojyKh+sbn9HK4iep5yu2M81L+w9YlJftpm8j
	c+wbgPItIhJtLcvt8C3d6UW5aoKR+t64ndlKhY6s6Q5TStt25K2IlQj9MswB3cy2XDvppshTKKU/w
	Tvm430eiVWrgBrlVUoXAlFXxHk1B1Jlkqkspz2xrPmClufcgOiaG520E9wkyO3wL5lYbzMsDDuilj
	WxEG+5+VfhXeIChmT8UA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if0L3-0004V2-1h; Wed, 11 Dec 2019 11:39:29 +0000
Received: from mail-vk1-xa41.google.com ([2607:f8b0:4864:20::a41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if0Ka-0004G9-0f
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 11:39:01 +0000
Received: by mail-vk1-xa41.google.com with SMTP id i18so6677631vkk.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 03:38:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6RcaHRsz9KM3vdOHBT0ida8e9taZHqDHpxMchzY+Agc=;
 b=KS0BRqR78va0hw29CIS9GUW4RX0wS6yA+N/8gSThWX2uutlGOdcv4aAmfiXXxSgnBa
 YxZKPsnKzJfQs64mHU+ZhzibHfgU6TBybre4qaBQCFdWEy2OQE8T8zmLpyOxLTgfPM1h
 636lOYAhi4b3IZMAH+HDQKX+3xBvINLpDfH1XPmyEl1AIAOXusemAZSUzPwJ49Cif21W
 cNCLcIqX7Pg3L/5f2C9KubTF0eNQBm4eZfbY9saujLa8cRbwpYi7lKoevMslGypUneik
 WRBs7mjxly4A4MuuXgoJu6qKc5hf1Gvs+KmIeES16yMHapidxjCCkcBB1bPylAtsJVe9
 w0UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6RcaHRsz9KM3vdOHBT0ida8e9taZHqDHpxMchzY+Agc=;
 b=OZXk0knxmuk+0q0ZymMK51NbrXgd8ydUHLx48D64BXKCOVOsLvwvt9blvFTYhzU0OM
 pwLPdFU4i0+/9MmUK4epiYbf5RIgMUC8axylLHaLV58AO1nhCqcKHomrfseBr0cqNRw/
 2fTFxV51OTk1gLwyDY3m99BJmOizbvllJ3q2Bb5h9PGPPnIjH3LB69hIBldC0t9dzgHe
 nZ2uMN8esrQreJqd0b3AVKVmjhPz+Nd+YiBdbYI+H/DAuu9RHJXcfv6loKf7CjtP9vSm
 0y6JTOUU9/hEfVEfdTo81yhNzIT4mjK8VNqk3HITwV9yK9Ff6lMs0P0b/hdcV/ZSN5Hr
 29IA==
X-Gm-Message-State: APjAAAUMMPgTTSNYvuEpP1murcSG/9LbjoBr73ZqgAMA2Opte3gk9zeJ
 /5B+dT5qWmcOmjlvIqnEnHMzXiUR3dI7DlfXJpBQAg==
X-Google-Smtp-Source: APXvYqwqbNuUfs4jU5ey3OT7K1GTYAbbhFH6VtuEUgfvhdq0V28j6NjWA4nrOWTWpi2Iwvq/cA1uc1pDssR0h5ZU3L0=
X-Received: by 2002:a1f:4541:: with SMTP id s62mr2901064vka.59.1576064337968; 
 Wed, 11 Dec 2019 03:38:57 -0800 (PST)
MIME-Version: 1.0
References: <20191205103330.27166-1-ulf.hansson@linaro.org>
 <20191205180653.GA1516@e121166-lin.cambridge.arm.com>
 <CAPDyKFpvkjVKFSMRNgen7JWi5DMvTC3H1nqwcSoR3dQkHzfQZw@mail.gmail.com>
In-Reply-To: <CAPDyKFpvkjVKFSMRNgen7JWi5DMvTC3H1nqwcSoR3dQkHzfQZw@mail.gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 11 Dec 2019 12:38:22 +0100
Message-ID: <CAPDyKFp7Cmwvat0PXK9-2nmp4u2s0t=V+p1sOfdz-OQ66dr6zQ@mail.gmail.com>
Subject: Re: [PATCH] cpuidle: psci: Support CPU hotplug for the hierarchical
 model
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_033900_092479_1399D6AD 
X-CRM114-Status: GOOD (  29.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Linux PM <linux-pm@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Andy Gross <agross@kernel.org>,
 Lina Iyer <ilina@codeaurora.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kevin Hilman <khilman@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 5 Dec 2019 at 20:09, Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> On Thu, 5 Dec 2019 at 19:07, Lorenzo Pieralisi
> <lorenzo.pieralisi@arm.com> wrote:
> >
> > On Thu, Dec 05, 2019 at 11:33:30AM +0100, Ulf Hansson wrote:
> > > When the hierarchical CPU topology is used and when a CPU is put offline,
> > > that CPU prevents its PM domain from being powered off, which is because
> > > genpd observes the corresponding attached device as being active from a
> > > runtime PM point of view. Furthermore, any potential master PM domains are
> > > also prevented from being powered off.
> > >
> > > To address this limitation, let's add add a new CPU hotplug state
> > > (CPUHP_AP_CPU_PM_STARTING) and register up/down callbacks for it, which
> > > allows us to deal with runtime PM accordingly.
> > >
> > > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > > ---
> > >
> > > Lorenzo, Sudeep, Rafael, Daniel,
> > >
> > > Note that, this patch is based upon a recently posted series [1] and the intent
> > > is to queue it on top. I can fold it into the series and resend it all, if that
> > > makes it easier for people. Just tell me what you prefer.
> > >
> > > Kind regards
> > > Uffe
> > >
> > > [1]
> > > https://patchwork.kernel.org/cover/11263735/
> > >
> > > ---
> > >  drivers/cpuidle/cpuidle-psci.c | 45 +++++++++++++++++++++++++++++++++-
> > >  include/linux/cpuhotplug.h     |  1 +
> > >  2 files changed, 45 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
> > > index 835c7c3aa118..46b481c524cc 100644
> > > --- a/drivers/cpuidle/cpuidle-psci.c
> > > +++ b/drivers/cpuidle/cpuidle-psci.c
> > > @@ -8,6 +8,7 @@
> > >
> > >  #define pr_fmt(fmt) "CPUidle PSCI: " fmt
> > >
> > > +#include <linux/cpuhotplug.h>
> > >  #include <linux/cpuidle.h>
> > >  #include <linux/cpumask.h>
> > >  #include <linux/cpu_pm.h>
> > > @@ -31,6 +32,7 @@ struct psci_cpuidle_data {
> > >
> > >  static DEFINE_PER_CPU_READ_MOSTLY(struct psci_cpuidle_data, psci_cpuidle_data);
> > >  static DEFINE_PER_CPU(u32, domain_state);
> > > +static bool psci_cpuidle_use_cpuhp;
> > >
> > >  void psci_set_domain_state(u32 state)
> > >  {
> > > @@ -72,6 +74,44 @@ static int psci_enter_domain_idle_state(struct cpuidle_device *dev,
> > >       return ret;
> > >  }
> > >
> > > +static int psci_idle_cpuhp_up(unsigned int cpu)
> > > +{
> > > +     struct device *pd_dev = __this_cpu_read(psci_cpuidle_data.dev);
> > > +
> > > +     if (pd_dev)
> > > +             pm_runtime_get_sync(pd_dev);
> > > +
> > > +     return 0;
> > > +}
> > > +
> > > +static int psci_idle_cpuhp_down(unsigned int cpu)
> > > +{
> > > +     struct device *pd_dev = __this_cpu_read(psci_cpuidle_data.dev);
> > > +
> > > +     if (pd_dev) {
> > > +             pm_runtime_put_sync(pd_dev);
> > > +             /* Clear domain state to start fresh at next online. */
> > > +             psci_set_domain_state(0);
> > > +     }
> > > +
> > > +     return 0;
> > > +}
> > > +
> > > +static void psci_idle_init_cpuhp(void)
> > > +{
> > > +     int err;
> > > +
> > > +     if (!psci_cpuidle_use_cpuhp)
> > > +             return;
> > > +
> > > +     err = cpuhp_setup_state_nocalls(CPUHP_AP_CPU_PM_STARTING,
> > > +                                     "cpuidle/psci:online",
> > > +                                     psci_idle_cpuhp_up,
> > > +                                     psci_idle_cpuhp_down);
> >
> > I would make it a cpuhp_setup_state() call and remove
> >
> > if (cpu_online(cpu))
> >         pm_runtime_get_sync_dev(dev);
> >
> > in check in psci_dt_attach_cpu().
> >
> > Lorenzo
>
> Thanks for the suggestion, but that doesn't work when
> CONFIG_CPU_HOTPLUG is unset.
>
> As a matter of fact, I just realized that I haven't tried to compile
> without that Kconfig option. I should probably add a stub for
> psci_idle_init_cpuhp() to address that.

Just forget about what I said above, it's nonsense.

cpuhp_setup_state() and friends works fine even if CONFIG_CPU_HOTPLUG
is unset. I did test this, but some reason I forgot about it.

However, there is another problem with your proposal above, which is
that the CPUHP callback is assigned after the cpuidle drivers (one per
CPU) have been registered. Which means, CPUs may enter idle even
before the CPUHP callbacks are registered. In other words, we need to
keep the call to pm_runtime_get_sync_dev() in psci_dt_attach_cpu() as
to properly reflect the state of the CPU.

[...]

BTW, I am about to post a new version in a couple of hours. Any other
thing you want to point out, before the next submission?

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
