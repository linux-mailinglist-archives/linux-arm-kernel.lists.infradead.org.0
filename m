Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FF2916C20
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 22:22:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4SxJzPqrMqKZwo3/vmXZ+ZP2Bz9JnEBRyOEUBGbLt4w=; b=Pc3Eol5cQxpQ9M
	eoyYdlmEnnLMUEUZmpj+SbdVnNVuhbmFZS1ulbw1ofqW9BG09hWAw2YQhcv2CF31TOR7M7qdpR0G9
	blU1+EzVkEmDhvaNjyGjlUP2dw0/GG0DHcdb5y3f70pq8pA6kbzXTdb3N1bJMtqDL9+o96hFv7f4g
	r/fqs8m8twzoRu//JvkROjFo0TZ+yzy/aWqjYqs7fGK5zDmB/CycVaPVRnB5xUM2hnsyA59JOBCQI
	wblEV2Q5JpVV0SZ6jj7q6EcJC9rNkcW4F0YRRJY/CwxygQoy8lERvgrKE/67Hg5xBSoQ8Vjm1a6y8
	jgQIQL3jJL3IlzvQl0aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO6bk-0005EJ-2n; Tue, 07 May 2019 20:22:36 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO6bd-0005Dt-1u
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 20:22:30 +0000
Received: by mail-io1-xd41.google.com with SMTP id z4so8655064iol.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 13:22:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=f/phaMWBl8w/orUI/9ZcUjqn97xNpkGoSxumQHQ36oo=;
 b=U7ktGtyL5obMT3Ns6vFGIRSK82bpBmCyHjyuBdkMA/x+xRRJhOrr4/xmTUzfNyCdYl
 4D8bG4tujLKy5OYi6Z/2D2my0tc7OmuGnvmXwNrmpHb2Huoa+7v7Kx7uL97pYJ+U3usP
 lPB8lJ9+yNaeTBqsxPnCY6WtQ0g3SHrb79Ey/Mwv0X6iwdTpxdqzzO4J2ZWXflbK6YXi
 LS8DJ5+jK+INMRhB8jYeIKkaVtMZNYX1Nb3bCs3iZst3UDVqBcGFJb+h0WvxSgRE0twr
 r2tb4Z/UIme7w8T2z0tD9JKAo+KELwZ8e2sMkyeanv7TQxhew0LMSx4whCGNNjPd9D6j
 EiZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=f/phaMWBl8w/orUI/9ZcUjqn97xNpkGoSxumQHQ36oo=;
 b=d+T/jZx9a0F1MaeE2Q+vgP5zePuXjaVZPcki6aT7YT7Kxwe2EwFnaSxX4NJ8hEZgsq
 fBKy/IHRKSd8OqCULeKlaYnrZ5RTtPME2nQIcPKqe1lEVPxNaZ/YIh9hg1SAs7urRLJd
 FgulxcoorCBVk4XMSnvj/JVhuMt4r+13WoROWT//JfQNPhS1Trv1InzEJ4S1zEx+GJu2
 +fiyZv+HK8G9eWqp2SQUj6sdDJACLbP7MGycoj10NlnnfeglnZH07Ru76l+INcxUS3XW
 M/edSDd6L5TBBLkZrCaBPPJd0V192J9AgJOM4RVwY4JZKcQH4q8qbifQMFPd9f11K9la
 3Wjw==
X-Gm-Message-State: APjAAAXYxLYJvEBva9aOj6p1DpuYMBf2ovvRXLHVfsV5oOfYWcTtUsE5
 JVKZgpK62I232Vwv6xuUCkv1F9bLcN12TanPkgL2Og==
X-Google-Smtp-Source: APXvYqz6K0++xnYrVO/nMmMDHzCmrnnJ30KtQKIfudJMzsziMdkOgJkw4NsAQTNp2qZF0i6awVk98pLh50NJVhkdTnY=
X-Received: by 2002:a6b:8bc8:: with SMTP id n191mr5033675iod.86.1557260547792; 
 Tue, 07 May 2019 13:22:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190501175052.29667-1-mathieu.poirier@linaro.org>
 <20190501175052.29667-2-mathieu.poirier@linaro.org>
 <808f4985-bbc8-6473-52c2-31b3743199bb@arm.com>
In-Reply-To: <808f4985-bbc8-6473-52c2-31b3743199bb@arm.com>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Tue, 7 May 2019 14:22:16 -0600
Message-ID: <CANLsYkxzFcGJZm5Vd2x=467+6t1Wm6YqHGMd3sQMh-Eak-nFRg@mail.gmail.com>
Subject: Re: [PATCH 1/5] coresight: Fix buffer size in snapshot mode
To: Suzuki K Poulose <suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_132229_195498_565440EA 
X-CRM114-Status: GOOD (  24.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Jon Corbet <corbet@lwn.net>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Coresight ML <coresight@lists.linaro.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Mike Leach <Mike.leach@arm.com>, Leo Yan <leo.yan@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hey Suzuki,

On Tue, 7 May 2019 at 02:50, Suzuki K Poulose <suzuki.poulose@arm.com> wrote:
>
> Hi Mathieu,
>
> On 01/05/2019 18:50, Mathieu Poirier wrote:
> > In snapshot mode the buffer used by the sink devices need to be
> > equal to the ring buffer size in order for the user space mechanic
> > to work properly.
>
> The patch as such looks good to me. However I don't understand the
> need for it for ETB and ETF. We can't use the AUX buf directly anyway
> for these devices. We could always pretend that there was no overflow and
> simply copy it to the AUX buf. The decoder would know the end of trace packets.
> What am I missing here ?

The problem here is to figure out how to recognised a buffer wrap has
occurred in function cs_etm_find_snapshot() and how to compute the
value of '*old'.  But looking at patch 4/5 again I came up with a
better way to proceed, one that should remove the need for this patch.
I will send another revision.

Mathieu

>
> >
> > Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> > ---
> >   drivers/hwtracing/coresight/coresight-etb10.c | 23 +++++++++++++++++++
> >   .../hwtracing/coresight/coresight-tmc-etf.c   | 20 ++++++++++++++++
> >   .../hwtracing/coresight/coresight-tmc-etr.c   |  8 +++++--
> >   3 files changed, 49 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/hwtracing/coresight/coresight-etb10.c b/drivers/hwtracing/coresight/coresight-etb10.c
> > index 4ee4c80a4354..0764647b92bc 100644
> > --- a/drivers/hwtracing/coresight/coresight-etb10.c
> > +++ b/drivers/hwtracing/coresight/coresight-etb10.c
> > @@ -374,7 +374,30 @@ static void *etb_alloc_buffer(struct coresight_device *csdev,
> >                             int nr_pages, bool overwrite)
> >   {
> >       int node, cpu = event->cpu;
> > +     u32 capacity;
> >       struct cs_buffers *buf;
> > +     struct etb_drvdata *drvdata;
> > +
> > +     /*
> > +      * In snapsot mode the size of the perf ring buffer needs to be equal
> > +      * to the size of the device's internal memory if we want to reuse the
> > +      * generic AUX buffer management mechanic.
> > +      *
> > +      * For example (assuming 4096 byte page size):
> > +      *
> > +      *    # cat /sys/bus/coresight/devices/20010000.etb/mgmt/rdp
> > +      *    0x2000
> > +      *    # perf record -e cs_etm/@20010000.etf/ -S -m,8 --per-thread $APP
> > +      *
> > +      */
>
> If at all we need to do this, Is there a way to force the perf to use the
> appropriate size for AUX buf depending on the sink ? I would prefer that instead
> of finding this magic number and calculating it based on the page_size. If we
> could not do that easily, it may be a good idea to expose something like,
> "buffer_pages" under sysfs to help the user a bit.
>
> Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
