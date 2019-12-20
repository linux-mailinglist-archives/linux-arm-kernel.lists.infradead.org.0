Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FC531279F1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 12:28:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4mUKl81rGB8VITkycpg+Ffn/mMEfxrMxJzwD4b9o5GI=; b=cJ9HFdCDk1CHaS
	oCrA8Kmw21SGKzP2Z5vzBi+hicL0zHdFOqqNweahzMrNGNFGfL0zchykdI5k5SIe4EHed49Bg9AA0
	DFOkIenEQoWyaUqqRF369eNwdkAyxugjDuAuYXAvI/0V6CGHKUFUsS3aK/a70ivBC8czXgGI1JXpg
	p6h+Dw2ieTAhNpHasNdp3Hw+i3JJ9qij9Wp5lmyzOYd392F2/lgdS3cykDPSIIxnQ+gfnpGHKCFx0
	FjEqcPi0r822f6aF7ITR7CGuuaQ+QEfknJpOvqoaRhq+dJ192ukq6g7VERfMb0U6pZ+h0fLSNFilq
	fiALykhKYNcjn1fhY5xA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiGSQ-0006Cn-OR; Fri, 20 Dec 2019 11:28:34 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiGSD-0006Bw-Id
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 11:28:23 +0000
Received: by mail-ua1-x942.google.com with SMTP id u17so2211017uap.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Dec 2019 03:28:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9SoaqXYMJ2KJjwtoaTvh1hc5Ly1metVQsNfISjMQGVM=;
 b=DVWYCQ9ZtZ5OXtI6/AEoCXE3k1GAsj8mb3tmZvQOnVteij53YoFdBLPC8c9kSJXmlA
 NQ5XLQynQ/L43YdfpuB9AE6odH792nuHpJtWTCRoyYwJf2z0tJfc05IXs1HEGLDCxSQR
 o9a6DhLodrPPUil9Gg/54+cKfqD/nJ7wamDo1xIhS/XoG+SktL3fMi70d36AEzu+oTYz
 VOlSx5uvLmNo5PQG7W6dmowfttLeN6GF7CCz21+nX6tillWvcTGXJC1gMNGiy1CXLXRa
 USJLqYmqV7VgsPYhj3GCPXW9VlKzm7su+8wZYFB746EkyhbtGXV/6F28bVasuthLd1X9
 4bog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9SoaqXYMJ2KJjwtoaTvh1hc5Ly1metVQsNfISjMQGVM=;
 b=SfwL+hhNFJ8WTflXKUkkH0w9KPrg4rMrma74mhiZ5Nh7Gag5kp5qOZClA3ixmF1aVz
 cdmuQ2qo3dFn4HV+QqqPyMn0J3cWDVKsE9OhTkG7iyQPanx9H0IP5k3gm49clrhgWFV7
 b8lq8Pdp/R3hY8ZZuFVB607cUFQUpha2Oqk/WWyVhpsZVhZGBLsmllJ4NfYrrKFjoBLZ
 9+ifT8WSftjs/BYPdCHkaQJgGI+3sMi7mkQoTIuinnyWFORasCQhSa5PRhHOwKWLmEJl
 wnInuKnk3uodOMHDTFi/suVxtXUi15GON2w9Ntph/yXZcHyU6r8bhh7Qnmz4Svnbklam
 h+Hg==
X-Gm-Message-State: APjAAAVNCtsD0pb8PiDY5llTvx/88ddQraauFoS/Jz9GWq4wnpOyWoL8
 iRdBvaJTrQ4cf9atT3z2k255n1WvsIbBQg90/eNjew==
X-Google-Smtp-Source: APXvYqzH1TQHl0wUKww+AFC9ZLq3Qenc8XAI8BZOQgGZwTKeGy36slqW2h7XqGaAzeKItHoRzNzsgznzc3DqlBo5i90=
X-Received: by 2002:ab0:20a:: with SMTP id 10mr8720811uas.19.1576841295791;
 Fri, 20 Dec 2019 03:28:15 -0800 (PST)
MIME-Version: 1.0
References: <20191211154343.29765-1-ulf.hansson@linaro.org>
 <20191211154343.29765-14-ulf.hansson@linaro.org>
 <20191219143427.GF20746@bogus>
 <CAPDyKFpPmtXkP6LSNWBbfyTJowjQXF39_4LN5YEcDtW1BzVw-g@mail.gmail.com>
 <20191219180629.GC21846@bogus>
 <CAPDyKFrtrkASV4d2+x+A2P=TMrnLGh4LK9nzNeqZCg71Hs2TEQ@mail.gmail.com>
 <20191220100745.GB6731@bogus>
In-Reply-To: <20191220100745.GB6731@bogus>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 20 Dec 2019 12:27:39 +0100
Message-ID: <CAPDyKFqaH8otvkRH-+AM6qJyT4TLc+S-qR2-ZCfTT56pWXVfaA@mail.gmail.com>
Subject: Re: [PATCH v4 13/14] cpuidle: psci: Add support for PM domains by
 using genpd
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_032821_824075_207962F9 
X-CRM114-Status: GOOD (  37.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:942 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Andy Gross <agross@kernel.org>,
 Lina Iyer <ilina@codeaurora.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kevin Hilman <khilman@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 20 Dec 2019 at 11:07, Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Thu, Dec 19, 2019 at 11:02:40PM +0100, Ulf Hansson wrote:
> > On Thu, 19 Dec 2019 at 19:06, Sudeep Holla <sudeep.holla@arm.com> wrote:
> > >
> > > On Thu, Dec 19, 2019 at 04:48:39PM +0100, Ulf Hansson wrote:
> > > > On Thu, 19 Dec 2019 at 15:34, Sudeep Holla <sudeep.holla@arm.com> wrote:
> > > > >
> > > > > On Wed, Dec 11, 2019 at 04:43:42PM +0100, Ulf Hansson wrote:
> > > > > > When the hierarchical CPU topology layout is used in DT and the PSCI OSI
> > > > > > mode is supported by the PSCI FW, let's initialize a corresponding PM
> > > > > > domain topology by using genpd. This enables a CPU and a group of CPUs,
> > > > > > when attached to the topology, to be power-managed accordingly.
> > > > > >
> > > > > > To trigger the attempt to initialize the genpd data structures let's use a
> > > > > > subsys_initcall, which should be early enough to allow CPUs, but also other
> > > > > > devices to be attached.
> > > > > >
> > > > > > The initialization consists of parsing the PSCI OF node for the topology
> > > > > > and the "domain idle states" DT bindings. In case the idle states are
> > > > > > compatible with "domain-idle-state", the initialized genpd becomes
> > > > > > responsible of selecting an idle state for the PM domain, via assigning it
> > > > > > a genpd governor.
> > > > > >
> > > > > > Note that, a successful initialization of the genpd data structures, is
> > > > > > followed by a call to psci_set_osi_mode(), as to try to enable the OSI mode
> > > > > > in the PSCI FW. In case this fails, we fall back into a degraded mode
> > > > > > rather than bailing out and returning an error code.
> > > > > >
> > > > > > Co-developed-by: Lina Iyer <lina.iyer@linaro.org>
> > > > > > Signed-off-by: Lina Iyer <lina.iyer@linaro.org>
> > > > > > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > > > > > ---
> > > > > >
> > > > > > Changes in v4:
> > > > > >       - None.
> > > > > >
> > > > > > ---
> > > > > >  drivers/cpuidle/cpuidle-psci-domain.c | 267 ++++++++++++++++++++++++++
> > > > > >  drivers/cpuidle/cpuidle-psci.c        |   4 +-
> > > > > >  drivers/cpuidle/cpuidle-psci.h        |   5 +
> > > > > >  3 files changed, 274 insertions(+), 2 deletions(-)
> > > > > >
> > > > > > diff --git a/drivers/cpuidle/cpuidle-psci-domain.c b/drivers/cpuidle/cpuidle-psci-domain.c
> > > > > > index 656ef3d59149..c2f94ba42222 100644
> > > > > > --- a/drivers/cpuidle/cpuidle-psci-domain.c
> > > > > > +++ b/drivers/cpuidle/cpuidle-psci-domain.c
> > > > > > @@ -7,14 +7,281 @@
> > > > > >   *
> > > > > >   */
> > > > > >
> > > > > > +#define pr_fmt(fmt) "CPUidle PSCI: " fmt
> > > > > > +
> > > > > >  #include <linux/cpu.h>
> > > > > >  #include <linux/device.h>
> > > > > >  #include <linux/kernel.h>
> > > > > >  #include <linux/pm_domain.h>
> > > > > >  #include <linux/pm_runtime.h>
> > > > > > +#include <linux/psci.h>
> > > > > > +#include <linux/slab.h>
> > > > > > +#include <linux/string.h>
> > > > > >
> > > > > >  #include "cpuidle-psci.h"
> > > > > >
> > > > > > +struct psci_pd_provider {
> > > > > > +     struct list_head link;
> > > > > > +     struct device_node *node;
> > > > > > +};
> > > > > > +
> > > > > > +static LIST_HEAD(psci_pd_providers);
> > > > > > +static bool osi_mode_enabled;
> > > > > > +
> > > > > > +static int psci_pd_power_off(struct generic_pm_domain *pd)
> > > > > > +{
> > > > > > +     struct genpd_power_state *state = &pd->states[pd->state_idx];
> > > > > > +     u32 *pd_state;
> > > > > > +
> > > > > > +     /* If we have failed to enable OSI mode, then abort power off. */
> > > > > > +     if (!osi_mode_enabled)
> > > > > > +             return -EBUSY;
> > > > > > +
> > > > >
> > > > > Why is above check needed ? Shouldn't we have disable/remove pd of
> > > > > OSI is not enabled ?
> > > >
> > > > Well, failing to enable OSI should in practice not happen, while it
> > > > theoretically it could.
> > > >
> > >
> > > I won't assume that. Since it's new and not tested yet, I prefer to assume
> > > it can fail.
> >
> > Yes, I agree. Hence the degraded mode.
> >
> > >
> > > > My approach to this has been to fall back to use a "degraded mode",
> > > > which seems quite common for these kind of situations. The degraded
> > > > mode means, we are preventing domain states from being used.
> > > >
> > >
> > > But why can't we just fail registering or remove if already added.
> >
> > We can, but there are more problems with that than leaving this in a
> > degraded mode, I think. See more below.
> >
> > > They are useless for "degraded mode" anyways. And it will ensure that
> > > data->dev is NULL. Sorry now I see why you said it can be NULL but I
> > > would rather not leave those unused genpd in place in case of error.
> >
> > data->dev would not be NULL in this case, because the
> > dev_pm_domain_attach_by_name() which is called when we attach the CPU
> > is going to return an error code, not NULL.
> >
> > That's because the connection is there in the DTB and thus it must
> > fail, in this case it would be with -EPROBE_DEFER (waiting for a genpd
> > provider to be registered).
> >
> > That would then lead to that the entire cpuidle-psci driver would fail
> > to initiate/probe. In my opinion, I think it's better to fall back
> > into a degraded mode, using all the idle states for the CPUs, but just
> > preventing the cluster idle states.
> >
> > Just wanted to make this more clear for you to consider. I am happy to
> > change in any way you suggest, but please confirm that you really want
> > another behaviour than the degraded mode.
> >
>
> Sorry but if OSI set failed in firmware, it will be operating in default/
> PC mode and I *don't* want to create genpd for that. It's confusing.

Alright, so that will cause some additional changes - let's agree how
to make those.

> Even if you don't create all these genpd domains, it is still degraded
> mode and we are anyway not changing that. Let me know if my understanding
> is wrong here.

Your understanding is wrong.

If I remove the genpds because psci_set_osi_mode() fails, then in the
current suggested initialization path, that will lead to that the
entire cpuidle-psci driver will fail to initiate (which is because
psci_dt_attach_cpu() returns an error). In other words, only WFI state
will be used by cpuidle as there will be no cpuidle driver registered
at all.

That would not be an acceptable behaviour, as it would make the
situation worse than today.

What we want in this scenario is to keep using all the idle states for
the CPUs, but ignores those for the cluster. That we both agree on,
right?

>
> I am sure, DTB may get copied to different platform and the firmware may
> not support OSI. I know we have logs, but creating and leaving those
> genpd domains unused will be just confusing. Please change that.

We are not creating any genpds unless OSI mode is supported. We do not
even try to attach CPUs to the PM domains, unless OSI mode is
supported. So this should already work according to your expectations
and previous requests.

To address your concern about removing genpds when psci_set_osi_mode()
fails, we also need to address the problems we get when calling
psci_dt_attach_cpu(). There are two viable options as I see it.

1. Prevent calling psci_dt_attach_cpu() altogether when
psci_set_osi_mode() failed. This means another function needs to be
shared from cpuidle-psci-domain.c to let cpuidle-psci.c know about it.

2. We can let psci_dt_attach_cpu() return NULL, when
psci_set_osi_mode() failed - as this information is already known by
cpuidle-psci-domain.c.

I vote for option 2, but what do you think?

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
