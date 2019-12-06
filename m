Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B773114FBE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 12:26:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h5NxkCvzZEa23wAqeo0hQVfBn9vP0+v9a0gcgKXOGOQ=; b=n3OyxAzExIFejb
	Thh8metMV26VKNKStz2Qj8IJJ6jmjb3RymqM5DYmH1isGuNWNdG+4F4SS/lZhqH5btAuGmF6dApTn
	j4t4bX47CtYXPxnh8OXJsG9QER0nMdY4c9SwqwHHV9bReqOiFserw+YowfVL/lcZEVKp6/++xn509
	dxvJ4MuAkVH634Gbya3oG6rcty8IjTwuY+IB8pJ0qxLWZVs74q+HesSwDi0rbuWCpxJceMSwfUyim
	e6gDbqwQ87WpXxu1lmxDcObNIiz+bzkctGwWRUqzVnEiSBgUpGzQFVglnRIRadS0yPrnpO6Q/YJX4
	IRHW4wLwJobUdvoFEwJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idBkN-0005tp-CD; Fri, 06 Dec 2019 11:26:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idBkE-0005tN-M2
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 11:26:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5FFFC31B;
 Fri,  6 Dec 2019 03:25:56 -0800 (PST)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6458B3F52E;
 Fri,  6 Dec 2019 03:25:54 -0800 (PST)
Date: Fri, 6 Dec 2019 11:25:49 +0000
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH v3 10/13] cpuidle: psci: Prepare to use OS initiated
 suspend mode via PM domains
Message-ID: <20191206112549.GA22964@e121166-lin.cambridge.arm.com>
References: <20191127102914.18729-1-ulf.hansson@linaro.org>
 <20191127102914.18729-11-ulf.hansson@linaro.org>
 <20191205183544.GB1516@e121166-lin.cambridge.arm.com>
 <CAPDyKFra-C_EKrcec6Yys2P10bB+KBtVAKNtVFgqDvV=tzbDRQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPDyKFra-C_EKrcec6Yys2P10bB+KBtVAKNtVFgqDvV=tzbDRQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_032558_816378_B6A897B4 
X-CRM114-Status: GOOD (  29.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Lina Iyer <lina.iyer@linaro.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 05, 2019 at 09:25:54PM +0100, Ulf Hansson wrote:
> On Thu, 5 Dec 2019 at 19:35, Lorenzo Pieralisi
> <lorenzo.pieralisi@arm.com> wrote:
> >
> > On Wed, Nov 27, 2019 at 11:29:11AM +0100, Ulf Hansson wrote:
> >
> > [...]
> >
> > > -static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node,
> > > +static int __init psci_dt_cpu_init_idle(struct cpuidle_driver *drv,
> > > +                                     struct device_node *cpu_node,
> > >                                       unsigned int state_count, int cpu)
> > >  {
> > >       int i, ret = 0;
> > > @@ -118,6 +152,11 @@ static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node,
> > >               goto free_mem;
> > >       }
> > >
> > > +     /* Manage the deepest state via a dedicated enter-function. */
> > > +     if (dev)
> > > +             drv->states[state_count - 1].enter =
> > > +                     psci_enter_domain_idle_state;
> >
> >
> > It is unfortunate to make this arbitrary choice, it would be best
> > if you could detect which states are "domain" states aka are governed
> > by multiple cpus.
> 
> The domain states are managed and selected by the genpd providers, via
> using runtime PM reference counting. Please have a closer look at the
> code in cpuidle-psci-domain.c and in the generic PM domain, that
> should give you the needed details.
> 
> I am overriding the enter callback for the *deepest* known idle state
> of the CPU, which is according to what you requested [1].

Overriding it yes but I have not requested to do it only for the
deepest idle state that, I repeat, in my opinion is an arbitrary
choice that works for the platform you are testing on but is
not generic as it should.

You can merge it as it is but that's how things stand and adding
a comment to the *code* would help understand its logic.

> So, unless I am missing your point, I think the above code does
> exactly what you want, no?
> 
> In regards to the "arbitrary choice" of what cpuidle state to use,
> there are more details about why that is, in the changelog.
> 
> >
> > This inizialization though does not belong in here, it is done at driver
> > level, it should not be done in this per-cpu path. IIUC the logic the
> > enter pointer should only be overridden if and only if all cpus managed
> > by the driver have a corresponding device associated.
> 
> I think you have overlooked the fact that there are one cpuidle driver
> registered per CPU. The above doesn't make sense to me, sorry.

You are calling psci_dt_cpu_init_idle() for every possibile cpu.

Every time psci_dt_attach_cpu() is called, we check dev and override
the idle driver enter method. There is one driver, what I am saying
is that it is not correct to check dev and override the enter pointer
for *every* cpu that we try to attach to a power domain. This must
be done once for all by checking that *all* devices could be attached
to a power domain.

> > To be frank I would even move the psci_has_osi_support() check from
> > psci_dt_attach_cpu() to this path and prevent calling
> > psci_dt_attach_cpu() and the tail of the function if
> > (!psci_has_osi_support()).
> >
> > >       data->dev = dev;
> >
> > I think Sudeep already mentioned that, by using psci_has_osi_support()
> > as above you can prevent running this code, there is really no point,
> > the data->dev NULL sentinel is already initialized.
> 
> Yes, I discussed this with Sudeep, but we didn't reach a consensus.

Consensus was already reached.

http://www.open-std.org/jtc1/sc22/WG14/www/docs/n1570.pdf

> Let me explain the reasons behind the selected approach, once more.
> 
> The data->dev is a pointer within a static declared struct. Are you
> sure it's assigned NULL by initialization? Don't we explicitly need to
> set it to NULL, else it will be undefined, no?

http://www.open-std.org/jtc1/sc22/WG14/www/docs/n1570.pdf

6.7.9 (10) page 140

> Of course, I can move the check for psci_has_osi_support() into here
> and avoid calling psci_dt_attach_cpu(). Just wondering what that
> actually gain us, especially if we need to explicitly set the pointer
> to NULL anyway.

See above.

Thanks,
Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
