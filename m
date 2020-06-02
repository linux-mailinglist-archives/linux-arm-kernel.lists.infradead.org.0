Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A59FF1EBCBD
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 15:13:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yXkEnSRj51B08MjOsW5+n7vH0BIWki2168kY5WqoZM4=; b=MHzeSKGjEBjmuZ
	I6zY3k85PPWP49TFmkWXDWzse1mAu5Xz/514Ke62j0Hlz/eaFtH0hLP9raEMnJJsMp6E8UWvrROkT
	/e8gZgrV3WH5GtKdcwqp+yy93aBFRbdvSjG2VwDaZYoCxskgLc3P6UYcfV5QeZM0zCbVCL0kz8EFs
	BmO/wN9q5vmmOxXvhm9mjaePt/EeTQToaTX9ULmw35KSPBzsz971R/PlRVHQLy5NMgbumBS0kVuRq
	k2zSuieYybs4Tq6JOIEyDMyJZ9T4TadYJJV/28JGU1AO7hYixUj9025E5nj0D1fMMCiZ7S9xLp3N4
	o4/o9iqUK/WgCxbQLE7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg6j0-0008Rp-NV; Tue, 02 Jun 2020 13:13:02 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg6it-0008RP-EG
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 13:12:56 +0000
Received: by mail-ed1-x541.google.com with SMTP id ce8so3919797edb.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jun 2020 06:12:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8g7Ls+vIXkfuMvNo2IIUxvgq+uqskVuFV2ZLecCOd+U=;
 b=WmEV7NmOAX2k53fkAQftGddV5x4AABtpMIFllPZpXmGxUBxnSZvJzak2khfBcShT0I
 E5zFZjyEZzeWREy0DlHEQw4hX8retYJxtQgEkHVAYALPcOzQpu2GU4hmK8bYBVfbRzm2
 /poEDhY5Cx44SODdrrx+p5ThvdX3nsO4gDLBN2H4VmDVe6RjwF3Oyb7lwhyznmKxgDgm
 rVgWSFBaafXx0+T+24eC6Qzv7X5KySXIxeGfbCbTGgWtTOe9xTutx8d08KdadQYTyXz0
 SW7ks4UrX7WzumVKgJyXY91xIx+AGHP0mo6MoxUHa7WNZDcfUCeOkVHEJyZl7H0q7lOo
 N4WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8g7Ls+vIXkfuMvNo2IIUxvgq+uqskVuFV2ZLecCOd+U=;
 b=DrqThcZYxBUtnUaXARm7K0AGw3AtTdxXPT+ohSuwiN18bM+LJ1jGK6O1K/FWv43Ku9
 naa+OrlrVtwrsnvQ4suze+YvuWp/A0BAgWRuX6m8AyKzY546BfA46ncCfMltLj9n2JX5
 a8g1+lz7wnrEBDtTvDB/NLYi1NJSIMOG/X6TYs99GbZ/C6sqGGtPewE5vWYicPiNmJ2D
 X3SCEE4Gq5VddG5lAFVcSr5iw0P320Syw0TdADbvwvGkvKvx1giYvTGGRCA2/Kr1CGao
 qbwNtbupdY36NASzTSNxNcFzTdlxOzNg/fvoRsWS7qGKPRts3HnK3VyZCCcjo5gSo/hU
 JUrg==
X-Gm-Message-State: AOAM5327srez/MZRiPw8HpIXAYgtv34oxaNVVRgVhn6l6Q+uKmJ4fWVc
 6X0NGJ2YANJeiY/WEaRw9DX4ou4pnHgds2V/LDBnng==
X-Google-Smtp-Source: ABdhPJxet/9MeFi9mna5d4ko2fYFSR9T/yenSe2U22wxXGF5Fww4vSgSJCdR5ImldPfBLEMBMLHbpxyRx3Qd5hEhOm4=
X-Received: by 2002:a05:6402:b8a:: with SMTP id
 cf10mr14882523edb.138.1591103570935; 
 Tue, 02 Jun 2020 06:12:50 -0700 (PDT)
MIME-Version: 1.0
References: <20200526104642.9526-1-mike.leach@linaro.org>
 <20200526104642.9526-5-mike.leach@linaro.org>
 <51fcc1b5-a4ab-04d1-e395-95df9f4745f7@arm.com>
In-Reply-To: <51fcc1b5-a4ab-04d1-e395-95df9f4745f7@arm.com>
From: Mike Leach <mike.leach@linaro.org>
Date: Tue, 2 Jun 2020 14:12:40 +0100
Message-ID: <CAJ9a7ViUVAttf3-Mb4zVeJ6+Ty=4yxg3MZeGPcGDc0UMVY_Xtg@mail.gmail.com>
Subject: Re: [PATCH v4 4/5] coresight: etm: perf: Add default sink selection
 to etm perf
To: Suzuki K Poulose <suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_061255_511593_41FB7A8C 
X-CRM114-Status: GOOD (  29.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
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
Cc: Coresight ML <coresight@lists.linaro.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Suzuki,

On Tue, 2 Jun 2020 at 12:40, Suzuki K Poulose <suzuki.poulose@arm.com> wrote:
>
> On 05/26/2020 11:46 AM, Mike Leach wrote:
> > Add default sink selection to the perf trace handling in the etm driver.
> > Uses the select default sink infrastructure to select a sink for the perf
> > session, if no other sink is specified.
> >
> > Signed-off-by: Mike Leach <mike.leach@linaro.org>
>
> This patch looks fine to me as such. But please see below for some
> discussion on the future support for other configurations.
>
>
> > ---
> >   .../hwtracing/coresight/coresight-etm-perf.c    | 17 ++++++++++++++---
> >   1 file changed, 14 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/hwtracing/coresight/coresight-etm-perf.c b/drivers/hwtracing/coresight/coresight-etm-perf.c
> > index 84f1dcb69827..1a3169e69bb1 100644
> > --- a/drivers/hwtracing/coresight/coresight-etm-perf.c
> > +++ b/drivers/hwtracing/coresight/coresight-etm-perf.c
> > @@ -226,9 +226,6 @@ static void *etm_setup_aux(struct perf_event *event, void **pages,
> >               sink = coresight_get_enabled_sink(true);
> >       }
> >
> > -     if (!sink)
> > -             goto err;
> > -
> >       mask = &event_data->mask;
> >
> >       /*
> > @@ -253,6 +250,16 @@ static void *etm_setup_aux(struct perf_event *event, void **pages,
> >                       continue;
> >               }
> >
> > +             /*
> > +              * No sink provided - look for a default sink for one of the
> > +              * devices. At present we only support topology where all CPUs
> > +              * use the same sink [N:1], so only need to find one sink. The
> > +              * coresight_build_path later will remove any CPU that does not
> > +              * attach to the sink, or if we have not found a sink.
> > +              */
> > +             if (!sink)
> > +                     sink = coresight_find_default_sink(csdev);
> > +
>
> While we are here, should we remove the "find enabled sink" if the csink
> is not specified via config. ? That step is problematic, as the user may
> not remember which sinks were enabled. Also, we can't hit that with
> perf tool as it prevents any invocation without sink (until this change).
>
> So may be this is a good time to get rid of that ?
>

You are correct - the  'sink = coresight_get_enabled_sink(true);' was
dead code until this patch.
However - if someone has set up their system using sysfs to enable
sinks, then should we not respect that rather than assume they made a
mistake?

Thinking about N:M topologies mentioned below - one method of handling
this is to enable relevant sinks and then let perf trace on any cores
that might use them.

> Also, we may need to do special handling for cases where there multiple
> sinks (ETRS) and the cpus in the event mask has different preferred
> sink. We can defer it for now as we don't claim to support such
> configurations yet.

Yes - the newer topologies will need some changes - beyond what we are
handling here.
However - especially for 1:1 -  the best way may be to always use the
default sink - as specifying multiple sinks on the perf command line
may be problematical.

> When we do, we could either :
>
> 1) Make sure the event is bound to a single CPU, in which case
> the sink remains the same for the event.
>
> OR
>
> 2) All the different "preferred" sinks (ETRs selected by the ETM) have
> the same capabilitiy. i.e, we can move around the "sink" specific
> buffers and use them where we end up using.

If here by "capabilities" we are talking about buffer vs system memory
type sinks then I agree. We may need in future to limit the search
algorithm to ensure that only the best system memory type sinks are
found and eliminate cores attached to only buffer type sinks.

>
> We can defer all of this, until we get platforms which ned the support.
>
> Suzuki

Thanks for the review.

Mike


-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
