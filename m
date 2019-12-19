Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7CD8126613
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 16:49:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j497gBb7qWgm1/4KODin61EGhCMEv8cuD8wvXZ83tBs=; b=WYdrP7rDOHCnxu
	/9GR/MABm5QzESdFArf9WeH9ysbLUiu6X/wYgrINCyq4uDV71gf0IrmrPjeGCHq2WUEm2VQp0YPkt
	Y7ibummrTmKVzJ1MjSwoYl05BqAg7difR0LHr/LIxh8l97/8BjoOnjXiC41ZOSw4jSl1BMB7YhyXZ
	bBR0sSn1txhdp7+Ui8S93YZzTCcf5/2E0eCfJk9HKBD+Gewmb+yEPBkDBqQrWfPVXaEUdOR/YYXqw
	oxclpGH321uu4F3bxfRgEmwpKZpjnS3tdk7wBBncIoVpCI+hY3sxRRz48qBxdudd/eg6HiV/iCKdP
	7dAbW4F82UPTBGYzUcnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihy2y-0008QX-Jo; Thu, 19 Dec 2019 15:49:04 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihy2k-0008PT-TO
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 15:48:52 +0000
Received: by mail-vs1-xe43.google.com with SMTP id n27so4067059vsa.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 07:48:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5KrItn2ITQ/gEkMRXxlNzrQRHLgN8opGe0fqAyinPUw=;
 b=Krs4v/f5ShTU6CHF0kcrKOfGo7eQ1cC8sZXkheJgud6E52UN2qdbWjgA0hVxLVjNi4
 xttVorIYYFJMhg9rmpwqL4mpm6Aqo00mzZOE6JLxvAXbUAeDIgU1c3NA06d//tiKU3vn
 Eb4BIHzOYGuloyzyHiRfu5SyQDyR8LDTln9mFiThtfqvwx1PPJw4sTE0bwWci2+1arro
 InOyFqt4TlI+xY/YlgF0mgG2UXZaVaEbPQwhf6xC6IqWOZuN887kPaTKQ9LJcuPPK7qy
 vxGMrH2aIqaPPfLq+KwXgidpZovEQV8dbuSYsEu+zIoH1eB4Aw/E6/FJB4IsEGLNF5SK
 cyeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5KrItn2ITQ/gEkMRXxlNzrQRHLgN8opGe0fqAyinPUw=;
 b=r8S9WQtZp8yLd6Dqe9UX2Hm20A0EZ1b2z/DSIhozsJR4dK+rwtHnPh776TV9Zv9s1x
 /q2W9wJuxeQ2Kre4E/rgZwZ1B0NyFmRUZGnq6oNHh25KU3k0cBjgcQLhSHrIV4GpIQzU
 E2SeFYuVJa64EtgLxlp6iM/GuZ25LkaY4k40pxMhrlkZX9fsgw92Sniv9zik07T5bMLF
 1ABzcCqC6+wLB6007QNa2rGsSZY1zIbK9mM8Vx4xrx7SxIRGtUqOzIdzGLr6lnkgrGDT
 WBmAJ2e1nAp+ygtD3yWVIOWUq3EJuO8acZxpVItwZePvnXXWF+PMguyJcLygecDGnbFP
 kT+A==
X-Gm-Message-State: APjAAAVTqTRb2DcNR4gln+nesHZgibN2+g/KKakvWJQ11VE2egk+cnhI
 p7TUOvJ0QhbhgJv9daHtMhVKZQQVeQimlhPVNok7l9SdZvk=
X-Google-Smtp-Source: APXvYqxqo21q1MMNfYKhRJXzlWwvyuU59L2d1Xb7zAa7BXcxGpN1Fniu6C6xLfMTbN70e+rP5ASWf+q3jTb16FT4FAA=
X-Received: by 2002:a67:b649:: with SMTP id e9mr5500898vsm.34.1576770529749;
 Thu, 19 Dec 2019 07:48:49 -0800 (PST)
MIME-Version: 1.0
References: <20191211154343.29765-1-ulf.hansson@linaro.org>
 <20191211154343.29765-11-ulf.hansson@linaro.org>
 <20191219143154.GC20746@bogus>
In-Reply-To: <20191219143154.GC20746@bogus>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 19 Dec 2019 16:48:13 +0100
Message-ID: <CAPDyKForeHdXPTocvAgFDbX+94UQWbJixUpKLY=0MbnF5XUAMA@mail.gmail.com>
Subject: Re: [PATCH v4 10/14] cpuidle: psci: Prepare to use OS initiated
 suspend mode via PM domains
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_074850_991896_E322957F 
X-CRM114-Status: GOOD (  30.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Andy Gross <agross@kernel.org>,
 Lina Iyer <ilina@codeaurora.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kevin Hilman <khilman@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Lina Iyer <lina.iyer@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 19 Dec 2019 at 15:32, Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Wed, Dec 11, 2019 at 04:43:39PM +0100, Ulf Hansson wrote:
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
> > domain_state take precedence over the regular selected state, when entering
> > and idle state.
> >
> > To avoid executing the above OSI specific code in the ->enter() callback,
> > while operating in the default PSCI Platform Coordinated mode, let's also
> > add a new enter-function and use it for OSI.
> >
> > Co-developed-by: Lina Iyer <lina.iyer@linaro.org>
> > Signed-off-by: Lina Iyer <lina.iyer@linaro.org>
> > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > ---
> >
> > Changes in v4:
> >       - Rebased on top of earlier changes.
> >       - Add comment about using the deepest cpuidle state for the domain state
> >       selection.
> >
> > ---
> >  drivers/cpuidle/cpuidle-psci.c | 56 ++++++++++++++++++++++++++++++----
> >  1 file changed, 50 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
> > index 6a87848be3c3..9600fe674a89 100644
> > --- a/drivers/cpuidle/cpuidle-psci.c
> > +++ b/drivers/cpuidle/cpuidle-psci.c
> > @@ -29,14 +29,47 @@ struct psci_cpuidle_data {
> >  };
> >
> >  static DEFINE_PER_CPU_READ_MOSTLY(struct psci_cpuidle_data, psci_cpuidle_data);
> > +static DEFINE_PER_CPU(u32, domain_state);
> > +
>
> [...]
>
> > +static int psci_enter_domain_idle_state(struct cpuidle_device *dev,
> > +                                     struct cpuidle_driver *drv, int idx)
> > +{
> > +     struct psci_cpuidle_data *data = this_cpu_ptr(&psci_cpuidle_data);
> > +     u32 *states = data->psci_states;
>
> Why can't the above be like this for consistency(see below in
> psci_enter_idle_state) ?

You have a point, however in patch11 I am adding this line below.

struct device *pd_dev = data->dev;

So I don't think it matters much, agree?

>
>         u32 *states = __this_cpu_read(psci_cpuidle_data.psci_states);
>
> > +     u32 state = psci_get_domain_state();
> > +     int ret;
> > +
> > +     if (!state)
> > +             state = states[idx];
> > +
> > +     ret = psci_enter_state(idx, state);
> > +
> > +     /* Clear the domain state to start fresh when back from idle. */
> > +     psci_set_domain_state(0);
> > +     return ret;
> > +}
> >
>
> [...]
>
> > @@ -118,6 +152,15 @@ static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node,
> >                       ret = PTR_ERR(data->dev);
> >                       goto free_mem;
> >               }
> > +
> > +             /*
> > +              * Using the deepest state for the CPU to trigger a potential
> > +              * selection of a shared state for the domain, assumes the
> > +              * domain states are all deeper states.
> > +              */
> > +             if (data->dev)
>
> You can drop this check as return on error above.

Actually not, because if OSI is supported, there is still a
possibility that the PM domain topology isn't used.

This means ->data->dev is NULL.

>
> > +                     drv->states[state_count - 1].enter =
> > +                             psci_enter_domain_idle_state;
>
> I see the comment above but this potential blocks retention mode at
> cluster level when all cpu enter retention at CPU level. I don't like
> this assumption, but I don't have any better suggestion. Please add the
> note that we can't enter RETENTION state at cluster/domain level when
> all CPUs enter at CPU level.

You are correct, but I think the comment a few lines above (agreed to
be added by Lorenzo in the previous version) should be enough to
explain that. No?

The point is, this is only a problem if cluster RETENTION is
considered to be a shallower state that CPU power off, for example.

>
> As I wrote above I got another doubt. What if platform specifies just
> RETENTION state at CPU as well as Cluster/domain ? I think it should be
> fine, just asking it out loud.

It's fine.

However, I am looking at what future improvements that can be made.
This is one of them, but let's discuss that later on.

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
