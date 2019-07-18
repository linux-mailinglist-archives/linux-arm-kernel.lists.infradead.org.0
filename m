Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8188D6CD16
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 13:05:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OkyNPu3glGxytlIkayZNRcROKNEjB2V4i035D2JfsQc=; b=a4oRpFoqd/I+WS
	wq4Fo3z1qanCSl5zqHumSoVSBCfyldHSCiSFmKewrDbDKdM9bLbeMK0TGtQx6xuS/R6oA5Eysz8Af
	GdeG2EqdolG4pBp8CxYs8elGRLhGaodbxqlYXqFgAAj3kDUiYbMIHwf3E3KEGGIg7IxxBdo7i0V9j
	hdaDqgTLhWqA58gjwmPpj5EQFLjiZ6DQ6BWkM5BjC8UkmeIDjTWHp37WXWttYJ0q3F53t9FIs+JT/
	Do2HPKZy7tV+G0+J7yYiUr0JEIGm2pNQq2+ovvC7NYxxqQBmWk/4ejnJR4D2jeMc6sPrWA4XpRk43
	AOd4pLf/35n9bKq6KjjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho4DR-0001w7-OT; Thu, 18 Jul 2019 11:04:49 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho4DI-0001vc-UZ
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 11:04:42 +0000
Received: by mail-vs1-xe44.google.com with SMTP id u124so18807808vsu.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jul 2019 04:04:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=b0wwbY2e6RbRH4G1F2pGlnS3oUwQ5tYaheKqHK1+rAU=;
 b=ttbeDTZWonMsXhhF6MKJjUbS9xB63ArZlyQGS0QGDUinoAJno6rTVe45koBlUp/Qjh
 NQVkV3+Uhr8LVEmlJkoTd3j1VUjoTle0yuSKtRst+PQkt/gZVYtUy6lqHTEGXjhT/c+g
 IQGDz/tqooHxFmm+bsy+QWxFnl/gJ3yFFGgnAhEwcoQT9j9yKAE847bZbd1nj2DTVUjQ
 4Eym5SbEmuUMvs4Bez2aMkN9joceM718Uj77COGoAbpsJLZM8viL9KtrIwGx7UFskjyi
 pLZSUBIJjDLvyPPpTNjVox8LYn55p7hVHfYjzWOLJ8OD+D/+a5uRfl9hwqYR1RVKk0l5
 gVAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=b0wwbY2e6RbRH4G1F2pGlnS3oUwQ5tYaheKqHK1+rAU=;
 b=q35C9OrlTSiSK6WNrFUArMLLI0GmpUSdimO2BmKEJUlCKw/kB/Tts0jlzg4d0Fg177
 D9Qi63LsZ3eLu8SXljqU0xgwPxjyWaQYJrdWGaiH7e+gGfmM5yq9g6EUtBjFCvWLdVaE
 YiJt2RTMOFnA1sjnUiLqctLB1g4e3IeAX+FCN8mu3JemKYxJfUo2ZrW58F+Wa7vs4Rn8
 P7X5XSaqVUIa70SZA6KgA2fbGYnpJ8hVfOsLH8d6SfziVIkgE0WlVUWla8nz/lZfDO6p
 pCCEK48qHPBhVE4NRZMYcdbggfQmo1HySthG9o0gZ7dlgs9gi1l7dYc/ve7bb/hY6Y/H
 3WKQ==
X-Gm-Message-State: APjAAAXOTf1MHu4uHRC247tTIPXLbIVJQ/EGkOt2LFyapRpAx1jl0Bpk
 91SkAC9W9FMJrfmDd+eqYcEGreXJR5oyZBuXXfiexw==
X-Google-Smtp-Source: APXvYqySoFX2rcy6+ZHMwG7nItFm59GgexC/++PhaOS4J9XEwThQRKUsU9BuTaLZC+JTYiMmN5ylobCku0JfERVc6Vg=
X-Received: by 2002:a67:ee16:: with SMTP id f22mr28613664vsp.191.1563447879628; 
 Thu, 18 Jul 2019 04:04:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190513192300.653-1-ulf.hansson@linaro.org>
 <20190513192300.653-10-ulf.hansson@linaro.org>
 <20190716150533.GD7250@e107155-lin>
In-Reply-To: <20190716150533.GD7250@e107155-lin>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 18 Jul 2019 13:04:03 +0200
Message-ID: <CAPDyKFqaE2L419siFY=LGDsotAnpBt+H_vpmG62AqQw8UQJZJA@mail.gmail.com>
Subject: Re: [PATCH 09/18] drivers: firmware: psci: Add support for PM domains
 using genpd
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_040440_993463_26DE5A03 
X-CRM114-Status: GOOD (  30.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Kevin Hilman <khilman@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, Linux PM <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Amit Kucheria <amit.kucheria@linaro.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Tony Lindgren <tony@atomide.com>,
 Lina Iyer <ilina@codeaurora.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Niklas Cassel <niklas.cassel@linaro.org>,
 Souvik Chakravarty <souvik.chakravarty@arm.com>,
 "Raju P . L . S . S . S . N" <rplsssn@codeaurora.org>,
 Lina Iyer <lina.iyer@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 16 Jul 2019 at 17:05, Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Mon, May 13, 2019 at 09:22:51PM +0200, Ulf Hansson wrote:
> > When the hierarchical CPU topology layout is used in DT, we need to setup
> > the corresponding PM domain data structures, as to allow a CPU and a group
> > of CPUs to be power managed accordingly. Let's enable this by deploying
> > support through the genpd interface.
> >
> > Additionally, when the OS initiated mode is supported by the PSCI FW, let's
> > also parse the domain idle states DT bindings as to make genpd responsible
> > for the state selection, when the states are compatible with
> > "domain-idle-state". Otherwise, when only Platform Coordinated mode is
> > supported, we rely solely on the state selection to be managed through the
> > regular cpuidle framework.
> >
> > If the initialization of the PM domain data structures succeeds and the OS
> > initiated mode is supported, we try to switch to it. In case it fails,
> > let's fall back into a degraded mode, rather than bailing out and returning
> > an error code.
> >
> > Due to that the OS initiated mode may become enabled, we need to adjust to
> > maintain backwards compatibility for a kernel started through a kexec call.
> > Do this by explicitly switch to Platform Coordinated mode during boot.
> >
> > Finally, the actual initialization of the PM domain data structures, is
> > done via calling the new shared function, psci_dt_init_pm_domains().
> > However, this is implemented by subsequent changes.
> >
> > Co-developed-by: Lina Iyer <lina.iyer@linaro.org>
> > Signed-off-by: Lina Iyer <lina.iyer@linaro.org>
> > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > ---
> >
> > Changes:
> >       - Simplify code setting domain_state at power off.
> >       - Use the genpd ->free_state() callback to manage freeing of states.
> >       - Fixup a bogus while loop.
> >
> > ---
> >  drivers/firmware/psci/Makefile         |   2 +-
> >  drivers/firmware/psci/psci.c           |   7 +-
> >  drivers/firmware/psci/psci.h           |   5 +
> >  drivers/firmware/psci/psci_pm_domain.c | 268 +++++++++++++++++++++++++
> >  4 files changed, 280 insertions(+), 2 deletions(-)
> >  create mode 100644 drivers/firmware/psci/psci_pm_domain.c
> >
>
> [...]
>
> >  #endif /* __PSCI_H */
> > diff --git a/drivers/firmware/psci/psci_pm_domain.c b/drivers/firmware/psci/psci_pm_domain.c
> > new file mode 100644
> > index 000000000000..3c6ca846caf4
> > --- /dev/null
> > +++ b/drivers/firmware/psci/psci_pm_domain.c
> > @@ -0,0 +1,268 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * PM domains for CPUs via genpd - managed by PSCI.
> > + *
> > + * Copyright (C) 2019 Linaro Ltd.
> > + * Author: Ulf Hansson <ulf.hansson@linaro.org>
> > + *
> > + */
> > +
>
> [...]
>
> > +static int psci_pd_power_off(struct generic_pm_domain *pd)
> > +{
> > +     struct genpd_power_state *state = &pd->states[pd->state_idx];
> > +     u32 *pd_state;
> > +
> > +     /* If we have failed to enable OSI mode, then abort power off. */
> > +     if (psci_has_osi_support() && !osi_mode_enabled)
> > +             return -EBUSY;
> > +
> > +     if (!state->data)
> > +             return 0;
> > +
> > +     /* When OSI mode is enabled, set the corresponding domain state. */
> > +     pd_state = state->data;
> > +     psci_set_domain_state(*pd_state);
>
> I trying to understand how would this scale to level 2(cluster of
> clusters or for simply system). The current code for psci_set_domain_state
> just stores the value @pd_state into per-cpu domain_state. E.g.: Now if
> the system level pd is getting called after cluster PD, it will set the
> domain state to system level PD state. It won't work with original
> format and it may work with extended format if it's carefully crafted.
> In short, the point is just over-writing domain_state is asking for
> troubles IMO.

Thanks for spotting this!

While walking upwards in the PM domain topology, I thought I was ORing
the domain states, but clearly the code isn't doing that.

In principle we need to do the below instead.

pd_state = state->data;
composite_pd_state = *pd_state | psci_get_domain_state();
psci_set_domain_state(composite_pd_state);

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
