Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB469B3702
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 11:20:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Io3U1dfN1EMW47BetVT9JW2nOBlfprfuwN/vEp1vzpI=; b=qXlx+bCBmcKXKT
	nRV+OLdHh9LC9NDKDF8edKzkyJnjQExyarI7wwA/aws/f0Z2tG20xi3LfvwfME7eow0DgBTqkLJaT
	Y/RZQ7KUmSSHedzZKNNcGxhA2v6YJGQf5fIBGQEGlK3xqRlxdJvDtO7fR9TJaMWkNX2fhOT3btM1Z
	Iew9F30R7LHDQYYq/1m9KxalkI5UqPU/4l9mrFx0Bq5gqH9BDzuLOhwc9ln5OkMZNv8gyeE0Sagaz
	0ucHdFjjT5IiuRkNgD2+joDZp0W3VNu22E1Du9sGBqDylgechy4H9qhgd2SyvXVAUfZQ3dz4VbDRy
	J7D5osv7h23nMcxdHmEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9nBk-0002Ie-TB; Mon, 16 Sep 2019 09:20:52 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9nBW-0002Hl-8r
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 09:20:39 +0000
Received: by mail-ed1-x543.google.com with SMTP id c20so23407627eds.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 02:20:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=shutemov-name.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=glvpReCPDRVkLn9zpzSNpP3OHMiPsWWEoMy1D4x4tMc=;
 b=Mr43gy1Bhlqi2cMq6MxNQWr+R1+dwgniNtjTsTR3urFn73yrPBcFmMn/zGJpGK24Pe
 p30BdzlkqB9M2aoCiz1gYKqSC69suQlL7uL9rzuPNChreBcqfIUyjuj4Blk9+QTH/9A6
 mHpIPD5mT4F5LiHCzuWmPYl5KMGbDjJBRoGjV8GSlALoX6FuuvktcKLloUWLNqYBxdu4
 wT+yqPD7W5P+YYvxl1WtNyYLsM3MUWNW9Lbe8+IOU+rr/29urfgyHMtdXzAzeFirvy/b
 S3qfKABiHm8SwI8pxkapXnQHXDMeycFCcaJ+uldYGUEW/zjrZ52cqCTk2eXpBck7ip5q
 pUsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=glvpReCPDRVkLn9zpzSNpP3OHMiPsWWEoMy1D4x4tMc=;
 b=ZWMvLvYfnlJe/Oz7afltgy00lozHsOhxCX7UAmrSSTAqfec159srYsEmQf4vEoU6Gf
 5CQrfwdBMxevHOMVn3LHGip17RN8PFtmaEEV9T3lK2mDspSctz7CospnpGf6SiiQGxeC
 wCZiYLYNYD1hVs7vFPRJfJ1AG0NydCIuKnQM9yZS5HEbR5ptbfNeO6aQLDhoVNmVqQmU
 N2dfFu+FyW0d27w+6Dv54x8WpiZZrZqn354y6tLeI36RuQX/6wyn+koOTzsAz50TMuZB
 ywx8raDvisBPkqSvRkzAtjkybQHDSz5JDh5CqVRsRkZf+gUhRo7e55VHPt05kZKKzIB2
 jKXg==
X-Gm-Message-State: APjAAAWlLKi2HnK6PwGM6MI41DSjnVW6nTc3pdZJfExMenmC0NjUB4+N
 bY3q9QEbVGQB4Mr9WoHoZbriUw==
X-Google-Smtp-Source: APXvYqybun8WIw9RjZFQef3sSQgZDs9Qwwkd2MmheAEv+efu9QyQb9R9OfX14SfjkoUG8ior6HHHgg==
X-Received: by 2002:a50:a7c4:: with SMTP id i62mr15999938edc.92.1568625636812; 
 Mon, 16 Sep 2019 02:20:36 -0700 (PDT)
Received: from box.localdomain ([86.57.175.117])
 by smtp.gmail.com with ESMTPSA id a3sm4194276eje.90.2019.09.16.02.20.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 16 Sep 2019 02:20:35 -0700 (PDT)
Received: by box.localdomain (Postfix, from userid 1000)
 id 7FD80104174; Mon, 16 Sep 2019 12:20:37 +0300 (+03)
Date: Mon, 16 Sep 2019 12:20:37 +0300
From: "Kirill A. Shutemov" <kirill@shutemov.name>
To: Jia He <justin.he@arm.com>
Subject: Re: [PATCH v3 1/2] arm64: mm: implement arch_faults_on_old_pte() on
 arm64
Message-ID: <20190916092037.yqdp2vyhl4byhbh5@box.shutemov.name>
References: <20190913163239.125108-1-justin.he@arm.com>
 <20190913163239.125108-2-justin.he@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190913163239.125108-2-justin.he@arm.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_022038_315591_7DAB5525 
X-CRM114-Status: GOOD (  17.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ralph Campbell <rcampbell@nvidia.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, Jun Yao <yaojun8558363@gmail.com>,
 linux-mm@kvack.org, =?utf-8?B?SsOpcsO0bWU=?= Glisse <jglisse@redhat.com>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Punit Agrawal <punitagrawal@gmail.com>, Marc Zyngier <maz@kernel.org>,
 hejianet@gmail.com, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Alex Van Brunt <avanbrunt@nvidia.com>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Sep 14, 2019 at 12:32:38AM +0800, Jia He wrote:
> On arm64 without hardware Access Flag, copying fromuser will fail because
> the pte is old and cannot be marked young. So we always end up with zeroed
> page after fork() + CoW for pfn mappings. we don't always have a
> hardware-managed access flag on arm64.
> 
> Hence implement arch_faults_on_old_pte on arm64 to indicate that it might
> cause page fault when accessing old pte.
> 
> Signed-off-by: Jia He <justin.he@arm.com>
> ---
>  arch/arm64/include/asm/pgtable.h | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
> index e09760ece844..b41399d758df 100644
> --- a/arch/arm64/include/asm/pgtable.h
> +++ b/arch/arm64/include/asm/pgtable.h
> @@ -868,6 +868,18 @@ static inline void update_mmu_cache(struct vm_area_struct *vma,
>  #define phys_to_ttbr(addr)	(addr)
>  #endif
>  
> +/*
> + * On arm64 without hardware Access Flag, copying fromuser will fail because
> + * the pte is old and cannot be marked young. So we always end up with zeroed
> + * page after fork() + CoW for pfn mappings. we don't always have a
> + * hardware-managed access flag on arm64.
> + */
> +static inline bool arch_faults_on_old_pte(void)
> +{
> +	return true;

Shouldn't youc check if this particular machine supports hardware access
bit?

> +}
> +#define arch_faults_on_old_pte arch_faults_on_old_pte
> +
>  #endif /* !__ASSEMBLY__ */
>  
>  #endif /* __ASM_PGTABLE_H */
> -- 
> 2.17.1
> 
> 

-- 
 Kirill A. Shutemov

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
