Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACF15E626B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 27 Oct 2019 13:14:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FYjlKi1ImfFvT5OqRw4Wptt/epA8n+/P1nLapctRm2c=; b=UKOnb9m2iWRSu+
	UkosLEfm38vxuxOouox2ZEOgCp6wYjtMR1kFhZa/0ZP2eMzZeOxjYpOTzs5rDkYxHGMCG9Z/bDrId
	k4pf22tm/UnDE7FvRQuccL/ePWxeGKpCPI21b9GLMfB1f5QOzslaf1pFrj6SsOCVeAYPPadP4SFCp
	tzvXWKMiN2oeo8jYTpSw3kF+EbjLqQrjrktqhovT40ap3x/61CMLBp6to1MqYlN6Mxmi2NYEVTXl1
	DoxpkGg4Ze08boUt6N0m2YxnNWZayF1GEK4Lwh0uOJGovW+dVQIqFHUeWchnQ9B6l7rtAmTES6UbQ
	8AzSGDQxZtpfGqW3jmYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOhRT-00040H-6z; Sun, 27 Oct 2019 12:14:43 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOhR8-0003aE-0h
 for linux-arm-kernel@lists.infradead.org; Sun, 27 Oct 2019 12:14:23 +0000
Received: by mail-wm1-x341.google.com with SMTP id 22so6237255wms.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 27 Oct 2019 05:14:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=qBQMo15u4akqQ8NWGQMhJU3k9VWFJohiyePtcxAYFI0=;
 b=m+Ns1PWK3MtMBikb5UwssCdVywszYbdnMhaTRgL8sKmYeGT6RE9fiyhf3J/MDr5RfA
 BaArednT0VMLOUBKv7PfKn1qhFaWiRvXClzeLEkFq+zajN4GJWHqIrwFcZbubjD49cP3
 FAhqGdvROVaC1HyFsFzY+x+gmcRVk6tSPTrTKiK5upsEjpxOvLKQwbj5d3+Z5Dd6Vk/T
 1XXVvuk7boKDC3IjZ6tValvymLwPX6zsUoKrCY6qHlq8g8wD8uC/y4IfvdVzUZrxN4hW
 sBVxYzmfTtJu0D9FkyXtCv40hw28GPned5lzWmSM8mfPSlER0Fc3VMHfNqDEiTmO5OXw
 /Lpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=qBQMo15u4akqQ8NWGQMhJU3k9VWFJohiyePtcxAYFI0=;
 b=fvuQTB/GgbCoX8a6pVi8Xd198RsmN7PBgPNiCv22jpIi1PkTc9X9xY4manDqqbb8nE
 +QtnWvKsbvQNmuK2UrBptSUklp9pG72w9LdaenDeXp6VRSDRFb45mHT9D1K01Aur6zMq
 xZ6o7aQbBwlj1nurUruQsBVkYxWdhZMZczBBpIqq+NcTsADAi4pRSxIWNfeDh0apgsOT
 dG6pvtjBkAmC8g60Qj1UW/bVdTNjNggi3xN6y8HybjmGG6IZ3vfGNkPF03vIEtsskBCP
 d7hPPIg9ubKBNxH0I8OChcsLzNLOj4osXT5kRhISROD2QD/RAr4D0QCYdnurGuJLxKDz
 oHEA==
X-Gm-Message-State: APjAAAWkiXCLdGP4okULz1wmY33jtt2ezWV/i1/6lD+jXzjyJecGRcXC
 ZDMuoCToYgp5VGGfgcU9QaMoYg==
X-Google-Smtp-Source: APXvYqzLaPnNvQm7J7MkxUO5AQPa6wp4y6EGKcMQmUZZ/UL7FmT2DLzKfGvffaK5m6eXeVZY4xvogw==
X-Received: by 2002:a05:600c:2212:: with SMTP id
 z18mr12347054wml.154.1572178459930; 
 Sun, 27 Oct 2019 05:14:19 -0700 (PDT)
Received: from [10.81.2.50] ([109.190.253.14])
 by smtp.gmail.com with ESMTPSA id 74sm9397558wrm.92.2019.10.27.05.14.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 27 Oct 2019 05:14:19 -0700 (PDT)
Subject: Re: [PATCH 1/1] arm64: Implement archrandom.h for ARMv8.5-RNG
To: Mark Rutland <mark.rutland@arm.com>
References: <20191019022048.28065-1-richard.henderson@linaro.org>
 <20191019022048.28065-2-richard.henderson@linaro.org>
 <20191024113239.GC4300@lakrids.cambridge.arm.com>
From: Richard Henderson <richard.henderson@linaro.org>
Openpgp: preference=signencrypt
Message-ID: <bdadd4bf-1848-bef1-89c3-2d594cf3be16@linaro.org>
Date: Sun, 27 Oct 2019 13:14:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191024113239.GC4300@lakrids.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_051422_111540_C70AC783 
X-CRM114-Status: GOOD (  24.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arch@vger.kernel.org, ard.biesheuvel@linaro.org,
 catalin.marinas@arm.com, will@kernel.org, Dave.Martin@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/24/19 1:32 PM, Mark Rutland wrote:
> Please give this a menmoic in <asm/sysreg.h>, i.e.
> 
> #define SYS_RNDR	sys_reg(3, 3, 2, 4, 0)
> 
> ... and make this function:
> 
> static inline bool read_rndr(unsigned long *v)
> {
> 	unsigned long pass;
> 
> 	/*
> 	 * Reads of RNDR set PSTATE.NZCV to 0b0000 upon success, and set
> 	 * PSTATE.NZCV to 0b0100 otherwise.
> 	 */
> 	asm volatile(
> 		__mrs_s("%0", SYS_RNDR) "\n"
> 	"	cset %1, ne\n"
> 	: "=r" (*v), "=r" (pass);
> 	:
> 	: "cc");
> 
> 	return pass;
> }

Done.

> #define SYS_RNDRRS	sys_reg(3, 3, 2, 4, 1)
> 
> ...and here have:
> 
> static inline bool read_rndrrs(unsigned long *v)
> {
> 	unsigned long pass;
> 
> 	/*
> 	 * Reads of RNDRRS set PSTATE.NZCV to 0b0000 upon success, and
> 	 * set PSTATE.NZCV to 0b0100 otherwise.
> 	 */
> 	asm volatile (
> 		__mrs_s("%0", SYS_RNDRRS) "\n"
> 	"	cset %w1, ne\n"
> 	: "=r" (*v), "=r" (pass)
> 	:
> 	: "cc");
> 
> 	return pass;
> }

Done.

>> +static inline bool arch_get_random_seed_long(unsigned long *v)
>> +{
>> +	/* If RNDR fails, attempt to re-seed with RNDRRS.  */
>> +	return arch_has_random_seed() && (arm_rndr(v) || arm_rndrrs(v));
>> +}
> 
> Here we clobber the value at v even if the reads of RNDR and RNDRRS
> failed. Is that ok?

The x86 inline asm does, so I should think it is ok.

>> +#ifdef CONFIG_ARCH_RANDOM
>> +static bool can_use_rng(const struct arm64_cpu_capabilities *entry, int scope)
>> +{
>> +	unsigned long tmp;
>> +	int i;
>> +
>> +	if (!has_cpuid_feature(entry, scope))
>> +		return false;
>> +
>> +	/*
>> +	 * Re-seed from the true random number source.
>> +	 * If this fails, disable the feature.
>> +	 */
>> +	for (i = 0; i < 10; ++i) {
>> +		if (arm_rndrrs(&tmp))
>> +			return true;
>> +	}
> 
> The ARM ARM (ARM DDI 0487E.a) says:
> 
> | Reseeded Random Number. Returns a 64-bit random number which is
> | reseeded from the True Random Number source at an IMPLEMENTATION
> | DEFINED rate.
> 
> ... and:
> 
> | If the instruction cannot return a genuine random number in a
> | reasonable period of time, PSTATE.NZCV is set to 0b0100 and the data
> | value returned in UNKNOWN.
> 
> ... so it's not clear to me if the retry logic makes sense. Naively I'd
> expect "reasonable period of time" to include 10 attempts.
> 
> Given we'll have to handle failure elsewhere, I suspect that it might be
> best to assume that this works until we encounter evidence to the
> contrary.

Compare arch/x86/kernel/cpu/rdrand.c (x86_init_rdrand) and
arch/powerpc/platforms/powernv/rng.c (initialize_darn).

Both existing implementations have a small loop testing to see of the hardware
passes its own self-check at startup.  Perhaps it's simply paranoia, but it
didn't seem untoward to check.


>> +#ifdef CONFIG_ARCH_RANDOM
>> +	{
>> +		.desc = "Random Number Generator",
>> +		.capability = ARM64_HAS_RNG,
>> +		.type = ARM64_CPUCAP_STRICT_BOOT_CPU_FEATURE,
> 
> I strongly suspect we're going to encounter systems where this feature
> is mismatched, such that this can't be a boto CPU feature.
> 
> If we need entropy early in boot, we could detect if the boot CPU had
> the feature, and seed the pool using it, then later make use of a
> system-wide capability.

In the meantime, what do you suggest I place here and in
arch_has_random_seed(), so that it's at least detected early enough for the
boot cpu, but does not require support from all cpus?


r~

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
