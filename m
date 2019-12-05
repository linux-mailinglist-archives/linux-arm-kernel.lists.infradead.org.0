Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94C5311480F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 21:26:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vEblCO/h+N6WgjwpiVnXHz4UGBruc/ojUJ7+vN2tiok=; b=TQNFJrrSnvLanI
	e269NS+wa7kdVLU6R2HLiZ93x+NVXyUCgyE4Qilo9/ntQGkvNLSqR6xCc2v3pymINl1f97/fb/jdT
	EtBkczrJPd0pxGvlNGqmXVJ3j28kthH2ZmzdcTasAxgJ8jYGndVGS7sXJAxD9EsQA4VMP7UkXCyyq
	hqpU1mtEidQSFzD+GQbh69hGj+O+4Gqp3S9B8UqptZJ8fG7To79VL0lYFmbIueK8Tm1vkqf0zEO5K
	yyy5RSB+RdDpHz7uwp17XkGrJ0M9zhZ4nRd3r7AZkKRE7D8W1IxUbmIoQ7kQuvhjN/JkdEPycTAub
	h0IjTsuD7QY2zu6inU8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icxhv-0001da-Gb; Thu, 05 Dec 2019 20:26:39 +0000
Received: from mail-vk1-xa43.google.com ([2607:f8b0:4864:20::a43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icxho-0001cy-Mk
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 20:26:34 +0000
Received: by mail-vk1-xa43.google.com with SMTP id i78so1581300vke.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Dec 2019 12:26:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PRZIeGTgLYe32xwj6wCkSy8WULcrgIUyS3clF5He5As=;
 b=Vv6YHYn/g7rA9ELgKQoYQBL4QdGjWvSx07OcIA+s9uJL79lPxzqHKScJ91kLi7GiAE
 GXHu3NHrNsWuSxMm9shl63nmOcnQvcD4lZUYki4NMrdMbd38NJ1Hd4PrUqRxiFDuNM4N
 uSujBoWplByotggU8Dzw/msWAkT+G02TE0YzmQdhqODbvLzKMQG3cCUT8hWM4hCtJ8N2
 9j1EUphxgvJkCDh6nwicSDpSbCmZGOWKOU+2nTLV92i9wY3JFDrwJ8IHz3BrFr6/RXjo
 OzPJd2Bdh7PNC7/wSbEi9b5GB5Odlo9aZDFwjDn70JelWkP3cMeEg4A0DSxQJfZrO7bx
 cCJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PRZIeGTgLYe32xwj6wCkSy8WULcrgIUyS3clF5He5As=;
 b=MyhCDjchC7j1vVWejxOc8oyPzJgd1tUGoXnaVfXL9RBIbV+AOLHQnODqQ6PiPmlmOs
 eit/4GPjby2hrrNSLO0x0GNjXh0QwyDN72ztRqwvLs45W/IjEDCsYd3KsgFLGcVBMhfx
 NULkBQza9oYbv65R1GAeBLr+cezLpSmD+Bp0MF6xEPdoTiP1WwEE4g6mEzR+ZIH+5yCg
 ygRoiIKUE1WjRIB/Xcn4IcBgDopOgCBOKQvMdQ11ymsuCjEzBCtWJ+GOdgLU3/ICPcJa
 gx+UCmnFGnMF93TUBnBUBivXZFvvTSZe/MhcbrVz1AYJ8dTOsHLY898IvyJYTWp1Apgs
 sngg==
X-Gm-Message-State: APjAAAVWDrXn9X/YRl6eBZSDH5hcLt9jmPwdv02czNLY13RsOAYgqGzp
 dw3NRcW1U2IuxSHCBmSxbYXFfgDeS8+3xItaj47DLQ==
X-Google-Smtp-Source: APXvYqwJJ8Ov6kfOALtgEnyiA5wFf5YLHSlajlzw+cIFNSq6BfMBdVmzkt4dpZD618trXduh3PKpSjDTLxUI2kReD0M=
X-Received: by 2002:a1f:2f04:: with SMTP id v4mr8247656vkv.101.1575577591049; 
 Thu, 05 Dec 2019 12:26:31 -0800 (PST)
MIME-Version: 1.0
References: <20191127102914.18729-1-ulf.hansson@linaro.org>
 <20191127102914.18729-11-ulf.hansson@linaro.org>
 <20191205183544.GB1516@e121166-lin.cambridge.arm.com>
In-Reply-To: <20191205183544.GB1516@e121166-lin.cambridge.arm.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 5 Dec 2019 21:25:54 +0100
Message-ID: <CAPDyKFra-C_EKrcec6Yys2P10bB+KBtVAKNtVFgqDvV=tzbDRQ@mail.gmail.com>
Subject: Re: [PATCH v3 10/13] cpuidle: psci: Prepare to use OS initiated
 suspend mode via PM domains
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_122632_949403_C20823CA 
X-CRM114-Status: GOOD (  21.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Linux PM <linux-pm@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Andy Gross <agross@kernel.org>,
 Lina Iyer <ilina@codeaurora.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kevin Hilman <khilman@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Lina Iyer <lina.iyer@linaro.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 5 Dec 2019 at 19:35, Lorenzo Pieralisi
<lorenzo.pieralisi@arm.com> wrote:
>
> On Wed, Nov 27, 2019 at 11:29:11AM +0100, Ulf Hansson wrote:
>
> [...]
>
> > -static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node,
> > +static int __init psci_dt_cpu_init_idle(struct cpuidle_driver *drv,
> > +                                     struct device_node *cpu_node,
> >                                       unsigned int state_count, int cpu)
> >  {
> >       int i, ret = 0;
> > @@ -118,6 +152,11 @@ static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node,
> >               goto free_mem;
> >       }
> >
> > +     /* Manage the deepest state via a dedicated enter-function. */
> > +     if (dev)
> > +             drv->states[state_count - 1].enter =
> > +                     psci_enter_domain_idle_state;
>
>
> It is unfortunate to make this arbitrary choice, it would be best
> if you could detect which states are "domain" states aka are governed
> by multiple cpus.

The domain states are managed and selected by the genpd providers, via
using runtime PM reference counting. Please have a closer look at the
code in cpuidle-psci-domain.c and in the generic PM domain, that
should give you the needed details.

I am overriding the enter callback for the *deepest* known idle state
of the CPU, which is according to what you requested [1].

So, unless I am missing your point, I think the above code does
exactly what you want, no?

In regards to the "arbitrary choice" of what cpuidle state to use,
there are more details about why that is, in the changelog.

>
> This inizialization though does not belong in here, it is done at driver
> level, it should not be done in this per-cpu path. IIUC the logic the
> enter pointer should only be overridden if and only if all cpus managed
> by the driver have a corresponding device associated.

I think you have overlooked the fact that there are one cpuidle driver
registered per CPU. The above doesn't make sense to me, sorry.

>
> To be frank I would even move the psci_has_osi_support() check from
> psci_dt_attach_cpu() to this path and prevent calling
> psci_dt_attach_cpu() and the tail of the function if
> (!psci_has_osi_support()).
>
> >       data->dev = dev;
>
> I think Sudeep already mentioned that, by using psci_has_osi_support()
> as above you can prevent running this code, there is really no point,
> the data->dev NULL sentinel is already initialized.

Yes, I discussed this with Sudeep, but we didn't reach a consensus.
Let me explain the reasons behind the selected approach, once more.

The data->dev is a pointer within a static declared struct. Are you
sure it's assigned NULL by initialization? Don't we explicitly need to
set it to NULL, else it will be undefined, no?

Of course, I can move the check for psci_has_osi_support() into here
and avoid calling psci_dt_attach_cpu(). Just wondering what that
actually gain us, especially if we need to explicitly set the pointer
to NULL anyway.

That said, can you please confirm your thoughts around this, I will
change to whatever you think is best.

[...]

Kind regards
Uffe

[1] https://www.spinics.net/lists/arm-kernel/msg770558.html

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
