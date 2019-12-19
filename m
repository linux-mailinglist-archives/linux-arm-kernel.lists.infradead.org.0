Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AE0812661C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 16:49:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DtD4NYV9xyDN6kMYY0/lkqqSQBy6R0KZfnyF7iPdR+g=; b=kQ98Jshczrjy/W
	F/AjzzRn0/FRcM0E4OkUxQg+AvDFQ3Dp1Z8xKNNNJOvtDhie+hzG+8HVyYt3Gvn++fOxTHk2qXW89
	ydPqeRQwt4zUigLFR5jJY/4k3iiKEgQYmxy12aAXQD87mT5uIJq0O9VB/dtVgUbxa99JZPd6cRtde
	QtlUc48egs1zqc7MUAIbT3IVxgQO4TtL8NIN8UaGIOFBJHkOc1WGkw++4nCDDUM3GSq7ynmAR5HKe
	x20XppNovngW3uXiUR61xi+rN7GMjLzHEuuy+XxlrAreQG2Og6nGDuTZlqHydm/iiZyE7xemb4hPK
	r+901DyX2xG9x1BVoLGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihy3c-0000Xh-Jb; Thu, 19 Dec 2019 15:49:44 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihy3A-0000IZ-J1
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 15:49:18 +0000
Received: by mail-vs1-xe43.google.com with SMTP id t12so4027151vso.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 07:49:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MIlvjsCfvOmlWRqcCAgvunomP0l6HJEE+6R+mmb5zvI=;
 b=qVU+p5owBD89IXyp4SeaCkLgA2uno2/z4M+x+sJ9cez3hAfckODxSZkc8dG/x35LTV
 qeUuRYR9b+sowa7ESvh6IIxVB3TJMlaF6GXo1PISp0Rn2RjP6wQONG6Yrfib/NhUKq6x
 1KFqpgSfYB2fnnSDsRcsOGe8QoisLZVYUYWVXI70tm/bUe2TvXDnetE4yyvT/ryuDT/+
 3v8QoZVRvWlJUoU3yBmJoiBhMoWfLlHwLguo7NM2Egqt8ubNHKHCvQQDS3TKTS1Z1KhK
 1g93Tp71O9xAckz+v3lgzWwrCHAB8LVF5aL4EN3o7RFVkyvWyoK9PtVJrGimWHS5meGd
 2bJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MIlvjsCfvOmlWRqcCAgvunomP0l6HJEE+6R+mmb5zvI=;
 b=KcEsplL+Ht2FGmkiaYXa3TeKaivV3iSv1Kpi1xSHuGE3aEi5MKCCRRyMoQVdIIo2lw
 gAmwVUgUT8JHB1ly4W8zeIdSpPWRRlrBlj9u3QXVbJMdLXzWCDYzjJu0nQNCj5APiu1J
 BR4hlAIxtwVAKqNV9TZgNPKF6y3wO2lqrZuYonA3OuMut9IPCVaTWnOqEM6Ol9rAnZV+
 ctSD3aesU5FlFTEi1bIaDDbsxyppSvx5j5s2RQ0aeLcjsAQgmI9KDXCqEunMR9LIzqu8
 o4pNRRJ+fgYXICbqZkFFW9Fby4bctROCCfqy/P9dLn5/4WObWrFmJOHohRK5JB/DpICK
 0DXQ==
X-Gm-Message-State: APjAAAWLYzg5K52BNK+re211em4jALrbit6+wlsXE5XYCb2877v8Z03N
 aWz3EniQgYN+MV+yhpJCyRd1Yw47pwvbsnmxnLr8oSGK
X-Google-Smtp-Source: APXvYqzCqEbI+NKtJQ1BzInOGzQQCfldsdLXyDdQEcF1rJlw+/hvaFTgBJHXAJhAg5pCi0ZHks4z70YDpdY0iacWdbo=
X-Received: by 2002:a05:6102:5d1:: with SMTP id
 v17mr5154086vsf.200.1576770555650; 
 Thu, 19 Dec 2019 07:49:15 -0800 (PST)
MIME-Version: 1.0
References: <20191211154343.29765-1-ulf.hansson@linaro.org>
 <20191211154343.29765-14-ulf.hansson@linaro.org>
 <20191219143427.GF20746@bogus>
In-Reply-To: <20191219143427.GF20746@bogus>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 19 Dec 2019 16:48:39 +0100
Message-ID: <CAPDyKFpPmtXkP6LSNWBbfyTJowjQXF39_4LN5YEcDtW1BzVw-g@mail.gmail.com>
Subject: Re: [PATCH v4 13/14] cpuidle: psci: Add support for PM domains by
 using genpd
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_074916_686268_DDF9C430 
X-CRM114-Status: GOOD (  31.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
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

On Thu, 19 Dec 2019 at 15:34, Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Wed, Dec 11, 2019 at 04:43:42PM +0100, Ulf Hansson wrote:
> > When the hierarchical CPU topology layout is used in DT and the PSCI OSI
> > mode is supported by the PSCI FW, let's initialize a corresponding PM
> > domain topology by using genpd. This enables a CPU and a group of CPUs,
> > when attached to the topology, to be power-managed accordingly.
> >
> > To trigger the attempt to initialize the genpd data structures let's use a
> > subsys_initcall, which should be early enough to allow CPUs, but also other
> > devices to be attached.
> >
> > The initialization consists of parsing the PSCI OF node for the topology
> > and the "domain idle states" DT bindings. In case the idle states are
> > compatible with "domain-idle-state", the initialized genpd becomes
> > responsible of selecting an idle state for the PM domain, via assigning it
> > a genpd governor.
> >
> > Note that, a successful initialization of the genpd data structures, is
> > followed by a call to psci_set_osi_mode(), as to try to enable the OSI mode
> > in the PSCI FW. In case this fails, we fall back into a degraded mode
> > rather than bailing out and returning an error code.
> >
> > Co-developed-by: Lina Iyer <lina.iyer@linaro.org>
> > Signed-off-by: Lina Iyer <lina.iyer@linaro.org>
> > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > ---
> >
> > Changes in v4:
> >       - None.
> >
> > ---
> >  drivers/cpuidle/cpuidle-psci-domain.c | 267 ++++++++++++++++++++++++++
> >  drivers/cpuidle/cpuidle-psci.c        |   4 +-
> >  drivers/cpuidle/cpuidle-psci.h        |   5 +
> >  3 files changed, 274 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/cpuidle/cpuidle-psci-domain.c b/drivers/cpuidle/cpuidle-psci-domain.c
> > index 656ef3d59149..c2f94ba42222 100644
> > --- a/drivers/cpuidle/cpuidle-psci-domain.c
> > +++ b/drivers/cpuidle/cpuidle-psci-domain.c
> > @@ -7,14 +7,281 @@
> >   *
> >   */
> >
> > +#define pr_fmt(fmt) "CPUidle PSCI: " fmt
> > +
> >  #include <linux/cpu.h>
> >  #include <linux/device.h>
> >  #include <linux/kernel.h>
> >  #include <linux/pm_domain.h>
> >  #include <linux/pm_runtime.h>
> > +#include <linux/psci.h>
> > +#include <linux/slab.h>
> > +#include <linux/string.h>
> >
> >  #include "cpuidle-psci.h"
> >
> > +struct psci_pd_provider {
> > +     struct list_head link;
> > +     struct device_node *node;
> > +};
> > +
> > +static LIST_HEAD(psci_pd_providers);
> > +static bool osi_mode_enabled;
> > +
> > +static int psci_pd_power_off(struct generic_pm_domain *pd)
> > +{
> > +     struct genpd_power_state *state = &pd->states[pd->state_idx];
> > +     u32 *pd_state;
> > +
> > +     /* If we have failed to enable OSI mode, then abort power off. */
> > +     if (!osi_mode_enabled)
> > +             return -EBUSY;
> > +
>
> Why is above check needed ? Shouldn't we have disable/remove pd of
> OSI is not enabled ?

Well, failing to enable OSI should in practice not happen, while it
theoretically it could.

My approach to this has been to fall back to use a "degraded mode",
which seems quite common for these kind of situations. The degraded
mode means, we are preventing domain states from being used.

More importantly, it also keeps the code registering the PM domains, a
bit simpler.

>
> > +     if (!state->data)
> > +             return 0;
> > +
> > +     /* OSI mode is enabled, set the corresponding domain state. */
> > +     pd_state = state->data;
> > +     psci_set_domain_state(*pd_state);
> > +
> > +     return 0;
> > +}
> > +
>
> [...]
>
> > +static const struct of_device_id psci_of_match[] __initconst = {
> > +     { .compatible = "arm,psci" },
>
> I think we can drop the above one as it's for v0.1 which didn't support
> OSI.

Yeah, I do that.

>
> > +     { .compatible = "arm,psci-0.2" },
> > +     { .compatible = "arm,psci-1.0" },
> > +     {}
> > +};
> > +
> > +static int __init psci_idle_init_domains(void)
> > +{
> > +     struct device_node *np = of_find_matching_node(NULL, psci_of_match);
> > +     struct device_node *node;
> > +     int ret = 0, pd_count = 0;
> > +
> > +     if (!np)
> > +             return -ENODEV;
> > +
> > +     /* Currently limit the hierarchical topology to be used in OSI mode. */
> > +     if (!psci_has_osi_support())
> > +             goto out;
> > +
> > +     /*
> > +      * Parse child nodes for the "#power-domain-cells" property and
> > +      * initialize a genpd/genpd-of-provider pair when it's found.
> > +      */
> > +     for_each_child_of_node(np, node) {
> > +             if (!of_find_property(node, "#power-domain-cells", NULL))
> > +                     continue;
> > +
> > +             ret = psci_pd_init(node);
> > +             if (ret)
> > +                     goto put_node;
> > +
> > +             pd_count++;
> > +     }
> > +
> > +     /* Bail out if not using the hierarchical CPU topology. */
> > +     if (!pd_count)
> > +             goto out;
> > +
> > +     /* Link genpd masters/subdomains to model the CPU topology. */
> > +     ret = psci_pd_init_topology(np);
> > +     if (ret)
> > +             goto remove_pd;
> > +
> > +     /* Try to enable OSI mode. */
> > +     ret = psci_set_osi_mode();
> > +     if (ret)
> > +             pr_warn("failed to enable OSI mode: %d\n", ret);
>
> Same question as above: shouldn't we disable and goto remove_pd ?

See my answer above. Does it satisfy your concern?

If so, may I add your reviewed-by tag, for the next re-spin when I
have removed one of the compatible strings?

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
