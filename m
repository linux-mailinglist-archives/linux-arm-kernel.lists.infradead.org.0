Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2BA2E6D84
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 08:49:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mS9/8BmaQ4UO0BYYl6/oVeeUAEP3gQqD72227B46CyQ=; b=huFHaBsG5ET/YO
	rTbVLPufafQRgoxDfoRg3qwoM0j/kq8hQp5InZMe+RXMlbhri1DXWhwgjT+xMyaGNEWw9s1A2HVfc
	0awHXqWSyjHQHqUSVEl/6eB8sWETcd5tKWOjezY+EACif6M8vR3aVxb0bECpQKpL8PHTalEqGoEWu
	sV09xVK3FWY9mMcSX7gzIourFQ2adCoyD8Ql8wCW35rXbVx1/v3EaH+5JDrqdK9/7t1P/7DutOVnd
	PG/8ZApmBOFvC/3xi2qHHjxfUEutxVyZqFSV9tk4MRpKwaeJeYZwH9ehFJldZ4NrIms9fD1Bmyt6S
	HXoa06sqF3xSgUuqVipw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOzmN-0002Fd-Hl; Mon, 28 Oct 2019 07:49:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOzmD-0002F6-AI
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 07:49:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EA5241FB;
 Mon, 28 Oct 2019 00:49:19 -0700 (PDT)
Received: from e107533-lin.cambridge.arm.com (e107533-lin.shanghai.arm.com
 [10.169.107.24])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3D2F03F71E;
 Mon, 28 Oct 2019 00:49:15 -0700 (PDT)
Date: Mon, 28 Oct 2019 15:49:05 +0800
From: Sudeep Holla <sudeep.holla@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH 10/13] cpuidle: psci: Add a helper to attach a CPU to its
 PM domain
Message-ID: <20191028074905.GA27884@e107533-lin.cambridge.arm.com>
References: <20191010113937.15962-1-ulf.hansson@linaro.org>
 <20191010113937.15962-11-ulf.hansson@linaro.org>
 <20191024163117.GB22036@bogus>
 <CAPDyKFo2Fma1_JMSd39bmQ3X1PV4SmQ0AfEuKyX5KLLe83ycmA@mail.gmail.com>
 <20191027023023.GC18111@e107533-lin.cambridge.arm.com>
 <CAPDyKFr1LJ_HP1kcfMh7LE5j7nUT9KzH4vhdCSEE9wg6RfYErQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPDyKFr1LJ_HP1kcfMh7LE5j7nUT9KzH4vhdCSEE9wg6RfYErQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_004921_446492_28322C0E 
X-CRM114-Status: GOOD (  25.25  )
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

On Mon, Oct 28, 2019 at 08:35:55AM +0100, Ulf Hansson wrote:
> On Sun, 27 Oct 2019 at 03:30, Sudeep Holla <sudeep.holla@arm.com> wrote:
> >
> > On Thu, Oct 24, 2019 at 06:47:43PM +0200, Ulf Hansson wrote:
> > > On Thu, 24 Oct 2019 at 18:31, Sudeep Holla <sudeep.holla@arm.com> wrote:
> > > >
> > > > On Thu, Oct 10, 2019 at 01:39:34PM +0200, Ulf Hansson wrote:
> > > > > Introduce a PSCI DT helper function, psci_dt_attach_cpu(), which takes a
> > > > > CPU number as an in-parameter and tries to attach the CPU's struct device
> > > > > to its corresponding PM domain.
> > > > >
> > > > > Let's makes use of dev_pm_domain_attach_by_name(), as it allows us to
> > > > > specify "psci" as the "name" of the PM domain to attach to. Additionally,
> > > > > let's also prepare the attached device to be power managed via runtime PM.
> > > > >
> > > > > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > > > > ---
> > > > >  drivers/cpuidle/cpuidle-psci-domain.c | 21 +++++++++++++++++++++
> > > > >  drivers/cpuidle/cpuidle-psci.h        |  6 ++++++
> > > > >  2 files changed, 27 insertions(+)
> > > > >
> > > > > diff --git a/drivers/cpuidle/cpuidle-psci-domain.c b/drivers/cpuidle/cpuidle-psci-domain.c
> > > > > index 3f5143ccc3e0..7429fd7626a1 100644
> > > > > --- a/drivers/cpuidle/cpuidle-psci-domain.c
> > > > > +++ b/drivers/cpuidle/cpuidle-psci-domain.c
> > > > > @@ -9,9 +9,11 @@
> > > > >
> > > > >  #define pr_fmt(fmt) "CPUidle PSCI: " fmt
> > > > >
> > > > > +#include <linux/cpu.h>
> > > > >  #include <linux/device.h>
> > > > >  #include <linux/kernel.h>
> > > > >  #include <linux/pm_domain.h>
> > > > > +#include <linux/pm_runtime.h>
> > > > >  #include <linux/psci.h>
> > > > >  #include <linux/slab.h>
> > > > >  #include <linux/string.h>
> > > > > @@ -279,3 +281,22 @@ static int __init psci_idle_init_domains(void)
> > > > >       return ret;
> > > > >  }
> > > > >  subsys_initcall(psci_idle_init_domains);
> > > > > +
> > > > > +struct device *psci_dt_attach_cpu(int cpu)
> > > > > +{
> > > > > +     struct device *dev;
> > > > > +
> > > > > +     /* Currently limit the hierarchical topology to be used in OSI mode. */
> > > > > +     if (!psci_has_osi_support())
> > > > > +             return NULL;
> > > > > +
> > > > > +     dev = dev_pm_domain_attach_by_name(get_cpu_device(cpu), "psci");
> > > >
> > > > This clarifies the need for the fixed name. But why not just go by index 0
> > > > as the consumer of these psci power-domains will have only one power domain
> > > > entry. Why do we need this name compulsory ?
> > >
> > > The idea is to be future proof. If I recall correctly, the CPU node on
> > > some QCOM SoCs may also have "CPR" PM domain specified, thus
> > > "multiple" power-domains could be specified.
> > >
> >
> > I am sure we don't want to mx-n-match any power domain provider with
> > psci. And also I expect in these above mentioned cases, there won't be any
> > psci power domains.
> >
> > > In any case, using "psci" doesn't really hurt, right?
> > >
> >
> > Doesn't but I don't see need for one as only one should exist, as mentioned
> > above we don't want mix-n-match with psci ever.
>
> Not sure I get your point, sorry.
>
> The CPU could very well be attached to more than one power-domain. Of
> course not multiple "PSCI power-domains". One could be an PSCI power
> domain and another one could be the QCOM CPR (Core power reduction)
> power domain.
>

And who controls QCOM CPR ? If it's OSPM, this model is broken.
I mean OSPM can vote, but the control *has* to be in PSCI firmware to
change any CPU power state.

If it's firmware controlled, then there's no need to explicitly specify
both to OSPM.

> Have a look at these binding, there are already upstream, perhaps that
> clarifies this?
> Documentation/devicetree/bindings/opp/qcom-nvmem-cpufreq.txt
>

OK, I will have a look.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
