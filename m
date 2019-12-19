Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6143F12661B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 16:49:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Q17eazJaL1gZ3Q+QfCGDyEBVkkEUuJT0KXi5E4PDjc=; b=gfuJpN8lkhkYDq
	pPcxG+aZ29piTgANbFiQQQoJXPdgHFgkbWBSOW8bCQsClWy2CmZ3CBIpd0fQP8sToy8ckiDjiyD4T
	gOTC7GOSv/4smJiJTpxRfnjOTLiE2FtUM1P0krUJ6KKzJyRAesS28g6Xe+WmEngAgG6AJBIb18Skn
	/bLVF54INLOD9BcRScFZYyvUSCTVb98juHGiVGPVrgERAPfljP9jYcf8nhGhYAa9KNp++mjfP5/4Q
	FJnNX4o5A/YvommevgB2A5+c8GKngFaFoUdt6old58m4yTNGEFX4VtLB6JsF6/cu5l3uY2sSyAp/v
	Yncy0T4Txz3QIjwpw+mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihy3Q-0000Fm-EB; Thu, 19 Dec 2019 15:49:32 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihy2t-0008Ti-9h
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 15:49:02 +0000
Received: by mail-vs1-xe41.google.com with SMTP id t12so4026467vso.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 07:48:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1kaCXRwivzzZ0gDYQMxNb5fZvTKN4Drl/BBA8SeSbvk=;
 b=eJqmNR4yFeu1cbLSw2uG6FfugRqV5dKrxt2YHM9/D9gMpcABkEbswYB8eSaWcXntOS
 mbzjrlF4O2WmbzpBXute4ocZBEnBpbzA6iYMkzyKvI+SbBvchcUgGJBf7naGlw0opObr
 Y46WQiGzBy9SAfjvmPCjmgu7s1paeIAIkRgQj28RQUdH1fEnycR6Ld5+bUHwcj/+yRBT
 exdptdE4Lz73b68vBf2XsQ6q5pulrH8ik5cIQ78uzWYC7MxBF+XFn7DZND19tlp2/pXx
 S14ROpwyoKDClO+2CXDOhgR267n7rlVXK8wIkviSg/eYL8mbvcAGMc1ZHbyKQ/FNcKLC
 XbqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1kaCXRwivzzZ0gDYQMxNb5fZvTKN4Drl/BBA8SeSbvk=;
 b=j5ymPKLIKWIK3F58JRaTqR0nqZt7OrURcbJrQXHyWzC+tTO3v9bfA4xXiBDmePIoUo
 fj4Ppy1FDackV9nIUYho3RqAP6ZIrIXC40sNCUCqgaEAAgTJ+hQtYU2TVSojA66zWlQF
 NAMt84CO8HAzWr3IlqZTEJTp26sg/FQtc+CC+r0P3EZNVy4ww7lX+YBp4ijQRZ68L4Yl
 3d7IqEtFSA0dj4+Tlw/pa16RqtxdQA6pco+LOE0u0fKxlxx8c8v7pCpTfajjOwPGCHh3
 4ofv9dO/JiU0d1z/3iK+Yr5jH6ds25gzYaJfLuiNsEHSuRCoBpFVukmyJAWmSn/4D2LU
 0ioQ==
X-Gm-Message-State: APjAAAXigXBKhmf88yW66grN5Oe2BJt1/7Ucg1XiXOqFwYKLOUQ6+RnL
 J9ucba0sdufNGy6q1929FubBK2yVEKpHt8grq/i4gg==
X-Google-Smtp-Source: APXvYqyEHXTOiaWT64UHyDsh1e5xkHNXkp6qXSMXSPXq6knbbWfOcCv0hWw8oxuY1uMAA0t2E6RRJdBwf/IgoNOzarc=
X-Received: by 2002:a67:f499:: with SMTP id o25mr5245791vsn.165.1576770537822; 
 Thu, 19 Dec 2019 07:48:57 -0800 (PST)
MIME-Version: 1.0
References: <20191211154343.29765-1-ulf.hansson@linaro.org>
 <20191211154343.29765-13-ulf.hansson@linaro.org>
 <20191219143340.GE20746@bogus>
In-Reply-To: <20191219143340.GE20746@bogus>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 19 Dec 2019 16:48:21 +0100
Message-ID: <CAPDyKFoayFW_gj5d=7q_YBVSRDEWRiqsKQj85D02EV7B7CWczg@mail.gmail.com>
Subject: Re: [PATCH v4 12/14] cpuidle: psci: Support CPU hotplug for the
 hierarchical model
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_074859_396532_3320F53B 
X-CRM114-Status: GOOD (  20.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Andy Gross <agross@kernel.org>,
 Lina Iyer <ilina@codeaurora.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kevin Hilman <khilman@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 19 Dec 2019 at 15:33, Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Wed, Dec 11, 2019 at 04:43:41PM +0100, Ulf Hansson wrote:
> > When the hierarchical CPU topology is used and when a CPU is put offline,
> > that CPU prevents its PM domain from being powered off, which is because
> > genpd observes the corresponding attached device as being active from a
> > runtime PM point of view. Furthermore, any potential master PM domains are
> > also prevented from being powered off.
> >
> > To address this limitation, let's add add a new CPU hotplug state
> > (CPUHP_AP_CPU_PM_STARTING) and register up/down callbacks for it, which
> > allows us to deal with runtime PM accordingly.
> >
> > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > ---
> >
> > Changes in v4:
> >       - Folded in the patch to be part of the series.
> >       - Rebased on top of earlier changes.
> >
> > ---
> >  drivers/cpuidle/cpuidle-psci.c | 45 +++++++++++++++++++++++++++++++++-
> >  include/linux/cpuhotplug.h     |  1 +
> >  2 files changed, 45 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
> > index 6e7804e697ed..34a89d99bb0f 100644
> > --- a/drivers/cpuidle/cpuidle-psci.c
> > +++ b/drivers/cpuidle/cpuidle-psci.c
> > @@ -8,6 +8,7 @@
> >
> >  #define pr_fmt(fmt) "CPUidle PSCI: " fmt
> >
> > +#include <linux/cpuhotplug.h>
> >  #include <linux/cpuidle.h>
> >  #include <linux/cpumask.h>
> >  #include <linux/cpu_pm.h>
> > @@ -31,6 +32,7 @@ struct psci_cpuidle_data {
> >
> >  static DEFINE_PER_CPU_READ_MOSTLY(struct psci_cpuidle_data, psci_cpuidle_data);
> >  static DEFINE_PER_CPU(u32, domain_state);
> > +static bool psci_cpuidle_use_cpuhp;
> >
>
> [...]
>
> > +
> > +static void psci_idle_init_cpuhp(void)
> > +{
>
> Can this be made __init along with the boolean psci_cpuidle_use_cpuhp ?

Yeah, make sense!

>
> With that,
> Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>

Thanks!

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
