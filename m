Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6659B1D7A71
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 15:52:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2bIaXnQgxrBeKVObLy32BaAHA3sSgbo2fybr9xaWHVk=; b=Tjdu+hWVLrDgAD
	3AT9V3n0idMrF5MtzAUGp5dqFahPQbV7LCSWw/VntUfHQ+4EQeW95w2eZguATp6zMtswrcs+mbM7B
	N6eQKZ/8pVAmZQ4Rz0qn2Lah3aQ+WLKICvvABtvsdMr93vxE8MMPqcIwYW/K5LiHdNjWC7nQ5SysT
	v2R3Cans4BvCAq6ZAJ+H0oiMa9vl3MpiOtf4MSldYLbjifNbSvbmfM56YsUnSwfs/VPLt+taaH8/S
	KwyiPdBegDzF9BTDfXKDovNPNtwPtSCVafqanb8Ybwn76LiyssfhWYN9cIrVGHHFSvG+Wk0JUFDrj
	MMXspAC//AJ3bXe9X9qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jagCA-0005Ng-R9; Mon, 18 May 2020 13:52:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jagC2-0005Mv-AY
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 13:52:35 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 359B620674;
 Mon, 18 May 2020 13:52:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589809953;
 bh=FoiYOz4QyATjVtvdKit+fH6+X62jW8zsWpf3orvuR0o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TAlJYXMMZPIGoj5i+W8MUJP0XoNSSMUHGxPeM8QWX0jg1p1dZCt0MNfdW6ku7MAv8
 y8r2GTZLOg48MhSu4Bag6l3x0GlK+TU0MFOj71N8O7J9FvkIYcM0H8NjXqv5qf2Tlp
 uctkHwR5+RSeZrcCawxBQYukK+AmCsmSqTaLFkhE=
Date: Mon, 18 May 2020 14:52:29 +0100
From: Will Deacon <will@kernel.org>
To: Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH 0/6] Clean up Shadow Call Stack patches for 5.8
Message-ID: <20200518135228.GI32394@willie-the-truck>
References: <20200515172756.27185-1-will@kernel.org>
 <CABCJKucXmMD82mQ0rSMjfByXD42htTjkde3TsKTVP-jvuqkZwQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABCJKucXmMD82mQ0rSMjfByXD42htTjkde3TsKTVP-jvuqkZwQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_065234_382888_74CF98EA 
X-CRM114-Status: GOOD (  13.03  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, LKML <linux-kernel@vger.kernel.org>,
 Mark Rutland <mark.rutland@am.com>, kernel-team@android.com,
 Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 15, 2020 at 01:42:40PM -0700, Sami Tolvanen wrote:
> On Fri, May 15, 2020 at 10:28 AM Will Deacon <will@kernel.org> wrote:
> > Will Deacon (6):
> >   arm64: scs: Store absolute SCS stack pointer value in thread_info
> >   scs: Move accounting into alloc/free functions
> >   arm64: scs: Use 'scs_sp' register alias for x18
> >   scs: Move scs_overflow_check() out of architecture code
> >   scs: Remove references to asm/scs.h from core code
> >   scs: Move DEFINE_SCS macro into core code
> >
> >  arch/Kconfig                         |  4 +--
> >  arch/arm64/include/asm/scs.h         | 29 ++++------------
> >  arch/arm64/include/asm/thread_info.h |  4 +--
> >  arch/arm64/kernel/asm-offsets.c      |  2 +-
> >  arch/arm64/kernel/entry.S            | 10 +++---
> >  arch/arm64/kernel/head.S             |  2 +-
> >  arch/arm64/kernel/process.c          |  2 --
> >  arch/arm64/kernel/scs.c              |  6 +---
> >  include/linux/scs.h                  | 16 +++++----
> >  kernel/sched/core.c                  |  3 ++
> >  kernel/scs.c                         | 52 +++++++++++++---------------
> >  11 files changed, 55 insertions(+), 75 deletions(-)
> >
> > --
> > 2.26.2.761.g0e0b3e54be-goog
> 
> Thanks, Will. I tested these on my SCS tree and didn't run into any
> issues. Looks good to me.

Cheers, Sami. Can I add your 'Tested-by' to the patches, please?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
