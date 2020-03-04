Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0EC1179021
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 13:18:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vR527CTsv6BudS3zXF+pkOleWjbz106ale2XYak67JY=; b=lU5WWHfoNq1Ge6
	Uw+NUfQAgdzl6P0EyQ6T+EwY4Er97upXvfni6/jhRML2Szqu6sPc6Ns5gMl8TmcOIvDabW4v2ZwCl
	TRoVI1tpYwBN1hvSWsdkRag66A8kRh5y2KNb5tgXRGVy0oRg1DFPIdeY2HIDuA00KLwvt4bYwl1SJ
	1kxq2exnnVPKZR9FRBWGN/POo4uN4tyMbIijhejcXUQ16USPtMC6k5PRLQJWNT2zZjNGfULt8y25M
	HuVIahHdNYaOOIwH3CvCuEKT9orpnjIbMSlYbBHUw/hn2AaHNebdCjJ/wnttCdLsddx8E/Am2Hurj
	v/+tQ01EdA9N9MzS2gOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Syy-00020v-Ds; Wed, 04 Mar 2020 12:18:36 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9Syp-00020G-Pd
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 12:18:30 +0000
Received: by mail-ua1-x944.google.com with SMTP id o42so567312uad.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Mar 2020 04:18:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5ENDQdK0BnTgBrmbo1z33qY08hnGuLOjFToJM+EoACQ=;
 b=dAcvZ6LIDOcMeA4h8UWulv+NWq+8i2LMIfn4ZJ/bK+tyXrXb63qiJ3FWzP2+iXu5AD
 Bv2EGQi1kO/CG2yr6MHW18uOVD8P+728bCK6CcqUYAGPGnHaDDzRqriswg794wxTvJFj
 4jJ4CJQP8cILOiZ4idsLda7HIE9ig7ZvfxHbw+Z7/nsNeolzjOebgBijlLOLiFXCenuZ
 E2tjdHg5/NdwbqF3FxUlnn/j1EEav4+2q/GL4kf7BxvvYYSSnot6pRUYKUayaKMo9Qig
 7nZqEuw69VfrGRIQ50xEb+2yABixBOayBmcG5hMLBPGWqrSzWhIRJUcJy7euMkBTI/Jh
 FYAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5ENDQdK0BnTgBrmbo1z33qY08hnGuLOjFToJM+EoACQ=;
 b=Qg271GZE4rx7w9gvmqO5nFx3yxU+dCHNreSBqIwr9EQAK2GAtwSsR+3jMN1Xuf7ABd
 GdvwuBWQQaUcIee5lOepSpYzSItxVDZL3kyjkHSo5SOqB+dHEmo08kC1Skp8IfFYByOq
 FoC8itmJ26qe55BifenHXjeLRYYij3n9zVTF2eYlw7zC77u+1u72oDRbXlNBA1BTVMVj
 0Rs1BjNstgsSchKsBRcz6Z69S9lmxZ6Yf9HrcYs8uaPlf+kJe32n1ctxcz5CCgONdDay
 Zqk1C8NRFpqVk0NFgJnH4QFZG621vGAd1baDVvV54dvRR4oLP0s2Tssh7Jy+a5m3bkU/
 wWnA==
X-Gm-Message-State: ANhLgQ3n/Xch0AZOYwdtCmht7OX2OIntXVxv4YueA9VeoA6rv3hqPdvy
 MlqQqu7v4tgeKeeHgI2ZKlQ9AjhGlKady2b+XX6tkA==
X-Google-Smtp-Source: ADFU+vs64WAXYstjh/9mMgNerdas9d2I6hWXLhFl8/qXXr1kzUvzPo2E7WUlATihcSCippJscfqookVKFmvVz0feZLE=
X-Received: by 2002:ab0:20a:: with SMTP id 10mr1206957uas.19.1583324304979;
 Wed, 04 Mar 2020 04:18:24 -0800 (PST)
MIME-Version: 1.0
References: <20200303203559.23995-1-ulf.hansson@linaro.org>
 <20200303203559.23995-3-ulf.hansson@linaro.org> <20200304105039.GC25004@bogus>
In-Reply-To: <20200304105039.GC25004@bogus>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 4 Mar 2020 13:17:49 +0100
Message-ID: <CAPDyKFqd0DswuyLCFQ1F6G7agCEEgf0vzofRVyBVVPQTn-vK+A@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] cpuidle: psci: Fixup support for domain idle
 states being zero
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_041827_863118_717C438C 
X-CRM114-Status: GOOD (  19.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Lorenzo Pieralisi <Lorenzo.Pieralisi@arm.com>,
 Benjamin Gaignard <benjamin.gaignard@st.com>,
 Linux PM <linux-pm@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Lina Iyer <ilina@codeaurora.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 4 Mar 2020 at 11:50, Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Tue, Mar 03, 2020 at 09:35:57PM +0100, Ulf Hansson wrote:
> > The current code intends to allow a PSCI PM domain to have none domain idle
> > states defined in DT. However, a few minor things needs to be fixed to make
> > this correctly supported, so let's do that.
> >
> > Reported-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> > Fixes: a65a397f2451 ("cpuidle: psci: Add support for PM domains by using genpd")
> > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > ---
> >  drivers/cpuidle/cpuidle-psci-domain.c | 6 ++++++
> >  1 file changed, 6 insertions(+)
> >
> > diff --git a/drivers/cpuidle/cpuidle-psci-domain.c b/drivers/cpuidle/cpuidle-psci-domain.c
> > index 423f03bbeb74..c34b12c4069a 100644
> > --- a/drivers/cpuidle/cpuidle-psci-domain.c
> > +++ b/drivers/cpuidle/cpuidle-psci-domain.c
> > @@ -49,6 +49,9 @@ static int __init psci_pd_parse_state_nodes(struct genpd_power_state *states,
> >       int i, ret;
> >       u32 psci_state, *psci_state_buf;
> >
> > +     if (!states)
> > +             return 0;
> > +
>
> Was any issue found ? Or just code inspection ? If states = NULL,
> state_count = 0, and I don't see anything blowing up. It may save couple
> of extra instruction execution.

Code inspection, the real problem was fixed in patch 1.

>
> >       for (i = 0; i < state_count; i++) {
> >               ret = psci_dt_parse_state_node(to_of_node(states[i].fwnode),
> >                                       &psci_state);
> > @@ -96,6 +99,9 @@ static void psci_pd_free_states(struct genpd_power_state *states,
> >  {
> >       int i;
> >
> > +     if (!states)
> > +             return;
> > +
>
> Same here and kfree(NULL) is also valid.

Yep, let's drop $subject patch from the series, it's not needed.

Thanks for reviewing!

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
