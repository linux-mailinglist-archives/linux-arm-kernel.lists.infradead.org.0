Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC290140ACB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 14:34:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ePlDWC4gbxCY6UIMfAEL7aovXGAgdfVKb0Z9f4c3TC0=; b=MMBN8XwtfgTrL6
	cK+We4wXYOC1V09vfYJYuNyxAY4r1poy/ah0NprzV7W2S9Q5LCYY34odo5q8DRkwXI/St3KO4WZL1
	9oDbRNr4B8JuwD4wsZbBpA+AIezKUXdqLXafPYbQbldYaan36YUK561tsDudqhXbavYkzU5BtCYKG
	Ve95AWdJDH9oW6GAo1TjkKqJCdm0KrOQfBWBMuj/8NcH0Po4EqAWISSqVs7BsiebVXLLeJyrRDtRl
	tXdCwRwMFXyKwZrSBMnVEqd8OSfgEfzet2ssE0fZj3zabaKOpfcBMyNyf4SgdTKmmk82IFKa6DriE
	QvlPdqsuFap9g7lEKm9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isRlT-0003NC-Uv; Fri, 17 Jan 2020 13:34:19 +0000
Received: from [179.97.37.151] (helo=sandy.ghostprotocols.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isRlN-0003Mu-JD; Fri, 17 Jan 2020 13:34:14 +0000
Received: by sandy.ghostprotocols.net (Postfix, from userid 1000)
 id 3ABB611E4; Fri, 17 Jan 2020 10:34:09 -0300 (BRT)
Date: Fri, 17 Jan 2020 10:34:09 -0300
From: Arnaldo Carvalho de Melo <acme@redhat.com>
To: Leo Yan <leo.yan@linaro.org>
Subject: Re: [PATCH v6 2/2] perf parse: Copy string to perf_evsel_config_term
Message-ID: <20200117133409.GB3323@redhat.com>
References: <20200117055251.24058-1-leo.yan@linaro.org>
 <20200117055251.24058-2-leo.yan@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200117055251.24058-2-leo.yan@linaro.org>
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

Em Fri, Jan 17, 2020 at 01:52:51PM +0800, Leo Yan escreveu:
> perf with CoreSight fails to record trace data with command:
> 
>   perf record -e cs_etm/@tmc_etr0/u --per-thread ls
>   failed to set sink "" on event cs_etm/@tmc_etr0/u with 21 (Is a
>   directory)/perf/
> 
> This failure is root caused with the commit 1dc925568f01 ("perf
> parse: Add a deep delete for parse event terms").
> 
> The log shows, cs_etm fails to parse the sink attribution; cs_etm event
> relies on the event configuration to pass sink name, but the event
> specific configuration data cannot be passed properly with flow:
> 
>   get_config_terms()
>     ADD_CONFIG_TERM(DRV_CFG, term->val.str);
>       __t->val.str = term->val.str;
>         `> __t->val.str is assigned to term->val.str;
> 
>   parse_events_terms__purge()
>     parse_events_term__delete()
>       zfree(&term->val.str);
>         `> term->val.str is freed and assigned to NULL pointer;
> 
>   cs_etm_set_sink_attr()
>     sink = __t->val.str;
>       `> sink string has been freed.
> 
> To fix this issue, in the function get_config_terms(), this patch
> changes to use strdup() for allocation a new duplicate string rather
> than directly assignment string pointer.
> 
> This patch addes a new field 'free_str' in the data structure
> perf_evsel_config_term; 'free_str' is set to true when the union is used
> as a string pointer; thus it can tell perf_evsel__free_config_terms() to
> free the string.
> 
> Fixes: 1dc925568f01 ("perf parse: Add a deep delete for parse event terms")
> Suggested-by: Jiri Olsa <jolsa@kernel.org>
> Signed-off-by: Leo Yan <leo.yan@linaro.org>
> Acked-by: Jiri Olsa <jolsa@kernel.org>
> ---
>  tools/perf/util/evsel.c        | 2 ++
>  tools/perf/util/evsel_config.h | 1 +
>  tools/perf/util/parse-events.c | 7 ++++++-
>  3 files changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/tools/perf/util/evsel.c b/tools/perf/util/evsel.c
> index 549abd43816f..6fe9e28180e5 100644
> --- a/tools/perf/util/evsel.c
> +++ b/tools/perf/util/evsel.c
> @@ -1265,6 +1265,8 @@ static void perf_evsel__free_config_terms(struct evsel *evsel)
>  
>  	list_for_each_entry_safe(term, h, &evsel->config_terms, list) {
>  		list_del_init(&term->list);
> +		if (term->free_str)
> +			free(term->val.str);

I'm replacing this with zfree, so that we can catch possible bugs where
term gets used after freed, just like you do below, in ADD_CONFIG_TERM_STR()

Thanks,

>  		free(term);
>  	}
>  }
> diff --git a/tools/perf/util/evsel_config.h b/tools/perf/util/evsel_config.h
> index b4a65201e4f7..e026ab67b008 100644
> --- a/tools/perf/util/evsel_config.h
> +++ b/tools/perf/util/evsel_config.h
> @@ -32,6 +32,7 @@ enum evsel_term_type {
>  struct perf_evsel_config_term {
>  	struct list_head      list;
>  	enum evsel_term_type  type;
> +	bool		      free_str;
>  	union {
>  		u64	      period;
>  		u64	      freq;
> diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
> index f59f3c8da473..c01ba6f8fdad 100644
> --- a/tools/perf/util/parse-events.c
> +++ b/tools/perf/util/parse-events.c
> @@ -1240,7 +1240,12 @@ do {								\
>  #define ADD_CONFIG_TERM_STR(__type, __val)			\
>  do {								\
>  	ADD_CONFIG_TERM(__type);				\
> -	__t->val.str = __val;					\
> +	__t->val.str = strdup(__val);				\
> +	if (!__t->val.str) {					\
> +		zfree(&__t);					\
> +		return -ENOMEM;					\
> +	}							\
> +	__t->free_str = true;					\
>  } while (0)
>  
>  	struct parse_events_term *term;
> -- 
> 2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
