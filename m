Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26756E38D0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 18:48:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5TNSHgIzDjxZSsHzggBiQXocebWtZ3ASOcNfEvQoaqo=; b=t8i/AwpR2lSfSf
	FfqeHyUQxdReWM1KaKl2QrPFUgM1elFczHgowviR9eF3jVhHlm7GPRcDvB4F4qWbskHQdk4v4RWqA
	/xc4ZmMP68v3ju4uzABfFojjkg6xue0B0RL9nKtR7Y3+re+RqPFkto8q5a2cVPPBBnJZObHa4/Zt7
	ofiv1wnuTx3V4Pa2Wijb4D7Zv8DQq5z7MF6kZGNhtc/aKjNL4dLQvSCl1lHPP/1tuJl/QxpiNG10U
	CzsveSRx9kn4Evs7xtYENsnbzPH4EjegpcvRmS75aDfTJgdubn+ivM3BERKbEpsSPS7GgBCR8DCeQ
	UkKAdGJFKZAGGTphSWlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNgHn-00042w-Cv; Thu, 24 Oct 2019 16:48:31 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNgHc-00042S-Fz
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 16:48:22 +0000
Received: by mail-ua1-x944.google.com with SMTP id j5so7362635uak.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 09:48:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=z4Vvz4A4TSFl81zQLuVmP6KhRZpu2qJ/W4bi+0a71ME=;
 b=zppJNNtN+F05YFlhGDSJfbwNtesfGhVK0aYpmAwDE6hLl9xdOGlhX7f6PQCpqlvrnz
 8LwdcrJKfHHYhlEtiiUaleP6i94XwuI4bXkTxWVeReqfiFqMOvJl08O/5DZbF+cg7YLA
 Lud75vYhsbBZJtMAnpwqdp0QhcS1gCZTJd68whc+qJ06CuevlbGYCxnW0Z0SspM5aGNV
 IQD6GMYalS1U+imo+FSHi47837uauQkqMr3FM9fbTsZSlDCm6LcZ3vU7l4arKzK4hbwf
 4o3qAYpKuEhg4Jj/hGwGg6mj/30eZzPZe5fn8KnHwbx4w6Q3gwUa2orzq3v2IbtKDDHj
 5LBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=z4Vvz4A4TSFl81zQLuVmP6KhRZpu2qJ/W4bi+0a71ME=;
 b=YchGmr1Y2qlcLQeGcUa4i6oIV0cC054ywMCQ7D9y5O3dVFbwv4wRSk2ShpgiRJnexQ
 0OigSqsfhWf+U6vdF28krnd1GOKAZKxfB+yj9mPdN2UQV4e5j7vOli/SaO2CFJxQ+fG5
 +icuhQpLd1J+4Q84cf7Ualox0whaJE6t1usnsAXZjCfxjWYES7Yns1fvppwZf5MyapsX
 x4wbxtHD2rsa+rrmCAPW8bq5QlFd9rXbVdJ/Un4T/PYJ9fLONZ4xYfLXN8006bAMdWKm
 DkDk3/FOt62y6/jArUK2XJI5+55ghPEVJQZk46Cf+8HVwLFBmcQxBQnjeUrgm44TVhr3
 Kg4g==
X-Gm-Message-State: APjAAAXkc3H3M3tiLrF/a18EZUXJ4phGWZzuPqKgWEYfI2+pFEas05pK
 Id0H78FTQCxMSCsJV+gGVkgA4UnemtcraPm38aHrzA==
X-Google-Smtp-Source: APXvYqwd0vnOqB8MMiy1SJz3YktZErKuqpHA+NezQYiNfpLZoIsrkA7Os4037evpJM9MYpBSH0VE7UApzHWsQObxyNU=
X-Received: by 2002:ab0:331a:: with SMTP id r26mr9644172uao.104.1571935699420; 
 Thu, 24 Oct 2019 09:48:19 -0700 (PDT)
MIME-Version: 1.0
References: <20191010113937.15962-1-ulf.hansson@linaro.org>
 <20191010113937.15962-11-ulf.hansson@linaro.org>
 <20191024163117.GB22036@bogus>
In-Reply-To: <20191024163117.GB22036@bogus>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 24 Oct 2019 18:47:43 +0200
Message-ID: <CAPDyKFo2Fma1_JMSd39bmQ3X1PV4SmQ0AfEuKyX5KLLe83ycmA@mail.gmail.com>
Subject: Re: [PATCH 10/13] cpuidle: psci: Add a helper to attach a CPU to its
 PM domain
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_094820_540424_2FAFD452 
X-CRM114-Status: GOOD (  19.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Thu, 24 Oct 2019 at 18:31, Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Thu, Oct 10, 2019 at 01:39:34PM +0200, Ulf Hansson wrote:
> > Introduce a PSCI DT helper function, psci_dt_attach_cpu(), which takes a
> > CPU number as an in-parameter and tries to attach the CPU's struct device
> > to its corresponding PM domain.
> >
> > Let's makes use of dev_pm_domain_attach_by_name(), as it allows us to
> > specify "psci" as the "name" of the PM domain to attach to. Additionally,
> > let's also prepare the attached device to be power managed via runtime PM.
> >
> > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > ---
> >  drivers/cpuidle/cpuidle-psci-domain.c | 21 +++++++++++++++++++++
> >  drivers/cpuidle/cpuidle-psci.h        |  6 ++++++
> >  2 files changed, 27 insertions(+)
> >
> > diff --git a/drivers/cpuidle/cpuidle-psci-domain.c b/drivers/cpuidle/cpuidle-psci-domain.c
> > index 3f5143ccc3e0..7429fd7626a1 100644
> > --- a/drivers/cpuidle/cpuidle-psci-domain.c
> > +++ b/drivers/cpuidle/cpuidle-psci-domain.c
> > @@ -9,9 +9,11 @@
> >
> >  #define pr_fmt(fmt) "CPUidle PSCI: " fmt
> >
> > +#include <linux/cpu.h>
> >  #include <linux/device.h>
> >  #include <linux/kernel.h>
> >  #include <linux/pm_domain.h>
> > +#include <linux/pm_runtime.h>
> >  #include <linux/psci.h>
> >  #include <linux/slab.h>
> >  #include <linux/string.h>
> > @@ -279,3 +281,22 @@ static int __init psci_idle_init_domains(void)
> >       return ret;
> >  }
> >  subsys_initcall(psci_idle_init_domains);
> > +
> > +struct device *psci_dt_attach_cpu(int cpu)
> > +{
> > +     struct device *dev;
> > +
> > +     /* Currently limit the hierarchical topology to be used in OSI mode. */
> > +     if (!psci_has_osi_support())
> > +             return NULL;
> > +
> > +     dev = dev_pm_domain_attach_by_name(get_cpu_device(cpu), "psci");
>
> This clarifies the need for the fixed name. But why not just go by index 0
> as the consumer of these psci power-domains will have only one power domain
> entry. Why do we need this name compulsory ?

The idea is to be future proof. If I recall correctly, the CPU node on
some QCOM SoCs may also have "CPR" PM domain specified, thus
"multiple" power-domains could be specified.

In any case, using "psci" doesn't really hurt, right?

> Further, it's specified as
> optional in the generic binding, do we make it "required" for this psci
> idle states binding anywhere that I missed ?

Good point! Unless you tell me differently, I will update the DT doc
to clarify this is "required".

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
