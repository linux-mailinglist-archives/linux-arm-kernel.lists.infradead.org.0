Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D54D1373DD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 17:42:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bI6pZrAd5nR+u68zlO+ZhA3NJtttB3+cqjr46eTNz98=; b=nPjBfG9TA2pA02
	e4tplvyP6cJ2zd3VK+oMe8iOcwBsU4kHrr819Vs2svAwRTefzzo3GNPUYkY1dVbJRBn5HGS3jdMUf
	14QNoiizmtqJ6iRDPIFX3UYwEoqeo2rNmjIcmUT2fdXpc/w5/k5qxO1o7sEsafw+GNDf8w7kUHGEA
	yUYDZMtc/UQauVftS11NaATzjTAWfHR7TJMAteypI9avhfgE7yWzLBNNOybHKTG9KLAmgXpv6h3vo
	oONGpXKFp5pAQj7JDxJ3JcddMwJiW77D/8A6UvuX3ukEMA/1LOf/uftXEkjWAvfx/B6NaAZunS9xd
	mR6qda2TYbknc3MbQUdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipxMM-0007ZB-2V; Fri, 10 Jan 2020 16:42:06 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipxMD-0007Yi-Hw
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 16:41:58 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jan 2020 08:41:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,417,1571727600"; d="scan'208";a="423650444"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga006.fm.intel.com with ESMTP; 10 Jan 2020 08:41:53 -0800
Received: from [10.252.24.8] (abudanko-mobl.ccr.corp.intel.com [10.252.24.8])
 by linux.intel.com (Postfix) with ESMTP id C1A285802C9;
 Fri, 10 Jan 2020 08:41:42 -0800 (PST)
Subject: Re: [PATCH v4 2/9] perf/core: open access for CAP_SYS_PERFMON
 privileged process
To: Peter Zijlstra <peterz@infradead.org>
References: <c0460c78-b1a6-b5f7-7119-d97e5998f308@linux.intel.com>
 <c93309dc-b920-f5fa-f997-e8b2faf47b88@linux.intel.com>
 <20200108160713.GI2844@hirez.programming.kicks-ass.net>
 <cc239899-5c52-2fd0-286d-4bff18877937@linux.intel.com>
 <20200110140234.GO2844@hirez.programming.kicks-ass.net>
From: Alexey Budankov <alexey.budankov@linux.intel.com>
Organization: Intel Corp.
Message-ID: <dc943577-d3b0-5c76-e8dc-009b74aa5ced@linux.intel.com>
Date: Fri, 10 Jan 2020 19:41:41 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <20200110140234.GO2844@hirez.programming.kicks-ass.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_084157_610395_49D6B68F 
X-CRM114-Status: GOOD (  17.05  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.55.52.88 listed in wl.mailspike.net]
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
 <linux-security-module@vger.kernel.org>, mhiramat@kernel.org,
 Casey Schaufler <casey@schaufler-ca.com>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 10.01.2020 17:02, Peter Zijlstra wrote:
> On Thu, Jan 09, 2020 at 02:36:50PM +0300, Alexey Budankov wrote:
>> On 08.01.2020 19:07, Peter Zijlstra wrote:
>>> On Wed, Dec 18, 2019 at 12:25:35PM +0300, Alexey Budankov wrote:
> 
>>>> diff --git a/kernel/events/core.c b/kernel/events/core.c
>>>> index 059ee7116008..d9db414f2197 100644
>>>> --- a/kernel/events/core.c
>>>> +++ b/kernel/events/core.c
>>>> @@ -9056,7 +9056,7 @@ static int perf_kprobe_event_init(struct perf_event *event)
>>>>  	if (event->attr.type != perf_kprobe.type)
>>>>  		return -ENOENT;
>>>>  
>>>> -	if (!capable(CAP_SYS_ADMIN))
>>>> +	if (!perfmon_capable())
>>>>  		return -EACCES;
>>>>  
>>>>  	/*
>>>
>>> This one only allows attaching to already extant kprobes, right? It does
>>> not allow creation of kprobes.
>>
>> This unblocks creation of local trace kprobes and uprobes by CAP_SYS_PERFMON 
>> privileged process, exactly the same as for CAP_SYS_ADMIN privileged process.
> 
> I've no idea what you just said; it's just words.
> 
> Again, this only allows attaching to previously created kprobes, it does
> not allow creating kprobes, right?

Not really, this allows creating a kprobe using perf_event_open syscall that
associates file descriptor with the kprobe [1].

Lifetime of that kprobe is equal to the lifetime of the file descriptor and 
the kprobe is not visible in tracefs: /sys/kernel/debug/tracing/kprobe_events

> 
> That is; I don't think CAP_SYS_PERFMON should be allowed to create
> kprobes.
> 
> As might be clear; I don't actually know what the user-ABI is for
> creating kprobes.

~Alexey

---

[1] https://lore.kernel.org/lkml/20171206224518.3598254-1-songliubraving@fb.com/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
