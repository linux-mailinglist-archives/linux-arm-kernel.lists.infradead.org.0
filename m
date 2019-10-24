Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 139E6E392F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 19:04:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fDtsL6uL6waPsA2lOxIlPNCJzqVYOi+aMStvozFUT1M=; b=m2WHkhlGZ6ayAG
	AAVZh7GQ3nYCVr0+toU25aixAFDjq+62JCHgZ3ApSFjpXAhjZQgKweEZMTvTucqTEfZKC5wXVya9Y
	vW+bCgXW6vkz3C315/Cl/Ca2ipfZjRqwBnPpzH2yvV7bzOsAOT+uOnIQGijlJGXtQcedy7FWMEQoc
	WtOe712cvlzhi31YSpoWA80o3hNkUhAIvTvY8pJHLtuzzpKkJ0BwD8XzSEXld7gc0cGzMYVITGTg5
	h0vQNocCZckaP2UNwp4XyNIn0dkScvWLdQU4eikkMHu4BLxhTAhokduPJ+OZfIrOl6sJj8DoIX+0M
	/cS7doYmh1GVrMkrEcmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNgX9-0003K7-OD; Thu, 24 Oct 2019 17:04:23 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNgWr-0003II-RV
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 17:04:07 +0000
Received: by mail-ua1-x943.google.com with SMTP id m21so7377856ual.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 10:04:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dzIZOdfZOm9/tczR85zTnpbzPA2Dr5D7KrkOTuOLCMQ=;
 b=pIlGYlwHvtHqaHlxQfDr0+75g9uN4+rdyZh81DemB0rBcak8UrgQ+FyY/pPMLvkjKX
 baoSN4HgwIIshTRvEC+0DlfgTvd9pFnAoiFvQVRMbeDOmDOlDM5eKZYM67BQSogtCsX0
 LbrnqE319qj1A0n3q+dKnGM5wG4GztlgYSvivE4nF5ONzddS2i8kEDuv2nEY+yVejdNs
 42Fu1Lsqo4ex/EIhAH9ZjXXhe+EcWVBQJJik8eGD8lMZOLkqns1yS/zcbys8/wFC+Je6
 B/FciVafCNEoRUYobQSP8ffCI6kHqESXVDdk50gcw+FbYsOmjKTbwT18Pgq916TWKH8K
 zzwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dzIZOdfZOm9/tczR85zTnpbzPA2Dr5D7KrkOTuOLCMQ=;
 b=obsnI38t8HmVFI25G7KN1yBij18QjQGRs4z37XrPUcUyKBmfCK5A8rrVk+FOpgO5LU
 5jBGbWBk6I2EWPmPxe5x46v8WTTH7W5FpDd1opMijSaoXVr8+gWHcB/S0l4pSLkr1+7y
 6YA2tKIOMImpzZ+QYESkVnrQHdU7/AehaqjpUV5cZwe6ZGa1cWI9fcXsjanJKOYNqwO/
 XygqlFYr/Usrdvxy+664d8smc06E2BDHM8QxUhxoxk1gXX5sAZ3QGkP4Cu/UOfHvi97T
 LWDs409JClWdoB/kXC3/qC9tJJ2BwStanbEoOj52SEnJaMFe3GnlCetduHQjpCY81jkG
 Lhnw==
X-Gm-Message-State: APjAAAV4vek4WQcFxoBzDp1DOzUxVzthPmf2tHmHM5Sb+8WPwYQtSCHN
 nUgXhaHzU+0Oz6Pi6sEH2u1u04IxICAsMuSVoZbjrdLz
X-Google-Smtp-Source: APXvYqzkr6vzJLu1qnQfTtAWGkrgV+rK9emrmymKXieNlDnMIIeTryB5+UQZjsnWebYgfKxZq8M5lsS16aVzuXCyxTE=
X-Received: by 2002:ab0:5a97:: with SMTP id w23mr9528899uae.129.1571936644649; 
 Thu, 24 Oct 2019 10:04:04 -0700 (PDT)
MIME-Version: 1.0
References: <20191010113937.15962-1-ulf.hansson@linaro.org>
 <20191010113937.15962-14-ulf.hansson@linaro.org>
 <20191024164106.GA24887@bogus>
In-Reply-To: <20191024164106.GA24887@bogus>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 24 Oct 2019 19:03:28 +0200
Message-ID: <CAPDyKFoWTqORFGSe0TwMuRh5wUunm2fDu-uHPZR9xRyT6UjmFQ@mail.gmail.com>
Subject: Re: [PATCH 13/13] arm64: dts: Convert to the hierarchical CPU
 topology layout for MSM8916
To: Sudeep Holla <sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_100405_898968_4C5EA57A 
X-CRM114-Status: GOOD (  15.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
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
 Lina Iyer <lina.iyer@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

- Andy

On Thu, 24 Oct 2019 at 18:41, Sudeep Holla <sudeep.holla@arm.com> wrote:
>
> On Thu, Oct 10, 2019 at 01:39:37PM +0200, Ulf Hansson wrote:
> > To enable the OS to better support PSCI OS initiated CPU suspend mode,
> > let's convert from the flattened layout to the hierarchical layout.
> >
> > In the hierarchical layout, let's create a power domain provider per CPU
> > and describe the idle states for each CPU inside the power domain provider
> > node. To group the CPUs into a cluster, let's add another power domain
> > provider and make it act as the master domain. Note that, the CPU's idle
> > states remains compatible with "arm,idle-state", while the cluster's idle
> > state becomes compatible with "domain-idle-state".
> >
> > Cc: Andy Gross <andy.gross@linaro.org>
> > Co-developed-by: Lina Iyer <lina.iyer@linaro.org>
> > Signed-off-by: Lina Iyer <lina.iyer@linaro.org>
> > Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
> > ---
> >  arch/arm64/boot/dts/qcom/msm8916.dtsi | 57 +++++++++++++++++++++++++--
> >  1 file changed, 53 insertions(+), 4 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
> > index 5ea9fb8f2f87..1ece0c763592 100644
> > --- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
> > @@ -102,10 +102,11 @@
> >                       reg = <0x0>;
> >                       next-level-cache = <&L2_0>;
> >                       enable-method = "psci";
> > -                     cpu-idle-states = <&CPU_SLEEP_0>;
> >                       clocks = <&apcs>;
> >                       operating-points-v2 = <&cpu_opp_table>;
> >                       #cooling-cells = <2>;
> > +                     power-domains = <&CPU_PD0>;
> > +                     power-domain-names = "psci";
>
> As mentioned in the patch: Do we really need to make power-domain-names
> compulsory ?

Yes, I think that is a good idea. However, let's discuss in the other
thread instead.

Again, thanks a lot for reviewing!

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
