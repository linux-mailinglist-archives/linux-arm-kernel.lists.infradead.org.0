Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69034AEB6B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 15:24:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C3NY0PIvKeOjJsDeTMzVh4Pw8jwnAcu+w3qKSCujnKs=; b=Ekb5alhrb4VQcW
	YGN6R5ESXIzPMP+naYHGy7x9qCWSsY18vfj0O6VlkTbbeaZpuWRMr66eUudWqf+fwJGGH/vEAFL8h
	jIWmZevlg7e8uXELt+lKvGD3NanO6iA74/RUFapaFgfvgcDZqLwdoYv1rz/oZv+6mVFeWn0hYv7RM
	oXsh5QXyqJf1Mjv5k2b51jluEqdvX0siVmu2AfUMg0foRmlL5W1A5rX9t1v+z8/RzeY9pCEoYDYxj
	KQLtiJiMpYgOuJ+iRV7kDe+aMPnBTYWhDFO4Ep1n3NQQ5l5PsZhxphxmoP2ACUV/DyAzbYwrGVsfR
	5XpSfLK987yrAImCU5wA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7g8L-0006nB-Mc; Tue, 10 Sep 2019 13:24:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7g86-0006mX-0R
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 13:24:23 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2A11F2067B;
 Tue, 10 Sep 2019 13:24:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568121861;
 bh=pnVHhUoA0bQkP4vAFyAiTnaV2vHizoN7pMNixvUz4Xo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QXJGMdSYwg11CHswIYBqj4ts9Z2dVSTLWmih/qgJkikZh0AkTYGXL36ue2YP1eo/3
 WlvCFhAvWd67NqgUkVLu5zZwv/MYLkiz9FQ6f8zpJDob8YMGyJD1W2ZtI1eTJPyN2i
 4J8W+Jn7BKTUvXG3S2Lqz+MxeTJ7EK20sA1gd468=
Date: Tue, 10 Sep 2019 14:24:15 +0100
From: Will Deacon <will@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] arm64: fix unreachable code issue with cmpxchg
Message-ID: <20190910132415.4j2ygxhuanihvzhx@willie-the-truck>
References: <20190909202153.144970-1-arnd@arndb.de>
 <20190910074606.45k5m2pkztlpj4nj@willie-the-truck>
 <CAK8P3a0O8bVLgMzyc9bXb8joy6CZevP4CVn5eEwEPVqAOutDEw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a0O8bVLgMzyc9bXb8joy6CZevP4CVn5eEwEPVqAOutDEw@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_062422_093819_F04E5BA6 
X-CRM114-Status: GOOD (  22.52  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

On Tue, Sep 10, 2019 at 10:04:24AM +0200, Arnd Bergmann wrote:
> On Tue, Sep 10, 2019 at 9:46 AM Will Deacon <will@kernel.org> wrote:
> >
> > On Mon, Sep 09, 2019 at 10:21:35PM +0200, Arnd Bergmann wrote:
> > > On arm64 build with clang, sometimes the __cmpxchg_mb is not inlined
> > > when CONFIG_OPTIMIZE_INLINING is set.
> >
> > Hmm. Given that CONFIG_OPTIMIZE_INLINING has also been shown to break
> > assignment of local 'register' variables on GCC, perhaps we should just
> > disable that option for arm64 (at least) since we don't have any toolchains
> > that seem to like it very much! I'd certainly prefer that over playing
> > whack-a-mole with __always_inline.
> 
> Right, but I can also see good reasons to keep going:
> 
> - In theory, CONFIG_OPTIMIZE_INLINING is the right thing to do -- the compilers
>   also make some particularly bad decisions around inlining when each inline
>   turns into an __always_inline, as has been the case in Linux for a long time.
>   I think in most cases, we get better object code with CONFIG_OPTIMIZE_INLINING
>   and in the cases where this is worse, it may be better to fix the compiler.
>   The new "asm_inline"  macro should also help with that.

Sure, in theory, but it looks like there isn't a single arm64 compiler out
there which gets it right.

> - The x86 folks have apparently whacked most of the moles already, see this
>   commit from 2008
> 
>    commit 3f9b5cc018566ad9562df0648395649aebdbc5e0
>    Author: Ingo Molnar <mingo@elte.hu>
>    Date:   Fri Jul 18 16:30:05 2008 +0200
> 
>     x86: re-enable OPTIMIZE_INLINING
> 
>     re-enable OPTIMIZE_INLINING more widely. Jeff Dike fixed the remaining
>     outstanding issue in this commit:
> 
>     | commit 4f81c5350b44bcc501ab6f8a089b16d064b4d2f6
>     | Author: Jeff Dike <jdike@addtoit.com>
>     | Date:   Mon Jul 7 13:36:56 2008 -0400
>     |
>     |     [UML] fix gcc ICEs and unresolved externs
>     [...]
>     |    This patch reintroduces unit-at-a-time for gcc >= 4.0,
> bringing back the
>     |    possibility of Uli's crash.  If that happens, we'll debug it.
> 
>     it's still default-off and thus opt-in.

This appears to be fixing an ICE, whereas the issue reported recently for
arm64 gcc was silent miscompilation of atomics in some cases. Unfortunately,
I can't seem to find the thread :/ Mark, you were on that one too, right?

> - The inlining decisions of gcc and clang are already very different, and
>    the bugs we are finding around that are much more common than
>    the difference between CONFIG_OPTIMIZE_INLINING=y/n on a
>    given compiler.

Sorry, not sure that you're getting at here.

Anyway, the second version of your patch looks fine, but I would still
prefer to go the extra mile and disable CONFIG_OPTIMIZE_INLINING altogether
given that I don't think it's a safe option to enable for us.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
