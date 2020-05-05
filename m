Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BD031C5ED6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 19:30:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GLw7r7+6M1+X0R55awXZMGqjIdszXduxl1kHlsvvlME=; b=BE9iWpc2VqSxB/
	dMJO18ExBpknyx/D7SzWerULHWjYqLEDbL92rlTILZA07ea/jh3eDawDOEHPyS+aXAR0x1WFaooaY
	29IU0MmBJeofDE9nekFMDIGDQZ8Vmm5V8Ym3iqUGQVnKcHcBwfoz9AvOuhSNBItOrNEf+8a6B5EOJ
	llvlKR2ccfC7jPxng1aaunEqHsUVZmYsRRPcj/kbuL+OSBEM6Kyst02nfPZWWlXTvrD3cjq+lSDg4
	UNf+v/n9eaNQp8bRDjpa21sKpnn5MHcd8phiejRWz46UJM9Y6KY3vLXc3W+xjtR4WMmKvJC+DSkzr
	BJ1CjqnYBKCg/hlnVPEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW1P7-00036m-Cm; Tue, 05 May 2020 17:30:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW1P0-00035B-I1
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 17:30:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 39A4B31B;
 Tue,  5 May 2020 10:30:40 -0700 (PDT)
Received: from C02TF0J2HF1T.local (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CE3D63F305;
 Tue,  5 May 2020 10:30:36 -0700 (PDT)
Date: Tue, 5 May 2020 18:30:29 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Szabolcs Nagy <szabolcs.nagy@arm.com>
Subject: Re: [PATCH v3 23/23] arm64: mte: Add Memory Tagging Extension
 documentation
Message-ID: <20200505173029.GB81129@C02TF0J2HF1T.local>
References: <20200421142603.3894-1-catalin.marinas@arm.com>
 <20200421142603.3894-24-catalin.marinas@arm.com>
 <20200505103232.GE23080@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200505103232.GE23080@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_103042_644985_44F55E04 
X-CRM114-Status: GOOD (  21.04  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 nd@arm.com, Peter Collingbourne <pcc@google.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, linux-mm@kvack.org,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 05, 2020 at 11:32:33AM +0100, Szabolcs Nagy wrote:
> The 04/21/2020 15:26, Catalin Marinas wrote:
> > +PROT_MTE
> > +--------
> > +
> > +To access the allocation tags, a user process must enable the Tagged
> > +memory attribute on an address range using a new ``prot`` flag for
> > +``mmap()`` and ``mprotect()``:
> > +
> > +``PROT_MTE`` - Pages allow access to the MTE allocation tags.
> > +
> > +The allocation tag is set to 0 when such pages are first mapped in the
> > +user address space and preserved on copy-on-write. ``MAP_SHARED`` is
> > +supported and the allocation tags can be shared between processes.
> > +
> > +**Note**: ``PROT_MTE`` is only supported on ``MAP_ANONYMOUS`` and
> > +RAM-based file mappings (``tmpfs``, ``memfd``). Passing it to other
> > +types of mapping will result in ``-EINVAL`` returned by these system
> > +calls.
> > +
> > +**Note**: The ``PROT_MTE`` flag (and corresponding memory type) cannot
> > +be cleared by ``mprotect()``.
> 
> i think there are some non-obvious madvise operations that may
> be worth documenting too for mte specific semantics.
> 
> e.g. MADV_DONTNEED or MADV_FREE can presumably drop tags which
> means that existing pointers can no longer write to the memory
> which is a change of behaviour compared to the non-mte case.
> (affects most malloc implementations that will have to deal
> with this when implementing heap coloring) there might be other
> similar problems like MADV_WIPEONFORK that wont work as
> currently expected when mte is enabled.
> 
> if such behaviour changes cause serious problems to existing
> software there may be a need to have a way to opt out from
> these changes (e.g. MADV_ flag variant that only affects the
> memory content but not the tags) or to make that the default
> behaviour. (but i can't tell how widely these are used in
> ways that can be expected to work with PROT_MTE)

Thanks. I'll document this behaviour as it may not be obvious.

For the record (as we discussed this internally), I think the kernel
behaviour is entirely expected. On mmap(PROT_MTE), the kernel would
return pages with tags set to 0. On madvise(MADV_DONTNEED), the kernel
may free the pages but map them back on access using the same conditions
they were previously given to the user, i.e. tags set to 0. There isn't
any expectations for the kernel to preserve the tags of
MADV_DONTNEED/FREE pages (which defeats the point of dontneed/free).

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
