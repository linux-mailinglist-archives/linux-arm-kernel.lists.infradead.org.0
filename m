Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFA9E1077A3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 19:51:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zNIzPiA0oUzXVx55ja2+SflObHlRaQLZEisF28KUD0Q=; b=XiRUcsRq28yIrc
	Cem5AmNUunRAdD7VCIzRs58tXFZ3YlghLN6t+h5f1eNV3kirZKuU+3eCrxH3sC2jC1rzhha+3N0A1
	IdSIWEsRg49sJzRu68YLJ3CmJK/bp11cQbohNKXvCow4ENgyXtRO7olnT4EetPSxbRzRJyuCGcJBj
	IW/8Z5ks4wgxKNgaZNw9qCC5dz5+MdCDR8kI6/ZZeLoytQ2XStujW0KJYGmC0Fk9CQJOvkY3ZJKk/
	lcurlUUNHDp6Vf9IM3a1CoIklUu7k9lpBFuAg555iPIYpapiBTNi14CcMZ5dgUSA1Gie02k/2MfDW
	u0U2WRCFndhEquVJeXuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYE1s-0001og-66; Fri, 22 Nov 2019 18:51:40 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYE1f-0001oL-Nq
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 18:51:29 +0000
Received: by mail-wr1-x442.google.com with SMTP id n1so9823114wra.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 Nov 2019 10:51:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=8mSuVX4hASa55WDbals18vRIEbBf8ApxrHv/SP6wNaA=;
 b=cC79HvL8jGPspw70GaXfCgx5zGcHJv0Et7z5fanCNI3/14zu3BPlP3YMJ4bq3LG3Wj
 F2TZxaHbM6qhMP5k00/s+T5ILRDr+NOWKTvQ1oXV6fehJUY+xpWU1VE+6P+OYCWg/Cwj
 LtUmUhkTW7M5MkObNHiJiOO6A7RXL/zEXLIZAqInnB4NW5QqVOpdyjuAkZt2yRPqA2d6
 4TzLbweH0CHSCqWXK3bRhyXylK9fTZwlmkPYyZcAE1tEjNpftNta6li4h7HHZUL4toOM
 wdlDRrKxSbM+hA4lBDRCbEhBOJVoeutTcjtQlmpv9YlRGonTWofJMx2+TqpzBdVejjNr
 0JjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=8mSuVX4hASa55WDbals18vRIEbBf8ApxrHv/SP6wNaA=;
 b=C5SLEALaewrqkE7LWbli/uIUd3payxyldd9SaQUpItYT7eH/eqmeNRvty396vRZ9fU
 7pGqmXHlvzD0eI9KKuO/y1xDF3MSFWCXP8nH9SSWFYroHcacVJPlBMhewQ9TauH7NpZD
 ny6eAULi90WH4E126NlrC8ASi7YU5jTXWP9o69XS48WZBl8t+g7CVTi3caa8cmTPidT2
 rb4SEq3FNJ46GJ+265zdSqfKhLNXXwGHOFbmpj2uNRGFS0xfSg6nixhK7871PsO+8vBb
 dUoVf5pqQEnUdKUuhlKrdOvP5K6UGohBT4qOH6I8D9G1s58/NI4hrmd+dO+yoAFJxd0P
 luCA==
X-Gm-Message-State: APjAAAWXCJW33qlC+Dt1chj6K02rGnGLQCT61kKXhskdKskfs3ntFAyN
 X6VvLzi+fMKjAx2qxD+ZAxGRbfkBin5Ffw==
X-Google-Smtp-Source: APXvYqzgw1GIPrLX9J0X6hXpjn9D7nNyE4EvPF1Gw8LU3auQ7jlVi0bRK0n622UStKWY3BDL+rxt2w==
X-Received: by 2002:a5d:5191:: with SMTP id k17mr18887684wrv.350.1574448685796; 
 Fri, 22 Nov 2019 10:51:25 -0800 (PST)
Received: from [10.0.0.120] (host-87-242-235-70.ppp.onetel.net.uk.
 [87.242.235.70])
 by smtp.gmail.com with ESMTPSA id g184sm4829517wma.8.2019.11.22.10.51.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 22 Nov 2019 10:51:25 -0800 (PST)
Subject: Re: [PATCH v2 14/14] lkdtm: arm64: test kernel pointer authentication
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>
References: <1574166746-27197-1-git-send-email-amit.kachhap@arm.com>
 <1574166746-27197-15-git-send-email-amit.kachhap@arm.com>
 <CAKv+Gu9wYhbtWDpXPBox-Yr-RD2P9dF8O+PRub0ECh=My_OfOg@mail.gmail.com>
From: Richard Henderson <richard.henderson@linaro.org>
Openpgp: preference=signencrypt
Message-ID: <6a30eb05-9100-b92a-62d3-43e5c950de19@linaro.org>
Date: Fri, 22 Nov 2019 18:51:22 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAKv+Gu9wYhbtWDpXPBox-Yr-RD2P9dF8O+PRub0ECh=My_OfOg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_105127_989197_BEEDFA57 
X-CRM114-Status: GOOD (  18.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 James Morse <james.morse@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/21/19 5:39 PM, Ard Biesheuvel wrote:
> On Tue, 19 Nov 2019 at 13:33, Amit Daniel Kachhap <amit.kachhap@arm.com> wrote:
>>
>> This test is specific for arm64. When in-kernel Pointer Authentication
>> config is enabled, the return address stored in the stack is signed. This
>> feature helps in ROP kind of attack. If the matching signature is corrupted
>> then this will fail in authentication and lead to abort.
>>
>> e.g.
>> echo CORRUPT_PAC > /sys/kernel/debug/provoke-crash/DIRECT
>>
>> [   13.118166] lkdtm: Performing direct entry CORRUPT_PAC
>> [   13.118298] lkdtm: Clearing PAC from the return address
>> [   13.118466] Unable to handle kernel paging request at virtual address bfff8000108648ec
>> [   13.118626] Mem abort info:
>> [   13.118666]   ESR = 0x86000004
>> [   13.118866]   EC = 0x21: IABT (current EL), IL = 32 bits
>> [   13.118966]   SET = 0, FnV = 0
>> [   13.119117]   EA = 0, S1PTW = 0
>>
>> Cc: Kees Cook <keescook@chromium.org>
>> Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
>> ---
>> Change since last version:
>>  * New patch
>>
>>  drivers/misc/lkdtm/bugs.c  | 17 +++++++++++++++++
>>  drivers/misc/lkdtm/core.c  |  1 +
>>  drivers/misc/lkdtm/lkdtm.h |  1 +
>>  3 files changed, 19 insertions(+)
>>
>> diff --git a/drivers/misc/lkdtm/bugs.c b/drivers/misc/lkdtm/bugs.c
>> index 7284a22..c9bb493 100644
>> --- a/drivers/misc/lkdtm/bugs.c
>> +++ b/drivers/misc/lkdtm/bugs.c
>> @@ -337,3 +337,20 @@ void lkdtm_UNSET_SMEP(void)
>>         pr_err("FAIL: this test is x86_64-only\n");
>>  #endif
>>  }
>> +
>> +void lkdtm_CORRUPT_PAC(void)
>> +{
>> +#if IS_ENABLED(CONFIG_ARM64_PTR_AUTH)
>> +       u64 ret;
>> +
>> +       pr_info("Clearing PAC from the return address\n");
>> +       /*
>> +        * __builtin_return_address masks the PAC bits of return
>> +        * address, so set the same again.
>> +        */
>> +       ret = (u64)__builtin_return_address(0);
>> +       asm volatile("str %0, [sp, 8]" : : "r" (ret) : "memory");
> 
> This looks a bit fragile to me. You are making assumptions about the
> location of the return address in the stack frame which are not
> guaranteed to hold.

Indeed.

> Couldn't you do this test simply by changing the key?

That, at least, means you don't have to know the stack frame layout.  However,
there's a chance (1/32767, I think, for the 48-bit vma case w/o TBI) that
changing the key will result in the same hash.

Even when the stack frame happens to be layed out as Amit guesses, the result
is akin to changing the key, such that hash(key, salt, ptr) == 0.

While testing this in qemu, I iterate until I find a <key, salt, ptr> tuple
that definitely produces a different hash.  Usually this loop iterates just
once, but the occasional failures that I got without iterating were annoying
(with TBI enabled in userspace, the chance drops to 1/127, so much more frequent).


r~

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
