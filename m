Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DBF21AB5F4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 04:39:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:MIME-Version:In-Reply-To:
	References:To:Subject:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ReYhaQ0L/RiKOe1HH0ului1RMFNJnyAQIohGXNnrxz4=; b=EeLFjM7dtaIqtK
	Yq0izooqFMQnYGoS5FFmMAfYqKJSd083N5wm6jmn3HaiDMORN+/nEI+9jKGcfjQC9Z/O5eu91gFpg
	uflD+Mgq5b0EabpIrafYgtW0oVVZ4uHL+QCRnb0ORp+x5SFGeI7FxcHk+RD2AMUiVCuf3XU54NNCx
	3j7ddWDSF5ZU2s8YXAgM5/9LEI4ztoK0fgXYaRzs7UlQi6zeZ9T3F47cvhnQxQMLaKzU/X3pgC0/k
	ZmWS6r3gF7Fna7l1iNYTqgBEm1zcbsNXPuSGYhtBgBDnlj6wqp0Ux1V1DouGX1hbCdHk7LSbeLCSX
	fHVV6goeTozNjhDRHueg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOuQZ-0000BX-HQ; Thu, 16 Apr 2020 02:38:55 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOuQK-0008RQ-2M
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 02:38:41 +0000
Received: by mail-pg1-x544.google.com with SMTP id x26so926863pgc.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 19:38:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:subject:to:cc:references:in-reply-to:mime-version
 :message-id:content-transfer-encoding;
 bh=inF2oUQWOVUn1zSzuLcDRWp19ZrU3frGNXSsTZrmfdQ=;
 b=jrHbU5WLW/3NRzRL4tUP93CurNe3euf3u04ZSvHtx4DoKvg6BdTPCBmBNvMyBxrmZ7
 TgU6cisZ6MbOW00sFnL3XXqhrZos/MnOzXaPFFHxANt1Lbnm9vbEaY/H69/eXJTkDffy
 ipYXWrWZ5P1cZa1xWZhnN8U2oyc9HkCyolyDPlTsvYS1NbDcLglMyXiC04gAJ3QohUCR
 jjhhKSZFl5DZdnIqOWAvjUvsN7l3N7G0oCbfxTH2p8/CtE0JdvlD3sOFTmXSKJceP4wx
 +WBjX7cQkyZuAZdZmSzBG05XUhJpmhNFkrmD+CwNHb8SpwSIZ1DZTATXqT/9abQkBz88
 tb5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:to:cc:references:in-reply-to
 :mime-version:message-id:content-transfer-encoding;
 bh=inF2oUQWOVUn1zSzuLcDRWp19ZrU3frGNXSsTZrmfdQ=;
 b=fAK9oshItFjp0QxlZT0+4godwQ9T3suyuMnxYQPq/VNOzmFlEpIoWmN2QU93OdWBKy
 4iPw118UDUMphGxP9XvDU06xXBpJUn88xVV4ze/o4aO9n4xtf6P5/WxKXDL22DAdVXDK
 ZXf0UPWGZzdflFk2xAmrVh8SIVLUfLtQYm6Db9WwLkHCTbnJHJkj6zj7zregiptqQMni
 im+36p8EfTX8yajwU4rOK9RTnbVjJeK0pzZyajxmfMVab2K+EB3tSBwktILmuAMowYLT
 0E7wWVv4rkwwjm4cYqnZ3gAkmkBzhvLfgZ7QtvHZx3DnzaQnyvU3C+PRbR5ZFTACxhXD
 Huzg==
X-Gm-Message-State: AGi0PuZsdfflMPGR/0tUReRjIJHfIh4AlWQeutPOiYeJT4z+7BxqxuHO
 6td/QzHPgXw4BmIqT4bXNOgGKx6N
X-Google-Smtp-Source: APiQypLiACMHB4H40lzo7TjDzMxKO4UkcSYRYlY6AuEcTVgyHDfawhLANelI41IO6oDhsCuzUrA+DA==
X-Received: by 2002:a62:7811:: with SMTP id t17mr31223582pfc.268.1587004718236; 
 Wed, 15 Apr 2020 19:38:38 -0700 (PDT)
Received: from localhost ([203.18.28.220])
 by smtp.gmail.com with ESMTPSA id 198sm15506729pfa.87.2020.04.15.19.38.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 19:38:37 -0700 (PDT)
Date: Thu, 16 Apr 2020 12:38:00 +1000
From: Nicholas Piggin <npiggin@gmail.com>
Subject: Re: [PATCH v2 4/4] mm/vmalloc: Hugepage vmalloc mappings
To: Will Deacon <will@kernel.org>
References: <20200413125303.423864-1-npiggin@gmail.com>
 <20200413125303.423864-5-npiggin@gmail.com>
 <20200415104755.GD12621@willie-the-truck>
In-Reply-To: <20200415104755.GD12621@willie-the-truck>
MIME-Version: 1.0
Message-Id: <1587003993.x84ylh11b2.astroid@bobo.none>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_193840_191445_6EB4B85A 
X-CRM114-Status: GOOD (  19.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [npiggin[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arch@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 x86@kernel.org, linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 "H. Peter Anvin" <hpa@zytor.com>, Thomas Gleixner <tglx@linutronix.de>,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Excerpts from Will Deacon's message of April 15, 2020 8:47 pm:
> Hi Nick,
> 
> On Mon, Apr 13, 2020 at 10:53:03PM +1000, Nicholas Piggin wrote:
>> For platforms that define HAVE_ARCH_HUGE_VMAP and support PMD vmap mappings,
>> have vmalloc attempt to allocate PMD-sized pages first, before falling back
>> to small pages. Allocations which use something other than PAGE_KERNEL
>> protections are not permitted to use huge pages yet, not all callers expect
>> this (e.g., module allocations vs strict module rwx).
>> 
>> This gives a 6x reduction in dTLB misses for a `git diff` (of linux), from
>> 45600 to 6500 and a 2.2% reduction in cycles on a 2-node POWER9.
> 
> I wonder if it's worth extending vmap() to handle higher order pages in
> a similar way? That might be helpful for tracing PMUs such as Arm SPE,
> where the CPU streams tracing data out to a virtually addressed buffer
> (see rb_alloc_aux_page()).

Yeah it becomes pretty trivial to do that with VM_HUGE_PAGES after
this patch, I have something to do it but no callers ready yet, if
you have an easy one we can add it.

>> This can result in more internal fragmentation and memory overhead for a
>> given allocation. It can also cause greater NUMA unbalance on hashdist
>> allocations.
>> 
>> There may be other callers that expect small pages under vmalloc but use
>> PAGE_KERNEL, I'm not sure if it's feasible to catch them all. An
>> alternative would be a new function or flag which enables large mappings,
>> and use that in callers.
>> 
>> Signed-off-by: Nicholas Piggin <npiggin@gmail.com>
>> ---
>>  include/linux/vmalloc.h |   2 +
>>  mm/vmalloc.c            | 135 +++++++++++++++++++++++++++++-----------
>>  2 files changed, 102 insertions(+), 35 deletions(-)
>> 
>> diff --git a/include/linux/vmalloc.h b/include/linux/vmalloc.h
>> index 291313a7e663..853b82eac192 100644
>> --- a/include/linux/vmalloc.h
>> +++ b/include/linux/vmalloc.h
>> @@ -24,6 +24,7 @@ struct notifier_block;		/* in notifier.h */
>>  #define VM_UNINITIALIZED	0x00000020	/* vm_struct is not fully initialized */
>>  #define VM_NO_GUARD		0x00000040      /* don't add guard page */
>>  #define VM_KASAN		0x00000080      /* has allocated kasan shadow memory */
>> +#define VM_HUGE_PAGES		0x00000100	/* may use huge pages */
> 
> Please can you add a check for this in the arm64 change_memory_common()
> code? Other architectures might need something similar, but we need to
> forbid changing memory attributes for portions of the huge page.

Yeah good idea, I can look about adding some more checks.

> 
> In general, I'm a bit wary of software table walkers tripping over this.
> For example, I don't think apply_to_existing_page_range() can handle
> huge mappings at all, but the one user (KASAN) only ever uses page mappings
> so it's ok there.

Right, I have something to warn for apply to page range (and looking
at adding support for bigger pages). It doesn't even have a test and
warn at the moment which isn't good practice IMO so we should add one
even without huge vmap.

> 
>> @@ -2325,9 +2356,11 @@ static struct vm_struct *__get_vm_area_node(unsigned long size,
>>  	if (unlikely(!size))
>>  		return NULL;
>>  
>> -	if (flags & VM_IOREMAP)
>> -		align = 1ul << clamp_t(int, get_count_order_long(size),
>> -				       PAGE_SHIFT, IOREMAP_MAX_ORDER);
>> +	if (flags & VM_IOREMAP) {
>> +		align = max(align,
>> +			    1ul << clamp_t(int, get_count_order_long(size),
>> +					   PAGE_SHIFT, IOREMAP_MAX_ORDER));
>> +	}
> 
> 
> I don't follow this part. Please could you explain why you're potentially
> aligning above IOREMAP_MAX_ORDER? It doesn't seem to follow from the rest
> of the patch.

Trying to remember. If the caller asks for a particular alignment we 
shouldn't reduce it. Should put it in another patch.

Thanks,
Nick

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
