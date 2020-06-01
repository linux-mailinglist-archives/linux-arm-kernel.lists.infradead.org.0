Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DA0F1E9F09
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 09:24:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bww5htnRUrF9NPqyVKj97yOk5+MeSQsdYdj1wL+rITU=; b=eXPBP+s2tlLGlV
	jnvXrEyy0vS/KSLUPwdua0bx+9dy9JoAma6Txgt8jrdtTsCfXVPgDwUrTg0dykt5/SQixZWLMJUXD
	ZCrkOFDbpDGgmWVsK2eYvCp6L5yJhpf7Wg+lIC2rLaFpZF9auXTJGUyKS/+ptajEn+UAuZjSeXDAK
	lMlIrO8o9A9m2ocnsAkS581tIuFcOqXFXz9pjzipqq9t4AycbFN4quQa9pUPtmEoz9hNbbmQMwj4I
	CiFgfDIX4HmmWHIH68oLTCCxN9Tzc+XOtAU7tBXPH8ZgVAHhgBWUOH7VRhWap9qXJM5/pm9+ld91j
	WsFSBEeiHTgCLOEz7J1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfeoR-0008AN-C4; Mon, 01 Jun 2020 07:24:47 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfeoK-00089D-4o
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 07:24:41 +0000
IronPort-SDR: swFD2Zy+Gi4pSyBG9xSKO5p5Mi4mQoYB5oB5kKO+gzGtV9GJlwWI7xTvNFY66hGvEZW7h+zor+
 WW4QMk1jJbSQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2020 00:24:37 -0700
IronPort-SDR: h2vSqTd8LK0bbOXqeq0SpRO4Q/fOWr8basEmm0llG5fQ7NVLkTzyJkz7ToU0ZsFvLZFvd5G91V
 oC9iC0AOfZeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,459,1583222400"; d="scan'208";a="415716184"
Received: from ahunter-desktop.fi.intel.com (HELO [10.237.72.157])
 ([10.237.72.157])
 by orsmga004.jf.intel.com with ESMTP; 01 Jun 2020 00:24:32 -0700
Subject: Re: [PATCH v8 2/3] perf auxtrace: Add four itrace options
To: Leo Yan <leo.yan@linaro.org>, Arnaldo Carvalho de Melo <acme@kernel.org>, 
 Jiri Olsa <jolsa@redhat.com>, Mark Rutland <mark.rutland@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Will Deacon <will@kernel.org>, James Clark <james.clark@arm.com>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Namhyung Kim <namhyung@kernel.org>, Andi Kleen <ak@linux.intel.com>,
 Jin Yao <yao.jin@linux.intel.com>, Ian Rogers <irogers@google.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Al Grant <al.grant@arm.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Mike Leach <mike.leach@linaro.org>
References: <20200530122442.490-1-leo.yan@linaro.org>
 <20200530122442.490-3-leo.yan@linaro.org>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
Message-ID: <aaacf3f6-daab-098e-d1fb-1509e1cf9c84@intel.com>
Date: Mon, 1 Jun 2020 10:24:00 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200530122442.490-3-leo.yan@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_002440_201593_54D468A7 
X-CRM114-Status: GOOD (  20.50  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Tan Xiaojun <tanxiaojun@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30/05/20 3:24 pm, Leo Yan wrote:
> From: Tan Xiaojun <tanxiaojun@huawei.com>
> 
> This patch is to add four options to synthesize events which are
> described as below:
> 
>  'f': synthesize first level cache events
>  'm': synthesize last level cache events
>  't': synthesize TLB events
>  'a': synthesize remote access events
> 
> This four options will be used by ARM SPE as their first consumer.
> 
> Signed-off-by: Tan Xiaojun <tanxiaojun@huawei.com>
> Signed-off-by: James Clark <james.clark@arm.com>
> Signed-off-by: Leo Yan <leo.yan@linaro.org>
> Tested-by: James Clark <james.clark@arm.com>

Acked-by: Adrian Hunter <adrian.hunter@intel.com>

> ---
>  tools/perf/Documentation/itrace.txt |  6 +++++-
>  tools/perf/util/auxtrace.c          | 17 +++++++++++++++++
>  tools/perf/util/auxtrace.h          | 15 ++++++++++++++-
>  3 files changed, 36 insertions(+), 2 deletions(-)
> 
> diff --git a/tools/perf/Documentation/itrace.txt b/tools/perf/Documentation/itrace.txt
> index 271484754fee..e817179c5027 100644
> --- a/tools/perf/Documentation/itrace.txt
> +++ b/tools/perf/Documentation/itrace.txt
> @@ -1,5 +1,5 @@
>  		i	synthesize instructions events
> -		b	synthesize branches events
> +		b	synthesize branches events (branch misses for Arm SPE)
>  		c	synthesize branches events (calls only)
>  		r	synthesize branches events (returns only)
>  		x	synthesize transactions events
> @@ -9,6 +9,10 @@
>  			of aux-output (refer to perf record)
>  		e	synthesize error events
>  		d	create a debug log
> +		f	synthesize first level cache events
> +		m	synthesize last level cache events
> +		t	synthesize TLB events
> +		a	synthesize remote access events
>  		g	synthesize a call chain (use with i or x)
>  		G	synthesize a call chain on existing event records
>  		l	synthesize last branch entries (use with i or x)
> diff --git a/tools/perf/util/auxtrace.c b/tools/perf/util/auxtrace.c
> index 8cf7d405ee67..fe76a056a179 100644
> --- a/tools/perf/util/auxtrace.c
> +++ b/tools/perf/util/auxtrace.c
> @@ -1331,6 +1331,11 @@ void itrace_synth_opts__set_default(struct itrace_synth_opts *synth_opts,
>  	synth_opts->pwr_events = true;
>  	synth_opts->other_events = true;
>  	synth_opts->errors = true;
> +	synth_opts->flc = true;
> +	synth_opts->llc = true;
> +	synth_opts->tlb = true;
> +	synth_opts->remote_access = true;
> +
>  	if (no_sample) {
>  		synth_opts->period_type = PERF_ITRACE_PERIOD_INSTRUCTIONS;
>  		synth_opts->period = 1;
> @@ -1491,6 +1496,18 @@ int itrace_parse_synth_opts(const struct option *opt, const char *str,
>  				goto out_err;
>  			p = endptr;
>  			break;
> +		case 'f':
> +			synth_opts->flc = true;
> +			break;
> +		case 'm':
> +			synth_opts->llc = true;
> +			break;
> +		case 't':
> +			synth_opts->tlb = true;
> +			break;
> +		case 'a':
> +			synth_opts->remote_access = true;
> +			break;
>  		case ' ':
>  		case ',':
>  			break;
> diff --git a/tools/perf/util/auxtrace.h b/tools/perf/util/auxtrace.h
> index 0220a2e86c16..142ccf7d34df 100644
> --- a/tools/perf/util/auxtrace.h
> +++ b/tools/perf/util/auxtrace.h
> @@ -63,6 +63,7 @@ enum itrace_period_type {
>   *          because 'perf inject' will write it out
>   * @instructions: whether to synthesize 'instructions' events
>   * @branches: whether to synthesize 'branches' events
> + *            (branch misses only for Arm SPE)
>   * @transactions: whether to synthesize events for transactions
>   * @ptwrites: whether to synthesize events for ptwrites
>   * @pwr_events: whether to synthesize power events
> @@ -78,6 +79,10 @@ enum itrace_period_type {
>   * @thread_stack: feed branches to the thread_stack
>   * @last_branch: add branch context to 'instruction' events
>   * @add_last_branch: add branch context to existing event records
> + * @flc: whether to synthesize first level cache events
> + * @llc: whether to synthesize last level cache events
> + * @tlb: whether to synthesize TLB events
> + * @remote_access: whether to synthesize remote access events
>   * @callchain_sz: maximum callchain size
>   * @last_branch_sz: branch context size
>   * @period: 'instructions' events period
> @@ -107,6 +112,10 @@ struct itrace_synth_opts {
>  	bool			thread_stack;
>  	bool			last_branch;
>  	bool			add_last_branch;
> +	bool			flc;
> +	bool			llc;
> +	bool			tlb;
> +	bool			remote_access;
>  	unsigned int		callchain_sz;
>  	unsigned int		last_branch_sz;
>  	unsigned long long	period;
> @@ -596,7 +605,7 @@ bool auxtrace__evsel_is_auxtrace(struct perf_session *session,
>  
>  #define ITRACE_HELP \
>  "				i:	    		synthesize instructions events\n"		\
> -"				b:	    		synthesize branches events\n"		\
> +"				b:	    		synthesize branches events (branch misses for Arm SPE)\n" \
>  "				c:	    		synthesize branches events (calls only)\n"	\
>  "				r:	    		synthesize branches events (returns only)\n" \
>  "				x:	    		synthesize transactions events\n"		\
> @@ -604,6 +613,10 @@ bool auxtrace__evsel_is_auxtrace(struct perf_session *session,
>  "				p:	    		synthesize power events\n"			\
>  "				e:	    		synthesize error events\n"			\
>  "				d:	    		create a debug log\n"			\
> +"				f:	    		synthesize first level cache events\n" \
> +"				m:	    		synthesize last level cache events\n" \
> +"				t:	    		synthesize TLB events\n" \
> +"				a:	    		synthesize remote access events\n" \
>  "				g[len]:     		synthesize a call chain (use with i or x)\n" \
>  "				l[len]:     		synthesize last branch entries (use with i or x)\n" \
>  "				sNUMBER:    		skip initial number of events\n"		\
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
