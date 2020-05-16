Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9245A1D63FC
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 16 May 2020 22:29:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W3RBBmJCa6qTc6O/L2M3Jo9qGLmpVeUWx52Xx9yX+xw=; b=Za6bgOsQghVCuK
	ufZFTiMQICuKDmBMxCNsvNFdbDw+uFgRHWn5KB8wweIrXNT3+vaiMpbm3Sgs35jWTzYo0VI6KcFt0
	X5VV+P0kbB5jCUBPwn/4F65TTZLV4BrTzEyrn608pJWckPd4HOheudlxNB2Sh1xNwwh/XgNl0/QnU
	ValHICxeLdhSAke9DZ/rkVtmkmjQLCDqDb6maMGiG5XBcspKtBRqLYWeCj7QYXVmbTJllUoO5jbcF
	13HeWXD+A2QvpJIGdFuP9WSRkuzHr3hpismzFZJNmBVlxZI+NZ4JvwH32aMVwoBDmIQTyGjKmmz2/
	PLYauKzmIUjM6e3WTxVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ja3RB-0007mn-Ne; Sat, 16 May 2020 20:29:37 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ja3R3-0007mA-13
 for linux-arm-kernel@lists.infradead.org; Sat, 16 May 2020 20:29:30 +0000
Received: by mail-wr1-x443.google.com with SMTP id e1so7349338wrt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 16 May 2020 13:29:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=HT2TVJMFayGUD83EGAbk8hf3i1gxi7dkBOjvsWeu/kI=;
 b=jHGOapOXAI3oRxVWb3QmEM35rLrSSZyxRRMdKTuSibl7WIRZ4f68YCTl/fhYXIxl/t
 2pKXBNuVkvs8JDQukmlYEyeksSKj2VTRq/Gt6VMMchY6XN5LQJcTN+VndCWP0/Geu87q
 eSAn2J5FK7TqiOy2s3qgR3n3nsm/8kUFWpUWw341x6mHVvCGT8JxIiVDEhQu47n3ysvN
 bymsBeFi/Sw9FHw2Jp4V0/4Cy/Fkqs8i9kiPKD3BexyiEQGjZktsD5nwpXibKctwPARs
 65r07ygWDf2zc4tAt7/tFRN3Wx8pLmtH5tayuqfjNXvbZvxjv7Hwt9bi8UXLUHL9K4xP
 fKVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=HT2TVJMFayGUD83EGAbk8hf3i1gxi7dkBOjvsWeu/kI=;
 b=DdtUXqk3ACLSb+4q3SHmuz52o0FTwGQUuuyTSgANF4I7i8dCdNj3G1bJ5mKUJb8cMG
 TZaiRqfZASfySPAIsdNDxG7uQNIIQaCnDxLY0b8nELtXu3yKBs5nuB0RrRpzCNVgweR9
 vN/2tQEO7IEwnuQDS27boCyTZbPZ3kanP5QjNxpQObITusGSkLjYw/PKCt8hgQZ8DFPL
 xbZtH4z01hdP2HbIv8IcB4zr9XXVPNxlqeExHBp8xxpIONHSOuXokaYY1Bt/jU8H9v46
 gx7LTaL6Q1y0Mypkj7Q9ozwlMqF3Er5VztYJTEfhvYFbM8pBb2/mhbk6u5vg8F39Q25t
 me0Q==
X-Gm-Message-State: AOAM531AIr9EKDyySpl6Ke4s7CN2f6mieRPk9Cq/EN4NUJGhQabKqwQq
 WkWLrZ5PpgCBhivMDZOJYO2B8w==
X-Google-Smtp-Source: ABdhPJxD56c80RnLiAXEYv73ZxwFHD3aDDC2eWQq4okfk+viJypD6EhiHd4j2iC0mCNxdB97WtsohQ==
X-Received: by 2002:adf:dd50:: with SMTP id u16mr11815583wrm.58.1589660967004; 
 Sat, 16 May 2020 13:29:27 -0700 (PDT)
Received: from holly.lan (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net.
 [86.9.19.6])
 by smtp.gmail.com with ESMTPSA id o15sm7985249wrw.65.2020.05.16.13.29.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 16 May 2020 13:29:26 -0700 (PDT)
Date: Sat, 16 May 2020 21:29:22 +0100
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: Call debug_traps_init() from trap_init() to help
 early kgdb
Message-ID: <20200516202922.j7t2kocavj3ppwjk@holly.lan>
References: <20200513160501.1.I0b5edf030cc6ebef6ab4829f8867cdaea42485d8@changeid>
 <20200515162316.GB23334@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200515162316.GB23334@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_132929_135740_28D1C245 
X-CRM114-Status: GOOD (  31.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-arm-kernel@lists.infradead.org, "Paul E. McKenney" <paulmck@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Enrico Weigelt <info@metux.net>, kgdb-bugreport@lists.sourceforge.net,
 jinho lim <jordan.lim@samsung.com>, Jason Wessel <jason.wessel@windriver.com>,
 Douglas Anderson <dianders@chromium.org>, linux-kernel@vger.kernel.org,
 Alexios Zavras <alexios.zavras@intel.com>, James Morse <james.morse@arm.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Zenghui Yu <yuzenghui@huawei.com>,
 Thomas Gleixner <tglx@linutronix.de>, liwei391@huawei.com,
 Dave Martin <Dave.Martin@arm.com>, Allison Randal <allison@lohutok.net>,
 Masami Hiramatsu <mhiramat@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 15, 2020 at 05:23:17PM +0100, Will Deacon wrote:
> On Wed, May 13, 2020 at 04:06:37PM -0700, Douglas Anderson wrote:
> > A new kgdb feature will soon land (kgdb_earlycon) that lets us run
> > kgdb much earlier.  In order for everything to work properly it's
> > important that the break hook is setup by the time we process
> > "kgdbwait".
> > 
> > Right now the break hook is setup in debug_traps_init() and that's
> > called from arch_initcall().  That's a bit too late since
> > kgdb_earlycon really needs things to be setup by the time the system
> > calls dbg_late_init().
> > 
> > We could fix this by adding call_break_hook() into early_brk64() and
> > that works fine.  However, it's a little ugly.  Instead, let's just
> > add a call to debug_traps_init() straight from trap_init().  There's
> > already a documented dependency between trap_init() and
> > debug_traps_init() and this makes the dependency more obvious rather
> > than just relying on a comment.
> > 
> > NOTE: this solution isn't early enough to let us select the
> > "ARCH_HAS_EARLY_DEBUG" KConfig option that is introduced by the
> > kgdb_earlycon patch series.  That would only be set if we could do
> > breakpoints when early params are parsed.  This patch only enables
> > "late early" breakpoints, AKA breakpoints when dbg_late_init() is
> > called.  It's expected that this should be fine for most people.
> > 
> > It should also be noted that if you crash you can still end up in kgdb
> > earlier than debug_traps_init().  Since you don't need breakpoints to
> > debug a crash that's fine.
> > 
> > Suggested-by: Will Deacon <will@kernel.org>
> > Signed-off-by: Douglas Anderson <dianders@chromium.org>
> > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > Cc: Will Deacon <will@kernel.org>
> > ---
> > This replaces the patch ("arm64: Add call_break_hook() to
> > early_brk64() for early kgdb") in my recent kgdb series [1].  If I end
> > up re-posting that series again I'll include this patch as a
> > replacement, but I'm sending it separately to avoid spamming a pile of
> > people another time with a 12-patch series.
> > 
> > Note that, because it doesn't select the "ARCH_HAS_EARLY_DEBUG"
> > KConfig option it could be landed standalone.  However, it's still
> > probably better to land together with that patch series.
> > 
> > If the kgdb_earlycon patch series lands without this patch then
> > kgdbwait + kgdb_earlycon won't work well on arm64, but there would be
> > no other bad side effects.
> > 
> > If this patch lands without the kgdb_earlycon patch series then there
> > will be no known problems.
> > 
> > [1] https://lore.kernel.org/r/20200507130644.v4.5.I22067ad43e77ddfd4b64c2d49030628480f9e8d9@changeid
> > 
> >  arch/arm64/include/asm/debug-monitors.h | 2 ++
> >  arch/arm64/kernel/debug-monitors.c      | 4 +---
> >  arch/arm64/kernel/traps.c               | 2 +-
> >  3 files changed, 4 insertions(+), 4 deletions(-)
> 
> [...]
> 
> Acked-by: Will Deacon <will@kernel.org>
> 
> I would prefer to take this via arm64, if possible, since we have quite lot
> going in for 5.8, although I don't think this conflicts at the moment.
> 
> Daniel -- what do you want to do?

I'm very happy for you to take it!

On my side I hope to get the rest of the patchset into linux-next early
next week.


Daniel.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
