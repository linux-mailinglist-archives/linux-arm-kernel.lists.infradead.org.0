Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 369C38EA97
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 13:47:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yxAV6+coh/5NZgE6YCXdMNhTstHgyXZx1ft7IxfeTKw=; b=jMfjf7YxrRKv38
	DnojiWKfL/yXAgn6Us4VPQaGMdYVwetlfUDn11gSyxEQp0dw50eDS+KDzlKDfJCUzsUA/IJ0SBOqG
	wLCoro+XFCU1LxEVVyX+vwMwpKUpil0legqMo412wEaDq9HgYSsCBhGfUESe00uavzv+NPu88PWgv
	oumQd0qRPAYHWAAUpGHrHhL0YafDMcfxeQWhxzCoDgqwrcaE1mipkt4v41EXGzXoWzQurXPLGqyYW
	EXtpaQjb6SNhHTMUgdaNgd7jI60LHNvlyL8WYlRxsfHsoKyjX37pMjUN38H00rKQyVbjD3BqdP17t
	yPIOnXIlVg/41vurZ+ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyEE0-00058c-IN; Thu, 15 Aug 2019 11:47:24 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyEDn-00057i-Kj
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 11:47:13 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Aug 2019 04:47:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,389,1559545200"; d="scan'208";a="184600470"
Received: from ahunter-desktop.fi.intel.com (HELO [10.237.72.122])
 ([10.237.72.122])
 by FMSMGA003.fm.intel.com with ESMTP; 15 Aug 2019 04:47:06 -0700
Subject: Re: [PATCH v5] perf machine: arm/arm64: Improve completeness for
 kernel address space
To: Leo Yan <leo.yan@linaro.org>
References: <20190815082521.16885-1-leo.yan@linaro.org>
 <d874e6b3-c115-6c8c-bb12-160cfd600505@intel.com>
 <20190815113242.GA28881@leoy-ThinkPad-X240s>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
Message-ID: <e0919e39-7607-815b-3a12-96f098e45a5f@intel.com>
Date: Thu, 15 Aug 2019 14:45:57 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190815113242.GA28881@leoy-ThinkPad-X240s>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_044711_688949_4570C5C7 
X-CRM114-Status: GOOD (  29.78  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
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

On 15/08/19 2:32 PM, Leo Yan wrote:
> Hi Adrian,
> 
> On Thu, Aug 15, 2019 at 11:54:54AM +0300, Adrian Hunter wrote:
> 
> [...]
> 
>>> diff --git a/tools/perf/Makefile.config b/tools/perf/Makefile.config
>>> index e4988f49ea79..d7ff839d8b20 100644
>>> --- a/tools/perf/Makefile.config
>>> +++ b/tools/perf/Makefile.config
>>> @@ -48,9 +48,20 @@ ifeq ($(SRCARCH),x86)
>>>    NO_PERF_REGS := 0
>>>  endif
>>>  
>>> +ARM_PRE_START_SIZE := 0
>>> +
>>>  ifeq ($(SRCARCH),arm)
>>>    NO_PERF_REGS := 0
>>>    LIBUNWIND_LIBS = -lunwind -lunwind-arm
>>> +  ifneq ($(wildcard $(srctree)/arch/$(SRCARCH)/kernel/vmlinux.lds),)
>>> +    # Extract info from lds:
>>> +    #   . = ((0xC0000000)) + 0x00208000;
>>> +    # ARM_PRE_START_SIZE := 0x00208000
>>> +    ARM_PRE_START_SIZE := $(shell egrep ' \. \= \({2}0x[0-9a-fA-F]+\){2}' \
>>> +      $(srctree)/arch/$(SRCARCH)/kernel/vmlinux.lds | \
>>> +      sed -e 's/[(|)|.|=|+|<|;|-]//g' -e 's/ \+/ /g' -e 's/^[ \t]*//' | \
>>> +      awk -F' ' '{printf "0x%x", $$2}' 2>/dev/null)
>>> +  endif
>>>  endif
>>>  
>>>  ifeq ($(SRCARCH),arm64)
>>> @@ -58,8 +69,19 @@ ifeq ($(SRCARCH),arm64)
>>>    NO_SYSCALL_TABLE := 0
>>>    CFLAGS += -I$(OUTPUT)arch/arm64/include/generated
>>>    LIBUNWIND_LIBS = -lunwind -lunwind-aarch64
>>> +  ifneq ($(wildcard $(srctree)/arch/$(SRCARCH)/kernel/vmlinux.lds),)
>>> +    # Extract info from lds:
>>> +    #  . = ((((((((0xffffffffffffffff)) - (((1)) << (48)) + 1) + (0)) + (0x08000000))) + (0x08000000))) + 0x00080000;
>>> +    # ARM_PRE_START_SIZE := (0x08000000 + 0x08000000 + 0x00080000) = 0x10080000
>>> +    ARM_PRE_START_SIZE := $(shell egrep ' \. \= \({8}0x[0-9a-fA-F]+\){2}' \
>>> +      $(srctree)/arch/$(SRCARCH)/kernel/vmlinux.lds | \
>>> +      sed -e 's/[(|)|.|=|+|<|;|-]//g' -e 's/ \+/ /g' -e 's/^[ \t]*//' | \
>>> +      awk -F' ' '{printf "0x%x", $$6+$$7+$$8}' 2>/dev/null)
>>> +  endif
>>
>> So, that is not going to work if you take a perf.data file to a non-arm machine?
> 
> Yeah, this patch will only allow perf to work correctly when perf
> run natively on arm/arm64, so it can resolve partial of the issue.
> 
>> How come you cannot use kallsyms to get the information?
> 
> Thanks for pointing out this.  Sorry I skipped your comment "I don't
> know how you intend to calculate ARM_PRE_START_SIZE" when you reviewed
> the patch v3, I should use that chance to elaborate the detailed idea
> and so can get more feedback/guidance before procceed.
> 
> Actually, I have considered to use kallsyms when worked on the previous
> patch set.
> 
> As mentioned in patch set v4's cover letter, I tried to implement
> machine__create_extra_kernel_maps() for arm/arm64, the purpose is to
> parse kallsyms so can find more kernel maps and thus also can fixup
> the kernel start address.  But I found the 'perf script' tool directly
> calls machine__get_kernel_start() instead of running into the flow for
> machine__create_extra_kernel_maps();

Doesn't it just need to loop through each kernel map to find the lowest
start address?

>                                      so I finally gave up to use
> machine__create_extra_kernel_maps() for tweaking kernel start address
> and went back to use this patch's approach by parsing lds files.
> 
> So for next step, I want to get some guidances:
> 
> - One method is to add a new weak function, e.g.
>   arch__fix_kernel_text_start(), then every arch can implement its own
>   function to fixup the kernel start address;
> 
>   For arm/arm64, can use kallsyms to find the symbols with least
>   address and fixup for kernel start address.
> 
> - Another method is to directly parse kallsyms in the function
>   machine__get_kernel_start(), thus the change can be used for all
>   archs;
> 
> Seems to me the second method is to address this issue as a common
> issue crossing all archs.  But not sure if this is the requirement for
> all archs or just this is only required for arm/arm64.  Please let me
> know what's your preference or other thoughts.  Thanks a lot!
> 
> Leo.
> 
>>>  endif
>>>  
>>> +CFLAGS += -DARM_PRE_START_SIZE=$(ARM_PRE_START_SIZE)
>>> +
>>>  ifeq ($(SRCARCH),csky)
>>>    NO_PERF_REGS := 0
>>>  endif
>>> diff --git a/tools/perf/util/machine.c b/tools/perf/util/machine.c
>>> index f6ee7fbad3e4..e993f891bb82 100644
>>> --- a/tools/perf/util/machine.c
>>> +++ b/tools/perf/util/machine.c
>>> @@ -2687,13 +2687,26 @@ int machine__get_kernel_start(struct machine *machine)
>>>  	machine->kernel_start = 1ULL << 63;
>>>  	if (map) {
>>>  		err = map__load(map);
>>> +		if (err)
>>> +			return err;
>>> +
>>>  		/*
>>>  		 * On x86_64, PTI entry trampolines are less than the
>>>  		 * start of kernel text, but still above 2^63. So leave
>>>  		 * kernel_start = 1ULL << 63 for x86_64.
>>>  		 */
>>> -		if (!err && !machine__is(machine, "x86_64"))
>>> +		if (!machine__is(machine, "x86_64"))
>>>  			machine->kernel_start = map->start;
>>> +
>>> +		/*
>>> +		 * On arm/arm64, the kernel uses some memory regions which are
>>> +		 * prior to '_stext' symbol; to reflect the complete kernel
>>> +		 * address space, compensate these pre-defined regions for
>>> +		 * kernel start address.
>>> +		 */
>>> +		if (!strcmp(perf_env__arch(machine->env), "arm") ||
>>> +		    !strcmp(perf_env__arch(machine->env), "arm64"))
>>> +			machine->kernel_start -= ARM_PRE_START_SIZE;
>>>  	}
>>>  	return err;
>>>  }
>>>
>>
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
