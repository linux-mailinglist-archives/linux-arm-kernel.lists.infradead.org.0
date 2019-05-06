Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ADD414491
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 08:48:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3YYja4gOoBLKCFo3o2kMx81xGrcOpuokKoFhqt2srJQ=; b=bAAvYNoo0HBCBK
	DPspA1ruTqMFC/GWz6v0w4kxsP1mU38Uc0K7+t7z5sStI7GxwcqRSvrmi5N1T9c0F+w3YVtzhXmBE
	nOXa2P/fC19Xk3y4AQiWV/7hiEGRn0mHgrXabRhcV6m1fdiUutC4hAFI3CR/6nzT7T5e+n3OOjmr4
	x+y395b+BJ7Ox9Xt0n2lINdugepjnhhUZQb1vNMnbeQBIHB84NpdB9eHqFYxt1DKfqfsadhTsMe8S
	k1nLFznSYLNL1jqfdbZoXRMfRpFT6IoXAGLxPHQ9tjQBQjYacDGfXGanz4uW0XY/T3Wz/+IsItq4+
	xR6kXDfpkXqPzMMJrYog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNXQI-0002wk-2S; Mon, 06 May 2019 06:48:26 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNXQB-0002w7-Kk
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 06:48:21 +0000
Received: by mail-lj1-x244.google.com with SMTP id q10so10070722ljc.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 05 May 2019 23:48:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=C2U/Y3HrsZsGwgSrYLbL41jSdN4fVhl+NLwRQdY4iqY=;
 b=D8snUQHAfdzQm9GkWQI34dkVAxrAJuZkmWsqO5irUHT1hWyV2hkSyYSsSclecD9gti
 eZwTtFWJLX5djPnJJpwa1CrKEH1nOO0tvUGWucaebAmsJGSDQJQdRdXKpwRfY3sKAUYf
 4wqO50fRoeyvl+KoXsP2lu7dYVZcoUzjU59UA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=C2U/Y3HrsZsGwgSrYLbL41jSdN4fVhl+NLwRQdY4iqY=;
 b=buyJFgGXImcgmT0EmxAL4qX+u3ZOdaLifaQ1FvI9H1daJbXFatH+lk3bGzY+jfUx4K
 1SEQ3hMnbIE8BdzOZmWrEbzyRg3kfbg7pB875k1GbeIm3QMx8+t9A8dIL/bhK3sEds/T
 ZpSwzB5kihcz9CI+cQXvG++o5HMrs5IsXtjdBINKHyPdNet6LJuNXTXqVO1y9jOB8hgk
 UVQfTpyIFBQFNWghg9t1ke/tuh/oTcvFj0qrR2J/QsCHlOt6PglE02QSpc/oWedFZJFR
 TwQxTD3Pq6CR5NPtoOnhQ7BpA/lSqLnJY+4+rIh/bU9k+AroOfesufJyC6nAdF8JJS77
 8z0w==
X-Gm-Message-State: APjAAAX8BnpbAPRhxiutYrxll8/pyWZPPuFth7Vohj2uh7uP7DdHKYOj
 RVfkIFSAYDcwIHOJBiWSNa7pEw==
X-Google-Smtp-Source: APXvYqzZ60bhW+zmKxgQWKFu3bPVmpIDGkgZaXEtzr6qDGU0QdrT3fUUEmHHE44uPUNcpPCQcav0rQ==
X-Received: by 2002:a2e:7503:: with SMTP id q3mr587089ljc.190.1557125297062;
 Sun, 05 May 2019 23:48:17 -0700 (PDT)
Received: from [172.16.11.26] ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id j13sm2142583lfb.34.2019.05.05.23.48.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 05 May 2019 23:48:16 -0700 (PDT)
Subject: Re: [PATCH 00/10] implement DYNAMIC_DEBUG_RELATIVE_POINTERS
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Andrew Morton <akpm@linux-foundation.org>
References: <20190409212517.7321-1-linux@rasmusvillemoes.dk>
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Message-ID: <1afb0702-3cc5-ba4f-2bdd-604d9da2b846@rasmusvillemoes.dk>
Date: Mon, 6 May 2019 08:48:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190409212517.7321-1-linux@rasmusvillemoes.dk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_234819_827762_31D99130 
X-CRM114-Status: GOOD (  13.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Nick Desaulniers <ndesaulniers@google.com>, Arnd Bergmann <arnd@arndb.de>,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Jason Baron <jbaron@akamai.com>, Ingo Molnar <mingo@redhat.com>,
 Nathan Chancellor <natechancellor@gmail.com>, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09/04/2019 23.25, Rasmus Villemoes wrote:

> While refreshing these patches, which were orignally just targeted at
> x86-64, it occured to me that despite the implementation relying on
> inline asm, there's nothing x86 specific about it, and indeed it seems
> to work out-of-the-box for ppc64 and arm64 as well, but those have
> only been compile-tested.

So, apart from the Clang build failures for non-x86, I now also got a
report that gcc 4.8 miscompiles this stuff in some cases [1], even for
x86 - gcc 4.9 does not seem to have the problem. So, given that the 5.2
merge window just opened, I suppose this is the point where I should
pull the plug on this experiment :(

Rasmus

[1] Specifically, the problem manifested in net/ipv4/tcp_input.c: Both
uses of the static inline inet_csk_clear_xmit_timer() pass a
compile-time constant 'what', so the ifs get folded away and both uses
are completely inlined. Yet, gcc still decides to emit a copy of the
final 'else' branch of inet_csk_clear_xmit_timer() as its own
inet_csk_reset_xmit_timer.part.55 function, which is of course unused.
And despite the asm() that defines the ddebug descriptor being an "asm
volatile", gcc thinks it's fine to elide that (the code path is
unreachable, after all....), so the entire asm for that function is

        .section        .text.unlikely
        .type   inet_csk_reset_xmit_timer.part.55, @function
inet_csk_reset_xmit_timer.part.55:
        movq    $.LC1, %rsi     #,
        movq    $__UNIQUE_ID_ddebug160, %rdi    #,
        xorl    %eax, %eax      #
        jmp     __dynamic_pr_debug      #
        .size   inet_csk_reset_xmit_timer.part.55,
.-inet_csk_reset_xmit_timer.part.55

which of course fails to link since the symbol __UNIQUE_ID_ddebug160 is
nowhere defined.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
