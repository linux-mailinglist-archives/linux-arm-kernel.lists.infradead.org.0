Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFE311005EB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 13:51:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XYX42B9J45BmnZTsFgq4SAu1kJRtXRulpbIW1vL5o84=; b=ua+t1nkb7j6nrD
	Mv0fNXrw+Kpw9blXRLqGa2sdUD8kfWz2c36SEB3+/7rdTepTcvy8vDG+fYzcjK1MgJPxbYx/YvKZ+
	o2BGroDpgxhL33dtHuL4Iokcjzo78KObzskYbeerRlLCFHVAY87bS6cYmAv+A1HvuB1mYH/Kl4wv0
	L3SLT1x/HOy2pwXPLCQGnvibRCw8tMAgvcQRpeDVRSsuVpxVxhm77tDXHmyaMRVVbJ+9TUc78pU2W
	v/hwJsEaZdddeXYiGkYS76TMFBZoMa0x9BH6VmXd4s/p6MbMKusQgIDsxnKinO+BSK9FOybZPtYlK
	sRt+cUa2qG5n/z1nreTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWgUj-00023Z-Ep; Mon, 18 Nov 2019 12:51:05 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWgUb-00022a-6H
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 12:50:58 +0000
Received: by mail-ua1-x944.google.com with SMTP id s14so5184455uad.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 04:50:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4CJs0fnp4q3JTEKHH9CQ9OKvCdAUdjRx5u4JJzw81b0=;
 b=jm/CGt7tMSAzLYhkixWLkxEXB1f5LJyGoCoOoFxlnO1gso8Id9iLeGv2aW4LW5znZq
 g6D7bQd8XKKrGt6fHk4Mm7CoUf8yYM84TI2iPBGcS7sUvriRa441sKSufEAI0F7m7E8C
 eOam7M7+p4Lcwf4AlUnszEmEghhMJ91gL+MXQxzPpe8Nsir1Hopl7O6iXlOBMMbv15C2
 O0mkepdXFpseZGMHApBOd8ZRVmgfXYKeqf+9jK5l039kqix7NysENToIMw9mgNefwmp/
 fJN6n5Ze7UzzgzbMZ0rNaAt3ktEj9ZUb6uvFCMIYPbP/Ofvkm4EvLIVVE89VgaXVR0AC
 sZGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4CJs0fnp4q3JTEKHH9CQ9OKvCdAUdjRx5u4JJzw81b0=;
 b=s+cvmpU7c2ZzpfYtqWHJNGGK9gFEaU6kfAPehWvZn8sLASegVdMIUPEhgbxWJNt7Hh
 FbZtkXf74f/zUBXlhKFqD0xtTAdy4uK1z/v0aetMwvRgK/sDdjrHCnAEvZTdwgUuSwMr
 Xr/TZuMGDhpLrJaWCvsB7kuLHoJEF59aDAHmzrq/R9BmMu5h6uBzf41zymFH5Z/QTnQJ
 xCRQU65z/lkXjoNMtyvT5uJMe556VOsUxjD0w5JTcMxmnJ1r8u8PeT/E0xKT0D86VQNr
 kHctvV13BtLWdB/7BvOGgpPeRBinJJYi22kWL4JgkF+4sqfZF1vmfCijzsMGUGM6dJ0G
 y+Vw==
X-Gm-Message-State: APjAAAV3hiwugcyWfU6aHOjGEkSHjfjNHzdQ9OPBMAlHi8+y72LWz7iI
 eZYoIUv+nch3umIxnSbGM6aWRcgzsiDaqZFYXzMXvQ==
X-Google-Smtp-Source: APXvYqzllSdd6OH2VE+FgRV8tVggasb5KGapL/QKSUOqEAXbQPVSSHwo16Z2VRlyvLFg4PqcAu+xADeZo9azF6gmR7M=
X-Received: by 2002:ab0:61cc:: with SMTP id m12mr16585279uan.129.1574081455188; 
 Mon, 18 Nov 2019 04:50:55 -0800 (PST)
MIME-Version: 1.0
References: <20191029164438.17012-1-ulf.hansson@linaro.org>
 <20191029164438.17012-10-ulf.hansson@linaro.org>
 <20191115171555.GD27170@bogus>
In-Reply-To: <20191115171555.GD27170@bogus>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 18 Nov 2019 13:50:19 +0100
Message-ID: <CAPDyKFr0jmcF9EAnhDER49kwb3oBGwFJy2iQArmqAqdB5Xz0BA@mail.gmail.com>
Subject: Re: [PATCH v2 09/13] cpuidle: psci: Attach CPU devices to their PM
 domains
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_045057_248244_751F2D60 
X-CRM114-Status: GOOD (  21.38  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Fri, 15 Nov 2019 at 18:16, Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Tue, Oct 29, 2019 at 05:44:34PM +0100, Ulf Hansson wrote:
> > In order to enable a CPU to be power managed through its PM domain, let's
> > try to attach it by calling psci_dt_attach_cpu() during the cpuidle
> > initialization.
> >
> > psci_dt_attach_cpu() returns a pointer to the attached struct device, which
> > later should be used for runtime PM, hence we need to store it somewhere.
> > Rather than adding yet another per CPU variable, let's create a per CPU
> > struct to collect the relevant per CPU variables.
> >
> > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > ---
> >
> > Changes in v2:
> >       - Rebased.
> >
> > ---
> >  drivers/cpuidle/cpuidle-psci.c | 24 ++++++++++++++++++++----
> >  1 file changed, 20 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
> > index 830995b8a56f..167249d0493f 100644
> > --- a/drivers/cpuidle/cpuidle-psci.c
> > +++ b/drivers/cpuidle/cpuidle-psci.c
> > @@ -20,14 +20,20 @@
> >
> >  #include <asm/cpuidle.h>
> >
> > +#include "cpuidle-psci.h"
> >  #include "dt_idle_states.h"
> >
> > -static DEFINE_PER_CPU_READ_MOSTLY(u32 *, psci_power_state);
> > +struct psci_cpuidle_data {
> > +     u32 *psci_states;
> > +     struct device *dev;
> > +};
> > +
> > +static DEFINE_PER_CPU_READ_MOSTLY(struct psci_cpuidle_data, psci_cpuidle_data);
> >
> >  static int psci_enter_idle_state(struct cpuidle_device *dev,
> >                               struct cpuidle_driver *drv, int idx)
> >  {
> > -     u32 *state = __this_cpu_read(psci_power_state);
> > +     u32 *state = __this_cpu_read(psci_cpuidle_data.psci_states);
> >
> >       return CPU_PM_CPU_IDLE_ENTER_PARAM(psci_cpu_suspend_enter,
> >                                          idx, state[idx]);
> > @@ -78,7 +84,9 @@ static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node,
> >  {
> >       int i, ret = 0;
> >       u32 *psci_states;
> > +     struct device *dev;
> >       struct device_node *state_node;
> > +     struct psci_cpuidle_data *data = per_cpu_ptr(&psci_cpuidle_data, cpu);
> >
> >       state_count++; /* Add WFI state too */
> >       psci_states = kcalloc(state_count, sizeof(*psci_states), GFP_KERNEL);
> > @@ -104,8 +112,16 @@ static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node,
> >               goto free_mem;
> >       }
> >
> > -     /* Idle states parsed correctly, initialize per-cpu pointer */
> > -     per_cpu(psci_power_state, cpu) = psci_states;
> > +     dev = psci_dt_attach_cpu(cpu);
>
> Why do we need to call psci_dt_attach_cpu for even PC mode and ...
>
> > +     if (IS_ERR(dev)) {
> > +             ret = PTR_ERR(dev);
> > +             goto free_mem;
> > +     }
> > +
> > +     data->dev = dev;
> > +
>
> ... assign NULL above. I don't see the need for one. Default it will be
> NULL anyway and we can call psci_dt_attach_cpu only if psci_has_osi_support()

Are you sure it's NULL as default? It's a pointer, within a static
initiated struct.

"static DEFINE_PER_CPU_READ_MOSTLY(struct psci_cpuidle_data,
psci_cpuidle_data);"

>
> I will look through further patches to see if it make sense or not.

So, the check for psci_has_osi_support() is done in
psci_dt_attach_cpu(), which returns "NULL" if OSI isn't supported.

The idea with this approach is also to keep the common code in
psci_dt_cpu_init_idle() (or the entire cpuidle-psci.c actually), as
transparent as possible, to whether PSCI OSI-mode is supported or not.

Of course, if you insist, I am open to change in any way you prefer.

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
