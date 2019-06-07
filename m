Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1CB338D9A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 16:45:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=30DWJPe3ik7+z9tUYgPAifqSJXLe9PsH3Y/792+BhOM=; b=dhvH0pIsGDnR+q
	pf6LCIiblKeWXeBwZn9GeqUmAG1RhNTjCoU+Zc5+LRknLXLDuCb8jb+AlvUPoPK+hoG8evdUTOMn1
	1OuDu6N8uZZYiE2E3SiOrN8Cr7eg2BylTM7y6tiElBxM1v4G7f03VLPIqFb++44+3QFaHbbFv9srW
	Y6bYjRx1XV7vVHiZ9NRCrPIlA0szsEmp1qfS2vCDgu7f9P7JubRGLg2HRxBCPhpigFkz4CrCknS29
	1fg2Ae+EQblnprHH0O2sK6+XdPT+ChDdqA/T5peOoQ5eJj++zvOZGPBmr+y4wBq6U0XAxji/VYPBx
	BIvT3gCU274Vq09+vo2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZG7G-00080o-4p; Fri, 07 Jun 2019 14:45:14 +0000
Received: from mail-it1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZG74-0007Ny-QH
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 14:45:04 +0000
Received: by mail-it1-x141.google.com with SMTP id a186so3095826itg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 07:45:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0461UCKFoYu7Rdu8kwzbsR/mRhSFbTO2AAbs+xAqEe8=;
 b=Pda6oP3d4skdQ2p0gZWXIABX6SCh0/CQLL5/TN+p7/4QZ48etg+wtnhwMMUx6SKsoV
 kdKMUgzUAJPFEsyxhG80zygITwLxXK02Xc3gifTmplLjlf6UAevPd79GDDjRt6rNq59y
 aIjQy+WKPTdGmgkPnNXT6y7856CHhjMvSkCExgN1cxQ2KFgzTYdwi6gelqGN82ujKcRR
 4xJjHdaIQvFJh1ywa3Mdse9m9AW0oqvKd5ac4ye1dtgL3/zSctxElomulabRHy1YCp7B
 hhOu8F5Wxu3q3S9hoXnEmn2HFR5JkddExLoOqUBGt0D4kiXaWS1AGL5YkmMeNBrOLBTG
 i6Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0461UCKFoYu7Rdu8kwzbsR/mRhSFbTO2AAbs+xAqEe8=;
 b=YH5pkkIN9gnXyJ9yp4BCrFDZULh/SFc195P5BXb5PmWsbg2SgPcBKTWrsgokUClNle
 tSIO22GQLuAWxKK4e7g7dxFaGy+/Et6wivNTR5UM+1/VnvLc3MvKyAZcr9zUno1qly+6
 u4xDYABQdlW+4rZO5lnIrSHgIeRtZJfHjGpbJyZ9V7mllMNioRHbGbXLrQmoENGQhTXE
 YOFPoNE+2WS0qbOZkmINwVY3m6+V+C1Tbh76XAuUILsi0zn8V30qW839k4qzL4pdW4yD
 4mm+Z2FlNYfJhDn1tOncC8fdT7RBKz+v20IDKZwOnAq5E52OBW8c+WqnIrIso5hbg3gd
 0NEA==
X-Gm-Message-State: APjAAAUkDotHS2bmXGCJYV+vNo39dNP8ajDX5E2eaO5laqWmnfd8v/qw
 KKV5UWNt0MpBiP1+VlE0yi6d3zDisn6wiCOcDhTH3MJs
X-Google-Smtp-Source: APXvYqzrKoOE+6wc8YTZ6KchVxmLj9eHPCQREDvKnJwJlTQngGpbtDOqcZsj2EHYvg5QTfN/Pdz0fvzzd0ENCF4PUAk=
X-Received: by 2002:a24:c384:: with SMTP id s126mr4186373itg.1.1559918702032; 
 Fri, 07 Jun 2019 07:45:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190605161633.12245-1-mathieu.poirier@linaro.org>
 <20190606201056.GJ21245@kernel.org>
In-Reply-To: <20190606201056.GJ21245@kernel.org>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Fri, 7 Jun 2019 08:44:51 -0600
Message-ID: <CANLsYky1XFBjO-F9Sf_Spkw+p_Cm5n+DDUaAbKMmHkc+GgeHMQ@mail.gmail.com>
Subject: Re: [PATCH] perf tools: Properly set the value of 'old' and 'head' in
 snapshot mode
To: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_074502_899216_F6BA06F4 
X-CRM114-Status: GOOD (  31.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "Suzuki K. Poulose" <suzuki.poulose@arm.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Leo Yan <leo.yan@linaro.org>,
 Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 6 Jun 2019 at 14:11, Arnaldo Carvalho de Melo
<arnaldo.melo@gmail.com> wrote:
>
> Em Wed, Jun 05, 2019 at 10:16:33AM -0600, Mathieu Poirier escreveu:
> > This patch adds the necessay intelligence to properly compute the value
> > of 'old' and 'head' when operating in snapshot mode.  That way we can get
> > the latest information in the AUX buffer and be compatible with the
> > generic AUX ring buffer mechanic.
>
> Leo, have you had the chance to test/review this one? Suzuki?

Leo did test this before and added his Tested-by on the Coresight
mailing list.  I did not carried it here because I changed the call to
reallocarray() to realloc() in order to avoid cross compilation
problems.  I think it is safe enough but other people's opinion may
differ so I played it safe.  Leo, please test this again if/when you
have the time.

>
> I also changed the subject to:
>
>   [PATCH] perf cs-etm: Properly set the value of 'old' and 'head' in snapshot mode
>
> So that when looking at a 'git log --oneline' one can have the proper
> context and know that its about cs-etm.

Very well.

Mathieu

>
> - Arnaldo
>
> > Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> > ---
> >  tools/perf/arch/arm/util/cs-etm.c | 127 +++++++++++++++++++++++++++++-
> >  1 file changed, 123 insertions(+), 4 deletions(-)
> >
> > diff --git a/tools/perf/arch/arm/util/cs-etm.c b/tools/perf/arch/arm/util/cs-etm.c
> > index 911426721170..0a278bbcaba6 100644
> > --- a/tools/perf/arch/arm/util/cs-etm.c
> > +++ b/tools/perf/arch/arm/util/cs-etm.c
> > @@ -31,6 +31,8 @@ struct cs_etm_recording {
> >       struct auxtrace_record  itr;
> >       struct perf_pmu         *cs_etm_pmu;
> >       struct perf_evlist      *evlist;
> > +     int                     wrapped_cnt;
> > +     bool                    *wrapped;
> >       bool                    snapshot_mode;
> >       size_t                  snapshot_size;
> >  };
> > @@ -536,16 +538,131 @@ static int cs_etm_info_fill(struct auxtrace_record *itr,
> >       return 0;
> >  }
> >
> > -static int cs_etm_find_snapshot(struct auxtrace_record *itr __maybe_unused,
> > +static int cs_etm_alloc_wrapped_array(struct cs_etm_recording *ptr, int idx)
> > +{
> > +     bool *wrapped;
> > +     int cnt = ptr->wrapped_cnt;
> > +
> > +     /* Make @ptr->wrapped as big as @idx */
> > +     while (cnt <= idx)
> > +             cnt++;
> > +
> > +     /*
> > +      * Free'ed in cs_etm_recording_free().  Using realloc() to avoid
> > +      * cross compilation problems where the host's system supports
> > +      * reallocarray() but not the target.
> > +      */
> > +     wrapped = realloc(ptr->wrapped, cnt * sizeof(bool));
> > +     if (!wrapped)
> > +             return -ENOMEM;
> > +
> > +     wrapped[cnt - 1] = false;
> > +     ptr->wrapped_cnt = cnt;
> > +     ptr->wrapped = wrapped;
> > +
> > +     return 0;
> > +}
> > +
> > +static bool cs_etm_buffer_has_wrapped(unsigned char *buffer,
> > +                                   size_t buffer_size, u64 head)
> > +{
> > +     u64 i, watermark;
> > +     u64 *buf = (u64 *)buffer;
> > +     size_t buf_size = buffer_size;
> > +
> > +     /*
> > +      * We want to look the very last 512 byte (chosen arbitrarily) in
> > +      * the ring buffer.
> > +      */
> > +     watermark = buf_size - 512;
> > +
> > +     /*
> > +      * @head is continuously increasing - if its value is equal or greater
> > +      * than the size of the ring buffer, it has wrapped around.
> > +      */
> > +     if (head >= buffer_size)
> > +             return true;
> > +
> > +     /*
> > +      * The value of @head is somewhere within the size of the ring buffer.
> > +      * This can be that there hasn't been enough data to fill the ring
> > +      * buffer yet or the trace time was so long that @head has numerically
> > +      * wrapped around.  To find we need to check if we have data at the very
> > +      * end of the ring buffer.  We can reliably do this because mmap'ed
> > +      * pages are zeroed out and there is a fresh mapping with every new
> > +      * session.
> > +      */
> > +
> > +     /* @head is less than 512 byte from the end of the ring buffer */
> > +     if (head > watermark)
> > +             watermark = head;
> > +
> > +     /*
> > +      * Speed things up by using 64 bit transactions (see "u64 *buf" above)
> > +      */
> > +     watermark >>= 3;
> > +     buf_size >>= 3;
> > +
> > +     /*
> > +      * If we find trace data at the end of the ring buffer, @head has
> > +      * been there and has numerically wrapped around at least once.
> > +      */
> > +     for (i = watermark; i < buf_size; i++)
> > +             if (buf[i])
> > +                     return true;
> > +
> > +     return false;
> > +}
> > +
> > +static int cs_etm_find_snapshot(struct auxtrace_record *itr,
> >                               int idx, struct auxtrace_mmap *mm,
> > -                             unsigned char *data __maybe_unused,
> > +                             unsigned char *data,
> >                               u64 *head, u64 *old)
> >  {
> > +     int err;
> > +     bool wrapped;
> > +     struct cs_etm_recording *ptr =
> > +                     container_of(itr, struct cs_etm_recording, itr);
> > +
> > +     /*
> > +      * Allocate memory to keep track of wrapping if this is the first
> > +      * time we deal with this *mm.
> > +      */
> > +     if (idx >= ptr->wrapped_cnt) {
> > +             err = cs_etm_alloc_wrapped_array(ptr, idx);
> > +             if (err)
> > +                     return err;
> > +     }
> > +
> > +     /*
> > +      * Check to see if *head has wrapped around.  If it hasn't only the
> > +      * amount of data between *head and *old is snapshot'ed to avoid
> > +      * bloating the perf.data file with zeros.  But as soon as *head has
> > +      * wrapped around the entire size of the AUX ring buffer it taken.
> > +      */
> > +     wrapped = ptr->wrapped[idx];
> > +     if (!wrapped && cs_etm_buffer_has_wrapped(data, mm->len, *head)) {
> > +             wrapped = true;
> > +             ptr->wrapped[idx] = true;
> > +     }
> > +
> >       pr_debug3("%s: mmap index %d old head %zu new head %zu size %zu\n",
> >                 __func__, idx, (size_t)*old, (size_t)*head, mm->len);
> >
> > -     *old = *head;
> > -     *head += mm->len;
> > +     /* No wrap has occurred, we can just use *head and *old. */
> > +     if (!wrapped)
> > +             return 0;
> > +
> > +     /*
> > +      * *head has wrapped around - adjust *head and *old to pickup the
> > +      * entire content of the AUX buffer.
> > +      */
> > +     if (*head >= mm->len) {
> > +             *old = *head - mm->len;
> > +     } else {
> > +             *head += mm->len;
> > +             *old = *head - mm->len;
> > +     }
> >
> >       return 0;
> >  }
> > @@ -586,6 +703,8 @@ static void cs_etm_recording_free(struct auxtrace_record *itr)
> >  {
> >       struct cs_etm_recording *ptr =
> >                       container_of(itr, struct cs_etm_recording, itr);
> > +
> > +     zfree(&ptr->wrapped);
> >       free(ptr);
> >  }
> >
> > --
> > 2.17.1
>
> --
>
> - Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
