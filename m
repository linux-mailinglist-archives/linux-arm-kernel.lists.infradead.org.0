Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91F74E6046
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 27 Oct 2019 03:32:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LRHSOmtz46a6WMJ9FF7aBK2T/ui6VIQld2TqQbhcPx0=; b=baiXMDKmWjI2NK
	N9/JcVo2rIuJLdY8zqYizwf0I0G7id7XF9i5BLSnIGaJq0xA7yYiTHAlObQs9gVNYWh1z4AvqgBNs
	fBR1h39BcJWiB0EpxmlVPhhYQ11UbHli3kfClM+UsVZve6eahCF+uVzwp7YmAnbjvhJ5sZkAhZrdW
	uesBtfsWaVlon3yXDwb7dQ9ipRZTM3V/Vv29dnhuLaCRscAWIhlHfq3F8v9dk6Oo6UumxqPsfl3NF
	hAUS8JqKfver0HB6atUFcWNE5XE4a1fDMirbrUnXnIbDGIX8EMZhSzG3Xznnk4zj4/BWYFTSskfKk
	fdC66oIYWxDU7fj6OJjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOYMF-0007aV-MA; Sun, 27 Oct 2019 02:32:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOYLy-0007TJ-Fz
 for linux-arm-kernel@lists.infradead.org; Sun, 27 Oct 2019 02:32:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4864E1FB;
 Sat, 26 Oct 2019 19:32:25 -0700 (PDT)
Received: from e107533-lin.cambridge.arm.com (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3417A3F6C4;
 Sat, 26 Oct 2019 19:32:17 -0700 (PDT)
Date: Sun, 27 Oct 2019 02:32:13 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH 11/13] cpuidle: psci: Attach CPU devices to their PM
 domains
Message-ID: <20191027023213.GD18111@e107533-lin.cambridge.arm.com>
References: <20191010113937.15962-1-ulf.hansson@linaro.org>
 <20191010113937.15962-12-ulf.hansson@linaro.org>
 <20191024163515.GD22036@bogus>
 <CAPDyKFq43XrGLDOVZmOeBTLKG0BBvTji6c0Z+cT8uc6PPyp8YA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPDyKFq43XrGLDOVZmOeBTLKG0BBvTji6c0Z+cT8uc6PPyp8YA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_193226_578617_4B6BF404 
X-CRM114-Status: GOOD (  20.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Linux PM <linux-pm@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kevin Hilman <khilman@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 24, 2019 at 06:55:50PM +0200, Ulf Hansson wrote:
> On Thu, 24 Oct 2019 at 18:35, Sudeep Holla <sudeep.holla@arm.com> wrote:
> >
> > On Thu, Oct 10, 2019 at 01:39:35PM +0200, Ulf Hansson wrote:
> > > In order to enable a CPU to be power managed through its PM domain, let's
> > > try to attach it by calling psci_dt_attach_cpu() during the cpuidle
> > > initialization.
> > >
> > > psci_dt_attach_cpu() returns a pointer to the attached struct device, which
> > > later should be used for runtime PM, hence we need to store it somewhere.
> > > Rather than adding yet another per CPU variable, let's create a per CPU
> > > struct to collect the relevant per CPU variables.
> > >
> > > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > > ---
> > >  drivers/cpuidle/cpuidle-psci.c | 23 +++++++++++++++++++----
> > >  1 file changed, 19 insertions(+), 4 deletions(-)
> > >
> > > diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
> > > index a16467daf99d..1510422c7a53 100644
> > > --- a/drivers/cpuidle/cpuidle-psci.c
> > > +++ b/drivers/cpuidle/cpuidle-psci.c
> > > @@ -23,7 +23,12 @@
> > >  #include "cpuidle-psci.h"
> > >  #include "dt_idle_states.h"
> > >
> > > -static DEFINE_PER_CPU_READ_MOSTLY(u32 *, psci_power_state);
> > > +struct psci_cpuidle_data {
> > > +     u32 *psci_states;
> > > +     struct device *dev;
> > > +};
> > > +
> > > +static DEFINE_PER_CPU_READ_MOSTLY(struct psci_cpuidle_data, psci_cpuidle_data);
> > >  static DEFINE_PER_CPU(u32, domain_state);
> > >
> >
> > /me just thinking still: If it make sense to keep psci_states separate
> > and domain_state and only other things needed for RPM/OSI in the
> > structure. I do understand that we modify domain_state and hence
> > we can't use READ_MOSTLY then. Let's see, for now keep it as is, thought
> > I will think out aloud.
> 
> I believe we are striving towards the same goal, which likely means to
> separate the non-OSI path vs OSI path, as much as possible. Simply to
> avoid any unnecessary operation being done in the non-OSI path. Right?
>

Yes

> However, while I was trying to address that, I realized that it would
> probably introduce even more changes to the series. Therefore, it
> thought it may be better to address these kind of changes on top, as
> improvements.
>

If possible better to amend this unless it's too complicated.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
