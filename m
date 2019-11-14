Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 791DBFCCDA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 19:11:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=emVq0o9Luc8MzuFECoiN40O0FONSjksnn/Oyej2wHKE=; b=mZ6hI9/iwej25f
	wpUp9xYa+73qxW7JJ1JELxwIsG19yiZwXvuhQG6+pC5ubU7dN3HkFQ20EqTSK6D4nfESPjoptW125
	I49H/YlUuAfMCgnzxrt3NOSulE3gyDrlq/UR9yUjzEG6XEmFSJO0LQS3E1IgASTTe+zouA/+SGggN
	Qn+BPJkKcH1ffu+YNpEAPb0ZAXBPa9Xtzw64mAggqq8+sRwKE2qQNIwB8C8JsLwQzLg1vkSicbsmG
	DxPUw/Lpc16EAIDO3GpIZqfjCSHIbkTzIuGkB6x/+1EocflIaiPRfEROpamOpRsAjDMOi3D9afAwU
	e3kRKbfwjNHm5UIzJBFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVJap-0002l1-5k; Thu, 14 Nov 2019 18:11:43 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVJag-0002kQ-CR
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 18:11:36 +0000
Received: by mail-wr1-x442.google.com with SMTP id f2so7566089wrs.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 10:11:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=W9hUaXgEGH0+McOgDXrLDEjLrUK2r0StMQnMwauTTsQ=;
 b=CyyKj65d3q76Cyufn/oxPwKRA8/5C0/cfs8gPXJCpdGSCVXQTllUNi9wo5/sid0JOQ
 owxhP7W/YmcYeMuUG/r+kNiTpUWsBu7t8MSvcmrmqC0orlLqMsaC2fx9nUcyb7LuirBC
 k9czaYldxpybdZLxmjNKsBYOXwO5KJxfQRPUq+46dOAx0R0S8KZOuEBbWi1TGwsGNLVt
 /INEEg1hT1CHosXtYNPQZsdmFzOF4j70Wt8mNbgcSPIvQuJIauqDwpdzBuKvGTUX0v96
 DgJ0A0CZTfl1TW8/6FQr/uoWdpB5EW5DpG05WLTnQCmLVK7LJwD3DXUXeb+3HdX98xgd
 v0RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=W9hUaXgEGH0+McOgDXrLDEjLrUK2r0StMQnMwauTTsQ=;
 b=KkQQrckQrr6Rsyeysz+GX2jujp8ei2m4vDeJ9QFBKWYeft9HQgxoXQni1otV9SIhaX
 w3kV23YrEQ2mIz/v03SGsfuznwC89fGlXNegljCYrEtwOtzqGLB/sxj0QM0PijlPlo6c
 6boOvd4JZLblMl70AE9Z4Fi4Wh68Cu+GsVeMU5s6OAWrG+Vc8dFvRgziI6nAaZPaxeVr
 VhhepaOrjwjoELkCq0i4wDyxfxMrwRHU9RdKyhUHOjE/1udNfjf5/eaklS6dYdrWWd0h
 W9TZYP6gKSYOwcwNTjV4f/040hBmUDyXt3gtcYbnifZsaA/gzEe4ofmg5HHXPLsnLXgs
 P7sg==
X-Gm-Message-State: APjAAAWXetptVr6+AZqVtbqkbvERYIVWjNLwF4aJuzGAfCNJAUQAQ6Xp
 rzY4X+ZtlOqPxZj7nU52Vy+7/g==
X-Google-Smtp-Source: APXvYqyI2DoHw0eYUJOx5qaYUiXc1+Eu5UTWtu40d2zYY1WLbbcQhe4FbzwZBzOKL4r2eLRZ7cIQXw==
X-Received: by 2002:adf:f744:: with SMTP id z4mr9688382wrp.205.1573755092513; 
 Thu, 14 Nov 2019 10:11:32 -0800 (PST)
Received: from [192.168.8.102] (184.red-37-158-56.dynamicip.rima-tde.net.
 [37.158.56.184])
 by smtp.gmail.com with ESMTPSA id j14sm7792698wrp.16.2019.11.14.10.11.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 14 Nov 2019 10:11:31 -0800 (PST)
Subject: Re: [PATCH v7] arm64: Implement archrandom.h for ARMv8.5-RNG
To: Mark Rutland <mark.rutland@arm.com>
References: <20191114113932.26186-1-richard.henderson@linaro.org>
 <20191114142512.GC37865@lakrids.cambridge.arm.com>
From: Richard Henderson <richard.henderson@linaro.org>
Openpgp: preference=signencrypt
Message-ID: <3b1d5f2a-5a8d-0c33-176a-f1c35b8356de@linaro.org>
Date: Thu, 14 Nov 2019 19:11:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191114142512.GC37865@lakrids.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_101134_503474_B7CCB400 
X-CRM114-Status: GOOD (  19.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On 11/14/19 3:25 PM, Mark Rutland wrote:
> On Thu, Nov 14, 2019 at 12:39:32PM +0100, richard.henderson@linaro.org wrote:
>> +bool arch_get_random_seed_long(unsigned long *v)
>> +{
>> +	bool ok;
>> +
>> +	if (static_branch_likely(&arm64_const_caps_ready)) {
>> +		if (__cpus_have_const_cap(ARM64_HAS_RNG))
>> +			return arm64_rndr(v);
>> +		return false;
>> +	}
>> +
>> +	/*
>> +	 * Before const_caps_ready, check the current cpu.
>> +	 * This will generally be the boot cpu for rand_initialize().
>> +	 */
>> +	preempt_disable_notrace();
>> +	ok = this_cpu_has_cap(ARM64_HAS_RNG) && arm64_rndr(v);
>> +	preempt_enable_notrace();
>> +
>> +	return ok;
>> +}
> 
> As I asked previously, please separate the common case and the boot-cpu
> init-time case into separate functions.

Ok, beyond just making arch_get_random_seed_long be a function pointer, how?

I honestly don't understand how what you want is different from what's here.


> The runtime function should just check the RNG cap before using the
> instruction, without any preemption check or explicit check of
> arm64_const_caps_ready. i.e.
> 
> static bool arm64_rndr(unsigned long *v)
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
> 	"       cset %w1, ne\n"
> 	: "=r" (*v), "=r" (ok)
> 	:
> 	: "cc");
> 
> 	return ok;

This is exactly what I have above, in arch_get_random_seed_long(), in the
arm64_const_caps_ready case.

BTW, you can't stick the cpus_have_const_cap check in arm64_rndr(), or it isn't
usable before setup_cpu_features().  The embedded cpus_have_cap() check will
not pass for the boot cpu alone, unless we use
ARM64_CPUCAP_STRICT_BOOT_CPU_FEATURE, which does not have the semantics that
you have requested in previous review rounds.

Which is *why* I wrote the test exactly as I did, so that when
!arm64_const_caps_ready, I can use a different test than cpus_have_cap().

> Any boot-time seeding should be in a separate function that external
> callers cannot invoke at runtime. Either have an arch function that the
> common random code calls at init time on the boot CPU, or have some
> arch_add_foo_entropy() function that the arm64 code can call somewhere
> around setup_arch().

What "external callers" are you talking about?

My boot-time code above can only be reached until arm64_const_caps_ready, at
which point the branch is patched out.  So after boot-time, "external callers"
only get

	if (__cpus_have_const_cap(ARM64_HAS_RNG))
		return arm64_rndr(v);
	return false;

Which to my mind satisfies your "cannot invoke" clause.

Anyway, the preempt_disable is present on my boot path because preempt *is*
enabled during rand_initialize().  If I do not disable it, I do trigger the
warning within this_cpu_has_cap()

As for arch_add_boot_entropy() or whatnot... you're now you're asking for
non-trivial changes to the common drivers/char/random.c code.  I'm not keen on
designing such a thing when I really don't know what the requirements are.  In
particular, how it would differ from what I have.

Color me confused.


r~

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
