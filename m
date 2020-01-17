Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 778C7140AD5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 14:36:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tLDH7LpJLACYWpbpkYOJchAjENJHP2mPglp87h4hWpM=; b=Uy+KXU3Xt9A81o
	HYPc0kdVJzk0EmeAcy2VKBl/hCx6eRDDx24hGIEfwAZHS+NB6GBDDhzKhr9v5/BR3/Ry6bwoqjSqz
	iXrC1vzaGCbbw4IFsdpsr1OL6JYrfmONhwQIfhSVl/8HmFpJ1Rxlyj0CpboXFI8moRNNhj3l/GJrD
	DqJ7agDfLny1LMirBsjWdtlJtT32ogIrXNdqHNPOsZMZ5OqQ2k5GxQsv1zGKFavBHm8NgEYQWfMda
	eBhAGft54lS/boZ83JKnbj/4vKLCcFRE+ZGO5g2mbOn1vDkcQWdc9GZGfPG47dPV8TEOJzoByxm77
	gqpi9KQyU0iyqIDqtuoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isRnJ-0005Ci-Ol; Fri, 17 Jan 2020 13:36:13 +0000
Received: from [179.97.37.151] (helo=sandy.ghostprotocols.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isRnD-0005CW-7R; Fri, 17 Jan 2020 13:36:07 +0000
Received: by sandy.ghostprotocols.net (Postfix, from userid 1000)
 id 644B711E4; Fri, 17 Jan 2020 10:36:04 -0300 (BRT)
Date: Fri, 17 Jan 2020 10:36:04 -0300
From: Arnaldo Carvalho de Melo <acme@redhat.com>
To: Leo Yan <leo.yan@linaro.org>
Subject: Re: [PATCH v6 1/2] perf parse: Refactor struct perf_evsel_config_term
Message-ID: <20200117133604.GC3323@redhat.com>
References: <20200117055251.24058-1-leo.yan@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200117055251.24058-1-leo.yan@linaro.org>
X-Url: http://acmel.wordpress.com
User-Agent: Mutt/1.5.20 (2009-12-10)
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ian Rogers <irogers@google.com>,
 Andi Kleen <ak@linux.intel.com>, Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Peter Zijlstra <peterz@infradead.org>, Adrian Hunter <adrian.hunter@intel.com>,
 linux-kernel@vger.kernel.org,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Jiri Olsa <jolsa@kernel.org>,
 Namhyung Kim <namhyung@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Fri, Jan 17, 2020 at 01:52:50PM +0800, Leo Yan escreveu:
> The struct perf_evsel_config_term::val is a union which contains
> fields 'callgraph', 'drv_cfg' and 'branch' as string pointers.  This
> leads to the complex code logic for handling every type's string
> separately, and it's hard to release string as a general way.
> 
> This patch refactors the structure to add a common field 'str' in the
> 'val' union as string pointer and remove the other three fields
> 'callgraph', 'drv_cfg' and 'branch'.  Without passing field name, the
> patch simplifies the string handling with macro ADD_CONFIG_TERM_STR()
> for string pointer assignment.
> 
> This patch fixes multiple warnings of line over 80 characters detected
> by checkpatch tool.

Thanks, applied both.
 
> Signed-off-by: Leo Yan <leo.yan@linaro.org>
> Reviewed-by: Andi Kleen <ak@linux.intel.com>
> Acked-by: Jiri Olsa <jolsa@kernel.org>
> ---
>  tools/perf/arch/arm/util/cs-etm.c |  2 +-
>  tools/perf/util/evsel.c           |  6 +--
>  tools/perf/util/evsel_config.h    |  4 +-
>  tools/perf/util/parse-events.c    | 62 ++++++++++++++++++++-----------
>  4 files changed, 45 insertions(+), 29 deletions(-)
> 
> diff --git a/tools/perf/arch/arm/util/cs-etm.c b/tools/perf/arch/arm/util/cs-etm.c
> index ede040cf82ad..2898cfdf8fe1 100644
> --- a/tools/perf/arch/arm/util/cs-etm.c
> +++ b/tools/perf/arch/arm/util/cs-etm.c
> @@ -226,7 +226,7 @@ static int cs_etm_set_sink_attr(struct perf_pmu *pmu,
>  		if (term->type != PERF_EVSEL__CONFIG_TERM_DRV_CFG)
>  			continue;
>  
> -		sink = term->val.drv_cfg;
> +		sink = term->val.str;
>  		snprintf(path, PATH_MAX, "sinks/%s", sink);
>  
>  		ret = perf_pmu__scan_file(pmu, path, "%x", &hash);
> diff --git a/tools/perf/util/evsel.c b/tools/perf/util/evsel.c
> index a69e64236120..549abd43816f 100644
> --- a/tools/perf/util/evsel.c
> +++ b/tools/perf/util/evsel.c
> @@ -808,12 +808,12 @@ static void apply_config_terms(struct evsel *evsel,
>  				perf_evsel__reset_sample_bit(evsel, TIME);
>  			break;
>  		case PERF_EVSEL__CONFIG_TERM_CALLGRAPH:
> -			callgraph_buf = term->val.callgraph;
> +			callgraph_buf = term->val.str;
>  			break;
>  		case PERF_EVSEL__CONFIG_TERM_BRANCH:
> -			if (term->val.branch && strcmp(term->val.branch, "no")) {
> +			if (term->val.str && strcmp(term->val.str, "no")) {
>  				perf_evsel__set_sample_bit(evsel, BRANCH_STACK);
> -				parse_branch_str(term->val.branch,
> +				parse_branch_str(term->val.str,
>  						 &attr->branch_sample_type);
>  			} else
>  				perf_evsel__reset_sample_bit(evsel, BRANCH_STACK);
> diff --git a/tools/perf/util/evsel_config.h b/tools/perf/util/evsel_config.h
> index 1f8d2fe0b66e..b4a65201e4f7 100644
> --- a/tools/perf/util/evsel_config.h
> +++ b/tools/perf/util/evsel_config.h
> @@ -36,18 +36,16 @@ struct perf_evsel_config_term {
>  		u64	      period;
>  		u64	      freq;
>  		bool	      time;
> -		char	      *callgraph;
> -		char	      *drv_cfg;
>  		u64	      stack_user;
>  		int	      max_stack;
>  		bool	      inherit;
>  		bool	      overwrite;
> -		char	      *branch;
>  		unsigned long max_events;
>  		bool	      percore;
>  		bool	      aux_output;
>  		u32	      aux_sample_size;
>  		u64	      cfg_chg;
> +		char	      *str;
>  	} val;
>  	bool weak;
>  };
> diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
> index ed7c008b9c8b..f59f3c8da473 100644
> --- a/tools/perf/util/parse-events.c
> +++ b/tools/perf/util/parse-events.c
> @@ -1219,8 +1219,7 @@ static int config_attr(struct perf_event_attr *attr,
>  static int get_config_terms(struct list_head *head_config,
>  			    struct list_head *head_terms __maybe_unused)
>  {
> -#define ADD_CONFIG_TERM(__type, __name, __val)			\
> -do {								\
> +#define ADD_CONFIG_TERM(__type)					\
>  	struct perf_evsel_config_term *__t;			\
>  								\
>  	__t = zalloc(sizeof(*__t));				\
> @@ -1229,9 +1228,19 @@ do {								\
>  								\
>  	INIT_LIST_HEAD(&__t->list);				\
>  	__t->type       = PERF_EVSEL__CONFIG_TERM_ ## __type;	\
> -	__t->val.__name = __val;				\
>  	__t->weak	= term->weak;				\
> -	list_add_tail(&__t->list, head_terms);			\
> +	list_add_tail(&__t->list, head_terms)
> +
> +#define ADD_CONFIG_TERM_VAL(__type, __name, __val)		\
> +do {								\
> +	ADD_CONFIG_TERM(__type);				\
> +	__t->val.__name = __val;				\
> +} while (0)
> +
> +#define ADD_CONFIG_TERM_STR(__type, __val)			\
> +do {								\
> +	ADD_CONFIG_TERM(__type);				\
> +	__t->val.str = __val;					\
>  } while (0)
>  
>  	struct parse_events_term *term;
> @@ -1239,53 +1248,62 @@ do {								\
>  	list_for_each_entry(term, head_config, list) {
>  		switch (term->type_term) {
>  		case PARSE_EVENTS__TERM_TYPE_SAMPLE_PERIOD:
> -			ADD_CONFIG_TERM(PERIOD, period, term->val.num);
> +			ADD_CONFIG_TERM_VAL(PERIOD, period, term->val.num);
>  			break;
>  		case PARSE_EVENTS__TERM_TYPE_SAMPLE_FREQ:
> -			ADD_CONFIG_TERM(FREQ, freq, term->val.num);
> +			ADD_CONFIG_TERM_VAL(FREQ, freq, term->val.num);
>  			break;
>  		case PARSE_EVENTS__TERM_TYPE_TIME:
> -			ADD_CONFIG_TERM(TIME, time, term->val.num);
> +			ADD_CONFIG_TERM_VAL(TIME, time, term->val.num);
>  			break;
>  		case PARSE_EVENTS__TERM_TYPE_CALLGRAPH:
> -			ADD_CONFIG_TERM(CALLGRAPH, callgraph, term->val.str);
> +			ADD_CONFIG_TERM_STR(CALLGRAPH, term->val.str);
>  			break;
>  		case PARSE_EVENTS__TERM_TYPE_BRANCH_SAMPLE_TYPE:
> -			ADD_CONFIG_TERM(BRANCH, branch, term->val.str);
> +			ADD_CONFIG_TERM_STR(BRANCH, term->val.str);
>  			break;
>  		case PARSE_EVENTS__TERM_TYPE_STACKSIZE:
> -			ADD_CONFIG_TERM(STACK_USER, stack_user, term->val.num);
> +			ADD_CONFIG_TERM_VAL(STACK_USER, stack_user,
> +					    term->val.num);
>  			break;
>  		case PARSE_EVENTS__TERM_TYPE_INHERIT:
> -			ADD_CONFIG_TERM(INHERIT, inherit, term->val.num ? 1 : 0);
> +			ADD_CONFIG_TERM_VAL(INHERIT, inherit,
> +					    term->val.num ? 1 : 0);
>  			break;
>  		case PARSE_EVENTS__TERM_TYPE_NOINHERIT:
> -			ADD_CONFIG_TERM(INHERIT, inherit, term->val.num ? 0 : 1);
> +			ADD_CONFIG_TERM_VAL(INHERIT, inherit,
> +					    term->val.num ? 0 : 1);
>  			break;
>  		case PARSE_EVENTS__TERM_TYPE_MAX_STACK:
> -			ADD_CONFIG_TERM(MAX_STACK, max_stack, term->val.num);
> +			ADD_CONFIG_TERM_VAL(MAX_STACK, max_stack,
> +					    term->val.num);
>  			break;
>  		case PARSE_EVENTS__TERM_TYPE_MAX_EVENTS:
> -			ADD_CONFIG_TERM(MAX_EVENTS, max_events, term->val.num);
> +			ADD_CONFIG_TERM_VAL(MAX_EVENTS, max_events,
> +					    term->val.num);
>  			break;
>  		case PARSE_EVENTS__TERM_TYPE_OVERWRITE:
> -			ADD_CONFIG_TERM(OVERWRITE, overwrite, term->val.num ? 1 : 0);
> +			ADD_CONFIG_TERM_VAL(OVERWRITE, overwrite,
> +					    term->val.num ? 1 : 0);
>  			break;
>  		case PARSE_EVENTS__TERM_TYPE_NOOVERWRITE:
> -			ADD_CONFIG_TERM(OVERWRITE, overwrite, term->val.num ? 0 : 1);
> +			ADD_CONFIG_TERM_VAL(OVERWRITE, overwrite,
> +					    term->val.num ? 0 : 1);
>  			break;
>  		case PARSE_EVENTS__TERM_TYPE_DRV_CFG:
> -			ADD_CONFIG_TERM(DRV_CFG, drv_cfg, term->val.str);
> +			ADD_CONFIG_TERM_STR(DRV_CFG, term->val.str);
>  			break;
>  		case PARSE_EVENTS__TERM_TYPE_PERCORE:
> -			ADD_CONFIG_TERM(PERCORE, percore,
> -					term->val.num ? true : false);
> +			ADD_CONFIG_TERM_VAL(PERCORE, percore,
> +					    term->val.num ? true : false);
>  			break;
>  		case PARSE_EVENTS__TERM_TYPE_AUX_OUTPUT:
> -			ADD_CONFIG_TERM(AUX_OUTPUT, aux_output, term->val.num ? 1 : 0);
> +			ADD_CONFIG_TERM_VAL(AUX_OUTPUT, aux_output,
> +					    term->val.num ? 1 : 0);
>  			break;
>  		case PARSE_EVENTS__TERM_TYPE_AUX_SAMPLE_SIZE:
> -			ADD_CONFIG_TERM(AUX_SAMPLE_SIZE, aux_sample_size, term->val.num);
> +			ADD_CONFIG_TERM_VAL(AUX_SAMPLE_SIZE, aux_sample_size,
> +					    term->val.num);
>  			break;
>  		default:
>  			break;
> @@ -1322,7 +1340,7 @@ static int get_config_chgs(struct perf_pmu *pmu, struct list_head *head_config,
>  	}
>  
>  	if (bits)
> -		ADD_CONFIG_TERM(CFG_CHG, cfg_chg, bits);
> +		ADD_CONFIG_TERM_VAL(CFG_CHG, cfg_chg, bits);
>  
>  #undef ADD_CONFIG_TERM
>  	return 0;
> -- 
> 2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
