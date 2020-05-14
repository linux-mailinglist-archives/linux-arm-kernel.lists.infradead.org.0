Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB58C1D3860
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 19:34:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=31CipBxcftZmmWpOWYb55gczOYzhg9HIOy5i3YzdaZo=; b=Tu2rVjS24LNcbs
	+BMoqAInPVzZUxtZE47nQ2pstWYgvnauuL9wka6hiKWGI0d84JVdD1MsaSQCvtbOnXHFHe8th4S+J
	bLulvhx+rEmq8nXNVWcnhrT/VnWXqNaeu0qfGunC8sfwnr5Q9Mit4fS4naGjfWNXtTmDjdZIMByp1
	MtNAtimCk6+/Pqd04C047h46mtoDZ615CYHGV1ZEqFcjtii5ua/9sZGdWXfqF49n7ZZhhsmyPuP39
	Z91N1LIF4c9Mn1ZCk1RDhWXH96dqSp+Cg3Ry3p3AbEmKNoDtIQ4+yBILRVKu+j/sldMAZD3cKMgyp
	d/MgKmD7BxFlbDBCDaxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZHka-0005Pq-Bl; Thu, 14 May 2020 17:34:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZHek-0003tw-JF
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 17:28:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AB8031042;
 Thu, 14 May 2020 10:28:23 -0700 (PDT)
Received: from bogus (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2663A3F71E;
 Thu, 14 May 2020 10:28:22 -0700 (PDT)
Date: Thu, 14 May 2020 18:28:16 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH] cpuidle: psci: Fixup execution order when entering a
 domain idle state
Message-ID: <20200514172816.GA42669@bogus>
References: <20200511133346.21706-1-ulf.hansson@linaro.org>
 <20200514142015.GA23401@bogus>
 <CAPDyKFoVo8L7eiGdEVNYR2DY7cszDuLkmX8O_SfyUKh73pbpMQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPDyKFoVo8L7eiGdEVNYR2DY7cszDuLkmX8O_SfyUKh73pbpMQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_102826_737198_19B0CF90 
X-CRM114-Status: GOOD (  26.99  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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

On Thu, May 14, 2020 at 05:41:37PM +0200, Ulf Hansson wrote:
> On Thu, 14 May 2020 at 16:20, Sudeep Holla <sudeep.holla@arm.com> wrote:
> >
> > On Mon, May 11, 2020 at 03:33:46PM +0200, Ulf Hansson wrote:
> > > Moving forward, platforms are going to need to execute specific "last-man"
> > > operations before a domain idle state can be entered.
> >
> > I need to dig the thread details, but I remember commenting on one of
> > the similar discussion. It was something to do with voting which wasn't
> > necessary at all. I am interested in the details here.
> >
> > > In one way or the other, these operations needs to be triggered while
> > > walking the  hierarchical topology via runtime PM and genpd, as it's at that
> > > point the last-man becomes known.
> > >
> > > Moreover, executing last-man operations needs to be done after the CPU PM
> > > notifications are sent through cpu_pm_enter(), as otherwise it's likely
> > > that some notifications would fail. Therefore, let's re-order the sequence
> > > in psci_enter_domain_idle_state(), so cpu_pm_enter() gets called prior
> > > pm_runtime_put_sync().
> > >
> >
> > More details on why notifications fail ?
>
> Well, at this moment this is more of a hypothetical issue as there is
> no last-man notification sent/used yet.
>

Ah OK.

> However, typically we would call cpu_cluster_pm_enter() in the path as
> when the psci_pd_power_off() is called (for psci PM domains), when a
> valid domain state has been found.
>

Please don't use cpu_cluster_pm_enter. I thought the whole idea of genpd
will remove the notion of cluster and we will never need to use
cpu_cluster_pm_*

> This means, we would violate the cpu_cluster_pm_enter() API, as it's
> clearly stated in its corresponding function header, that
> cpu_pm_enter() needs to be called first (and that's also how others
> are currently using it).
>

Ah so, it was just for use of cpu_cluster_pm_* which I would like to
avoid. That was one of the motivation for using genpd I thought.

> Note that, I am currently exploring whether we shall call
> cpu_cluster_pm_enter|exit() at all, or whether we can use some other
> new genpd mechanism to accomplish the similar thing.
>

Good, you do think so.

> >
> > > Fixes: ce85aef570df ("cpuidle: psci: Manage runtime PM in the idle path")
> > > Reported-by: Lina Iyer <ilina@codeaurora.org>
> > > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > > ---
> > >  drivers/cpuidle/cpuidle-psci.c | 8 +++++++-
> > >  1 file changed, 7 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
> > > index bae9140a65a5..d0fb585073c6 100644
> > > --- a/drivers/cpuidle/cpuidle-psci.c
> > > +++ b/drivers/cpuidle/cpuidle-psci.c
> > > @@ -58,6 +58,10 @@ static int psci_enter_domain_idle_state(struct cpuidle_device *dev,
> > >       u32 state;
> > >       int ret;
> > >
> > > +     ret = cpu_pm_enter();
> > > +     if (ret)
> > > +             return -1;
> > > +
> >
> > This change is ignoring the retention case psci_enter_state handles and
> > this may affect performance by doing unnecessary save/restore.
>
> This was already the case before. CPU_PM_CPU_IDLE_ENTER_PARAM() ends
> up always setting "is_retention" to 0, when __CPU_PM_CPU_IDLE_ENTER()
> is called.
>

Ah OK, I recall now, sorry for the noise.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
