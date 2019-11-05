Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44D16F0379
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 17:54:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hUTn/B9bXnY+inxG5qTf1podH+jK4NHqnamPbaTbUmk=; b=YzDKrEF2HuBvSq
	bpb6/ECDB+98Y9gV8VB6Mq+IDV6gpi52BacB3z0ncUxA5gklZlLVcLh76l5rl79MZvMeQYnZN/vEU
	ajEk5s2anOdF/LdGlen3yhzOmJzj/Wda4sEMkFOivLqqjQ+q2KcKdMwFcEQuxYSyveKS7nDs0Kg5p
	hFjRaRELvy5GbmroUMfVNz+NSgre4Qv9YZAXFdgX/dQjEwXH19O/4pvb1eG/jXDpDHOnlAQM+/Gzu
	vBgwo/qrpv8Fo/jSyalvp6GZa//JsG38oqij/EBDUKc0Lo48lbpYoPS7gD+djQTPkPVZofyucPjGi
	QqP2x8dOo9pUshY/gn9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS26U-0003CK-2Z; Tue, 05 Nov 2019 16:54:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS26L-0002xg-0d
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 16:54:42 +0000
Received: from arrakis.emea.arm.com (unknown [46.69.195.45])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B280921928;
 Tue,  5 Nov 2019 16:54:36 +0000 (UTC)
Date: Tue, 5 Nov 2019 16:54:33 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: Ensure VM_WRITE|VM_SHARED ptes are clean by default
Message-ID: <20191105165433.GD22987@arrakis.emea.arm.com>
References: <20191029153051.24367-1-catalin.marinas@arm.com>
 <CALAqxLXuxZVg0kqNQXF_dH17NzH9m14-Ci_rzruHzmms0V7pvg@mail.gmail.com>
 <20191105102902.GB29852@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191105102902.GB29852@willie-the-truck>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_085441_081510_B90BB192 
X-CRM114-Status: GOOD (  18.30  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
 John Stultz <john.stultz@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 05, 2019 at 10:29:03AM +0000, Will Deacon wrote:
> On Mon, Nov 04, 2019 at 05:16:42PM -0800, John Stultz wrote:
> > On Tue, Oct 29, 2019 at 8:31 AM Catalin Marinas <catalin.marinas@arm.com> wrote:
> > >
> > > Shared and writable mappings (__S.1.) should be clean (!dirty) initially
> > > and made dirty on a subsequent write either through the hardware DBM
> > > (dirty bit management) mechanism or through a write page fault. A clean
> > > pte for the arm64 kernel is one that has PTE_RDONLY set and PTE_DIRTY
> > > clear.
> > >
> > > The PAGE_SHARED{,_EXEC} attributes have PTE_WRITE set (PTE_DBM) and
> > > PTE_DIRTY clear. Prior to commit 73e86cb03cf2 ("arm64: Move PTE_RDONLY
> > > bit handling out of set_pte_at()"), it was the responsibility of
> > > set_pte_at() to set the PTE_RDONLY bit and mark the pte clean if the
> > > software PTE_DIRTY bit was not set. However, the above commit removed
> > > the pte_sw_dirty() check and the subsequent setting of PTE_RDONLY in
> > > set_pte_at() while leaving the PAGE_SHARED{,_EXEC} definitions
> > > unchanged. The result is that shared+writable mappings are now dirty by
> > > default
> > >
> > > Fix the above by explicitly setting PTE_RDONLY in PAGE_SHARED{,_EXEC}.
> > > In addition, remove the superfluous PTE_DIRTY bit from the kernel PROT_*
> > > attributes.
> > >
> > > Fixes: 73e86cb03cf2 ("arm64: Move PTE_RDONLY bit handling out of set_pte_at()")
> > > Cc: <stable@vger.kernel.org> # 4.14.x-
> > > Cc: Will Deacon <will@kernel.org>
> > > Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
[...]
> As an experiment, can you try reverting just the part of the patch that
> removes PTE_DIRTY from the PROT_* definitions? (see below)

Another thing worth trying is reverting commit 747a70e60b72 ("arm64: Fix
copy-on-write referencing in HugeTLB") when this patch is applied. That
commit is not just about hugetlb but changes pte_same() to ignore
PTE_RDONLY on the assumption that this is set by set_pte_at(). We
subsequently changed set_pte_at() to drop PTE_RDONLY.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
