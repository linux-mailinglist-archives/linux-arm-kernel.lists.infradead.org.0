Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 841B2173C83
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 17:02:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I+0kmY94BRGK/Y3eMp9ipgrpwXdFhs5x1vYd+PBY+C4=; b=N4T/WI/t5kIFck
	PUs5RgjBWE0gQZ26fDmnRwzHD1Q5VflI/vLx+P1UYMXphXvOizzfX069kcT8RYEbefYSTEK+1Vubb
	L9qMchPs8Cc7K8KHe2oYVlGeGnhr4Z+XZP4CZI37vPajp87MJEsuXlArHFlWTjsmCObXElXX4BL9Q
	fT07cogx3QX00FYTXDcwXiD3tr6g2vySNj17PIZzuY8uzjbf3GHCZgs+0D5c6my93wF4dDT78pGS1
	XMNWbmf3Qklm7uz+SmtbJxX/psMFEuaMCTlwPRamB0YVPMc3J7+w+jnkz113AmpbvBse06CUjoNlb
	JJeLA9ruygZYOlIDzrrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7i5z-0000hJ-R1; Fri, 28 Feb 2020 16:02:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7i4y-0008LT-3l
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 16:01:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9A8BD31B;
 Fri, 28 Feb 2020 08:01:30 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D53753F73B;
 Fri, 28 Feb 2020 08:01:28 -0800 (PST)
Date: Fri, 28 Feb 2020 16:01:26 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: James Clark <james.clark@arm.com>
Subject: Re: [PATCH v4 4/4] perf tools: Support "branch-misses:pp" on arm64
Message-ID: <20200228160126.GI36089@lakrids.cambridge.arm.com>
References: <20200210122509.GA2005279@krava>
 <20200211140445.21986-1-james.clark@arm.com>
 <20200211140445.21986-5-james.clark@arm.com>
 <3114ea3a-5d9b-2c25-af41-cead352b6a02@intel.com>
 <96a814b2-23b8-2ac0-9dc5-0a4b70ddf895@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <96a814b2-23b8-2ac0-9dc5-0a4b70ddf895@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_080132_283817_9CA700ED 
X-CRM114-Status: GOOD (  26.71  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Al Grant <al.grant@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Will Deacon <will@kernel.org>, Adrian Hunter <adrian.hunter@intel.com>,
 Arnaldo Carvalho de Melo <acme@kernel.org>, linux-kernel@vger.kernel.org,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, linux-arm-kernel@lists.infradead.org,
 Namhyung Kim <namhyung@kernel.org>, nd@arm.com, jolsa@redhat.com,
 Tan Xiaojun <tanxiaojun@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi James,

On Mon, Feb 24, 2020 at 05:08:26PM +0000, James Clark wrote:
> On 2/17/20 11:42 AM, Adrian Hunter wrote:
> > On 11/02/20 4:04 pm, James Clark wrote:
> >> From: Tan Xiaojun <tanxiaojun@huawei.com>
> >>
> >> At the suggestion of James Clark, use spe to support the precise
> >> ip of some events. Currently its support event is:
> >> branch-misses.
> >>
> >> Example usage:
> >>
> >> $ ./perf record -e branch-misses:pp dd if=/dev/zero of=/dev/null count=10000
> >> (:p/pp/ppp is same for this case.)
> >>
> >> $ ./perf report --stdio
> >> ("--stdio is not necessary")
> >>
> >> --------------------------------------------------------------------
> >> ...
> >>  # Samples: 14  of event 'branch-misses:pp'
> >>  # Event count (approx.): 14
> >>  #
> >>  # Children      Self  Command  Shared Object      Symbol
> >>  # ........  ........  .......  .................  ..........................
> >>  #
> >>     14.29%    14.29%  dd       [kernel.kallsyms]  [k] __arch_copy_from_user
> >>     14.29%    14.29%  dd       libc-2.28.so       [.] _dl_addr
> >>      7.14%     7.14%  dd       [kernel.kallsyms]  [k] __free_pages
> >>      7.14%     7.14%  dd       [kernel.kallsyms]  [k] __pi_memcpy
> >>      7.14%     7.14%  dd       [kernel.kallsyms]  [k] pagecache_get_page
> >>      7.14%     7.14%  dd       [kernel.kallsyms]  [k] unmap_single_vma
> >>      7.14%     7.14%  dd       dd                 [.] 0x00000000000025ec
> >>      7.14%     7.14%  dd       ld-2.28.so         [.] _dl_lookup_symbol_x
> >>      7.14%     7.14%  dd       ld-2.28.so         [.] check_match
> >>      7.14%     7.14%  dd       libc-2.28.so       [.] __mpn_rshift
> >>      7.14%     7.14%  dd       libc-2.28.so       [.] _nl_intern_locale_data
> >>      7.14%     7.14%  dd       libc-2.28.so       [.] read_alias_file
> >> ...
> >> --------------------------------------------------------------------
> >>
> >> Signed-off-by: Tan Xiaojun <tanxiaojun@huawei.com>
> >> Suggested-by: James Clark <James.Clark@arm.com>
> >> Tested-by: Qi Liu <liuqi115@hisilicon.com>
> >> Signed-off-by: James Clark <james.clark@arm.com>
> >> Cc: Will Deacon <will@kernel.org>
> >> Cc: Mark Rutland <mark.rutland@arm.com>
> >> Cc: Peter Zijlstra <peterz@infradead.org>
> >> Cc: Ingo Molnar <mingo@redhat.com>
> >> Cc: Arnaldo Carvalho de Melo <acme@kernel.org>
> >> Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
> >> Cc: Jiri Olsa <jolsa@redhat.com>
> >> Cc: Tan Xiaojun <tanxiaojun@huawei.com>
> >> Cc: Al Grant <al.grant@arm.com>
> >> Cc: Namhyung Kim <namhyung@kernel.org>
> >> ---
> >>  tools/perf/arch/arm/util/auxtrace.c | 38 +++++++++++++++++++++++++++++
> >>  tools/perf/builtin-record.c         |  5 ++++
> >>  tools/perf/util/arm-spe.c           |  9 +++++++
> >>  tools/perf/util/arm-spe.h           |  3 +++
> >>  tools/perf/util/auxtrace.h          |  6 +++++
> >>  5 files changed, 61 insertions(+)
> >>
> >> diff --git a/tools/perf/arch/arm/util/auxtrace.c b/tools/perf/arch/arm/util/auxtrace.c
> >> index 0a6e75b8777a..18f0ea7556e7 100644
> >> --- a/tools/perf/arch/arm/util/auxtrace.c
> >> +++ b/tools/perf/arch/arm/util/auxtrace.c
> >> @@ -10,11 +10,25 @@
> >>  
> >>  #include "../../util/auxtrace.h"
> >>  #include "../../util/debug.h"
> >> +#include "../../util/env.h"
> >>  #include "../../util/evlist.h"
> >>  #include "../../util/pmu.h"
> >>  #include "cs-etm.h"
> >>  #include "arm-spe.h"
> >>  
> >> +#define SPE_ATTR_TS_ENABLE		BIT(0)
> >> +#define SPE_ATTR_PA_ENABLE		BIT(1)
> >> +#define SPE_ATTR_PCT_ENABLE		BIT(2)
> >> +#define SPE_ATTR_JITTER			BIT(16)
> >> +#define SPE_ATTR_BRANCH_FILTER		BIT(32)
> >> +#define SPE_ATTR_LOAD_FILTER		BIT(33)
> >> +#define SPE_ATTR_STORE_FILTER		BIT(34)
> >> +
> >> +#define SPE_ATTR_EV_RETIRED		BIT(1)
> >> +#define SPE_ATTR_EV_CACHE		BIT(3)
> >> +#define SPE_ATTR_EV_TLB			BIT(5)
> >> +#define SPE_ATTR_EV_BRANCH		BIT(7)
> >> +
> >>  static struct perf_pmu **find_all_arm_spe_pmus(int *nr_spes, int *err)
> >>  {
> >>  	struct perf_pmu **arm_spe_pmus = NULL;
> >> @@ -108,3 +122,27 @@ struct auxtrace_record
> >>  	*err = 0;
> >>  	return NULL;
> >>  }
> >> +
> >> +void auxtrace__preprocess_evlist(struct evlist *evlist)
> >> +{
> >> +	struct evsel *evsel;
> >> +	struct perf_pmu *pmu;
> >> +
> >> +	evlist__for_each_entry(evlist, evsel) {
> >> +		/* Currently only supports precise_ip for branch-misses on arm64 */
> >> +		if (!strcmp(perf_env__arch(evlist->env), "arm64")
> > 
> > Isn't config ambiguous unless you also check type i.e.
> > 
> > 			&& evsel->core.attr.type == PERF_TYPE_HARDWARE
> > 
> 
> Yes you're right I will add this.
> 
> >> +			&& evsel->core.attr.config == PERF_COUNT_HW_BRANCH_MISSES
> >> +			&& evsel->core.attr.precise_ip)
> >> +		{
> >> +			pmu = perf_pmu__find("arm_spe_0");
> >> +			if (pmu) {
> > 
> > Changing the event seems a bit weird.
> > 
> 
> This is because there is no support in the kernel for the precise_ip attribute on Arm.
> SPE can give you precise ip data for the same event, but changing the event is required.

I don't think this is the right level to override the event.

It's true that contemporary CPU PMUs can't generate synchronous events,
and hence the kernel doesn't have a precise IP, but that's not
necessarily going to be the case in future. I'd rather we didn't
silently override the event requested by the user, as I think that is
going to cause more problems for us in future.

When the SPE buffer overflows, events will be silently dropped, which I
don't believe is in keeping with the usual semantics of precise events.
Additionally, hard-coding the "arm_spe_0" name means that this will not
work reliably on big.LITTLE systems.

Instead, can we have the user explicitly request to use the SPE PMU in
this way? If the perf tool could be smart with the "_%d" suffix, and
collate PMUs differing only by that, the user would only need to do
something like:

  perf record -e arm_spe/branch-misses/pp

... which doesn't seem to onerous.

Is something like that possible?

Thanks,
Mark.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
