Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 063A61A8392
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 17:43:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bOT5naWvsHWVybm20E2rNlBAVnDTGEFS1TmjwQ7HTcU=; b=nhJ6uKJKPnWjJvY+cICmLKb1i
	S0B1pWPpu3s4ymJhd7VT/JqmMlxdPEgfTsKUjek11jIxZjifkHOtiCUg+gSoEvLJnyNjJ+FbOgwg/
	dAMXxe63hLlVHDevy8L+7Lqg0TbSVna3pUA60m7ErEfh0kW/OzQ9HpZtQ35HLzpvVi3NmEXJk0JfG
	eFypyoN0nK3viG0VQYKxZl+tDlb9V0+noT3p4PZrId2j3NsdSmOVkrPiyD4bUjeGOpr7Dydufeq+k
	Slsfkk4VGCGG3rxzBcSoZFaYcgTsP4WPC3QczTzOI6hYHa6QDJhe7PDNXqnwaiRR7Y8ghxhq1GGt4
	SIO5NRFHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jONie-0000iG-Hk; Tue, 14 Apr 2020 15:43:24 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jONiT-0000hq-NA
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 15:43:15 +0000
Received: by mail-pf1-x443.google.com with SMTP id k15so82901pfh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 08:43:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=HrHc89msdXgi2Y4Q0qH1yTEHGNBhvf5/H8327yK+Ls4=;
 b=YedDG0ZFTRyqyAnKIG8z1JZFuDUEx5ng/hd+NQImZj6HKH3GWoHZv0p4lx3TpGALhZ
 0qQoPEflzIgF6SfYYPStjVZve457G0ZBKn0C4+GyrXP90wjqyuOaWcwOYMJLTN1Kf9IH
 fCwuZd0xvBU0B+dv3VE61SLogfaxzz8/hPw5W/tgGRa6JD5RX1Q1P0nAiUwvIGyIJ+rP
 1v+4mMz2/8PCz8/50zqXGyDQ2VcxWbkl8DmfpVhbio84eoaC9hcIMloYnWqZQjy+IcAz
 xL1P9teLDVAzbR346QhSdbQML5K+vB+crLmnYqhiM2kFg9BTV4/BHo8ERW3n1xxobog0
 pp+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=HrHc89msdXgi2Y4Q0qH1yTEHGNBhvf5/H8327yK+Ls4=;
 b=Z3e8k2hvVuhKYLYjBqY3t817J5zowrpJlwaX7xdhpormIOT2hD8GRBTO+QbZbkczZ+
 kuJ2O5Emax2Rt/W3c9ZC6eiz+uk/6ZIVi/IOxW6GtV3dwPmRLoYfnaoiqPiQbcJvzyzy
 2kVQDVCqgx3WXon+sAocRpOu7oyKK2MzmKaOWEi076x/Had+TA6UjhkuxFBBaVncvmVt
 ISv8nCenRrBap6n0E5ZExpi4AGmmbrAQ8J2t+aD1v8npQ+V38HvzZMn/cASQ1Sz7qeu2
 MXO/zoKsJKHi5+CupzAWFnMqxw9ywr/sfBu0/LiWArqRFK55PKKFmsW5ByRBcr2ltYhA
 pM7w==
X-Gm-Message-State: AGi0PuYlGm+xTjDVIGXGsE1tYLrb/qB6pT4IjKcZZ4Ij32Dtc1Cjsd+s
 8yo/j/tbsAkb7CnChDvxNUxffA==
X-Google-Smtp-Source: APiQypLrT1386zPYBPL87WSGpCvwjpvwKbln64uclI2ODgTX44mVS85T8KsJwkSSsXo6kzAPWf/95g==
X-Received: by 2002:a63:1e0a:: with SMTP id e10mr23094381pge.417.1586878990825; 
 Tue, 14 Apr 2020 08:43:10 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
 by smtp.gmail.com with ESMTPSA id s9sm11766283pjr.5.2020.04.14.08.43.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 08:43:10 -0700 (PDT)
Date: Tue, 14 Apr 2020 08:43:07 -0700
From: Fangrui Song <maskray@google.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH] arm64: Delete the space separator in __emit_inst
Message-ID: <20200414154307.2cke3x5ocz3q2as4@google.com>
References: <20200413033811.75074-1-maskray@google.com>
 <20200414095904.GB1278@C02TD0UTHF1T.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200414095904.GB1278@C02TD0UTHF1T.local>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_084313_776207_0EE51044 
X-CRM114-Status: GOOD (  16.88  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 clang-built-linux@googlegroups.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 2020-04-14, Mark Rutland wrote:
>Hi Fangrui,
>
>On Sun, Apr 12, 2020 at 08:38:11PM -0700, Fangrui Song wrote:
>> Many instances of __emit_inst(x) expand to a directive. In a few places
>> it is used as a macro argument, e.g.
>>
>>   arch/arm64/include/asm/sysreg.h
>>   #define __emit_inst(x)                       .inst (x)
>>
>>   arch/arm64/include/asm/sysreg.h
>>   #define SET_PSTATE_PAN(x)            __emit_inst(0xd500401f | PSTATE_PAN | ((!!x) << PSTATE_Imm_shift))
>>
>>   arch/arm64/kvm/hyp/entry.S
>>   ALTERNATIVE(nop, SET_PSTATE_PAN(1), ARM64_HAS_PAN, CONFIG_ARM64_PAN)
>>
>> Clang integrated assembler parses `.inst (x)` as two arguments passing
>> to a macro. We delete the space separator so that `.inst(x)` will be
>> parsed as one argument.
>
>I'm a little confused by the above; sorry if the below sounds stupid or
>pedantic, but I just want to make sure I've understood the problem
>correctly.
>
>For the above, ALTERNATIVE() and SET_PSTATE_PAN() are both preprocessor
>macros, so I would expect those to be expanded before either the
>integrated assembler or an external assembler consumes any of the
>assembly (and both would see the same expanded text). Given that, I'm a
>bit confused as to why the integrated assembly would have an impact on
>preprocessing.
>
>Does compiling the pre-processed source using the integrated assembler
>result in the same behaviour? Can we see the expanded text to make that
>clear?
>
>... at what stage exactly does this go wrong?
>
>Thanks,
>Mark.

Hi Mark,

The C preprocessor expands arch/arm64/kvm/hyp/entry.S
    ALTERNATIVE(nop, SET_PSTATE_PAN(1), ARM64_HAS_PAN, CONFIG_ARM64_PAN)

to:
    alternative_insn nop, .inst (0xd500401f | ((0) << 16 | (4) << 5) | ((!!1) << 8)), 4, 1

`alternative_insn` is an assembler macro, not handled by the C preprocessor.

Both comma and space are separators, with an exception that content
inside a pair of parentheses/quotes is not split, so clang -cc1as or GNU
as x86 splits arguments this way:

    nop, .inst, (0xd500401f | ((0) << 16 | (4) << 5) | ((!!1) << 8)), 4, 1

I actually feel that GNU as arm64's behavior is a little bit buggy. It
works just because GNU as has another preprocessing step `do_scrub_chars`
and its arm64 backend deletes the space before '('

    alternative_insn nop,.inst(0xd500401f|((0)<<16|(4)<<5)|((!!1)<<8)),4,1

The x86 backend keeps the space before the outmost '('

   alternative_insn nop,.inst (0xd500401f|((0)<<16|(4)<<5)|((!!1)<<8)),4,1

By reading its state machine, I think keeping the spaces will be the
most reasonable behavior.

If .inst were only used as arguments,

    alternative_insn nop, ".inst (0xd500401f | ((0) << 16 | (4) << 5) | ((!!1) << 8))", 4, 1

would be the best to avoid parsing issues.

>>
>> Note, GNU as parsing `.inst (x)` as one argument is unintentional (for
>> example the x86 backend will parse the construct as two arguments).
>> See https://sourceware.org/bugzilla/show_bug.cgi?id=25750#c10
>>
>> Link: https://github.com/ClangBuiltLinux/linux/issues/939
>> Cc: clang-built-linux@googlegroups.com
>> Signed-off-by: Fangrui Song <maskray@google.com>
>> ---
>>  arch/arm64/include/asm/sysreg.h | 4 +++-
>>  1 file changed, 3 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
>> index ebc622432831..af21e2ec5e3e 100644
>> --- a/arch/arm64/include/asm/sysreg.h
>> +++ b/arch/arm64/include/asm/sysreg.h
>> @@ -49,7 +49,9 @@
>>  #ifndef CONFIG_BROKEN_GAS_INST
>>
>>  #ifdef __ASSEMBLY__
>> -#define __emit_inst(x)			.inst (x)
>> +// The space separator is omitted so that __emit_inst(x) can be parsed as
>> +// either a directive or a macro argument.
>> +#define __emit_inst(x)			.inst(x)
>>  #else
>>  #define __emit_inst(x)			".inst " __stringify((x)) "\n\t"
>>  #endif
>> --
>> 2.26.0.110.g2183baf09c-goog
>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
