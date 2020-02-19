Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3297164F0E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 20:40:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v8XbMGDl3/6B7aXBLZgwwDObugUKyXbNIvgoLPGWoVM=; b=au0q5sb0lIOKrj
	jBfmaZurQRzI0lQxVFvqcC9+DH8fJ+xCGl0jmfwYm5ffia2G8Y8TRpkgN0kC3O8uf/WZp4Ze4H25E
	O/soIQaXoIJddIuXhzh3hvtIyeHV2GcdVGBzPwSXcZdtfL3OphSO+csEXWiqlso8fwdkCWv7J/Yor
	2htsLwLTNoxxbqtEitdygqZ84Aw/ObhyrBq8kwiPVGlVj6tGUxhpOrVjMzfbnd9nhDZvS1V3nL/ai
	MlIyCtVjS+nDb3xJYVT/Nfdb9cvfcVoIkNe0MDf21mIhjlae4KMnkDxZYavS1lAh1Ys+nVi+/sCvj
	LtT/3KVLiUq5Gru5lXzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4VCx-0003aw-Go; Wed, 19 Feb 2020 19:40:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4VCp-0003a5-CB
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 19:40:24 +0000
Received: from X1 (nat-ab2241.sltdut.senawave.net [162.218.216.4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C6FC0206DB;
 Wed, 19 Feb 2020 19:40:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582141221;
 bh=zA4WbZt1RU4Jf8KjArYOGBQKdWZtq7HFpafj6fev344=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=q/HySXNn/jrJLMXzHErwVhZqTdTNZUPTK0tc8rZSX/ZeMXkeA4ZbVI0e9BRikOXI1
 Myzpv+Lw1xi9iD3LarBq6lxdBpwpVkWRbAosDDyPufiya9lGIOWltkX6+c3eXykv6u
 kjDPuSHwnES88H2d1ESuJhjpIing1Ib8tUXN9Htc=
Date: Wed, 19 Feb 2020 11:40:20 -0800
From: Andrew Morton <akpm@linux-foundation.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v2] mm: Avoid creating virtual address aliases in
 brk()/mmap()/mremap()
Message-Id: <20200219114020.0d6c730abce1cdd77e4e5487@linux-foundation.org>
In-Reply-To: <20200219134602.GB21366@willie-the-truck>
References: <20200219123156.86952-1-catalin.marinas@arm.com>
 <20200219134602.GB21366@willie-the-truck>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_114023_437183_CCBD5D87 
X-CRM114-Status: GOOD (  17.26  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Florian Weimer <fweimer@redhat.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>, linux-mm@kvack.org,
 Victor Stinner <vstinner@redhat.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 19 Feb 2020 13:46:03 +0000 Will Deacon <will@kernel.org> wrote:

> On Wed, Feb 19, 2020 at 12:31:56PM +0000, Catalin Marinas wrote:
> > Currently the arm64 kernel ignores the top address byte passed to brk(),
> > mmap() and mremap(). When the user is not aware of the 56-bit address
> > limit or relies on the kernel to return an error, untagging such
> > pointers has the potential to create address aliases in user-space.
> > Passing a tagged address to munmap(), madvise() is permitted since the
> > tagged pointer is expected to be inside an existing mapping.
> > 
> > The current behaviour breaks the existing glibc malloc() implementation
> > which relies on brk() with an address beyond 56-bit to be rejected by
> > the kernel.
> > 
> > Remove untagging in the above functions by partially reverting commit
> > ce18d171cb73 ("mm: untag user pointers in mmap/munmap/mremap/brk"). In
> > addition, update the arm64 tagged-address-abi.rst document accordingly.
> > 
> > Link: https://bugzilla.redhat.com/1797052
> > Fixes: ce18d171cb73 ("mm: untag user pointers in mmap/munmap/mremap/brk")
> > Cc: <stable@vger.kernel.org> # 5.4.x-
> > Cc: Andrew Morton <akpm@linux-foundation.org>
> > Cc: Florian Weimer <fweimer@redhat.com>
> > Reported-by: Victor Stinner <vstinner@redhat.com>
> > Acked-by: Will Deacon <will@kernel.org>
> > Acked-by: Andrey Konovalov <andreyknvl@google.com>
> > Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> > ---
> > 
> > Changes in v2:
> > 
> > - Added note to tagged-address-abi.rst that this behaviour changed in v5.6 and
> >   some older kernel may still have the old behaviour.
> > 
> > - Updated the commit log to make it clearer we broke the user ABI, also adding
> >   link to the Red Hat bugzilla entry.
> 
> Cheers, I'll queue this up as I have a couple of other arm64 fixes pending
> now. (Andrew, please shout if you'd prefer to take it).

Please go ahead.

Reviewed-by: Andrew Morton <akpm@linux-foundation.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
