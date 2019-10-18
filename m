Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C515DC1CF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 11:52:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h8bPxP93drokA4pJqWrW8aRylznpH/vtyRoKxBuh6T0=; b=BXqfF4BDdKNnlT
	LHYMoowhpE+z07uKPqniiKWOec93IycNivnc6XnU6MyhTHPhtTvW3Xt69g8WbS0YnFkovXoASfPCx
	ekgfRMhyuWAF/8FUJNde0ks/kEKg2lQ1wkZCtfPB2ZGRZ7AY/bPjQP+assBsB8q0GiGEVR+MvVg6j
	IdcexUxWNfLfSiHZKxHkuFOV33nB5nxr1+4a6oo8FC+m1dr0QX2qO/9F+S3qYOr3aXsSwjXnMN592
	bJsmYABvdL3LLrN6hBEXBfgFzUl3fVt3ou/DyODQfVidz86056dcYyeBQ8insfKV2qY03wDloQ6CU
	gKlq2rbMjtleZKGzkOBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLOvR-0000G1-G2; Fri, 18 Oct 2019 09:52:01 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLOvF-0000Em-GI
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 09:51:52 +0000
Received: by mail-vs1-xe43.google.com with SMTP id y129so3621529vsc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 02:51:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=knD6IYh1XTlD/ibBcWNI8K/BimIHANG2UXS26q595lM=;
 b=ajfJ/X3Xn9ixrvBV5r5b5vdMwo992Y4/lgGjzTZi7bhDn1x3Sb8Meb6nx9MEBrDluM
 wrhnsG55M0SzjMG4AsohoOtMMJJoL9p6nTpAtsmnQLjNOoZsheONg2DowRT1K493JMbS
 AcPCbyAW2qjy+PAii2wOQsKFZdkcGbOW3ImYp8HBYWnkDEEqeYubSNKfXGMw+g8MMdgO
 spHUtMIvhhodOch4AZKB1PpBRQ4Z7rOfrmx1Sml7fiQlIgxA/TpCTFSY6Tvk64HXG41m
 kQ5PHiNOkVNqKevQXoTaUDcyOW8JcDP2dgYULeJFd9y3SuLWc6fu6WFxljo+kb0wboJl
 7aYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=knD6IYh1XTlD/ibBcWNI8K/BimIHANG2UXS26q595lM=;
 b=FKCU3LchWaf2Iu3WcCeOUsCz9pSRXCgue2mXUB0bS6exTtBRS7bP83WwZ1/TnIHSJ/
 2e8Q5qtVWx9GlzhYRbDKUi1zSUM3lCJDplIjYSNmLTNfHaSUmBTMnajCs2xiNClTIpXW
 MIj/pLX0XMnXtPPDqCPGMu7LcPVdrxr/ztEdZTfXrrROsavg+ylpYUaClyiBXiRa8Pq8
 SUPDckYYmHlqtC9em1RZVpPFWKjlqsP/dRXglcAW/8VTnq3WMVtI8rMJqhm3W5FZN0m1
 g3FB8NPX4gwEyto8rwKqibYSSJvFvaM802HYrfs2GAmD5peWyd6rGyH/I+Ma7afVd92Y
 jo5Q==
X-Gm-Message-State: APjAAAWT+DdhyXx6H/AfB+VsbsOtoU7npzna96jnpRF/YEdG5ljvD4XH
 5YX/TVChNPtThEd9lpaeNIwsiSNX8SjT4yWKWWTRqg==
X-Google-Smtp-Source: APXvYqxFUTnsVUqOPYGTlBe0WnXNlxQEuh5mYZupJcL1UOwQvgkbBN4IMB7XRxQVNzi9OdZCe0CRpSW7L61xE1ZxYCo=
X-Received: by 2002:a67:ebc2:: with SMTP id y2mr4847513vso.191.1571392308109; 
 Fri, 18 Oct 2019 02:51:48 -0700 (PDT)
MIME-Version: 1.0
References: <20191010113937.15962-1-ulf.hansson@linaro.org>
 <20191010113937.15962-2-ulf.hansson@linaro.org>
 <20191018093839.GB25918@e121166-lin.cambridge.arm.com>
In-Reply-To: <20191018093839.GB25918@e121166-lin.cambridge.arm.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 18 Oct 2019 11:51:11 +0200
Message-ID: <CAPDyKFqcHY6+Eq9d6xTPYMDrUOtGs+64YuwZ1EbFtqQZe0+xEw@mail.gmail.com>
Subject: Re: [PATCH 01/13] cpuidle: psci: Fix potential access to unmapped
 memory
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_025149_551488_656ABFAD 
X-CRM114-Status: GOOD (  20.01  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Linux PM <linux-pm@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kevin Hilman <khilman@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 18 Oct 2019 at 11:38, Lorenzo Pieralisi
<lorenzo.pieralisi@arm.com> wrote:
>
> On Thu, Oct 10, 2019 at 01:39:25PM +0200, Ulf Hansson wrote:
> > When the WFI state have been selected, the in-parameter idx to
> > psci_enter_idle_state() is zero. In this case, we must not index the state
> > array as "state[idx - 1]", as it means accessing data outside the array.
> > Fix the bug by pre-checking if idx is zero.
> >
> > Fixes: 9ffeb6d08c3a ("PSCI: cpuidle: Refactor CPU suspend power_state parameter handling")
> > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > ---
> >  drivers/cpuidle/cpuidle-psci.c | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
> > index f3c1a2396f98..2e91c8d6c211 100644
> > --- a/drivers/cpuidle/cpuidle-psci.c
> > +++ b/drivers/cpuidle/cpuidle-psci.c
> > @@ -27,10 +27,10 @@ static DEFINE_PER_CPU_READ_MOSTLY(u32 *, psci_power_state);
> >  static int psci_enter_idle_state(struct cpuidle_device *dev,
> >                               struct cpuidle_driver *drv, int idx)
> >  {
> > -     u32 *state = __this_cpu_read(psci_power_state);
> > +     u32 *states = __this_cpu_read(psci_power_state);
> > +     u32 state = idx ? states[idx - 1] : 0;
> >
> > -     return CPU_PM_CPU_IDLE_ENTER_PARAM(psci_cpu_suspend_enter,
> > -                                        idx, state[idx - 1]);
> > +     return CPU_PM_CPU_IDLE_ENTER_PARAM(psci_cpu_suspend_enter, idx, state);
>
> Technically we don't dereference that array entry but I agree this
> is ugly and potentially broken.

No sure understand the non-deference part.

If the governor selects WFI, the idx will be 0 - and thus we end up
using state[-1], doesn't that dereference an invalid address, no?

>
> My preference is aligning it with ACPI code and allocate one more
> entry in the psci_power_state array (useless for wfi, agreed but
> at least we remove this (-1) handling from the code).

I can do that, but sounds like a slightly bigger change. Are you fine
if I do that on top, so we can get this sent as fix for v5.4-rc[n]?

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
