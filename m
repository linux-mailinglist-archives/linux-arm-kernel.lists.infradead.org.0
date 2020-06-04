Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 757351EED34
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 23:16:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vQR1MX6LrHVXBc85bim6OOSa2zLDFoC83Vo3rRXiK40=; b=dy3yA95BIWCJ86
	Za2uH1PHkqOjKUmllKhP0the9vWtNlSj3DmjFyvr1XVNFOCxSThNDsisEHZrfTIazRmkGB4NCd/Mp
	AnhZj5I7XtD5wH3DR7jM+oN/tdz8HyS8bFS2XyOq9UrvpPmbOOT1eZciCxXuzZzqjxXqx0n2BYzUX
	OaEwxdGtdikjBappQPYB8dGiXC9hq1k2oiOc/zA4TwY3FRzfrQG2uM6vfBLwCYRFaeM1EX4Tw7meu
	be9msIOGTH1XDm//pDpYiXWM2JZNrOi5Xe+R3QyEXEky3tnJYBYOVuq7e5Psx7v6XP7Gl1K0Rysqg
	oHwG/Dm29RPaZV+jW42Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgxDV-0004yU-Rc; Thu, 04 Jun 2020 21:16:02 +0000
Received: from mail-ej1-x641.google.com ([2a00:1450:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgxA5-0008IU-Kk
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 21:12:31 +0000
Received: by mail-ej1-x641.google.com with SMTP id l12so3883378ejn.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jun 2020 14:12:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xKPs8QI3X6yUDoUfUVX11BPK3ZoB5yhprecCBzgrWKw=;
 b=YvM8YS2Vq3FmtfERIhmXuXo7QxUco45dGXoXu4cPQcd/d4++LurRIjwf5RrVcnK7cA
 xXthV08RoVAk0iexCb4xpbU9gSklTehSeKDvIRGugmNb4/mRW8knGew834gmOif+1Ewe
 lZ9KGKdDP4tKE6aLgyFScjJVBzoRGhQnWinvV/ENhBix9OEYLj0uLT9EUXFTcVt5Me5a
 GdgDjH8h9R18oiMGQ97WDWckUa5s1HHr3MmUK9VUQpUQcMG+4gRMeR5SrKk+W3IrzN5R
 5qIDnTGsCECpiP3cz/2n5lvNio9eggBEc23tqr8wpywIsYk3/TmzzHMfPtp40d6VWkWg
 bw2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xKPs8QI3X6yUDoUfUVX11BPK3ZoB5yhprecCBzgrWKw=;
 b=Nsgo2AbGSUyFVmnpRr0KGIuLCB60oc26ciTsii4Bc7gAEc8vujJY9Id5sJ8rjsBlQh
 RNWTd8kipZ4mdeiYou0moNAwvYxA3DvRskn13+NFxamqa+EA7ngf1fjVCrD5j13tUfDx
 UB5aewcvJzwnCI9YX4GaUd4xg4mD2NMO3UG27jMaHjzXdJesWoFIMfqNFJXpAWmPFivQ
 TaJWhqYcKX+wAXe7WEmF3bsLdZWEMkZkrbXpj3Ky71FmWr2txSJGLSpoW9Ihr0CQAWm4
 NbUgzkpMUAlnYaCc7nJNRkA3FKJAAbddyXrZAdLTakepbc76FIYNej4mXN2mV25/Lpc8
 o07g==
X-Gm-Message-State: AOAM530TgbP7vhFHcPjx271vaNVQo0m9MQkjcpSaViexPZXDqPbb3k7E
 ZoKuSMREdNiU/2x33GWLrdbK4BLwmNJg4imApXn+xQ==
X-Google-Smtp-Source: ABdhPJzT3F8eE8D+nhTdrq5mAZSWRY18kbH4Mold2wraRHftEzenwHDbiWl2I81JwxATBeIstvQp5bTar4ZVtgI/SJs=
X-Received: by 2002:a17:906:6094:: with SMTP id
 t20mr5904493ejj.359.1591305147771; 
 Thu, 04 Jun 2020 14:12:27 -0700 (PDT)
MIME-Version: 1.0
References: <20200526104642.9526-1-mike.leach@linaro.org>
 <20200526104642.9526-6-mike.leach@linaro.org>
 <62411834-9273-e46c-dc34-71ae45013b96@arm.com>
In-Reply-To: <62411834-9273-e46c-dc34-71ae45013b96@arm.com>
From: Mike Leach <mike.leach@linaro.org>
Date: Thu, 4 Jun 2020 22:12:17 +0100
Message-ID: <CAJ9a7VgDu821TqohCOwERZkH9y7u6LB0vkwLsF56D51rA1Hr7g@mail.gmail.com>
Subject: Re: [PATCH v4 5/5] coresight: sysfs: Allow select default sink on
 source enable.
To: Suzuki K Poulose <suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_141229_686220_43793162 
X-CRM114-Status: GOOD (  21.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Coresight ML <coresight@lists.linaro.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

HI Suzuki,

On Tue, 2 Jun 2020 at 12:46, Suzuki K Poulose <suzuki.poulose@arm.com> wrote:
>
> Hi Mike,
>
> On 05/26/2020 11:46 AM, Mike Leach wrote:
> > When enabling a trace source using sysfs, allow the CoreSight system to
> > auto-select a default sink if none has been enabled by the user.
> >
> > Uses the sink select algorithm that uses the default select priorities
> > set when sinks are registered with the system. At present this will
> > prefer ETR over ETB / ETF.
> >
> > Signed-off-by: Mike Leach <mike.leach@linaro.org>
> > ---
> >   drivers/hwtracing/coresight/coresight.c | 11 +++++++++--
> >   1 file changed, 9 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/hwtracing/coresight/coresight.c b/drivers/hwtracing/coresight/coresight.c
> > index 7632d060e25d..bd1a52a65d00 100644
> > --- a/drivers/hwtracing/coresight/coresight.c
> > +++ b/drivers/hwtracing/coresight/coresight.c
> > @@ -965,8 +965,15 @@ int coresight_enable(struct coresight_device *csdev)
> >        */
> >       sink = coresight_get_enabled_sink(false);
> >       if (!sink) {
> > -             ret = -EINVAL;
> > -             goto out;
> > +             /* look for a default sink if nothing enabled */
> > +             sink = coresight_find_default_sink(csdev);
> > +             if (!sink) {
> > +                     ret = -EINVAL;
> > +                     goto out;
> > +             }
> > +             /* mark the default as enabled */
> > +             sink->activated = true;
> > +             dev_info(&sink->dev, "Enabled default sink.");
> >       }
>
> To be honest, I would drop this change and mandate that the
> user enables the sink(s).

This is here to make it easy for users to explore CoreSight using
sysfs - which is what tends to happen when they first start using it.
Also useful for generic test scripts if no sink is needed to check if
the ETM is working.


> There is no way to reliably match
> which ETM is tracing to the sink above in case multiple ETMs
> are being enabled, even with the above message.

I can't imagine users setting multiple sinks, either through the
default route or the explicit set route. Either way the problem is the
same - which sink does the etm hit?
I think this means that we need to improve this rather than drop it.
The default sink could easily be read by from the ETM via sysfs. as
could an addition to provide a last used sink for sysfs.
This would be really useful in developing test scripts that exercised
ETMs on a system without having to figure out the sink used. Such
scripts would then be more portable.

Regards

Mike


>It is important
> for sysfs mode, as the user must collect the trace data manually,
> unlike the perf mode where the race data is collected and presented to
> the user via memory buffers.
>
> Suzuki



--
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
