Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE80A386EF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 11:21:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=b1pp8eSV/oFX3h5rnxIlmLCa08Q4ZkQHCz9lMeziymE=; b=ExwXAx/ycJYGod/tJ2zeTwWYa
	7dzcm0Lvd/wqfBtxH5L5eM5+4k2axy/D0mjrGOPKin/7aeWk6S/jUR1NtHcxre3h2yBkYfwt46tM7
	RvwXtMXPG+ua/pRBcqSWsVbGI/1EaxXzrHbfMjJKxsgH7kOoajtiWJFz++CMyVihexuhX5U170XEE
	viznqKO0bXoAdzJAilsuD0lFDVYOF2FzS9HoxAKO9YR/RVvH89xAbMiqLhsenIJVYb0FANiUOcr8L
	oK7TtO5CivyWNdgje3UscFPi4OU7+MRQxL50CnPn8+oORsmPrAgj56jbKgJB/qOMyWi3QIS0lNn5+
	MbV9f6L7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZB4M-0004DA-H8; Fri, 07 Jun 2019 09:21:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hZB49-0004Cf-TQ
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 09:21:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 286A5360;
 Fri,  7 Jun 2019 02:21:41 -0700 (PDT)
Received: from [10.1.196.93] (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C0EB43F96A;
 Fri,  7 Jun 2019 02:21:39 -0700 (PDT)
Subject: Re: [PATCH v2 01/17] perf tools: Configure contextID tracing in
 CPU-wide mode
To: mathieu.poirier@linaro.org, acme@kernel.org
References: <20190524173508.29044-1-mathieu.poirier@linaro.org>
 <20190524173508.29044-2-mathieu.poirier@linaro.org>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <68c1c548-33cd-31e8-100d-7ffad008c7b2@arm.com>
Date: Fri, 7 Jun 2019 10:21:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190524173508.29044-2-mathieu.poirier@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_022142_035869_26B6E0FE 
X-CRM114-Status: GOOD (  29.61  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: peterz@infradead.org, coresight@lists.linaro.org,
 linux-kernel@vger.kernel.org, alexander.shishkin@linux.intel.com,
 mingo@redhat.com, leo.yan@linaro.org, namhyung@kernel.org, jolsa@redhat.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mathieu,

On 24/05/2019 18:34, Mathieu Poirier wrote:
> When operating in CPU-wide mode being notified of contextID changes is
> required so that the decoding mechanic is aware of the process context
> switch.
> 
> Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>


> Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

I am sorry but, I don't remember reviewing this patch in the previous
postings. But here we go.

> ---
>   tools/perf/arch/arm/util/cs-etm.c | 126 +++++++++++++++++++++++++-----
>   tools/perf/util/cs-etm.h          |  12 +++
>   2 files changed, 119 insertions(+), 19 deletions(-)
> 
> diff --git a/tools/perf/arch/arm/util/cs-etm.c b/tools/perf/arch/arm/util/cs-etm.c
> index 911426721170..3912f0bf04ed 100644
> --- a/tools/perf/arch/arm/util/cs-etm.c
> +++ b/tools/perf/arch/arm/util/cs-etm.c
> @@ -35,8 +35,100 @@ struct cs_etm_recording {
>   	size_t			snapshot_size;
>   };
>   


>   static bool cs_etm_is_etmv4(struct auxtrace_record *itr, int cpu);
>   
> +static int cs_etm_set_context_id(struct auxtrace_record *itr,
> +				 struct perf_evsel *evsel, int cpu)
> +{
> +	struct cs_etm_recording *ptr;
> +	struct perf_pmu *cs_etm_pmu;
> +	char path[PATH_MAX];
> +	int err = -EINVAL;
> +	u32 val;
> +
> +	ptr = container_of(itr, struct cs_etm_recording, itr);
> +	cs_etm_pmu = ptr->cs_etm_pmu;
> +
> +	if (!cs_etm_is_etmv4(itr, cpu))
> +		goto out;
> +
> +	/* Get a handle on TRCIRD2 */
> +	snprintf(path, PATH_MAX, "cpu%d/%s",
> +		 cpu, metadata_etmv4_ro[CS_ETMV4_TRCIDR2]);
> +	err = perf_pmu__scan_file(cs_etm_pmu, path, "%x", &val);
> +
> +	/* There was a problem reading the file, bailing out */
> +	if (err != 1) {
> +		pr_err("%s: can't read file %s\n",
> +		       CORESIGHT_ETM_PMU_NAME, path);
> +		goto out;
> +	}
> +
> +	/*
> +	 * TRCIDR2.CIDSIZE, bit [9-5], indicates whether contextID tracing
> +	 * is supported:
> +	 *  0b00000 Context ID tracing is not supported.
> +	 *  0b00100 Maximum of 32-bit Context ID size.
> +	 *  All other values are reserved.
> +	 */
> +	val = BMVAL(val, 5, 9);
> +	if (!val || val != 0x4) {
> +		err = -EINVAL;
> +		goto out;
> +	}
> +
> +	/* All good, let the kernel know */
> +	evsel->attr.config |= (1 << ETM_OPT_CTXTID);
> +	err = 0;
> +
> +out:
> +
> +	return err;
> +}
> +
> +static int cs_etm_set_option(struct auxtrace_record *itr,
> +			     struct perf_evsel *evsel, u32 option)
> +{
> +	int i, err = -EINVAL;
> +	struct cpu_map *event_cpus = evsel->evlist->cpus;
> +	struct cpu_map *online_cpus = cpu_map__new(NULL);
> +
> +	/* Set option of each CPU we have */
> +	for (i = 0; i < cpu__max_cpu(); i++) {
> +		if (!cpu_map__has(event_cpus, i) ||
> +		    !cpu_map__has(online_cpus, i))
> +			continue;
> +
> +		switch (option) {
> +		case ETM_OPT_CTXTID:
> +			err = cs_etm_set_context_id(itr, evsel, i);
> +			if (err)
> +				goto out;
> +			break;
> +		default:
> +			goto out;
> +		}
> +	}

I am not too familiar with the perf tool code. But, isn't there a way
to force the config bit, right from the beginning when the events are
created, when we know that we are doing a CPU wide tracing, along with
the other config bits ?



> +	err = 0;
> +out:
> +	cpu_map__put(online_cpus);
> +	return err;
> +}
> +
>   static int cs_etm_parse_snapshot_options(struct auxtrace_record *itr,
>   					 struct record_opts *opts,
>   					 const char *str)
> @@ -105,8 +197,9 @@ static int cs_etm_recording_options(struct auxtrace_record *itr,
>   				container_of(itr, struct cs_etm_recording, itr);
>   	struct perf_pmu *cs_etm_pmu = ptr->cs_etm_pmu;
>   	struct perf_evsel *evsel, *cs_etm_evsel = NULL;
> -	const struct cpu_map *cpus = evlist->cpus;
> +	struct cpu_map *cpus = evlist->cpus;
>   	bool privileged = (geteuid() == 0 || perf_event_paranoid() < 0);
> +	int err = 0;
>   
>   	ptr->evlist = evlist;
>   	ptr->snapshot_mode = opts->auxtrace_snapshot_mode;
> @@ -241,19 +334,24 @@ static int cs_etm_recording_options(struct auxtrace_record *itr,
>   
>   	/*
>   	 * In the case of per-cpu mmaps, we need the CPU on the
> -	 * AUX event.
> +	 * AUX event.  We also need the contextID in order to be notified
> +	 * when a context switch happened.
>   	 */
> -	if (!cpu_map__empty(cpus))
> +	if (!cpu_map__empty(cpus)) {
>   		perf_evsel__set_sample_bit(cs_etm_evsel, CPU);
>   
> +		err = cs_etm_set_option(itr, cs_etm_evsel, ETM_OPT_CTXTID);
> +		if (err)
> +			goto out;
> +	}
> +
>   	/* Add dummy event to keep tracking */
>   	if (opts->full_auxtrace) {
>   		struct perf_evsel *tracking_evsel;
> -		int err;
>   
>   		err = parse_events(evlist, "dummy:u", NULL);
>   		if (err)
> -			return err;
> +			goto out;
>   
>   		tracking_evsel = perf_evlist__last(evlist);
>   		perf_evlist__set_tracking_event(evlist, tracking_evsel);
> @@ -266,7 +364,8 @@ static int cs_etm_recording_options(struct auxtrace_record *itr,
>   			perf_evsel__set_sample_bit(tracking_evsel, TIME);
>   	}
>   
> -	return 0;
> +out:
> +	return err;
>   }


> diff --git a/tools/perf/util/cs-etm.h b/tools/perf/util/cs-etm.h
> index 0e97c196147a..826c9eedaf5c 100644
> --- a/tools/perf/util/cs-etm.h
> +++ b/tools/perf/util/cs-etm.h
> @@ -103,6 +103,18 @@ struct intlist *traceid_list;
>   #define KiB(x) ((x) * 1024)
>   #define MiB(x) ((x) * 1024 * 1024)
>   
> +/*
> + * Create a contiguous bitmask starting at bit position @l and ending at
> + * position @h. For example
> + * GENMASK_ULL(39, 21) gives us the 64bit vector 0x000000ffffe00000.
> + *
> + * Carbon copy of implementation found in $KERNEL/include/linux/bitops.h
> + */
> +#define GENMASK(h, l) \
> +	(((~0UL) - (1UL << (l)) + 1) & (~0UL >> (BITS_PER_LONG - 1 - (h))))
> +

minor nit: Could this be placed in a more generic header file for the other
parts of the perf tool to consume ?

> +#define BMVAL(val, lsb, msb)	((val & GENMASK(msb, lsb)) >> lsb)
> +


Cheers
Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
