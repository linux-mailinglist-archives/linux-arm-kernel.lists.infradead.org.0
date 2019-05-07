Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B32169BC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 20:00:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8HPYbnCNYzixdzMJG08kXhwCt5YuoWIDOcF/AvZcBn4=; b=VLMzu0mTyXDXve
	qCS6tf/L2QzOpla3x4YfPU7uMi5+XA4Cx2iMOoqAqkbbN3YLj4re2L74LE9fdJzkgMOc4ykDEpnA/
	FHZsuOKq7yujnkHoBupIoaIQnpKUhM4J8bHWRRQl41WDFfpMGzTLIHGTVY5tOdd6cWJ6chNdulaUR
	HQTwxgsyuxil8slK0ZZqZAzdukFiyjw5NNON5eyJGSzK/F7XYX5KA9GTK//f0ilGOcKiZzMzzkMw8
	1DTweyAAsJOl53NXGJeUoKevk+io1+VWI+UdGOaT569K5IQ8rz1wnytQmqwgTHK3fZn6Cygk4cqjg
	9IcRmMJ6hJyeKYTdG3LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO4Ns-0001lQ-Hn; Tue, 07 May 2019 18:00:08 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO4Nh-0001kh-UK
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 17:59:59 +0000
Received: by mail-io1-xd43.google.com with SMTP id m14so14955433ion.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 10:59:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4m+oft9DKwRRKpp/Oz5bnd1FfF8vprikrXqLhZ7LaKA=;
 b=QvWDlmVSNh8hvDf6dga3sh4pTncpbYdX89GumOVAhme7hlZnb6O7OzfMK5f7/qq1TZ
 lsPwSE6Rhq3Llx94n9KEQOxXjUsIw6W4g3W1NprzcMpEWFMtyuZbJNhgwfS+6At2jaiE
 KhLeEdSCTJkdwmDA1Agmc2bWeI1nKGH65dtI7Grh6gok6A0H6m0CLf/grWeeZxS+wjOB
 GwkmrMMor4t5D66pkEzF3y0X/LUzj+mGkZ4XmG9QMXTUnqAuwrpjHHpJ38tO2viknPzI
 GhAu26jwUuhnFJBPJJS6VMZkhnS6oVy58BluCpxh0t4u+1dJ2xO+GRVZHSj73YetvzA4
 MEIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4m+oft9DKwRRKpp/Oz5bnd1FfF8vprikrXqLhZ7LaKA=;
 b=jRTI9ukhjlBcqf6jlcbd7w5xFuk6H03BDMQJz/DAJGelRHhRNXxjLuRR0cdxNX75TB
 +D3PoftIaieNs7a5Pb5UUZZwQ6qtVgmUci3u23by3l5ymE1Illo5/VOoxzt/hoHQ9V3s
 QzHJlYns5xYrHfrDB663mPvVbgjgQA3t3Fiu3y7l/UIUGy/ygzcAj6Qbi2TcXMstu5+O
 BbSZVShNsJAU2wDX8GMlNDXoaxrV82DJHVNOE5BfsBPxyjsSYZm46u8IB8TOLnVD7KXu
 M0/tXnIas6JqshhgQtIhot0rqYjNUq9SDvVqVNyr+h2cbeRW2q56HesaqPCphkInbE+H
 qTTw==
X-Gm-Message-State: APjAAAUJ2nRU5b7ZpLdcFCIdULFe/Q6nHiptNJ1lA1eeqAGIbd6aVbW7
 fMxLUdC/VKedMR2guebfRGDWCI9wZsAn+wdJNQYcIA==
X-Google-Smtp-Source: APXvYqzNXaPDswfdfFdIYfFolo6sYnthy2HR7telxyZC+1Y4/dsTs4iUrywuOzj+EPHM+owLmdxVZIdxx4yvzGrfn+E=
X-Received: by 2002:a6b:6d06:: with SMTP id a6mr6822816iod.11.1557251996915;
 Tue, 07 May 2019 10:59:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190501175052.29667-1-mathieu.poirier@linaro.org>
 <20190501175052.29667-5-mathieu.poirier@linaro.org>
 <20190507084404.GD21730@leoy-ThinkPad-X240s>
In-Reply-To: <20190507084404.GD21730@leoy-ThinkPad-X240s>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Tue, 7 May 2019 11:59:46 -0600
Message-ID: <CANLsYkyBLivODPtSLXA7UjYxJBzDAzADRNVCU8k+0ouCeAzfAQ@mail.gmail.com>
Subject: Re: [PATCH 4/5] perf tools: Properly set the value of 'old' in
 snapshot mode
To: Leo Yan <leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_105957_984881_B63DF03E 
X-CRM114-Status: GOOD (  24.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
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

On Tue, 7 May 2019 at 02:44, Leo Yan <leo.yan@linaro.org> wrote:
>
> On Wed, May 01, 2019 at 11:50:51AM -0600, Mathieu Poirier wrote:
> > In snapshot mode the value of the 'old' pointer needs to be adjusted when
> > 'head' has wrapped around in order to get the latest information in the
> > buffer and be compatible with the generic AUX ring buffer mechanic.
> >
> > Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> > ---
> >  tools/perf/arch/arm/util/cs-etm.c | 12 ++++++++++--
> >  1 file changed, 10 insertions(+), 2 deletions(-)
> >
> > diff --git a/tools/perf/arch/arm/util/cs-etm.c b/tools/perf/arch/arm/util/cs-etm.c
> > index 911426721170..4e73fe1a6978 100644
> > --- a/tools/perf/arch/arm/util/cs-etm.c
> > +++ b/tools/perf/arch/arm/util/cs-etm.c
> > @@ -541,11 +541,19 @@ static int cs_etm_find_snapshot(struct auxtrace_record *itr __maybe_unused,
> >                               unsigned char *data __maybe_unused,
> >                               u64 *head, u64 *old)
> >  {
> > +     bool wrapped;
> > +
> >       pr_debug3("%s: mmap index %d old head %zu new head %zu size %zu\n",
> >                 __func__, idx, (size_t)*old, (size_t)*head, mm->len);
> >
> > -     *old = *head;
> > -     *head += mm->len;
> > +     /*
> > +      * If the last byte in the ring buffer isn't zero, the head has
> > +      * wrapped around.
> > +      */
> > +     wrapped = !!(data[mm->len - 1]);
>
> This is confused for me since I can think out two cases might break
> this checking.
>
> The first case is the trace data stream might be zero at the end of the
> buffer;

I just realized there is a better way to do this - since "*head" is
continiously incrementing I will simply compare it to mm->len.  If it
is equal of bigger, the head has wrapped around.

>the second case is that the buffer is not really wrapped around
> at this time but the end of buffer contains the stale data by previous
> time.

That would mean the snapshots were really close together.  In that
case we'd simply get the tail end of the previous snapshot, which is
fine since it is was close enough that we do want that data.

>
> Could you confirm both cases will not happen?
>
> Will do more testing for this patch set.
>
> Thanks,
> Leo Yan
>
> > +
> > +     if (wrapped)
> > +             *old = *head - mm->len;
> >
> >       return 0;
> >  }
> > --
> > 2.17.1
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
