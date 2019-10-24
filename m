Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F69FE391A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 19:01:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CjaeCDZeh2Xuv/jrD7MoEGICuXiGwvQKaFVEQ/r08+E=; b=d1s7QTZLIVRGdg
	Z0ipif8GnK/ux+kaOJMSHLRwhCWT24QiQWvD6zw0sUHtPqPBKQoOu3oMtnihKMkMZKA8ZdcmOdZHQ
	R5SHEhGVDARv0uOYiThPD9yL8mlTzKoAW+sLYhBugXYAJgdTcHrvPB8e2+nd0tm/6F5yWfLwUqVHl
	QGISQVGIk/3CohufYupyodoCtNc/uKBMZY+L2ByzclpeISiAVl7pRq/d6dil8yVqeQvQ06qemVDR9
	PKyyNCw+cTYcb/FCnrb7ljWQjyi/5fJThYeSaeCpLPWhUYlMwXWek+MRvl4ZaKmGkntlvMCN9EZvB
	7UhhsQ07FTKo2VBHlQEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNgUJ-0002IN-Mq; Thu, 24 Oct 2019 17:01:27 +0000
Received: from mail-vk1-xa44.google.com ([2607:f8b0:4864:20::a44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNgU9-0002Ho-HG
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 17:01:19 +0000
Received: by mail-vk1-xa44.google.com with SMTP id o2so474338vkc.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 10:01:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RBmI5ndT/rdjwDOXYP/KFIiToDnQR4EfL3VmkBr9f70=;
 b=Wcd9I4prVPt4pYBLuTiHtwoyObyHOOGRcl8I/PVau5xjSltxf1UCTiShSh7x7Ut7Fb
 aN+J0Mj4B6gkiMTpaPFrpQXBN+YVE4Oz3TQQsKZcTSa2ScfGr5tNBqBwCR1QZiQ3Iw+e
 S1fRUgWXU7iQNp8v1lYtOXzEoLH4eOy6XsJzmERHxti4Gha0JzMyw1UaVj5iMnk43kVF
 hBWL4IFKXA3/8uo6PyRfJ9ElUvyRpqv7I8v6kAdJTss1w2XXm6yvGmlndEgMjgM6v/1T
 5G00/ReE+jhWY68vblefAAtmIyJ2qsmIco8KyuK8Rw7jdwDRYOQmoadjXoBt8EfsAUSo
 iJFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RBmI5ndT/rdjwDOXYP/KFIiToDnQR4EfL3VmkBr9f70=;
 b=Yb3kMs+uXddNaKZCAavF5WFube0QKJD6IGOCc99EN+CeKws7xswRDkaebGT0xCeXvu
 ar0lrhVk/G2C4v0ujKgN238R/Vp8KlKjgPtAALOwyRZPz1LYVsOq36YQeDK7NHliorkV
 i+rQ0TKmBYW22WMZ2Q7kqow5pi0bpPPZnRhtjeHgjvlZ2KHIcA4vDRT2DS0c9CpzCdbp
 8Yhq2dQbsec4hSv51SkLXki3gOUeY4u+mjDuAJCsClzq3C5k17yf64B6dpnMojq3u1XE
 guYzTYgJnKqYcDu1PLt25eGvx07fCaY0AQb0oEGEqdkzeIdfRZjtwXRnHMg/p6H7pG43
 iHRw==
X-Gm-Message-State: APjAAAWNIMdyhwXQ/C11o/Cyn7rdy3Scgp1V2izn3SzqDV5LrHKduKEX
 rZ1uHywrtb6BNYehotmthLqXkyZNex01ItxDDgMzAQ==
X-Google-Smtp-Source: APXvYqx+/WMjFqRZHQ6kYItgeBnM23srHiuZcapnsvjGB1wwOdbVBEo6wgMMItlmMC3G3Y4sUiCAGzrvEtO6ZLyJml4=
X-Received: by 2002:a1f:7381:: with SMTP id o123mr9587850vkc.53.1571936474341; 
 Thu, 24 Oct 2019 10:01:14 -0700 (PDT)
MIME-Version: 1.0
References: <20191010113937.15962-1-ulf.hansson@linaro.org>
 <20191010113937.15962-13-ulf.hansson@linaro.org>
 <20191024163257.GC22036@bogus>
In-Reply-To: <20191024163257.GC22036@bogus>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 24 Oct 2019 19:00:38 +0200
Message-ID: <CAPDyKFpwrfHj-az5x5dW92VAxi887FgWW6GKhfPv_kuj14TDjQ@mail.gmail.com>
Subject: Re: [PATCH 12/13] cpuidle: psci: Manage runtime PM in the idle path
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_100117_574267_EA6F6E6B 
X-CRM114-Status: GOOD (  20.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a44 listed in]
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

On Thu, 24 Oct 2019 at 18:33, Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Thu, Oct 10, 2019 at 01:39:36PM +0200, Ulf Hansson wrote:
> > In case we have succeeded to attach a CPU to its PM domain, let's deploy
> > runtime PM support for the corresponding attached device, to allow the CPU
> > to be powered-managed accordingly.
> >
> > To set the triggering point for when runtime PM reference counting should
> > be done, let's store the index of deepest idle state for the CPU in the per
> > CPU struct. Then use this index to compare the selected idle state index
> > when entering idle, as to understand whether runtime PM reference counting
> > is needed or not.
> >
> > Note that, from the hierarchical point view, there may be good reasons to
> > do runtime PM reference counting even on shallower idle states, but at this
> > point this isn't supported, mainly due to limitations set by the generic PM
> > domain.
> >
> > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > ---
> >  drivers/cpuidle/cpuidle-psci.c | 21 +++++++++++++++++++--
> >  1 file changed, 19 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
> > index 1510422c7a53..0919b40c1a85 100644
> > --- a/drivers/cpuidle/cpuidle-psci.c
> > +++ b/drivers/cpuidle/cpuidle-psci.c
> > @@ -16,6 +16,7 @@
> >  #include <linux/of.h>
> >  #include <linux/of_device.h>
> >  #include <linux/psci.h>
> > +#include <linux/pm_runtime.h>
> >  #include <linux/slab.h>
> >
> >  #include <asm/cpuidle.h>
> > @@ -25,6 +26,7 @@
> >
> >  struct psci_cpuidle_data {
> >       u32 *psci_states;
> > +     u32 rpm_state_id;
> >       struct device *dev;
> >  };
> >
> > @@ -50,14 +52,28 @@ static int psci_enter_idle_state(struct cpuidle_device *dev,
> >                               struct cpuidle_driver *drv, int idx)
> >  {
> >       int ret;
> > -     u32 *states = __this_cpu_read(psci_cpuidle_data.psci_states);
> > -     u32 state = psci_get_domain_state();
> > +     struct psci_cpuidle_data *data = this_cpu_ptr(&psci_cpuidle_data);
> > +     u32 *states = data->psci_states;
> > +     struct device *pd_dev = data->dev;
> > +     bool runtime_pm = (pd_dev && data->rpm_state_id == idx);
> > +     u32 state;
>
> Wonder if we can have separate psci_enter_idle_state for OSI mode so
> that all these runtime extra check can be reduced ? It will also make
> sure there's no additional latency for PC mode because of OSI.

Good idea, that's the plan. See previous answer.

Perhaps if I add a patch on top, implementing your suggestion, would
you be happy with that?

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
