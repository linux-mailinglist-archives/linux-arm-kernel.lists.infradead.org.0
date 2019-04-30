Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAC2AEE22
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 03:07:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=835OMBkfuduT0AN0nYGwKHcgyISj7NRN9yOeEKfyz3A=; b=rdMpyE5HX7ulm+
	x6x/yFcpqjCyC5Ol813DSPVNGTTlEdbutHRH6P8f+g/ZFe23D0hPBFkvrzYrYljT6KxR/S/GBpuLZ
	lX2ri9/o9ONBaE/gtGcVkFTy2VGwjgWjqVcO6+xy+jkYrqG7dMEdyoniGRXS2eGEZd+fgNV+PQhDt
	Ota3EcJWN8LSWo4pDcU9+hofyVJetq/KpuzeHurTWKm6g74u0vnwQVGA7BezNePUUpY3PJ2kVoGOw
	Y4Ut9YENCCywwDq2br7crtFpcKAvY0BA+eLDwK76N9eBsJHYQM57u1xJypFc6FzFfd8QU4DS2Xne3
	GlM1m4P9X2gN3shGitbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLHFN-0005SX-Ik; Tue, 30 Apr 2019 01:07:49 +0000
Received: from adsl-173-228-226-134.prtc.net ([173.228.226.134]
 helo=quaco.ghostprotocols.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLHFH-0005SE-QC
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 01:07:43 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id 36DC44111F; Mon, 29 Apr 2019 21:07:42 -0400 (EDT)
Date: Mon, 29 Apr 2019 21:07:42 -0400
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Leo Yan <leo.yan@linaro.org>
Subject: Re: [PATCH v1 1/2] perf cs-etm: Always allocate memory for
 cs_etm_queue::prev_packet
Message-ID: <20190430010742.GD7857@kernel.org>
References: <20190428083228.20246-1-leo.yan@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190428083228.20246-1-leo.yan@linaro.org>
X-Url: http://acmel.wordpress.com
User-Agent: Mutt/1.11.3 (2019-02-01)
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 linux-kernel@vger.kernel.org, Namhyung Kim <namhyung@kernel.org>,
 Robert Walker <robert.walker@arm.com>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel@lists.infradead.org, Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Sun, Apr 28, 2019 at 04:32:27PM +0800, Leo Yan escreveu:
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

Thanks, applied both to perf/urgent, testing them now in the containers.

- Arnaldo

> Fixes: 24fff5eb2b93 ("perf cs-etm: Avoid stale branch samples when flush packet")
> Signed-off-by: Leo Yan <leo.yan@linaro.org>
> ---
>  tools/perf/util/cs-etm.c | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
> 
> diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
> index 110804936fc3..054b480aab04 100644
> --- a/tools/perf/util/cs-etm.c
> +++ b/tools/perf/util/cs-etm.c
> @@ -422,11 +422,9 @@ static struct cs_etm_queue *cs_etm__alloc_queue(struct cs_etm_auxtrace *etm)
>  	if (!etmq->packet)
>  		goto out_free;
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
>  	if (etm->synth_opts.last_branch) {
>  		size_t sz = sizeof(struct branch_stack);
> -- 
> 2.17.1

-- 

- Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
