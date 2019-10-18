Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C5E3DC2C9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 12:30:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yDPL2kHrMg9ZjflKQbTlvcBBjo3LMRCRRxtYusLmtGc=; b=FV6dJLiWdzjBTv
	Dg3Egi7F0zzhNE+wxSqcWwavYOPJVlO5rBqngKGpzo8LiPMm9dKgaiRZFIdAoR6K4rBytrFCe/RaR
	vJHdg8gpHQ6jLjYLETxhUg1AKkBKO3UvSHHceJY0va2mRIMOygWDs63yhy8WG1cTjiz1w3nSPCPvo
	5l0G6qTOsqEcqF9JCdewHt1uASHrBCRnGnszjt+Bo40DGv+GdPALx8sWEe1rHPjTd6JUkQf3FvmGa
	KH/XtD4bLgLF20lFsYzLhjey9F2NDZtqRBxXRwkfcI3k1gvHEc/89XmifvGJWvZyWHIBOyxolslee
	GfF2NTEWSEKOyUucmUKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLPWr-0004as-NQ; Fri, 18 Oct 2019 10:30:41 +0000
Received: from mail-vk1-xa44.google.com ([2607:f8b0:4864:20::a44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLPWi-0004aN-Dp
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 10:30:34 +0000
Received: by mail-vk1-xa44.google.com with SMTP id w3so1229055vkm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 03:30:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QBRSB47R5zdfT32KlX+aV4HkEYKUi3HGXtyDlZlyb9g=;
 b=Dss1BgqrjNvxuj0zYw0vhMToennUoBig/tBC3bNtaANNS1mXutL2nXPRNgUm9TjRR7
 4eX32k2Vni3lmF4HIV+5HHnMLh+zuaLl2alVyDHD6OfstLB8WN9T99dbFXQlBcibMymN
 Tnnoe0JRnYSo4BHGsvDVou6OdACw+OTwQxLtdZQ2uvflcvyJe0a1r4P0mEihlTLKBMMj
 BJVKfnlbyfxvalsJ6/NZSqVPMsoPGPhI1RTrh+nilz0ErmTzjWheU9vFgoUDHCMLdKJZ
 TsFTPOw6yd2MNTWd08IzfDoE5c13uu4RjJkCouYyNUXWjbo4v84d9ivQ2aAp0xDEEskt
 d1mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QBRSB47R5zdfT32KlX+aV4HkEYKUi3HGXtyDlZlyb9g=;
 b=E5jIEmgYC1/SzzCES/9KYYg0ASVRAopD+bVptZOqYRnPq/cIluWA7nKGqqlSqrqnpF
 hqu+KQKOI+bo9dMdsFSRW0ChsPCTpDw4kl2opqfy0diTtTZrSREgI+U9KyosU2SvRImi
 uoAMGHQgWrnEP+MQEJiSY8kjlqFzdUEJSK97AqaQoRxAcK7ETKAU5ktjE78fubnfgzIb
 QslplbJhGbvlSKkGJPgXTD3jNA0ZANQxLr7oFx12dgjgcdeFkn5xRIhEG2HzFP4/Qbt9
 UQPZQl0GW47lYR8juk3tY9J9Mra4U7Gjq6V13b97SPIHjqaIGuHKVEWsYy6uJiJkMrya
 uJ8A==
X-Gm-Message-State: APjAAAUvfuomAOEnC/UiORq9gZEIzM+u7zOoyXL83/gyxrayfkI3tSQE
 fTxtdKEv9iVa/qmzaVVyexLo8lBq9BlAag5OmCGo8g==
X-Google-Smtp-Source: APXvYqzU6e6q9t22pNva8KyfPNj9Pj4U12mHVaQ4OI5IfhQefBCPy5AbRQB8q7JWkerOtbOZWoMaHG5QAkVyTTZRZec=
X-Received: by 2002:a1f:a293:: with SMTP id l141mr4885218vke.43.1571394630718; 
 Fri, 18 Oct 2019 03:30:30 -0700 (PDT)
MIME-Version: 1.0
References: <20191010113937.15962-1-ulf.hansson@linaro.org>
 <20191010113937.15962-2-ulf.hansson@linaro.org>
 <20191018093839.GB25918@e121166-lin.cambridge.arm.com>
 <CAPDyKFqcHY6+Eq9d6xTPYMDrUOtGs+64YuwZ1EbFtqQZe0+xEw@mail.gmail.com>
 <20191018100304.GA28830@e121166-lin.cambridge.arm.com>
In-Reply-To: <20191018100304.GA28830@e121166-lin.cambridge.arm.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 18 Oct 2019 12:29:54 +0200
Message-ID: <CAPDyKFoEf1-2z8d2r15=fg-9sY5u93iOzuUmmsYYiG9+8uB9Dw@mail.gmail.com>
Subject: Re: [PATCH 01/13] cpuidle: psci: Fix potential access to unmapped
 memory
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_033032_491434_5D0779C9 
X-CRM114-Status: GOOD (  26.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a44 listed in]
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

On Fri, 18 Oct 2019 at 12:03, Lorenzo Pieralisi
<lorenzo.pieralisi@arm.com> wrote:
>
> On Fri, Oct 18, 2019 at 11:51:11AM +0200, Ulf Hansson wrote:
> > On Fri, 18 Oct 2019 at 11:38, Lorenzo Pieralisi
> > <lorenzo.pieralisi@arm.com> wrote:
> > >
> > > On Thu, Oct 10, 2019 at 01:39:25PM +0200, Ulf Hansson wrote:
> > > > When the WFI state have been selected, the in-parameter idx to
> > > > psci_enter_idle_state() is zero. In this case, we must not index the state
> > > > array as "state[idx - 1]", as it means accessing data outside the array.
> > > > Fix the bug by pre-checking if idx is zero.
> > > >
> > > > Fixes: 9ffeb6d08c3a ("PSCI: cpuidle: Refactor CPU suspend power_state parameter handling")
> > > > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > > > ---
> > > >  drivers/cpuidle/cpuidle-psci.c | 6 +++---
> > > >  1 file changed, 3 insertions(+), 3 deletions(-)
> > > >
> > > > diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
> > > > index f3c1a2396f98..2e91c8d6c211 100644
> > > > --- a/drivers/cpuidle/cpuidle-psci.c
> > > > +++ b/drivers/cpuidle/cpuidle-psci.c
> > > > @@ -27,10 +27,10 @@ static DEFINE_PER_CPU_READ_MOSTLY(u32 *, psci_power_state);
> > > >  static int psci_enter_idle_state(struct cpuidle_device *dev,
> > > >                               struct cpuidle_driver *drv, int idx)
> > > >  {
> > > > -     u32 *state = __this_cpu_read(psci_power_state);
> > > > +     u32 *states = __this_cpu_read(psci_power_state);
> > > > +     u32 state = idx ? states[idx - 1] : 0;
> > > >
> > > > -     return CPU_PM_CPU_IDLE_ENTER_PARAM(psci_cpu_suspend_enter,
> > > > -                                        idx, state[idx - 1]);
> > > > +     return CPU_PM_CPU_IDLE_ENTER_PARAM(psci_cpu_suspend_enter, idx, state);
> > >
> > > Technically we don't dereference that array entry but I agree this
> > > is ugly and potentially broken.
> >
> > No sure understand the non-deference part.
> >
> > If the governor selects WFI, the idx will be 0 - and thus we end up
> > using state[-1], doesn't that dereference an invalid address, no?
>
> No because CPU_PM_CPU_IDLE_ENTER_PARAM is a macro, the code it
> preprocesses to won't dereference state[idx - 1] if idx == 0.
>
> I agree it is *very* ugly but technically code is not broken.

Ahh, got it, thanks!

>
> > > My preference is aligning it with ACPI code and allocate one more
> > > entry in the psci_power_state array (useless for wfi, agreed but
> > > at least we remove this (-1) handling from the code).
> >
> > I can do that, but sounds like a slightly bigger change. Are you fine
> > if I do that on top, so we can get this sent as fix for v5.4-rc[n]?
>
> Technically we are not fixing anything; it is not such a big
> change, we need to allocate one entry more and update the array
> indexing.

Okay, let me do the change - and it seems like it doesn't even have to
be sent as a fix then. Right?

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
