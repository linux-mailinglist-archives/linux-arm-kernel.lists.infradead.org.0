Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A2663D153
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 17:49:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IlMlDVfEdjavnyspTvV/2simWjpPJdwJoPP1FOHCdds=; b=c/Yo/11nTgtw3l
	NBBFzrWOA/jsrcXWVOud6vH1FQuUj02SVUdQdcmPDKGP26YUPBgmMkiwiIjIHKlXcM6vsTgAiqDHF
	L+iyZNYzgJC2XFAEGdYEVJkz8ldcp6ZIiMrqdpmB2H2/M4ntM4XTDO4KetXa2W063Ee6chnBmtNvX
	7yuGeqUJcQ+wvmPNDqxQk8V4QipYmWXJ6W+0vhkP4LmBaciokOMxTxEwq8a6Tbel3Aj7JbgFVqnid
	+nHdIY52UFKFSZaHjO6Y+/mlOz4WEepJCVE1EnoKOHcyJrRa1SkxDPxnl1Y4gJE0nKPWZfWCtLUoD
	MwzDeXjj5PqAN2nLR18A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haj1V-0004b9-5q; Tue, 11 Jun 2019 15:49:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1haj1H-0004al-8t
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 15:49:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3AE83337;
 Tue, 11 Jun 2019 08:49:06 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 888B63F246;
 Tue, 11 Jun 2019 08:49:05 -0700 (PDT)
Date: Tue, 11 Jun 2019 16:49:03 +0100
From: Will Deacon <will.deacon@arm.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH 0/2] Allow assembly code to use BIT(), GENMASK(), etc.
 and clean-up arm64 header
Message-ID: <20190611154903.GH4324@fuggles.cambridge.arm.com>
References: <20190527083412.26651-1-yamada.masahiro@socionext.com>
 <20190605073406.geesp3rbrxajmac6@mbp>
 <CAK7LNAQJPMsRtNRYUH+dib0ZMAPqOe5HO0UcAW7zRdjyWWyQWQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK7LNAQJPMsRtNRYUH+dib0ZMAPqOe5HO0UcAW7zRdjyWWyQWQ@mail.gmail.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_084907_354322_3CDE4186 
X-CRM114-Status: GOOD (  18.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 05, 2019 at 06:01:10PM +0900, Masahiro Yamada wrote:
> On Wed, Jun 5, 2019 at 4:36 PM Catalin Marinas <catalin.marinas@arm.com> wrote:
> >
> > On Mon, May 27, 2019 at 05:34:10PM +0900, Masahiro Yamada wrote:
> > > Some in-kernel headers use _BITUL() instead of BIT().
> > >
> > >  arch/arm64/include/asm/sysreg.h
> > >  arch/s390/include/asm/*.h
> > >
> > > I think the reason is because BIT() is currently not available
> > > in assembly. It hard-codes 1UL, which is not available in assembly.
> > [...]
> > > Masahiro Yamada (2):
> > >   linux/bits.h: make BIT(), GENMASK(), and friends available in assembly
> > >   arm64: replace _BITUL() with BIT()
> > >
> > >  arch/arm64/include/asm/sysreg.h | 82 ++++++++++++++++-----------------
> > >  include/linux/bits.h            | 17 ++++---
> >
> > I'm not sure it's worth the hassle. It's nice to have the same BIT macro
> > but a quick grep shows arc, arm64, s390 and x86 using _BITUL. Maybe a
> > tree-wide clean-up would be more appropriate.
> 
> 
> I am happy to clean-up the others
> in the next development cycle
> once 1/2 lands in the mainline.
> 
> 
> Since there is no subsystem that
> takes care of include/linux/bits.h,
> I just asked Will to pick up both.
> I planed per-arch patch submission
> to reduce the possibility of merge conflict.
> 
> 
> If you guys are not willing to pick up them,
> is it better to send treewide conversion to Andrew?

I'm happy either way, so I've acked both of the patches.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
