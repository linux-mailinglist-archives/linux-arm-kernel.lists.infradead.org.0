Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9371517A73B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 15:18:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AqPJspPWTgekbIzHSWIMyMVgFKUQh2wUB9ji++1aCxs=; b=K8uCJDB/8v+TWK
	wGvPTvumgzdzY9NT9oWXDKcpgVP9KS9nvILbruhKq91VeIYlaCpBCYwzuphRhKIfAVX68CvCoVJVi
	+KyPy9DeHUVg+KEduTmVLPiYhaGQoxGz4eHSWSNb24u1Zscp4v7idcXLM0TQZYPhKpJfVxS1edcEK
	p42mc2eXXHFAqAN3qa04W51nqjSudkI8+h39msHuQ9KKAy7AKQt25/xhPlWW06yHkEXbJLe6n64W5
	jUlnZROT93jAEfSS7OvtFxMm2bEnohwDWqftGZV0Mhq/paluALRqZbPWYiQ11SN8bE23TETIA6j5B
	uk55ZDLqKAUXybguZG4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9rKW-0003bC-Kk; Thu, 05 Mar 2020 14:18:28 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9rKO-0003aT-NW
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 14:18:22 +0000
Received: by mail-vs1-xe43.google.com with SMTP id x194so1932536vsc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Mar 2020 06:18:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=T0wDyHzNqn+/6ChzKFPCyKMx102Jnw7HeFP/VoYqxN8=;
 b=SMkRCoBjs+DYJmTpaJRWyvYy3tXZsDisuWg4xIqbosMx73iqLgVTZ0/+4raYqhWTkM
 9Hsx7NMtX9xsRhjp/VmsLwUSOdFMayJJqT6z4pJRbEmNROUrvLwtSioer3lGiukKk8e6
 pnPNwZRM2qZwor1BcFvVRMfreayHRoUa66z19fiDp6ymT/a+ZiSaCbVTgbnpbMTHahZQ
 KTxSnbiQvfwAvNMvcc0ixae3qC/QaHa5qLGkTuUadJsEBriqu8+3tRvTTXHpfc0EA9C6
 CsQii4o7PAEldXZ9QKQHiNpG/xCZYQNbmD+umwVkvKetJuD/jUgcREy8Pu0GbFVxFG5Z
 lodQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=T0wDyHzNqn+/6ChzKFPCyKMx102Jnw7HeFP/VoYqxN8=;
 b=Tf4AQ2vPwHg/1lZn32jbksdPQIJSUAY3LvSMVPc7xMD0Q/O+D2fzTezgnj63sZWM7y
 xJ4z1Es6gzDryGP76Et0Q+YG64boEMRGKAcJjaXz1qCbUfJ8HhNdS0iss9qlJgJXY2F2
 VUqFtuNSsdEIVK6+m0j63k1WlKwJ1tK5YWZ09ELD+8NI4cfPSc2/fiuwadEePOHsYbNl
 61zhijoeG3fjcZuf9zDU2uTStz1iTir1EHwfs8tj/qF3zZEV0zyzg2bztjYm5Quk5WWT
 9LunflC0ZY1YpyHZ1HCzT/dF2Yz4JEPDk/GgsqzQr9vFBgVY7q8u5Wu8fjM6+IpKEcqK
 ViFA==
X-Gm-Message-State: ANhLgQ2likZrl8aEEX21niwBvn23xKS1ipSaNdrm3e1ztbwi1FXNt1hv
 Tu5pu9pgWLMIRiSTUoGceeWUtsvd3C2fOh3Oa/Wepw==
X-Google-Smtp-Source: ADFU+vtToLQ+muWK+2stMVmcNTMXIicD7xT/G3cpottHThd7RLHVKgCMu9PUBaA/UB1KH77w6dcpVPPrncDfMV9Crj0=
X-Received: by 2002:a67:800e:: with SMTP id b14mr5182339vsd.191.1583417898736; 
 Thu, 05 Mar 2020 06:18:18 -0800 (PST)
MIME-Version: 1.0
References: <20200303203559.23995-1-ulf.hansson@linaro.org>
 <20200303203559.23995-5-ulf.hansson@linaro.org> <20200304122312.GE25004@bogus>
In-Reply-To: <20200304122312.GE25004@bogus>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 5 Mar 2020 15:17:42 +0100
Message-ID: <CAPDyKFpcN-p6sKqB0ujHAY29qPSg7qpSjYGymPaJ4W8jgCKGcg@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] cpuidle: psci: Allow WFI to be the only state for
 the hierarchical topology
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_061820_829482_B83948D0 
X-CRM114-Status: GOOD (  27.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Benjamin Gaignard <benjamin.gaignard@st.com>,
 Linux PM <linux-pm@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 4 Mar 2020 at 13:23, Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> The $subject is bit confusing. IIUC, if there are no idle states to
> manage including hierarchical domain states you will not register the driver
> right ? If so, you are not allowing WFI to be the only state, hence my
> concern with $subject.

I agree that's not so clear, but it wasn't easy to fit everything I
wanted to say in one line. :-)

Is this below better and okay for you?

"cpuidle: psci: Update condition when avoiding driver registration".

>
> On Tue, Mar 03, 2020 at 09:35:59PM +0100, Ulf Hansson wrote:
> > It's possible that only the WFI state is supported for the CPU, while also
> > a shared idle state exists for a group of CPUs.
> >
> > When the hierarchical topology is used, the shared idle state may not be
> > compatible with arm,idle-state, rather with "domain-idle-state", which
> > makes dt_init_idle_driver() to return zero. This leads to that the
> > cpuidle-psci driver bails out during initialization, avoiding to register a
> > cpuidle driver and instead relies on the default architectural back-end
> > (called via cpu_do_idle()). In other words, the shared idle state becomes
> > unused.
> >
> > Let's fix this behaviour, by allowing the dt_init_idle_driver() to return 0
> > and then continue with the initialization. If it turns out that the
> > hierarchical topology is used and we have some additional states to manage,
> > then continue with the cpuidle driver registration, otherwise bail out as
> > before.
> >
> > Reported-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> > Fixes: a65a397f2451 ("cpuidle: psci: Add support for PM domains by using genpd")
> > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > ---
> >
> > Changes in v2:
> >       - Convert the error code returned from psci_cpu_suspend_enter() into an
> >       expected error code by cpuidle core.
> >
> > ---
> >  drivers/cpuidle/cpuidle-psci.c | 48 +++++++++++++++++++++-------------
> >  1 file changed, 30 insertions(+), 18 deletions(-)
> >
> > diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
> > index bae9140a65a5..ae0fabec2742 100644
> > --- a/drivers/cpuidle/cpuidle-psci.c
> > +++ b/drivers/cpuidle/cpuidle-psci.c
> > @@ -56,16 +56,19 @@ static int psci_enter_domain_idle_state(struct cpuidle_device *dev,
> >       u32 *states = data->psci_states;
> >       struct device *pd_dev = data->dev;
> >       u32 state;
> > -     int ret;
> > +     int ret = 0;
> >
> >       /* Do runtime PM to manage a hierarchical CPU toplogy. */
> >       pm_runtime_put_sync_suspend(pd_dev);
> >
> >       state = psci_get_domain_state();
> > -     if (!state)
> > +     if (!state && states)
> >               state = states[idx];
> >
> > -     ret = psci_enter_state(idx, state);
> > +     if (state)
> > +             ret = psci_cpu_suspend_enter(state) ? -1 : idx;
> > +     else
> > +             cpu_do_idle();
>
> May be, I haven't followed this completely yet, but I don't want to be
> in the position to replicated default arch idle hook. Just use the one
> that exist by simply not registering the driver.

That doesn't work for the configuration I am solving.

Assume this scenario: We have WFI and a domain/cluster idle state.
From the cpuidle governor point of view, it always selects the WFI
state, which means idx is zero.

Then, after we have called pm_runtime_put_sync_suspend() a few lines
above, we may potentially have a "domain state" to use, instead of the
WFI state.

In this case, if we would have called psci_enter_state(), that would
lead us to calling cpu_do_idle() from the __CPU_PM_CPU_IDLE_ENTER()
macro, becuase idx is zero. In other words, the domain state would
become unused.

Hope this clarifies what goes on here?

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
