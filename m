Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92A361D3C25
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 21:12:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NO7i3vMruHXqzj3WzByrByFabeYilnrqlsmoo2vqScI=; b=C1MViGEHMJ8yPA
	OE7s2xguE8CRMQbi5yE36to1gelRwEHl1999E0NvlE1qYR9Qa4N1rYybGiaPK4wGYU3a8WSKer5MH
	+PErVJ0Lci4uldM+fbFgOrSHMeFqNefQM9Q9hnu3tf5Bc8DoeYOBpB0R+memUnoRvOXmCyRljTrmy
	1z4ofDG6rUFvv0N0M9+dRrfyC1UPjlBY/C/UvkKYloatJWZ+CcbUP/7o2rELCfbfT8cvhNgsoXQDj
	JRTGaSu8qrnbWZh/QW9H7p4H9hv7kv08NRpcvK52FzXtaQE3HQq3HE+vc02qVHWn0fw0bmR1E83Qb
	2b2PKu5sqgy24geJO90g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZJHc-0003GT-1t; Thu, 14 May 2020 19:12:40 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZJHQ-0003Eu-6w
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 19:12:32 +0000
Received: by mail-vs1-xe43.google.com with SMTP id 62so2693926vsi.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 12:12:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1LE3Op6W1pMVVmKhBNLCDSlKGpivMWVI6Y3FDIsX10s=;
 b=hdhJP6EkEPN4CIH6D4KHLE7Hg+GJ+ap7GksmrIQCwncKT0WXcnpBJflfW9zqooy/CR
 1SyXzAEnzuGmhPNMPO8t6tBWaIpAn9Pgeqe0w2N77pECiKnK9O+sb03tun6Lbp7c8LVO
 ZQ2W8WuLM+ptixrh3UzXJ4AkylwR1r1VLt6jrJ/JXMNkWp8rB/mWgsTv8PUaiF59avZ0
 fiF4tgSoFNUKdWnTSo21eIESqvyQNcB8Av36iYz6e1XEGc8zqpgKOdGxboaFb7gLyXc3
 +vZO6/Fj9xJTySrViGMj+gagg/9QH3dp1Noon3ZuMCGnzAKIBjgYPU6AppZLienNgYbw
 TLjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1LE3Op6W1pMVVmKhBNLCDSlKGpivMWVI6Y3FDIsX10s=;
 b=TSGlV+xOI/n19xVEHSxsSP7A4D2Dg5X0fYF8ebdmHI5G6PzII1dyDQaPeAlNFWqJNH
 1xkcVQFTmgc+PPgjJqgfsmk8cfQJeZrEn/MrkCsacTUcChSXMXOsusLTRBX/ly3sycUU
 yglUorPN5TXl3uFVk0iAl7rhWhFIr3nOrb6TSNbIMOUgUgHscgFCsdtknfTW3aHsJQoz
 Bv+plpLtejU89uULuBgsRsaU5Z0vUOfy2GCmdxFqVE6USLEFiSOcBZAmPELmBq1bC/qt
 khu4nel8zKIZXd1ExHPBtCyr+23gHHSxxsb4vdtd+gmB07Ipj2pa6QcqCfc48z+ou+iU
 YPnQ==
X-Gm-Message-State: AOAM530FSF9P32kqv1DYoODBB748lqwu9PFWJliITqBFnLUmF5C+wcXs
 y9HI7Ehh1FaqAXywFOvL4qIfE2jW9D4ARiQo/3VnYg==
X-Google-Smtp-Source: ABdhPJyFDV7FfjuvogH4RjQMp/eTHNABRxGEE68tUKUm3krpWc2shmK46EO0auQqrgNrRsGZNJCioZodjIqF0MeMz/Q=
X-Received: by 2002:a05:6102:242:: with SMTP id
 a2mr4819381vsq.200.1589483546788; 
 Thu, 14 May 2020 12:12:26 -0700 (PDT)
MIME-Version: 1.0
References: <20200511133346.21706-1-ulf.hansson@linaro.org>
 <20200514142015.GA23401@bogus>
 <CAPDyKFoVo8L7eiGdEVNYR2DY7cszDuLkmX8O_SfyUKh73pbpMQ@mail.gmail.com>
 <20200514172816.GA42669@bogus>
In-Reply-To: <20200514172816.GA42669@bogus>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 14 May 2020 21:11:50 +0200
Message-ID: <CAPDyKFrdrOnxFHaAR=cmMi2VfSudyHdjZ7vRZKhTQtepdkiXug@mail.gmail.com>
Subject: Re: [PATCH] cpuidle: psci: Fixup execution order when entering a
 domain idle state
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_121228_282708_DA3D668D 
X-CRM114-Status: GOOD (  29.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Thu, 14 May 2020 at 19:28, Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Thu, May 14, 2020 at 05:41:37PM +0200, Ulf Hansson wrote:
> > On Thu, 14 May 2020 at 16:20, Sudeep Holla <sudeep.holla@arm.com> wrote:
> > >
> > > On Mon, May 11, 2020 at 03:33:46PM +0200, Ulf Hansson wrote:
> > > > Moving forward, platforms are going to need to execute specific "last-man"
> > > > operations before a domain idle state can be entered.
> > >
> > > I need to dig the thread details, but I remember commenting on one of
> > > the similar discussion. It was something to do with voting which wasn't
> > > necessary at all. I am interested in the details here.
> > >
> > > > In one way or the other, these operations needs to be triggered while
> > > > walking the  hierarchical topology via runtime PM and genpd, as it's at that
> > > > point the last-man becomes known.
> > > >
> > > > Moreover, executing last-man operations needs to be done after the CPU PM
> > > > notifications are sent through cpu_pm_enter(), as otherwise it's likely
> > > > that some notifications would fail. Therefore, let's re-order the sequence
> > > > in psci_enter_domain_idle_state(), so cpu_pm_enter() gets called prior
> > > > pm_runtime_put_sync().
> > > >
> > >
> > > More details on why notifications fail ?
> >
> > Well, at this moment this is more of a hypothetical issue as there is
> > no last-man notification sent/used yet.
> >
>
> Ah OK.
>
> > However, typically we would call cpu_cluster_pm_enter() in the path as
> > when the psci_pd_power_off() is called (for psci PM domains), when a
> > valid domain state has been found.
> >
>
> Please don't use cpu_cluster_pm_enter. I thought the whole idea of genpd
> will remove the notion of cluster and we will never need to use
> cpu_cluster_pm_*
>
> > This means, we would violate the cpu_cluster_pm_enter() API, as it's
> > clearly stated in its corresponding function header, that
> > cpu_pm_enter() needs to be called first (and that's also how others
> > are currently using it).
> >
>
> Ah so, it was just for use of cpu_cluster_pm_* which I would like to
> avoid. That was one of the motivation for using genpd I thought.
>
> > Note that, I am currently exploring whether we shall call
> > cpu_cluster_pm_enter|exit() at all, or whether we can use some other
> > new genpd mechanism to accomplish the similar thing.
> >
>
> Good, you do think so.

Okay, let's see where things go. I will keep you posted.

> > >
> > > > Fixes: ce85aef570df ("cpuidle: psci: Manage runtime PM in the idle path")
> > > > Reported-by: Lina Iyer <ilina@codeaurora.org>
> > > > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > > > ---
> > > >  drivers/cpuidle/cpuidle-psci.c | 8 +++++++-
> > > >  1 file changed, 7 insertions(+), 1 deletion(-)
> > > >
> > > > diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
> > > > index bae9140a65a5..d0fb585073c6 100644
> > > > --- a/drivers/cpuidle/cpuidle-psci.c
> > > > +++ b/drivers/cpuidle/cpuidle-psci.c
> > > > @@ -58,6 +58,10 @@ static int psci_enter_domain_idle_state(struct cpuidle_device *dev,
> > > >       u32 state;
> > > >       int ret;
> > > >
> > > > +     ret = cpu_pm_enter();
> > > > +     if (ret)
> > > > +             return -1;
> > > > +
> > >
> > > This change is ignoring the retention case psci_enter_state handles and
> > > this may affect performance by doing unnecessary save/restore.
> >
> > This was already the case before. CPU_PM_CPU_IDLE_ENTER_PARAM() ends
> > up always setting "is_retention" to 0, when __CPU_PM_CPU_IDLE_ENTER()
> > is called.
> >
>
> Ah OK, I recall now, sorry for the noise.

No worries, thanks for reviewing.

That said, are you fine with Rafel queuing this then?

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
