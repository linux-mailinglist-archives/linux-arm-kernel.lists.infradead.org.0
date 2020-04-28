Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0477C1BD031
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 00:53:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M1Jfiza63lW/qK2w5g1cDNeUKbxSNdTBu1bzdrOMmH4=; b=ZayUw4+UGTyvgy
	+N+vsYdKOs6g9vLpOhP19g5XhLfhE9riW9+Mi8sQELuRXXH7xtqZ07OzHmIAlaEGAfNzQZd5ZjYa/
	xmNcUj5GwhOLgE4nnNy2IaW83Eh+B5ALn53YYIUiJEryeqckYQFhkYIa0uJJnDSdhuqmUMwMDOiYy
	DtXHjnYa13oFY8VhtuZI8r73SCq2DT7S+uT4oFI/TqfAOAIkEUe4BayUyLOgZ5eIMiWJZlEOyDnCa
	OkUlAvG08ZKyHh4bclYOy6+Gp8M+fN6bC1ZX9u/tVzs4b+lNQgYByP2fKQUNTfiydrjJbvteSSwaW
	rpIsIbQM5IyJD+y8+FNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTZ66-0008RD-K8; Tue, 28 Apr 2020 22:53:02 +0000
Received: from willy by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jTZ5w-0008Qz-1R; Tue, 28 Apr 2020 22:52:52 +0000
Date: Tue, 28 Apr 2020 15:52:51 -0700
From: Matthew Wilcox <willy@infradead.org>
To: Ira Weiny <ira.weiny@intel.com>
Subject: Re: [PATCH 1/7] mm: Document x86 uses a linked list of pgds
Message-ID: <20200428225251.GM29705@bombadil.infradead.org>
References: <20200428194449.22615-1-willy@infradead.org>
 <20200428194449.22615-2-willy@infradead.org>
 <20200428214109.GB406458@iweiny-DESK2.sc.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200428214109.GB406458@iweiny-DESK2.sc.intel.com>
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
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, linux-m68k@lists.linux-m68k.org,
 Geert Uytterhoeven <geert@linux-m68k.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 28, 2020 at 02:41:09PM -0700, Ira Weiny wrote:
> On Tue, Apr 28, 2020 at 12:44:43PM -0700, Matthew Wilcox wrote:
> > x86 uses page->lru of the pages used for pgds, but that's not immediately
> > obvious to anyone looking to make changes.  Add a struct list_head to
> > the union so it's clearly in use for pgds.
> 
> Shouldn't pgd_list_{add,del}() use this list head variable instead of lru to
> complete the documentation?
> 
> Probably the list iteration loops arch/x86/* as well?

Yes, but I felt that was out of scope for this patchset.  Untangling the
uses of struct page is a long and messy business; if we have to fix
everything at once, we'll never get anywhere.  There's also the slab
users of page->lru instead of page->slab_list.

What I actually want to get to is:

struct page {
	unsigned long flags;
	union {
		struct file_page file;
		struct anon_page anon;
		struct pt_page pt;
		struct slab_page slab;
		struct tail_page tail;
		struct rcu_head rcu;
	};
	union {
		atomic_t _mapcount;
		...
	};
	atomic_t refcount;
	...
};

and then we can refer to page->pt.list and so on.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
