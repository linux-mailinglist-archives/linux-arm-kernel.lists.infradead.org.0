Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1E1F1E4D1A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 20:29:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KxumxuT68cHvDKOa/mbA/gEjpg83HIhsFxy4SZ0N1Rs=; b=CSfBTkf/XcGkJIygYJAXRuYfS
	myUkLyTnRlBvklr6JnUKtRouGN11u/hgkw0tGJtOjEkKgppQnV3eLjvDFEuIwCCQG48aBvGV/U1Cs
	XU9R2jmwzMptaRNJSjXp+OUQOHzRwvZu3SA6ujtOsPoIoenWWHq8F+RcEjjmqpvUyeEe96dpZLm4y
	v3WOHFDbn4pLNM3lQn/NwMgLAWpir7N8pDt9g5LdgTBqbY4i+daJxRz3I5ITkm6+C48uH6AQw6kAb
	VeoG7fZ6ETzJH6gaQJZP7evzSkFpZBtW8FUNB/4QKzV+ba0/kugXoIpw/3NZwQ+gv0ggXYE2oJTVB
	DxK44afBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je0nW-0003uq-Pd; Wed, 27 May 2020 18:29:02 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je0nN-0003tv-JG
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 18:28:55 +0000
Received: by mail-pf1-x443.google.com with SMTP id g5so726487pfm.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 11:28:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=iA+KkSp+x1pCOvFG2laI62cGHgeFrOqb4fOzsNTxNXU=;
 b=s5sgK5hVj6s8lKi3Rri8hD77o4Tgsh/f//XKeSLPPL6IoaX/9mCJYEHRJ32vVuTTGB
 dFOJ6DX54r/GDHqGsERVaSkKn7VZP6w7vmoq01S+s7Vgp4NCjhtVzBjBz/ibFnvGcWta
 mSfHvumiHewYuXpM4XZwLfp01LJYUKENxLfVUkXnOtA0BezWqdmG+dG9FruFxrFvx+z0
 OLSDlugaSodJcE0avHyTiDxelPvs1YxJU3Ddg4TK5lzP7IpA32ZcQqmyQOKAlpQDiDDP
 fF30dP0+KbJyDOf08di6glcZut8WphRJqfLPENPijbkDbzZ6pcV6gQGYyCj6OH9Rd9v6
 fRqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=iA+KkSp+x1pCOvFG2laI62cGHgeFrOqb4fOzsNTxNXU=;
 b=YoLr0iCtPRG40eE1lsi74Dc/IPbRPSBNzJqSMAP0xnMXZKAwjZFGVXRLhI2YTVYCof
 TSbGS8BYDiEZvUKaSf8tdMec86H+TkbvZzeRHVsjErrGD+0HZ88VKEZ1izUEinH7Pmzd
 CaCBlwQB5A/swToqQD6zrr0WFzvTtVsa/lRFDtpPZV7v2zWeCHZEWe++DX6BgZXLz4BX
 aO6w/00aE8kACWutPEe+5GnKt7pU2Kp0ZHw+qdwUczKM6LYw/vjRFQwRQaVjUluxItgH
 jy1MELPcNlv/ef2u8sii8WK/nSlwV0OmWWcnLzSQed1DayTatzSYbgN8/MqpuLCxBTHu
 8GUw==
X-Gm-Message-State: AOAM53116gwEUpRR8kVxHFVaFTiOIFljiJxZc0b+qP5SHbMKs/odCYz0
 exJu9rLoQE7xMVGKwV9G2apw1Q==
X-Google-Smtp-Source: ABdhPJy79EBrfQSWmv0ROoxKkjCOvcXwdJtlDQLwN27cdTeaTy6nksFR7zHfbpPjZAN2LXNgjfyAZw==
X-Received: by 2002:a63:e008:: with SMTP id e8mr5139090pgh.451.1590604128900; 
 Wed, 27 May 2020 11:28:48 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
 by smtp.gmail.com with ESMTPSA id z8sm2517225pgc.80.2020.05.27.11.28.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 11:28:48 -0700 (PDT)
Date: Wed, 27 May 2020 11:28:43 -0700
From: Fangrui Song <maskray@google.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH] arm64: fix clang integrated assembler build
Message-ID: <20200527182843.g6tbow4lqsvwl2ah@google.com>
References: <20200527141435.1716510-1-arnd@arndb.de>
 <CAKwvOdnNxj-MdKj3aWoefF2W9PPG-TSeNU4Ym-N8NODJB5Yw_w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKwvOdnNxj-MdKj3aWoefF2W9PPG-TSeNU4Ym-N8NODJB5Yw_w@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_112853_657839_08FEEC27 
X-CRM114-Status: GOOD (  21.39  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Arnd Bergmann <arnd@arndb.de>, Will Deacon <will@kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Catalin Marinas <catalin.marinas@arm.com>, LKML <linux-kernel@vger.kernel.org>,
 "# 3.4.x" <stable@vger.kernel.org>, Jian Cai <jiancai@google.com>,
 Alexios Zavras <alexios.zavras@intel.com>, Bill Wendling <morbo@google.com>,
 Enrico Weigelt <info@metux.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 2020-05-27, 'Nick Desaulniers' via Clang Built Linux wrote:
>On Wed, May 27, 2020 at 7:14 AM Arnd Bergmann <arnd@arndb.de> wrote:
>>
>> clang and gas seem to interpret the symbols in memmove.S and
>> memset.S differently, such that clang does not make them
>> 'weak' as expected, which leads to a linker error, with both
>> ld.bfd and ld.lld:
>>
>> ld.lld: error: duplicate symbol: memmove
>> >>> defined at common.c
>> >>>            kasan/common.o:(memmove) in archive mm/built-in.a
>> >>> defined at memmove.o:(__memmove) in archive arch/arm64/lib/lib.a
>>
>> ld.lld: error: duplicate symbol: memset
>> >>> defined at common.c
>> >>>            kasan/common.o:(memset) in archive mm/built-in.a
>> >>> defined at memset.o:(__memset) in archive arch/arm64/lib/lib.a
>>
>> Copy the exact way these are written in memcpy_64.S, which does
>> not have the same problem.
>>
>> I don't know why this makes a difference, and it would be good
>> to have someone with a better understanding of assembler internals
>> review it.
>>
>> It might be either a bug in the kernel or a bug in the assembler,
>> no idea which one. My patch makes it work with all versions of
>> clang and gcc, which is probably helpful even if it's a workaround
>> for a clang bug.
>
>+ Bill, Fangrui, Jian
>I think we saw this bug or a very similar bug internally around the
>ordering of .weak to .global.

This may be another instance of
https://sourceware.org/pipermail/binutils/2020-March/000299.html
https://lore.kernel.org/linuxppc-dev/20200325164257.170229-1-maskray@google.com/

I haven't checked but there may be both a .globl directive and a .weak
directive

>> Cc: stable@vger.kernel.org
>> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
>> ---
>> ---
>>  arch/arm64/lib/memcpy.S  | 3 +--
>>  arch/arm64/lib/memmove.S | 3 +--
>>  arch/arm64/lib/memset.S  | 3 +--
>>  3 files changed, 3 insertions(+), 6 deletions(-)
>>
>> diff --git a/arch/arm64/lib/memcpy.S b/arch/arm64/lib/memcpy.S
>> index e0bf83d556f2..dc8d2a216a6e 100644
>> --- a/arch/arm64/lib/memcpy.S
>> +++ b/arch/arm64/lib/memcpy.S
>> @@ -56,9 +56,8 @@
>>         stp \reg1, \reg2, [\ptr], \val
>>         .endm
>>
>> -       .weak memcpy
>>  SYM_FUNC_START_ALIAS(__memcpy)
>> -SYM_FUNC_START_PI(memcpy)
>> +SYM_FUNC_START_WEAK_PI(memcpy)
>>  #include "copy_template.S"
>>         ret
>>  SYM_FUNC_END_PI(memcpy)
>> diff --git a/arch/arm64/lib/memmove.S b/arch/arm64/lib/memmove.S
>> index 02cda2e33bde..1035dce4bdaf 100644
>> --- a/arch/arm64/lib/memmove.S
>> +++ b/arch/arm64/lib/memmove.S
>> @@ -45,9 +45,8 @@ C_h   .req    x12
>>  D_l    .req    x13
>>  D_h    .req    x14
>>
>> -       .weak memmove
>>  SYM_FUNC_START_ALIAS(__memmove)
>> -SYM_FUNC_START_PI(memmove)
>> +SYM_FUNC_START_WEAK_PI(memmove)
>>         cmp     dstin, src
>>         b.lo    __memcpy
>>         add     tmp1, src, count
>> diff --git a/arch/arm64/lib/memset.S b/arch/arm64/lib/memset.S
>> index 77c3c7ba0084..a9c1c9a01ea9 100644
>> --- a/arch/arm64/lib/memset.S
>> +++ b/arch/arm64/lib/memset.S
>> @@ -42,9 +42,8 @@ dst           .req    x8
>>  tmp3w          .req    w9
>>  tmp3           .req    x9
>>
>> -       .weak memset
>>  SYM_FUNC_START_ALIAS(__memset)
>> -SYM_FUNC_START_PI(memset)
>> +SYM_FUNC_START_WEAK_PI(memset)
>>         mov     dst, dstin      /* Preserve return value.  */
>>         and     A_lw, val, #255
>>         orr     A_lw, A_lw, A_lw, lsl #8
>> --
>> 2.26.2
>
>-- 
>Thanks,
>~Nick Desaulniers
>
>-- 
>You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
>To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
>To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnNxj-MdKj3aWoefF2W9PPG-TSeNU4Ym-N8NODJB5Yw_w%40mail.gmail.com.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
