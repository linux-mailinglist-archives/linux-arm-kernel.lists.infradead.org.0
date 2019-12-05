Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47A9011483D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 21:39:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U/gIctfIMiF+qSlt3/8SfZErsMIRUqQAiUeQvLiNaBY=; b=itQBRHjwly9SsS
	5HkJQz/wbY6pOxTa4/01C3vCRs/krJBP2TWDSaAedRSB8qHn5BLMuighx0yplmWwhUoCYMBDZLSKk
	hyat0kLa3xwrlwmaTjCysjRtLB1At163xDy4AIRipBy1/o0eTpepQrJvT8TYZ3O6Y+J7gUUrfglPc
	mZtZt3o79MbPGBpXC+lHyrF6W6sv2DTBgq4VjYYfhtZAKvLCR95pYF6oK/W+d0f7coGrxJbD/PCKQ
	M2yprDYfocb2YnMOr5FOW5q9t+mEM6EJ7oMBgDGwPKzLsUfwHXuXGBgT2UjMA/1THHPeGYx2uxGWL
	tBdnfsjd0u/HDOh3Pspw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icxuQ-0005xQ-6E; Thu, 05 Dec 2019 20:39:34 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icxuF-0005wv-Nm
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 20:39:25 +0000
Received: by mail-vs1-xe41.google.com with SMTP id g15so3450111vsf.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Dec 2019 12:39:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SSvOjQkThzkjS0E5kT8izv176PiG+QeLySxW76GfG/8=;
 b=KEqh5U3mky5aGe7W96TiE2LasaP3xlk51SGQLcUTzI1gDcy3EH1dmJjfwPF/JMLEBM
 nGW8/IEwFXENSKvuLMyqJq96Kr0LfnE6z/+8Tp7EQd2fB1Df1iiwJoWw6TRgiNgTJuLZ
 TgrcNx9ZGBo597myzBWXph+Dsp5sIE/30gEpNX/TsvHQX0Pd5mTNnJDB53bYzEnCZTjb
 v3zt0XPG6g9HJjA1lnPkIYhsHqMnsI809RxuIQ8B4lEh1rFGDgcs0uBPvTw3SMsr647w
 a9KMvmrWdUgCDY6klznjR5FatNCjj3nUZMnQnyERTctkh5Sd+jGWTuXmjGz6YGJDfYl9
 lt7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SSvOjQkThzkjS0E5kT8izv176PiG+QeLySxW76GfG/8=;
 b=saezdFHTP6x4zyR+soyfe2lOO9XRSjtONnbJ9vAS6zUyXSpSmtJJX1IWVVvoF81zMZ
 +DOe5rPaJhkOO1o/3fz4zQ1h9KhMd3WD0wq8rYoPnD4LsTTMOWgGS2voNbTVkLy/3lk8
 g+5OZC+DRyzHgYxmFmSbuwM/8HdLjnxbo7/y3mgygHVnznYMcPXl4uAx90WPPje3r/Be
 TetTCbcaCYParxTbJGK9EhJ9QGHto7b1slHp0S1xeDBlK8eJhqOHR8rtLeU5zM0VYQ7Y
 jLFr2ocKeiDUrfhVXuTisPRZkj9obua3+cjbLVIlTsY5RHudlqGnpUcPViVkg/shT1z5
 /8cg==
X-Gm-Message-State: APjAAAXGAYxrGI4IQY0KYRyh7nGXKLl2L3+VRi357pURBIt+pv5rDq2n
 WmAASLON39E7ZvM02CkrOLozYChBnUYr+zsbSlVcHA==
X-Google-Smtp-Source: APXvYqwv8W+XvnbaXKWKlmbMYtOfLrbfwOBq+4ILBpgcTAHXNniAJi3G7xZyAP75rfwK/aPe4c6uig2q/Wwh9WLoeNU=
X-Received: by 2002:a67:f499:: with SMTP id o25mr6993350vsn.165.1575578362421; 
 Thu, 05 Dec 2019 12:39:22 -0800 (PST)
MIME-Version: 1.0
References: <20191127102914.18729-1-ulf.hansson@linaro.org>
 <20191127102914.18729-11-ulf.hansson@linaro.org>
 <20191205183544.GB1516@e121166-lin.cambridge.arm.com>
 <CAPDyKFra-C_EKrcec6Yys2P10bB+KBtVAKNtVFgqDvV=tzbDRQ@mail.gmail.com>
In-Reply-To: <CAPDyKFra-C_EKrcec6Yys2P10bB+KBtVAKNtVFgqDvV=tzbDRQ@mail.gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 5 Dec 2019 21:38:45 +0100
Message-ID: <CAPDyKFpRLWO0D9an_OH3VJYDXM=SQWDfx0A4tOhufA+_L2Zp-g@mail.gmail.com>
Subject: Re: [PATCH v3 10/13] cpuidle: psci: Prepare to use OS initiated
 suspend mode via PM domains
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_123923_787211_C295F0A2 
X-CRM114-Status: GOOD (  20.23  )
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

On Thu, 5 Dec 2019 at 21:25, Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> On Thu, 5 Dec 2019 at 19:35, Lorenzo Pieralisi
> <lorenzo.pieralisi@arm.com> wrote:
> >
> > On Wed, Nov 27, 2019 at 11:29:11AM +0100, Ulf Hansson wrote:
> >
> > [...]
> >
> > > -static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node,
> > > +static int __init psci_dt_cpu_init_idle(struct cpuidle_driver *drv,
> > > +                                     struct device_node *cpu_node,
> > >                                       unsigned int state_count, int cpu)
> > >  {
> > >       int i, ret = 0;
> > > @@ -118,6 +152,11 @@ static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node,
> > >               goto free_mem;
> > >       }
> > >
> > > +     /* Manage the deepest state via a dedicated enter-function. */
> > > +     if (dev)
> > > +             drv->states[state_count - 1].enter =
> > > +                     psci_enter_domain_idle_state;
> >
> >
> > It is unfortunate to make this arbitrary choice, it would be best
> > if you could detect which states are "domain" states aka are governed
> > by multiple cpus.
>
> The domain states are managed and selected by the genpd providers, via
> using runtime PM reference counting. Please have a closer look at the
> code in cpuidle-psci-domain.c and in the generic PM domain, that
> should give you the needed details.
>
> I am overriding the enter callback for the *deepest* known idle state
> of the CPU, which is according to what you requested [1].
>
> So, unless I am missing your point, I think the above code does
> exactly what you want, no?
>
> In regards to the "arbitrary choice" of what cpuidle state to use,
> there are more details about why that is, in the changelog.

Correction: Since I have moved patches around, I realized that the
explanation is actually put in the changelog of patch11.

For clarity, let me cut and paste it here as well:

"The triggering point for when runtime PM reference counting should be done,
has been selected to the deepest idle state for the CPU. However, from the
hierarchical point view, there may be good reasons to do runtime PM
reference counting even on shallower idle states, but at this point this
isn't supported, mainly due to limitations set by the generic PM domain."

Is that good enough or you want some of this information also in the
changelog of $subject patch? Or if you have any other idea for how to
make this more clear?

[...]

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
