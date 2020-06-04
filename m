Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68D831EECCB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 23:08:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PhuZ94BKclsMGE8GFRqzUUm9nt8tGbSvl7Sy3AxDLQM=; b=RcD2eKfE+LCL9J
	XWgu2CLzXYDOFWRhA1Uwmcm4KkCo60ccCxFU05h1QQ45MZIjlcpmcvNA4oUWwTjnMoAujxGb1v4t5
	xhf2HosbWH2fzNSZvIMPR1DjwSwdyAwl0PJDmJAj5LnB047fl2ZezkoMBMyVn7uCQggPqTibCb8Xz
	lr3T9wtuRYQdizN77DJ1jxJY6EQ8y3JdoD5FKcThcbbTzHW3cNkWdWs3+q0Ghy7fK0b6Te89z8PTo
	2YRuW0JNYYVMwqy8Tjx+VBf/EKMxFlBHO4KNhVhk1q8E2a9rDpDFqWSMvGPpvttwRgVZexzCwYAg5
	QCpLiO4m0uZaMgjyF/cA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgx5z-0004IV-7L; Thu, 04 Jun 2020 21:08:15 +0000
Received: from mail-ej1-x643.google.com ([2a00:1450:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgx5s-0004Hq-2M
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 21:08:09 +0000
Received: by mail-ej1-x643.google.com with SMTP id e2so7601950eje.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jun 2020 14:08:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YPPBBiNT2SKsShyv/c2aMLcrEmPSED24p+fnmyFjH+I=;
 b=sVtEqTg4nAuvTINaU9U77dILUBy37oX7aZ1vkU1eBGpYslgoBhJuXyOU7h5yEWKfJ7
 iKh9ZYtS8jfxoJfNkPHlius4y5viBGsVI5AH3jvOD2KXXAIDcLwytwuu0B5pG2t1xrNu
 jg6ziGM0zUp0yAnoEDPHtcgdDIeyNTPanAgb0SdnBz4VSXnfWZweV9H0BrBpCWzDZD6R
 3xiqpGmjWMl5b0Rktv+xZrcTSFWZUjzZD0d91eGt58oJhywOGAIi+o9tKPNsJEf/0zhE
 +rgLxDSYoutmSZst+PioG+Bc77cJpH0Yea0tsVJRfyXW1i7bvBsaOc09pObAbPA4YN7P
 JkGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YPPBBiNT2SKsShyv/c2aMLcrEmPSED24p+fnmyFjH+I=;
 b=RyB4sGKdi5XbjEhzNnoHfUlQkbRrG9MzH+zYFOUtW3xmhADCrzZT0WFRlQzqTmU8p9
 74w0tdJGdc5hflVPTScYDr7YgAiXJ8Pzhsm098Ip9sVtkF2qTSm8gJp66mkyULz26F4c
 13drN3ujRk180IGNElpBLO+b4QKtCeZquGYfNQjYdgcvQZDeKHurhWfpzSZlGoQJ4tW+
 96BbDxlnrZMjY4bddCbkwSnhG3SOn2orz+Ta5wJr5eTKtrWqqVSCmAIZvHTbA+NCPs+K
 6q6qP9WcklpgClpzX/zGK8fp4vc4oNXD7QSsig3IHje7H+5QGgz/B9qyCkKNTiRUKiqN
 LiAg==
X-Gm-Message-State: AOAM531hqWRxrG8QcitmM/qhbkZyoYwlpRtS3Tqetk3rt4D9vQw/GP/Z
 5RxUFjq1f8lxBdGCpu5p76m3x0WmOVarvZh3WGvUgA==
X-Google-Smtp-Source: ABdhPJzszuZAsdMDfHuurP5mzAsGQ/osLTb3gewczdU9pvKFlqowoRAzeq9A5yH3TuNSs3Rq/u0o40U0Wnh7GdK5jaQ=
X-Received: by 2002:a17:906:538d:: with SMTP id
 g13mr5489762ejo.194.1591304885515; 
 Thu, 04 Jun 2020 14:08:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200526104642.9526-1-mike.leach@linaro.org>
 <20200526104642.9526-5-mike.leach@linaro.org>
 <51fcc1b5-a4ab-04d1-e395-95df9f4745f7@arm.com>
 <CAJ9a7ViUVAttf3-Mb4zVeJ6+Ty=4yxg3MZeGPcGDc0UMVY_Xtg@mail.gmail.com>
 <73ce6741-0361-7443-6714-56e8d64d49e1@arm.com> <20200602165911.GA23450@xps15>
In-Reply-To: <20200602165911.GA23450@xps15>
From: Mike Leach <mike.leach@linaro.org>
Date: Thu, 4 Jun 2020 22:07:54 +0100
Message-ID: <CAJ9a7VhT+C7KoXSDy0gehp-g=bTb6PZYhA8z+eTRn3NW9zbEUg@mail.gmail.com>
Subject: Re: [PATCH v4 4/5] coresight: etm: perf: Add default sink selection
 to etm perf
To: Mathieu Poirier <mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_140808_146662_37F027CD 
X-CRM114-Status: GOOD (  38.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:643 listed in]
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
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Tue, 2 Jun 2020 at 17:59, Mathieu Poirier <mathieu.poirier@linaro.org> wrote:
>
> On Tue, Jun 02, 2020 at 02:29:30PM +0100, Suzuki K Poulose wrote:
> > On 06/02/2020 02:12 PM, Mike Leach wrote:
> > > Hi Suzuki,
> > >
> > > On Tue, 2 Jun 2020 at 12:40, Suzuki K Poulose <suzuki.poulose@arm.com> wrote:
> > > >
> > > > On 05/26/2020 11:46 AM, Mike Leach wrote:
> > > > > Add default sink selection to the perf trace handling in the etm driver.
> > > > > Uses the select default sink infrastructure to select a sink for the perf
> > > > > session, if no other sink is specified.
> > > > >
> > > > > Signed-off-by: Mike Leach <mike.leach@linaro.org>
> > > >
> > > > This patch looks fine to me as such. But please see below for some
> > > > discussion on the future support for other configurations.
> > > >
> > > >
> > > > > ---
> > > > >    .../hwtracing/coresight/coresight-etm-perf.c    | 17 ++++++++++++++---
> > > > >    1 file changed, 14 insertions(+), 3 deletions(-)
> > > > >
> > > > > diff --git a/drivers/hwtracing/coresight/coresight-etm-perf.c b/drivers/hwtracing/coresight/coresight-etm-perf.c
> > > > > index 84f1dcb69827..1a3169e69bb1 100644
> > > > > --- a/drivers/hwtracing/coresight/coresight-etm-perf.c
> > > > > +++ b/drivers/hwtracing/coresight/coresight-etm-perf.c
> > > > > @@ -226,9 +226,6 @@ static void *etm_setup_aux(struct perf_event *event, void **pages,
> > > > >                sink = coresight_get_enabled_sink(true);
> > > > >        }
> > > > >
> > > > > -     if (!sink)
> > > > > -             goto err;
> > > > > -
> > > > >        mask = &event_data->mask;
> > > > >
> > > > >        /*
> > > > > @@ -253,6 +250,16 @@ static void *etm_setup_aux(struct perf_event *event, void **pages,
> > > > >                        continue;
> > > > >                }
> > > > >
> > > > > +             /*
> > > > > +              * No sink provided - look for a default sink for one of the
> > > > > +              * devices. At present we only support topology where all CPUs
> > > > > +              * use the same sink [N:1], so only need to find one sink. The
> > > > > +              * coresight_build_path later will remove any CPU that does not
> > > > > +              * attach to the sink, or if we have not found a sink.
> > > > > +              */
> > > > > +             if (!sink)
> > > > > +                     sink = coresight_find_default_sink(csdev);
> > > > > +
> > > >
> > > > While we are here, should we remove the "find enabled sink" if the csink
> > > > is not specified via config. ? That step is problematic, as the user may
> > > > not remember which sinks were enabled. Also, we can't hit that with
> > > > perf tool as it prevents any invocation without sink (until this change).
>
> Old version of perf tools will take sinks selected on the perf command line and
> use the sysfs to communicate that to the kernel.  Granted there may not be that
> many (if any), removing coresight_get_enabled_sink() will break those
> implementation.
>
> The real question is if keeping the functionatlity around so troublesome that it
> overweighs the drawbacks of removing it.
>
> > > >
> > > > So may be this is a good time to get rid of that ?
> > > >
> > >
> > > You are correct - the  'sink = coresight_get_enabled_sink(true);' was
> > > dead code until this patch.
> > > However - if someone has set up their system using sysfs to enable
> > > sinks, then should we not respect that rather than assume they made a
> > > mistake?
> >
> > If someone really wants to use a specific sink, then they could always
> > specify it via the config attribute and it will be honoured. We need not
> > carry along this non-intuitive hinting.
> >

Problem is - as mentioned below - config can only specify one sink, so
when we support 1:1 / N:M topology we need a way of specifying
multiple sinks. This is one viable option - especially where we are
using entire system configuration settings.

As Mathieu points out - there is little harm in leaving this in - if
we take it out now, we will probably have to replace it with something
similar anyway.

> > >
> > > Thinking about N:M topologies mentioned below - one method of handling
> > > this is to enable relevant sinks and then let perf trace on any cores
> > > that might use them.
> > >
> > > > Also, we may need to do special handling for cases where there multiple
> > > > sinks (ETRS) and the cpus in the event mask has different preferred
> > > > sink. We can defer it for now as we don't claim to support such
> > > > configurations yet.
> > >
> > > Yes - the newer topologies will need some changes - beyond what we are
> > > handling here.
> > > However - especially for 1:1 -  the best way may be to always use the
> > > default sink - as specifying multiple sinks on the perf command line
> > > may be problematical.
> > >
> > > > When we do, we could either :
> > > >
> > > > 1) Make sure the event is bound to a single CPU, in which case
> > > > the sink remains the same for the event.
> > > >
> > > > OR
> > > >
> > > > 2) All the different "preferred" sinks (ETRs selected by the ETM) have
> > > > the same capabilitiy. i.e, we can move around the "sink" specific
> > > > buffers and use them where we end up using.
> > >
> > > If here by "capabilities" we are talking about buffer vs system memory
> > > type sinks then I agree. We may need in future to limit the search
> >
> > Not necessarily. e.g, if we ever get two different types of system
> > memory sinks, (e.g, a global ETR and a dedicate "new" sink for a
> > cluster), we can't keep switching between the two sinks depending on how
> > they use the buffers. (i.e, direct buffer vs double copy)
> >

I would have thought it is an issue for the sink driver to sort this
out on an individual basis. Multiple sinks I would think implies
multiple perf buffers per intelPT, so each sink should have its own
buffer, and hence deal with it in a sink specific way?
Anyhow - as you say - something that can be deferred till we add the
multi-sink support.

Cheers

Mike

> > Suzuki




--
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
