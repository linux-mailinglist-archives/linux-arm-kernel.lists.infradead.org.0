Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21CEA8486B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 11:09:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PiWVDGgvQ3kYEefY/tea0WoTXMggxWHF3tcVqKfsNVo=; b=ozuXt7n15z7xHV
	Qc9GIR/XiW6zRWmaB5F3nHzGKyXYNJXYR47EXVbOA3nFN7t+NjkOhZRCCr4kb/iD3CqGXxfVI50fO
	GTUpvHetCHNGTl+QJdZEMeDonpe6ina984nzZRHLO1FJQxPhpYcvZ0tfDH2JvYft4UcKcCk2+qbp7
	TgDYKk5W1+b2plNbOqKeB4Mj9Tw/K2zP7Hx1pqTO4F+feNatb/Zln9D/GtWvvWv1gVhs6SXtp9ujj
	j7H3GdDlEPjvFbq7NUW4e6+Rknjo2CSAR7TTBS0aRXPhOO+Wwupnv8cPsgjRacx5Zc2wdfjW7SuJK
	8BJprUCjTiYZO0O64R8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvHx8-0004cQ-1b; Wed, 07 Aug 2019 09:09:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvHwt-0004c5-Lv
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 09:09:36 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E123621923;
 Wed,  7 Aug 2019 09:09:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565168975;
 bh=XQaexSKpB8mjQkX9j2g2RC9xp05Rscu1DqTDQY3MAQ8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=paLu/T8/g5s29vdIji8xgfdeM6HRb3Plfvlozu0Sp2+Nov9i8Xb7jUQd6hEbec2SI
 /8EEfcBFw9uoVcqjnxQa/qWawtSvSNBtU03i2qObDLVs2h2mmHaufhGwGA5Cn2vUPG
 gWq+cBpa+fo539mrgFOn6BubxfBT7fkaE54UQcGI=
Date: Wed, 7 Aug 2019 10:09:29 +0100
From: Will Deacon <will@kernel.org>
To: Jia He <justin.he@arm.com>
Subject: Re: [PATCH] arm64: mm: add missing PTE_SPECIAL in pte_mkdevmap on
 arm64
Message-ID: <20190807090929.zsiupxyqop75uzkn@willie-the-truck>
References: <20190807045851.10772-1-justin.he@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190807045851.10772-1-justin.he@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_020935_741622_CE5771D8 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, linux-kernel@vger.kernel.org,
 Jun Yao <yaojun8558363@gmail.com>, Qian Cai <cai@lca.pw>,
 Punit Agrawal <punitagrawal@gmail.com>, James Morse <james.morse@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, Robin Murphy <robin.murphy@arm.com>,
 Alex Van Brunt <avanbrunt@nvidia.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 07, 2019 at 12:58:51PM +0800, Jia He wrote:
> diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
> index 5fdcfe237338..e09760ece844 100644
> --- a/arch/arm64/include/asm/pgtable.h
> +++ b/arch/arm64/include/asm/pgtable.h
> @@ -209,7 +209,7 @@ static inline pmd_t pmd_mkcont(pmd_t pmd)
>  
>  static inline pte_t pte_mkdevmap(pte_t pte)
>  {
> -	return set_pte_bit(pte, __pgprot(PTE_DEVMAP));
> +	return set_pte_bit(pte, __pgprot(PTE_DEVMAP | PTE_SPECIAL));
>  }
>  
>  static inline void set_pte(pte_t *ptep, pte_t pte)
> @@ -396,7 +396,10 @@ static inline int pmd_protnone(pmd_t pmd)
>  #ifdef CONFIG_TRANSPARENT_HUGEPAGE
>  #define pmd_devmap(pmd)		pte_devmap(pmd_pte(pmd))
>  #endif
> -#define pmd_mkdevmap(pmd)	pte_pmd(pte_mkdevmap(pmd_pte(pmd)))
> +static inline pmd_t pmd_mkdevmap(pmd_t pmd)
> +{
> +	return pte_pmd(set_pte_bit(pmd_pte(pmd), __pgprot(PTE_DEVMAP)));
> +}
>  
>  #define __pmd_to_phys(pmd)	__pte_to_phys(pmd_pte(pmd))
>  #define __phys_to_pmd_val(phys)	__phys_to_pte_val(phys)

Acked-by: Will Deacon <will@kernel.org>

I think Catalin can take this as a fix, although the commit message should
probably be trimmed down a bit to remove the two call traces etc.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
