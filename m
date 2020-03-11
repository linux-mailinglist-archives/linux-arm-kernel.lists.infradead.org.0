Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 234AB1825F1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 00:38:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZCz54186HIK+XgZFGIiu/uTag585+woQ257i6Rtjix8=; b=IcZgUKXXR9Fi7W
	EGkszzw3Oad56sKFJhUw1jC5z06dWi8ZZccmBlYaptiLRBx2AOs+rQqxe5BRNQIOku7Zx2zvEymKo
	sdunw8wf2agqRVYP5jyWvM+nd/x4KCA33pILLzeQ2lRX2FP7KgbBFR/zEVBwYmL4Mkmp8ArONKpHs
	p/R5WycTZ33jvNijOgMlS/YZTk+Oxl8AihpDwOUUnXfWv0Vqc3QbUPGfLUkgzCw4uvJDyaqcNiIYh
	7Knd4VrhiVUAiwoEOXmtuQxaviZS4SynBNocu4mOmzQUTdhTGMd/X5o/9oqJIIcZgJLlJKkBR3a3a
	YQ/keMai1AR3IYYdlkvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCAvT-0006l7-Dq; Wed, 11 Mar 2020 23:38:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCAvL-0006ke-9B
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 23:38:04 +0000
Received: from localhost.localdomain (c-73-231-172-41.hsd1.ca.comcast.net
 [73.231.172.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 61D4A20754;
 Wed, 11 Mar 2020 23:38:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583969881;
 bh=tYse/b2VgvRrHBIlQlCMRUOHJDMPsP7MDl/1tT5CHKA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=fRsZjvD6guoPFk2BEwdeTGQoG+yB0UFjHX5rYzIeElepPrrkmGa8tHDNkI/3bJcjw
 c6HaCi4KjYzlUuyPlnw5PKl3e2cpomqfzDKAFyF0Ka8sRL4rq/8GhcXDVckxbfx5x/
 ++T4pZu93SiPDvEq388UoOwzyE2RnNP1+OiqA2Z0=
Date: Wed, 11 Mar 2020 16:38:00 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Walter Wu <walter-zh.wu@mediatek.com>
Subject: Re: [PATCH -next] kasan: fix -Wstringop-overflow warning
Message-Id: <20200311163800.a264d4ec8f26cca7bb5046fb@linux-foundation.org>
In-Reply-To: <20200311134244.13016-1-walter-zh.wu@mediatek.com>
References: <20200311134244.13016-1-walter-zh.wu@mediatek.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_163803_341496_F1DEB46D 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 wsd_upstream <wsd_upstream@mediatek.com>, linux-kernel@vger.kernel.org,
 kasan-dev@googlegroups.com, linux-mm@kvack.org, Qian Cai <cai@lca.pw>,
 linux-arm-kernel@lists.infradead.org,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Alexander Potapenko <glider@google.com>, Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 11 Mar 2020 21:42:44 +0800 Walter Wu <walter-zh.wu@mediatek.com> wrote:

> Compiling with gcc-9.2.1 points out below warnings.
> 
> In function 'memmove',
>     inlined from 'kmalloc_memmove_invalid_size' at lib/test_kasan.c:301:2:
> include/linux/string.h:441:9: warning: '__builtin_memmove' specified
> bound 18446744073709551614 exceeds maximum object size
> 9223372036854775807 [-Wstringop-overflow=]
> 
> Why generate this warnings?
> Because our test function deliberately pass a negative number in memmove(),
> so we need to make it "volatile" so that compiler doesn't see it.
> 
> ...
>
> --- a/lib/test_kasan.c
> +++ b/lib/test_kasan.c
> @@ -289,6 +289,7 @@ static noinline void __init kmalloc_memmove_invalid_size(void)
>  {
>  	char *ptr;
>  	size_t size = 64;
> +	volatile size_t invalid_size = -2;
>  
>  	pr_info("invalid size in memmove\n");
>  	ptr = kmalloc(size, GFP_KERNEL);
> @@ -298,7 +299,7 @@ static noinline void __init kmalloc_memmove_invalid_size(void)
>  	}
>  
>  	memset((char *)ptr, 0, 64);
> -	memmove((char *)ptr, (char *)ptr + 4, -2);
> +	memmove((char *)ptr, (char *)ptr + 4, invalid_size);
>  	kfree(ptr);
>  }

Huh.  Why does this trick suppress the warning?

Do we have any guarantee that this it will contiue to work in future
gcc's?



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
