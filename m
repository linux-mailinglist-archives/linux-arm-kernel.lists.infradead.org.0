Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6EE4E579
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 16:53:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nyouv5JHB3n2+yPG1BrxJ73tu7vWIZj+2+pBGwqqWhg=; b=S0e3odMRr9LvnUlG8dowU5t+6
	YGShCVguJ+B30rQJ+i14bdEUI57puoKtzXLMycFio5dv8T3gok1pLPtbhl359TMBPcB7PY7eE3Z0W
	7yFs7dkEGel9aSU6UK6fh4T3yFQ7OavO8RxOQLM6z6SXZxow2E88twJEybdPEkl2pyPToR0fFlQnC
	o5p0bc4Wu74ysOgPTRrf9v5XHtni5IyVmF61ztxdl1bNB/yMhZXehQXNmBP0cMCz4CpJzpx+9bp5T
	bwwXUMrb6rQQinoCBoC6vSRmyrnNf8XAJ+SeeEYU6RqbzCtp0RVSyJvLDLJ8O2ZRNuOL/f6OFqlty
	04mEYWHeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL7fC-0001XG-1z; Mon, 29 Apr 2019 14:53:50 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL7f4-0001WS-Um
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 14:53:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D7A6E80D;
 Mon, 29 Apr 2019 07:53:39 -0700 (PDT)
Received: from [10.32.98.83] (e111474-lin.manchester.arm.com [10.32.98.83])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 187983F5C1;
 Mon, 29 Apr 2019 07:53:37 -0700 (PDT)
Subject: Re: [PATCH v1 1/2] perf cs-etm: Always allocate memory for
 cs_etm_queue::prev_packet
To: Leo Yan <leo.yan@linaro.org>, Arnaldo Carvalho de Melo <acme@kernel.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Mike Leach
 <mike.leach@linaro.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20190428083228.20246-1-leo.yan@linaro.org>
From: Robert Walker <robert.walker@arm.com>
Message-ID: <bba9c934-2ee9-4c0a-b3c8-52c901f740db@arm.com>
Date: Mon, 29 Apr 2019 15:53:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <20190428083228.20246-1-leo.yan@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_075342_997620_717BF6D4 
X-CRM114-Status: GOOD (  23.42  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 28/04/2019 09:32, Leo Yan wrote:
> Robert Walker reported a segmentation fault is observed when process
> CoreSight trace data; this issue can be easily reproduced by the
> command 'perf report --itrace=i1000i' for decoding tracing data.
>
> If neither the 'b' flag (synthesize branches events) nor 'l' flag
> (synthesize last branch entries) are specified to option '--itrace',
> cs_etm_queue::prev_packet will not been initialised.  After merging
> the code to support exception packets and sample flags, there
> introduced a number of uses of cs_etm_queue::prev_packet without
> checking whether it is valid, for these cases any accessing to
> uninitialised prev_packet will cause crash.
>
> As cs_etm_queue::prev_packet is used more widely now and it's already
> hard to follow which functions have been called in a context where the
> validity of cs_etm_queue::prev_packet has been checked, this patch
> always allocates memory for cs_etm_queue::prev_packet.
>
> Reported-by: Robert Walker <robert.walker@arm.com>
> Suggested-by: Robert Walker <robert.walker@arm.com>
> Fixes: 7100b12cf474 ("perf cs-etm: Generate branch sample for exception packet")
> Fixes: 24fff5eb2b93 ("perf cs-etm: Avoid stale branch samples when flush packet")
> Signed-off-by: Leo Yan <leo.yan@linaro.org>
> ---
>   tools/perf/util/cs-etm.c | 8 +++-----
>   1 file changed, 3 insertions(+), 5 deletions(-)

I've tested these with the trace from the HiKey960 and the segfault no 
longer occurs

Tested-by: Robert Walker <robert.walker@arm.com>

Regards

Rob

>
> diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
> index 110804936fc3..054b480aab04 100644
> --- a/tools/perf/util/cs-etm.c
> +++ b/tools/perf/util/cs-etm.c
> @@ -422,11 +422,9 @@ static struct cs_etm_queue *cs_etm__alloc_queue(struct cs_etm_auxtrace *etm)
>   	if (!etmq->packet)
>   		goto out_free;
>   
> -	if (etm->synth_opts.last_branch || etm->sample_branches) {
> -		etmq->prev_packet = zalloc(szp);
> -		if (!etmq->prev_packet)
> -			goto out_free;
> -	}
> +	etmq->prev_packet = zalloc(szp);
> +	if (!etmq->prev_packet)
> +		goto out_free;
>   
>   	if (etm->synth_opts.last_branch) {
>   		size_t sz = sizeof(struct branch_stack);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
