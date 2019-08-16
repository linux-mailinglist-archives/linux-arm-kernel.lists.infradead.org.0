Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D5C090271
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 15:05:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/9iTWUsckA02zZPz2fH5ge0vL8KmDYQMt3Q9xwoJfLo=; b=kCWd9cKpIdE3Ik
	L/HWCFrIDg8zR3Jof95+uE0GRvdtWH6PaBbvRvZU0v5wpa6HU7k1UngJYd2G395Qrjo0GK8zVBrN4
	mOmk6/FBo/j9h5QOulPCpVvsum3QbJKp2X17Ir2AAJvEasgGPUKuoxdIDkLdBNdQHplTfahzUFC5n
	od35yKuITWUy07ehnPzQoLquuzR5z7OKmyRVgAzQDPqJlF8xhwYCBmAiaazw5ys5+JOh/W/3aPGh5
	Cuv7m8cUHn3fhQeGX0daVwZXqB+uUDOjfYDAH9q3om1IJxrwY3TUB3ha/uRgEvzklySDbH184a1W3
	2QWxYCVfkRKjpY30lSWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hybvN-0003Mv-Bc; Fri, 16 Aug 2019 13:05:45 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hybr4-00075z-PR
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 13:01:20 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Aug 2019 06:01:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,393,1559545200"; d="scan'208";a="171409585"
Received: from ahunter-desktop.fi.intel.com (HELO [10.237.72.122])
 ([10.237.72.122])
 by orsmga008.jf.intel.com with ESMTP; 16 Aug 2019 06:01:12 -0700
Subject: Re: [PATCH v5] perf machine: arm/arm64: Improve completeness for
 kernel address space
To: Leo Yan <leo.yan@linaro.org>
References: <20190815082521.16885-1-leo.yan@linaro.org>
 <d874e6b3-c115-6c8c-bb12-160cfd600505@intel.com>
 <20190815113242.GA28881@leoy-ThinkPad-X240s>
 <e0919e39-7607-815b-3a12-96f098e45a5f@intel.com>
 <20190816014541.GA17960@leoy-ThinkPad-X240s>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
Message-ID: <363577f1-097e-eddd-a6ca-b23f644dd8ce@intel.com>
Date: Fri, 16 Aug 2019 16:00:02 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190816014541.GA17960@leoy-ThinkPad-X240s>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_060118_988855_56E79231 
X-CRM114-Status: GOOD (  22.98  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
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

On 16/08/19 4:45 AM, Leo Yan wrote:
> Hi Adrian,
> 
> On Thu, Aug 15, 2019 at 02:45:57PM +0300, Adrian Hunter wrote:
> 
> [...]
> 
>>>> How come you cannot use kallsyms to get the information?
>>>
>>> Thanks for pointing out this.  Sorry I skipped your comment "I don't
>>> know how you intend to calculate ARM_PRE_START_SIZE" when you reviewed
>>> the patch v3, I should use that chance to elaborate the detailed idea
>>> and so can get more feedback/guidance before procceed.
>>>
>>> Actually, I have considered to use kallsyms when worked on the previous
>>> patch set.
>>>
>>> As mentioned in patch set v4's cover letter, I tried to implement
>>> machine__create_extra_kernel_maps() for arm/arm64, the purpose is to
>>> parse kallsyms so can find more kernel maps and thus also can fixup
>>> the kernel start address.  But I found the 'perf script' tool directly
>>> calls machine__get_kernel_start() instead of running into the flow for
>>> machine__create_extra_kernel_maps();
>>
>> Doesn't it just need to loop through each kernel map to find the lowest
>> start address?
> 
> Based on your suggestion, I worked out below change and verified it
> can work well on arm64 for fixing up start address; please let me know
> if the change works for you?

How does that work if take a perf.data file to a machine with a different
architecture?

> 
> diff --git a/tools/perf/util/machine.c b/tools/perf/util/machine.c
> index f6ee7fbad3e4..51d78313dca1 100644
> --- a/tools/perf/util/machine.c
> +++ b/tools/perf/util/machine.c
> @@ -2671,9 +2671,26 @@ int machine__nr_cpus_avail(struct machine *machine)
>  	return machine ? perf_env__nr_cpus_avail(machine->env) : 0;
>  }
>  
> +static int machine__fixup_kernel_start(void *arg,
> +				       const char *name __maybe_unused,
> +				       char type,
> +				       u64 start)
> +{
> +	struct machine *machine = arg;
> +
> +	type = toupper(type);
> +
> +	/* Fixup for text, weak, data and bss sections. */
> +	if (type == 'T' || type == 'W' || type == 'D' || type == 'B')
> +		machine->kernel_start = min(machine->kernel_start, start);
> +
> +	return 0;
> +}
> +
>  int machine__get_kernel_start(struct machine *machine)
>  {
>  	struct map *map = machine__kernel_map(machine);
> +	char filename[PATH_MAX];
>  	int err = 0;
>  
>  	/*
> @@ -2687,6 +2704,7 @@ int machine__get_kernel_start(struct machine *machine)
>  	machine->kernel_start = 1ULL << 63;
>  	if (map) {
>  		err = map__load(map);
>  		/*
>  		 * On x86_64, PTI entry trampolines are less than the
>  		 * start of kernel text, but still above 2^63. So leave
> @@ -2695,6 +2713,16 @@ int machine__get_kernel_start(struct machine *machine)
>  		if (!err && !machine__is(machine, "x86_64"))
>  			machine->kernel_start = map->start;
>  	}
> +
> +	machine__get_kallsyms_filename(machine, filename, PATH_MAX);
> +
> +	if (symbol__restricted_filename(filename, "/proc/kallsyms"))
> +		goto out;
> +
> +	if (kallsyms__parse(filename, machine, machine__fixup_kernel_start))
> +		pr_warning("Fail to fixup kernel start address. skipping...\n");
> +
> +out:
>  	return err;
>  }
> 
> Thanks,
> Leo Yan
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
