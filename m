Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02315DF476
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 19:42:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aPW4NzfNSjLlo7VbiTlybqO3nU8Roc3MARdHuna31uo=; b=MoIy7e7iYxfI/I
	3PPtwu/6WWTdBLpOa4QbOCi1jkp5F0Dqx6vGy6sr35Frf8E8ATIXNmUh4/zCC4PFcfovK1bs0XgKd
	bJ0qJu6WiJTyjBr21Lbip8lirM5ATDDmCSWNjQ/KoGITXM97OEYpMFbL2UVrGnNdDR52tG9PXBH3B
	NCr0ZhDQDIY0tileWgt45fbpdwEKPRnUUozzn82WclVFRlXAfalZEN8gbaN8A+gQ2EA5rGAS6xjpV
	y2FLYXQPoos8fzyvw6xU7cuvEhDq5n6pocVIhNhudZwmQalk6Q7ITy3l5To3ZTcRIgclW4raEe4H9
	cj2zkGNbCLx1PE3eiBZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMbhe-0005JY-Os; Mon, 21 Oct 2019 17:42:46 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMbhT-0005Ii-HX
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 17:42:36 +0000
Received: by mail-io1-xd42.google.com with SMTP id i26so7643748iog.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 10:42:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kzgvuE8ZrpsBhL/phFPBQTgfRoYdysA2uEVHuY0C2yw=;
 b=xGDuT/cwuXVfrZ+nz3kCY7rJ4/vWXGtj4UhZPRfa1YSHzBQi74gMGk3/6SU0Gtig48
 Xk9/MF0CSKB8e3EGEL8DWYkliLdOwoSxm8ANLKoggtZUnf4HaFcrW+EBQgg8ccs/Uqc+
 DrOQPNGyGpOKS2H1DL93zVaj4ubM13Q6xBRWHZeMTUi0kIDdJZIbQNiHFW0YeVmCCcIV
 a75LJZAK0rp8/y94c7fKSIUrc4CeFq3x1B/fFNaZKcdQyWziXKmEwYexxLwwrzAi9uh/
 qQ5V19+IoHfGF1ZRC4ygCBLkYIi/3jcAmw01ZHMl6ravgAh++EozyicyZh3hlUoU7jXT
 SgSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kzgvuE8ZrpsBhL/phFPBQTgfRoYdysA2uEVHuY0C2yw=;
 b=IN8JQU8v6Dq19GFjFGc4uezarjfQzDFUF5ES3+LncrmJiP3J7LQEc5RX4lSaraNyqv
 2d7LE1dT4C8pCx/SmJd+wmOJiE9J9a8nRsF74OIB4ZrOlaKWHlM3pOj7iQcN70eNfpZ2
 eTaoj0x2Gl012rHSkwmDtu9RsaCbokFK0MZoRNSff6hhohipEKUETHx/DVoxG/13JlxU
 VWw32y3nnNxChAQBMxWmP7w3O3mBW+0FG2hu0jx7ZXvh2lDuMK6+xDttNPU/hiaW9PEn
 9XTsCkYaztZ2aRZw8nte26QI+R0KWAK5Cv5zwIEhkqDZUm3OqAjN5JqJo14o35mRDh2P
 jbQg==
X-Gm-Message-State: APjAAAVoQB9v9OMb96GDB+J+LFs5CNOdZuFM+LvaIJi1Zz2REmVm9DO/
 fJyHbjZGQ8c+/N7akaghqmDTrBNb/ow6rI5FROnQzg==
X-Google-Smtp-Source: APXvYqzesuSl1eIcJuavpZhunNVJw70OVV3BzrNelIbrZm7vXlXp4JjJxP1ijjy9Y9ZJW5V4knNFXtI/ftAGh75ZFso=
X-Received: by 2002:a05:6638:392:: with SMTP id
 y18mr16267547jap.98.1571679752652; 
 Mon, 21 Oct 2019 10:42:32 -0700 (PDT)
MIME-Version: 1.0
References: <20191021074808.25795-1-leo.yan@linaro.org>
In-Reply-To: <20191021074808.25795-1-leo.yan@linaro.org>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Mon, 21 Oct 2019 11:42:21 -0600
Message-ID: <CANLsYkyvDKw4E7=+fsq7W41iS0P57Rau3fxJffrg8cEScyOOBw@mail.gmail.com>
Subject: Re: [PATCH] perf cs-etm: Fix definition of macro TO_CS_QUEUE_NR
To: Leo Yan <leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_104235_581311_FA50ACD3 
X-CRM114-Status: GOOD (  19.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Coresight ML <coresight@lists.linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 21 Oct 2019 at 01:48, Leo Yan <leo.yan@linaro.org> wrote:
>
> Macro TO_CS_QUEUE_NR definition has a typo, which uses 'trace_id_chan'
> as its parameter, this doesn't match with its definition body which uses
> 'trace_chan_id'.  So renames the parameter to 'trace_chan_id'.
>
> It's luck to have a local variable 'trace_chan_id' in the function
> cs_etm__setup_queue(), even we wrongly define the macro TO_CS_QUEUE_NR,
> the local variable 'trace_chan_id' is used rather than the macro's
> parameter 'trace_id_chan'; so the compiler doesn't complain for this
> before.
>
> After renaming the parameter, it leads to a compiling error due
> cs_etm__setup_queue() has no variable 'trace_id_chan'.  This patch uses
> the variable 'trace_chan_id' for the macro so that fixes the compiling
> error.
>
> Signed-off-by: Leo Yan <leo.yan@linaro.org>
> ---
>  tools/perf/util/cs-etm.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
> index 4ba0f871f086..f5f855fff412 100644
> --- a/tools/perf/util/cs-etm.c
> +++ b/tools/perf/util/cs-etm.c
> @@ -110,7 +110,7 @@ static int cs_etm__decode_data_block(struct cs_etm_queue *etmq);
>   * encode the etm queue number as the upper 16 bit and the channel as
>   * the lower 16 bit.
>   */
> -#define TO_CS_QUEUE_NR(queue_nr, trace_id_chan)        \
> +#define TO_CS_QUEUE_NR(queue_nr, trace_chan_id)        \
>                       (queue_nr << 16 | trace_chan_id)
>  #define TO_QUEUE_NR(cs_queue_nr) (cs_queue_nr >> 16)
>  #define TO_TRACE_CHAN_ID(cs_queue_nr) (cs_queue_nr & 0x0000ffff)
> @@ -819,7 +819,7 @@ static int cs_etm__setup_queue(struct cs_etm_auxtrace *etm,
>          * Note that packets decoded above are still in the traceID's packet
>          * queue and will be processed in cs_etm__process_queues().
>          */
> -       cs_queue_nr = TO_CS_QUEUE_NR(queue_nr, trace_id_chan);
> +       cs_queue_nr = TO_CS_QUEUE_NR(queue_nr, trace_chan_id);
>         ret = auxtrace_heap__add(&etm->heap, cs_queue_nr, timestamp);
>  out:
>         return ret;

Really good catch - Arnaldo please consider.

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
