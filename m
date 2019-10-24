Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45CC1E391F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 19:02:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ErekDgtaxsfTozNTKo4DlE0LJQdiqSHNnNhs+U7gcRA=; b=Rsly0KL3bcHLtQ
	WAyHAXD8XrplW+Ah8fXjW2VpDDwx2lhu4Pbh6l9HvQWo3zdrZSOLkVLZ0JTm3/YuyOQL0KFzQOJct
	W2h/VZsmJbu2RYVUdef/8fhjCWmCdbAptZ25E9/vCosuqf1NgBQJVUOpi5fAW4OX1CNNoO1CkKk1F
	CMIUXNvTDBwC0gGO+kZM7Ij3kbT7JfNe2ORCWYFnJFMswv6l4d4gl1Yrl/0R3IKgWMhD0BuPgGvj/
	owzNzOk0hkb3Xq/WJw+R5Af84Ic1nDkoDbLimtWTRwqHxRajx1lAEgfC1lzhvD4HlR1lFIk8RWwmi
	QVlpL7EFhBtw9CxiaknQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNgUz-0002fa-Pd; Thu, 24 Oct 2019 17:02:09 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNgUo-0002ev-Ia
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 17:02:00 +0000
Received: by mail-vs1-xe42.google.com with SMTP id p13so16714327vso.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 10:01:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NtQVfUVz2FV0gTSPzMm+cpXFmzct1iFbD6hJDcVtKUA=;
 b=t77I8kGwdUnaDJulyJxolE1Luw8F7JqtXHn7quj7/fUKnmi2K2rRZgTah11TU7kgPF
 7PmziGtitlWlatAceURR8G10nlYdBfzZ8Q5HvVUYWCwu4cH+ANF96V8FO+45ffUkDnxT
 RmTpNtrF8OAACZev9ZvchjpdwWLA0KBBBTeD8uGFbv1hBaRgmZTrL05hJOKbMrY0ZheS
 /8k8YMx7PjONZjEteNbEQdtoCmW2oBNTfcvFz1xXmsPJeN5EQG6D74BwzKpyEZX6Cvob
 SW6/kSweOfZDbkHWcspOdN7/bxo3hHqEqYSVfi+TJ0u7BG7ThMludvlAPJyxwTgR9nHx
 x6ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NtQVfUVz2FV0gTSPzMm+cpXFmzct1iFbD6hJDcVtKUA=;
 b=TlATvEyZ4nKXW94ckg8NM1ztoRzkvf9A4fMQEnVu91QBPPkxIAFWw8iXjASiRLeonS
 4begez4l+fxpIMQHEfcLGZ42A0CCT5mNOltnJNw4srMvfrGKc2mJ7KEFN7z2sC1RYNdB
 UAUguHguEF/G3jpNypyPjZfah0tesC1Z/lIgPnKTeb5Js9XWGi65aJqH0ajYAHo99gLy
 6DDmivu+tBZzenWeYuQObWkwA1TfKLhsAJtBMas6hijT3TMmNykpKQyNX/hV87NGvP5/
 vRwNAV2Gv8dEEO3eKIHsGu7BQTrUih87rPHYe3ZCy0/50T38XKZz9TKenLnywd7Zoy6E
 92hg==
X-Gm-Message-State: APjAAAVSmvN5bA4Y9OUqgttjGieOS3S6OPauhlRs7Bx7hAyBOZsy+1bM
 3Kkryyvn+s9w2VtAog23k+SGqxfTTNMsBUBiOHutgg==
X-Google-Smtp-Source: APXvYqwEQrfMYEQUWIJNCSq021TdmBydPjq8g8NeoBcj8NbB+JWZn8Qj6wMLt4Lhu5OVOw9XhknTHcJMharuO317lxE=
X-Received: by 2002:a67:ead4:: with SMTP id s20mr7390409vso.165.1571936516180; 
 Thu, 24 Oct 2019 10:01:56 -0700 (PDT)
MIME-Version: 1.0
References: <20191010113937.15962-1-ulf.hansson@linaro.org>
 <20191010113937.15962-9-ulf.hansson@linaro.org> <20191024154204.GB21622@bogus>
In-Reply-To: <20191024154204.GB21622@bogus>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 24 Oct 2019 19:01:20 +0200
Message-ID: <CAPDyKFpd2d8RSa5dg1Ry94rdtCgose-+46ywXu=n7XH86D5msQ@mail.gmail.com>
Subject: Re: [PATCH 08/13] cpuidle: psci: Prepare to use OS initiated suspend
 mode via PM domains
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_100158_613757_804ABB93 
X-CRM114-Status: GOOD (  26.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Linux PM <linux-pm@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kevin Hilman <khilman@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Lina Iyer <lina.iyer@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 24 Oct 2019 at 17:42, Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Thu, Oct 10, 2019 at 01:39:32PM +0200, Ulf Hansson wrote:
> > The per CPU variable psci_power_state, contains an array of fixed values,
> > which reflects the corresponding arm,psci-suspend-param parsed from DT, for
> > each of the available CPU idle states.
> >
> > This isn't sufficient when using the hierarchical CPU topology in DT, in
> > combination with having PSCI OS initiated (OSI) mode enabled. More
> > precisely, in OSI mode, Linux is responsible of telling the PSCI FW what
> > idle state the cluster (a group of CPUs) should enter, while in PSCI
> > Platform Coordinated (PC) mode, each CPU independently votes for an idle
> > state of the cluster.
> >
> > For this reason, introduce a per CPU variable called domain_state and
> > implement two helper functions to read/write its value. Then let the
> > domain_state take precedence over the regular selected state, when idling
> > the CPU in psci_enter_idle_state().
> >
> > This allows subsequent patches that implements support for PM domains for
> > cpuidle-psci, to write the selected idle state parameter for the cluster
> > into the domain_state variable. Furthermore, let's share the needed
> > functions in a header file, to enable the support for PM domains to be
> > implemented in a separate c-file.
> >
> > Co-developed-by: Lina Iyer <lina.iyer@linaro.org>
> > Signed-off-by: Lina Iyer <lina.iyer@linaro.org>
> > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > ---
> >  drivers/cpuidle/cpuidle-psci.c | 31 ++++++++++++++++++++++++++++---
> >  drivers/cpuidle/cpuidle-psci.h | 11 +++++++++++
> >  2 files changed, 39 insertions(+), 3 deletions(-)
> >  create mode 100644 drivers/cpuidle/cpuidle-psci.h
> >
> > diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
> > index 5c30f23a8a7b..a16467daf99d 100644
> > --- a/drivers/cpuidle/cpuidle-psci.c
> > +++ b/drivers/cpuidle/cpuidle-psci.c
> > @@ -20,17 +20,42 @@
> >
> >  #include <asm/cpuidle.h>
> >
> > +#include "cpuidle-psci.h"
> >  #include "dt_idle_states.h"
> >
> >  static DEFINE_PER_CPU_READ_MOSTLY(u32 *, psci_power_state);
> > +static DEFINE_PER_CPU(u32, domain_state);
> > +
>
> [nit] for me name 'domain_state' is per domain and for one each in the
> hierarchical topology. But here it's per cpu, just wondering if we can
> rename it to provide implicit meaning ?

Feel free to suggest something. I couldn't find any better. :-)

>
> > +void psci_set_domain_state(u32 state)
> > +{
> > +     __this_cpu_write(domain_state, state);
> > +}
> > +
> > +static inline u32 psci_get_domain_state(void)
> > +{
> > +     return __this_cpu_read(domain_state);
> > +}
> > +
> > +static int __psci_enter_idle_state(int idx, u32 state)
> > +{
> > +     return CPU_PM_CPU_IDLE_ENTER_PARAM(psci_cpu_suspend_enter, idx, state);
> > +}
> >
> >  static int psci_enter_idle_state(struct cpuidle_device *dev,
> >                               struct cpuidle_driver *drv, int idx)
> >  {
> > +     int ret;
> >       u32 *states = __this_cpu_read(psci_power_state);
> > -     u32 state = idx ? states[idx - 1] : 0;
> > +     u32 state = psci_get_domain_state();
> >
> > -     return CPU_PM_CPU_IDLE_ENTER_PARAM(psci_cpu_suspend_enter, idx, state);
> > +     if (!state && idx)
> > +             state = states[idx - 1];
>
> This can go as mentioned earlier once we have entry for WFI also.
>
> > +
> > +     ret = __psci_enter_idle_state(idx, state);
> > +
> > +     /* Clear the domain state to start fresh when back from idle. */
> > +     psci_set_domain_state(0);
> > +     return ret;
> >  }
> >
> >  static struct cpuidle_driver psci_idle_driver __initdata = {
> > @@ -56,7 +81,7 @@ static const struct of_device_id psci_idle_state_match[] __initconst = {
> >       { },
> >  };
> >
> > -static int __init psci_dt_parse_state_node(struct device_node *np, u32 *state)
> > +int __init psci_dt_parse_state_node(struct device_node *np, u32 *state)
>
> Can this me made part of patch that uses it instead of here ?

Sure, just wanted to keep the all the preparations for the PM domains
support together.

But you have a point, let me move this part to the patch that needs it.

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
