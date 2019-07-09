Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43FD263506
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 13:38:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lRAN0H/gC/aKSR/pvRcpez15ctQ0KDgmK9w92sUDJXU=; b=OxNTlmHEqOaHIv
	eZoGF6KFImauSFC453Ylk5LMctOz+nfm1tR7GNcEv5rhrk+Cgx2ZDb12C3XLoCB3AH+RISHxFz/jX
	hce1ElBD8HZ+qQMjqq3s1aG8xAmLOeyn2vCGAfkkmhFhAfq25mz23zOVKh1B8WXtlYsqgw2xKd/uz
	9izRtvqusvTA8nCPkOiV20n7bOK7pvnEHx4vhFVI5/MlWOL6ycK8qcDH2TpYPbCilPnQOl6urr8AX
	T0B0+Y937nTwduXOBfbCAxsdiST/+QwqQ7ykXqTesamE+ZFt30ZopBD/3QC+jl7U6NQGvEjFBb0Nm
	/tSBE1pUnSAQTp0c02cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkoSI-0006Fm-Oe; Tue, 09 Jul 2019 11:38:42 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkoS6-0006Ex-Ch
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 11:38:31 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jul 2019 04:38:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,470,1557212400"; d="scan'208";a="340729765"
Received: from ahunter-desktop.fi.intel.com (HELO [10.237.72.122])
 ([10.237.72.122])
 by orsmga005.jf.intel.com with ESMTP; 09 Jul 2019 04:38:25 -0700
Subject: Re: [PATCH v2 3/4] perf intel-pt: Smatch: Fix potential NULL pointer
 dereference
To: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>,
 Leo Yan <leo.yan@linaro.org>
References: <20190708143937.7722-1-leo.yan@linaro.org>
 <20190708143937.7722-4-leo.yan@linaro.org> <20190708215940.GD7455@kernel.org>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
Message-ID: <13c2a09d-3031-56ea-1c71-39dd8a3c74e8@intel.com>
Date: Tue, 9 Jul 2019 14:37:14 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190708215940.GD7455@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_043830_474240_7C393FDF 
X-CRM114-Status: GOOD (  17.62  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
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
Cc: Andi Kleen <ak@linux.intel.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 linux-kernel@vger.kernel.org, Namhyung Kim <namhyung@kernel.org>,
 Jiri Olsa <jolsa@redhat.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 9/07/19 12:59 AM, Arnaldo Carvalho de Melo wrote:
> Em Mon, Jul 08, 2019 at 10:39:36PM +0800, Leo Yan escreveu:
>> Based on the following report from Smatch, fix the potential
>> NULL pointer dereference check.
> 
> Adrian, are you ok now with these two for pt and bts? Can I have your
> acked-by?

Yes they are good. For both:

Acked-by: Adrian Hunter <adrian.hunter@intel.com>

> 
> - Arnaldo
>  
>>   tools/perf/util/intel-pt.c:3200
>>   intel_pt_process_auxtrace_info() error: we previously assumed
>>   'session->itrace_synth_opts' could be null (see line 3196)
>>
>>   tools/perf/util/intel-pt.c:3206
>>   intel_pt_process_auxtrace_info() warn: variable dereferenced before
>>   check 'session->itrace_synth_opts' (see line 3200)
>>
>> tools/perf/util/intel-pt.c
>> 3196         if (session->itrace_synth_opts && session->itrace_synth_opts->set) {
>> 3197                 pt->synth_opts = *session->itrace_synth_opts;
>> 3198         } else {
>> 3199                 itrace_synth_opts__set_default(&pt->synth_opts,
>> 3200                                 session->itrace_synth_opts->default_no_sample);
>>                                      ^^^^^^^^^^^^^^^^^^^^^^^^^^
>> 3201                 if (!session->itrace_synth_opts->default_no_sample &&
>> 3202                     !session->itrace_synth_opts->inject) {
>> 3203                         pt->synth_opts.branches = false;
>> 3204                         pt->synth_opts.callchain = true;
>> 3205                 }
>> 3206                 if (session->itrace_synth_opts)
>>                          ^^^^^^^^^^^^^^^^^^^^^^^^^^
>> 3207                         pt->synth_opts.thread_stack =
>> 3208                                 session->itrace_synth_opts->thread_stack;
>> 3209         }
>>
>> 'session->itrace_synth_opts' is impossible to be a NULL pointer in
>> intel_pt_process_auxtrace_info(), thus this patch removes the NULL
>> test for 'session->itrace_synth_opts'.
>>
>> Signed-off-by: Leo Yan <leo.yan@linaro.org>
>> ---
>>  tools/perf/util/intel-pt.c | 13 +++++--------
>>  1 file changed, 5 insertions(+), 8 deletions(-)
>>
>> diff --git a/tools/perf/util/intel-pt.c b/tools/perf/util/intel-pt.c
>> index c76a96f777fb..df061599fef4 100644
>> --- a/tools/perf/util/intel-pt.c
>> +++ b/tools/perf/util/intel-pt.c
>> @@ -3210,7 +3210,7 @@ int intel_pt_process_auxtrace_info(union perf_event *event,
>>  		goto err_delete_thread;
>>  	}
>>  
>> -	if (session->itrace_synth_opts && session->itrace_synth_opts->set) {
>> +	if (session->itrace_synth_opts->set) {
>>  		pt->synth_opts = *session->itrace_synth_opts;
>>  	} else {
>>  		itrace_synth_opts__set_default(&pt->synth_opts,
>> @@ -3220,8 +3220,7 @@ int intel_pt_process_auxtrace_info(union perf_event *event,
>>  			pt->synth_opts.branches = false;
>>  			pt->synth_opts.callchain = true;
>>  		}
>> -		if (session->itrace_synth_opts)
>> -			pt->synth_opts.thread_stack =
>> +		pt->synth_opts.thread_stack =
>>  				session->itrace_synth_opts->thread_stack;
>>  	}
>>  
>> @@ -3241,11 +3240,9 @@ int intel_pt_process_auxtrace_info(union perf_event *event,
>>  		pt->cbr2khz = tsc_freq / pt->max_non_turbo_ratio / 1000;
>>  	}
>>  
>> -	if (session->itrace_synth_opts) {
>> -		err = intel_pt_setup_time_ranges(pt, session->itrace_synth_opts);
>> -		if (err)
>> -			goto err_delete_thread;
>> -	}
>> +	err = intel_pt_setup_time_ranges(pt, session->itrace_synth_opts);
>> +	if (err)
>> +		goto err_delete_thread;
>>  
>>  	if (pt->synth_opts.calls)
>>  		pt->branches_filter |= PERF_IP_FLAG_CALL | PERF_IP_FLAG_ASYNC |
>> -- 
>> 2.17.1
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
