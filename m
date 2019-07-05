Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D313608C9
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 17:11:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LMamNXKj3EVVQOsmIzL83pzwJn2iH2535E5za//lkL8=; b=WrXy3nomVRybb0
	A/6FulWbTw91+SEOscdSm08zSwymBSOBWNbn0CU0cj4RdbSOrln535Gj4ktnjUG4r8OQS+6ARdZR0
	jCEpr4mJIZcHBo4UCXownTJS2MJbSp8MYItkjsAHaA9Wmrp5hO1VIBmuFdWG6VWj9sRtpO47OjFWX
	WMfRW0bClNXo/mYikx1owPZfXbtKDaSxen6NhvN+LH5u6Q8WTaRL5lbI+Fn9dGAggWjMvHcF3nAU3
	5UzUs82Q50lREMaLeMvU4vxEXugsv9D42LfZqRRc+i7VTD5Iex8Kb+T1m27IlDMN765EiC6mHYnSj
	vjcytjUhsU3skskE5Ong==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjPrp-0006m1-On; Fri, 05 Jul 2019 15:11:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hjPrj-0006lK-4q
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 15:11:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 63BDE28;
 Fri,  5 Jul 2019 08:11:08 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6DEBB3F246;
 Fri,  5 Jul 2019 08:11:05 -0700 (PDT)
Subject: Re: [PATCH] arm64: mm: free the initrd reserved memblock in a aligned
 manner
To: Yi Wang <wang.yi59@zte.com.cn>
References: <1562198340-19089-1-git-send-email-wang.yi59@zte.com.cn>
From: James Morse <james.morse@arm.com>
Message-ID: <079e43f4-fa25-98fc-835d-c3f9b96cb14f@arm.com>
Date: Fri, 5 Jul 2019 16:11:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1562198340-19089-1-git-send-email-wang.yi59@zte.com.cn>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_081111_232372_E6115536 
X-CRM114-Status: GOOD (  17.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: f.fainelli@gmail.com, jiang.xuexin@zte.com.cn, david@redhat.com,
 catalin.marinas@arm.com, will.deacon@arm.com, robin.murphy@arm.com,
 linux-kernel@vger.kernel.org, rppt@linux.vnet.ibm.com, xue.zhihong@zte.com.cn,
 hannes@cmpxchg.org, Junhua Huang <huang.junhua@zte.com.cn>,
 akpm@linux-foundation.org, logang@deltatee.com,
 linux-arm-kernel@lists.infradead.org, ghackmann@android.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 04/07/2019 00:59, Yi Wang wrote:
> From: Junhua Huang <huang.junhua@zte.com.cn>
> 
> We should free the reserved memblock in an aligned manner 
> because the initrd reserves the memblock in an aligned manner 
> in arm64_memblock_init(). 
> Otherwise there are some fragments in memblock_reserved regions. e.g.:
> /sys/kernel/debug/memblock # cat reserved 
>    0: 0x0000000080080000..0x00000000817fafff
>    1: 0x0000000083400000..0x0000000083ffffff
>    2: 0x0000000090000000..0x000000009000407f
>    3: 0x00000000b0000000..0x00000000b000003f
>    4: 0x00000000b26184ea..0x00000000b2618fff
> The fragments like the ranges from b0000000 to b000003f and 
> from b26184ea to b2618fff should be freed.
> 
> And we can do free_reserved_area() after memblock_free(),
> as free_reserved_area() calls __free_pages(), once we've done 
> that it could be allocated somewhere else, 
> but memblock and iomem still say this is reserved memory.
> 
> Signed-off-by: Junhua Huang <huang.junhua@zte.com.cn>

You need to add your own Signed-off-by after Junhua Huang's. This tells the maintainer
that you're providing the patch with the 'Developer's Certificate of Origin'. Details in
/Documentation/process/submitting-patches.rst.


> diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
> index d2adffb81b5d..03774b8bd364 100644
> --- a/arch/arm64/mm/init.c
> +++ b/arch/arm64/mm/init.c
> @@ -580,8 +580,13 @@ void free_initmem(void)
>  #ifdef CONFIG_BLK_DEV_INITRD
>  void __init free_initrd_mem(unsigned long start, unsigned long end)
>  {
> +	unsigned long aligned_start, aligned_end;
> +
> +	aligned_start = __virt_to_phys(start) & PAGE_MASK;
> +	aligned_end = PAGE_ALIGN(__virt_to_phys(end));

> +	memblock_free(aligned_end, aligned_end - aligned_start);

We're not free-ing the same memory as we reserved here!
(start/end typo)

>  	free_reserved_area((void *)start, (void *)end, 0, "initrd");
> -	memblock_free(__virt_to_phys(start), end - start);
> +

(stray newline)

>  }
>  #endif


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
