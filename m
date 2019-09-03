Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F77FA7030
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 18:38:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B13PENCkeOd7O8nKIFrQiCpLoE4OmOX0mLmuS//I3CE=; b=QSYu7jCH7tXH3o
	OrSbrowPdD1cXe5f2RbvoL/4KXCQd3xCadBIQY2NgqUQwA8Gq46iunmDf1szVfSAauZI7zOegZeeU
	TuldesuhRaFUtBHeMzbZT334w26LBFgjGVxouaAqWrL/LVALWRXtWdDkkChnPNgy8lMO50ATeE8xJ
	xNA1P9pC98OkiolWNmRs46RAp8tvGkNf7VlIlydeMslU3SOmxC8k540/pOHH8gbD9ONUHn1r+RUY1
	IUQNqD8OOuMt3IdYg7jj0j0ZXVkgrmVfDSF6utHnWwNgR8CpM4m0v0qfWUPSV5maHf03GFU0NNdL1
	m/VsDivW9Ghzq1wnC9pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Bot-0005ES-Lp; Tue, 03 Sep 2019 16:38:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Boe-0005Dt-PP
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 16:38:02 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B6F9F2173E;
 Tue,  3 Sep 2019 16:37:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567528680;
 bh=bZmXHHP53xjiiygJNDAG5gIBQpX6awlC0esO32JPO4k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZStQwFNX9UvK1gN75L7tThKBL0p1FfykVjEdoN4Dfv6bgh0Q5fmlN10MEtm4w5F0B
 DlbwTzjGS+Jja5gtc0STZn+cIdIap1996XDvbtik1hqTi3hwjCwm8aSubeqX/Nu1ov
 sqzv0TWNWLzJ0V8pOFNaWURHoGg5vnZF8QJF2VHQ=
Date: Tue, 3 Sep 2019 17:37:55 +0100
From: Will Deacon <will@kernel.org>
To: Andrew Murray <andrew.murray@arm.com>
Subject: Re: [PATCH v5 03/10] arm64: atomics: avoid out-of-line ll/sc atomics
Message-ID: <20190903163753.huk5sjg4m27qu2zu@willie-the-truck>
References: <20190829154834.26547-1-will@kernel.org>
 <20190829154834.26547-4-will@kernel.org>
 <20190903060011.GA60737@archlinux-threadripper>
 <20190903143117.GR9720@e119886-lin.cambridge.arm.com>
 <20190903144534.h2rp3cyd3ryohhgj@willie-the-truck>
 <20190903151544.GS9720@e119886-lin.cambridge.arm.com>
 <20190903153120.GT9720@e119886-lin.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190903153120.GT9720@e119886-lin.cambridge.arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_093800_869077_53875C74 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, peterz@infradead.org, catalin.marinas@arm.com,
 ndesaulniers@google.com, Ard.Biesheuvel@arm.com,
 Nathan Chancellor <natechancellor@gmail.com>, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 03, 2019 at 04:31:20PM +0100, Andrew Murray wrote:
> On Tue, Sep 03, 2019 at 04:15:44PM +0100, Andrew Murray wrote:
> > On Tue, Sep 03, 2019 at 03:45:34PM +0100, Will Deacon wrote:
> > > Does it work if the only thing you change is the toolchain, and use GCC
> > > instead? 
> > 
> > Yup.
> 
> Also this is Clang generation:
> 
> ffff8000100f2700 <__ptrace_link>:
> ffff8000100f2700:       f9426009        ldr     x9, [x0, #1216]
> ffff8000100f2704:       91130008        add     x8, x0, #0x4c0
> ffff8000100f2708:       eb09011f        cmp     x8, x9
> ffff8000100f270c:       540002a1        b.ne    ffff8000100f2760 <__ptrace_link+0x60>  // b.any
> ffff8000100f2710:       f9425829        ldr     x9, [x1, #1200]
> ffff8000100f2714:       9112c02a        add     x10, x1, #0x4b0
> ffff8000100f2718:       f9000528        str     x8, [x9, #8]
> ffff8000100f271c:       f9026009        str     x9, [x0, #1216]
> ffff8000100f2720:       f902640a        str     x10, [x0, #1224]
> ffff8000100f2724:       f9025828        str     x8, [x1, #1200]
> ffff8000100f2728:       f9024001        str     x1, [x0, #1152]
> ffff8000100f272c:       b4000162        cbz     x2, ffff8000100f2758 <__ptrace_link+0x58>
> ffff8000100f2730:       b900985f        str     wzr, [x2, #152]
> ffff8000100f2734:       14000004        b       ffff8000100f2744 <__ptrace_link+0x44>
> ffff8000100f2738:       14000001        b       ffff8000100f273c <__ptrace_link+0x3c>
> ffff8000100f273c:       14000006        b       ffff8000100f2754 <__ptrace_link+0x54>
> ffff8000100f2740:       14000001        b       ffff8000100f2744 <__ptrace_link+0x44>
> ffff8000100f2744:       52800028        mov     w8, #0x1                        // #1
> ffff8000100f2748:       b828005f        stadd   w8, [x2]
> ffff8000100f274c:       f9030002        str     x2, [x0, #1536]
> ffff8000100f2750:       d65f03c0        ret
> ffff8000100f2754:       140007fd        b       ffff8000100f4748 <ptrace_check_attach+0xf8>
> ...
> 
> This looks like the default path (before we write over it) will take you to
> the LSE code (e.g. ffff8000100f2734). I'm pretty sure this is wrong, or at
> least not what we expected to see. Also why 4 branches?

So I reproduced this with a silly atomic_inc wrapper:

void will_atomic_inc(atomic_t *v)
{
        atomic_inc(v);
}

Compiles to:

0000000000000018 <will_atomic_inc>:
  18:	14000004 	b	28 <will_atomic_inc+0x10>
  1c:	14000001 	b	20 <will_atomic_inc+0x8>
  20:	14000005 	b	34 <will_atomic_inc+0x1c>
  24:	14000001 	b	28 <will_atomic_inc+0x10>
  28:	52800028 	mov	w8, #0x1                   	// #1
  2c:	b828001f 	stadd	w8, [x0]
  30:	d65f03c0 	ret
  34:	14000027 	b	d0 <dump_kernel_offset+0x60>
  38:	d65f03c0 	ret

which is going to explode.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
