Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32FA47DF9B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 18:00:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lLe2qU0q48ewn7cRJK/Z1q1mjFq/Wypydp21NLha0O8=; b=HlMY7jIIr8lDgS
	szDH/B1qaUOUHKL0vQF9gxFvVMk8C875T8yORRUuvmTUHZzBnCSb5Rc5GGaDJfBDTNq04n9GRZEq5
	SsjZeDSymP+VNc899DoVwkx1/YXt2CSod/wxqPUtABMLhiPZwIoy+/xdAosbb67J9QynrW7gtc5y+
	ISsQTjdUkwGJCb3iP2VXS6FxA94ai4Erhxg58fsZuj8FNpoV9++bcDy0ObsmLEDAgjmkDx4yge6xW
	6k9jDGxiO96QDQN8rLsFi20BlbH2uTXaMHAqeoKLZE2iMV7Y6hFwETKxu0ihbNDO1ZLQFHMGfH322
	JXyQZoacEH92grLeejvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htDVG-0002Am-G5; Thu, 01 Aug 2019 16:00:30 +0000
Received: from willy by bombadil.infradead.org with local (Exim 4.92 #3 (Red
 Hat Linux)) id 1htDUz-00024S-4b; Thu, 01 Aug 2019 16:00:13 +0000
Date: Thu, 1 Aug 2019 09:00:13 -0700
From: Matthew Wilcox <willy@infradead.org>
To: Qian Cai <cai@lca.pw>
Subject: Re: [PATCH v2] arm64/mm: fix variable 'tag' set but not used
Message-ID: <20190801160013.GK4700@bombadil.infradead.org>
References: <1564670825-4050-1-git-send-email-cai@lca.pw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1564670825-4050-1-git-send-email-cai@lca.pw>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 kasan-dev@googlegroups.com, linux-mm@kvack.org, glider@google.com,
 linux-arm-kernel@lists.infradead.org, andreyknvl@google.com,
 aryabinin@virtuozzo.com, will@kernel.org, dvyukov@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 01, 2019 at 10:47:05AM -0400, Qian Cai wrote:

Given this:

> -#define __tag_set(addr, tag)	(addr)
> +static inline const void *__tag_set(const void *addr, u8 tag)
> +{
> +	return addr;
> +}
> +
>  #define __tag_reset(addr)	(addr)
>  #define __tag_get(addr)		0
>  #endif
> @@ -301,8 +305,8 @@ static inline void *phys_to_virt(phys_addr_t x)
>  #define page_to_virt(page)	({					\
>  	unsigned long __addr =						\
>  		((__page_to_voff(page)) | PAGE_OFFSET);			\
> -	unsigned long __addr_tag =					\
> -		 __tag_set(__addr, page_kasan_tag(page));		\
> +	const void *__addr_tag =					\
> +		__tag_set((void *)__addr, page_kasan_tag(page));	\
>  	((void *)__addr_tag);						\
>  })

Can't you simplify that macro to:

 #define page_to_virt(page)	({					\
 	unsigned long __addr =						\
 		((__page_to_voff(page)) | PAGE_OFFSET);			\
-	unsigned long __addr_tag =					\
-		 __tag_set(__addr, page_kasan_tag(page));		\
-	((void *)__addr_tag);						\
+	__tag_set((void *)__addr, page_kasan_tag(page));		\
 })

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
