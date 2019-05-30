Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC0FB2F9DB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 11:48:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OeS/lIUKDioDb/gJT27G25FUZgmTTmu/n++vUCTVVSM=; b=ukcAVmABApLdkh
	ggYWznhLpSXSGGdsg6YVtEivBuLYaDlfgC8obw6IFVi0A8WMsQH24sYWBPnajM9b2+TsfKFzcglN1
	24hLrFhKRAyJ3pAgpcOfQkF7EqCdDH3hdzPyHcM3ddUTKYldDc61Tq3hJ5t+Cak1qvDV8hSVAEyOM
	rTXhW0hyDm3nXuS2KTQESs7rFF8F4Jx28ryCQSfUloKSOoBdlyQRftTrOQxYbcquz9yUlm/wc+tLS
	Y1swSzyyHNTCAywHGoAxBKRyIoG8UoJ6J2CceH9fyWoRWqNq2H9hO60JJ0Uiuo6/Kd3/082WXuIO0
	5d6H23Qyg1xfAtWY8hrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWHfa-0004cf-AK; Thu, 30 May 2019 09:48:22 +0000
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWHfR-0004cI-OS
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 09:48:15 +0000
Received: by mail-wm1-f66.google.com with SMTP id f204so3542844wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 May 2019 02:48:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=ieBreYqn74TE4VVKVG76q3gXbE8UVws6L1EIn4PkLWo=;
 b=Dd2HFcSnWyHYkOV2Sws3Df+45+YAAdlGoM4yqPWMjruQE7EOz6ksLIJtlANHTl5Uzs
 VhaI+xiEeFkZdIEYYnjT9SGeaYXWq0vQe+ZSKYZ1nuvlkKvg1uSa/jQAqdtgofnuV7fb
 Wufr+lQ5ngfAf4ZcONohUmOmHgwcMubqvYJ3OdYzRrRl5e+sn32SqDl1T2O0CeKi8Kx8
 HTvKfun/rnW6bLvcNVTkPZveW4oMB//TTMGnm7Yf9g7OV+AHmh8Db2AyfHHTVVo0iI16
 FF6WV0JuMzq6YrFtSAAKJGWkICTK21kKbojXMCnGxCAQd4QQ3G9yh9O2/7lK0kzEY4e4
 Borg==
X-Gm-Message-State: APjAAAW59FDjtHRmYeFGWE22clz08DUjobfnEqvrt785+RUAFyi0KUcJ
 0Wt9FMfmyoe0Z29no8v9PTrjaQ==
X-Google-Smtp-Source: APXvYqwC4qmvkkAwaPy+mAdn3u79acI1wL8OUviaj6zXVUioYKFa2fz2TZJcnHZVYG0bqBX0irgYbg==
X-Received: by 2002:a1c:a6d1:: with SMTP id p200mr1552381wme.169.1559209692028; 
 Thu, 30 May 2019 02:48:12 -0700 (PDT)
Received: from vitty.brq.redhat.com (cst-prg-69-174.cust.vodafone.cz.
 [46.135.69.174])
 by smtp.gmail.com with ESMTPSA id a2sm4996198wrg.69.2019.05.30.02.48.10
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 30 May 2019 02:48:11 -0700 (PDT)
From: Vitaly Kuznetsov <vkuznets@redhat.com>
To: Michael Kelley <mikelley@microsoft.com>
Subject: Re: [PATCH v3 2/2] Drivers: hv: Move Hyper-V clocksource code to new
 clocksource driver
In-Reply-To: <1558969089-13204-3-git-send-email-mikelley@microsoft.com>
References: <1558969089-13204-1-git-send-email-mikelley@microsoft.com>
 <1558969089-13204-3-git-send-email-mikelley@microsoft.com>
Date: Thu, 30 May 2019 11:48:10 +0200
Message-ID: <87r28gl1d1.fsf@vitty.brq.redhat.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_024813_797634_F07448C6 
X-CRM114-Status: GOOD (  27.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "linux-hyperv@vger.kernel.org" <linux-hyperv@vger.kernel.org>,
 "marc.zyngier@arm.com" <marc.zyngier@arm.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "jasowang@redhat.com" <jasowang@redhat.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "marcelo.cerri@canonical.com" <marcelo.cerri@canonical.com>,
 "olaf@aepfle.de" <olaf@aepfle.de>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "apw@canonical.com" <apw@canonical.com>,
 Sunil Muthuswamy <sunilmut@microsoft.com>, KY Srinivasan <kys@microsoft.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Michael Kelley <mikelley@microsoft.com> writes:

> Code for the Hyper-V specific clocksources is currently mixed
> in with other Hyper-V code. Move the code to the Hyper-V specific
> driver in the "clocksource" directory, while separating out
> ISA dependencies so that the clocksource driver remains ISA
> independent. Update the Hyper-V initialization code to call
> initialization and cleanup routines since the Hyper-V synthetic
> timers are not independently enumerated in ACPI. Update Hyper-V
> clocksource users KVM and VDSO to get definitions from a new
> include file.
>
> No behavior is changed and no new functionality is added.
>
> Suggested-by: Marc Zyngier <marc.zyngier@arm.com>
> Signed-off-by: Michael Kelley <mikelley@microsoft.com>
> ---
>  arch/x86/entry/vdso/vclock_gettime.c |   1 +
>  arch/x86/entry/vdso/vma.c            |   2 +-
>  arch/x86/hyperv/hv_init.c            |  91 +-----------------------
>  arch/x86/include/asm/mshyperv.h      |  81 +++-------------------
>  arch/x86/kvm/x86.c                   |   1 +
>  drivers/clocksource/hyperv_timer.c   | 130 +++++++++++++++++++++++++++++++++++
>  drivers/hv/hv_util.c                 |   1 +
>  include/clocksource/hyperv_timer.h   |  78 +++++++++++++++++++++
>  8 files changed, 226 insertions(+), 159 deletions(-)
>
> diff --git a/arch/x86/entry/vdso/vclock_gettime.c b/arch/x86/entry/vdso/vclock_gettime.c
> index 98c7d12..7983ca2 100644
> --- a/arch/x86/entry/vdso/vclock_gettime.c
> +++ b/arch/x86/entry/vdso/vclock_gettime.c
> @@ -21,6 +21,7 @@
>  #include <linux/math64.h>
>  #include <linux/time.h>
>  #include <linux/kernel.h>
> +#include <clocksource/hyperv_timer.h>
>  
>  #define gtod (&VVAR(vsyscall_gtod_data))
>  
> diff --git a/arch/x86/entry/vdso/vma.c b/arch/x86/entry/vdso/vma.c
> index babc4e7..99b38e9 100644
> --- a/arch/x86/entry/vdso/vma.c
> +++ b/arch/x86/entry/vdso/vma.c
> @@ -22,7 +22,7 @@
>  #include <asm/page.h>
>  #include <asm/desc.h>
>  #include <asm/cpufeature.h>
> -#include <asm/mshyperv.h>
> +#include <clocksource/hyperv_timer.h>
>  
>  #if defined(CONFIG_X86_64)
>  unsigned int __read_mostly vdso64_enabled = 1;
> diff --git a/arch/x86/hyperv/hv_init.c b/arch/x86/hyperv/hv_init.c
> index e4ba467..79f626a 100644
> --- a/arch/x86/hyperv/hv_init.c
> +++ b/arch/x86/hyperv/hv_init.c
> @@ -27,64 +27,13 @@
>  #include <linux/version.h>
>  #include <linux/vmalloc.h>
>  #include <linux/mm.h>
> -#include <linux/clockchips.h>
>  #include <linux/hyperv.h>
>  #include <linux/slab.h>
>  #include <linux/cpuhotplug.h>
> -
> -#ifdef CONFIG_HYPERV_TSCPAGE
> -
> -static struct ms_hyperv_tsc_page *tsc_pg;
> -
> -struct ms_hyperv_tsc_page *hv_get_tsc_page(void)
> -{
> -	return tsc_pg;
> -}
> -EXPORT_SYMBOL_GPL(hv_get_tsc_page);
> -
> -static u64 read_hv_clock_tsc(struct clocksource *arg)
> -{
> -	u64 current_tick = hv_read_tsc_page(tsc_pg);
> -
> -	if (current_tick == U64_MAX)
> -		rdmsrl(HV_X64_MSR_TIME_REF_COUNT, current_tick);
> -
> -	return current_tick;
> -}
> -
> -static struct clocksource hyperv_cs_tsc = {
> -		.name		= "hyperv_clocksource_tsc_page",
> -		.rating		= 400,
> -		.read		= read_hv_clock_tsc,
> -		.mask		= CLOCKSOURCE_MASK(64),
> -		.flags		= CLOCK_SOURCE_IS_CONTINUOUS,
> -};
> -#endif
> -
> -static u64 read_hv_clock_msr(struct clocksource *arg)
> -{
> -	u64 current_tick;
> -	/*
> -	 * Read the partition counter to get the current tick count. This count
> -	 * is set to 0 when the partition is created and is incremented in
> -	 * 100 nanosecond units.
> -	 */
> -	rdmsrl(HV_X64_MSR_TIME_REF_COUNT, current_tick);
> -	return current_tick;
> -}
> -
> -static struct clocksource hyperv_cs_msr = {
> -	.name		= "hyperv_clocksource_msr",
> -	.rating		= 400,
> -	.read		= read_hv_clock_msr,
> -	.mask		= CLOCKSOURCE_MASK(64),
> -	.flags		= CLOCK_SOURCE_IS_CONTINUOUS,
> -};
> +#include <clocksource/hyperv_timer.h>
>  
>  void *hv_hypercall_pg;
>  EXPORT_SYMBOL_GPL(hv_hypercall_pg);
> -struct clocksource *hyperv_cs;
> -EXPORT_SYMBOL_GPL(hyperv_cs);
>  
>  u32 *hv_vp_index;
>  EXPORT_SYMBOL_GPL(hv_vp_index);
> @@ -353,42 +302,8 @@ void __init hyperv_init(void)
>  
>  	x86_init.pci.arch_init = hv_pci_init;
>  
> -	/*
> -	 * Register Hyper-V specific clocksource.
> -	 */
> -#ifdef CONFIG_HYPERV_TSCPAGE
> -	if (ms_hyperv.features & HV_MSR_REFERENCE_TSC_AVAILABLE) {
> -		union hv_x64_msr_hypercall_contents tsc_msr;
> -
> -		tsc_pg = __vmalloc(PAGE_SIZE, GFP_KERNEL, PAGE_KERNEL);
> -		if (!tsc_pg)
> -			goto register_msr_cs;
> -
> -		hyperv_cs = &hyperv_cs_tsc;
> -
> -		rdmsrl(HV_X64_MSR_REFERENCE_TSC, tsc_msr.as_uint64);
> -
> -		tsc_msr.enable = 1;
> -		tsc_msr.guest_physical_address = vmalloc_to_pfn(tsc_pg);
> -
> -		wrmsrl(HV_X64_MSR_REFERENCE_TSC, tsc_msr.as_uint64);
> -
> -		hyperv_cs_tsc.archdata.vclock_mode = VCLOCK_HVCLOCK;
> -
> -		clocksource_register_hz(&hyperv_cs_tsc, NSEC_PER_SEC/100);
> -		return;
> -	}
> -register_msr_cs:
> -#endif
> -	/*
> -	 * For 32 bit guests just use the MSR based mechanism for reading
> -	 * the partition counter.
> -	 */
> -
> -	hyperv_cs = &hyperv_cs_msr;
> -	if (ms_hyperv.features & HV_MSR_TIME_REF_COUNT_AVAILABLE)
> -		clocksource_register_hz(&hyperv_cs_msr, NSEC_PER_SEC/100);
> -
> +	/* Register Hyper-V specific clocksource */
> +	hv_init_clocksource();
>  	return;
>  
>  remove_cpuhp_state:
> diff --git a/arch/x86/include/asm/mshyperv.h b/arch/x86/include/asm/mshyperv.h
> index cc60e61..f4fa8a9 100644
> --- a/arch/x86/include/asm/mshyperv.h
> +++ b/arch/x86/include/asm/mshyperv.h
> @@ -105,6 +105,17 @@ static inline void vmbus_signal_eom(struct hv_message *msg, u32 old_msg_type)
>  #define hv_get_crash_ctl(val) \
>  	rdmsrl(HV_X64_MSR_CRASH_CTL, val)
>  
> +#define hv_get_time_ref_count(val) \
> +	rdmsrl(HV_X64_MSR_TIME_REF_COUNT, val)
> +
> +#define hv_get_reference_tsc(val) \
> +	rdmsrl(HV_X64_MSR_REFERENCE_TSC, val)
> +#define hv_set_reference_tsc(val) \
> +	wrmsrl(HV_X64_MSR_REFERENCE_TSC, val)
> +#define hv_set_clocksource_vdso(val) \
> +	((val).archdata.vclock_mode = VCLOCK_HVCLOCK)
> +#define hv_get_raw_timer() rdtsc_ordered()
> +
>  void hyperv_callback_vector(void);
>  void hyperv_reenlightenment_vector(void);
>  #ifdef CONFIG_TRACING
> @@ -133,7 +144,6 @@ static inline void hv_disable_stimer0_percpu_irq(int irq) {}
>  
>  
>  #if IS_ENABLED(CONFIG_HYPERV)
> -extern struct clocksource *hyperv_cs;
>  extern void *hv_hypercall_pg;
>  extern void  __percpu  **hyperv_pcpu_input_arg;
>  
> @@ -387,73 +397,4 @@ static inline int hyperv_flush_guest_mapping_range(u64 as,
>  }
>  #endif /* CONFIG_HYPERV */
>  
> -#ifdef CONFIG_HYPERV_TSCPAGE
> -struct ms_hyperv_tsc_page *hv_get_tsc_page(void);
> -static inline u64 hv_read_tsc_page_tsc(const struct ms_hyperv_tsc_page *tsc_pg,
> -				       u64 *cur_tsc)
> -{
> -	u64 scale, offset;
> -	u32 sequence;
> -
> -	/*
> -	 * The protocol for reading Hyper-V TSC page is specified in Hypervisor
> -	 * Top-Level Functional Specification ver. 3.0 and above. To get the
> -	 * reference time we must do the following:
> -	 * - READ ReferenceTscSequence
> -	 *   A special '0' value indicates the time source is unreliable and we
> -	 *   need to use something else. The currently published specification
> -	 *   versions (up to 4.0b) contain a mistake and wrongly claim '-1'
> -	 *   instead of '0' as the special value, see commit c35b82ef0294.
> -	 * - ReferenceTime =
> -	 *        ((RDTSC() * ReferenceTscScale) >> 64) + ReferenceTscOffset
> -	 * - READ ReferenceTscSequence again. In case its value has changed
> -	 *   since our first reading we need to discard ReferenceTime and repeat
> -	 *   the whole sequence as the hypervisor was updating the page in
> -	 *   between.
> -	 */
> -	do {
> -		sequence = READ_ONCE(tsc_pg->tsc_sequence);
> -		if (!sequence)
> -			return U64_MAX;
> -		/*
> -		 * Make sure we read sequence before we read other values from
> -		 * TSC page.
> -		 */
> -		smp_rmb();
> -
> -		scale = READ_ONCE(tsc_pg->tsc_scale);
> -		offset = READ_ONCE(tsc_pg->tsc_offset);
> -		*cur_tsc = rdtsc_ordered();
> -
> -		/*
> -		 * Make sure we read sequence after we read all other values
> -		 * from TSC page.
> -		 */
> -		smp_rmb();
> -
> -	} while (READ_ONCE(tsc_pg->tsc_sequence) != sequence);
> -
> -	return mul_u64_u64_shr(*cur_tsc, scale, 64) + offset;
> -}
> -
> -static inline u64 hv_read_tsc_page(const struct ms_hyperv_tsc_page *tsc_pg)
> -{
> -	u64 cur_tsc;
> -
> -	return hv_read_tsc_page_tsc(tsc_pg, &cur_tsc);
> -}
> -
> -#else
> -static inline struct ms_hyperv_tsc_page *hv_get_tsc_page(void)
> -{
> -	return NULL;
> -}
> -
> -static inline u64 hv_read_tsc_page_tsc(const struct ms_hyperv_tsc_page *tsc_pg,
> -				       u64 *cur_tsc)
> -{
> -	BUG();
> -	return U64_MAX;
> -}
> -#endif
>  #endif
> diff --git a/arch/x86/kvm/x86.c b/arch/x86/kvm/x86.c
> index 536b78c..3fbaac0 100644
> --- a/arch/x86/kvm/x86.c
> +++ b/arch/x86/kvm/x86.c
> @@ -70,6 +70,7 @@
>  #include <asm/mshyperv.h>
>  #include <asm/hypervisor.h>
>  #include <asm/intel_pt.h>
> +#include <clocksource/hyperv_timer.h>
>  
>  #define CREATE_TRACE_POINTS
>  #include "trace.h"
> diff --git a/drivers/clocksource/hyperv_timer.c b/drivers/clocksource/hyperv_timer.c
> index 30615f3..274614d 100644
> --- a/drivers/clocksource/hyperv_timer.c
> +++ b/drivers/clocksource/hyperv_timer.c
> @@ -14,6 +14,8 @@
>  #include <linux/percpu.h>
>  #include <linux/cpumask.h>
>  #include <linux/clockchips.h>
> +#include <linux/clocksource.h>
> +#include <linux/sched_clock.h>
>  #include <linux/mm.h>
>  #include <clocksource/hyperv_timer.h>
>  #include <asm/hyperv-tlfs.h>
> @@ -189,3 +191,131 @@ void hv_stimer_global_cleanup(void)
>  	hv_stimer_free();
>  }
>  EXPORT_SYMBOL_GPL(hv_stimer_global_cleanup);
> +
> +/*
> + * Code and definitions for the Hyper-V clocksources.  Two
> + * clocksources are defined: one that reads the Hyper-V defined MSR, and
> + * the other that uses the TSC reference page feature as defined in the
> + * TLFS.  The MSR version is for compatibility with old versions of
> + * Hyper-V and 32-bit x86.  The TSC reference page version is preferred.
> + */
> +
> +struct clocksource *hyperv_cs;
> +EXPORT_SYMBOL_GPL(hyperv_cs);
> +
> +#ifdef CONFIG_HYPERV_TSCPAGE
> +
> +static struct ms_hyperv_tsc_page *tsc_pg;
> +
> +struct ms_hyperv_tsc_page *hv_get_tsc_page(void)
> +{
> +	return tsc_pg;
> +}
> +EXPORT_SYMBOL_GPL(hv_get_tsc_page);
> +
> +static u64 read_hv_sched_clock_tsc(void)
> +{
> +	u64 current_tick = hv_read_tsc_page(tsc_pg);
> +
> +	if (current_tick == U64_MAX)
> +		hv_get_time_ref_count(current_tick);
> +
> +	return current_tick;
> +}
> +
> +static u64 read_hv_clock_tsc(struct clocksource *arg)
> +{
> +	return read_hv_sched_clock_tsc();
> +}
> +
> +static struct clocksource hyperv_cs_tsc = {
> +		.name		= "hyperv_clocksource_tsc_page",
> +		.rating		= 400,
> +		.read		= read_hv_clock_tsc,
> +		.mask		= CLOCKSOURCE_MASK(64),
> +		.flags		= CLOCK_SOURCE_IS_CONTINUOUS,
> +};
> +#endif
> +
> +static u64 read_hv_sched_clock_msr(void)
> +{
> +	u64 current_tick;
> +	/*
> +	 * Read the partition counter to get the current tick count. This count
> +	 * is set to 0 when the partition is created and is incremented in
> +	 * 100 nanosecond units.
> +	 */
> +	hv_get_time_ref_count(current_tick);
> +	return current_tick;
> +}
> +
> +static u64 read_hv_clock_msr(struct clocksource *arg)
> +{
> +	return read_hv_sched_clock_msr();
> +}
> +
> +static struct clocksource hyperv_cs_msr = {
> +	.name		= "hyperv_clocksource_msr",
> +	.rating		= 400,
> +	.read		= read_hv_clock_msr,
> +	.mask		= CLOCKSOURCE_MASK(64),
> +	.flags		= CLOCK_SOURCE_IS_CONTINUOUS,
> +};
> +
> +void __init hv_init_clocksource(void)
> +{
> +#ifdef CONFIG_HYPERV_TSCPAGE
> +	if (ms_hyperv.features & HV_MSR_REFERENCE_TSC_AVAILABLE) {
> +
> +		u64		tsc_msr;
> +		phys_addr_t	phys_addr;
> +
> +		tsc_pg = vmalloc(PAGE_SIZE);
> +		if (!tsc_pg)
> +			goto register_msr_cs;
> +
> +		hyperv_cs = &hyperv_cs_tsc;
> +		phys_addr = page_to_phys(vmalloc_to_page(tsc_pg));
> +
> +		/* The Hyper-V TLFS specifies to preserve the value of
> +		 * reserved bits in registers.  So read the existing
> +		 * value, preserve the low order 12 bits, and add in
> +		 * the guest physical address (which already has at
> +		 * least the low 12 bits set to zero since it is page
> +		 * aligned). Also set the "enable" bit, which is bit 0.
> +		 */
> +		hv_get_reference_tsc(tsc_msr);
> +		tsc_msr &= GENMASK_ULL(11, 0);
> +		tsc_msr = tsc_msr | 0x1 | (u64)phys_addr;
> +		hv_set_reference_tsc(tsc_msr);
> +
> +		hv_set_clocksource_vdso(hyperv_cs_tsc);
> +		clocksource_register_hz(&hyperv_cs_tsc, NSEC_PER_SEC/100);
> +
> +		/*
> +		 * sched_clock_register is needed on ARM64 but
> +		 * is a no-op on x86
> +		 */
> +		sched_clock_register(read_hv_sched_clock_tsc,
> +						64, HV_CLOCK_HZ);
> +		return;
> +	}
> +register_msr_cs:
> +#endif
> +	/*
> +	 * For 32 bit guests just use the MSR based mechanism for reading
> +	 * the partition counter.
> +	 */
> +	hyperv_cs = &hyperv_cs_msr;
> +	if (ms_hyperv.features & HV_MSR_TIME_REF_COUNT_AVAILABLE) {
> +		clocksource_register_hz(&hyperv_cs_msr, NSEC_PER_SEC/100);
> +
> +		/*
> +		 * sched_clock_register is needed on ARM64 but
> +		 * is a no-op on x86
> +		 */
> +		sched_clock_register(read_hv_sched_clock_msr,
> +						64, HV_CLOCK_HZ);

I'm not sure about ARM, but MSR-based clocksource would be a really bad
choice for sched clock on x86, this will slow things down
significantly. Luckily, as you're validly stating above,
sched_clock_register() is a no-op on x86 as we don't define
CONFIG_GENERIC_SCHED_CLOCK.

Can we actually *not* do sched_clock_register() in case
TSC page is unavailable (and revert to counting jiffies or whatever)?

> +	}
> +}
> +EXPORT_SYMBOL_GPL(hv_init_clocksource);
> diff --git a/drivers/hv/hv_util.c b/drivers/hv/hv_util.c
> index f10eeb1..9eff85e 100644
> --- a/drivers/hv/hv_util.c
> +++ b/drivers/hv/hv_util.c
> @@ -29,6 +29,7 @@
>  #include <linux/hyperv.h>
>  #include <linux/clockchips.h>
>  #include <linux/ptp_clock_kernel.h>
> +#include <clocksource/hyperv_timer.h>
>  #include <asm/mshyperv.h>
>  
>  #include "hyperv_vmbus.h"
> diff --git a/include/clocksource/hyperv_timer.h b/include/clocksource/hyperv_timer.h
> index ba5dc17..e17e8a2 100644
> --- a/include/clocksource/hyperv_timer.h
> +++ b/include/clocksource/hyperv_timer.h
> @@ -13,6 +13,10 @@
>  #ifndef __CLKSOURCE_HYPERV_TIMER_H
>  #define __CLKSOURCE_HYPERV_TIMER_H
>  
> +#include <linux/clocksource.h>
> +#include <linux/math64.h>
> +#include <asm/mshyperv.h>
> +
>  #define HV_MAX_MAX_DELTA_TICKS 0xffffffff
>  #define HV_MIN_DELTA_TICKS 1
>  
> @@ -24,4 +28,78 @@
>  extern void hv_stimer_global_cleanup(void);
>  extern void hv_stimer0_isr(void);
>  
> +#if IS_ENABLED(CONFIG_HYPERV)
> +extern struct clocksource *hyperv_cs;
> +extern void hv_init_clocksource(void);
> +#endif /* CONFIG_HYPERV */
> +
> +#ifdef CONFIG_HYPERV_TSCPAGE
> +extern struct ms_hyperv_tsc_page *hv_get_tsc_page(void);
> +static inline u64 hv_read_tsc_page_tsc(const struct ms_hyperv_tsc_page *tsc_pg,
> +				       u64 *cur_tsc)
> +{
> +	u64 scale, offset;
> +	u32 sequence;
> +
> +	/*
> +	 * The protocol for reading Hyper-V TSC page is specified in Hypervisor
> +	 * Top-Level Functional Specification ver. 3.0 and above. To get the
> +	 * reference time we must do the following:
> +	 * - READ ReferenceTscSequence
> +	 *   A special '0' value indicates the time source is unreliable and we
> +	 *   need to use something else. The currently published specification
> +	 *   versions (up to 4.0b) contain a mistake and wrongly claim '-1'
> +	 *   instead of '0' as the special value, see commit c35b82ef0294.
> +	 * - ReferenceTime =
> +	 *        ((RDTSC() * ReferenceTscScale) >> 64) + ReferenceTscOffset
> +	 * - READ ReferenceTscSequence again. In case its value has changed
> +	 *   since our first reading we need to discard ReferenceTime and repeat
> +	 *   the whole sequence as the hypervisor was updating the page in
> +	 *   between.
> +	 */
> +	do {
> +		sequence = READ_ONCE(tsc_pg->tsc_sequence);
> +		if (!sequence)
> +			return U64_MAX;
> +		/*
> +		 * Make sure we read sequence before we read other values from
> +		 * TSC page.
> +		 */
> +		smp_rmb();
> +
> +		scale = READ_ONCE(tsc_pg->tsc_scale);
> +		offset = READ_ONCE(tsc_pg->tsc_offset);
> +		*cur_tsc = hv_get_raw_timer();
> +
> +		/*
> +		 * Make sure we read sequence after we read all other values
> +		 * from TSC page.
> +		 */
> +		smp_rmb();
> +
> +	} while (READ_ONCE(tsc_pg->tsc_sequence) != sequence);
> +
> +	return mul_u64_u64_shr(*cur_tsc, scale, 64) + offset;
> +}
> +
> +static inline u64 hv_read_tsc_page(const struct ms_hyperv_tsc_page *tsc_pg)
> +{
> +	u64 cur_tsc;
> +
> +	return hv_read_tsc_page_tsc(tsc_pg, &cur_tsc);
> +}
> +
> +#else /* CONFIG_HYPERV_TSC_PAGE */
> +static inline struct ms_hyperv_tsc_page *hv_get_tsc_page(void)
> +{
> +	return NULL;
> +}
> +
> +static inline u64 hv_read_tsc_page_tsc(const struct ms_hyperv_tsc_page *tsc_pg,
> +				       u64 *cur_tsc)
> +{
> +	return U64_MAX;
> +}
> +#endif /* CONFIG_HYPERV_TSCPAGE */
> +
>  #endif

With the (theoretical) question above answered,

Reviewed-by: Vitaly Kuznetsov <vkuznets@redhat.com>

-- 
Vitaly

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
