Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6CD45F1B2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 05:03:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ifsIic4j63T6ugnxqZLYFcyR5Pn0xeoTzfQoeZdtnTc=; b=r8w4Uztm6SXSaG
	mge2CK3iACMHLPJ2M/aJE9hhFsem5qIUpSY97IIX0CdOVNGORR4Am14FLweoAUoFWjcUvISyQZ/hn
	LCmnFQoKJC+75+yg1gRHhqEUcewzojTAzgHeyBL+LpByB92gi1Qt4sky6tMhjbgI+w2wwQNVYCNfS
	x2lNhFil6wO71vuLY7+6E61r8c7pHi4H406INHJMCmqpnpL8qO67wh/kXr92SPqMx3VAkZcudQiSw
	KO69lO+CP4rY2yUXbyjCHx3n7C7YVmfLlUFW1sgQz1yzMUpdhn9iNzxUXhBllDooG+s4Na0bzS/h4
	GOb1OxEu+P+bbTQXvi7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1his21-0006B2-JU; Thu, 04 Jul 2019 03:03:33 +0000
Received: from mail-oi1-x22b.google.com ([2607:f8b0:4864:20::22b])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1his1X-000600-8q
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 03:03:05 +0000
Received: by mail-oi1-x22b.google.com with SMTP id m202so3811736oig.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jul 2019 20:03:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=n1KdKTuWqrDXAP3v6txFR4h07qa+wUhZFnR5tE4YYSQ=;
 b=hUVB9KGT+H7UQfNOUX3f8B4+lpC0WQ7jkigFqMapZ34Gc3QrlBEgVm05bX452lh2mK
 5V8JABVi6UCATdXj0mw6GBIUkeEFZ7m6l9D8Ox7Y1BRx/3oLtliRfL0gOYrpwc3R2ud8
 DfRRN4sSLGCAe3EpsWDgNHrHEOYoKdB/N42af6R9484GB8Q1zu1unU3LkYecOQ5cXBJI
 Cu987fs1LoZ4TeAbolIrNTigcIHco5X8zZslJO/g5441i+XB0NKsXDf4FmdC5AftAAEP
 Cj1Nvt3YZEZ47Go2FCo590RcvnQiv/OJEvK7wwXdsecvMhHo2vRyVbQMlyDkZNDiO+5d
 Jt1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=n1KdKTuWqrDXAP3v6txFR4h07qa+wUhZFnR5tE4YYSQ=;
 b=QN5dyigk1FPiE+xHjvPOevh+x9XdxCC4H0HO8Y6Glu0akb+N7omuPtQ3MOww9QwD1t
 YZCmj28veRKWqyPzpbJPowbAaDMxoLTLulob/FvxIocx1d790hCuF1prhuV5gmoy0jDU
 v+vojWhx4rTlE28nS3GrAEj/xFnENcrxyDv7eThylvTqX/qnS2FMlklXIPa7yKQ50kOn
 Sx7PR0esV6serrKQYPDMJzGHGFjrIyfN3TPZ4fgjZlvyDdvl8/MOkahbsWnuqV/rklwN
 DuRWbxI7VfQKgAmwScuuwg+zSy4eJh1/tIKxPhTzr/61amP2cWY13NXz1/f12m6xwzPg
 ntzw==
X-Gm-Message-State: APjAAAVopDf88IeU0Rsv54kjA6YarCQmrmDNNEZIM/zYsuVEf5gspMnh
 MtSzdjTyZQWnIA/xdepLM3xZm36TBg6NDT0N6MjEDw==
X-Google-Smtp-Source: APXvYqx4t9TJb0zhKWKpXdp+t0vLDo8QxG63nb2zHZEbXWHngIo59Bx47QJ4iboxakD5apU1NVxAFcglkoqPsv9oBoM=
X-Received: by 2002:aca:6104:: with SMTP id v4mr569905oib.172.1562209381525;
 Wed, 03 Jul 2019 20:03:01 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1561707104.git.leonard.crestez@nxp.com>
 <CAGETcx_63KnP75qySbhX_P_=o4=ox9J8AsBqKsFHeQRjCpSeJA@mail.gmail.com>
 <DB7PR04MB505163FDCAD7BE9A0C71A65EEEFB0@DB7PR04MB5051.eurprd04.prod.outlook.com>
In-Reply-To: <DB7PR04MB505163FDCAD7BE9A0C71A65EEEFB0@DB7PR04MB5051.eurprd04.prod.outlook.com>
From: Saravana Kannan <saravanak@google.com>
Date: Wed, 3 Jul 2019 20:02:25 -0700
Message-ID: <CAGETcx-p4L3LBVpDBmBrPKXxMUtUXtsw-7AntpWs+AL3kaaP5Q@mail.gmail.com>
Subject: Re: [RFCv2 0/8] Add imx8mm bus frequency switching
To: Leonard Crestez <leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_200303_356866_9BF3C6E7 
X-CRM114-Status: GOOD (  31.15  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:22b listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Jacky Bai <ping.bai@nxp.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Alexandre Bailon <abailon@baylibre.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 dl-linux-imx <linux-imx@nxp.com>, Linux PM <linux-pm@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Stephen Boyd <sboyd@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Georgi Djakov <georgi.djakov@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 3, 2019 at 4:30 PM Leonard Crestez <leonard.crestez@nxp.com> wrote:
>
> On 7/4/2019 1:20 AM, Saravana Kannan wrote:
>
> >> The interconnect and devfreq parts do not communicate explicitly: they both
> >> just call clk_set_min_rate and the clk core picks the minimum value that can
> >> satisfy both. They are thus completely independent.
> >
> > Two different parts not talking to each other and just setting min
> > rate can cause problems for some concurrency use cases. ICC framework
> > is explicitly designed to handle cases like this and aggregate the
> > needs correctly. You might want to look into that more closely.
>
> The clk framework aggregates the min_rate requests from multiple
> consumers under a big "prepare_lock" so I expect it will deal with
> concurrent requests correctly. As for performance: frequency switching
> shouldn't be a fast path.

Sorry I wasn't clear. I was not talking about locking issues or race
conditions when I said concurrency use cases. What I meant was if GPU
wants 5 GB/s and at the same time (concurrent) camera wants 5 GB/s
you'll need to configure the interconnect for 10 GB/s. If both of them
just try to set the min freq equivalent for 5 GB/s the performance
would be bad or functionality might break.

> >> The clk_set_min_rate approach does not mesh very well with the OPP framework.
> >> Some of interconnect nodes on imx8m can run at different voltages: OPP can
> >> handle this well but not in response to a clk_set_min_rate from an unrelated
> >> subsystem. Maybe set voltage on a clk notifier?
> >
> > I think if you design it something like below, it might make your life
> > a whole lot easier.
> > Hopefully the formatting looks okay on your end. The arrow going up is
> > just connecting devfreq to ICC.
> >
> >                          Proactive -> ICC -> clk/OPP API to set freq/volt
> >                                        ^
> >                                        |
> > HW measure -> governor -> devfreq ----+
> >
> > That way, all voltage/frequency requirements are managed cleanly by
> > clk/OPP frameworks. The ICC deals with aggregating all the
> > requirements and devfreq lets you handle reactive scaling and policy.
>
> If icc and devfreq are to directly communicate it makes more sense to do
> it backwards: ICC should set a min_freq on nodes which have a devfreq
> instance attached and devfreq should implement actual freq switching.
>
> HW measurement is done on individual nodes while ICC deals with requests
> along a path. In particular on imx we have a performance monitor
> attached to the ddr controller and I doubt it can distinguish between
> masters so how could this be mapped usefully to an interconnect request?

Ah, that was the missing piece for me -- you are trying to use a
central performance monitor. I see what you are trying to do.

So you are looking at system wide traffic at DDR and then using that
to scale the interconnect/DDRC. I don't know how complicated or not
the IMX interconnect topology is, so please pardon my questions. If
you are using a performance monitor at the DDR controller, why do you
need the "proactive" requests from other clients? Wouldn't the
performance monitor account for all the traffic to DDR?

> As far as I understand with devfreq the ddrc node could use "ondemand"
> while the other nodes would default to the "passive" governor and run at
> predefined default ratios relative to DDRC.

Yes, that approach would also work but I'm not sure why you need the
ICC framework in that case.

> > If all of this makes sense, please take a look at [2] and provide your
> > thoughts. I've dropped a few patches from [1] to avoid confusion (too
> > much going on at once). I think BW OPP tables and having OPP tables
> > for interconnect paths will be something you'll need (if not now,
> > eventually) and something you can build on top of nicely.
>
> I found it very confusing that you're assigning BW OPP tables to
> devices. My initial understanding was that BW OPP would map "bandwidth"
> to "frequency" so BW OPPs should be assigned to links along the
> interconnect graph. But maybe what you want is to have OPPs for the BW
> values requested by devices?

I want to have OPPs for bandwidths requested for paths. Each
interconnect node can also use BW OPPs if that makes sense for them,
but I think they'd be better served by using frequency OPPs.

> Looking at the sdm845 icc provider source and it seems that those
> "peak/avg" values are actually parameters which go into a firmware
> command!? It makes sense that you want interconnect to be "below"
> devfreq since icc_provider.set maps very closely to what firmware exposes.

Even without the firmware (it's mainly there to aggregate requests for
some system wide resources) or if interconnects are scaled directly
using clock APIs (older chips), sdm845 would still want ICC to be
below devfreq. It's because 845 doesn't try to do ICC scaling by
measuring at the DDR. Each master makes separate requests and then the
ICC aggregates and sets the frequency. They have their reasons (good
ones) for doing that.

>  > Interconnects and interconnect paths quantify their performance
> levels > in terms of bandwidth and not in terms of frequency.
>
> On i.MX we just have a bunch of interconnect IPs for which frequencies
> can be adjusted (in hz)

This is true for every chip. In the end, they all set the Hz of hardware IPs.

> so the above statement doesn't really hold. It
> is up to an icc provider to convert aggregate bandwidth values to
> frequencies along the path.

That's the job of every ICC provider. In the case of i.MX you use
clock APIs and in the case of sdm845 they use some complicated
firmware interface. But in both cases, when the system is tuned for
performance/power everyone in the end cares about frequency and
voltage. If the frequency goes too high, they might reduce the
bandwidth to make sure the frequency remains reasonable for whatever
use case they are profiling.

I think the main difference is where the performance monitoring or
performance decision is done. If you don't have a central performance
monitor or don't want to use one, then the policy decision (which is
where devfreq fits in) will have to happen at the bandwidth decision
level.

-Saravana

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
