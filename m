Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 141ADDC204
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 12:03:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VVfuSM3pci+p02b9HgPEXsTvaE5iMj7chrJMpNJZWzA=; b=k4l6zaJO9W5sDb
	pwIZZZjMFKrXBHV1msA6jVQYoO8QGrf0YbsROsvReGLrJmi9bR9JWaKhkPdtjBxKHaq6veTDB3/sV
	GWj+NnHCM2lXVsgl6kj8iIqYsDcq4Xnretrj576f9kqVpqQlONDeZV/pOKZpCsKPWsqqlyZ3PghKH
	u2xHe7nQDMr4PByDG38YpCoG9BnKxf9fl8ApZiM8V/VQFA9IdAZzAONywKWV9VZbgzzaO4SRjotED
	BigdwpVyC4y7TXqnxE4J+mEn//ICvKIpoQZyUTpFzylCQX+olxVPN3OFS70vk+2o18RuSR04eyJNl
	neN6ftx5u1k5jVeBfIEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLP6d-0004YK-BG; Fri, 18 Oct 2019 10:03:35 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLP6P-0004Xc-Lj
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 10:03:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7E944494;
 Fri, 18 Oct 2019 03:03:10 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AE8F43F6C4;
 Fri, 18 Oct 2019 03:03:08 -0700 (PDT)
Date: Fri, 18 Oct 2019 11:03:04 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH 01/13] cpuidle: psci: Fix potential access to unmapped
 memory
Message-ID: <20191018100304.GA28830@e121166-lin.cambridge.arm.com>
References: <20191010113937.15962-1-ulf.hansson@linaro.org>
 <20191010113937.15962-2-ulf.hansson@linaro.org>
 <20191018093839.GB25918@e121166-lin.cambridge.arm.com>
 <CAPDyKFqcHY6+Eq9d6xTPYMDrUOtGs+64YuwZ1EbFtqQZe0+xEw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPDyKFqcHY6+Eq9d6xTPYMDrUOtGs+64YuwZ1EbFtqQZe0+xEw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_030321_799546_5B68A27D 
X-CRM114-Status: GOOD (  24.48  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kevin Hilman <khilman@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 11:51:11AM +0200, Ulf Hansson wrote:
> On Fri, 18 Oct 2019 at 11:38, Lorenzo Pieralisi
> <lorenzo.pieralisi@arm.com> wrote:
> >
> > On Thu, Oct 10, 2019 at 01:39:25PM +0200, Ulf Hansson wrote:
> > > When the WFI state have been selected, the in-parameter idx to
> > > psci_enter_idle_state() is zero. In this case, we must not index the state
> > > array as "state[idx - 1]", as it means accessing data outside the array.
> > > Fix the bug by pre-checking if idx is zero.
> > >
> > > Fixes: 9ffeb6d08c3a ("PSCI: cpuidle: Refactor CPU suspend power_state parameter handling")
> > > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > > ---
> > >  drivers/cpuidle/cpuidle-psci.c | 6 +++---
> > >  1 file changed, 3 insertions(+), 3 deletions(-)
> > >
> > > diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
> > > index f3c1a2396f98..2e91c8d6c211 100644
> > > --- a/drivers/cpuidle/cpuidle-psci.c
> > > +++ b/drivers/cpuidle/cpuidle-psci.c
> > > @@ -27,10 +27,10 @@ static DEFINE_PER_CPU_READ_MOSTLY(u32 *, psci_power_state);
> > >  static int psci_enter_idle_state(struct cpuidle_device *dev,
> > >                               struct cpuidle_driver *drv, int idx)
> > >  {
> > > -     u32 *state = __this_cpu_read(psci_power_state);
> > > +     u32 *states = __this_cpu_read(psci_power_state);
> > > +     u32 state = idx ? states[idx - 1] : 0;
> > >
> > > -     return CPU_PM_CPU_IDLE_ENTER_PARAM(psci_cpu_suspend_enter,
> > > -                                        idx, state[idx - 1]);
> > > +     return CPU_PM_CPU_IDLE_ENTER_PARAM(psci_cpu_suspend_enter, idx, state);
> >
> > Technically we don't dereference that array entry but I agree this
> > is ugly and potentially broken.
> 
> No sure understand the non-deference part.
> 
> If the governor selects WFI, the idx will be 0 - and thus we end up
> using state[-1], doesn't that dereference an invalid address, no?

No because CPU_PM_CPU_IDLE_ENTER_PARAM is a macro, the code it
preprocesses to won't dereference state[idx - 1] if idx == 0.

I agree it is *very* ugly but technically code is not broken.

> > My preference is aligning it with ACPI code and allocate one more
> > entry in the psci_power_state array (useless for wfi, agreed but
> > at least we remove this (-1) handling from the code).
> 
> I can do that, but sounds like a slightly bigger change. Are you fine
> if I do that on top, so we can get this sent as fix for v5.4-rc[n]?

Technically we are not fixing anything; it is not such a big
change, we need to allocate one entry more and update the array
indexing.

Lorenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
