Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFEB01C5A15
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 16:52:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uNdH4hj72QHoiy6XCHU7XYI9Piwqh9QcDpcQxf6faa8=; b=BmJZ91U/yu576j
	RubcCGCt5IM1OrHkPpY2sihtWhtoq8SnWm2ngwoXsRYXDdaVyW1oQDWuSGgTEmt0k0zSO9GKy/9/0
	16DEtGjD98ZFlHZPlk5+xhCM+xoH8Gyw2tbL4NHwwtLK4lwPBVDIkRTGGrdrj9q7G6Zli+a2nouE/
	NzEaMCj+N31WA2Oj7YS8lpjR3VfJeWKjpDJyzIkWUgVGUcKLc4Yvj9aRQ7t966+ir0xwtTc+o5vGv
	bN+2lGfpk0CsAx1WmNzGOzBnH/bY5UKbN58YRwPibo/Mbeli8gEK32fgHmffG8FX1IQvGE9iWRXVA
	yRNHwluMyZEFcRaQlp1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVyw0-0003aN-OE; Tue, 05 May 2020 14:52:36 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVyvu-0003ZP-Rh
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 14:52:32 +0000
Received: by mail-io1-xd43.google.com with SMTP id 19so2201521ioz.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 07:52:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qIG8VNicf2Kv0fMlZdv+IUFU5X7895FdPSaFu4JhLc8=;
 b=IdIbvY1EZVldsRVIXSYUy+CDuRtYwezb6HSgPXVT4HRgsTs8yue/cx4pX0po6vBMcO
 69rktrFKo/h4JIC19PP51c1B7osH9zL0O6CcJileJ/dMJWFY6wRYb4qWEx4wWoXgEuV/
 CV9XowM9XDISA8KL1jLixhIlZkS24tlsfFnckZj1iHfhjBNgSsSoPCt1wdnbL/npmtv3
 Djj813ndgWwRv5aMdz/3AvHNq86l6aU6g8yXsJtCT2qXItmwpMs89aAva/4UImMfQ+Tl
 YV0xgBIB/l8v6nSzZ4irK96iD33RHWFF7Cf7KZz2NHW38U6G23bncGm4q+71zJONK+AL
 HcMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qIG8VNicf2Kv0fMlZdv+IUFU5X7895FdPSaFu4JhLc8=;
 b=Z3nhRp3g53YDSWWXaQrMMOfC/7YSVE/BIj7udscNc/BpEbprMI3KvDstaIbrYS3Jcy
 4Xn/INIn/HBqZVy4sOHCQUTZ02hbpLL78DKogbi29dZhnhmPzTk6uCv0WLbAwQyDiKUc
 lutAoDFu+PhVaDMGo8QV8sWbeuZLJ7dqE/guONMZpAlOtcjEw+G6ahH6cjOk9KjkzGHO
 8cJ/VqxMCiWFlVhsTfKjBK3sVqo9qLDvjWbbiiOTIW9sYLyXS5ZZIJVnJZ5aj1mWBov6
 Iz73QOGOdxCs5l2c8eOkFJT6zt6994AgMUpn5DWfGS4fLvXzWs0NrxKZHde7wAZUUkEd
 9gXA==
X-Gm-Message-State: AGi0Pua9xD7fuXkuH1JCRCYkMweVfAnkQUaRl5vaRyU2P1zvIVv7cBkd
 yVxlXgqEPvMkpZ4vUl10LmW84o7NICf1LZ0NhRYCzUih
X-Google-Smtp-Source: APiQypK3s1ouG++CpfGxs1aiCBj+RgR3gBIhFZuKEIP/wFZnmiQcs7FD+RwsSDREk4fXZJx7+eOC9MfluRtssX9drd8=
X-Received: by 2002:a6b:ea16:: with SMTP id m22mr3838198ioc.73.1588690349601; 
 Tue, 05 May 2020 07:52:29 -0700 (PDT)
MIME-Version: 1.0
References: <20200505133642.4756-1-leo.yan@linaro.org>
In-Reply-To: <20200505133642.4756-1-leo.yan@linaro.org>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Tue, 5 May 2020 08:52:18 -0600
Message-ID: <CANLsYkwfiQjYCq1htu8ry02zhFXB5S9Hk0W39aRpUz+W3gUvig@mail.gmail.com>
Subject: Re: [PATCH] perf cs-etm: Move defined of traceid_list
To: Leo Yan <leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_075231_059057_EC6316DE 
X-CRM114-Status: GOOD (  15.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>, Tor Jeremiassen <tor@ti.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 5 May 2020 at 07:37, Leo Yan <leo.yan@linaro.org> wrote:
>
> The variable 'traceid_list' is defined in the header file cs-etm.h,
> if multiple C files include cs-etm.h the compiler might complaint for
> multiple definition of 'traceid_list'.
>
> To fix multiple definition error, move the definition of 'traceid_list'
> into cs-etm.c.
>
> Fixes: cd8bfd8c973e ("perf tools: Add processing of coresight metadata")
> Reported-by: Thomas Backlund <tmb@mageia.org>
> Signed-off-by: Leo Yan <leo.yan@linaro.org>
> Reviewed-by: Mike Leach <mike.leach@linaro.org>
> Tested-by: Mike Leach <mike.leach@linaro.org>
> Tested-by: Thomas Backlund <tmb@mageia.org>
> ---
>  tools/perf/util/cs-etm.c | 3 +++
>  tools/perf/util/cs-etm.h | 3 ---
>  2 files changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
> index 62d2f9b9ce1b..381d9708e9bd 100644
> --- a/tools/perf/util/cs-etm.c
> +++ b/tools/perf/util/cs-etm.c
> @@ -94,6 +94,9 @@ struct cs_etm_queue {
>         struct cs_etm_traceid_queue **traceid_queues;
>  };
>
> +/* RB tree for quick conversion between traceID and metadata pointers */
> +static struct intlist *traceid_list;
> +
>  static int cs_etm__update_queues(struct cs_etm_auxtrace *etm);
>  static int cs_etm__process_queues(struct cs_etm_auxtrace *etm);
>  static int cs_etm__process_timeless_queues(struct cs_etm_auxtrace *etm,
> diff --git a/tools/perf/util/cs-etm.h b/tools/perf/util/cs-etm.h
> index 650ecc2a6349..4ad925d6d799 100644
> --- a/tools/perf/util/cs-etm.h
> +++ b/tools/perf/util/cs-etm.h
> @@ -114,9 +114,6 @@ enum cs_etm_isa {
>         CS_ETM_ISA_T32,
>  };
>
> -/* RB tree for quick conversion between traceID and metadata pointers */
> -struct intlist *traceid_list;
> -

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

>  struct cs_etm_queue;
>
>  struct cs_etm_packet {
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
