Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3441D51FDA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 02:21:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:MIME-Version:In-Reply-To:
	References:To:Subject:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TFj5hUggnDYzPIEaNju/wUqZx/Z0bPDXDT5B0rxKNyo=; b=RIL2Fs5WuFbwVg
	iXDWFcMXxennKHBCxRYWYTX0ZrpazaZXBPJl/C87hGVGE7oy40EXrfRLklU7RVq8s6cKHb2AFG40s
	rmmzfLWobrTYd45yyYXXVDAvvmvIcBmiwegrA1frXQs5FLknpB/dYhKiW1jU1yDY1sstz242ThPmw
	xd2hYGLPDwwO0QFb/RFwc/ueyzEspn+SG0vOlVPfn5FaT6aaqG9/S/rFZaaN//pVqJ6Sgq+FJG+fi
	SNh6OmfzvI44hDmAd8jRZ8uIkCHd9g5k5PEYCM81UW7xjuUz59Rz3d7q4xCU1zb9QyQJy+MrVMXI+
	ct6r3pGYc/OCuiv1UIuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfZDC-00022a-UU; Tue, 25 Jun 2019 00:21:27 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfZD2-000228-Ul
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 00:21:18 +0000
Received: by mail-pg1-x542.google.com with SMTP id z19so5013072pgl.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 17:21:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:subject:to:cc:references:in-reply-to:mime-version
 :user-agent:message-id:content-transfer-encoding;
 bh=9GWfUGprvA4ILcpimuVJoGtm5PW6KPiiPRGCbFZh52w=;
 b=lCqYJd0fDqFS6i7DNl565RTG+AMIJ12ZQw/A8KlWcTmhSBSVfi7R1JjAyw0diyQp5w
 0icVERPM79uGIRc4rPDhlMIs9Eo2BQh1ycTUT9KC3ODr0hA1PyMBys+Jaotlrqmw8rAA
 Wt8yT3wpCentyV+O8DJ5e6cvFVmdPSqFV2Kc8+YOWKsXjw4VYlWdsJC5lXkAL0PqpP0o
 73Yf4SJ4tYZJkdlgJGAysG7Ig2VZPMOIU5e0ItUS6tJ6xASc27CJzVnMXH5w13pWwPWd
 Jr57070WGncwHZKG0t81ad61He+o8mdJstJQKs1+pRI7NVN6/ZXpvO99jSOqxg8lWbPb
 L5Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:to:cc:references:in-reply-to
 :mime-version:user-agent:message-id:content-transfer-encoding;
 bh=9GWfUGprvA4ILcpimuVJoGtm5PW6KPiiPRGCbFZh52w=;
 b=ge1hbColEAkzXniHO3/yM8DOWNeXUuovNgcSZGNKe0UWLF/am7wVHm6xvZ2XDOdPdX
 /slHimTzo1Kf+/hEVGIl4n4eq82Q1SxyhzjdU/7ezM7jjeHSO9+m/o4Yf5GqWcnlvvw7
 aqBXyp7vShIHWck5P8r9r0yyW5nKPKVMovwx8v5kmIAAFzlhXo0NPyyF1oZRJFC3fLbk
 ZpDXHFizshwE92Rw4OX+zytHIWzgqSDswNeNQvHKTCBsaLqWJLcuBKn9LJM+/RuKzi7I
 k1uue2bAdzyzrBDI7XTTcSgEYMk11CFZ6XdrGZq6CiV29DscsI3NKiDaETHKVtr43xng
 tWgg==
X-Gm-Message-State: APjAAAUsDrh/jWMKxIJWYU1KjjIXtMpP7JIvaMuGNZnM1qtR6xzmguAG
 28tsLYCW9WS1fQ2t0U71+eo=
X-Google-Smtp-Source: APXvYqyinR+SxTKAhy01mEzpneT2onpFntPNglVujvIPVOk7YeZhmGjQ045hT6anajo5VX8LeLss3w==
X-Received: by 2002:a65:4c0c:: with SMTP id u12mr35552980pgq.130.1561422075888; 
 Mon, 24 Jun 2019 17:21:15 -0700 (PDT)
Received: from localhost ([1.129.213.195])
 by smtp.gmail.com with ESMTPSA id j23sm13670632pgb.63.2019.06.24.17.21.14
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 24 Jun 2019 17:21:14 -0700 (PDT)
Date: Tue, 25 Jun 2019 10:20:14 +1000
From: Nicholas Piggin <npiggin@gmail.com>
Subject: Re: [PATCH 3/3] mm/vmalloc: fix vmalloc_to_page for huge vmap mappings
To: Anshuman Khandual <anshuman.khandual@arm.com>, linux-mm@kvack.org
References: <20190623094446.28722-1-npiggin@gmail.com>
 <20190623094446.28722-4-npiggin@gmail.com>
 <8668f76d-faad-4e57-2f7b-f2b8969b1026@arm.com>
In-Reply-To: <8668f76d-faad-4e57-2f7b-f2b8969b1026@arm.com>
MIME-Version: 1.0
User-Agent: astroid/0.14.0 (https://github.com/astroidmail/astroid)
Message-Id: <1561421882.9uwq6zqlvo.astroid@bobo.none>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_172117_018143_708C439A 
X-CRM114-Status: GOOD (  21.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (npiggin[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
 Mark Rutland <mark.rutland@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Anshuman Khandual's on June 24, 2019 4:52 pm:
> 
> 
> On 06/23/2019 03:14 PM, Nicholas Piggin wrote:
>> vmalloc_to_page returns NULL for addresses mapped by larger pages[*].
>> Whether or not a vmap is huge depends on the architecture details,
>> alignments, boot options, etc., which the caller can not be expected
>> to know. Therefore HUGE_VMAP is a regression for vmalloc_to_page.
>> 
>> This change teaches vmalloc_to_page about larger pages, and returns
>> the struct page that corresponds to the offset within the large page.
>> This makes the API agnostic to mapping implementation details.
>> 
>> [*] As explained by commit 029c54b095995 ("mm/vmalloc.c: huge-vmap:
>>     fail gracefully on unexpected huge vmap mappings")
>> 
>> Signed-off-by: Nicholas Piggin <npiggin@gmail.com>
>> ---
>>  include/asm-generic/4level-fixup.h |  1 +
>>  include/asm-generic/5level-fixup.h |  1 +
>>  mm/vmalloc.c                       | 37 +++++++++++++++++++-----------
>>  3 files changed, 26 insertions(+), 13 deletions(-)
>> 
>> diff --git a/include/asm-generic/4level-fixup.h b/include/asm-generic/4level-fixup.h
>> index e3667c9a33a5..3cc65a4dd093 100644
>> --- a/include/asm-generic/4level-fixup.h
>> +++ b/include/asm-generic/4level-fixup.h
>> @@ -20,6 +20,7 @@
>>  #define pud_none(pud)			0
>>  #define pud_bad(pud)			0
>>  #define pud_present(pud)		1
>> +#define pud_large(pud)			0
>>  #define pud_ERROR(pud)			do { } while (0)
>>  #define pud_clear(pud)			pgd_clear(pud)
>>  #define pud_val(pud)			pgd_val(pud)
>> diff --git a/include/asm-generic/5level-fixup.h b/include/asm-generic/5level-fixup.h
>> index bb6cb347018c..c4377db09a4f 100644
>> --- a/include/asm-generic/5level-fixup.h
>> +++ b/include/asm-generic/5level-fixup.h
>> @@ -22,6 +22,7 @@
>>  #define p4d_none(p4d)			0
>>  #define p4d_bad(p4d)			0
>>  #define p4d_present(p4d)		1
>> +#define p4d_large(p4d)			0
>>  #define p4d_ERROR(p4d)			do { } while (0)
>>  #define p4d_clear(p4d)			pgd_clear(p4d)
>>  #define p4d_val(p4d)			pgd_val(p4d)
>> diff --git a/mm/vmalloc.c b/mm/vmalloc.c
>> index 4c9e150e5ad3..4be98f700862 100644
>> --- a/mm/vmalloc.c
>> +++ b/mm/vmalloc.c
>> @@ -36,6 +36,7 @@
>>  #include <linux/rbtree_augmented.h>
>>  
>>  #include <linux/uaccess.h>
>> +#include <asm/pgtable.h>
>>  #include <asm/tlbflush.h>
>>  #include <asm/shmparam.h>
>>  
>> @@ -284,26 +285,36 @@ struct page *vmalloc_to_page(const void *vmalloc_addr)
>>  
>>  	if (pgd_none(*pgd))
>>  		return NULL;
>> +
>>  	p4d = p4d_offset(pgd, addr);
>>  	if (p4d_none(*p4d))
>>  		return NULL;
>> -	pud = pud_offset(p4d, addr);
>> +	if (WARN_ON_ONCE(p4d_bad(*p4d)))
>> +		return NULL;
> 
> The warning here is a required addition but it needs to be moved after p4d_large()
> check. Please see the next comment below.
> 
>> +#ifdef CONFIG_HAVE_ARCH_HUGE_VMAP
>> +	if (p4d_large(*p4d))
>> +		return p4d_page(*p4d) + ((addr & ~P4D_MASK) >> PAGE_SHIFT);
>> +#endif
>>  
>> -	/*
>> -	 * Don't dereference bad PUD or PMD (below) entries. This will also
>> -	 * identify huge mappings, which we may encounter on architectures
>> -	 * that define CONFIG_HAVE_ARCH_HUGE_VMAP=y. Such regions will be
>> -	 * identified as vmalloc addresses by is_vmalloc_addr(), but are
>> -	 * not [unambiguously] associated with a struct page, so there is
>> -	 * no correct value to return for them.
>> -	 */
>> -	WARN_ON_ONCE(pud_bad(*pud));
>> -	if (pud_none(*pud) || pud_bad(*pud))
>> +	pud = pud_offset(p4d, addr);
>> +	if (pud_none(*pud))
>> +		return NULL;
>> +	if (WARN_ON_ONCE(pud_bad(*pud)))
>>  		return NULL;
>> +#ifdef CONFIG_HAVE_ARCH_HUGE_VMAP
>> +	if (pud_large(*pud))
>> +		return pud_page(*pud) + ((addr & ~PUD_MASK) >> PAGE_SHIFT);
>> +#endif
>> +
> 
> pud_bad() on arm64 returns true when the PUD does not point to a next page
> table page implying the fact that it might be a large/huge entry. I am not
> sure if the semantics holds good for other architectures too. But on arm64
> if pud_large() is true, then pud_bad() will be true as well. So pud_bad()
> check must happen after pud_large() check. So the sequence here should be
> 
> 1. pud_none()	--> Nothing is in here, return NULL
> 2. pud_large()	--> Return offset page address from the huge page mapping
> 3. pud_bad()	--> Return NULL as there is no more page table level left
> 
> Checking pud_bad() first can return NULL for a valid huge mapping.
> 
>>  	pmd = pmd_offset(pud, addr);
>> -	WARN_ON_ONCE(pmd_bad(*pmd));
>> -	if (pmd_none(*pmd) || pmd_bad(*pmd))
>> +	if (pmd_none(*pmd))
>> +		return NULL;
>> +	if (WARN_ON_ONCE(pmd_bad(*pmd)))
>>  		return NULL;
>> +#ifdef CONFIG_HAVE_ARCH_HUGE_VMAP
>> +	if (pmd_large(*pmd))
>> +		return pmd_page(*pmd) + ((addr & ~PMD_MASK) >> PAGE_SHIFT);
>> +#endif
> 
> Ditto.
> 
> I see that your previous proposal had this right which got changed in this
> manner after my comments. Sorry about it.
> 
> It was recently when I learned (correctly) that expected semantics of pxx_bad()
> is that - It does not point to the next page table page.  Hence I wonder why is
> this not renamed as pxx_table() instead to make it absolutely clear.
> 

Okay, I'll change it and resend. It worked okay on powerpc but it
looks like the usual precedent is testing for large before bad so we
will have to go with that.

Thanks,
Nick

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
