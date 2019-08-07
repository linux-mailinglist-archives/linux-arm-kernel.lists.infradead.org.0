Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ED6984AEA
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 13:44:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EnK7bJRhL3FFMA6drnRb4hprdJMzldFJTx6e13RMf9Y=; b=LGWW1Asv9AwrfQ
	Igl6kMatvicF+uNLX73gLFAaJGzIYg5PWWW8WjQ/jJD7JfduKTHu9mC9GvAgN/9ZEM/3CuMiG9M4P
	lODU4kiocE8bjchsQx0azqUXgTcGNtzlGNt+19L4EfFihDHO/3UBbYvlW9sYbNahU67JDZ6ZVwwVO
	zescgkiF8rjES1E34vpahuiO/Yo8QgVj/wOJ1l1Cu3tNbdsTPNyZrXaPlItx/Y1bZD7nxTeIKHRjT
	WNjZEP35faCn9QOizAA1j9gAYOs3HIzRVfN88L8fMPDfai+wbPq7OVCsQrO0xqHYP5jxhlaxrBMc+
	GacVRayvozSURdqM58Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvKMs-0004wq-4j; Wed, 07 Aug 2019 11:44:34 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvKMd-0004vk-3E
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 11:44:20 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Aug 2019 04:44:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,357,1559545200"; d="scan'208";a="168607169"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga008.jf.intel.com with ESMTP; 07 Aug 2019 04:44:17 -0700
Received: from [10.125.252.123] (abudanko-mobl.ccr.corp.intel.com
 [10.125.252.123])
 by linux.intel.com (Postfix) with ESMTP id 8386A58046E;
 Wed,  7 Aug 2019 04:44:14 -0700 (PDT)
Subject: Re: [PATCH v2 2/4] perf: Use CAP_SYS_ADMIN with perf_event_paranoid
 checks
To: Igor Lubashev <ilubashe@akamai.com>, linux-kernel@vger.kernel.org,
 Arnaldo Carvalho de Melo <acme@kernel.org>, Jiri Olsa <jolsa@redhat.com>
References: <cover.1565146171.git.ilubashe@akamai.com>
 <70ce92d9c252bbafa883a6b5b3c96cf10d1a5b31.1565146171.git.ilubashe@akamai.com>
From: Alexey Budankov <alexey.budankov@linux.intel.com>
Organization: Intel Corp.
Message-ID: <d23e60f3-addb-8971-90e2-3df16ccfcd76@linux.intel.com>
Date: Wed, 7 Aug 2019 14:44:13 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <70ce92d9c252bbafa883a6b5b3c96cf10d1a5b31.1565146171.git.ilubashe@akamai.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_044419_152525_6A1CB69F 
X-CRM114-Status: GOOD (  17.20  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Peter Zijlstra <peterz@infradead.org>, James Morris <jmorris@namei.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 07.08.2019 6:35, Igor Lubashev wrote:
> The kernel is using CAP_SYS_ADMIN instead of euid==0 to override
> perf_event_paranoid check. Make perf do the same.
> 
> Signed-off-by: Igor Lubashev <ilubashe@akamai.com>
> ---
>  tools/perf/arch/arm/util/cs-etm.c    | 3 ++-
>  tools/perf/arch/arm64/util/arm-spe.c | 4 ++--
>  tools/perf/arch/x86/util/intel-bts.c | 3 ++-
>  tools/perf/arch/x86/util/intel-pt.c  | 2 +-
>  tools/perf/util/evsel.c              | 2 +-
>  5 files changed, 8 insertions(+), 6 deletions(-)
> 
> diff --git a/tools/perf/arch/arm/util/cs-etm.c b/tools/perf/arch/arm/util/cs-etm.c
> index 5cb07e8cb296..b87a1ca2968f 100644
> --- a/tools/perf/arch/arm/util/cs-etm.c
> +++ b/tools/perf/arch/arm/util/cs-etm.c
> @@ -18,6 +18,7 @@
>  #include "../../perf.h"
>  #include "../../util/auxtrace.h"
>  #include "../../util/cpumap.h"
> +#include "../../util/event.h"
>  #include "../../util/evlist.h"
>  #include "../../util/evsel.h"
>  #include "../../util/pmu.h"
> @@ -254,7 +255,7 @@ static int cs_etm_recording_options(struct auxtrace_record *itr,
>  	struct perf_pmu *cs_etm_pmu = ptr->cs_etm_pmu;
>  	struct evsel *evsel, *cs_etm_evsel = NULL;
>  	struct perf_cpu_map *cpus = evlist->core.cpus;
> -	bool privileged = (geteuid() == 0 || perf_event_paranoid() < 0);
> +	bool privileged = perf_event_paranoid_check(-1);
>  	int err = 0;
>  
>  	ptr->evlist = evlist;
> diff --git a/tools/perf/arch/arm64/util/arm-spe.c b/tools/perf/arch/arm64/util/arm-spe.c
> index 00915b8fd05b..200bc973371b 100644
> --- a/tools/perf/arch/arm64/util/arm-spe.c
> +++ b/tools/perf/arch/arm64/util/arm-spe.c
> @@ -12,6 +12,7 @@
>  #include <time.h>
>  
>  #include "../../util/cpumap.h"
> +#include "../../util/event.h"
>  #include "../../util/evsel.h"
>  #include "../../util/evlist.h"
>  #include "../../util/session.h"
> @@ -65,8 +66,7 @@ static int arm_spe_recording_options(struct auxtrace_record *itr,
>  	struct arm_spe_recording *sper =
>  			container_of(itr, struct arm_spe_recording, itr);
>  	struct perf_pmu *arm_spe_pmu = sper->arm_spe_pmu;
> -	struct evsel *evsel, *arm_spe_evsel = NULL;

Makes sense to double check if it compiles with this change.

Regards,
Alexey

> -	bool privileged = geteuid() == 0 || perf_event_paranoid() < 0;
> +	bool privileged = perf_event_paranoid_check(-1);
>  	struct evsel *tracking_evsel;
>  	int err;
>  
> diff --git a/tools/perf/arch/x86/util/intel-bts.c b/tools/perf/arch/x86/util/intel-bts.c
> index 7b23318ebd7b..56a76142e9fd 100644
> --- a/tools/perf/arch/x86/util/intel-bts.c
> +++ b/tools/perf/arch/x86/util/intel-bts.c
> @@ -12,6 +12,7 @@
>  #include <linux/zalloc.h>
>  
>  #include "../../util/cpumap.h"
> +#include "../../util/event.h"
>  #include "../../util/evsel.h"
>  #include "../../util/evlist.h"
>  #include "../../util/session.h"
> @@ -107,7 +108,7 @@ static int intel_bts_recording_options(struct auxtrace_record *itr,
>  	struct perf_pmu *intel_bts_pmu = btsr->intel_bts_pmu;
>  	struct evsel *evsel, *intel_bts_evsel = NULL;
>  	const struct perf_cpu_map *cpus = evlist->core.cpus;
> -	bool privileged = geteuid() == 0 || perf_event_paranoid() < 0;
> +	bool privileged = perf_event_paranoid_check(-1);
>  
>  	btsr->evlist = evlist;
>  	btsr->snapshot_mode = opts->auxtrace_snapshot_mode;
> diff --git a/tools/perf/arch/x86/util/intel-pt.c b/tools/perf/arch/x86/util/intel-pt.c
> index 218a4e694618..43d5088ee824 100644
> --- a/tools/perf/arch/x86/util/intel-pt.c
> +++ b/tools/perf/arch/x86/util/intel-pt.c
> @@ -558,7 +558,7 @@ static int intel_pt_recording_options(struct auxtrace_record *itr,
>  	bool have_timing_info, need_immediate = false;
>  	struct evsel *evsel, *intel_pt_evsel = NULL;
>  	const struct perf_cpu_map *cpus = evlist->core.cpus;
> -	bool privileged = geteuid() == 0 || perf_event_paranoid() < 0;
> +	bool privileged = perf_event_paranoid_check(-1);
>  	u64 tsc_bit;
>  	int err;
>  
> diff --git a/tools/perf/util/evsel.c b/tools/perf/util/evsel.c
> index 64bc32ed6dfa..eafc134bf17c 100644
> --- a/tools/perf/util/evsel.c
> +++ b/tools/perf/util/evsel.c
> @@ -279,7 +279,7 @@ struct evsel *perf_evsel__new_idx(struct perf_event_attr *attr, int idx)
>  
>  static bool perf_event_can_profile_kernel(void)
>  {
> -	return geteuid() == 0 || perf_event_paranoid() == -1;
> +	return perf_event_paranoid_check(-1);
>  }
>  
>  struct evsel *perf_evsel__new_cycles(bool precise)
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
