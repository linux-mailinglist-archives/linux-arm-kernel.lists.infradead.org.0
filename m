Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D4A312D7F9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Dec 2019 11:32:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7B0oZe38ZW0GYsqJQ7IFALOUenVtc5pQmm1OZuL4gik=; b=haa1bbIE1yxf7R
	l8gtGzK7NyxsKW+PqFyCfndM6zBLDPf3a0NxCWQH8ee+RZWuk6MyvEnTPJ13l2QoAzq9IxAMt2el9
	K+oLLzj108dU4RI+/ptO9/iwzgJAOGYA1ZwUvg16jnmXOmz5sm2NSUeXzXvaetiVVH1NTWRbv9Xue
	rJmU6BNma8EDf3lpY/Bf/fLespeZNW2tj3S+dJk2AtI8wIJQPMej8dUI/tgXlW8pJLZRCjgni6nP3
	6Sttrb/FJb4leg/maDIWIYKkIx2H4bDyAk+qHIdcE8S8JeKInpbV5RHiF8u9Dm6+cMNqrgdOVJKLT
	YNxIDgWR7kViJdQa3gbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imEp6-0004aW-RX; Tue, 31 Dec 2019 10:32:24 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imEox-0004a2-4o
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Dec 2019 10:32:16 +0000
Received: by mail-vs1-xe42.google.com with SMTP id v12so22462274vsv.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Dec 2019 02:32:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=APq/Wal+/T2ILA2C8LNWwS6Ggl9rmz6le5YLkRNP/Sw=;
 b=HHrpeudfIwbmxHuRTJHpXQiee9zeRr4aVEY+8ccKNrdSUKRL1sPYWvTNYAwyZji2Su
 x5vmizty6Zf/Qm+3cHmG59Szx8w5kfUlTl6s+f6cgCYo94B6lhyEEQYFigXSl7rmOGXc
 PmVSgFQTf2n9QmKEBMSH9J9xxWAFIT2m+elaRkNspcosQEF8D6QeP8b3LBQQjjCu6YgD
 +ALpiLnFBVwvFxP/rZVO39E2sOeEdP3cl+8lfj65EP9ssyAhRFpphcc4uGLXTA5gCnIm
 MpdDXbRamF/4FgzwjBf2K0XHwSDluarQ5eTXLRSR26jCTc8eDck/kQ7qcdPIcd059GlC
 Mh4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=APq/Wal+/T2ILA2C8LNWwS6Ggl9rmz6le5YLkRNP/Sw=;
 b=R9KscDINqP9ZIwtuRN953XhiOeWIk4yQ44MRsDkBjrn4RuOyjEhnZuGP2eieOezu3D
 juY/gGqnMytBMnIy4LCetW/8acEYVRdiH921hor5qxyeuqMhv95y+VMqZSeccUbsQVqH
 Y50ZPGuCoG2c+0eIXqhoyNc3hLQBZz4XA9IpdkU8IljGaoLnn7M/Xp9BJiArMzHdh7zT
 DXcOSJyihWl4tnb6R8h+9hIrTQprXrBSl/EPf87X6qufRWSPpSex/HFv+Nr6SVRUAkyu
 0XAsnfWG/lTR1+Gh6KgJQlQ1Fa4t679sXfBdA1Q4jyscbEvhwcH/YsWPhhmLxp8d7Q+2
 x3oA==
X-Gm-Message-State: APjAAAW0FB2LWfBZKNLn3oo3KOHv9cnlyrrAL98y5hZr2mSP2bTN5mbV
 cI9Xddify+DjmxUySRqw/xJ4uGh4zlGkqpAkacIfKw==
X-Google-Smtp-Source: APXvYqxcMojNGXqrQu6aASTmtwpwLNCDEpNr0TLNar43gVKvVhyAmAeDk7d7VDvNcmZgtEpYHScuVsvi3mO8nLwxF/0=
X-Received: by 2002:a67:cd96:: with SMTP id r22mr30810457vsl.165.1577788333549; 
 Tue, 31 Dec 2019 02:32:13 -0800 (PST)
MIME-Version: 1.0
References: <20191230144402.30195-1-ulf.hansson@linaro.org>
 <20191230144402.30195-11-ulf.hansson@linaro.org>
 <20191230163503.GA16256@bogus>
In-Reply-To: <20191230163503.GA16256@bogus>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 31 Dec 2019 11:31:37 +0100
Message-ID: <CAPDyKFp48rEZAUK3yC9Ac8ECUy+1Z5M6SAt5_ou1DVSe-xVnWg@mail.gmail.com>
Subject: Re: [PATCH v5 10/15] cpuidle: psci: Prepare to use OS initiated
 suspend mode via PM domains
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_023215_325649_1500ACD9 
X-CRM114-Status: GOOD (  26.81  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Linux PM <linux-pm@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Andy Gross <agross@kernel.org>,
 Lina Iyer <ilina@codeaurora.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kevin Hilman <khilman@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 30 Dec 2019 at 17:35, Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Mon, Dec 30, 2019 at 03:43:57PM +0100, Ulf Hansson wrote:
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
> > Changes in v5:
> >       - None.
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
> > +static inline void psci_set_domain_state(u32 state)
> > +{
> > +     __this_cpu_write(domain_state, state);
> > +}
> > +
> > +static inline u32 psci_get_domain_state(void)
> > +{
> > +     return __this_cpu_read(domain_state);
> > +}
> > +
> > +static inline int psci_enter_state(int idx, u32 state)
> > +{
> > +     return CPU_PM_CPU_IDLE_ENTER_PARAM(psci_cpu_suspend_enter, idx, state);
> > +}
> > +
> > +static int psci_enter_domain_idle_state(struct cpuidle_device *dev,
> > +                                     struct cpuidle_driver *drv, int idx)
> > +{
> > +     struct psci_cpuidle_data *data = this_cpu_ptr(&psci_cpuidle_data);
> > +     u32 *states = data->psci_states;
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
> >  static int psci_enter_idle_state(struct cpuidle_device *dev,
> >                               struct cpuidle_driver *drv, int idx)
> >  {
> >       u32 *state = __this_cpu_read(psci_cpuidle_data.psci_states);
> >
> > -     return CPU_PM_CPU_IDLE_ENTER_PARAM(psci_cpu_suspend_enter,
> > -                                        idx, state[idx]);
> > +     return psci_enter_state(idx, state[idx]);
> >  }
> >
> >  static struct cpuidle_driver psci_idle_driver __initdata = {
> > @@ -79,7 +112,8 @@ static int __init psci_dt_parse_state_node(struct device_node *np, u32 *state)
> >       return 0;
> >  }
> >
> > -static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node,
> > +static int __init psci_dt_cpu_init_idle(struct cpuidle_driver *drv,
> > +                                     struct device_node *cpu_node,
> >                                       unsigned int state_count, int cpu)
> >  {
> >       int i, ret = 0;
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
> Do we still need this check ? I thought we won't attach genpd if OSI is
> not enabled. If possible, please drop the check.

This check is still needed. psci_dt_attach_cpu() now returns NULL when
OSI has not been enabled (see patch 14), as we agreed on during the
discussions around the previous version.

>
> Other than that, looks good to me.
>
> Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>

Thanks!

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
