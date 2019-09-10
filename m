Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C65BAEBD1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 15:44:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tNAXSbh3Ehf114d91OTLd9HHTZi4RYiPmgVawi+4QFY=; b=KRL5n+0aSi+qsV
	Gdb+P8y9j3wkrLmIBe3AP4n26m11LRDbJp18VTnpxwTCT/AzrVZQLtk6EuGoYSN9bhawkivHMlDyB
	BvIcAIUXmaARzs/Kn9hCzn4FVYA01Uz5rnSOU2+sr/CkOhbhcE+WBnC9f0+bFQa+lebHcMo/rCdlX
	NfhnD+IqkpuNzKSTY+Zesbbtk2Mytf048seBTn71EB9y4YPjnunPgjusPEcFmK0YEDKShcjdsgLPZ
	looWNqpx/SY4kKWge0T7c7w6ncem/ncpJmpC+POu5yii4yUaSE/iDJxT1Yn8YKFi7jvSDnxwTvADU
	atlvzaypl7ocHh8aXGSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7gR5-0004Xr-QH; Tue, 10 Sep 2019 13:43:59 +0000
Received: from mail-qk1-f196.google.com ([209.85.222.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7gQu-0004Wr-Al
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 13:43:49 +0000
Received: by mail-qk1-f196.google.com with SMTP id 201so17003483qkd.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 06:43:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=p6zPc+01Hqtj70FYQH87POktpG3lo+D/uPeGYtLeCvc=;
 b=oBNahKpeS5Yb5dESOffVOHZIS4KFZmFJeVX3YpE1K6R8X4CxIailglHWtD2VMGA/lt
 fQv8rDNQi+z2S8uYQCcseOFejsCWLfkMPguUwmDyEE/nt5DLLXWDfk2PccZCj/8AC30s
 UwDFjB0q9R1P1fAWHj6k+f1MTt5/BUl2f7ah0mCrIAhklAqRChSHZG8f4xJdnlE8WVJG
 Rh5rCvSP4TawmoGTyyl5lElWc5tYeqer834Zu0q47S0sY76+JDG4i8zsp+g4CvCt8NP0
 alhv0/yGYj2QJYuLgCvH2f9fi0PAkNb/yVmPeCm1SeaPHXk1/RMgM9a0RopAPEKEV+DK
 1dMg==
X-Gm-Message-State: APjAAAX8mxG9qUq1f2QA+kItFlGfEb+wXqm0v5jTBqckGoVBPtAePimC
 jSi8UmT1JKfRrp0ZrfkXRx9RbhiS5hM25mQXaPg=
X-Google-Smtp-Source: APXvYqx63W2KmaLnbZnwoNzPoM9AmlM0KI9/P88LEJJ6BbifXaOvNlmx+AWjiX8rS0YSdxh0Xc6uuOzmtj/wUOvmmm8=
X-Received: by 2002:ae9:ee06:: with SMTP id i6mr8806139qkg.3.1568123026492;
 Tue, 10 Sep 2019 06:43:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190909202153.144970-1-arnd@arndb.de>
 <20190910074606.45k5m2pkztlpj4nj@willie-the-truck>
 <CAK8P3a0O8bVLgMzyc9bXb8joy6CZevP4CVn5eEwEPVqAOutDEw@mail.gmail.com>
 <20190910132415.4j2ygxhuanihvzhx@willie-the-truck>
In-Reply-To: <20190910132415.4j2ygxhuanihvzhx@willie-the-truck>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 10 Sep 2019 15:43:29 +0200
Message-ID: <CAK8P3a3w6q7iUy2zYRhUqiWCR3o-L5s3BTYvXZMXb0zEa=Ydig@mail.gmail.com>
Subject: Re: [PATCH] arm64: fix unreachable code issue with cmpxchg
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_064348_373995_30613C6B 
X-CRM114-Status: GOOD (  25.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.196 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Ingo Molnar <mingo@redhat.com>, Andrew Murray <andrew.murray@arm.com>,
 Borislav Petkov <bp@suse.de>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 10, 2019 at 3:24 PM Will Deacon <will@kernel.org> wrote:
> On Tue, Sep 10, 2019 at 10:04:24AM +0200, Arnd Bergmann wrote:
> > On Tue, Sep 10, 2019 at 9:46 AM Will Deacon <will@kernel.org> wrote:
> > - In theory, CONFIG_OPTIMIZE_INLINING is the right thing to do -- the compilers
> >   also make some particularly bad decisions around inlining when each inline
> >   turns into an __always_inline, as has been the case in Linux for a long time.
> >   I think in most cases, we get better object code with CONFIG_OPTIMIZE_INLINING
> >   and in the cases where this is worse, it may be better to fix the compiler.
> >   The new "asm_inline"  macro should also help with that.
>
> Sure, in theory, but it looks like there isn't a single arm64 compiler out
> there which gets it right.

I don't see anything architecture specific in here. When the option was
made generic instead of x86 specific, I fixed a ton of bugs that showed
up all over the place. If we don't want it on arm64, I'd suggest making
it a per-architecture opt-in instead of an opt-out.

> >
> >     | commit 4f81c5350b44bcc501ab6f8a089b16d064b4d2f6
> >     | Author: Jeff Dike <jdike@addtoit.com>
> >     | Date:   Mon Jul 7 13:36:56 2008 -0400
> >     |
> >     |     [UML] fix gcc ICEs and unresolved externs
> >     [...]
> >     |    This patch reintroduces unit-at-a-time for gcc >= 4.0,
> > bringing back the
> >     |    possibility of Uli's crash.  If that happens, we'll debug it.
> >
> >     it's still default-off and thus opt-in.
>
> This appears to be fixing an ICE, whereas the issue reported recently for
> arm64 gcc was silent miscompilation of atomics in some cases. Unfortunately,
> I can't seem to find the thread :/ Mark, you were on that one too, right?

Sorry, that reference was unclear, I meant the text for commit 3f9b5cc01856,
which in turn contains a citation of the earlier 4f81c5350b44bc commit.

> > - The inlining decisions of gcc and clang are already very different, and
> >    the bugs we are finding around that are much more common than
> >    the difference between CONFIG_OPTIMIZE_INLINING=y/n on a
> >    given compiler.
>
> Sorry, not sure that you're getting at here.
>
> Anyway, the second version of your patch looks fine, but I would still
> prefer to go the extra mile and disable CONFIG_OPTIMIZE_INLINING altogether
> given that I don't think it's a safe option to enable for us.

The point is that function inlining frequently causes all kinds of problems
when code was written in a way that is not entirely reproducible but
depends on the behavior of a particular implementation. I've fixed
lots of bugs based on any of these:

- gcc-4.0 and higher started ignoring 'inline' without
  __attribute__((always_inline)), so a workaround got applied
  in 2.6.26, and this turned into CONFIG_OPTIMIZE_INLINING=n
  later
- gcc -O2 makes different decisions compared to -Os and -O3,
  which is an endless source of "uninitialized variable" warnings
  and similar problems
- Some configuration options like KASAN grow the code to result
  in less inlining
- clang and gcc behave completely differently
- gcc is traditionally bad at guessing the size of inline assembly
  to make a good decision
- newer compilers tend to get better at identifying which functions
  benefit from inlining, which changes the balance

CONFIG_OPTIMIZE_INLINING clearly adds to that mess, but it's
not the worst part. The only real solution tends to be to write
portable and correct code rather than making assumptions
about compiler behavior.

    Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
