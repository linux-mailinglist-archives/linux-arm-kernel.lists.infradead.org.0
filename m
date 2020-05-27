Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41D931E4CDB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 20:09:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j6zebqhWM2sSYifz2DjLdNkDuOJGnp9JwTZKKDP3BLs=; b=Quudr6Z6ksodkI
	Hu4xD9+mk5sD4waokWadU62xIRVUvehyEwnLdzZf6XQ5s5dCwIDOXT3bHNTHaLYckhMDmaFel6+2y
	KG/6c8Uaw7vBpebR6IBBtPCvsXOBinVtdYJ3ib5tw4Vl3EHe/WDV/yzePKbpJW1VNpOXOheZkvLcO
	BG+K1NcVpZnFY+fe2fF9dJIfGfJs93eTj/55C8PgUxis8fsOG3rw8laJI3BWKfy1PdV9eB/pMXakJ
	525Wjmx94rRBPF5RZvHh++X8UbNI0i2OiNagBav5hfnUm1b+jlF5D8oiELwGa/Pis639W+z/6CifL
	/af3aCPCSoYQWryV1Qhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je0U7-0005SM-Lm; Wed, 27 May 2020 18:08:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je0Tv-0005Rr-HB
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 18:08:48 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E03042075A;
 Wed, 27 May 2020 18:08:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590602926;
 bh=EkrxDgW2W7jklShbuK3ccGvQdpxTbQarzQKd6FLVLgE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=deq7F0t+XNEaB9xXwmIRl6SLB0gmB4gu7wH7Dl6Jh7XBHRrdUXqFDcAa2b/sLRsSM
 0PS6NRMEJD3NHSvnod+9TTScg4YL3BnjVq0f2x8KOosnPSwza6vegMDcw7UZoEd5Vx
 CEH+0Dd5z3MQ4/ta9IbM9e70z/NAFCwNiwCHeGYI=
Date: Wed, 27 May 2020 19:08:40 +0100
From: Will Deacon <will@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH] arm64: vdso32: force vdso32 to be compiled as -marm
Message-ID: <20200527180839.GA16411@willie-the-truck>
References: <20200526173117.155339-1-ndesaulniers@google.com>
 <2f58c2a4-0f37-d507-7767-00161c6b5d98@arm.com>
 <CAKwvOd=Oy_OfRbL6-q-3CAHxWBNBKE+HkfNfgCiP726u+4dU1Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKwvOd=Oy_OfRbL6-q-3CAHxWBNBKE+HkfNfgCiP726u+4dU1Q@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_110847_584670_E9A1C7C0 
X-CRM114-Status: GOOD (  17.85  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Naohiro Aota <naohiro.aota@wdc.com>, Stephen Boyd <swboyd@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Masahiro Yamada <masahiroy@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 Manoj Gupta <manojgupta@google.com>, Luis Lozano <llozano@google.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 27, 2020 at 10:55:24AM -0700, Nick Desaulniers wrote:
> On Wed, May 27, 2020 at 6:45 AM Robin Murphy <robin.murphy@arm.com> wrote:
> >
> > On 2020-05-26 18:31, Nick Desaulniers wrote:
> > > Custom toolchains that modify the default target to -mthumb cannot
> > > compile the arm64 compat vdso32, as
> > > arch/arm64/include/asm/vdso/compat_gettimeofday.h
> > > contains assembly that's invalid in -mthumb.  Force the use of -marm,
> > > always.
> >
> > FWIW, this seems suspicious - the only assembly instructions I see there
> > are SWI(SVC), MRRC, and a MOV, all of which exist in Thumb for the
> > -march=armv7a baseline that we set.
> >
> > On a hunch, I've just bodged "VDSO_CFLAGS += -mthumb" into my tree and
> > built a Thumb VDSO quite happily with Ubuntu 19.04's
> > gcc-arm-linux-gnueabihf. What was the actual failure you saw?
> 
> From the link in the commit message: `write to reserved register 'R7'`
> https://godbolt.org/z/zwr7iZ
> IIUC r7 is reserved for the frame pointer in THUMB?
> 
> What is the implicit default of your gcc-arm-linux-gnueabihf at -O2?
> -mthumb, or -marm?

Hmm, but this *is* weird because if I build a 32-bit kernel then I get
either an ARM or a Thumb-2 VDSO depending on CONFIG_THUMB2_KERNEL. I'm
not sure if that's deliberate, but both build and appear to work.

I'll drop this patch for now, while we figure it out a bit more.

Cheers,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
