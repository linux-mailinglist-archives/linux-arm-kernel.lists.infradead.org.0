Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C84A317AA73
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 17:23:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=94U2tGXtsLShgLkMOVQlakwldWC/7qfky8Pao4cuPsE=; b=lkQknRzUS5nbVk
	ktto4g/hReaLZdoIsSIWXaCv+fAuG3nAZgZIQRtlvoe0Py5EPdW2bcNAT7CT24SbyHpSQWn09rz22
	kSxV6fmpM2QOitfm98chiKb/YsuJsXKx1KH9ejPZSSnEeKCy/4U6JfiS0HE3181Lvf5rpvp1MMFav
	T41EqrxRE37j4PH3yAM4L80sExD73efLri/Khg9BN/LevjrZgEHXO50X7WwhkhbhQK92z5iE/KRty
	JzjJ0v9gkPICRCr9Sr0vEYH6MVmNubA0dLexEC19vCPuX52N+FPC0pIBIT/lT7BLKFzweItoTxkm5
	s8YChUI0SPZXveSzx1ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9tHZ-0000KI-MD; Thu, 05 Mar 2020 16:23:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9tHR-0000Je-MH
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Mar 2020 16:23:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1B16D30E;
 Thu,  5 Mar 2020 08:23:25 -0800 (PST)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8755F3F534;
 Thu,  5 Mar 2020 08:23:23 -0800 (PST)
Date: Thu, 5 Mar 2020 16:23:21 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH v2 4/4] cpuidle: psci: Allow WFI to be the only state for
 the hierarchical topology
Message-ID: <20200305162321.GB53631@bogus>
References: <20200303203559.23995-1-ulf.hansson@linaro.org>
 <20200303203559.23995-5-ulf.hansson@linaro.org>
 <20200304122312.GE25004@bogus>
 <CAPDyKFpcN-p6sKqB0ujHAY29qPSg7qpSjYGymPaJ4W8jgCKGcg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPDyKFpcN-p6sKqB0ujHAY29qPSg7qpSjYGymPaJ4W8jgCKGcg@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_082325_817561_83343D8C 
X-CRM114-Status: GOOD (  34.45  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Sudeep Holla <sudeep.holla@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 05, 2020 at 03:17:42PM +0100, Ulf Hansson wrote:
> On Wed, 4 Mar 2020 at 13:23, Sudeep Holla <sudeep.holla@arm.com> wrote:
> >
> > The $subject is bit confusing. IIUC, if there are no idle states to
> > manage including hierarchical domain states you will not register the driver
> > right ? If so, you are not allowing WFI to be the only state, hence my
> > concern with $subject.
>
> I agree that's not so clear, but it wasn't easy to fit everything I
> wanted to say in one line. :-)
>

No worries, just wanted to clarified. Looking at the patch, lot of things
got clarified but thought we can always improve.

> Is this below better and okay for you?
>
> "cpuidle: psci: Update condition when avoiding driver registration".
>

Definitely better than $subject :)

> >
> > On Tue, Mar 03, 2020 at 09:35:59PM +0100, Ulf Hansson wrote:
> > > It's possible that only the WFI state is supported for the CPU, while also
> > > a shared idle state exists for a group of CPUs.
> > >
> > > When the hierarchical topology is used, the shared idle state may not be
> > > compatible with arm,idle-state, rather with "domain-idle-state", which
> > > makes dt_init_idle_driver() to return zero. This leads to that the
> > > cpuidle-psci driver bails out during initialization, avoiding to register a
> > > cpuidle driver and instead relies on the default architectural back-end
> > > (called via cpu_do_idle()). In other words, the shared idle state becomes
> > > unused.
> > >
> > > Let's fix this behaviour, by allowing the dt_init_idle_driver() to return 0
> > > and then continue with the initialization. If it turns out that the
> > > hierarchical topology is used and we have some additional states to manage,
> > > then continue with the cpuidle driver registration, otherwise bail out as
> > > before.
> > >
> > > Reported-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> > > Fixes: a65a397f2451 ("cpuidle: psci: Add support for PM domains by using genpd")
> > > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > > ---
> > >
> > > Changes in v2:
> > >       - Convert the error code returned from psci_cpu_suspend_enter() into an
> > >       expected error code by cpuidle core.
> > >
> > > ---
> > >  drivers/cpuidle/cpuidle-psci.c | 48 +++++++++++++++++++++-------------
> > >  1 file changed, 30 insertions(+), 18 deletions(-)
> > >
> > > diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
> > > index bae9140a65a5..ae0fabec2742 100644
> > > --- a/drivers/cpuidle/cpuidle-psci.c
> > > +++ b/drivers/cpuidle/cpuidle-psci.c
> > > @@ -56,16 +56,19 @@ static int psci_enter_domain_idle_state(struct cpuidle_device *dev,
> > >       u32 *states = data->psci_states;
> > >       struct device *pd_dev = data->dev;
> > >       u32 state;
> > > -     int ret;
> > > +     int ret = 0;
> > >
> > >       /* Do runtime PM to manage a hierarchical CPU toplogy. */
> > >       pm_runtime_put_sync_suspend(pd_dev);
> > >
> > >       state = psci_get_domain_state();
> > > -     if (!state)
> > > +     if (!state && states)
> > >               state = states[idx];
> > >
> > > -     ret = psci_enter_state(idx, state);
> > > +     if (state)
> > > +             ret = psci_cpu_suspend_enter(state) ? -1 : idx;
> > > +     else
> > > +             cpu_do_idle();
> >
> > May be, I haven't followed this completely yet, but I don't want to be
> > in the position to replicated default arch idle hook. Just use the one
> > that exist by simply not registering the driver.
>
> That doesn't work for the configuration I am solving.
>
> Assume this scenario: We have WFI and a domain/cluster idle state.
> From the cpuidle governor point of view, it always selects the WFI
> state, which means idx is zero.
>

OK. The only state that cluster can enter when CPUs are in WFI are
cluster WFI and most hardware can handle it automatically. I don't see
the need to do any extra work for that.

> Then, after we have called pm_runtime_put_sync_suspend() a few lines
> above, we may potentially have a "domain state" to use, instead of the
> WFI state.
>

Are they any platforms with this potential "domain state" to use with
CPU WFI. I want to understand this better.

> In this case, if we would have called psci_enter_state(), that would
> lead us to calling cpu_do_idle() from the __CPU_PM_CPU_IDLE_ENTER()
> macro, becuase idx is zero. In other words, the domain state would
> become unused.
>

For a domain state to become unused with WFI, it needs to be available
and I am not 100% sure of that.

> Hope this clarifies what goes on here?
>

Yes.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
