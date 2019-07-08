Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D604362B49
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 00:00:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eFhVulPTUrRjel0TzF28thkcIvXrkilT9laSF1/8+yw=; b=Dcu7wZTFL8QsHN
	sCyhoGD3Lprv+71aNxdLFPQTxnJD0Hg/R5BcVtpW7at/Xc3ow+aeQHGESs6NW0dHf2MG7dSilC31A
	80zT3lUa7J6swKdq2mcV6EDdtdBfT1eZZq+yoBZy2e1EmOJooDboYfLOpn3lCtMQUJQAsSJl8s/eg
	5/wEeT87McbCX4s1iQLCQGgdPFyuK7T1NQpp+JarQCW+LXM7THcoXq6Skp/FcwOIaUcX3I7Plu25l
	td8X0ng2mnr2DMwNM7mt4N2VuDFm8bhSVOZiSGXOG89FKZm1ti8Rk0quE+EYDYepN6t1yCYVr4G1n
	oRhcG8Va+IBxIVFjUgMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkbg7-0007tj-77; Mon, 08 Jul 2019 22:00:07 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkbfm-0007ru-0i
 for linux-arm-kernel@bombadil.infradead.org; Mon, 08 Jul 2019 21:59:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=51c4IfPYBT+5J+agOJgYO3bIQC8MzKtwLDft7qMF0DM=; b=bT4IS7tdVBsoX5BIrOaaEKYTh
 s5b3m+TcFkYgG5b05kB76Dm6o/ltjaNHtYCiZ+b4h/iUeoK8D5v8uwi7Og/tkC3DA/wYgvNU0B7b7
 WgP8zPKzqt9Etr7fRgQuFo2l9D+QILvKDbHFzNJ63sCFpdfP41ni/mkT7rCpnAz+MYkpXG1n/GGqi
 X20UCzLQav0XaKNpWTnIraSpmYxSY9erkYALwmKyF0uODUq8HmkI4WqYNUZaaR56HF2fEBV33Ku+l
 OPZAKqGcuINLufxDW0mmMAyznt2GzLQMRRXe31HNiEt8nZFAnINIgRLfMke7nT5KvHbBA4ZLlb4L7
 aCtdy2LNg==;
Received: from [179.97.35.11] (helo=quaco.ghostprotocols.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hkbfj-0002JH-9C
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 21:59:43 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id 9857340340; Mon,  8 Jul 2019 18:59:40 -0300 (-03)
Date: Mon, 8 Jul 2019 18:59:40 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Leo Yan <leo.yan@linaro.org>
Subject: Re: [PATCH v2 3/4] perf intel-pt: Smatch: Fix potential NULL pointer
 dereference
Message-ID: <20190708215940.GD7455@kernel.org>
References: <20190708143937.7722-1-leo.yan@linaro.org>
 <20190708143937.7722-4-leo.yan@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190708143937.7722-4-leo.yan@linaro.org>
X-Url: http://acmel.wordpress.com
User-Agent: Mutt/1.12.0 (2019-05-25)
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
Cc: Andi Kleen <ak@linux.intel.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Adrian Hunter <adrian.hunter@intel.com>, linux-kernel@vger.kernel.org,
 Namhyung Kim <namhyung@kernel.org>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Mon, Jul 08, 2019 at 10:39:36PM +0800, Leo Yan escreveu:
> Based on the following report from Smatch, fix the potential
> NULL pointer dereference check.

Adrian, are you ok now with these two for pt and bts? Can I have your
acked-by?

- Arnaldo
 
>   tools/perf/util/intel-pt.c:3200
>   intel_pt_process_auxtrace_info() error: we previously assumed
>   'session->itrace_synth_opts' could be null (see line 3196)
> 
>   tools/perf/util/intel-pt.c:3206
>   intel_pt_process_auxtrace_info() warn: variable dereferenced before
>   check 'session->itrace_synth_opts' (see line 3200)
> 
> tools/perf/util/intel-pt.c
> 3196         if (session->itrace_synth_opts && session->itrace_synth_opts->set) {
> 3197                 pt->synth_opts = *session->itrace_synth_opts;
> 3198         } else {
> 3199                 itrace_synth_opts__set_default(&pt->synth_opts,
> 3200                                 session->itrace_synth_opts->default_no_sample);
>                                      ^^^^^^^^^^^^^^^^^^^^^^^^^^
> 3201                 if (!session->itrace_synth_opts->default_no_sample &&
> 3202                     !session->itrace_synth_opts->inject) {
> 3203                         pt->synth_opts.branches = false;
> 3204                         pt->synth_opts.callchain = true;
> 3205                 }
> 3206                 if (session->itrace_synth_opts)
>                          ^^^^^^^^^^^^^^^^^^^^^^^^^^
> 3207                         pt->synth_opts.thread_stack =
> 3208                                 session->itrace_synth_opts->thread_stack;
> 3209         }
> 
> 'session->itrace_synth_opts' is impossible to be a NULL pointer in
> intel_pt_process_auxtrace_info(), thus this patch removes the NULL
> test for 'session->itrace_synth_opts'.
> 
> Signed-off-by: Leo Yan <leo.yan@linaro.org>
> ---
>  tools/perf/util/intel-pt.c | 13 +++++--------
>  1 file changed, 5 insertions(+), 8 deletions(-)
> 
> diff --git a/tools/perf/util/intel-pt.c b/tools/perf/util/intel-pt.c
> index c76a96f777fb..df061599fef4 100644
> --- a/tools/perf/util/intel-pt.c
> +++ b/tools/perf/util/intel-pt.c
> @@ -3210,7 +3210,7 @@ int intel_pt_process_auxtrace_info(union perf_event *event,
>  		goto err_delete_thread;
>  	}
>  
> -	if (session->itrace_synth_opts && session->itrace_synth_opts->set) {
> +	if (session->itrace_synth_opts->set) {
>  		pt->synth_opts = *session->itrace_synth_opts;
>  	} else {
>  		itrace_synth_opts__set_default(&pt->synth_opts,
> @@ -3220,8 +3220,7 @@ int intel_pt_process_auxtrace_info(union perf_event *event,
>  			pt->synth_opts.branches = false;
>  			pt->synth_opts.callchain = true;
>  		}
> -		if (session->itrace_synth_opts)
> -			pt->synth_opts.thread_stack =
> +		pt->synth_opts.thread_stack =
>  				session->itrace_synth_opts->thread_stack;
>  	}
>  
> @@ -3241,11 +3240,9 @@ int intel_pt_process_auxtrace_info(union perf_event *event,
>  		pt->cbr2khz = tsc_freq / pt->max_non_turbo_ratio / 1000;
>  	}
>  
> -	if (session->itrace_synth_opts) {
> -		err = intel_pt_setup_time_ranges(pt, session->itrace_synth_opts);
> -		if (err)
> -			goto err_delete_thread;
> -	}
> +	err = intel_pt_setup_time_ranges(pt, session->itrace_synth_opts);
> +	if (err)
> +		goto err_delete_thread;
>  
>  	if (pt->synth_opts.calls)
>  		pt->branches_filter |= PERF_IP_FLAG_CALL | PERF_IP_FLAG_ASYNC |
> -- 
> 2.17.1

-- 

- Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
