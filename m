Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66BDFE84A9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 10:45:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/o4xX9MvcOSbMZYW+mh2+soX4eRu08sXtZPrDze9c2Q=; b=m2ExTydoVPhglH
	rqLv9esX1Alkb5ri0TO+nYHA1LX4sJfKPS2MGqLi/f5uzL+Si5tpKTX9T2tUk54v4buC7vle9v/LB
	r4AaG+4jExj8xnIifAemJp7FxSGOjnXPnbA9WbpD/Jb6wj+yn/sQsUNL7jloXg4eg8cmBrg8OQoCp
	T5W4uH5DuPElXDbK9FFMdA26G0slTVd5tBmTv0flvsp7rYFsb4O5vTw74Yt1uZi8cPqOLjySF1tTi
	c+y+6Gf1yLjw+/HzpK9eUR1ug8bdA+ttAsfvqH6+N5u4/WXbF91JkUjDilIpDgBgPRhsvlL6d/mV9
	4KTCaF+oiMQ436T1CBTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPO3s-0004oe-BL; Tue, 29 Oct 2019 09:45:12 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPO3V-0004o9-5A
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 09:44:51 +0000
Received: by mail-lj1-x243.google.com with SMTP id a21so14484576ljh.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 02:44:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=DzMq2MqRIWlLfHa8TfPlxgw8jl1ciOvyOzVA0iX+08k=;
 b=phmGA+kRmcr1rDy1VHR45DZxb+M1HKEiHEmC0BzjVcfGUpv6FwpW/XM/pjHBIVfWBw
 TmxlfnkQu4DTAwMyNV2HF/nuVH0K0Q3q2Mho6HDvG1qmIFY+NMBKEwwPD0OkKOovGdAX
 EAwliFdpsTe61O2mUjddNrq/Fnvq4DzDK3mCwVVExcXWuST8YZNxYjGzFFijShyif2o3
 pZyLrc5jh6XMNgvAC4ogAXJYAr/T05p/6grgPAtjWW16hfvVNWd8dQFIHbLraudFOOHH
 uZh13GIpChkfCfL8ff8YaDK3sV1iqMGhIf6r8ge+HBvCU7bh6hMeMUPcPOK+ZRpfcF6y
 PetA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=DzMq2MqRIWlLfHa8TfPlxgw8jl1ciOvyOzVA0iX+08k=;
 b=piJU4nr0TfBxIME2VOPIQyHgkTcnNm/5JWfGw+M+U1zACnMCE7WrDNYLNOEeikpMhH
 ufJUdBJL3jN8dvzGKJYqTsSSFdJ32Cibt0H8uMS8kr+cfAPfqp2WAtPyU1ZD/Lh3+iN5
 VMey6e+8NOScPtLt8EAMSahEcrr5NXnr1FvJnHpqwOK6fohYuSHkN/EGCRiY9IEyfxqE
 BUvecjlwFTzLWDCS9vOdcJyliF5WHyU0fgTImJdIn5uoylTYwOGRIfme7PnssJ+tLBZa
 qkyOY6saW1Q0/fsi2GoRNgAGmYQMOcJrOE2bibs4ELJnYlzY4XXP6giDns+RPR0D5A98
 uyyA==
X-Gm-Message-State: APjAAAUHu0saREh3la5oOyEl0I4wBALpDjVZM6hXWn09VoGoMVSOwSzO
 qIFinGyHKnFc7zFc4MOZailHmw==
X-Google-Smtp-Source: APXvYqy707N4wE+0EQKU22eJJCF5bsPjX97liCtU5EbHVWxOYT/YbdrWSzUn+egOshgMhogTm7UzyQ==
X-Received: by 2002:a2e:8652:: with SMTP id i18mr1944129ljj.86.1572342287032; 
 Tue, 29 Oct 2019 02:44:47 -0700 (PDT)
Received: from centauri (ua-84-219-138-247.bbcust.telenor.se. [84.219.138.247])
 by smtp.gmail.com with ESMTPSA id e8sm10248942ljf.1.2019.10.29.02.44.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 02:44:46 -0700 (PDT)
Date: Tue, 29 Oct 2019 10:44:44 +0100
From: Niklas Cassel <niklas.cassel@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH 10/13] cpuidle: psci: Add a helper to attach a CPU to its
 PM domain
Message-ID: <20191029094444.GA12635@centauri>
References: <20191010113937.15962-1-ulf.hansson@linaro.org>
 <20191010113937.15962-11-ulf.hansson@linaro.org>
 <20191024163117.GB22036@bogus>
 <CAPDyKFo2Fma1_JMSd39bmQ3X1PV4SmQ0AfEuKyX5KLLe83ycmA@mail.gmail.com>
 <20191027023023.GC18111@e107533-lin.cambridge.arm.com>
 <CAPDyKFr1LJ_HP1kcfMh7LE5j7nUT9KzH4vhdCSEE9wg6RfYErQ@mail.gmail.com>
 <20191028074905.GA27884@e107533-lin.cambridge.arm.com>
 <CAPDyKFotv0Fu5jXqhv7tCqYb44HaAnOjWnQS0B3nS04sUmTrUg@mail.gmail.com>
 <20191029053414.GA4481@e107533-lin.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191029053414.GA4481@e107533-lin.cambridge.arm.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_024449_228478_9684F611 
X-CRM114-Status: GOOD (  36.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
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

On Tue, Oct 29, 2019 at 01:34:24PM +0800, Sudeep Holla wrote:
> On Mon, Oct 28, 2019 at 10:45:22AM +0100, Ulf Hansson wrote:
> > + Niklas
> >
> > On Mon, 28 Oct 2019 at 08:49, Sudeep Holla <sudeep.holla@arm.com> wrote:
> > >
> > > On Mon, Oct 28, 2019 at 08:35:55AM +0100, Ulf Hansson wrote:
> > > > On Sun, 27 Oct 2019 at 03:30, Sudeep Holla <sudeep.holla@arm.com> wrote:
> > > > >
> > > > > On Thu, Oct 24, 2019 at 06:47:43PM +0200, Ulf Hansson wrote:
> > > > > > On Thu, 24 Oct 2019 at 18:31, Sudeep Holla <sudeep.holla@arm.com> wrote:
> > > > > > >
> > > > > > > On Thu, Oct 10, 2019 at 01:39:34PM +0200, Ulf Hansson wrote:
> > > > > > > > Introduce a PSCI DT helper function, psci_dt_attach_cpu(), which takes a
> > > > > > > > CPU number as an in-parameter and tries to attach the CPU's struct device
> > > > > > > > to its corresponding PM domain.
> > > > > > > >
> > > > > > > > Let's makes use of dev_pm_domain_attach_by_name(), as it allows us to
> > > > > > > > specify "psci" as the "name" of the PM domain to attach to. Additionally,
> > > > > > > > let's also prepare the attached device to be power managed via runtime PM.
> > > > > > > >
> > > > > > > > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > > > > > > > ---
> > > > > > > >  drivers/cpuidle/cpuidle-psci-domain.c | 21 +++++++++++++++++++++
> > > > > > > >  drivers/cpuidle/cpuidle-psci.h        |  6 ++++++
> > > > > > > >  2 files changed, 27 insertions(+)
> > > > > > > >
> > > > > > > > diff --git a/drivers/cpuidle/cpuidle-psci-domain.c b/drivers/cpuidle/cpuidle-psci-domain.c
> > > > > > > > index 3f5143ccc3e0..7429fd7626a1 100644
> > > > > > > > --- a/drivers/cpuidle/cpuidle-psci-domain.c
> > > > > > > > +++ b/drivers/cpuidle/cpuidle-psci-domain.c
> > > > > > > > @@ -9,9 +9,11 @@
> > > > > > > >
> > > > > > > >  #define pr_fmt(fmt) "CPUidle PSCI: " fmt
> > > > > > > >
> > > > > > > > +#include <linux/cpu.h>
> > > > > > > >  #include <linux/device.h>
> > > > > > > >  #include <linux/kernel.h>
> > > > > > > >  #include <linux/pm_domain.h>
> > > > > > > > +#include <linux/pm_runtime.h>
> > > > > > > >  #include <linux/psci.h>
> > > > > > > >  #include <linux/slab.h>
> > > > > > > >  #include <linux/string.h>
> > > > > > > > @@ -279,3 +281,22 @@ static int __init psci_idle_init_domains(void)
> > > > > > > >       return ret;
> > > > > > > >  }
> > > > > > > >  subsys_initcall(psci_idle_init_domains);
> > > > > > > > +
> > > > > > > > +struct device *psci_dt_attach_cpu(int cpu)
> > > > > > > > +{
> > > > > > > > +     struct device *dev;
> > > > > > > > +
> > > > > > > > +     /* Currently limit the hierarchical topology to be used in OSI mode. */
> > > > > > > > +     if (!psci_has_osi_support())
> > > > > > > > +             return NULL;
> > > > > > > > +
> > > > > > > > +     dev = dev_pm_domain_attach_by_name(get_cpu_device(cpu), "psci");
> > > > > > >
> > > > > > > This clarifies the need for the fixed name. But why not just go by index 0
> > > > > > > as the consumer of these psci power-domains will have only one power domain
> > > > > > > entry. Why do we need this name compulsory ?
> > > > > >
> > > > > > The idea is to be future proof. If I recall correctly, the CPU node on
> > > > > > some QCOM SoCs may also have "CPR" PM domain specified, thus
> > > > > > "multiple" power-domains could be specified.
> > > > > >
> > > > >
> > > > > I am sure we don't want to mx-n-match any power domain provider with
> > > > > psci. And also I expect in these above mentioned cases, there won't be any
> > > > > psci power domains.
> > > > >
> > > > > > In any case, using "psci" doesn't really hurt, right?
> > > > > >
> > > > >
> > > > > Doesn't but I don't see need for one as only one should exist, as mentioned
> > > > > above we don't want mix-n-match with psci ever.
> > > >
> > > > Not sure I get your point, sorry.
> > > >
> > > > The CPU could very well be attached to more than one power-domain. Of
> > > > course not multiple "PSCI power-domains". One could be an PSCI power
> > > > domain and another one could be the QCOM CPR (Core power reduction)
> > > > power domain.
> > > >
> > >
> > > And who controls QCOM CPR ? If it's OSPM, this model is broken.
> > > I mean OSPM can vote, but the control *has* to be in PSCI firmware to
> > > change any CPU power state.
> > >
> > > If it's firmware controlled, then there's no need to explicitly specify
> > > both to OSPM.
> >
> > This is about OPP and CPUFreq, so it has nothing to do with PSCI.
> >
> > >
> > > > Have a look at these binding, there are already upstream, perhaps that
> > > > clarifies this?
> > > > Documentation/devicetree/bindings/opp/qcom-nvmem-cpufreq.txt
> > > >
> > >
> > > OK, I will have a look.
> >
> > Great.
> >
> > I have looped in Niklas Casell, he should be able to answer any more
> > detailed questions in regards to QCOM CPR, if that is needed.
> >
> 
> So had a look at the DT bindings and standalone it looks fine.
> But when it's mixed like the way you describe: yikes!
> 
> Why does a power(oh wait it's actually performance domain!) is combined
> with a device whose actual power is controlled by only by PSCI/firmware
> is associated along with another power(again actally performance)
> domain.
> 
> This whole representation of performance domain as power domain in the
> bindings is a *mess*. If Linux kernel chose to implement it as part
> of genpd, that's fine. But we should have had a separate binding for
> that.
> 
> > In any case, we are discussing whether we should require a
> > power-domain-names set to "psci" for the CPU node - and I don't see
> > how that could hurt. Right?
> >
> 
> Honestly I don't like this, but we don't have any choice I think.
> So yes, but you need to update the binding. Hope new platform move
> all these performance domain control part into firmware and have single
> control from kernel unlike the present generation which OPP through
> clock or cpufreq and the voltage/performance comtrol via genpd.

FWIW, in newer generation Qualcomm SoCs like SDM845,
the voltage/performance control is done in firmware,
by the OSM (drivers/cpufreq/qcom-cpufreq-hw.c).


Kind regards,
Niklas

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
