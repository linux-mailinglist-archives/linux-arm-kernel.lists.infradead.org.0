Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AD1A5CE21
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 13:09:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8pm2y4PqacPJwy6akLQxXPcZYxZGTlDIXxY8RvQ5PHU=; b=nExhepMPUDX/sFUORk1ZoHwpIB
	RXHBZaDabuPaXHlf8uylYwRKNjwa91cM/Y8E40INqQxWwunloPXLhigQFY4yz/s45t8RvOvs34fmr
	eB1dFRtb60XooCHRyBgDjGYJ4OpUO3tAGtczAMwXsx/3RsStveg3dwN2oSkTa4YCXG7s4dcKn/W9z
	/a7J98kO+9ggyq93xyHqKas9ktok9l9ghl1sB8V8+A2Zs4hQYIr7QhghUQ1jD/lB/1NoEkhuUPGb/
	P7N+wyPF7iERk/07uWoa/W5T7AlM0PHsQsHvMjH59StKDoFoGiZxY43fA3QUbxvhYyDiD7NrxNVGk
	JhJBr7+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiGes-0000Zq-UI; Tue, 02 Jul 2019 11:09:10 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiGee-0000ZW-FT
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 11:08:57 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Jul 2019 04:08:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,443,1557212400"; d="scan'208";a="166156966"
Received: from ahunter-desktop.fi.intel.com (HELO [10.237.72.122])
 ([10.237.72.122])
 by orsmga003.jf.intel.com with ESMTP; 02 Jul 2019 04:08:48 -0700
Subject: Re: [PATCH v1 10/11] perf intel-pt: Smatch: Fix potential NULL
 pointer dereference
To: Leo Yan <leo.yan@linaro.org>, Arnaldo Carvalho de Melo <acme@kernel.org>, 
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Andi Kleen <ak@linux.intel.com>,
 "David S. Miller" <davem@davemloft.net>, Davidlohr Bueso
 <dave@stgolabs.net>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Jin Yao <yao.jin@linux.intel.com>, Song Liu <songliubraving@fb.com>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>, Changbin Du <changbin.du@intel.com>,
 Eric Saint-Etienne <eric.saint.etienne@oracle.com>,
 Konstantin Khlebnikov <khlebnikov@yandex-team.ru>,
 Thomas Richter <tmricht@linux.ibm.com>,
 Alexey Budankov <alexey.budankov@linux.intel.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20190702103420.27540-1-leo.yan@linaro.org>
 <20190702103420.27540-11-leo.yan@linaro.org>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
Message-ID: <cfef1777-141e-4223-e0c1-1a3f3aee1d3c@intel.com>
Date: Tue, 2 Jul 2019 14:07:40 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190702103420.27540-11-leo.yan@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_040856_578756_C8D294F0 
X-CRM114-Status: GOOD (  18.76  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/07/19 1:34 PM, Leo Yan wrote:
> Based on the following report from Smatch, fix the potential
> NULL pointer dereference check.

It never is NULL.  Remove the NULL test if you want:

-	if (session->itrace_synth_opts && session->itrace_synth_opts->set) {
+	if (session->itrace_synth_opts->set) {

But blindly making changes like below is questionable.

> 
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
> To dismiss the potential NULL pointer dereference, this patch validates
> the pointer 'session->itrace_synth_opts' before access its elements.
> 
> Signed-off-by: Leo Yan <leo.yan@linaro.org>
> ---
>  tools/perf/util/intel-pt.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/tools/perf/util/intel-pt.c b/tools/perf/util/intel-pt.c
> index 550db6e77968..88b567bdf1f9 100644
> --- a/tools/perf/util/intel-pt.c
> +++ b/tools/perf/util/intel-pt.c
> @@ -3195,7 +3195,7 @@ int intel_pt_process_auxtrace_info(union perf_event *event,
>  
>  	if (session->itrace_synth_opts && session->itrace_synth_opts->set) {
>  		pt->synth_opts = *session->itrace_synth_opts;
> -	} else {
> +	} else if (session->itrace_synth_opts) {
>  		itrace_synth_opts__set_default(&pt->synth_opts,
>  				session->itrace_synth_opts->default_no_sample);
>  		if (!session->itrace_synth_opts->default_no_sample &&
> @@ -3203,8 +3203,7 @@ int intel_pt_process_auxtrace_info(union perf_event *event,
>  			pt->synth_opts.branches = false;
>  			pt->synth_opts.callchain = true;
>  		}
> -		if (session->itrace_synth_opts)
> -			pt->synth_opts.thread_stack =
> +		pt->synth_opts.thread_stack =
>  				session->itrace_synth_opts->thread_stack;
>  	}
>  
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
