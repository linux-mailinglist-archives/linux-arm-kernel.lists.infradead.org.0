Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 689CACEB84
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 20:11:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SAxYRatQvOV7pVReze8e3fqLimUAA55ykTTcy8hOPt8=; b=ZO+UeGmsBVrsZE
	JNhF60e44pk1rGO9wjxFQu5KwNth7nb16ZukuDeW0N8tts7sNAIcyYslLx68TUlEpuUfsqHCzYJ4Y
	eKzonaDZ+nj2NMJjt91wYz28v4XHxL0Xf8OV090yT3ASTlpe6zw7CNjlUNRCatFJdiw3bBsWEk7Bp
	rcdICdz0AsGdefcHp/54FLooH6D/Tvj/WC8KL5iPC3D9wZcIb+5axrzmGnfBbJyyWflYD+yIV5aq2
	GjkRspK0PACjzW/htGZdPRCDPWS3WWSOVRRmaAHFmJxSOvUSLBUqhTfTOLh3mOvJFryxuWPxKGOEB
	UcZGuWrF9rIsj6fcffnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHXTi-0005t9-67; Mon, 07 Oct 2019 18:11:26 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHXTZ-0005sC-5z
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 18:11:19 +0000
Received: by mail-qt1-x842.google.com with SMTP id m61so9474870qte.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 07 Oct 2019 11:11:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=C57iBY/lvItZ8Dqp104KcV48DHmLXeJ/LePjUooFql4=;
 b=odoQ7M8lZTXPwtj2RJPv2C8GWiSQ45ucrBmbyh0P2/mlbgsNcJUIwzaa7xEwsEmuWe
 VoAXrW5x9cKaMLoIIkJilzd90Mk1JXXHSbPj7ov9vndjFMp8ADFphm+nCyh+SUsCm6WC
 Y40nYduS+oPDc+jPEf1lzHng3lYe55Cx0SNWM0Xf5ctYIJioYMkKCRdq8eWqAwt8XMZY
 NBdrzvC1OYY1866f4zNS4PgTcy/My02fgMqlKqCjvMbd6+jFPph8UmPP99sJoRWqhnH1
 BCIokZu+eebMIm5PhJcv7SGkEHQbOPaGItz1ogvWFvGa9EB7UuVFfDG9lQhQuDam/P1Z
 mk8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=C57iBY/lvItZ8Dqp104KcV48DHmLXeJ/LePjUooFql4=;
 b=GaZWndsxcmZjNeSKh/jEEqZy0rVJNJXkWw7WNGsWAgVp96Z9WTyB+TJtg7B8YNeUrp
 6g7jaq9CyApkg6hybaLvEiC/f/KQ0z5bBStbUaPg6KEM6BcEIQq+WLIqKC4nLY1nS7YA
 sITotbu+fV/WBbtmigHjcvcVcGXfd2rDHvkdFsaZVM1bcBpmLCxTkmYS1lt2ehrXn8T7
 h/HbfmAzrcsom4R0VJv0jIDoAlj0hzmG6PeRn38TPoSoboAoiqdwxvHfGY6CU2voPUlM
 O5Uv7dSN4eW4egbjq7/LmZSlwP8hSclOBcz9YugLOcXiz3IByUV106m4qNGKpbW9ifa8
 5wQQ==
X-Gm-Message-State: APjAAAV8psMHOiNKthRbQbBAj3F4s2WMeo/uqayGEjRgY/pL4XXczz2u
 elsisN+0dZVXQVgFBuGTMicUPQ==
X-Google-Smtp-Source: APXvYqzfloaIHtCD4grmgryCyyJiy1Vl45sjxwGuBPDO16urH8mhT+QtavoYJkIRRAEqLiwuwRR7Cg==
X-Received: by 2002:ac8:2d2c:: with SMTP id n41mr31355650qta.335.1570471875205; 
 Mon, 07 Oct 2019 11:11:15 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-142-162-113-180.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [142.162.113.180])
 by smtp.gmail.com with ESMTPSA id s17sm7755821qkg.79.2019.10.07.11.11.14
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 07 Oct 2019 11:11:14 -0700 (PDT)
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1iHXTV-0007lh-Lt; Mon, 07 Oct 2019 15:11:13 -0300
Date: Mon, 7 Oct 2019 15:11:13 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Steven Price <steven.price@arm.com>
Subject: Re: [PATCH v11 14/22] mm: pagewalk: Add 'depth' parameter to pte_hole
Message-ID: <20191007181113.GC13229@ziepe.ca>
References: <20191007153822.16518-1-steven.price@arm.com>
 <20191007153822.16518-15-steven.price@arm.com>
 <20191007161049.GA13229@ziepe.ca>
 <6e570d6d-b29f-f4cb-1eb9-6ff6cab15a2e@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6e570d6d-b29f-f4cb-1eb9-6ff6cab15a2e@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_111117_632770_8CEBBF02 
X-CRM114-Status: GOOD (  21.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 =?utf-8?B?SsOpcsO0bWU=?= Glisse <jglisse@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 James Morse <james.morse@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org, "Liang, Kan" <kan.liang@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 07, 2019 at 05:20:30PM +0100, Steven Price wrote:
> On 07/10/2019 17:10, Jason Gunthorpe wrote:
> > On Mon, Oct 07, 2019 at 04:38:14PM +0100, Steven Price wrote:
> >> diff --git a/mm/hmm.c b/mm/hmm.c
> >> index 902f5fa6bf93..34fe904dd417 100644
> >> +++ b/mm/hmm.c
> >> @@ -376,7 +376,7 @@ static void hmm_range_need_fault(const struct hmm_vma_walk *hmm_vma_walk,
> >>  }
> >>  
> >>  static int hmm_vma_walk_hole(unsigned long addr, unsigned long end,
> >> -			     struct mm_walk *walk)
> >> +			     __always_unused int depth, struct mm_walk *walk)
> > 
> > It this __always_unused on function arguments something we are doing
> > now?
> 
> $ git grep __always_unused | wc -l
> 191
> 
> It's elsewhere in the kernel tree. It seems like a good way of both
> documenting and silencing compiler warnings. But I'm open to other
> suggestions.

The normal kernel build doesn't generate warnings for unused function
parameters because there are alot of false positives, IIRC. So, seems
weird to see things like this.

> > Can we have negative depth? Should it be unsigned?
> 
> As per the documentation added in this patch:
> 
>  * @pte_hole:	if set, called for each hole at all levels,
>  *		depth is -1 if not known, 0:PGD, 1:P4D, 2:PUD, 3:PMD
>  *		4:PTE. Any folded depths (where PTRS_PER_P?D is equal
>  *		to 1) are skipped.
> 
> So it's signed to allow "-1" in the cases where pte_hole is called
> without knowing the actual depth. This is used in the function
> walk_page_test() because it don't walk the actual page tables, but is
> called on a VMA instead. This means that there may not be a single depth
> for the range provided.

So are the depth values below OK? I would have expected -1 by this
definition

> >>  {
> >>  	struct hmm_vma_walk *hmm_vma_walk = walk->private;
> >>  	struct hmm_range *range = hmm_vma_walk->range;
> >> @@ -564,7 +564,7 @@ static int hmm_vma_walk_pmd(pmd_t *pmdp,
> >>  again:
> >>  	pmd = READ_ONCE(*pmdp);
> >>  	if (pmd_none(pmd))
> >> -		return hmm_vma_walk_hole(start, end, walk);
> >> +		return hmm_vma_walk_hole(start, end, 0, walk);
> >>  
> >>  	if (thp_migration_supported() && is_pmd_migration_entry(pmd)) {
> >>  		bool fault, write_fault;
> >> @@ -666,7 +666,7 @@ static int hmm_vma_walk_pud(pud_t *pudp, unsigned long start, unsigned long end,
> >>  again:
> >>  	pud = READ_ONCE(*pudp);
> >>  	if (pud_none(pud))
> >> -		return hmm_vma_walk_hole(start, end, walk);
> >> +		return hmm_vma_walk_hole(start, end, 0, walk);
> >>  
> >>  	if (pud_huge(pud) && pud_devmap(pud)) {
> >>  		unsigned long i, npages, pfn;
> >> @@ -674,7 +674,7 @@ static int hmm_vma_walk_pud(pud_t *pudp, unsigned long start, unsigned long end,
> >>  		bool fault, write_fault;
> >>  
> >>  		if (!pud_present(pud))
> >> -			return hmm_vma_walk_hole(start, end, walk);
> >> +			return hmm_vma_walk_hole(start, end, 0, walk);
> >>  
> >>  		i = (addr - range->start) >> PAGE_SHIFT;
> >>  		npages = (end - addr) >> PAGE_SHIFT;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
