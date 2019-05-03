Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC9B012F11
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 15:27:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T5eUfVVXueVkc/Z1++XBwuUbp8XkQT98L8z30ktDugU=; b=avlK/+BKkfUXBy
	Dgs6Kb/n3t/4xDrg5pG+ZGZpqiv+EuIEDYzYq/aJhE/wf3iUVX088BKEWyEdj48syQRb6zDst2PRw
	XUPtN32yz6U1dcjw2N4AgRs7UsxJbaaWZ7gngocrIqx7+IUluQWnt6TpCmRmpdn/Rz4XVmgH8SFSn
	1x/bpdvwzNM3kXxmWmhyFq6iTZ9Cizd23D+cJDjpq5Y+Kr28xPASksuFovxO9swUEnBmYwqVmiznw
	HomQMLE23RIRKRzUANkZXJke6lcv+tLoQP8Iy+vWHSBt5MKmxY3M4ZmrAit89z9lufl/TJA67HSWR
	XR/UADBH23G8D/qDPPQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMYE0-0006ZV-QP; Fri, 03 May 2019 13:27:40 +0000
Received: from willy by bombadil.infradead.org with local (Exim 4.90_1 #2 (Red
 Hat Linux)) id 1hMYDu-0006ZD-4h; Fri, 03 May 2019 13:27:34 +0000
Date: Fri, 3 May 2019 06:27:33 -0700
From: Matthew Wilcox <willy@infradead.org>
To: Martin Schwidefsky <schwidefsky@de.ibm.com>
Subject: Re: [PATCH] mm/pgtable: Drop pgtable_t variable from pte_fn_t
 functions
Message-ID: <20190503132733.GA5201@bombadil.infradead.org>
References: <1556803126-26596-1-git-send-email-anshuman.khandual@arm.com>
 <20190502134623.GA18948@bombadil.infradead.org>
 <20190502161457.1c9dbd94@mschwideX1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190502161457.1c9dbd94@mschwideX1>
User-Agent: Mutt/1.9.2 (2017-12-15)
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Michal Hocko <mhocko@suse.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, dri-devel@lists.freedesktop.org,
 linux-mm@kvack.org, linux-efi@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, Ingo Molnar <mingo@redhat.com>,
 xen-devel@lists.xenproject.org, Anshuman Khandual <anshuman.khandual@arm.com>,
 intel-gfx@lists.freedesktop.org, jglisse@redhat.com,
 Mike Rapoport <rppt@linux.vnet.ibm.com>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-kernel@vger.kernel.org,
 akpm@linux-foundation.org, Logan Gunthorpe <logang@deltatee.com>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 02, 2019 at 04:14:57PM +0200, Martin Schwidefsky wrote:
> On Thu, 2 May 2019 06:46:23 -0700
> Matthew Wilcox <willy@infradead.org> wrote:
> 
> > On Thu, May 02, 2019 at 06:48:46PM +0530, Anshuman Khandual wrote:
> > > Drop the pgtable_t variable from all implementation for pte_fn_t as none of
> > > them use it. apply_to_pte_range() should stop computing it as well. Should
> > > help us save some cycles.  
> > 
> > You didn't add Martin Schwidefsky for some reason.  He introduced
> > it originally for s390 for sub-page page tables back in 2008 (commit
> > 2f569afd9c).  I think he should confirm that he no longer needs it.
> 
> With its 2K pte tables s390 can not deal with a (struct page *) as a reference
> to a page table. But if there are no user of the apply_to_page_range() API
> left which actually make use of the token argument we can safely drop it.

Interestingly, I don't think there ever was a user which used that
argument.  Looking at your 2f56 patch, you only converted one function
(presumably there was only one caller of apply_to_page_range() at the
time), and it didn't u se any of the arguments.  Xen was the initial user,
and the two other functions they added also didn't use that argument.

Looking at a quick sample of users added since, none of them appear to
have ever used that argument.  So removing it seems best.

Acked-by: Matthew Wilcox <willy@infradead.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
