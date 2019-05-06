Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C90D414591
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 09:48:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SLjlUiZThN7rHHYhyR2q6QTmH6AY40JVlIQ2Kya1EmE=; b=cj6SsUOpIAEhtA
	rkwMfAQcpPrf9Vj8YltFH/l3n/uzfYDz/iehaJ0y9IKVr04oA35pJoKLU6NFg4D5EK7VExgFaMuio
	E6e0SM6lQBDHYYppr2HIb66V4VsjMSNTDD8j0kBa/dWZQeKPwh0duvK8jOQtoGGjTnE/Xc/1UuoEE
	Kmblw5dT/rQjWZpysSNz6IEyXlp4CZUspVh9zQSY+AZMRdQQMuuo9EffEyf91bPXUyJpBZM1gSniS
	Kn9EGgxbsLHr9KQtjn7YOGVn6PKQBH0/n9rqZ0IgrDyBorJp8NcA9zwzHaftBDlEQXFBGVnWh9Pgo
	CnuIIC59lIfCEQaGJ1Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNYMW-0007se-16; Mon, 06 May 2019 07:48:36 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNYMP-0007sH-DY
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 07:48:30 +0000
Received: by mail-wm1-x343.google.com with SMTP id o189so3522850wmb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 00:48:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=lOMmC2TdPGvudZ5zd3K88q7Hkn2nNBdEod9TPs+T1As=;
 b=Slaf58rRFMPspfJPXpmTfLlvwHidotLOMxhyQjova1O4DpsmA/t1EGlinnwrWNjZEa
 WGXX51gARplly5SfcaxFi1xynREwymrx2nkYqsnw8tXplC1Jed+eZEL89EAMgspKPkx4
 VMPvROYT21z9Gfa2hf4YEkbEZMzU64Pnrvx0w/E2NvCgLPuXS/Ce2M5vuYhuVd2j+r4u
 wKFhmjQwd8VN5pi1cR7+4kAfj/k4clFbyCNw4CyQnrW+2UniB1kSivgEVBjU7pyF37Mw
 fisW2RubkyT9oK8pxfLjs06SlLs2nGZsRfxwfbOxUCSoy1gKnwLXV46GP1FupbieOKBi
 gikA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=lOMmC2TdPGvudZ5zd3K88q7Hkn2nNBdEod9TPs+T1As=;
 b=G4Y7GMe47PiKWE7DL5qu1ZR8k/ICEy4Vu5p3447rkEprU1CqqiXsJ2w6wdCrZe6DPu
 956n66cICDQDss0Ldjjl9qLjE+vjgTRh7nGwJx+PfXGKB24cGvcskv9uW7c7tVdbTaJ3
 1FIm8YLyCyqz7RZ8E/NS3ihhck//luHNEne283aPbDUox46v0s/HXgSPlCI0BGlHqG8X
 Hh6Dkan6Bl/+6+rVS70l0aWxHeCUXS2h/Rn2IQdB7hJcjFeZ3K6y84QkDnpIMX6+CVAT
 sEkvCyzq/40WLF8WI74DzJRLCTvsGSjnFgZ6NL9qSva7yU5u+a0CnLjK4Mp+8SN9jlWC
 cwZQ==
X-Gm-Message-State: APjAAAVxMbPUme7F74SP/BaF7rthmL6WyGxovoqna/mC2XI/VWPuXalC
 3NDngTcpL65daZIw47+IzX8=
X-Google-Smtp-Source: APXvYqyxnM3H0RW7VAjyrnVoeQuJS4dJsfRQz2+6D0KPmo/7z1/mSm31TtogRWgjeRvZ41viotGPaw==
X-Received: by 2002:a1c:4602:: with SMTP id t2mr15129112wma.120.1557128907723; 
 Mon, 06 May 2019 00:48:27 -0700 (PDT)
Received: from gmail.com (2E8B0CD5.catv.pool.telekom.hu. [46.139.12.213])
 by smtp.gmail.com with ESMTPSA id u11sm16796834wrg.35.2019.05.06.00.48.26
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 06 May 2019 00:48:27 -0700 (PDT)
Date: Mon, 6 May 2019 09:48:24 +0200
From: Ingo Molnar <mingo@kernel.org>
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Subject: Re: [PATCH 00/10] implement DYNAMIC_DEBUG_RELATIVE_POINTERS
Message-ID: <20190506074824.GA40476@gmail.com>
References: <20190409212517.7321-1-linux@rasmusvillemoes.dk>
 <1afb0702-3cc5-ba4f-2bdd-604d9da2b846@rasmusvillemoes.dk>
 <20190506070544.GA66463@gmail.com>
 <25dfde77-fdad-0b99-75ec-4ba480058970@rasmusvillemoes.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <25dfde77-fdad-0b99-75ec-4ba480058970@rasmusvillemoes.dk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_004829_452728_CB04BD0F 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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

> I _am_ bending the C rules a bit with the "extern some_var; asm 
> volatile(".section some_section\nsome_var: blabla");". I should 
> probably ask on the gcc list whether this way of defining a local 
> symbol in inline assembly and referring to it from C is supposed to 
> work, or it just happens to work by chance.

Doing that would be rather useful I think.

Thanks,

	Ingo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
