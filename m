Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D82B1183C0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 10:37:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MdWnr2O53RI2p1grkYP9xi9draWL5lV4LMhv8PNW3yA=; b=HrdsCZjVNAL2zhogYixjPvBrC9
	G8g57/NHNIJVERo5030HFYljiqNH3pXG9NSFOIQ+tImlYL9ks6rmlytiFLLWsV4LK8fDPaz+nu8+Y
	hdtOm6V3MuVMNRc+W9ddpSUqZlCsjyRBBXXjl505gyOCLQuhcdiXyhiV4uxLomUQiJiUxY75cPO/Q
	F5Jfem+IsHBIPNnrf97OHXSNaXpjWs0UPlnfPctmrXdYNwwxZlVh3ZNt+cccKs9hOz/RYIN2UKpiu
	UphxNK9nz12sIiKw0xpTqmEBRkv67E1Ex7ZI8l04W4yGzg+vi90Yb0Rnb81m7Yry/+ohvZEubrQ3O
	L5ob2gaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iebwt-0007Lz-8b; Tue, 10 Dec 2019 09:36:55 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iebwY-000788-Oe
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 09:36:38 +0000
Received: by mail-lj1-x241.google.com with SMTP id u17so19075446lja.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 01:36:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=gXjxkm88DEjZBFBOVgYS/nXq7WpsnAwIahBe1LGrB6M=;
 b=UBiVzNjP9aLMEiA7IC7YrACjXTaPDc9hQMibmR6mvQ2w5h2mcCTC9EkN995AN07C3h
 dbarlfB4UYV1kmfgjxkEetgiW/0lmCFZPD1RV2yf7SMmHbmt5kWl3v8fKQ2C/Tom/sZc
 1A5J74odxics4FORavwIVtIBailZYZvoG6ESd6ppFoWRQ/b6ORBJ5uCeCcEYX6Qdmc5x
 x/g7FCVHEhjHGf7+XfjwozXLtrf0kaajg/vIYnqw9H71l4SuFOrtDO/lztKSviCuXmNj
 2OR9+EoTAXh63GHszKYj1+zJxtYsT8ForpsjXGRBO4gxper4nFuzQ3A5G53npQ/hCq+g
 H1zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=gXjxkm88DEjZBFBOVgYS/nXq7WpsnAwIahBe1LGrB6M=;
 b=HXLhlPaexplQQWvCxw8kKJUMUyfS/qmrmvt7HrrAt1zhmiC4hxu6EPHZ6KjlQaprfN
 em7tUU2hXRSu8uBL8z02q42av/bQWafrozJRS/FoDwGQNkt1D6igusK/FkRSyaKJ5RXU
 b/TPpdr93RhM5kZcCgm2wYefe3U1b4/0Y8EgPVTAjlANoNQitM66a4xYC7SVkHEk8lib
 55ih7ryszCXeSrvYyzXSfHufwCsQ6fNHfEJrS+C6VcZ3+2HWT8IjG90al7eHcRS3/f57
 S0qMuYwZLxosZhjHTzqBm0v8OJFudMeERY4C4XWXbD8KUf6mjFY11hhyT1iStjpvmfND
 pZhw==
X-Gm-Message-State: APjAAAXKk+6Ovo+WlW55ikQpS7rZ37kZk9OV0vHcg6hB1vQ9f23xnRBt
 IZ3HuZ57y2AjJepyc5vULYA=
X-Google-Smtp-Source: APXvYqzgHWnb8WU25vCn8dceHQNUvqh7F9YCfgdEcTPnY24QYOgLeeWBuTndcT1N2jJAkfd3EaJ+zA==
X-Received: by 2002:a2e:9015:: with SMTP id h21mr3537646ljg.69.1575970592330; 
 Tue, 10 Dec 2019 01:36:32 -0800 (PST)
Received: from [192.168.68.106] ([193.119.54.228])
 by smtp.gmail.com with ESMTPSA id m21sm1186222lfh.53.2019.12.10.01.36.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 10 Dec 2019 01:36:31 -0800 (PST)
Subject: Re: [PATCH v2 2/4] kasan: use MAX_PTRS_PER_* for early shadow
To: Daniel Axtens <dja@axtens.net>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, linuxppc-dev@lists.ozlabs.org,
 linux-s390@vger.kernel.org, linux-xtensa@linux-xtensa.org,
 linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kasan-dev@googlegroups.com, christophe.leroy@c-s.fr,
 aneesh.kumar@linux.ibm.com
References: <20191210044714.27265-1-dja@axtens.net>
 <20191210044714.27265-3-dja@axtens.net>
From: Balbir Singh <bsingharora@gmail.com>
Message-ID: <a31459ee-2019-2f7b-0dc1-235374579508@gmail.com>
Date: Tue, 10 Dec 2019 20:36:24 +1100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191210044714.27265-3-dja@axtens.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_013634_869478_B102A1EE 
X-CRM114-Status: GOOD (  15.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
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
> This helps with powerpc support, and should have no effect on
> anything else.
> 
> Suggested-by: Christophe Leroy <christophe.leroy@c-s.fr>
> Signed-off-by: Daniel Axtens <dja@axtens.net>

If you follow the recommendations by Christophe and I, you don't need this patch

Balbir Singh.

> ---
>  include/linux/kasan.h | 6 +++---
>  mm/kasan/init.c       | 6 +++---
>  2 files changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/include/linux/kasan.h b/include/linux/kasan.h
> index e18fe54969e9..d2f2a4ffcb12 100644
> --- a/include/linux/kasan.h
> +++ b/include/linux/kasan.h
> @@ -15,9 +15,9 @@ struct task_struct;
>  #include <asm/pgtable.h>
>  
>  extern unsigned char kasan_early_shadow_page[PAGE_SIZE];
> -extern pte_t kasan_early_shadow_pte[PTRS_PER_PTE];
> -extern pmd_t kasan_early_shadow_pmd[PTRS_PER_PMD];
> -extern pud_t kasan_early_shadow_pud[PTRS_PER_PUD];
> +extern pte_t kasan_early_shadow_pte[MAX_PTRS_PER_PTE];
> +extern pmd_t kasan_early_shadow_pmd[MAX_PTRS_PER_PMD];
> +extern pud_t kasan_early_shadow_pud[MAX_PTRS_PER_PUD];
>  extern p4d_t kasan_early_shadow_p4d[MAX_PTRS_PER_P4D];
>  
>  int kasan_populate_early_shadow(const void *shadow_start,
> diff --git a/mm/kasan/init.c b/mm/kasan/init.c
> index ce45c491ebcd..8b54a96d3b3e 100644
> --- a/mm/kasan/init.c
> +++ b/mm/kasan/init.c
> @@ -46,7 +46,7 @@ static inline bool kasan_p4d_table(pgd_t pgd)
>  }
>  #endif
>  #if CONFIG_PGTABLE_LEVELS > 3
> -pud_t kasan_early_shadow_pud[PTRS_PER_PUD] __page_aligned_bss;
> +pud_t kasan_early_shadow_pud[MAX_PTRS_PER_PUD] __page_aligned_bss;
>  static inline bool kasan_pud_table(p4d_t p4d)
>  {
>  	return p4d_page(p4d) == virt_to_page(lm_alias(kasan_early_shadow_pud));
> @@ -58,7 +58,7 @@ static inline bool kasan_pud_table(p4d_t p4d)
>  }
>  #endif
>  #if CONFIG_PGTABLE_LEVELS > 2
> -pmd_t kasan_early_shadow_pmd[PTRS_PER_PMD] __page_aligned_bss;
> +pmd_t kasan_early_shadow_pmd[MAX_PTRS_PER_PMD] __page_aligned_bss;
>  static inline bool kasan_pmd_table(pud_t pud)
>  {
>  	return pud_page(pud) == virt_to_page(lm_alias(kasan_early_shadow_pmd));
> @@ -69,7 +69,7 @@ static inline bool kasan_pmd_table(pud_t pud)
>  	return false;
>  }
>  #endif
> -pte_t kasan_early_shadow_pte[PTRS_PER_PTE] __page_aligned_bss;
> +pte_t kasan_early_shadow_pte[MAX_PTRS_PER_PTE] __page_aligned_bss;
>  
>  static inline bool kasan_pte_table(pmd_t pmd)
>  {
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
