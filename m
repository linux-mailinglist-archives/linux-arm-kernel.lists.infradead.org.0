Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D53D2418C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 21:53:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O+SnTajoFL7jgHYlIv0Q8+yzT/op1zWEwQoYxvthNpg=; b=TFVKEa9VcN55gC
	B/hrDn7Y4fjY2qXXiSJWOvDGaIjr4ezxmRi1NLVsOlUH82zDg9UAv0gIvL4s1m8nKxARtJzaYxmSB
	GKAUIjpWqq9jvKD0/S89mo3v5+Gl84J2GsMz5vuHOS61TVx2IktN8Iu30gVJZF//fq/zVJyjjjX4R
	KaYpWsOV8zHWUmH53T0E1j0xY58wFRP1W7jM0LA/I4uFDMBpB010A9vhsHGMEPocymgJgMRVFg0A7
	MXXrKVWiwFELMzDLWibfbn0/AC8Cm8NLis4j/pt+lbDc8QPgH+PrCXr4P9DLvNvSq8T6DhZYhMypQ
	VemhOafF5grMqq63QfwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSoM5-0006hi-GA; Mon, 20 May 2019 19:53:53 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSoLx-0006h2-S5
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 19:53:47 +0000
Received: by mail-io1-xd42.google.com with SMTP id z4so12065932iol.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 12:53:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qRSqkUf+llYU4VO85zANUOiRZ8w9zyh0JSFN1AoMWgU=;
 b=UvfVfnWhlV4YRRUww7aBQVsjWECgvc+m8q6ZtgLft6xVvaLtg6g4KOyNbgK548t+QH
 dSKucppaXHOUqOcKlpVDTjsFWCGmbC3FBRvrLMmosWxCCADKrZOJJtNNCJGWzxjq9LO7
 cUQPoscyQBW1a1Ah6aKF5KVfCkTwriY+eGYEiSRiDDADreqz8N94T7VOxrIvSYJ7Xsd7
 jr0LKmFdvLDr8z5VWvvgvm+/Eva9DWi1F2ngaHeHjUKNexpfs37afpolE9ir6cI8e+s0
 lOYRAdeCdK4r0UUAW4w/n7aikx1EJo5CIyDW58Dz6pjbJdvmxmWSgc9+aLbUcYXYw4bN
 0fbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qRSqkUf+llYU4VO85zANUOiRZ8w9zyh0JSFN1AoMWgU=;
 b=fGlQONVAcPhhd8ANVBdO11twfQIGS4rW9SyM1VRtKyclAAUcaG9fTyipTMH8N1KQfY
 Nl65u5HyXF3NBYzqQ/x8pDqWyRHlwLL+5n1uqs+GHau7JqAhqxlkG3DEJWIkV7cC8PdX
 hDO+uNkSHU9UssqCBKWzAhw5AyFK9+VfkdKqSlygD6dTlakv3TtdiLG7MJ0ByiF1QZpW
 PwiM2Ef23P10nWUZtohgMjB1nQ9cG36om9POK3t7A0J/dWK2FwQoHOL/WmWao+7i796y
 WH0vRe9XFqrlDxXNZy92Chl91nDrNVCigebBiDZXqbHXZ1oBmqVJsSKcgTjwFFYOl4zB
 1YGg==
X-Gm-Message-State: APjAAAWDOaNJ0S9Ewxh33E6aDYdrxYcwTzoPbUwLDMJFWQ/f1F4nbQaO
 ax49h0Wk02gGLf73fJFIWpGJQpaJiHBKO+3ECf8Ggw==
X-Google-Smtp-Source: APXvYqx2EqsSxBrbcEbmUgONTOe+kK6NPuSxxRx6QbmAxakVCHiJ4zE+CU+DQaU/vZwavRuisclhEK3YuQ0DAIUC+40=
X-Received: by 2002:a5d:9e01:: with SMTP id h1mr1500956ioh.57.1558382021049;
 Mon, 20 May 2019 12:53:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190514194018.23420-1-mathieu.poirier@linaro.org>
 <20190514194018.23420-7-mathieu.poirier@linaro.org>
 <20190516150005.GG12557@leoy-ThinkPad-X240s>
In-Reply-To: <20190516150005.GG12557@leoy-ThinkPad-X240s>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Mon, 20 May 2019 13:53:29 -0600
Message-ID: <CANLsYkyTKTQJhMJ-p-_z6AvE4UfmPJSt1pdDVvwRCBOrPK+B7Q@mail.gmail.com>
Subject: Re: [PATCH V2 6/6] perf tools: Properly set the value of 'old' and
 'head' in snapshot mode
To: Leo Yan <leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_125345_971602_85517144 
X-CRM114-Status: GOOD (  30.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "Suzuki K. Poulose" <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Coresight ML <coresight@lists.linaro.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 16 May 2019 at 09:00, Leo Yan <leo.yan@linaro.org> wrote:
>
> On Tue, May 14, 2019 at 01:40:18PM -0600, Mathieu Poirier wrote:
> > This patch adds the necessay intelligence to properly compute the value
> > of 'old' and 'head' when operating in snapshot mode.  That way we can get
> > the latest information in the AUX buffer and be compatible with the
> > generic AUX ring buffer mechanic.
> >
> > Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> > ---
> >  tools/perf/arch/arm/util/cs-etm.c | 124 ++++++++++++++++++++++++++++--
> >  1 file changed, 119 insertions(+), 5 deletions(-)
> >
> > diff --git a/tools/perf/arch/arm/util/cs-etm.c b/tools/perf/arch/arm/util/cs-etm.c
> > index 911426721170..3734e3fd18f8 100644
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
> > @@ -536,16 +538,126 @@ static int cs_etm_info_fill(struct auxtrace_record *itr,
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
> > +     /* Free'ed in cs_etm_recording_free() */
> > +     wrapped = reallocarray(ptr->wrapped, cnt, sizeof(bool));
> > +     if (!wrapped)
> > +             return -ENOMEM;
> > +
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
>
> I think here should be:
>                 if (buf[i << 3])
>

It would be if buf[] was a char *, but it is a u64 *.

> Otherwise, this patch looks good to me.
>
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
> > -     pr_debug3("%s: mmap index %d old head %zu new head %zu size %zu\n",
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
> > +     pr_debug3("%s: mmap index %d old head %lx new head %lx size %lx\n",
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
> > @@ -586,6 +698,8 @@ static void cs_etm_recording_free(struct auxtrace_record *itr)
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
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
