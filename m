Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27C9911477E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 20:10:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=43Xm47BBKb1mI1hh5Z4iRwYJIp4MtaspK3d2+h9NqU0=; b=Td1Q2X+0L3AgvS
	mUrz/UbMeoJK81VkUpXm/EAuaC/SqzFZofeyr+pEH/ZKYoOT9wWl8z4/ReKzPTyAYl47Q0p/VxM1v
	YCYncQty4dm0+53BSOGsbt+IrsKxN3iTQyFddSD2bfUX601vFoH+HjjL0DBr81JQMrEYdjHWBbi+2
	LQ7pOHEiExFdj1KIPJVNYBUTivo75x0grnFWU6/NqnzVEE2LorR/DfB0ytQRemlxweKcEcvpXz6T0
	hE89wRKCMej3Ww3t5JHgAWZaR7WAcaYaf6LQQqNJ3qXiOcmGJkb/QClBN3HP/upNaWPGoCnaZDEFS
	4k0yLvChrf5LSQIDtCSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icwVi-0002r8-Hk; Thu, 05 Dec 2019 19:09:58 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icwVa-0002qh-NZ
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 19:09:52 +0000
Received: by mail-vs1-xe44.google.com with SMTP id n27so3233899vsa.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Dec 2019 11:09:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ILaMMkvaYZdTEn9N5ID+w+KajntPsh0cUlzTBSDC4p4=;
 b=IFt+drSUROavwJPYugNH2X/YbWSRwxG/BdxhW2v81LkP8A2ULAE7Z8E2Dk22utRjfA
 W1BBoeKfNfxyul73LoOrDEaFk7y1HB8NBQuBibwCUuI741JObkqFldT3cqBxGyrXx2aG
 E4CqZQk1+b73+OSJn4TogwMEFEgfqt6Bu2dTT1uskULcRiZBH99dQvsuHu1NHwAQ25Dg
 J+fqapkJHLhisMlwzGKrwF1qPAerWGsfr9SCBfy+JWwozPGBMARlKU+zg538Ih58V3J2
 M9Pf9pMb/kYJ+n7oUvb3Hm1UjAUVlo8NOfq332/bGMEET6WQH7kxcOVNKTXM4Ws+B971
 4cxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ILaMMkvaYZdTEn9N5ID+w+KajntPsh0cUlzTBSDC4p4=;
 b=nfDjfsHhUyOr4/MQnU435v2MFDfyS5ewVnGWH9nQeufpAeAFXd8/QqYSvwaSmLVG6v
 UURm0peyKO9lQa49qQO3eResjINv6lau4vFFxc6INn+1Sf0KVRjF9CHpZy8u+70gsXGo
 QORH6SoK99YxNk1a0sZkviheFTyLSChlxN3VEwR3l/35xPUSkZukpZNpHIaevee6ftUl
 TrocCiwNLwqJcZaAFvfB5o0HB8VcIUrAVfE3DUivj8DqbmS1GUsP1zPUKCdDAFWibcYo
 KO9m+plW7jmceu7Y1AlIge2wMVCAIZ2C4W2z1TCmgwsw1r3JyONeRXx1Wgjxrv7JJF78
 MLMg==
X-Gm-Message-State: APjAAAUyayL1ar1YgIgkQJ1tVVLr2mE6FkN9mX9+eBNoe/KpEdEt06Ge
 Po2d8+PfmECKn2PaW4/BVIhRAgyKFT+J44zQzsqOfQ==
X-Google-Smtp-Source: APXvYqxTBWC9tDgc9MGtVq+ND3cgq49rt/p2HN7s/qmqVdeTi9khHm8G2DQOeq1Q0i+EIvq5qez4iIOFXgOcXQOZCiM=
X-Received: by 2002:a67:2087:: with SMTP id g129mr6827450vsg.191.1575572989281; 
 Thu, 05 Dec 2019 11:09:49 -0800 (PST)
MIME-Version: 1.0
References: <20191205103330.27166-1-ulf.hansson@linaro.org>
 <20191205180653.GA1516@e121166-lin.cambridge.arm.com>
In-Reply-To: <20191205180653.GA1516@e121166-lin.cambridge.arm.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 5 Dec 2019 20:09:13 +0100
Message-ID: <CAPDyKFpvkjVKFSMRNgen7JWi5DMvTC3H1nqwcSoR3dQkHzfQZw@mail.gmail.com>
Subject: Re: [PATCH] cpuidle: psci: Support CPU hotplug for the hierarchical
 model
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_110950_779354_AA41F062 
X-CRM114-Status: GOOD (  27.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Thu, 5 Dec 2019 at 19:07, Lorenzo Pieralisi
<lorenzo.pieralisi@arm.com> wrote:
>
> On Thu, Dec 05, 2019 at 11:33:30AM +0100, Ulf Hansson wrote:
> > When the hierarchical CPU topology is used and when a CPU is put offline,
> > that CPU prevents its PM domain from being powered off, which is because
> > genpd observes the corresponding attached device as being active from a
> > runtime PM point of view. Furthermore, any potential master PM domains are
> > also prevented from being powered off.
> >
> > To address this limitation, let's add add a new CPU hotplug state
> > (CPUHP_AP_CPU_PM_STARTING) and register up/down callbacks for it, which
> > allows us to deal with runtime PM accordingly.
> >
> > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > ---
> >
> > Lorenzo, Sudeep, Rafael, Daniel,
> >
> > Note that, this patch is based upon a recently posted series [1] and the intent
> > is to queue it on top. I can fold it into the series and resend it all, if that
> > makes it easier for people. Just tell me what you prefer.
> >
> > Kind regards
> > Uffe
> >
> > [1]
> > https://patchwork.kernel.org/cover/11263735/
> >
> > ---
> >  drivers/cpuidle/cpuidle-psci.c | 45 +++++++++++++++++++++++++++++++++-
> >  include/linux/cpuhotplug.h     |  1 +
> >  2 files changed, 45 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
> > index 835c7c3aa118..46b481c524cc 100644
> > --- a/drivers/cpuidle/cpuidle-psci.c
> > +++ b/drivers/cpuidle/cpuidle-psci.c
> > @@ -8,6 +8,7 @@
> >
> >  #define pr_fmt(fmt) "CPUidle PSCI: " fmt
> >
> > +#include <linux/cpuhotplug.h>
> >  #include <linux/cpuidle.h>
> >  #include <linux/cpumask.h>
> >  #include <linux/cpu_pm.h>
> > @@ -31,6 +32,7 @@ struct psci_cpuidle_data {
> >
> >  static DEFINE_PER_CPU_READ_MOSTLY(struct psci_cpuidle_data, psci_cpuidle_data);
> >  static DEFINE_PER_CPU(u32, domain_state);
> > +static bool psci_cpuidle_use_cpuhp;
> >
> >  void psci_set_domain_state(u32 state)
> >  {
> > @@ -72,6 +74,44 @@ static int psci_enter_domain_idle_state(struct cpuidle_device *dev,
> >       return ret;
> >  }
> >
> > +static int psci_idle_cpuhp_up(unsigned int cpu)
> > +{
> > +     struct device *pd_dev = __this_cpu_read(psci_cpuidle_data.dev);
> > +
> > +     if (pd_dev)
> > +             pm_runtime_get_sync(pd_dev);
> > +
> > +     return 0;
> > +}
> > +
> > +static int psci_idle_cpuhp_down(unsigned int cpu)
> > +{
> > +     struct device *pd_dev = __this_cpu_read(psci_cpuidle_data.dev);
> > +
> > +     if (pd_dev) {
> > +             pm_runtime_put_sync(pd_dev);
> > +             /* Clear domain state to start fresh at next online. */
> > +             psci_set_domain_state(0);
> > +     }
> > +
> > +     return 0;
> > +}
> > +
> > +static void psci_idle_init_cpuhp(void)
> > +{
> > +     int err;
> > +
> > +     if (!psci_cpuidle_use_cpuhp)
> > +             return;
> > +
> > +     err = cpuhp_setup_state_nocalls(CPUHP_AP_CPU_PM_STARTING,
> > +                                     "cpuidle/psci:online",
> > +                                     psci_idle_cpuhp_up,
> > +                                     psci_idle_cpuhp_down);
>
> I would make it a cpuhp_setup_state() call and remove
>
> if (cpu_online(cpu))
>         pm_runtime_get_sync_dev(dev);
>
> in check in psci_dt_attach_cpu().
>
> Lorenzo

Thanks for the suggestion, but that doesn't work when
CONFIG_CPU_HOTPLUG is unset.

As a matter of fact, I just realized that I haven't tried to compile
without that Kconfig option. I should probably add a stub for
psci_idle_init_cpuhp() to address that.

>
> > +     if (err)
> > +             pr_warn("Failed %d while setup cpuhp state\n", err);
> > +}
> > +
> >  static int psci_enter_idle_state(struct cpuidle_device *dev,
> >                               struct cpuidle_driver *drv, int idx)
> >  {
> > @@ -161,9 +201,11 @@ static int __init psci_dt_cpu_init_idle(struct cpuidle_driver *drv,
> >       }
> >
> >       /* Manage the deepest state via a dedicated enter-function. */
> > -     if (dev)
> > +     if (dev) {
> >               drv->states[state_count - 1].enter =
> >                       psci_enter_domain_idle_state;
> > +             psci_cpuidle_use_cpuhp = true;
> > +     }
> >
> >       data->dev = dev;
> >
> > @@ -285,6 +327,7 @@ static int __init psci_idle_init(void)
> >                       goto out_fail;
> >       }
> >
> > +     psci_idle_init_cpuhp();
> >       return 0;
> >
> >  out_fail:
> > diff --git a/include/linux/cpuhotplug.h b/include/linux/cpuhotplug.h
> > index e51ee772b9f5..01f04ed6ad92 100644
> > --- a/include/linux/cpuhotplug.h
> > +++ b/include/linux/cpuhotplug.h
> > @@ -95,6 +95,7 @@ enum cpuhp_state {
> >       CPUHP_AP_OFFLINE,
> >       CPUHP_AP_SCHED_STARTING,
> >       CPUHP_AP_RCUTREE_DYING,
> > +     CPUHP_AP_CPU_PM_STARTING,
> >       CPUHP_AP_IRQ_GIC_STARTING,
> >       CPUHP_AP_IRQ_HIP04_STARTING,
> >       CPUHP_AP_IRQ_ARMADA_XP_STARTING,
> > --
> > 2.17.1
> >

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
