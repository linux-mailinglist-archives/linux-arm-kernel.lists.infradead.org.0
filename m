Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79C9184AF7
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 13:46:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kJ9VnjNDZfW7b30A6+c243rJl3TPVmngPx7O/RvazzI=; b=klhc9ST496lT+F
	1VGXRX0M4+8mphjpF7aznxgBjvutRguHsjRfF6Tiw9LZ8gJw97dzfRdwoNLXSB9J75JKt8/1HFQEc
	jhZ18B4ZT4aZ8S26ZKcAuwgoh9cxYP4F1Pr3shrLg0PIBGyxP+7ga6Y1w7zDLPF1JdPPYZsHaIXDo
	jn58h+sxedyJsfKfJd5PJioVp+JBTcKWVnLgh2JXZrLumfvk6nsvPGB8ZWMGmt2uPUyFcYxZEjjWg
	dU+gRMWTOriZd1SuNHVbvkserQ6VvkQxfghtumXmSljbLD/Y6bbfK+Ky8x2Gt4Isj0++RFBFTi31k
	NU5YcrohSF/jyBd1jt3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvKOw-0006y2-7y; Wed, 07 Aug 2019 11:46:42 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvKOM-0006lI-RX
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 11:46:08 +0000
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B877881103;
 Wed,  7 Aug 2019 11:46:05 +0000 (UTC)
Received: from krava (unknown [10.43.17.81])
 by smtp.corp.redhat.com (Postfix) with SMTP id 7681B5DC1E;
 Wed,  7 Aug 2019 11:46:03 +0000 (UTC)
Date: Wed, 7 Aug 2019 13:46:02 +0200
From: Jiri Olsa <jolsa@redhat.com>
To: Igor Lubashev <ilubashe@akamai.com>
Subject: Re: [PATCH v2 2/4] perf: Use CAP_SYS_ADMIN with perf_event_paranoid
 checks
Message-ID: <20190807114602.GB9605@krava>
References: <cover.1565146171.git.ilubashe@akamai.com>
 <70ce92d9c252bbafa883a6b5b3c96cf10d1a5b31.1565146171.git.ilubashe@akamai.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <70ce92d9c252bbafa883a6b5b3c96cf10d1a5b31.1565146171.git.ilubashe@akamai.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.28]); Wed, 07 Aug 2019 11:46:05 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_044606_972209_B70FB1EF 
X-CRM114-Status: GOOD (  16.75  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Peter Zijlstra <peterz@infradead.org>,
 Alexey Budankov <alexey.budankov@linux.intel.com>,
 linux-kernel@vger.kernel.org, Arnaldo Carvalho de Melo <acme@kernel.org>,
 James Morris <jmorris@namei.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 06, 2019 at 11:35:55PM -0400, Igor Lubashev wrote:
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

wouldn't this removal break the compilation on arm?

jirka

> -	bool privileged = geteuid() == 0 || perf_event_paranoid() < 0;
> +	bool privileged = perf_event_paranoid_check(-1);
>  	struct evsel *tracking_evsel;
>  	int err;

SNIP

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
