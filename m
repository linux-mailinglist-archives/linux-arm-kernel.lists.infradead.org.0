Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFA7D8E784
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 10:56:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+ZGHJZXJ/yJe4nnB76colIqAXwEPCnNe9vNwjMJFq/I=; b=rKqa3wYyGy2B4s
	YPSYX2aOHkQJSDvNv/3ImE1BfGeInPlrYGKLghMh8dX5arUMg3Gsesam9NR4vatCXk/niPCKgsQjJ
	7Zw8PKuZqX7W/PxOBw5xqycPCHie8movLrKNqFgQLE87vVnPEDn32Lt27poPpJLHqGDB2AE43wFzG
	pDuoOUxhRHVLBfyw2Q952oyvE+G+KY8w9B/jKgGxw6N0i1g3rJMzqcgzRRiG76rzFKSSOy0JCST5X
	ivkvRes0rxGRZZt+eP2zo1FgNxtPBQb7Moudbb2CPinrLW3LYGPsN0H/MLn1FM11WAZ+54D3V+k0w
	M03zq9r9VgNL5hW7Z6Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyBYT-0003p5-6W; Thu, 15 Aug 2019 08:56:21 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyBYH-0003oh-PP
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 08:56:11 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Aug 2019 01:56:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,388,1559545200"; d="scan'208";a="181821709"
Received: from ahunter-desktop.fi.intel.com (HELO [10.237.72.122])
 ([10.237.72.122])
 by orsmga006.jf.intel.com with ESMTP; 15 Aug 2019 01:56:03 -0700
Subject: Re: [PATCH v5] perf machine: arm/arm64: Improve completeness for
 kernel address space
To: Leo Yan <leo.yan@linaro.org>, Arnaldo Carvalho de Melo <acme@kernel.org>, 
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
 Yonghong Song <yhs@fb.com>, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, bpf@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20190815082521.16885-1-leo.yan@linaro.org>
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: PL 281, 00181 Helsinki,
 Business Identity Code: 0357606 - 4, Domiciled in Helsinki
Message-ID: <d874e6b3-c115-6c8c-bb12-160cfd600505@intel.com>
Date: Thu, 15 Aug 2019 11:54:54 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190815082521.16885-1-leo.yan@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_015609_835932_643C5F43 
X-CRM114-Status: GOOD (  31.62  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
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
Cc: Peter Zijlstra <peterz@infradead.org>, coresight@lists.linaro.org,
 linux-arm-kernel@lists.infradead.org,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki Poulouse <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15/08/19 11:25 AM, Leo Yan wrote:
> Arm and arm64 architecture reserve some memory regions prior to the
> symbol '_stext' and these memory regions later will be used by device
> module and BPF jit.  The current code misses to consider these memory
> regions thus any address in the regions will be taken as user space
> mode, but perf cannot find the corresponding dso with the wrong CPU
> mode so we misses to generate samples for device module and BPF
> related trace data.
> 
> This patch parse the link scripts to get the memory size prior to start
> address and reduce this size from 'machine>->kernel_start', then can
> get a fixed up kernel start address which contain memory regions for
> device module and BPF.  Finally, machine__get_kernel_start() can reflect
> more complete kernel memory regions and perf can successfully generate
> samples.
> 
> The reason for parsing the link scripts is Arm architecture changes text
> offset dependent on different platforms, which define multiple text
> offsets in $kernel/arch/arm/Makefile.  This offset is decided when build
> kernel and the final value is extended in the link script, so we can
> extract the used value from the link script.  We use the same way to
> parse arm64 link script as well.  If fail to find the link script, the
> pre start memory size is assumed as zero, in this case it has no any
> change caused with this patch.
> 
> Below is detailed info for testing this patch:
> 
> - Install or build LLVM/Clang;
> 
> - Configure perf with ~/.perfconfig:
> 
>   root@debian:~# cat ~/.perfconfig
>   # this file is auto-generated.
>   [llvm]
>           clang-path = /mnt/build/llvm-build/build/install/bin/clang
>           kbuild-dir = /mnt/linux-kernel/linux-cs-dev/
>           clang-opt = "-g"
>           dump-obj = true
> 
>   [trace]
>           show_zeros = yes
>           show_duration = no
>           no_inherit = yes
>           show_timestamp = no
>           show_arg_names = no
>           args_alignment = 40
>           show_prefix = yes
> 
> - Run 'perf trace' command with eBPF event:
> 
>   root@debian:~# perf trace -e string \
>       -e $kernel/tools/perf/examples/bpf/augmented_raw_syscalls.c
> 
> - Read eBPF program memory mapping in kernel:
> 
>   root@debian:~# echo 1 > /proc/sys/net/core/bpf_jit_kallsyms
>   root@debian:~# cat /proc/kallsyms | grep -E "bpf_prog_.+_sys_[enter|exit]"
>   ffff00000008a0d0 t bpf_prog_e470211b846088d5_sys_enter  [bpf]
>   ffff00000008c6a4 t bpf_prog_29c7ae234d79bd5c_sys_exit   [bpf]
> 
> - Launch any program which accesses file system frequently so can hit
>   the system calls trace flow with eBPF event;
> 
> - Capture CoreSight trace data with filtering eBPF program:
> 
>   root@debian:~# perf record -e cs_etm/@tmc_etr0/ \
> 	--filter 'filter 0xffff00000008a0d0/0x800' -a sleep 5s
> 
> - Decode the eBPF program symbol 'bpf_prog_f173133dc38ccf87_sys_enter':
> 
>   root@debian:~# perf script -F,ip,sym
>   Frame deformatter: Found 4 FSYNCS
>                   0 [unknown]
>    ffff00000008a1ac bpf_prog_e470211b846088d5_sys_enter
>    ffff00000008a250 bpf_prog_e470211b846088d5_sys_enter
>                   0 [unknown]
>    ffff00000008a124 bpf_prog_e470211b846088d5_sys_enter
>                   0 [unknown]
>    ffff00000008a14c bpf_prog_e470211b846088d5_sys_enter
>    ffff00000008a13c bpf_prog_e470211b846088d5_sys_enter
>    ffff00000008a14c bpf_prog_e470211b846088d5_sys_enter
>                   0 [unknown]
>    ffff00000008a180 bpf_prog_e470211b846088d5_sys_enter
>                   0 [unknown]
>    ffff00000008a1ac bpf_prog_e470211b846088d5_sys_enter
>    ffff00000008a190 bpf_prog_e470211b846088d5_sys_enter
>    ffff00000008a1ac bpf_prog_e470211b846088d5_sys_enter
>    ffff00000008a250 bpf_prog_e470211b846088d5_sys_enter
>                   0 [unknown]
>    ffff00000008a124 bpf_prog_e470211b846088d5_sys_enter
>                   0 [unknown]
>    ffff00000008a14c bpf_prog_e470211b846088d5_sys_enter
>                   0 [unknown]
>    ffff00000008a180 bpf_prog_e470211b846088d5_sys_enter
>    [...]
> 
> Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
> Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
> Cc: Jiri Olsa <jolsa@redhat.com>
> Cc: Namhyung Kim <namhyung@kernel.org>
> Cc: Peter Zijlstra <peterz@infradead.org>
> Cc: Suzuki Poulouse <suzuki.poulose@arm.com>
> Cc: Adrian Hunter <adrian.hunter@intel.com>
> Cc: coresight@lists.linaro.org
> Cc: linux-arm-kernel@lists.infradead.org
> Signed-off-by: Leo Yan <leo.yan@linaro.org>
> ---
>  tools/perf/Makefile.config | 22 ++++++++++++++++++++++
>  tools/perf/util/machine.c  | 15 ++++++++++++++-
>  2 files changed, 36 insertions(+), 1 deletion(-)
> 
> diff --git a/tools/perf/Makefile.config b/tools/perf/Makefile.config
> index e4988f49ea79..d7ff839d8b20 100644
> --- a/tools/perf/Makefile.config
> +++ b/tools/perf/Makefile.config
> @@ -48,9 +48,20 @@ ifeq ($(SRCARCH),x86)
>    NO_PERF_REGS := 0
>  endif
>  
> +ARM_PRE_START_SIZE := 0
> +
>  ifeq ($(SRCARCH),arm)
>    NO_PERF_REGS := 0
>    LIBUNWIND_LIBS = -lunwind -lunwind-arm
> +  ifneq ($(wildcard $(srctree)/arch/$(SRCARCH)/kernel/vmlinux.lds),)
> +    # Extract info from lds:
> +    #   . = ((0xC0000000)) + 0x00208000;
> +    # ARM_PRE_START_SIZE := 0x00208000
> +    ARM_PRE_START_SIZE := $(shell egrep ' \. \= \({2}0x[0-9a-fA-F]+\){2}' \
> +      $(srctree)/arch/$(SRCARCH)/kernel/vmlinux.lds | \
> +      sed -e 's/[(|)|.|=|+|<|;|-]//g' -e 's/ \+/ /g' -e 's/^[ \t]*//' | \
> +      awk -F' ' '{printf "0x%x", $$2}' 2>/dev/null)
> +  endif
>  endif
>  
>  ifeq ($(SRCARCH),arm64)
> @@ -58,8 +69,19 @@ ifeq ($(SRCARCH),arm64)
>    NO_SYSCALL_TABLE := 0
>    CFLAGS += -I$(OUTPUT)arch/arm64/include/generated
>    LIBUNWIND_LIBS = -lunwind -lunwind-aarch64
> +  ifneq ($(wildcard $(srctree)/arch/$(SRCARCH)/kernel/vmlinux.lds),)
> +    # Extract info from lds:
> +    #  . = ((((((((0xffffffffffffffff)) - (((1)) << (48)) + 1) + (0)) + (0x08000000))) + (0x08000000))) + 0x00080000;
> +    # ARM_PRE_START_SIZE := (0x08000000 + 0x08000000 + 0x00080000) = 0x10080000
> +    ARM_PRE_START_SIZE := $(shell egrep ' \. \= \({8}0x[0-9a-fA-F]+\){2}' \
> +      $(srctree)/arch/$(SRCARCH)/kernel/vmlinux.lds | \
> +      sed -e 's/[(|)|.|=|+|<|;|-]//g' -e 's/ \+/ /g' -e 's/^[ \t]*//' | \
> +      awk -F' ' '{printf "0x%x", $$6+$$7+$$8}' 2>/dev/null)
> +  endif

So, that is not going to work if you take a perf.data file to a non-arm machine?

How come you cannot use kallsyms to get the information?

>  endif
>  
> +CFLAGS += -DARM_PRE_START_SIZE=$(ARM_PRE_START_SIZE)
> +
>  ifeq ($(SRCARCH),csky)
>    NO_PERF_REGS := 0
>  endif
> diff --git a/tools/perf/util/machine.c b/tools/perf/util/machine.c
> index f6ee7fbad3e4..e993f891bb82 100644
> --- a/tools/perf/util/machine.c
> +++ b/tools/perf/util/machine.c
> @@ -2687,13 +2687,26 @@ int machine__get_kernel_start(struct machine *machine)
>  	machine->kernel_start = 1ULL << 63;
>  	if (map) {
>  		err = map__load(map);
> +		if (err)
> +			return err;
> +
>  		/*
>  		 * On x86_64, PTI entry trampolines are less than the
>  		 * start of kernel text, but still above 2^63. So leave
>  		 * kernel_start = 1ULL << 63 for x86_64.
>  		 */
> -		if (!err && !machine__is(machine, "x86_64"))
> +		if (!machine__is(machine, "x86_64"))
>  			machine->kernel_start = map->start;
> +
> +		/*
> +		 * On arm/arm64, the kernel uses some memory regions which are
> +		 * prior to '_stext' symbol; to reflect the complete kernel
> +		 * address space, compensate these pre-defined regions for
> +		 * kernel start address.
> +		 */
> +		if (!strcmp(perf_env__arch(machine->env), "arm") ||
> +		    !strcmp(perf_env__arch(machine->env), "arm64"))
> +			machine->kernel_start -= ARM_PRE_START_SIZE;
>  	}
>  	return err;
>  }
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
