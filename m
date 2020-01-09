Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E227513581D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 12:37:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L/jCYQ+rRNV8G3C8VSlHSvz06yokUCcdrlqU6FDbihQ=; b=SnaQbLeIFRk08f
	avffPWFysiI2gONHZY7EA69Nx/U0+fWnAityVoVUt9BVRYw1ySbUABOtNnyX/ykTTLTsJgu+FGroN
	yLt4jJCKUwp/r9EAROuFX4DAJIanQ1yjTGwZavddiuajwQsXuCVafSI4wpC2jrU0VH9Qj+9HaufqN
	ZROdgiTvHqQFT6RuHLWjvaFn4gYsUIwNArx/GqsWcQNe5Zit/NMvf/iJpSr4ccAUdiULZfdP1RSFV
	nH6cyaAgch+jO91Z0oKS5pjb31Lz7fFrSLZfj/F469J1VbjhYC+aucSnPuURM3qcy0w5/JEhfyNlA
	cj6pLSuCcK1qzKRT1v1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipW7h-00019U-EG; Thu, 09 Jan 2020 11:37:09 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipW7a-00018k-TY
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 11:37:04 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jan 2020 03:37:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,413,1571727600"; d="scan'208";a="216275607"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga008.jf.intel.com with ESMTP; 09 Jan 2020 03:36:59 -0800
Received: from [10.125.253.127] (abudanko-mobl.ccr.corp.intel.com
 [10.125.253.127])
 by linux.intel.com (Postfix) with ESMTP id 2707C58043A;
 Thu,  9 Jan 2020 03:36:50 -0800 (PST)
Subject: Re: [PATCH v4 2/9] perf/core: open access for CAP_SYS_PERFMON
 privileged process
To: Peter Zijlstra <peterz@infradead.org>
References: <c0460c78-b1a6-b5f7-7119-d97e5998f308@linux.intel.com>
 <c93309dc-b920-f5fa-f997-e8b2faf47b88@linux.intel.com>
 <20200108160713.GI2844@hirez.programming.kicks-ass.net>
From: Alexey Budankov <alexey.budankov@linux.intel.com>
Organization: Intel Corp.
Message-ID: <cc239899-5c52-2fd0-286d-4bff18877937@linux.intel.com>
Date: Thu, 9 Jan 2020 14:36:50 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20200108160713.GI2844@hirez.programming.kicks-ass.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_033702_960596_99990E4F 
X-CRM114-Status: GOOD (  18.89  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Song Liu <songliubraving@fb.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 Will Deacon <will.deacon@arm.com>, Alexei Starovoitov <ast@kernel.org>,
 Stephane Eranian <eranian@google.com>,
 "james.bottomley@hansenpartnership.com"
 <james.bottomley@hansenpartnership.com>, Paul Mackerras <paulus@samba.org>,
 Jiri Olsa <jolsa@redhat.com>, Andi Kleen <ak@linux.intel.com>,
 Michael Ellerman <mpe@ellerman.id.au>, Igor Lubashev <ilubashe@akamai.com>,
 James Morris <jmorris@namei.org>, Ingo Molnar <mingo@redhat.com>,
 oprofile-list@lists.sf.net, Serge Hallyn <serge@hallyn.com>,
 Robert Richter <rric@kernel.org>, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>,
 "selinux@vger.kernel.org" <selinux@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 "rodrigo.vivi@intel.com" <rodrigo.vivi@intel.com>,
 Namhyung Kim <namhyung@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>,
 Casey Schaufler <casey@schaufler-ca.com>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 08.01.2020 19:07, Peter Zijlstra wrote:
> On Wed, Dec 18, 2019 at 12:25:35PM +0300, Alexey Budankov wrote:
>>
>> Open access to perf_events monitoring for CAP_SYS_PERFMON privileged
>> processes. For backward compatibility reasons access to perf_events
>> subsystem remains open for CAP_SYS_ADMIN privileged processes but
>> CAP_SYS_ADMIN usage for secure perf_events monitoring is discouraged
>> with respect to CAP_SYS_PERFMON capability.
>>
>> Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>
>> ---
>>  include/linux/perf_event.h | 6 +++---
>>  kernel/events/core.c       | 6 +++---
>>  2 files changed, 6 insertions(+), 6 deletions(-)
>>
>> diff --git a/include/linux/perf_event.h b/include/linux/perf_event.h
>> index 34c7c6910026..f46acd69425f 100644
>> --- a/include/linux/perf_event.h
>> +++ b/include/linux/perf_event.h
>> @@ -1285,7 +1285,7 @@ static inline int perf_is_paranoid(void)
>>  
>>  static inline int perf_allow_kernel(struct perf_event_attr *attr)
>>  {
>> -	if (sysctl_perf_event_paranoid > 1 && !capable(CAP_SYS_ADMIN))
>> +	if (sysctl_perf_event_paranoid > 1 && !perfmon_capable())
>>  		return -EACCES;
>>  
>>  	return security_perf_event_open(attr, PERF_SECURITY_KERNEL);
>> @@ -1293,7 +1293,7 @@ static inline int perf_allow_kernel(struct perf_event_attr *attr)
>>  
>>  static inline int perf_allow_cpu(struct perf_event_attr *attr)
>>  {
>> -	if (sysctl_perf_event_paranoid > 0 && !capable(CAP_SYS_ADMIN))
>> +	if (sysctl_perf_event_paranoid > 0 && !perfmon_capable())
>>  		return -EACCES;
>>  
>>  	return security_perf_event_open(attr, PERF_SECURITY_CPU);
>> @@ -1301,7 +1301,7 @@ static inline int perf_allow_cpu(struct perf_event_attr *attr)
>>  
>>  static inline int perf_allow_tracepoint(struct perf_event_attr *attr)
>>  {
>> -	if (sysctl_perf_event_paranoid > -1 && !capable(CAP_SYS_ADMIN))
>> +	if (sysctl_perf_event_paranoid > -1 && !perfmon_capable())
>>  		return -EPERM;
>>  
>>  	return security_perf_event_open(attr, PERF_SECURITY_TRACEPOINT);
> 
> These are OK I suppose.
> 
>> diff --git a/kernel/events/core.c b/kernel/events/core.c
>> index 059ee7116008..d9db414f2197 100644
>> --- a/kernel/events/core.c
>> +++ b/kernel/events/core.c
>> @@ -9056,7 +9056,7 @@ static int perf_kprobe_event_init(struct perf_event *event)
>>  	if (event->attr.type != perf_kprobe.type)
>>  		return -ENOENT;
>>  
>> -	if (!capable(CAP_SYS_ADMIN))
>> +	if (!perfmon_capable())
>>  		return -EACCES;
>>  
>>  	/*
> 
> This one only allows attaching to already extant kprobes, right? It does
> not allow creation of kprobes.

This unblocks creation of local trace kprobes and uprobes by CAP_SYS_PERFMON 
privileged process, exactly the same as for CAP_SYS_ADMIN privileged process.

> 
>> @@ -9116,7 +9116,7 @@ static int perf_uprobe_event_init(struct perf_event *event)
>>  	if (event->attr.type != perf_uprobe.type)
>>  		return -ENOENT;
>>  
>> -	if (!capable(CAP_SYS_ADMIN))
>> +	if (!perfmon_capable())
>>  		return -EACCES;
>>  
>>  	/*
> 
> Idem, I presume.
> 
>> @@ -11157,7 +11157,7 @@ SYSCALL_DEFINE5(perf_event_open,
>>  	}
>>  
>>  	if (attr.namespaces) {
>> -		if (!capable(CAP_SYS_ADMIN))
>> +		if (!perfmon_capable())
>>  			return -EACCES;
>>  	}
> 
> And given we basically make the entire kernel observable with this CAP,
> busting namespaces shoulnd't be a problem either.
> 
> So yeah, I suppose that works.
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
