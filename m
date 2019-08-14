Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 969BE8CE81
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 10:32:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xz2dLpigccsndbviPyImzHriR+Z+/Qw6l7GZBQkdqps=; b=l4B76/N+sBllgn
	7Z9qWSHH8wyv3vlaKMCqgX8P7gzS4wB3KW8EHm4uEAHKBWF2sDAcek/nIXeJ0H5uWntOHdB5eMyMb
	rajutHKoAyvf+uWzVbD4PXBSjPUaF3egOvFiRARdM9Jmba5oI4xMU9oZhrOwqdsBZH/Yas+DHdAcO
	bbWIJpV30F+x8QeB8Gs31Wu6wBNzbr8oCWaOFMCCgmVocEuB9K9Z1wNPC1EAJ2s9Jt6h1V2YanoNS
	u6TehZ8yzLj+ufEN9KkNrO7k9c/cMNMjywfJBCeZAJWGQRszi1QSlb5odE7/GRtE3tiI+RTOdtBqd
	nFS2ULiDY79l1FF7dT7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxohg-00061T-BA; Wed, 14 Aug 2019 08:32:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxohS-000617-Ul
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 08:32:08 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EF22420843;
 Wed, 14 Aug 2019 08:32:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565771526;
 bh=tsxSeylHj5x6Cfnwkzd9XPZfFw09NQKPFTy8K7WjWp8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cUrxtBXwQnzHfQHqup+2H7uEbkopF3G5vAwvJIu1XsqI8ypQCHPI6Liskq5Zmby2f
 LDSNxSyU+oGv4UKqV4Rx5MVKPi88UfC+t/ygNGP0gHlYqe/m4Tq/8o/2VOy8CO6FlQ
 wm4XmFPxTF22bM8NzjxmPuVSAbHbm9VZM7Fkxfj4=
Date: Wed, 14 Aug 2019 09:32:02 +0100
From: Will Deacon <will@kernel.org>
To: Steve Capper <Steve.Capper@arm.com>
Subject: Re: [PATCH 1/8] arm64: memory: Fix virt_addr_valid() using
 __is_lm_address()
Message-ID: <20190814083201.kjna27s6dc7iskfy@willie-the-truck>
References: <20190813170149.26037-1-will@kernel.org>
 <20190813170149.26037-2-will@kernel.org>
 <CAKv+Gu8Gws2MVE5ck1-rjm06X2nOUzRRQL_rCuoXd2Fyp-cOyw@mail.gmail.com>
 <20190813191124.GA21406@capper-ampere.manchester.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190813191124.GA21406@capper-ampere.manchester.arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_013207_012715_8BD46715 
X-CRM114-Status: GOOD (  17.55  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <Catalin.Marinas@arm.com>, Qian Cai <cai@lca.pw>,
 Andrey Konovalov <andreyknvl@google.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, nd <nd@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 07:11:26PM +0000, Steve Capper wrote:
> On Tue, Aug 13, 2019 at 09:09:16PM +0300, Ard Biesheuvel wrote:
> > On Tue, 13 Aug 2019 at 20:02, Will Deacon <will@kernel.org> wrote:
> > >
> > > virt_addr_valid() is intended to test whether or not the passed address
> > > is a valid linear map address. Unfortunately, it relies on
> > > _virt_addr_is_linear() which is broken because it assumes the linear
> > > map is at the top of the address space, which it no longer is.
> > >
> > > Reimplement virt_addr_valid() using __is_lm_address() and remove
> > > _virt_addr_is_linear() entirely. At the same time, ensure we evaluate
> > > the macro parameter only once and move it within the __ASSEMBLY__ block.
> > >
> > > Reported-by: Qian Cai <cai@lca.pw>
> > > Reported-by: Geert Uytterhoeven <geert@linux-m68k.org>
> > > Fixes: 14c127c957c1 ("arm64: mm: Flip kernel VA space")
> > > Signed-off-by: Will Deacon <will@kernel.org>
> > > ---
> > >  arch/arm64/include/asm/memory.h | 14 +++++++-------
> > >  1 file changed, 7 insertions(+), 7 deletions(-)
> > >
> > > diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
> > > index afaf512c0e1b..442ab861cab8 100644
> > > --- a/arch/arm64/include/asm/memory.h
> > > +++ b/arch/arm64/include/asm/memory.h
> > > @@ -244,9 +244,9 @@ static inline const void *__tag_set(const void *addr, u8 tag)
> > >  /*
> > >   * The linear kernel range starts in the middle of the virtual adddress
> > >   * space.
> > 
> > This is no longer true either.
> > 
> 
> Whoops agreed.

Bah, stupid comment. Dunno how I missed that when I was editing it. I'll
change "starts in the middle" to be "starts at the bottom".

We can look at the wasted VA space issue as part of a seperate series,
since I'd rather not hold the current patches up on that.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
