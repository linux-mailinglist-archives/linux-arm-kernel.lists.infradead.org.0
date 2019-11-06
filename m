Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD573F119C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 10:00:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fw9sJe8kWTyC2VLhqCco6lRdDjwMAxR7YRheoQCI18o=; b=rZoUS0JzheRrHI
	ngVYwYWjEoRDGlzbieQ/oy1Remh8NDlPBlEwDz6VKXW+1KjcqtvrGmnwbzHK6oeKi65gzSNlIQVfA
	M9jEudA5Q3xzXKanypbRtHD4B1Ss/+pmZg0K1ro/lLWxzkfnEaVLD/6mZqjv0UAK+JqL9PIxVIU4W
	6rvTi9opdfsSWrK1MRG+BXYB8qpMQNq5YDV3ZqZ2novCk9VQjYzKHGm/tkn4+r4lThshP7Hlf4H9v
	qENUcBG/gUP4pBDTvaR09ZMjbgLkskZ1jYKi+1wAtCjtsx+nK+7B3G9bGGxNIE7mO0Uszq9fs5Phx
	m6/+/CjQx9oUlVX7/EHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSHAk-00019j-0i; Wed, 06 Nov 2019 09:00:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSHAQ-00018I-TL
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 08:59:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F38B930E;
 Wed,  6 Nov 2019 00:59:42 -0800 (PST)
Received: from arrakis.emea.arm.com (unknown [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EE9493F71A;
 Wed,  6 Nov 2019 00:59:41 -0800 (PST)
Date: Wed, 6 Nov 2019 08:59:39 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: John Stultz <john.stultz@linaro.org>
Subject: Re: [PATCH] arm64: Ensure VM_WRITE|VM_SHARED ptes are clean by default
Message-ID: <20191106085939.GC21133@arrakis.emea.arm.com>
References: <20191029153051.24367-1-catalin.marinas@arm.com>
 <CALAqxLXuxZVg0kqNQXF_dH17NzH9m14-Ci_rzruHzmms0V7pvg@mail.gmail.com>
 <20191105102902.GB29852@willie-the-truck>
 <20191105165433.GD22987@arrakis.emea.arm.com>
 <CALAqxLWYJvHO3YYbQHmgg0yThx_kqM7HBFnnxrcWkG1-LXeCQQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALAqxLWYJvHO3YYbQHmgg0yThx_kqM7HBFnnxrcWkG1-LXeCQQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_005955_932615_9F43EC03 
X-CRM114-Status: GOOD (  21.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Alistair Delva <adelva@google.com>, Sandeep Patil <sspatil@google.com>,
 Steve Capper <Steve.Capper@arm.com>, stable <stable@vger.kernel.org>,
 Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 05, 2019 at 01:17:11PM -0800, John Stultz wrote:
> On Tue, Nov 5, 2019 at 8:54 AM Catalin Marinas <catalin.marinas@arm.com> wrote:
> > On Tue, Nov 05, 2019 at 10:29:03AM +0000, Will Deacon wrote:
> > > On Mon, Nov 04, 2019 at 05:16:42PM -0800, John Stultz wrote:
> > > > On Tue, Oct 29, 2019 at 8:31 AM Catalin Marinas <catalin.marinas@arm.com> wrote:
> > > > >
> > > > > Shared and writable mappings (__S.1.) should be clean (!dirty) initially
> > > > > and made dirty on a subsequent write either through the hardware DBM
> > > > > (dirty bit management) mechanism or through a write page fault. A clean
> > > > > pte for the arm64 kernel is one that has PTE_RDONLY set and PTE_DIRTY
> > > > > clear.
> > > > >
> > > > > The PAGE_SHARED{,_EXEC} attributes have PTE_WRITE set (PTE_DBM) and
> > > > > PTE_DIRTY clear. Prior to commit 73e86cb03cf2 ("arm64: Move PTE_RDONLY
> > > > > bit handling out of set_pte_at()"), it was the responsibility of
> > > > > set_pte_at() to set the PTE_RDONLY bit and mark the pte clean if the
> > > > > software PTE_DIRTY bit was not set. However, the above commit removed
> > > > > the pte_sw_dirty() check and the subsequent setting of PTE_RDONLY in
> > > > > set_pte_at() while leaving the PAGE_SHARED{,_EXEC} definitions
> > > > > unchanged. The result is that shared+writable mappings are now dirty by
> > > > > default
> > > > >
> > > > > Fix the above by explicitly setting PTE_RDONLY in PAGE_SHARED{,_EXEC}.
> > > > > In addition, remove the superfluous PTE_DIRTY bit from the kernel PROT_*
> > > > > attributes.
> > > > >
> > > > > Fixes: 73e86cb03cf2 ("arm64: Move PTE_RDONLY bit handling out of set_pte_at()")
> > > > > Cc: <stable@vger.kernel.org> # 4.14.x-
> > > > > Cc: Will Deacon <will@kernel.org>
> > > > > Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> > [...]
> > > As an experiment, can you try reverting just the part of the patch that
> > > removes PTE_DIRTY from the PROT_* definitions? (see below)
> >
> > Another thing worth trying is reverting commit 747a70e60b72 ("arm64: Fix
> > copy-on-write referencing in HugeTLB") when this patch is applied. That
> > commit is not just about hugetlb but changes pte_same() to ignore
> > PTE_RDONLY on the assumption that this is set by set_pte_at(). We
> > subsequently changed set_pte_at() to drop PTE_RDONLY.
> 
> Just to confirm, reverting 747a70e60b72 instead of aa57157be69f also
> seems to avoid the issue I'm seeing.

Thanks for confirming. I'm not sure about all the interactions in your
kernel but just looking at commit 747a70e60b72 it likely needs to be
reverted anyway. I'll send a separate patch and hopefully Steve can
confirm that it doesn't break the original hugetlb use-case.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
