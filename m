Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C211D1D55DB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 18:24:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i+AmN4EXsdIlbIfmD+baypKImHCXfZt71A/7eZzoElQ=; b=S59IegHK39B3SG
	e5uScn5lT/hKRLtZQppbgch0PiTGInwacxLdX5mxMno6mdvxP5fAKvt6Mt1vOhNhAVg/t1nbhAQFx
	ReB6+wjWIHdP/DerovZZ9+IieaTofTHJViCgtp0B0H2NuRdbogvohxm9nuLiMNMlKLleappeMIpaG
	zn2qLBt+wupFSxRpmIWMM1Kx9pjVF4kwEFfxQHP8kDLlNb1d3bBgSLvOcJJUovZMGBqSfMK/r9xBL
	mZWmAcZp2bWmOnmZfjiSuvLSFwjCFrQqlDdrXHs78NqtjSonvJ6S6DF2kIii4+8qbOifHpmvz4GJw
	s5nBncEw1mVzynNSaGNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZd82-0002d0-Pd; Fri, 15 May 2020 16:24:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZd7M-0002Bc-Qw
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 16:23:26 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 81D412078C;
 Fri, 15 May 2020 16:23:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589559803;
 bh=HbqBHaV+XIZkFuflJY0Eucc7SercKD8lt8QIg3OGxhA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wemOiVm650T9QrpdqKpxsDYHLEdSK+CH1Ch20VwgfPR+Wr0MpSbf7XU+dxi/rFHj9
 rG92FNQGEworcfIAggrP2zo+/fwzxkNU6/nvba2DypmY6d9iI3lRyNmlfNrJrLtLDZ
 ZPS2stFk5fi2bPosg1Q7nmOMROrJX53BiKMTbiDk=
Date: Fri, 15 May 2020 17:23:17 +0100
From: Will Deacon <will@kernel.org>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH] arm64: Call debug_traps_init() from trap_init() to help
 early kgdb
Message-ID: <20200515162316.GB23334@willie-the-truck>
References: <20200513160501.1.I0b5edf030cc6ebef6ab4829f8867cdaea42485d8@changeid>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513160501.1.I0b5edf030cc6ebef6ab4829f8867cdaea42485d8@changeid>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_092324_950161_6C40A28D 
X-CRM114-Status: GOOD (  26.88  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, sumit.garg@linaro.org,
 Daniel Thompson <daniel.thompson@linaro.org>,
 linux-arm-kernel@lists.infradead.org, "Paul E. McKenney" <paulmck@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Enrico Weigelt <info@metux.net>, kgdb-bugreport@lists.sourceforge.net,
 jinho lim <jordan.lim@samsung.com>, Jason Wessel <jason.wessel@windriver.com>,
 linux-kernel@vger.kernel.org, Alexios Zavras <alexios.zavras@intel.com>,
 James Morse <james.morse@arm.com>, "Eric W. Biederman" <ebiederm@xmission.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Zenghui Yu <yuzenghui@huawei.com>,
 Thomas Gleixner <tglx@linutronix.de>, liwei391@huawei.com,
 Dave Martin <Dave.Martin@arm.com>, Allison Randal <allison@lohutok.net>,
 Masami Hiramatsu <mhiramat@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 04:06:37PM -0700, Douglas Anderson wrote:
> A new kgdb feature will soon land (kgdb_earlycon) that lets us run
> kgdb much earlier.  In order for everything to work properly it's
> important that the break hook is setup by the time we process
> "kgdbwait".
> 
> Right now the break hook is setup in debug_traps_init() and that's
> called from arch_initcall().  That's a bit too late since
> kgdb_earlycon really needs things to be setup by the time the system
> calls dbg_late_init().
> 
> We could fix this by adding call_break_hook() into early_brk64() and
> that works fine.  However, it's a little ugly.  Instead, let's just
> add a call to debug_traps_init() straight from trap_init().  There's
> already a documented dependency between trap_init() and
> debug_traps_init() and this makes the dependency more obvious rather
> than just relying on a comment.
> 
> NOTE: this solution isn't early enough to let us select the
> "ARCH_HAS_EARLY_DEBUG" KConfig option that is introduced by the
> kgdb_earlycon patch series.  That would only be set if we could do
> breakpoints when early params are parsed.  This patch only enables
> "late early" breakpoints, AKA breakpoints when dbg_late_init() is
> called.  It's expected that this should be fine for most people.
> 
> It should also be noted that if you crash you can still end up in kgdb
> earlier than debug_traps_init().  Since you don't need breakpoints to
> debug a crash that's fine.
> 
> Suggested-by: Will Deacon <will@kernel.org>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> ---
> This replaces the patch ("arm64: Add call_break_hook() to
> early_brk64() for early kgdb") in my recent kgdb series [1].  If I end
> up re-posting that series again I'll include this patch as a
> replacement, but I'm sending it separately to avoid spamming a pile of
> people another time with a 12-patch series.
> 
> Note that, because it doesn't select the "ARCH_HAS_EARLY_DEBUG"
> KConfig option it could be landed standalone.  However, it's still
> probably better to land together with that patch series.
> 
> If the kgdb_earlycon patch series lands without this patch then
> kgdbwait + kgdb_earlycon won't work well on arm64, but there would be
> no other bad side effects.
> 
> If this patch lands without the kgdb_earlycon patch series then there
> will be no known problems.
> 
> [1] https://lore.kernel.org/r/20200507130644.v4.5.I22067ad43e77ddfd4b64c2d49030628480f9e8d9@changeid
> 
>  arch/arm64/include/asm/debug-monitors.h | 2 ++
>  arch/arm64/kernel/debug-monitors.c      | 4 +---
>  arch/arm64/kernel/traps.c               | 2 +-
>  3 files changed, 4 insertions(+), 4 deletions(-)

[...]

Acked-by: Will Deacon <will@kernel.org>

I would prefer to take this via arm64, if possible, since we have quite lot
going in for 5.8, although I don't think this conflicts at the moment.

Daniel -- what do you want to do?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
