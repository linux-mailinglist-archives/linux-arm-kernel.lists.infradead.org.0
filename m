Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4473F16984
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 19:44:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YzdUSfjd6LCOpvwm4GnIm1Aplnx49FyVWwXm9m4XXp4=; b=TXT+8fsATdi7M8
	dBUfLEUbwKgmrtL4jqj4QcYPlhg5GevGy30+2DaW6WGHJ6aU78V1DWfK0Z+1jwKXP8RS5+8Q29id9
	+yMU3AOM2AFZKbNBuoe8a00fN8NFG+WYb8Lu9AfI6rk7Hxe0S26KYeBvUpWks4GUNpztSIWgbccME
	A+8hySV0N1+4lWBJMACbbAY9GLWEj/tAaQt3RMK2ODho1xW/8VNRMzc19NJ371czKtpxp/fXkZvJ0
	Wyor6YEaXdXy0hH2jZe75bjbHKKILNr4dCwoEFy5QRaYggQAFzdhnD+B1edr58+/LAb+zuOCaXLTj
	l/gukg2BwS9+VJf/o7yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO492-0003it-A3; Tue, 07 May 2019 17:44:48 +0000
Received: from mail-it1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO48t-0003iD-3A
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 17:44:40 +0000
Received: by mail-it1-x142.google.com with SMTP id q132so12649649itc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 10:44:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OWOmD7B2wrsuXfVKXRNQbAIrjnHAMSxxn6y+KOtz1T0=;
 b=jBOnhQ3vkP3XixuoZb0iwXnEhSE8/Y0qMYypO33w3jKHep7rQAeBj1dPyFhkERyGyz
 cpNlIz2h3JDvSo5to6ju0aVRRNfZL3bHEkibCtTiGzME3sZ+vUchJJNdtwtFYEBuWjl+
 A+EUhHvyJaBEDmidicQSLag8HK6xmcIeQPxpLnrOY64YswRRyt/BzkHTgVRGyEdJY2vp
 6lpfXYhH8dLh4r1tZIHoFbeTJFkEiHvkY1KbSwRCNLKXj1ANvbDlOaX3GwX131oMCVyy
 1+YtnGnbcYOk+crOJlmCx2GPVEv7CXelvu4jRKt8EiGDAK0fVnAJmZ6CJ3Vf4eC3iHUl
 J0/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OWOmD7B2wrsuXfVKXRNQbAIrjnHAMSxxn6y+KOtz1T0=;
 b=n7AdRFCbbQl/0+s+Kg3DgLNGIAJjmZ3c4A613PZ5DRuFdypClUpvLPqIBysG8HAjuM
 30s/kCfGjZhVrbjvjdNuMt+REpbTYa2G773fz2jQMfi08OPhOdd2svfc7klRVWSMEZYs
 NwfSd7gFYsqbMlxi9vuZ4xfChpCmu9GwSTCXZAyKV3LRUxD4czb1yJLU8NR8nSd5h/mW
 /en34r86i/+vcOIsY1lLyKROZ/WWr7T5eaZoXFckNdcw0jYcX4ECcKZaiq+4JmHlyc6n
 ZCylcR1R/zzcuO1han2MIlSYXbt8/oxjdjyGitHlgdPVjYXGQWpvvNxhbdqhAhobTGe/
 wwVQ==
X-Gm-Message-State: APjAAAXNlgVht/19MVJWtS1R2GkG/oy4XdFbMKSdt53b47Sl6D7vprgb
 8JHTSPPOq7gXwogHFvCRCT2bhI7NijD9Du5Cmeb9ywf2
X-Google-Smtp-Source: APXvYqyOIMqweafFLPjPziDVqQDwDeQjPG7YjA/RXudSIOMfIh/Gu2oc2axR8/oSm2JBJfbxS5DMOMZEVNpfo9NgEOY=
X-Received: by 2002:a24:de41:: with SMTP id d62mr21827830itg.175.1557251078098; 
 Tue, 07 May 2019 10:44:38 -0700 (PDT)
MIME-Version: 1.0
References: <20190501175052.29667-1-mathieu.poirier@linaro.org>
 <20190501175052.29667-4-mathieu.poirier@linaro.org>
 <20190507082945.GC21730@leoy-ThinkPad-X240s>
In-Reply-To: <20190507082945.GC21730@leoy-ThinkPad-X240s>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Tue, 7 May 2019 11:44:26 -0600
Message-ID: <CANLsYkxqTeQmHGmUyMn7c8zNCFutS94bd068A8J8Q-rD2j5H-A@mail.gmail.com>
Subject: Re: [PATCH 3/5] coresight: perf: Don't set the truncated flag in
 snapshot mode
To: Leo Yan <leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_104439_136556_08BD1B24 
X-CRM114-Status: GOOD (  21.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
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
 "Suzuki K. Poulose" <suzuki.poulose@arm.com>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 7 May 2019 at 02:29, Leo Yan <leo.yan@linaro.org> wrote:
>
> On Wed, May 01, 2019 at 11:50:50AM -0600, Mathieu Poirier wrote:
> > This patch avoids setting the truncated flag when operaring in snapshot
>
> s/operaring/operating

Ok

>
> > mode since the trace buffer is expected to be truncated and discontinuous
> > from one snapshot to another.  Moreover when the truncated flag is set
> > the perf core stops enabling the event, waiting for user space to consume
> > the data.  In snapshot mode this is clearly not what we want since it
> > results in stale data.
>
> Not sure if I understand correctly or not.
>
> If set TRUNCATED flag and the user space has finished to read out the
> trace data, will perf not re-enable the event anymore for snapshot mode?

You are correct, once user space has read truncated trace data the
event is scheduled again.  But here we want to continue accumulating
data in the ring buffer without sending it to user space, that is the
idea behind snaphsot mode.  As such we will get truncated data but we
want to continue accumulating it until user space decides that it
wants to read a snapshot.  If the TRUNCATED flag is set when the ring
buffer has been filled the event is not scheduled and trace data not
accumulated anymore, leading to a stale snapshot when user space
requests it.

>
> Seems to me, the perf core code cannot handle properly for TRUNCATED
> flag with snapshot mode.  Sorry if introduce noise, will look into the
> perf core code.
>
> Thanks,
> Leo Yan
>
> > Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> > ---
> >  drivers/hwtracing/coresight/coresight-etb10.c   | 8 +++++++-
> >  drivers/hwtracing/coresight/coresight-tmc-etf.c | 8 +++++++-
> >  drivers/hwtracing/coresight/coresight-tmc-etr.c | 8 +++++++-
> >  3 files changed, 21 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/hwtracing/coresight/coresight-etb10.c b/drivers/hwtracing/coresight/coresight-etb10.c
> > index 0764647b92bc..6ff48be91f61 100644
> > --- a/drivers/hwtracing/coresight/coresight-etb10.c
> > +++ b/drivers/hwtracing/coresight/coresight-etb10.c
> > @@ -535,7 +535,13 @@ static unsigned long etb_update_buffer(struct coresight_device *csdev,
> >               lost = true;
> >       }
> >
> > -     if (lost)
> > +     /*
> > +      * Don't set the TRUNCATED flag in snapshot mode because 1) the
> > +      * captured buffer is expected to be truncated and 2) a full buffer
> > +      * prevents the event from being re-enabled by the perf core,
> > +      * resulting in stale data being send to user space.
> > +      */
> > +     if (!buf->snapshot && lost)
> >               perf_aux_output_flag(handle, PERF_AUX_FLAG_TRUNCATED);
> >
> >       /* finally tell HW where we want to start reading from */
> > diff --git a/drivers/hwtracing/coresight/coresight-tmc-etf.c b/drivers/hwtracing/coresight/coresight-tmc-etf.c
> > index d3025634f5e6..8039bd389034 100644
> > --- a/drivers/hwtracing/coresight/coresight-tmc-etf.c
> > +++ b/drivers/hwtracing/coresight/coresight-tmc-etf.c
> > @@ -538,7 +538,13 @@ static unsigned long tmc_update_etf_buffer(struct coresight_device *csdev,
> >               lost = true;
> >       }
> >
> > -     if (lost)
> > +     /*
> > +      * Don't set the TRUNCATED flag in snapshot mode because 1) the
> > +      * captured buffer is expected to be truncated and 2) a full buffer
> > +      * prevents the event from being re-enabled by the perf core,
> > +      * resulting in stale data being send to user space.
> > +      */
> > +     if (!buf->snapshot && lost)
> >               perf_aux_output_flag(handle, PERF_AUX_FLAG_TRUNCATED);
> >
> >       cur = buf->cur;
> > diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
> > index b9881d6d41ba..718586a083af 100644
> > --- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
> > +++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
> > @@ -1516,7 +1516,13 @@ tmc_update_etr_buffer(struct coresight_device *csdev,
> >
> >       lost |= etr_buf->full;
> >  out:
> > -     if (lost)
> > +     /*
> > +      * Don't set the TRUNCATED flag in snapshot mode because 1) the
> > +      * captured buffer is expected to be truncated and 2) a full buffer
> > +      * prevents the event from being re-enabled by the perf core,
> > +      * resulting in stale data being send to user space.
> > +      */
> > +     if (!etr_perf->snapshot && lost)
> >               perf_aux_output_flag(handle, PERF_AUX_FLAG_TRUNCATED);
> >       return size;
> >  }
> > --
> > 2.17.1
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
