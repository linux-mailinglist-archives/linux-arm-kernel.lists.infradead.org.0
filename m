Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 045B573403
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 18:37:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/3I3SYNN5rJk3GshTNunikaSiVIPH1skd9HCHHHbcus=; b=svP7MKoXwReGhZ
	o27RrY1E8X+K/bq+GdOuhFkVar59SOsqk6/J3XFi9Lv+HmvtAnzkESdobvsKrCzG58ffv9PpPg4P3
	2y5cV+YesujvwhF+5l8dimfg9gFV5n6VAt4s3t2yl9xzkfF/QzBsF+ovzkzAUlpPyFmDQv9yEtLnT
	cglqSY/3P6q3oIAu0kpwVzGiibNMoD9erXakdEVdJMWZZkFaqMEBw5x1QoNu4BPiQ0DhGV8HR0Od+
	VGc6Ge/gZyoEoK0h5GgFhhBsJPIy29L8LAQk4q+dRzNBrtGITtEJ2aiP75kDTQrFbk9tJQR19QyAj
	2L2wHDDWa8p6Nn6ZHAcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqKGC-0007iN-5k; Wed, 24 Jul 2019 16:37:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqKG2-0007hY-P4
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 16:36:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3690E28;
 Wed, 24 Jul 2019 09:36:49 -0700 (PDT)
Received: from [10.1.196.133] (e112269-lin.cambridge.arm.com [10.1.196.133])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C337C3F71F;
 Wed, 24 Jul 2019 09:36:46 -0700 (PDT)
Subject: Re: [PATCH v9 19/21] mm: Add generic ptdump
To: Mark Rutland <mark.rutland@arm.com>
References: <20190722154210.42799-1-steven.price@arm.com>
 <20190722154210.42799-20-steven.price@arm.com>
 <20190723095747.GB8085@lakrids.cambridge.arm.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <ee707646-0196-63bb-45cc-6b949ae9530e@arm.com>
Date: Wed, 24 Jul 2019 17:36:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190723095747.GB8085@lakrids.cambridge.arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_093650_862978_FD1EB859 
X-CRM114-Status: GOOD (  19.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Dave Hansen <dave.hansen@linux.intel.com>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 James Morse <james.morse@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org, "Liang, Kan" <kan.liang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 23/07/2019 10:57, Mark Rutland wrote:
> On Mon, Jul 22, 2019 at 04:42:08PM +0100, Steven Price wrote:
>> Add a generic version of page table dumping that architectures can
>> opt-in to
>>
>> Signed-off-by: Steven Price <steven.price@arm.com>
> 
> [...]
> 
>> +#ifdef CONFIG_KASAN
>> +/*
>> + * This is an optimization for KASAN=y case. Since all kasan page tables
>> + * eventually point to the kasan_early_shadow_page we could call note_page()
>> + * right away without walking through lower level page tables. This saves
>> + * us dozens of seconds (minutes for 5-level config) while checking for
>> + * W+X mapping or reading kernel_page_tables debugfs file.
>> + */
>> +static inline bool kasan_page_table(struct ptdump_state *st, void *pt,
>> +				    unsigned long addr)
>> +{
>> +	if (__pa(pt) == __pa(kasan_early_shadow_pmd) ||
>> +#ifdef CONFIG_X86
>> +	    (pgtable_l5_enabled() &&
>> +			__pa(pt) == __pa(kasan_early_shadow_p4d)) ||
>> +#endif
>> +	    __pa(pt) == __pa(kasan_early_shadow_pud)) {
>> +		st->note_page(st, addr, 5, pte_val(kasan_early_shadow_pte[0]));
>> +		return true;
>> +	}
>> +	return false;
> 
> Having you tried this with CONFIG_DEBUG_VIRTUAL?
> 
> The kasan_early_shadow_pmd is a kernel object rather than a linear map
> object, so you should use __pa_symbol for that.

Thanks for pointing that out - it is indeed broken on arm64. This was
moved from x86 where CONFIG_DEBUG_VIRTUAL doesn't seem to pick this up.
There is actually a problem here that 'pt' might not be in the linear
map (so __pa(pt) barfs on arm64 as well as kasan_early_shadow_p?d).

It looks like having the comparisons of the form "pt ==
lm_alias(kasan_early_shadow_p?d)" is probably best.

> It's a bit horrid to have to test multiple levels in one function; can't
> we check the relevant level inline in each of the test_p?d funcs?
> 
> They're optional anyway, so they only need to be defined for
> CONFIG_KASAN.

Good point - removing the test_p?d callbacks when !CONFIG_KASAN
simplifies the code.

Thanks,

Steve

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
