Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87E725A960
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Jun 2019 09:05:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zgKxBB2I+VfmEVgOQ1/tO6P7y863dXtxxM6r6J9L1zg=; b=Ni1OhSD9/MGFG+
	3krCqWhlkRf70zt6Tq4WDurInVHc7LhAWUBA8qqrDQPgOSczyLLiO+T4SJ/Xf/kQDNb5tiejXt1Py
	lXufxAUugIU+sTRFC5F/B3xBMRHPnpsyjmHgCF/mF8nzg5Zi+9A6uQv64z7xpqn/RsJDE4VDspeLo
	VypiyN0v89FcBiyqY3GjF1DJjMccz0evVVO0DwXAx9rKifY6rZANfTQzT1bzQUdEzJvjS8AfDoTfa
	57bmP74Xs5Rr3oRfs9OCEnsVtzouTj71rTwCFyenLaP6NkIDFqp0YrBe4TZILv22wa+LLmqCIUIfH
	x/VgH0gAwxyw41Url8PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hh7Po-0002xr-HY; Sat, 29 Jun 2019 07:04:52 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hh7PQ-0002x1-5j
 for linux-arm-kernel@lists.infradead.org; Sat, 29 Jun 2019 07:04:30 +0000
Received: from p5b06daab.dip0.t-ipconnect.de ([91.6.218.171] helo=nanos)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1hh7PL-00016C-RW; Sat, 29 Jun 2019 09:04:23 +0200
Date: Sat, 29 Jun 2019 09:04:22 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Michael Kelley <mikelley@microsoft.com>
Subject: Re: [PATCH v4 2/2] Drivers: hv: Move Hyper-V clocksource code to
 new clocksource driver
In-Reply-To: <1561746758-23216-3-git-send-email-mikelley@microsoft.com>
Message-ID: <alpine.DEB.2.21.1906290850220.1802@nanos.tec.linutronix.de>
References: <1561746758-23216-1-git-send-email-mikelley@microsoft.com>
 <1561746758-23216-3-git-send-email-mikelley@microsoft.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_000428_719770_76DDDE96 
X-CRM114-Status: GOOD (  21.09  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "linux-hyperv@vger.kernel.org" <linux-hyperv@vger.kernel.org>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 "linux@rasmusvillemoes.dk" <linux@rasmusvillemoes.dk>,
 "rkrcmar@redhat.com" <rkrcmar@redhat.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "jasowang@redhat.com" <jasowang@redhat.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "vincenzo.frascino@arm.com" <vincenzo.frascino@arm.com>,
 "shuah@kernel.org" <shuah@kernel.org>, "sashal@kernel.org" <sashal@kernel.org>,
 "sfr@canb.auug.org.au" <sfr@canb.auug.org.au>,
 KY Srinivasan <kys@microsoft.com>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 "x86@kernel.org" <x86@kernel.org>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 "mingo@redhat.com" <mingo@redhat.com>,
 "marcelo.cerri@canonical.com" <marcelo.cerri@canonical.com>,
 "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 "olaf@aepfle.de" <olaf@aepfle.de>, "arnd@arndb.de" <arnd@arndb.de>,
 "0x7f454c46@gmail.com" <0x7f454c46@gmail.com>, "bp@alien8.de" <bp@alien8.de>,
 "apw@canonical.com" <apw@canonical.com>,
 Sunil Muthuswamy <sunilmut@microsoft.com>, "pcc@google.com" <pcc@google.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "huw@codeweavers.com" <huw@codeweavers.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "ralf@linux-mips.org" <ralf@linux-mips.org>,
 "salyzyn@android.com" <salyzyn@android.com>,
 "paul.burton@mips.com" <paul.burton@mips.com>,
 "pbonzini@redhat.com" <pbonzini@redhat.com>, vkuznets <vkuznets@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Michael,

On Fri, 28 Jun 2019, Michael Kelley wrote:

See the other reply vs. prefix and summary

> Continue consolidating Hyper-V clock and timer code into an ISA
...

> +#ifdef CONFIG_HYPERV_TSCPAGE
> +
> +static struct ms_hyperv_tsc_page *tsc_pg;
> +
> +struct ms_hyperv_tsc_page *hv_get_tsc_page(void)
> +{
> +	return tsc_pg;
> +}
> +EXPORT_SYMBOL_GPL(hv_get_tsc_page);

> +static u64 read_hv_sched_clock_tsc(void)

Lacks a notrace annotation as it is used as sched clock.

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

One tab indent is sufficient

> +};
> +#endif

> +void __init hv_init_clocksource(void)
> +{
> +#ifdef CONFIG_HYPERV_TSCPAGE

Can you please avoid ifdef blocks in the code and just split out this into
a helper function and provide an empty stub for the TSCPAGE=n case?

Then you can spare one indent and the ifdeffery is confined. Get's rid of
the goto as well.

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

Please use proper multi line comments formatting:

		/*
		 * This is a proper formatted multi-line comment.
		 * See?
		 */

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

If you have to use line breaks, then please align them properly

		sched_clock_register(read_hv_sched_clock_tsc,
				     64, HV_CLOCK_HZ);


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

Ditto. But again if you return when the feature is not available you spare
an indent and the line break.

Thanks,

	tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
