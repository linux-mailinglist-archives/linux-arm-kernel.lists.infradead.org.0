Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFD7AE6F52
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 10:46:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BlJirsuFUGJi59ssINz3KGCTdzHSeofD0MIOleTBBi8=; b=e+BOYlc2uPrl9j
	7m1BLetHYwJYCPcPsMMNMcHTzWGnkOdAVJIgOrOu3qETdS8CAmY/PAD7EYfIBk/9bi2A9PgylgMOA
	1g+Yr+aziknszpq1qLe7nRv/OPGd8hYzxyRTztayAtW6ejmfbcG01QJnDmGOqyVEugXoSJrbTRM6a
	AhflvAtweR1Hc1nHXSgdL7zSegO+H92xJzXLmCXgSpOp0ichTEPQYPBK0WiRaD450Rz5E7BfY6XJf
	Cm5qD6EsSQlhCOSfCbgSJoSXDHrw5yXihXeEMGA/UXrkDPyr5nQkZnsg5kS5OBTgDDdy6bfFtwKAa
	3ZfJkfJwzmorXMzPS/EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP1bQ-00015y-4I; Mon, 28 Oct 2019 09:46:20 +0000
Received: from mail-vk1-xa42.google.com ([2607:f8b0:4864:20::a42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP1b5-00010q-TK
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 09:46:01 +0000
Received: by mail-vk1-xa42.google.com with SMTP id d126so1870314vkb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 02:45:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=btYix3IdrJNB5gEyT9IUZnBEGRsFJ06rPcd/IaHvtYA=;
 b=WOvmwPn8meRrSqFpG/lsDCcNXCS+791X6249lEVxP6HA04HyZzmPuXZMV8W6QmC/Cv
 jkBfKE5Xvv4z0WuqN+VUvHwvFx0H5obp4mQIZw08mS3TH/ri3qiH4mW1W2hDxlbAkkdk
 rXms9xV4ZB8naUDYOhIPWyE/BXbP1msVJgtCUR6N+0rHsSp6V+FoFt6YmwR3a8blC65l
 kFABc+C7pqUVwgv16+TovMMESOTpmyO8J9DdBx1LwFY4umZDRxsE4rbSuts0zi6y7jLe
 uXknk4lrhsAP4w0JZj6AhAjlVNbyxxU8FsiNGgbbwBmvjbOx8/n2rHSwZyFzv7tYpuE7
 QO9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=btYix3IdrJNB5gEyT9IUZnBEGRsFJ06rPcd/IaHvtYA=;
 b=W1hfQkH+LoMp95g73XEgXx8sE8FvlHwWD/SMmlkPl/Ocj9K+DtlBdbhW3v9BgoiNP6
 Hg/Go1StDDPA3nUT3KBwq2YlZ7U8K7LGGl92AFUaXJ5Uy2wKgFbgFdXxxtpF0xlf5zPT
 DoM3lOVvg/lUtQ3HDUTZoF6JAFNPvhu4FweqLyfJJmpj7SUnsM62yjINHotQ6FHvIDWs
 u2S4Nuemg62jcyOR9EA9GZB8FmJ+Hg6ON+RFVUK51cq6Pnfhm6CV3RzAnTZ3CQV7Dzqq
 30wrJUz3owFMgSYiqyuiqsrLBf8cmKWEDjzqLzA0BpCHAEv0V2a3WkV6IFYzc99mmWD0
 XZZg==
X-Gm-Message-State: APjAAAXKBQpHgRfNZJXUp5BQzKIoANSA6elHhBGzzYVPF+beUJ4Tx0Cx
 jyJJDbbZJEsggCmlBTbZsS4Rn3kCCnjdzhgHsdDtfw==
X-Google-Smtp-Source: APXvYqxxDoBsOggXvi/NfltsouZmSzBhSgFw0BY23NWbbL5r1xNf9xelh+nv0Uy3xLFn3th6v699PljsXwPNDD76yL0=
X-Received: by 2002:a1f:b202:: with SMTP id b2mr8145258vkf.59.1572255958316;
 Mon, 28 Oct 2019 02:45:58 -0700 (PDT)
MIME-Version: 1.0
References: <20191010113937.15962-1-ulf.hansson@linaro.org>
 <20191010113937.15962-11-ulf.hansson@linaro.org>
 <20191024163117.GB22036@bogus>
 <CAPDyKFo2Fma1_JMSd39bmQ3X1PV4SmQ0AfEuKyX5KLLe83ycmA@mail.gmail.com>
 <20191027023023.GC18111@e107533-lin.cambridge.arm.com>
 <CAPDyKFr1LJ_HP1kcfMh7LE5j7nUT9KzH4vhdCSEE9wg6RfYErQ@mail.gmail.com>
 <20191028074905.GA27884@e107533-lin.cambridge.arm.com>
In-Reply-To: <20191028074905.GA27884@e107533-lin.cambridge.arm.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 28 Oct 2019 10:45:22 +0100
Message-ID: <CAPDyKFotv0Fu5jXqhv7tCqYb44HaAnOjWnQS0B3nS04sUmTrUg@mail.gmail.com>
Subject: Re: [PATCH 10/13] cpuidle: psci: Add a helper to attach a CPU to its
 PM domain
To: Sudeep Holla <sudeep.holla@arm.com>,
 Niklas Cassel <niklas.cassel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_024559_971560_1A8DF75B 
X-CRM114-Status: GOOD (  28.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

+ Niklas

On Mon, 28 Oct 2019 at 08:49, Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Mon, Oct 28, 2019 at 08:35:55AM +0100, Ulf Hansson wrote:
> > On Sun, 27 Oct 2019 at 03:30, Sudeep Holla <sudeep.holla@arm.com> wrote:
> > >
> > > On Thu, Oct 24, 2019 at 06:47:43PM +0200, Ulf Hansson wrote:
> > > > On Thu, 24 Oct 2019 at 18:31, Sudeep Holla <sudeep.holla@arm.com> wrote:
> > > > >
> > > > > On Thu, Oct 10, 2019 at 01:39:34PM +0200, Ulf Hansson wrote:
> > > > > > Introduce a PSCI DT helper function, psci_dt_attach_cpu(), which takes a
> > > > > > CPU number as an in-parameter and tries to attach the CPU's struct device
> > > > > > to its corresponding PM domain.
> > > > > >
> > > > > > Let's makes use of dev_pm_domain_attach_by_name(), as it allows us to
> > > > > > specify "psci" as the "name" of the PM domain to attach to. Additionally,
> > > > > > let's also prepare the attached device to be power managed via runtime PM.
> > > > > >
> > > > > > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > > > > > ---
> > > > > >  drivers/cpuidle/cpuidle-psci-domain.c | 21 +++++++++++++++++++++
> > > > > >  drivers/cpuidle/cpuidle-psci.h        |  6 ++++++
> > > > > >  2 files changed, 27 insertions(+)
> > > > > >
> > > > > > diff --git a/drivers/cpuidle/cpuidle-psci-domain.c b/drivers/cpuidle/cpuidle-psci-domain.c
> > > > > > index 3f5143ccc3e0..7429fd7626a1 100644
> > > > > > --- a/drivers/cpuidle/cpuidle-psci-domain.c
> > > > > > +++ b/drivers/cpuidle/cpuidle-psci-domain.c
> > > > > > @@ -9,9 +9,11 @@
> > > > > >
> > > > > >  #define pr_fmt(fmt) "CPUidle PSCI: " fmt
> > > > > >
> > > > > > +#include <linux/cpu.h>
> > > > > >  #include <linux/device.h>
> > > > > >  #include <linux/kernel.h>
> > > > > >  #include <linux/pm_domain.h>
> > > > > > +#include <linux/pm_runtime.h>
> > > > > >  #include <linux/psci.h>
> > > > > >  #include <linux/slab.h>
> > > > > >  #include <linux/string.h>
> > > > > > @@ -279,3 +281,22 @@ static int __init psci_idle_init_domains(void)
> > > > > >       return ret;
> > > > > >  }
> > > > > >  subsys_initcall(psci_idle_init_domains);
> > > > > > +
> > > > > > +struct device *psci_dt_attach_cpu(int cpu)
> > > > > > +{
> > > > > > +     struct device *dev;
> > > > > > +
> > > > > > +     /* Currently limit the hierarchical topology to be used in OSI mode. */
> > > > > > +     if (!psci_has_osi_support())
> > > > > > +             return NULL;
> > > > > > +
> > > > > > +     dev = dev_pm_domain_attach_by_name(get_cpu_device(cpu), "psci");
> > > > >
> > > > > This clarifies the need for the fixed name. But why not just go by index 0
> > > > > as the consumer of these psci power-domains will have only one power domain
> > > > > entry. Why do we need this name compulsory ?
> > > >
> > > > The idea is to be future proof. If I recall correctly, the CPU node on
> > > > some QCOM SoCs may also have "CPR" PM domain specified, thus
> > > > "multiple" power-domains could be specified.
> > > >
> > >
> > > I am sure we don't want to mx-n-match any power domain provider with
> > > psci. And also I expect in these above mentioned cases, there won't be any
> > > psci power domains.
> > >
> > > > In any case, using "psci" doesn't really hurt, right?
> > > >
> > >
> > > Doesn't but I don't see need for one as only one should exist, as mentioned
> > > above we don't want mix-n-match with psci ever.
> >
> > Not sure I get your point, sorry.
> >
> > The CPU could very well be attached to more than one power-domain. Of
> > course not multiple "PSCI power-domains". One could be an PSCI power
> > domain and another one could be the QCOM CPR (Core power reduction)
> > power domain.
> >
>
> And who controls QCOM CPR ? If it's OSPM, this model is broken.
> I mean OSPM can vote, but the control *has* to be in PSCI firmware to
> change any CPU power state.
>
> If it's firmware controlled, then there's no need to explicitly specify
> both to OSPM.

This is about OPP and CPUFreq, so it has nothing to do with PSCI.

>
> > Have a look at these binding, there are already upstream, perhaps that
> > clarifies this?
> > Documentation/devicetree/bindings/opp/qcom-nvmem-cpufreq.txt
> >
>
> OK, I will have a look.

Great.

I have looped in Niklas Casell, he should be able to answer any more
detailed questions in regards to QCOM CPR, if that is needed.

In any case, we are discussing whether we should require a
power-domain-names set to "psci" for the CPU node - and I don't see
how that could hurt. Right?

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
