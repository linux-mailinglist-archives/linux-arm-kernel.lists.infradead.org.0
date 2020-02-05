Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 458831534E1
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 17:01:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HxAhunizcIPuKnRugLmlqPFLqprFGzr0rpwxGH6lpVI=; b=ftslJ29UfNmWoR
	SbYI2xMI4+J1ShU1wYUqGzsqZazdepFEcOWAr2DJeQPhL2+VwQDociFaw1xa8gIwROUnZvh3RkZNg
	S9h355fj7RehUAns56a2AKH5FmtfggVH1DNIn96U98XTFYnH1gKqbGjwEwogpyewQoIGhDNgZ1l+7
	jY4hgPVC6alWI4IyjpNeNT3/xLJ8W/AmI0FKAQVp1FcEzEK9DCx+0ORD4KtC5DdRo7Apu+280b+Ef
	+qHfv47m6qDPqswN2uldIvj73J0hKygcT0vp/RPTTQSo+3vHRjqt6zMVAIP4hc+FnZ2j+TliPhOeh
	oRIR0vAMHgoImsYH6Tjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izN7U-0001V2-CT; Wed, 05 Feb 2020 16:01:40 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izN7E-0001TG-5V
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 16:01:25 +0000
Received: by mail-qk1-x742.google.com with SMTP id q15so2292559qke.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Feb 2020 08:01:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=O8tuV021kx8QrtVcPGZDT1GLI5Sk9DSG+x98YpLQzy0=;
 b=dLwGEd1F28YwoaPOI5aCndNrJX9ZsLgVjkgrxubtiTprT8SC963Dkix1QsTwrkVYtw
 dh8xO9v27pg//NkpkhUHJQo7az03R1puWs4S00hjcf6u1NQYdG65xb/Cw72a9iOl+yh3
 9jCm0eBbbuMPs9DOPe/S8U+GbXMoRwKk328ZnZ9CIxevpnXlNSOXtrdVHW6TUZ7bQmLu
 gWysXetvAQss8tXkJ/e4WuJeH0J7hKc8FYclUmkSlDoq3kOmBlN0pdcx9gnqq88YZEeq
 STNvf1ptaFa4EX8kkwU6rrq0hO7LfY6Hxn2l2aD+3Q/XHDa8rW8H+Q9IT2XN/MdexSiv
 ayZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=O8tuV021kx8QrtVcPGZDT1GLI5Sk9DSG+x98YpLQzy0=;
 b=hjL/Blq/Q+xV+UjLVIqurmkpIUcFz3OyshMUq4qmLQVsZTLhelV2JdSrByW4zu/8qL
 s5zlxNEjCJu+QwenEHs06D41OJLz2iImEr15uNC7PqiLhm513nRpqzey2lVRZ6RE0c9q
 BtmQ/LkQYN9GqEwnlTdP6gHPXjwOiRHE1ntY57huqOCfRs5f2KBwQXv3bm+gRlK4qMOY
 l/en4d8STFJnP6JJmSkJj7OHd3TSFp7/yAr3VTRgeNAkeruxrFo7tnRDHdZwXW1inrsd
 sgcLCadNHOWvLrEmghWe7UfPaSHwKEloRy1KG1Fwv3FOKqXPQRUZpjwS6VOQm5AkabYD
 ntBQ==
X-Gm-Message-State: APjAAAVL0xizRNt48++vGfc1p60YGBd7uB7s0DeQSngkYNqc5NoqiurM
 4rBKsmL9F4b73UpV1qlephbWDCa6P+PSZk7QmBzrbA==
X-Google-Smtp-Source: APXvYqwPAMnkiKKLTPYIogi+I82kFBbrTQC1aqhDQCCY862aUiw0MGyo0mhIjY5ZSY8VhdaacGscPUAXJ3Sjn/reyS8=
X-Received: by 2002:a05:620a:1273:: with SMTP id
 b19mr12481103qkl.482.1580918482634; 
 Wed, 05 Feb 2020 08:01:22 -0800 (PST)
MIME-Version: 1.0
References: <20200203015203.27882-1-leo.yan@linaro.org>
 <20200203015203.27882-3-leo.yan@linaro.org>
In-Reply-To: <20200203015203.27882-3-leo.yan@linaro.org>
From: Mike Leach <mike.leach@linaro.org>
Date: Wed, 5 Feb 2020 16:01:11 +0000
Message-ID: <CAJ9a7VhLHo9akNjdOKZvG8tAt=OLrdpyCnY03+PwNNq=K1=mCA@mail.gmail.com>
Subject: Re: [PATCH v3 2/5] perf cs-etm: Continuously record last branch
To: Leo Yan <leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_080124_212221_6BE21EFC 
X-CRM114-Status: GOOD (  18.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Coresight ML <coresight@lists.linaro.org>, linux-kernel@vger.kernel.org,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Robert Walker <robert.walker@arm.com>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 3 Feb 2020 at 01:52, Leo Yan <leo.yan@linaro.org> wrote:
>
> Every time synthesize instruction sample, the last branch recording
> will be reset.  This is fine if the instruction period is big enough,
> for example if use the option '--itrace=i100000', the last branch
> array is reset for every sample with 100000 instructions per period;
> before generate the next instruction sample, there has the sufficient
> packets coming to fill the last branch array.
>
> On the other hand, if set a very small period, the packets will be
> significantly reduced between two continuous instruction samples, thus
> the last branch array is almost empty for new instruction sample by
> frequently resetting.
>
> To allow the last branches to work properly for any instruction periods,
> this patch avoids to reset the last branch for every instruction sample
> and only reset it when flush the trace data.  The last branches will
> be reset only for two cases, one is for trace starting, another case
> is for discontinuous trace; other cases can keep recording last branches
> for continuous instruction samples.
>
> Signed-off-by: Leo Yan <leo.yan@linaro.org>
> ---
>  tools/perf/util/cs-etm.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
>
> diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
> index 3dd5ba34a2c2..3e28462609e7 100644
> --- a/tools/perf/util/cs-etm.c
> +++ b/tools/perf/util/cs-etm.c
> @@ -1153,9 +1153,6 @@ static int cs_etm__synth_instruction_sample(struct cs_etm_queue *etmq,
>                         "CS ETM Trace: failed to deliver instruction event, error %d\n",
>                         ret);
>
> -       if (etm->synth_opts.last_branch)
> -               cs_etm__reset_last_branch_rb(tidq);
> -
>         return ret;
>  }
>
> @@ -1488,6 +1485,10 @@ static int cs_etm__flush(struct cs_etm_queue *etmq,
>                 tidq->prev_packet = tmp;
>         }
>
> +       /* Reset last branches after flush the trace */
> +       if (etm->synth_opts.last_branch)
> +               cs_etm__reset_last_branch_rb(tidq);
> +
>         return err;
>  }
>
> --
> 2.17.1
>

Reviewed by: Mike Leach <mike.leach@linaro.org>
-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
