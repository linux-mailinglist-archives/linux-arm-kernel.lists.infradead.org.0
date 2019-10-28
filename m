Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB37DE6D4F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 08:37:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ow4a/uQHq7QGZpgd1QoK4pYGP9rYTSMD5TmvkyNIgcY=; b=XMYFJRCEjDZx1g
	oKchRFWppAVrdOTfYMiJlwRYAUz7Vh8AKGoanQcrNVpTSO2qCNshuCssWCUD9i+/v0bndUakXZmKN
	bKNWaXO6OHA4abeVbsNammyLqQibxfNnVnqkAgFiVGBWx/HSO8s6OJkqZJuqUoaWmLFYGSi9TCW4z
	q3OxEAlkdy/aO/XWLzeEXBAUKyRHMifX4R9nOSdYb55oGhBQlOyUPAEpQzeR3so/jNXhiKBgVNLDj
	XUSc6ZS7iBxHYWtc6kzOO9i/+z1FoL+IFq6rpu1gUMnFQTzuaWLGVngVTAGqZEylpCSIbERcgZpN9
	VyCmCD7v+Db5nNfSquPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOza5-0005xT-Id; Mon, 28 Oct 2019 07:36:49 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOzZs-0005oV-KS
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 07:36:38 +0000
Received: by mail-vs1-xe43.google.com with SMTP id o21so1502997vsq.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 00:36:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gSevzdeX2IyP/Mt0uDEIUvXixgu3G2I8LpM+mdQ2wXA=;
 b=tYCmpD0YYPT8+Lb0VuIpsuPjUIA0Nc0OVx5ptG5Qicr9Z3GSyat/U3BGt9hOU50coh
 gmQzuViBQVklILiaRWJtHTBpRphaY/Ewjdqjzl2jCpW0S4xugOGjCaW0dqXG/orAyGpm
 wAIkbpDkO3veDAwHvktjdlPNsPjRcsrP1qnH8p4vf6g7W9x3QBiuSURUX4TgTOKVuCxy
 KQ1y1sMzF+EVJ1+0igH3qHv7heQptk/Pw1CUwMjrUTKNqp0ChYc7wHGaTGHOlOEvNEjP
 UbyYz7lMLnbT3D6u9ZfwS6yXXx/aax3li1PSjLJStUA3DC3jz8Wrrah2kgGjn1b+8P5p
 vAEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gSevzdeX2IyP/Mt0uDEIUvXixgu3G2I8LpM+mdQ2wXA=;
 b=MLbK43+2R3YBcW6e/rq2lKZVhb7C4XKJSnXGFwJtThjWCSF6VMqLcJ77+28CEF98iE
 EIsFH7+yc6ojnAN84loQA8rdykJVUGBB5uI3uVG2TZljZ7CIMf3zLVnGA7QV+et24DID
 4wSRrmDtcY0BkBdLL/2xpNJkBi82YbES1+8EqWzXJ240OgDQACSc6VyKtp0Xk28gLyGo
 B/YsrxL6kCtzz8zpC+cqIj2YFdyepUo+VGTyK15gsduUlRd4uDHiEnwaK2H6Ggk5edeV
 lMfaogiMINV/VAG8q25SwhYaiP8HRG+cUTVYgXwPhdW7vQ0K2RFp3g9WWc2pvAkcvAL6
 wqhg==
X-Gm-Message-State: APjAAAXCDvlUeOiD0OpIwfxPY+UDBwO0FGpjXVuAlIpaD5wZbS9p8f1h
 2Pr0fBpQWgvVWV2JpGG2UdkSvcibPQWddHK+66SV1Q==
X-Google-Smtp-Source: APXvYqyiCnipDJKelK+/Ew9PqgA3uPhVtvsxHeLsiippdhvtgIGWzZrGHUAgfICu1Tcc+H0Ynu03qyqsGtT+IodFhaA=
X-Received: by 2002:a67:7ac5:: with SMTP id v188mr8120918vsc.191.1572248190943; 
 Mon, 28 Oct 2019 00:36:30 -0700 (PDT)
MIME-Version: 1.0
References: <20191010113937.15962-1-ulf.hansson@linaro.org>
 <20191010113937.15962-11-ulf.hansson@linaro.org>
 <20191024163117.GB22036@bogus>
 <CAPDyKFo2Fma1_JMSd39bmQ3X1PV4SmQ0AfEuKyX5KLLe83ycmA@mail.gmail.com>
 <20191027023023.GC18111@e107533-lin.cambridge.arm.com>
In-Reply-To: <20191027023023.GC18111@e107533-lin.cambridge.arm.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 28 Oct 2019 08:35:55 +0100
Message-ID: <CAPDyKFr1LJ_HP1kcfMh7LE5j7nUT9KzH4vhdCSEE9wg6RfYErQ@mail.gmail.com>
Subject: Re: [PATCH 10/13] cpuidle: psci: Add a helper to attach a CPU to its
 PM domain
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_003636_676010_D86D594C 
X-CRM114-Status: GOOD (  25.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Sun, 27 Oct 2019 at 03:30, Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Thu, Oct 24, 2019 at 06:47:43PM +0200, Ulf Hansson wrote:
> > On Thu, 24 Oct 2019 at 18:31, Sudeep Holla <sudeep.holla@arm.com> wrote:
> > >
> > > On Thu, Oct 10, 2019 at 01:39:34PM +0200, Ulf Hansson wrote:
> > > > Introduce a PSCI DT helper function, psci_dt_attach_cpu(), which takes a
> > > > CPU number as an in-parameter and tries to attach the CPU's struct device
> > > > to its corresponding PM domain.
> > > >
> > > > Let's makes use of dev_pm_domain_attach_by_name(), as it allows us to
> > > > specify "psci" as the "name" of the PM domain to attach to. Additionally,
> > > > let's also prepare the attached device to be power managed via runtime PM.
> > > >
> > > > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > > > ---
> > > >  drivers/cpuidle/cpuidle-psci-domain.c | 21 +++++++++++++++++++++
> > > >  drivers/cpuidle/cpuidle-psci.h        |  6 ++++++
> > > >  2 files changed, 27 insertions(+)
> > > >
> > > > diff --git a/drivers/cpuidle/cpuidle-psci-domain.c b/drivers/cpuidle/cpuidle-psci-domain.c
> > > > index 3f5143ccc3e0..7429fd7626a1 100644
> > > > --- a/drivers/cpuidle/cpuidle-psci-domain.c
> > > > +++ b/drivers/cpuidle/cpuidle-psci-domain.c
> > > > @@ -9,9 +9,11 @@
> > > >
> > > >  #define pr_fmt(fmt) "CPUidle PSCI: " fmt
> > > >
> > > > +#include <linux/cpu.h>
> > > >  #include <linux/device.h>
> > > >  #include <linux/kernel.h>
> > > >  #include <linux/pm_domain.h>
> > > > +#include <linux/pm_runtime.h>
> > > >  #include <linux/psci.h>
> > > >  #include <linux/slab.h>
> > > >  #include <linux/string.h>
> > > > @@ -279,3 +281,22 @@ static int __init psci_idle_init_domains(void)
> > > >       return ret;
> > > >  }
> > > >  subsys_initcall(psci_idle_init_domains);
> > > > +
> > > > +struct device *psci_dt_attach_cpu(int cpu)
> > > > +{
> > > > +     struct device *dev;
> > > > +
> > > > +     /* Currently limit the hierarchical topology to be used in OSI mode. */
> > > > +     if (!psci_has_osi_support())
> > > > +             return NULL;
> > > > +
> > > > +     dev = dev_pm_domain_attach_by_name(get_cpu_device(cpu), "psci");
> > >
> > > This clarifies the need for the fixed name. But why not just go by index 0
> > > as the consumer of these psci power-domains will have only one power domain
> > > entry. Why do we need this name compulsory ?
> >
> > The idea is to be future proof. If I recall correctly, the CPU node on
> > some QCOM SoCs may also have "CPR" PM domain specified, thus
> > "multiple" power-domains could be specified.
> >
>
> I am sure we don't want to mx-n-match any power domain provider with
> psci. And also I expect in these above mentioned cases, there won't be any
> psci power domains.
>
> > In any case, using "psci" doesn't really hurt, right?
> >
>
> Doesn't but I don't see need for one as only one should exist, as mentioned
> above we don't want mix-n-match with psci ever.

Not sure I get your point, sorry.

The CPU could very well be attached to more than one power-domain. Of
course not multiple "PSCI power-domains". One could be an PSCI power
domain and another one could be the QCOM CPR (Core power reduction)
power domain.

Have a look at these binding, there are already upstream, perhaps that
clarifies this?
Documentation/devicetree/bindings/opp/qcom-nvmem-cpufreq.txt

>
> > > Further, it's specified as
> > > optional in the generic binding, do we make it "required" for this psci
> > > idle states binding anywhere that I missed ?
> >
> > Good point! Unless you tell me differently, I will update the DT doc
> > to clarify this is "required".
> >
>
> No but why is my question ? We don't have to. If firmware/DT wants to
> specify the name, sure. But it must remain optional IMO.

According the QCOM CPR case, we need a way to distinguish what power
domain we should attach the CPU to. If we don't use power-domain-names
to do that, what else should we use?

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
