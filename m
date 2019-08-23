Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0386A9B207
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 16:32:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zwbGX8toSjl2ILqcO+dOsqwwdY/Mei6xxPl0f+da9UM=; b=kBxN3eA941pmfK
	JVhS7NciBSQvMnt7IuxMGVVqCW9IwpJd9Op6Tuv5AoV16/WTeM+w6FSDxR6/54dgFXu2mh8P8WY2n
	/j3a9I8Y4l+ZQuyLA7KDzJQFP5lK5hfH7n9x2v1S0FgD9eVdwJn+J2x8k0hYUNbuvqGHFpqNQlIWJ
	hkt3404nV4N19HCKJhtMA6RRfNQMcKT8FTYKcJ0qnsQAtcnffzKXfpTF4a/oy3QGMk+RnqBHMakvu
	Hi4Znt1XesqeaQHez5QrvTFQF1FGqxffPyFTnyqscr0ZSVg2jl4DmYjWJCDnEz87mtmHGuhvOmSdO
	55VYEQwHjqT/TTQKlmjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Abn-0006Od-4d; Fri, 23 Aug 2019 14:32:07 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Abe-0006MR-Md; Fri, 23 Aug 2019 14:31:58 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id C134B30759B;
 Fri, 23 Aug 2019 16:31:23 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 05CF4202245C6; Fri, 23 Aug 2019 16:31:55 +0200 (CEST)
Date: Fri, 23 Aug 2019 16:31:55 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 4/6] x86: remove set_memory_x and set_memory_nx
Message-ID: <20190823143155.GD2332@hirez.programming.kicks-ass.net>
References: <20190813090146.26377-1-hch@lst.de>
 <20190813090146.26377-5-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190813090146.26377-5-hch@lst.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: Dave Hansen <dave.hansen@linux.intel.com>,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, Andy Lutomirski <luto@kernel.org>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 11:01:44AM +0200, Christoph Hellwig wrote:
> These wrappers don't provide a real benefit over just using
> set_memory_x and set_memory_nx.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  arch/x86/include/asm/set_memory.h  |  2 --
>  arch/x86/kernel/machine_kexec_32.c |  4 ++--
>  arch/x86/mm/init_32.c              |  2 +-
>  arch/x86/mm/pageattr.c             | 16 ----------------
>  4 files changed, 3 insertions(+), 21 deletions(-)
> 
> diff --git a/arch/x86/include/asm/set_memory.h b/arch/x86/include/asm/set_memory.h
> index 899ec9ae7cff..fd549c3ebb17 100644
> --- a/arch/x86/include/asm/set_memory.h
> +++ b/arch/x86/include/asm/set_memory.h
> @@ -75,8 +75,6 @@ int set_pages_array_wb(struct page **pages, int addrinarray);
>  
>  int set_pages_uc(struct page *page, int numpages);
>  int set_pages_wb(struct page *page, int numpages);
> -int set_pages_x(struct page *page, int numpages);
> -int set_pages_nx(struct page *page, int numpages);
>  int set_pages_ro(struct page *page, int numpages);
>  int set_pages_rw(struct page *page, int numpages);

$Subject and patch content don't match up.

Other than that,

Acked-by: Peter Zijlstra (Intel) <peterz@infradead.org>

for all x86 patches.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
