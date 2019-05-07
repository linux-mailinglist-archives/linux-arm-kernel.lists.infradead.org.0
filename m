Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D5EF168EC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 19:16:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=etDYAncTz8JVNCg59Vsr7svrUy26DcCXx6f/86k6PeQ=; b=ZLx7oLDAH7DlC7
	fj+QP0r9GxVx8T+4G5TMsLyBThHQcrN9Z6Kj2WLqEeFobmWNKJH1Qw0PSksILDA3XuRmBAidTUEJ1
	J6CSh9wBkWe6VZKbMuDjK4UiD7X/gEqv2ECHI7IHoqtjyPHRQOazLS4faSDx638hyzfm3dhDFm4Rx
	gwP8oXSzK87h/Z3ZZ/TvE/p/jFfgh23k/oc6Xr8Ns0ajYeZ1/AuUE3ry3Ti0RD/zXJu53y8Y0uuMl
	s77PJ08bva5Kfc866KMo09PPcc8erLr1WFbK5LQ4PPoLqvcjQvPw4+xCrE8A2QDmnp59I0t0tYzsr
	d1fuK5SNw6siQY2gTRxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO3hp-00074J-1m; Tue, 07 May 2019 17:16:41 +0000
Received: from mail-it1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO3hi-00073w-IB
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 17:16:36 +0000
Received: by mail-it1-x141.google.com with SMTP id l10so27737488iti.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 10:16:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xpjl+7cluCxnedERzFoZcDFtiT8Kd/DNaUvMqROazUA=;
 b=gHEIqu1W6vGd4gy9T76JKpwQsdKmqYViY+pIRGI9PkUCzgVrGZpQ7G8+ifon5LppwF
 rgqCbe5bu+cEa3MpLVClY51voDwVJ6XKecTopAoXRX44wvqrLUNDodZYJiPKVpXxzgmQ
 rkM8ajgcyfd/ETM8+XfuX3rzX+8rDF9hX5c8hD/37HWD8u4x/n8yXqebK8vz6eWxHTVF
 cVCAjo+LNhWgA9lDRzfT/8xzO9UGzaqPhittT4rWyJOmnft9BGYP0Ry/br5afN7vPYtv
 K8/m9eCQUTzIbGIPon839nBB+S6l+I4sKPfYQyOxFuM4w8vh5YvpXG8n5VCuKq8H1KxB
 2VKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xpjl+7cluCxnedERzFoZcDFtiT8Kd/DNaUvMqROazUA=;
 b=Xzq/c0cf3yJMi0W7/GM/WAQxosxb0qewPU7pSb3OVInFswUIrC7+akogTcLYnFNeW1
 VybDNCZBmdMUoYqMp0LkUwlFiw0fzzxzMeeVY5m2o/hdlVhMz4xFv2R6HZ+Fzsbf54fd
 Z34DbAPsFQtN17UiGtg1oCsgkBcWaLSWGoiJr24gKYycg+hwc+5CuTIUWCJJ7LIZDfOb
 s8r02irQvM0TLAHph6K2KgyxWvUdPCtMaIb48nmNByLE1SNrnS+mnWQEUDM3VJUAa3Jx
 P4QZFg7cnjmYjN4TGN3txWOz6opbuG+CP9nlpHHZUK0yYR8RMlKcf2bOO3Kg2UvcEqMw
 G6eQ==
X-Gm-Message-State: APjAAAVmFD1aXY/AFKRluYflBwboDhHA9i36sOngG0DgCbTm1bwg7xyU
 l19GQTfOxunF9f9s76Cu0JGMz3maKvRbKZnNMryYhg==
X-Google-Smtp-Source: APXvYqyCNxRTYSJIxjTP8ttmNhnARTx92Ch4aZhUGpESvPQyGp2chp03QyyezMXu7TfJJ+sbVw0TRcEs9tjXvBQ0F1U=
X-Received: by 2002:a02:8627:: with SMTP id e36mr3367925jai.98.1557249393247; 
 Tue, 07 May 2019 10:16:33 -0700 (PDT)
MIME-Version: 1.0
References: <20190501175052.29667-1-mathieu.poirier@linaro.org>
 <20190501175052.29667-3-mathieu.poirier@linaro.org>
 <20190507081320.GB21730@leoy-ThinkPad-X240s>
In-Reply-To: <20190507081320.GB21730@leoy-ThinkPad-X240s>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Tue, 7 May 2019 11:16:22 -0600
Message-ID: <CANLsYkxYqL7sQ5Vc8-U4mB1sPcz_DxR4xyZv4GKF_gygGv7N-w@mail.gmail.com>
Subject: Re: [PATCH 2/5] coresight: tmc-etf: Fix snapshot mode update function
To: Leo Yan <leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_101634_632122_6D420A5D 
X-CRM114-Status: GOOD (  20.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
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
 Mike Leach <mike.leach@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 7 May 2019 at 02:13, Leo Yan <leo.yan@linaro.org> wrote:
>
> On Wed, May 01, 2019 at 11:50:49AM -0600, Mathieu Poirier wrote:
> > When working in snapshot mode function perf_aux_output_begin()
>
> Do you mean perf_aux_output_end() rather than perf_aux_output_begin()?
>
> I checked perf_aux_output_begin(), it will always set 'handle->size'
> to zero.
>

When not operating in snapshot mode perf_aux_output_begin() sets handle->size:

https://elixir.bootlin.com/linux/latest/source/kernel/events/ring_buffer.c#L387

> > does not set the handle->size because the size is expected to be
> > deduced by the placement of the "head" and "old" pointers in user
> > space.  As such there is no point in trying to adjust the amount
> > of data to copy to the ring buffer.
> >
> > Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
>
> Rest looks good to me:
>
> Reviewed-by: Leo Yan <leo.yan@linaro.org>
>
> > ---
> >  drivers/hwtracing/coresight/coresight-tmc-etf.c | 6 ++++--
> >  1 file changed, 4 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/hwtracing/coresight/coresight-tmc-etf.c b/drivers/hwtracing/coresight/coresight-tmc-etf.c
> > index 7694833b13cb..d3025634f5e6 100644
> > --- a/drivers/hwtracing/coresight/coresight-tmc-etf.c
> > +++ b/drivers/hwtracing/coresight/coresight-tmc-etf.c
> > @@ -497,9 +497,11 @@ static unsigned long tmc_update_etf_buffer(struct coresight_device *csdev,
> >       /*
> >        * The TMC RAM buffer may be bigger than the space available in the
> >        * perf ring buffer (handle->size).  If so advance the RRP so that we
> > -      * get the latest trace data.
> > +      * get the latest trace data.  In snapshot mode none of that matters
> > +      * since we are expected to clobber stale data in favour of the latest
> > +      * traces.
> >        */
> > -     if (to_read > handle->size) {
> > +     if (!buf->snapshot && to_read > handle->size) {
> >               u32 mask = 0;
> >
> >               /*
> > --
> > 2.17.1
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
