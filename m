Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7646B141335
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 22:36:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jdr1xgVjrJvZAibMhgZXlfkM9A5MkQfssRZb+pIAL8k=; b=YDuT3Upo1F6JmP
	sQD8gR5kvfpBc6LttwDUR8epWjUlrT+bDz5Li0gwsNPMH0XBPG7futZfRlDGK9fIjslUySSqQ8Nfo
	zBimMUdkUUYeCJO1FA4waEfNWbc5iSsN6h8PPVjj/kpJJB3ageloKlBDJsKSa0mNKx4LrpL166yAK
	dAKnR5v+brqrC7j6UIp1G8n2+Fm7zIAwRbHIq6nD9OlSBEOsX8k93+vJbB73i724lKin6dnwwf/vW
	gn9OI2Ik5JD6LWW7V88w51/jH96EW3qJolhLpp03HkD/5gHuZBJBjH4JB4a0YchbwObt1GPluD79g
	H5EticwKlPLzIVAvWjcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isZHq-0006Ah-FM; Fri, 17 Jan 2020 21:36:14 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isZHi-0006A1-GG
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 21:36:08 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jan 2020 13:33:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,331,1574150400"; d="scan'208";a="249381111"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga004.fm.intel.com with ESMTP; 17 Jan 2020 13:33:49 -0800
Received: from [10.252.10.77] (abudanko-mobl.ccr.corp.intel.com [10.252.10.77])
 by linux.intel.com (Postfix) with ESMTP id 7E2515803DA;
 Fri, 17 Jan 2020 13:33:38 -0800 (PST)
Subject: Re: [PATCH v4 8/9] drivers/perf: open access for CAP_SYS_PERFMON
 privileged process
To: Will Deacon <will@kernel.org>
References: <c0460c78-b1a6-b5f7-7119-d97e5998f308@linux.intel.com>
 <ce3086d8-9fce-84d6-8b4e-948996c2e0fc@linux.intel.com>
 <20200117105153.GB6144@willie-the-truck>
From: Alexey Budankov <alexey.budankov@linux.intel.com>
Organization: Intel Corp.
Message-ID: <dc14cf55-d63e-3565-b366-3a93d54cd588@linux.intel.com>
Date: Sat, 18 Jan 2020 00:33:37 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200117105153.GB6144@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_133606_591706_A46951D6 
X-CRM114-Status: GOOD (  18.18  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.24 listed in wl.mailspike.net]
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
 Peter Zijlstra <peterz@infradead.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 Will Deacon <will.deacon@arm.com>, Alexei Starovoitov <ast@kernel.org>,
 Stephane Eranian <eranian@google.com>,
 "james.bottomley@hansenpartnership.com"
 <james.bottomley@hansenpartnership.com>, Paul Mackerras <paulus@samba.org>,
 Jiri Olsa <jolsa@redhat.com>, Andi Kleen <ak@linux.intel.com>,
 Michael Ellerman <mpe@ellerman.id.au>, Igor Lubashev <ilubashe@akamai.com>,
 James Morris <jmorris@namei.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, oprofile-list@lists.sf.net,
 Serge Hallyn <serge@hallyn.com>, Robert Richter <rric@kernel.org>,
 Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>,
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


On 17.01.2020 13:51, Will Deacon wrote:
> On Wed, Dec 18, 2019 at 12:30:29PM +0300, Alexey Budankov wrote:
>>
>> Open access to monitoring for CAP_SYS_PERFMON privileged processes.
>> For backward compatibility reasons access to the monitoring remains open
>> for CAP_SYS_ADMIN privileged processes but CAP_SYS_ADMIN usage for secure
>> monitoring is discouraged with respect to CAP_SYS_PERFMON capability.
>>
>> Signed-off-by: Alexey Budankov <alexey.budankov@linux.intel.com>
>> ---
>>  drivers/perf/arm_spe_pmu.c | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/perf/arm_spe_pmu.c b/drivers/perf/arm_spe_pmu.c
>> index 4e4984a55cd1..5dff81bc3324 100644
>> --- a/drivers/perf/arm_spe_pmu.c
>> +++ b/drivers/perf/arm_spe_pmu.c
>> @@ -274,7 +274,7 @@ static u64 arm_spe_event_to_pmscr(struct perf_event *event)
>>  	if (!attr->exclude_kernel)
>>  		reg |= BIT(SYS_PMSCR_EL1_E1SPE_SHIFT);
>>  
>> -	if (IS_ENABLED(CONFIG_PID_IN_CONTEXTIDR) && capable(CAP_SYS_ADMIN))
>> +	if (IS_ENABLED(CONFIG_PID_IN_CONTEXTIDR) && perfmon_capable())
>>  		reg |= BIT(SYS_PMSCR_EL1_CX_SHIFT);
>>  
>>  	return reg;
>> @@ -700,7 +700,7 @@ static int arm_spe_pmu_event_init(struct perf_event *event)
>>  		return -EOPNOTSUPP;
>>  
>>  	reg = arm_spe_event_to_pmscr(event);
>> -	if (!capable(CAP_SYS_ADMIN) &&
>> +	if (!perfmon_capable() &&
>>  	    (reg & (BIT(SYS_PMSCR_EL1_PA_SHIFT) |
>>  		    BIT(SYS_PMSCR_EL1_CX_SHIFT) |
>>  		    BIT(SYS_PMSCR_EL1_PCT_SHIFT))))
> 
> Acked-by: Will Deacon <will@kernel.org>
> 
> Worth noting that this allows profiling of *physical* addresses used by
> memory access instructions and so probably has some security implications
> beyond the usual "but perf is buggy" line of reasoning.

Good to know. Thank you!
The data on physical addresses used by memory access instructions can already be
provided under CAP_SYS_ADMIN privileges [1] thus, I suppose, any implications you
have mentioned are already in place. I believe providing the data under CAP_PERFMON
alone without the rest of CAP_SYS_ADMIN credentials decreases chances to misuse the
data for harm and makes the monitoring more secure.

~Alexey

[1] https://www.kernel.org/doc/html/latest/admin-guide/perf-security.html

> 
> Will
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
