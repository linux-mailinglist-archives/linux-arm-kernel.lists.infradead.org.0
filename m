Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EC8216114E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 12:43:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9yS7DbD/Ev5X1j4TA4I5Hy5YP86fW5s5sEC+okuhoW0=; b=uk7+5y0isz0GmT
	sdZAO/7J+1qj33roLPatIYv4oEcZ4hRYDk7LQuDUUJbC6/ZXqtyJrVT3fmPkvv12lCaNTyfid1Nyi
	sfCbC1pdXbkTO76DuxvuqAIkobVUbJ3hf8W+pa7UlEUfD493pXu+NfCdfVsO3t35gd//eQzHKUtPv
	Wh9e57mMnE2+yuuX8BahjN6tL8yzoRcP3MntGxiSQMBRXb2qKjvPqem3eOe0L113H3FunbB8aquBh
	fmAF7IbezxyxoKg8ViWX/phgFEmuhVCsQ6kxt3Aqh6VPgAUjYHIfy5t8NO+mDoa/mKdM8Ej692QGq
	oQppcq/1tW5jm0d6YEWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3eoT-0003kw-VL; Mon, 17 Feb 2020 11:43:45 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3eoM-0003kA-S8
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 11:43:40 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Feb 2020 03:43:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,452,1574150400"; d="scan'208";a="435525725"
Received: from ahunter-desktop.fi.intel.com (HELO [10.237.72.167])
 ([10.237.72.167])
 by fmsmga006.fm.intel.com with ESMTP; 17 Feb 2020 03:43:33 -0800
Subject: Re: [PATCH v4 4/4] perf tools: Support "branch-misses:pp" on arm64
To: James Clark <james.clark@arm.com>, jolsa@redhat.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20200210122509.GA2005279@krava>
 <20200211140445.21986-1-james.clark@arm.com>
 <20200211140445.21986-5-james.clark@arm.com>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
Message-ID: <3114ea3a-5d9b-2c25-af41-cead352b6a02@intel.com>
Date: Mon, 17 Feb 2020 13:42:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200211140445.21986-5-james.clark@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_034338_959381_4990F159 
X-CRM114-Status: GOOD (  25.84  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.20 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, Al Grant <al.grant@arm.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Namhyung Kim <namhyung@kernel.org>, nd@arm.com,
 Tan Xiaojun <tanxiaojun@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/02/20 4:04 pm, James Clark wrote:
> From: Tan Xiaojun <tanxiaojun@huawei.com>
> 
> At the suggestion of James Clark, use spe to support the precise
> ip of some events. Currently its support event is:
> branch-misses.
> 
> Example usage:
> 
> $ ./perf record -e branch-misses:pp dd if=/dev/zero of=/dev/null count=10000
> (:p/pp/ppp is same for this case.)
> 
> $ ./perf report --stdio
> ("--stdio is not necessary")
> 
> --------------------------------------------------------------------
> ...
>  # Samples: 14  of event 'branch-misses:pp'
>  # Event count (approx.): 14
>  #
>  # Children      Self  Command  Shared Object      Symbol
>  # ........  ........  .......  .................  ..........................
>  #
>     14.29%    14.29%  dd       [kernel.kallsyms]  [k] __arch_copy_from_user
>     14.29%    14.29%  dd       libc-2.28.so       [.] _dl_addr
>      7.14%     7.14%  dd       [kernel.kallsyms]  [k] __free_pages
>      7.14%     7.14%  dd       [kernel.kallsyms]  [k] __pi_memcpy
>      7.14%     7.14%  dd       [kernel.kallsyms]  [k] pagecache_get_page
>      7.14%     7.14%  dd       [kernel.kallsyms]  [k] unmap_single_vma
>      7.14%     7.14%  dd       dd                 [.] 0x00000000000025ec
>      7.14%     7.14%  dd       ld-2.28.so         [.] _dl_lookup_symbol_x
>      7.14%     7.14%  dd       ld-2.28.so         [.] check_match
>      7.14%     7.14%  dd       libc-2.28.so       [.] __mpn_rshift
>      7.14%     7.14%  dd       libc-2.28.so       [.] _nl_intern_locale_data
>      7.14%     7.14%  dd       libc-2.28.so       [.] read_alias_file
> ...
> --------------------------------------------------------------------
> 
> Signed-off-by: Tan Xiaojun <tanxiaojun@huawei.com>
> Suggested-by: James Clark <James.Clark@arm.com>
> Tested-by: Qi Liu <liuqi115@hisilicon.com>
> Signed-off-by: James Clark <james.clark@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Peter Zijlstra <peterz@infradead.org>
> Cc: Ingo Molnar <mingo@redhat.com>
> Cc: Arnaldo Carvalho de Melo <acme@kernel.org>
> Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
> Cc: Jiri Olsa <jolsa@redhat.com>
> Cc: Tan Xiaojun <tanxiaojun@huawei.com>
> Cc: Al Grant <al.grant@arm.com>
> Cc: Namhyung Kim <namhyung@kernel.org>
> ---
>  tools/perf/arch/arm/util/auxtrace.c | 38 +++++++++++++++++++++++++++++
>  tools/perf/builtin-record.c         |  5 ++++
>  tools/perf/util/arm-spe.c           |  9 +++++++
>  tools/perf/util/arm-spe.h           |  3 +++
>  tools/perf/util/auxtrace.h          |  6 +++++
>  5 files changed, 61 insertions(+)
> 
> diff --git a/tools/perf/arch/arm/util/auxtrace.c b/tools/perf/arch/arm/util/auxtrace.c
> index 0a6e75b8777a..18f0ea7556e7 100644
> --- a/tools/perf/arch/arm/util/auxtrace.c
> +++ b/tools/perf/arch/arm/util/auxtrace.c
> @@ -10,11 +10,25 @@
>  
>  #include "../../util/auxtrace.h"
>  #include "../../util/debug.h"
> +#include "../../util/env.h"
>  #include "../../util/evlist.h"
>  #include "../../util/pmu.h"
>  #include "cs-etm.h"
>  #include "arm-spe.h"
>  
> +#define SPE_ATTR_TS_ENABLE		BIT(0)
> +#define SPE_ATTR_PA_ENABLE		BIT(1)
> +#define SPE_ATTR_PCT_ENABLE		BIT(2)
> +#define SPE_ATTR_JITTER			BIT(16)
> +#define SPE_ATTR_BRANCH_FILTER		BIT(32)
> +#define SPE_ATTR_LOAD_FILTER		BIT(33)
> +#define SPE_ATTR_STORE_FILTER		BIT(34)
> +
> +#define SPE_ATTR_EV_RETIRED		BIT(1)
> +#define SPE_ATTR_EV_CACHE		BIT(3)
> +#define SPE_ATTR_EV_TLB			BIT(5)
> +#define SPE_ATTR_EV_BRANCH		BIT(7)
> +
>  static struct perf_pmu **find_all_arm_spe_pmus(int *nr_spes, int *err)
>  {
>  	struct perf_pmu **arm_spe_pmus = NULL;
> @@ -108,3 +122,27 @@ struct auxtrace_record
>  	*err = 0;
>  	return NULL;
>  }
> +
> +void auxtrace__preprocess_evlist(struct evlist *evlist)
> +{
> +	struct evsel *evsel;
> +	struct perf_pmu *pmu;
> +
> +	evlist__for_each_entry(evlist, evsel) {
> +		/* Currently only supports precise_ip for branch-misses on arm64 */
> +		if (!strcmp(perf_env__arch(evlist->env), "arm64")

Isn't config ambiguous unless you also check type i.e.

			&& evsel->core.attr.type == PERF_TYPE_HARDWARE

> +			&& evsel->core.attr.config == PERF_COUNT_HW_BRANCH_MISSES
> +			&& evsel->core.attr.precise_ip)
> +		{
> +			pmu = perf_pmu__find("arm_spe_0");
> +			if (pmu) {

Changing the event seems a bit weird.

> +				evsel->pmu_name = pmu->name;
> +				evsel->core.attr.type = pmu->type;
> +				evsel->core.attr.config = SPE_ATTR_TS_ENABLE
> +							| SPE_ATTR_BRANCH_FILTER;
> +				evsel->core.attr.config1 = SPE_ATTR_EV_BRANCH;
> +				evsel->core.attr.precise_ip = 0;
> +			}
> +		}
> +	}
> +}
> \ No newline at end of file
> diff --git a/tools/perf/builtin-record.c b/tools/perf/builtin-record.c
> index 4c301466101b..3bc61f03d572 100644
> --- a/tools/perf/builtin-record.c
> +++ b/tools/perf/builtin-record.c
> @@ -2451,6 +2451,11 @@ int cmd_record(int argc, const char **argv)
>  
>  	argc = parse_options(argc, argv, record_options, record_usage,
>  			    PARSE_OPT_STOP_AT_NON_OPTION);
> +
> +	if (auxtrace__preprocess_evlist) {
> +		auxtrace__preprocess_evlist(rec->evlist);
> +	}
> +
>  	if (quiet)
>  		perf_quiet_option();
>  
> diff --git a/tools/perf/util/arm-spe.c b/tools/perf/util/arm-spe.c
> index 4ef22a0775a9..b21806c97dd8 100644
> --- a/tools/perf/util/arm-spe.c
> +++ b/tools/perf/util/arm-spe.c
> @@ -778,6 +778,15 @@ arm_spe_synth_events(struct arm_spe *spe, struct perf_session *session)
>  	attr.sample_id_all = evsel->core.attr.sample_id_all;
>  	attr.read_format = evsel->core.attr.read_format;
>  
> +	/* If it is in the precise ip mode, there is no need to
> +	 * synthesize new events. */
> +	if (!strncmp(evsel->name, "branch-misses", 13)) {
> +		spe->sample_branch_miss = true;
> +		spe->branch_miss_id = evsel->core.id[0];
> +
> +		return 0;
> +	}
> +
>  	/* create new id val to be a fixed offset from evsel id */
>  	id = evsel->core.id[0] + 1000000000;
>  
> diff --git a/tools/perf/util/arm-spe.h b/tools/perf/util/arm-spe.h
> index 98d3235781c3..8b1fb191d03a 100644
> --- a/tools/perf/util/arm-spe.h
> +++ b/tools/perf/util/arm-spe.h
> @@ -20,6 +20,8 @@ enum {
>  union perf_event;
>  struct perf_session;
>  struct perf_pmu;
> +struct evlist;
> +struct evsel;
>  
>  struct auxtrace_record *arm_spe_recording_init(int *err,
>  					       struct perf_pmu *arm_spe_pmu);
> @@ -28,4 +30,5 @@ int arm_spe_process_auxtrace_info(union perf_event *event,
>  				  struct perf_session *session);
>  
>  struct perf_event_attr *arm_spe_pmu_default_config(struct perf_pmu *arm_spe_pmu);
> +void arm_spe_precise_ip_support(struct evlist *evlist, struct evsel *evsel);
>  #endif
> diff --git a/tools/perf/util/auxtrace.h b/tools/perf/util/auxtrace.h
> index 80617b0d044d..4f89a3a31ab2 100644
> --- a/tools/perf/util/auxtrace.h
> +++ b/tools/perf/util/auxtrace.h
> @@ -584,6 +584,7 @@ void auxtrace__dump_auxtrace_sample(struct perf_session *session,
>  int auxtrace__flush_events(struct perf_session *session, struct perf_tool *tool);
>  void auxtrace__free_events(struct perf_session *session);
>  void auxtrace__free(struct perf_session *session);
> +void auxtrace__preprocess_evlist(struct evlist *evlist) __attribute__((weak));
>  
>  #define ITRACE_HELP \
>  "				i:	    		synthesize instructions events\n"		\
> @@ -728,6 +729,11 @@ void auxtrace__free(struct perf_session *session __maybe_unused)
>  {
>  }
>  
> +static inline
> +void auxtrace__preprocess_evlist(struct evlist *evlist __maybe_unused)
> +{
> +}
> +
>  static inline
>  int auxtrace_index__write(int fd __maybe_unused,
>  			  struct list_head *head __maybe_unused)
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
