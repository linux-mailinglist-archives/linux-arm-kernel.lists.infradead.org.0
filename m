Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B5C01183AC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 10:35:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xQl+u4TFl8LIiIv8t+RlUd5em/HOUw57jLwoW3eXDro=; b=L4sX8wl9nWoPuebMLjG9FYUWzA
	t3WFvWeHrSdZHHAhm0LhMWhZ8NEAYsu/UkWtDqwxFYNvfldWK3RDo0TnLt0Z/UGAmDci7owe7sRUr
	eugwkto7WSjW2PxTZayH7YwMyY72VnFThAe4yku2XkifmCnLe5pbYx54R9StV7jx06fEFKghPrIAJ
	QRChAZkIy3hn4RPyWOkoHLHYg+WBsuBppYLsS1orAjqp8qUjPLnI0lJXQZLqcSX6nQ3b3AUdZlT76
	ZG84XoGsKhL2B9XDB9rtzR27gOInPl0wjKA+pijaiT+aidH0UAhuLI6ztfGQ1v+VyoK6iAR+Vpu6b
	azzaNECQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iebvm-0006WG-Sy; Tue, 10 Dec 2019 09:35:46 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iebvb-0006Vn-EF
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 09:35:36 +0000
Received: by mail-lf1-x142.google.com with SMTP id 9so13127367lfq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 01:35:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=sPqiW8fjJ6bClKJe5WkINQ65vkoeIkKhHU7yZhPYmGg=;
 b=ABNDcXBaBSFTY1MBOuehy4WQ2SFh6x6aVPCz/0w0olzbOzjmzqV5odtrNM5JpBQtjJ
 9yVNHZYJ+hXqU9+/ETxhdBza83LPN/PRKXds16dNfcf9TTYEf9CyjvF5L98Jae+Wc19O
 IIiOY/fNFDogBF/Qk0JhyV3/RVe0p0oRK8TFL2jmzqXdbMog4rxb7aAQFIA4b/UxfOvo
 cjXEKKsu2cnN2A4AescnBek882x0vlYO15PHe5wRgyTWW41pATbeTF+ttmU2UFRbaCok
 KRa6NF+JMCG9iUjkwZDsbU0r5+0k5eVzKKwIzLflfdCV2LgN2kV0nBUgi+Hmv5uIBHn8
 2ajA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=sPqiW8fjJ6bClKJe5WkINQ65vkoeIkKhHU7yZhPYmGg=;
 b=DHl6j5bb1xH4Lmts48pZmM3cXQiHREmnf0/Fzv+9rYreyVdeRLNqXs9n+RCtDdvU7V
 ujMKrnI1YoKWmaUVIbm9r5gu1ZjJaB7lBPkMwAP2nzwJe8Jv8BhguzDj/BTsEhHEIa7r
 UCOsLGGrvd/qnby0NkkUPRqHAY+g+bGuM0oIIhNghUPQA2eKFv/yD/9l09Tq9Cn/N7UN
 ZKzGdya+qg1SuBq59HmftvyxwU2MGJN/FI6NzGs75ms55m2Q5y4HAW+olBJ+1fJQXjOJ
 K1bk8mnUOLLmZj3ykCz0Bzn3NzaJu6nWyCp/f1z5Mf2PCW7TjhVL5IiZaGiSfjH4jwQR
 Iswg==
X-Gm-Message-State: APjAAAU+kpL0zE8z0GfuVKlYy1DR2x6nuUP+XL++e+AEbTsUhXF1LuGf
 aElAYOG/cWNJ+H1/Ok91OgI=
X-Google-Smtp-Source: APXvYqwioSlPYO6hoFk7LGARsxqMyzh3CVbgGfmrhGJmH3QfKEy1cMr4MWEHUZicpl9ULfHvpu8eWw==
X-Received: by 2002:ac2:4316:: with SMTP id l22mr2852226lfh.115.1575970533025; 
 Tue, 10 Dec 2019 01:35:33 -0800 (PST)
Received: from [192.168.68.106] ([193.119.54.228])
 by smtp.gmail.com with ESMTPSA id 140sm1193677lfk.78.2019.12.10.01.35.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 10 Dec 2019 01:35:32 -0800 (PST)
Subject: Re: [PATCH v2 1/4] mm: define MAX_PTRS_PER_{PTE,PMD,PUD}
To: Daniel Axtens <dja@axtens.net>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, linuxppc-dev@lists.ozlabs.org,
 linux-s390@vger.kernel.org, linux-xtensa@linux-xtensa.org,
 linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kasan-dev@googlegroups.com, christophe.leroy@c-s.fr,
 aneesh.kumar@linux.ibm.com
References: <20191210044714.27265-1-dja@axtens.net>
 <20191210044714.27265-2-dja@axtens.net>
From: Balbir Singh <bsingharora@gmail.com>
Message-ID: <50ac061a-caa9-ed4e-c9a4-1f86bb0552bd@gmail.com>
Date: Tue, 10 Dec 2019 20:35:22 +1100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191210044714.27265-2-dja@axtens.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_013535_476041_8979FE5B 
X-CRM114-Status: GOOD (  22.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bsingharora[at]gmail.com)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 10/12/19 3:47 pm, Daniel Axtens wrote:
> powerpc has boot-time configurable PTRS_PER_PTE, PMD and PUD. The
> values are selected based on the MMU under which the kernel is
> booted. This is much like how 4 vs 5-level paging on x86_64 leads to
> boot-time configurable PTRS_PER_P4D.
> 
> So far, this hasn't leaked out of arch/powerpc. But with KASAN, we
> have static arrays based on PTRS_PER_*, so for powerpc support must
> provide constant upper bounds for generic code.
> 
> Define MAX_PTRS_PER_{PTE,PMD,PUD} for this purpose.
> 
> I have configured these constants:
>  - in asm-generic headers
>  - on arches that implement KASAN: x86, s390, arm64, xtensa and powerpc
> 
> I haven't wired up any other arches just yet - there is no user of
> the constants outside of the KASAN code I add in the next patch, so
> missing the constants on arches that don't support KASAN shouldn't
> break anything.

I would suggest limiting this to powerpc for now and use

#ifndef MAX_PTRS_PER_PUD
#define MAX_PTRS_PER_PUD	PTRS_PER_PUD
#endif

style code in KASAN. It just keeps the change surface to a limited
value, till other arch's see value in migrating to support it.

> 
> Suggested-by: Christophe Leroy <christophe.leroy@c-s.fr>
> Signed-off-by: Daniel Axtens <dja@axtens.net>
> ---
>  arch/arm64/include/asm/pgtable-hwdef.h       | 3 +++
>  arch/powerpc/include/asm/book3s/64/hash.h    | 4 ++++
>  arch/powerpc/include/asm/book3s/64/pgtable.h | 7 +++++++
>  arch/powerpc/include/asm/book3s/64/radix.h   | 5 +++++
>  arch/s390/include/asm/pgtable.h              | 3 +++
>  arch/x86/include/asm/pgtable_types.h         | 5 +++++
>  arch/xtensa/include/asm/pgtable.h            | 1 +
>  include/asm-generic/pgtable-nop4d-hack.h     | 9 +++++----
>  include/asm-generic/pgtable-nopmd.h          | 9 +++++----
>  include/asm-generic/pgtable-nopud.h          | 9 +++++----
>  10 files changed, 43 insertions(+), 12 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/pgtable-hwdef.h b/arch/arm64/include/asm/pgtable-hwdef.h
> index d9fbd433cc17..485e1f3c5c6f 100644
> --- a/arch/arm64/include/asm/pgtable-hwdef.h
> +++ b/arch/arm64/include/asm/pgtable-hwdef.h
> @@ -41,6 +41,7 @@
>  #define ARM64_HW_PGTABLE_LEVEL_SHIFT(n)	((PAGE_SHIFT - 3) * (4 - (n)) + 3)
>  
>  #define PTRS_PER_PTE		(1 << (PAGE_SHIFT - 3))
> +#define MAX_PTRS_PER_PTE	PTRS_PER_PTE
>  
>  /*
>   * PMD_SHIFT determines the size a level 2 page table entry can map.
> @@ -50,6 +51,7 @@
>  #define PMD_SIZE		(_AC(1, UL) << PMD_SHIFT)
>  #define PMD_MASK		(~(PMD_SIZE-1))
>  #define PTRS_PER_PMD		PTRS_PER_PTE
> +#define MAX_PTRS_PER_PMD	PTRS_PER_PMD
>  #endif
>  
>  /*
> @@ -60,6 +62,7 @@
>  #define PUD_SIZE		(_AC(1, UL) << PUD_SHIFT)
>  #define PUD_MASK		(~(PUD_SIZE-1))
>  #define PTRS_PER_PUD		PTRS_PER_PTE
> +#define MAX_PTRS_PER_PUD	PTRS_PER_PUD
>  #endif
>  
>  /*
> diff --git a/arch/powerpc/include/asm/book3s/64/hash.h b/arch/powerpc/include/asm/book3s/64/hash.h
> index 2781ebf6add4..fce329b8452e 100644
> --- a/arch/powerpc/include/asm/book3s/64/hash.h
> +++ b/arch/powerpc/include/asm/book3s/64/hash.h
> @@ -18,6 +18,10 @@
>  #include <asm/book3s/64/hash-4k.h>
>  #endif
>  
> +#define H_PTRS_PER_PTE		(1 << H_PTE_INDEX_SIZE)
> +#define H_PTRS_PER_PMD		(1 << H_PMD_INDEX_SIZE)
> +#define H_PTRS_PER_PUD		(1 << H_PUD_INDEX_SIZE)
> +
>  /* Bits to set in a PMD/PUD/PGD entry valid bit*/
>  #define HASH_PMD_VAL_BITS		(0x8000000000000000UL)
>  #define HASH_PUD_VAL_BITS		(0x8000000000000000UL)
> diff --git a/arch/powerpc/include/asm/book3s/64/pgtable.h b/arch/powerpc/include/asm/book3s/64/pgtable.h
> index b01624e5c467..209817235a44 100644
> --- a/arch/powerpc/include/asm/book3s/64/pgtable.h
> +++ b/arch/powerpc/include/asm/book3s/64/pgtable.h
> @@ -231,6 +231,13 @@ extern unsigned long __pmd_frag_size_shift;
>  #define PTRS_PER_PUD	(1 << PUD_INDEX_SIZE)
>  #define PTRS_PER_PGD	(1 << PGD_INDEX_SIZE)
>  
> +#define MAX_PTRS_PER_PTE	((H_PTRS_PER_PTE > R_PTRS_PER_PTE) ? \
> +				  H_PTRS_PER_PTE : R_PTRS_PER_PTE)
> +#define MAX_PTRS_PER_PMD	((H_PTRS_PER_PMD > R_PTRS_PER_PMD) ? \
> +				  H_PTRS_PER_PMD : R_PTRS_PER_PMD)
> +#define MAX_PTRS_PER_PUD	((H_PTRS_PER_PUD > R_PTRS_PER_PUD) ? \
> +				  H_PTRS_PER_PUD : R_PTRS_PER_PUD)
> +

How about reusing max

#define MAX_PTRS_PER_PTE  max(H_PTRS_PER_PTE, R_PTRS_PER_PTE)
#define MAX_PTRS_PER_PMD  max(H_PTRS_PER_PMD, R_PTRS_PER_PMD)
#define MAX_PTRS_PER_PUD  max(H_PTRS_PER_PUD, R_PTRS_PER_PUD)

Balbir Singh.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
