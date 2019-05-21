Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36399255C8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 18:39:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HnyR1ro5CzC43NbiXNTao+YWWyTFkiMZi22TQgblFhs=; b=kDnPlVxD8blQfU
	UV/YeWemCTj+Yqr0roXYoc95QN6rEGkBodv5shbomAcNxvulPn6f06z2c2QLceoF9/FMq0aWVU0sT
	mJxXAxOUKSpE+tbdh5j5/EZlFUwkf7a6xQRqHyXCZWkzk30E3+36ZMIaVjkz9eWFAizc4fCxqG4V3
	4a/8hOs6we2sgVP5/icwkHlGw8aSLQYY10yHsE5boSxN/mpE85pk/ktl+FWeG+dJg+w3OcdUQJj1W
	llOF9ZOUO/B0OR40fLVKP7UST+sVsOKoHHbjqRLrcFm4ZNsr7aedoG+SBYxhIkKGG7+tmsCdLdE6L
	Qd4poypkWNAtA/mtJFRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT7nN-000309-Ob; Tue, 21 May 2019 16:39:21 +0000
Received: from mail-vs1-f65.google.com ([209.85.217.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT7nF-0002zS-QE
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 16:39:15 +0000
Received: by mail-vs1-f65.google.com with SMTP id x8so7617767vsx.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 09:39:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=d3r+vtHOni2ql6K8KUyHYDwXA6dbsBBCMW+a9jJjXY0=;
 b=mc22ADu3cilBpuLDf6xxaIGUgPUyrGSonb5j6ZtIPI2W/84kcJlp2lfvORf38CoMdf
 wSk+NGEWcvX/lQQlAKP5TYoqsMBP4JQfVhqmcC1mzz84o2IaM1BUTWYOjdd3p65fdPX3
 m4WWAbNRerETtlV1Ni5gRw1weh/EyKExjEqVNXyO7D/stS/bD7tS0DQVIrLAKyDmyQeG
 jZlCXjFtbQlJSOh5vtZBxcD5AU+tgaArfjAzl/AI5qS/9vhcSvWqDmcK3SEc3pA/EK1o
 bLNFBIhWM8c/xdrM41Ks01fVKQY+lwp8/mBflan1UkZ9UzIVEeDpOq1w3j8HAFzYXzlf
 vg1g==
X-Gm-Message-State: APjAAAWIJol8uKGOuPbXCveDG6zuzl84NORyGLGMtlaF3ucF9I4rG2vd
 6xfcqPcpvKxUOwNSWhgT09wG5c34Ne1PcU9I1ek=
X-Google-Smtp-Source: APXvYqwCQIckTpeBswbXwCcMWkbVVy9WAUMEJsw8Zbz08S2CXrenseFMa2ivFFBrrmH68j06jfFotolazbcgC2VSxME=
X-Received: by 2002:a67:f589:: with SMTP id i9mr9021336vso.152.1558456752226; 
 Tue, 21 May 2019 09:39:12 -0700 (PDT)
MIME-Version: 1.0
References: <git-mailbomb-linux-master-c4741b23059794bd99beef0f700103b0d983b3fd@kernel.org>
In-Reply-To: <git-mailbomb-linux-master-c4741b23059794bd99beef0f700103b0d983b3fd@kernel.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 21 May 2019 18:39:00 +0200
Message-ID: <CAMuHMdWSUMOh1uG1g+cipup86ZpiVYuHDpPJtp+gSmmUyjB6eA@mail.gmail.com>
Subject: Re: crypto: run initcalls for generic implementations earlier
To: Eric Biggers <ebiggers@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_093913_845678_D360A51B 
X-CRM114-Status: GOOD (  18.31  )
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.217.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.217.65 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Eric,

On Tue, May 7, 2019 at 5:26 AM Linux Kernel Mailing List
<linux-kernel@vger.kernel.org> wrote:
> Commit:     c4741b23059794bd99beef0f700103b0d983b3fd
> Parent:     40153b10d91c9e25f912344ba6ce1f0874400659
> Refname:    refs/heads/master
> Web:        https://git.kernel.org/torvalds/c/c4741b23059794bd99beef0f700103b0d983b3fd
> Author:     Eric Biggers <ebiggers@google.com>
> AuthorDate: Thu Apr 11 21:57:42 2019 -0700
> Committer:  Herbert Xu <herbert@gondor.apana.org.au>
> CommitDate: Thu Apr 18 22:15:03 2019 +0800
>
>     crypto: run initcalls for generic implementations earlier
>
>     Use subsys_initcall for registration of all templates and generic
>     algorithm implementations, rather than module_init.  Then change
>     cryptomgr to use arch_initcall, to place it before the subsys_initcalls.
>
>     This is needed so that when both a generic and optimized implementation
>     of an algorithm are built into the kernel (not loadable modules), the
>     generic implementation is registered before the optimized one.
>     Otherwise, the self-tests for the optimized implementation are unable to
>     allocate the generic implementation for the new comparison fuzz tests.
>
>     Note that on arm, a side effect of this change is that self-tests for
>     generic implementations may run before the unaligned access handler has
>     been installed.  So, unaligned accesses will crash the kernel.  This is
>     arguably a good thing as it makes it easier to detect that type of bug.
>
>     Signed-off-by: Eric Biggers <ebiggers@google.com>
>     Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>

> --- a/crypto/jitterentropy-kcapi.c
> +++ b/crypto/jitterentropy-kcapi.c
> @@ -198,7 +198,7 @@ static void __exit jent_mod_exit(void)
>         crypto_unregister_rng(&jent_alg);
>  }
>
> -module_init(jent_mod_init);
> +subsys_initcall(jent_mod_init);
>  module_exit(jent_mod_exit);
>
>  MODULE_LICENSE("Dual BSD/GPL");

This change causes jitterentropy to fail on Renesas SoCs based on
single-core Cortex A9 with:

    jitterentropy: Initialization failed with host not compliant with
requirements: 2

This happens because jitterentropy is now initialized before the main
clocksource is activated, i.e. before

    clocksource: Switched to clocksource ostm timer (on RZ/A1)
    clocksource: Switched to clocksource fff80000.timer (on R-Mobile A1)

is printed.
RZ/A1 and R-Mobile A1 SoCs rely on the OSTM resp. TMU timers.

The issue does not happen on SoCs with Cortex A15 cores (with ARM
architectured timer) or Cortex A9 multicore (with ARM global timer).

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
