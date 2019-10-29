Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10AB7E7FC5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 06:35:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=spQ4x3BkiU6cdF3ArvOAqw4yY9wT6kUpr3BnPVCuQJY=; b=eK/lDdHGdw6k3L
	xQppEPVZMHNeCLC3B4Tn5AVXB9jl+ekz7gn/2U19PeLuWtUEFTIoq2IKaxwQLAlRLjXRZ7zpsaOAs
	EDeOS6RkyJ48p2CAdI5L0l0dIBIwl0AHO9MSEykoCj76uJCt/QTkzD5jsjcHXdIUlQoWc2a1Og5Lg
	KZkETBjsnX/ESK5cLpKfudaqXjop4yQb/4YeL7gtPVL330CmbklFR+WzxAtA6UJY80FJa3+Dk2jCC
	H7sY9LTIDfaH4yketrI9VhBGdmcB6V/b4Ukgxr92glWIRteVc1KTRgmTjI2y9hdkjho71DLSs7SWv
	qhMBgG+/xnRKK2QzCF8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPK9j-0001P9-Fy; Tue, 29 Oct 2019 05:34:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPK9U-0001OV-ME
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 05:34:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 061971F1;
 Mon, 28 Oct 2019 22:34:41 -0700 (PDT)
Received: from e107533-lin.cambridge.arm.com (e107533-lin.shanghai.arm.com
 [10.169.109.76])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3FE2F3F71F;
 Mon, 28 Oct 2019 22:37:26 -0700 (PDT)
Date: Tue, 29 Oct 2019 13:34:24 +0800
From: Sudeep Holla <sudeep.holla@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH 10/13] cpuidle: psci: Add a helper to attach a CPU to its
 PM domain
Message-ID: <20191029053414.GA4481@e107533-lin.cambridge.arm.com>
References: <20191010113937.15962-1-ulf.hansson@linaro.org>
 <20191010113937.15962-11-ulf.hansson@linaro.org>
 <20191024163117.GB22036@bogus>
 <CAPDyKFo2Fma1_JMSd39bmQ3X1PV4SmQ0AfEuKyX5KLLe83ycmA@mail.gmail.com>
 <20191027023023.GC18111@e107533-lin.cambridge.arm.com>
 <CAPDyKFr1LJ_HP1kcfMh7LE5j7nUT9KzH4vhdCSEE9wg6RfYErQ@mail.gmail.com>
 <20191028074905.GA27884@e107533-lin.cambridge.arm.com>
 <CAPDyKFotv0Fu5jXqhv7tCqYb44HaAnOjWnQS0B3nS04sUmTrUg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPDyKFotv0Fu5jXqhv7tCqYb44HaAnOjWnQS0B3nS04sUmTrUg@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_223444_820367_7F9EADCD 
X-CRM114-Status: GOOD (  34.09  )
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
 Sudeep Holla <sudeep.holla@arm.com>, Niklas Cassel <niklas.cassel@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 28, 2019 at 10:45:22AM +0100, Ulf Hansson wrote:
> + Niklas
>
> On Mon, 28 Oct 2019 at 08:49, Sudeep Holla <sudeep.holla@arm.com> wrote:
> >
> > On Mon, Oct 28, 2019 at 08:35:55AM +0100, Ulf Hansson wrote:
> > > On Sun, 27 Oct 2019 at 03:30, Sudeep Holla <sudeep.holla@arm.com> wrote:
> > > >
> > > > On Thu, Oct 24, 2019 at 06:47:43PM +0200, Ulf Hansson wrote:
> > > > > On Thu, 24 Oct 2019 at 18:31, Sudeep Holla <sudeep.holla@arm.com> wrote:
> > > > > >
> > > > > > On Thu, Oct 10, 2019 at 01:39:34PM +0200, Ulf Hansson wrote:
> > > > > > > Introduce a PSCI DT helper function, psci_dt_attach_cpu(), which takes a
> > > > > > > CPU number as an in-parameter and tries to attach the CPU's struct device
> > > > > > > to its corresponding PM domain.
> > > > > > >
> > > > > > > Let's makes use of dev_pm_domain_attach_by_name(), as it allows us to
> > > > > > > specify "psci" as the "name" of the PM domain to attach to. Additionally,
> > > > > > > let's also prepare the attached device to be power managed via runtime PM.
> > > > > > >
> > > > > > > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > > > > > > ---
> > > > > > >  drivers/cpuidle/cpuidle-psci-domain.c | 21 +++++++++++++++++++++
> > > > > > >  drivers/cpuidle/cpuidle-psci.h        |  6 ++++++
> > > > > > >  2 files changed, 27 insertions(+)
> > > > > > >
> > > > > > > diff --git a/drivers/cpuidle/cpuidle-psci-domain.c b/drivers/cpuidle/cpuidle-psci-domain.c
> > > > > > > index 3f5143ccc3e0..7429fd7626a1 100644
> > > > > > > --- a/drivers/cpuidle/cpuidle-psci-domain.c
> > > > > > > +++ b/drivers/cpuidle/cpuidle-psci-domain.c
> > > > > > > @@ -9,9 +9,11 @@
> > > > > > >
> > > > > > >  #define pr_fmt(fmt) "CPUidle PSCI: " fmt
> > > > > > >
> > > > > > > +#include <linux/cpu.h>
> > > > > > >  #include <linux/device.h>
> > > > > > >  #include <linux/kernel.h>
> > > > > > >  #include <linux/pm_domain.h>
> > > > > > > +#include <linux/pm_runtime.h>
> > > > > > >  #include <linux/psci.h>
> > > > > > >  #include <linux/slab.h>
> > > > > > >  #include <linux/string.h>
> > > > > > > @@ -279,3 +281,22 @@ static int __init psci_idle_init_domains(void)
> > > > > > >       return ret;
> > > > > > >  }
> > > > > > >  subsys_initcall(psci_idle_init_domains);
> > > > > > > +
> > > > > > > +struct device *psci_dt_attach_cpu(int cpu)
> > > > > > > +{
> > > > > > > +     struct device *dev;
> > > > > > > +
> > > > > > > +     /* Currently limit the hierarchical topology to be used in OSI mode. */
> > > > > > > +     if (!psci_has_osi_support())
> > > > > > > +             return NULL;
> > > > > > > +
> > > > > > > +     dev = dev_pm_domain_attach_by_name(get_cpu_device(cpu), "psci");
> > > > > >
> > > > > > This clarifies the need for the fixed name. But why not just go by index 0
> > > > > > as the consumer of these psci power-domains will have only one power domain
> > > > > > entry. Why do we need this name compulsory ?
> > > > >
> > > > > The idea is to be future proof. If I recall correctly, the CPU node on
> > > > > some QCOM SoCs may also have "CPR" PM domain specified, thus
> > > > > "multiple" power-domains could be specified.
> > > > >
> > > >
> > > > I am sure we don't want to mx-n-match any power domain provider with
> > > > psci. And also I expect in these above mentioned cases, there won't be any
> > > > psci power domains.
> > > >
> > > > > In any case, using "psci" doesn't really hurt, right?
> > > > >
> > > >
> > > > Doesn't but I don't see need for one as only one should exist, as mentioned
> > > > above we don't want mix-n-match with psci ever.
> > >
> > > Not sure I get your point, sorry.
> > >
> > > The CPU could very well be attached to more than one power-domain. Of
> > > course not multiple "PSCI power-domains". One could be an PSCI power
> > > domain and another one could be the QCOM CPR (Core power reduction)
> > > power domain.
> > >
> >
> > And who controls QCOM CPR ? If it's OSPM, this model is broken.
> > I mean OSPM can vote, but the control *has* to be in PSCI firmware to
> > change any CPU power state.
> >
> > If it's firmware controlled, then there's no need to explicitly specify
> > both to OSPM.
>
> This is about OPP and CPUFreq, so it has nothing to do with PSCI.
>
> >
> > > Have a look at these binding, there are already upstream, perhaps that
> > > clarifies this?
> > > Documentation/devicetree/bindings/opp/qcom-nvmem-cpufreq.txt
> > >
> >
> > OK, I will have a look.
>
> Great.
>
> I have looped in Niklas Casell, he should be able to answer any more
> detailed questions in regards to QCOM CPR, if that is needed.
>

So had a look at the DT bindings and standalone it looks fine.
But when it's mixed like the way you describe: yikes!

Why does a power(oh wait it's actually performance domain!) is combined
with a device whose actual power is controlled by only by PSCI/firmware
is associated along with another power(again actally performance)
domain.

This whole representation of performance domain as power domain in the
bindings is a *mess*. If Linux kernel chose to implement it as part
of genpd, that's fine. But we should have had a separate binding for
that.

> In any case, we are discussing whether we should require a
> power-domain-names set to "psci" for the CPU node - and I don't see
> how that could hurt. Right?
>

Honestly I don't like this, but we don't have any choice I think.
So yes, but you need to update the binding. Hope new platform move
all these performance domain control part into firmware and have single
control from kernel unlike the present generation which OPP through
clock or cpufreq and the voltage/performance comtrol via genpd.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
