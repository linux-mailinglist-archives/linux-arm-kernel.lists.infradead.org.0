Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3982144FA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 09:06:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u0BRvm1jQaIf9z9zypFMr1m97imvLuYUZoDUQVypQNw=; b=B38hrjiY/4gr3w
	xDAHn6OPb/HYkC82jwdI4uAlQiGVP1AXMAnVQcn9FGKGjkPAnTEsILfqecnoTxTqtxNwQFrVmeany
	SDPFcfuLSk6t2h6kb5lKiskQp7cSerU/upHqdX0U670be5oVR6IY8iDrRifzWG7/7+MCWrxhhVCR7
	SeQ6L05+LocEN6pBAXccKTGRt+toG9/qwC0gXcL5DVGcJeg09FkU0nUdKT1GpuOWMiTACwO+1Dc+I
	IYbLtgw9DrUmBzZ8bn6cEa5VdCwd5QUNrU/73JG3qjqSkYKDN8OiSEPuCHUkphVlTN4oLYo9LttiO
	MpXrx+w9Kvi8xJ40Pmkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNXhj-0001bH-Cg; Mon, 06 May 2019 07:06:27 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNXh7-0000wi-Fj
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 07:05:52 +0000
Received: by mail-wm1-x344.google.com with SMTP id p21so14326139wmc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 00:05:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=5V6LFql9im1SPXc8YxW9Jo3rXT30savTgK/RedsezR8=;
 b=mhLOADL9bqOSSqke/X5TKBE3LDOfe2nbKYMCQidDFMKBOdyksQDafV2jYPTRt2XxBe
 AdhtK98Z9Qxa7k22gSsr4uMp++J7DJbPsAhdgfb4d5rFBZ8JOqqMs1k4kRy78OluZ8NI
 pqQYYSOwsVMYq21D3e54iLqFIjWOrUzSsrICzv8PwvE7myCD7zrEUJp1hdO/BX13E0Nn
 wk/uUxhcjd9TslYzN8t1cQtvFP+7Et0dSRmpFlNiShDBF0XQ6b1XvX5nTSblzJmmF7rO
 c8AhnCXdKulvKkejpAhstMRJse9EKwnjepdomaYnKBuF4DTKvVcp9RCoyhnLMlTUZvdm
 QhgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=5V6LFql9im1SPXc8YxW9Jo3rXT30savTgK/RedsezR8=;
 b=SbPNIY8cuWXOYqaJdYuqPAlMPym5+YdMTzmE5RjENjeZQPkUWMJx3WdfihDhSyIt3d
 0mU3/tseW52HJCq9JGgyUIlDcrcyHz7GwTo+YHgCkuWZUYF0z3zA2yvqhoLaMnaQQ3IY
 xEosRYBDCFweQH7tmaT3Nisj0+YW0GroMpnNB3RxxeuZXoaZYWpJKkSfpy83JfqkRID0
 G20Jh68AzjvhvG350iF4Nd2jQmUaQfThpriPp40rBsGhXM/kySb85lnjbZ7GXpA1b8Kk
 dTPB+gxpnFquIBRM++iFdIrwJ2h0OWaXQpu+tjJ5J/sZg7NPb7og8DTpYS3d2kcY0vNO
 p+JA==
X-Gm-Message-State: APjAAAX9N8rZaUOUkOkwjDhEflflmh74FAJQ0P5Acc4LwbLS1IgIVPFW
 x5PjdMpCUICjuGgGnGxlhD8=
X-Google-Smtp-Source: APXvYqy4zpd3s31UHNJkzYltTQzBio1Fvf2VRSVUdP+5SE+cZ9IqATPxo97xjNReMAPbQjW779nz8w==
X-Received: by 2002:a7b:ce10:: with SMTP id m16mr9133691wmc.36.1557126347523; 
 Mon, 06 May 2019 00:05:47 -0700 (PDT)
Received: from gmail.com (2E8B0CD5.catv.pool.telekom.hu. [46.139.12.213])
 by smtp.gmail.com with ESMTPSA id d3sm18551842wmf.46.2019.05.06.00.05.45
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 06 May 2019 00:05:46 -0700 (PDT)
Date: Mon, 6 May 2019 09:05:44 +0200
From: Ingo Molnar <mingo@kernel.org>
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Subject: Re: [PATCH 00/10] implement DYNAMIC_DEBUG_RELATIVE_POINTERS
Message-ID: <20190506070544.GA66463@gmail.com>
References: <20190409212517.7321-1-linux@rasmusvillemoes.dk>
 <1afb0702-3cc5-ba4f-2bdd-604d9da2b846@rasmusvillemoes.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1afb0702-3cc5-ba4f-2bdd-604d9da2b846@rasmusvillemoes.dk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_000549_767011_009A30E3 
X-CRM114-Status: GOOD (  16.78  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mingo.kernel.org[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 Linus Torvalds <torvalds@linux-foundation.org>,
 Jason Baron <jbaron@akamai.com>, Ingo Molnar <mingo@redhat.com>,
 Andy Lutomirski <luto@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org, Nathan Chancellor <natechancellor@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


* Rasmus Villemoes <linux@rasmusvillemoes.dk> wrote:

> On 09/04/2019 23.25, Rasmus Villemoes wrote:
> 
> > While refreshing these patches, which were orignally just targeted at
> > x86-64, it occured to me that despite the implementation relying on
> > inline asm, there's nothing x86 specific about it, and indeed it seems
> > to work out-of-the-box for ppc64 and arm64 as well, but those have
> > only been compile-tested.
> 
> So, apart from the Clang build failures for non-x86, I now also got a
> report that gcc 4.8 miscompiles this stuff in some cases [1], even for
> x86 - gcc 4.9 does not seem to have the problem. So, given that the 5.2
> merge window just opened, I suppose this is the point where I should
> pull the plug on this experiment :(
> 
> Rasmus
> 
> [1] Specifically, the problem manifested in net/ipv4/tcp_input.c: Both
> uses of the static inline inet_csk_clear_xmit_timer() pass a
> compile-time constant 'what', so the ifs get folded away and both uses
> are completely inlined. Yet, gcc still decides to emit a copy of the
> final 'else' branch of inet_csk_clear_xmit_timer() as its own
> inet_csk_reset_xmit_timer.part.55 function, which is of course unused.
> And despite the asm() that defines the ddebug descriptor being an "asm
> volatile", gcc thinks it's fine to elide that (the code path is
> unreachable, after all....), so the entire asm for that function is
> 
>         .section        .text.unlikely
>         .type   inet_csk_reset_xmit_timer.part.55, @function
> inet_csk_reset_xmit_timer.part.55:
>         movq    $.LC1, %rsi     #,
>         movq    $__UNIQUE_ID_ddebug160, %rdi    #,
>         xorl    %eax, %eax      #
>         jmp     __dynamic_pr_debug      #
>         .size   inet_csk_reset_xmit_timer.part.55,
> .-inet_csk_reset_xmit_timer.part.55
> 
> which of course fails to link since the symbol __UNIQUE_ID_ddebug160 is
> nowhere defined.

It's sad to see such nice data footprint savings go the way of the dodo 
just because GCC 4.8 is buggy.

The current compatibility cut-off is GCC 4.6:

  GNU C                  4.6              gcc --version

Do we know where the GCC bug was fixed, was it in GCC 4.9?

According to the GCC release dates:

  https://www.gnu.org/software/gcc/releases.html

4.8.0 was released in early-2013, while 4.9.0 was released in early-2014. 
So the tooling compatibility window for latest upstream would narrow from 
~6 years to ~5 years.

Thanks,

	Ingo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
