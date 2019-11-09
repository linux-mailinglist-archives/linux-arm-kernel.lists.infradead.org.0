Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05BE3F5E30
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 Nov 2019 10:05:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e4/aJOuWlnr3Wtd/vDRFL3HRgvDJDoMibUf9ehcY5Wo=; b=pvwYEpz6iNK8aB
	51I8egTZ9G5Rug5389lBpQHKV0jdxAdglvOjYiV7Wd48M2RnIBS9bm3Mi8celVdi2RoIlszdJMfTn
	bWRLMuxmC5hn1M2XXiAd+NSb3mWUaFF96KzNwCAhPEpAs/waZ3b2Jrd/A2hdTZylm2W0R0BZFPqW/
	0ig6uZcx0jJXAXX8NQ7b7AvHJb2AlqyfX7lUr0nlR/okRrDCpOJa/HIY8pyGF653mJb8GY3l2pFyV
	hUVZL9VDkMv4JUDtzkMt9Fn1YdJxM+syhSzuWLbPDS2A7HjlGRxiBYzXJhUv2pS/QbDZm1FCQ56OV
	JgnxzRkRE29Cn6cfEE6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTMfx-0006Pn-V7; Sat, 09 Nov 2019 09:04:57 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTMfa-0006F3-Ba
 for linux-arm-kernel@lists.infradead.org; Sat, 09 Nov 2019 09:04:35 +0000
Received: by mail-wm1-x344.google.com with SMTP id f3so8510814wmc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 09 Nov 2019 01:04:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=IUwwnDiaaJDiVabFkds3RA0M47VCvfNJ38YPN4U2oag=;
 b=ZiFf4iCGe7+Zx3ZhX8GUMNrmiwpIX9M28VNS2o1RohKIcKz60MsFU7Ogmhxjd7zHR/
 ySD3J8Ynm9GVmr9d6SBrxn3teHrSFFjtp00EL0LIzGwmRAdPrP2M3pw4DN9OnTEHrpZf
 7JSkUFBIyxO4UyWhWArilZrTC3zoW9vQeKw0y5LhgLLSQUxpkbnCuujcF4mDp8NSZhgB
 bfheoV61K2qSunKhPHtKxg+GaXoOfKXcGUOI7jW7dBKmzzv4uYbBpIuRjFNjMA7etwYR
 1/CXdi1ivD05pR8NBr76ieksqvH3ziPGtjH+TozbPDqloyYEQUbQD8j+WsnHiRrCE80C
 x7wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=IUwwnDiaaJDiVabFkds3RA0M47VCvfNJ38YPN4U2oag=;
 b=P88PJEg7WBy2MRavix71sD1vrT8/JHDGtTcu3Iz7O8GI0pVor5Y91IIAA/5b1CAB2m
 hFnjCL9Sa95xlZAeIAUBc1jCkqZBx4rjd45AXYsatgVBm0uIn6TDkM0YtAMfHLUcV1LV
 JeBKYEa4bxTWtcvx8/CDYFrk/vsALASGFNMucjowJMdi2pFw9bwT6oHV7Lgz4Kd+VlMJ
 hBkOni3b4jZZsS+ORkOUy5tPybJ5IgpcefhtFI6gMt87YBWvoBqUbMs6HvNqRSW5hqCz
 TOKps1WoaGdYLNWboTzdgEcH0wSnXBZmERZu8U65F7X1sttwK7gI+ipv/YLML+XTu8KY
 E2jg==
X-Gm-Message-State: APjAAAWGy8NH6cG/LnYDyAwNIQsslUKrgZoz0KWa7ks3MUBeYaHvVVM/
 oYyzVosJbDDyE1zSPhCVnoFdnOusYsp2uw==
X-Google-Smtp-Source: APXvYqySK+LLx+mFsjhA8c2T6jEnk3qq+T2A5FLess9l9dO4jbTB00ewWcCSK7AYN77z3jdYjcifDQ==
X-Received: by 2002:a1c:984b:: with SMTP id a72mr12413619wme.78.1573290272628; 
 Sat, 09 Nov 2019 01:04:32 -0800 (PST)
Received: from [192.168.8.102] (108.red-213-99-169.dynamicip.rima-tde.net.
 [213.99.169.108])
 by smtp.gmail.com with ESMTPSA id n1sm9938802wrr.24.2019.11.09.01.04.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 09 Nov 2019 01:04:31 -0800 (PST)
Subject: Re: [PATCH v5] arm64: Implement archrandom.h for ARMv8.5-RNG
To: Mark Rutland <mark.rutland@arm.com>
References: <20191108135751.3218-1-rth@twiddle.net>
 <20191108143025.GD11465@lakrids.cambridge.arm.com>
From: Richard Henderson <richard.henderson@linaro.org>
Openpgp: preference=signencrypt
Message-ID: <846ba15f-b777-c0c9-6720-32b96d6c45ed@linaro.org>
Date: Sat, 9 Nov 2019 10:04:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191108143025.GD11465@lakrids.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_010434_426432_8CEC5CEB 
X-CRM114-Status: GOOD (  24.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 ard.biesheuvel@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/8/19 3:30 PM, Mark Rutland wrote:
> On Fri, Nov 08, 2019 at 02:57:51PM +0100, Richard Henderson wrote:
>> From: Richard Henderson <richard.henderson@linaro.org>
>>
>> Expose the ID_AA64ISAR0.RNDR field to userspace, as the
>> RNG system registers are always available at EL0.
>>
>> Signed-off-by: Richard Henderson <richard.henderson@linaro.org>
>> ---
>> v2: Use __mrs_s and fix missing cc clobber (Mark),
>>     Log rng failures with pr_warn (Mark),
> 
> When I suggested this, I meant in the probe path.
> 
> Since it can legitimately fail at runtime, I don't think it's worth
> logging there. Maybe it's worth recording stats, but the generic wrapper
> could do that.

Ah, ok, dropped.

>> +#ifdef CONFIG_ARCH_RANDOM
>> +	{
>> +		.desc = "Random Number Generator",
>> +		.capability = ARM64_HAS_RNG,
>> +		.type = ARM64_CPUCAP_WEAK_LOCAL_CPU_FEATURE,
> 
> As above, if we're advertisting this to userspace and/or VMs, this must
> be a system-wide feature, and cannot be a weak local feature.

Could you draw me the link between struct arm64_cpu_capabilities, as seen here,
and struct arm64_ftr_bits, which exposes the system registers to userspace/vms?

AFAICS, ARM64_HAS_RNG is private to the kernel; there is no ELF HWCAP value
exposed to userspace by this.

The adjustment of ID_AA64ISAR0.RNDR is FTR_LOWER_SAFE, which means the minimum
value of all online cpus.  (Which seems to generate a pr_warn in
check_update_ftr_reg for hot-plug secondaries that do not match.)


> We don't bother with special-casing local handling mismatch like this
> for other features. I'd ratehr that:
> 
> * On the boot CPU, prior to detecting secondaries, we can seed the usual
>   pool with the RNG if the boot CPU has it.
> 
> * Once secondaries are up, if the feature is present system-wide, we can
>   make use of the feature as a system-wide feature. If not, we don't use
>   the RNG.

Unless I'm mis-reading things, there is not a setting for ARM64_CPUCAP_* that
allows exactly this.  If I use ARM64_CPUCAP_SYSTEM_FEATURE, then the feature is
not detected early enough for the boot cpu.

I can change this to ARM64_CPUCAP_STRICT_BOOT_CPU_FEATURE.  That way it is
system-wide, and also detected early enough to be used for rand_initialize().
However, it has the side effect that secondaries are not allowed to omit RNG if
the boot cpu has RNG.

Is there some setting that I've missed?  Is it ok to kick the problem down the
road until someone actually builds mis-matched hardware?


> ... so this can be:
> 
> bool arch_get_random_long(unsigned long *v)
> {
> 	bool ok;
> 
> 	if (!cpus_have_const_cap(ARM64_HAS_RNG))
> 		return false;
> 
> 	/*
> 	 * Reads of RNDR set PSTATE.NZCV to 0b0000 on success,
> 	 * and set PSTATE.NZCV to 0b0100 otherwise.
> 	 */
> 	asm volatile(
> 		__mrs_s("%0", SYS_RNDR_EL0) "\n"
> 	"	cset %w1, ne\n"
> 	: "=r" (*v), "=r" (ok)
> 	:
> 	: "cc");
> 
> 	return ok;
> }
> 
> ...with similar for arch_get_random_seed_long().

Done.

>>  config RANDOM_TRUST_CPU
>>  	bool "Trust the CPU manufacturer to initialize Linux's CRNG"
>> -	depends on X86 || S390 || PPC
>> +	depends on X86 || S390 || PPC || ARM64
> 
> Can't that depend on ARCH_RANDOM instead?

Yes, it can.


r~

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
