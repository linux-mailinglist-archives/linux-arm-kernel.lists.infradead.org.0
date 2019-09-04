Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3454EA7CC5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 09:27:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kiD0DDVaKWU8FPWVw2cDAf9+elaEV6Ta9rEbHGjLHcE=; b=KDbjYI77QN832y
	/jkuhZY+1zN96JKpwRTQiwOzOGpwQ2cHMi4I3nWgKI+MF2su4VZhOWCGQmPBw44TllHbUs6UajqFe
	YcQHV+xoizN3OcbW+Mi0w+/rorEdBRqcubpYk36qN0FHFJXqaLmsQJz59E2Tzl64fz0X8oktYWNgV
	ZVIWFW9CjzbAOM5NW2JwlBnHfImlchLKCzs98lyb6oTNc1nonhm6wOl9j3hkEy4s6L3/9hkwtZ/Je
	W69E6ijTtyJsLP7raX023uienzPZxsHAjpH9PnqykOMIY7OUdCUYraXK+MvMvMeZFtp9Kf+oom+Y/
	RchxEbWMtIjD/jF604qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Phe-0003UM-VH; Wed, 04 Sep 2019 07:27:42 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5PhQ-0003S4-LT
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 07:27:30 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Sep 2019 00:27:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,465,1559545200"; d="scan'208";a="198965380"
Received: from ahunter-desktop.fi.intel.com (HELO [10.237.72.66])
 ([10.237.72.66])
 by fmsmga001.fm.intel.com with ESMTP; 04 Sep 2019 00:27:21 -0700
Subject: Re: [PATCH v5] perf machine: arm/arm64: Improve completeness for
 kernel address space
To: Leo Yan <leo.yan@linaro.org>
References: <20190815082521.16885-1-leo.yan@linaro.org>
 <d874e6b3-c115-6c8c-bb12-160cfd600505@intel.com>
 <20190815113242.GA28881@leoy-ThinkPad-X240s>
 <e0919e39-7607-815b-3a12-96f098e45a5f@intel.com>
 <20190816014541.GA17960@leoy-ThinkPad-X240s>
 <363577f1-097e-eddd-a6ca-b23f644dd8ce@intel.com>
 <20190826125105.GA3288@leoy-ThinkPad-X240s>
 <20190902141511.GF4931@leoy-ThinkPad-X240s>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
Message-ID: <c16ee888-73cc-588d-6156-bb5528d635cf@intel.com>
Date: Wed, 4 Sep 2019 10:26:13 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190902141511.GF4931@leoy-ThinkPad-X240s>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_002728_747164_AAB4C1AE 
X-CRM114-Status: GOOD (  26.57  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
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
Cc: Song Liu <songliubraving@fb.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Suzuki Poulouse <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 netdev@vger.kernel.org, coresight@lists.linaro.org,
 Alexei Starovoitov <ast@kernel.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Peter Zijlstra <peterz@infradead.org>,
 Yonghong Song <yhs@fb.com>, Namhyung Kim <namhyung@kernel.org>,
 bpf@vger.kernel.org, Jiri Olsa <jolsa@redhat.com>,
 Martin KaFai Lau <kafai@fb.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/09/19 5:15 PM, Leo Yan wrote:
> Hi Adrian,
> 
> On Mon, Aug 26, 2019 at 08:51:05PM +0800, Leo Yan wrote:
>> Hi Adrian,
>>
>> On Fri, Aug 16, 2019 at 04:00:02PM +0300, Adrian Hunter wrote:
>>> On 16/08/19 4:45 AM, Leo Yan wrote:
>>>> Hi Adrian,
>>>>
>>>> On Thu, Aug 15, 2019 at 02:45:57PM +0300, Adrian Hunter wrote:
>>>>
>>>> [...]
>>>>
>>>>>>> How come you cannot use kallsyms to get the information?
>>>>>>
>>>>>> Thanks for pointing out this.  Sorry I skipped your comment "I don't
>>>>>> know how you intend to calculate ARM_PRE_START_SIZE" when you reviewed
>>>>>> the patch v3, I should use that chance to elaborate the detailed idea
>>>>>> and so can get more feedback/guidance before procceed.
>>>>>>
>>>>>> Actually, I have considered to use kallsyms when worked on the previous
>>>>>> patch set.
>>>>>>
>>>>>> As mentioned in patch set v4's cover letter, I tried to implement
>>>>>> machine__create_extra_kernel_maps() for arm/arm64, the purpose is to
>>>>>> parse kallsyms so can find more kernel maps and thus also can fixup
>>>>>> the kernel start address.  But I found the 'perf script' tool directly
>>>>>> calls machine__get_kernel_start() instead of running into the flow for
>>>>>> machine__create_extra_kernel_maps();
>>>>>
>>>>> Doesn't it just need to loop through each kernel map to find the lowest
>>>>> start address?
>>>>
>>>> Based on your suggestion, I worked out below change and verified it
>>>> can work well on arm64 for fixing up start address; please let me know
>>>> if the change works for you?
>>>
>>> How does that work if take a perf.data file to a machine with a different
>>> architecture?
>>
>> Sorry I delayed so long to respond to your question; I didn't have
>> confidence to give out very reasonale answer and this is the main reason
>> for delaying.
> 
> Could you take chance to review my below replying?  I'd like to get
> your confirmation before I send out offical patch.

It is not necessary to do kallsyms__parse for x86_64, so it would be better
to check the arch before calling that.

However in general, having to copy and use kallsyms with perf.data if on a
different arch does not seem very user friendly.  But really that is up to
Arnaldo.

> 
> Thanks,
> Leo Yan
> 
>>
>> For your question for taking a perf.data file to a machine with a
>> different architecture, we can firstly use command 'perf buildid-list'
>> to print out the buildid for kallsyms, based on the dumped buildid we
>> can find out the location for the saved kallsyms file; then we can use
>> option '--kallsyms' to specify the offline kallsyms file and use the
>> offline kallsyms to fixup kernel start address.  The detailed commands
>> are listed as below:
>>
>> root@debian:~# perf buildid-list
>> 7b36dfca8317ef74974ebd7ee5ec0a8b35c97640 [kernel.kallsyms]
>> 56b84aa88a1bcfe222a97a53698b92723a3977ca /usr/lib/systemd/systemd
>> 0956b952e9cd673d48ff2cfeb1a9dbd0c853e686 /usr/lib/aarch64-linux-gnu/libm-2.28.so
>> [...]
>>
>> root@debian:~# perf script --kallsyms ~/.debug/\[kernel.kallsyms\]/7b36dfca8317ef74974ebd7ee5ec0a8b35c97640/kallsyms
>>
>> The amended patch is as below, please review and always welcome
>> any suggestions or comments!
>>
>> diff --git a/tools/perf/util/machine.c b/tools/perf/util/machine.c
>> index 5734460fc89e..593f05cc453f 100644
>> --- a/tools/perf/util/machine.c
>> +++ b/tools/perf/util/machine.c
>> @@ -2672,9 +2672,26 @@ int machine__nr_cpus_avail(struct machine *machine)
>>  	return machine ? perf_env__nr_cpus_avail(machine->env) : 0;
>>  }
>>  
>> +static int machine__fixup_kernel_start(void *arg,
>> +				       const char *name __maybe_unused,
>> +				       char type,
>> +				       u64 start)
>> +{
>> +	struct machine *machine = arg;
>> +
>> +	type = toupper(type);
>> +
>> +	/* Fixup for text, weak, data and bss sections. */
>> +	if (type == 'T' || type == 'W' || type == 'D' || type == 'B')
>> +		machine->kernel_start = min(machine->kernel_start, start);
>> +
>> +	return 0;
>> +}
>> +
>>  int machine__get_kernel_start(struct machine *machine)
>>  {
>>  	struct map *map = machine__kernel_map(machine);
>> +	char filename[PATH_MAX];
>>  	int err = 0;
>>  
>>  	/*
>> @@ -2696,6 +2713,22 @@ int machine__get_kernel_start(struct machine *machine)
>>  		if (!err && !machine__is(machine, "x86_64"))
>>  			machine->kernel_start = map->start;
>>  	}
>> +
>> +	if (symbol_conf.kallsyms_name != NULL) {
>> +		strncpy(filename, symbol_conf.kallsyms_name, PATH_MAX);
>> +	} else {
>> +		machine__get_kallsyms_filename(machine, filename, PATH_MAX);
>> +
>> +		if (symbol__restricted_filename(filename, "/proc/kallsyms"))
>> +			goto out;
>> +	}
>> +
>> +	if (kallsyms__parse(filename, machine, machine__fixup_kernel_start))
>> +		pr_warning("Fail to fixup kernel start address. skipping...\n");
>> +
>> +out:
>>  	return err;
>>  }
>>  
>>
>> Thanks,
>> Leo Yan
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
