Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAABF1BE4A5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 19:03:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g5PI9GwMHGS7E/Hg6/LSS2efborUKxamRCe1/IeDBYw=; b=JIi6rzibpCJDtP
	HbGtzLnkOTOm9VvqKm0sJrDiMh0amuz9Z1Gj4BuVozwfwEQ9JPJGSHDlWyVTsJpebOI/cHoCtQ0xa
	Mcd9EOUeqItJP5Ki+B9Rx1Q5vfuyynyePNqWrw33Q4X5ngT3iJaVfZGr0ymRGuFL4HLFYTdEW9c91
	baZYwv+kInkTHdomVKvv52typnDh22uaivU+2vYOKsSqYnQRsA0PqfQ4RuOba0UvSH91uC4K88NSr
	kA6Gk2ywQ/k/BrFCxBDZANVUL/+1QTu9d6+ZfOPOYl4r0/qC9fPdmnsLc9YpgoHSJ7ffh5lg1T8yt
	NyGT+/ml2vJaHV02VAvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTq6y-0003fF-HG; Wed, 29 Apr 2020 17:03:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTq5M-0002OH-D5; Wed, 29 Apr 2020 17:01:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7D33E1045;
 Wed, 29 Apr 2020 10:01:23 -0700 (PDT)
Received: from [192.168.0.14] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 03D103F73D;
 Wed, 29 Apr 2020 10:01:20 -0700 (PDT)
Subject: Re: [PATCH v9 07/18] arm64: trans_pgd: hibernate: idmap the single
 page that holds the copy page routines
To: Pavel Tatashin <pasha.tatashin@soleen.com>
References: <20200326032420.27220-1-pasha.tatashin@soleen.com>
 <20200326032420.27220-8-pasha.tatashin@soleen.com>
From: James Morse <james.morse@arm.com>
Message-ID: <b79b0b58-5f8e-913b-3913-b95551ef7ce1@arm.com>
Date: Wed, 29 Apr 2020 18:01:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200326032420.27220-8-pasha.tatashin@soleen.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_100124_695582_2591F08A 
X-CRM114-Status: GOOD (  23.24  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: sashal@kernel.org, mark.rutland@arm.com, vladimir.murzin@arm.com,
 corbet@lwn.net, catalin.marinas@arm.com, bhsharma@redhat.com,
 steve.capper@arm.com, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 jmorris@namei.org, linux-mm@kvack.org, rfontana@redhat.com,
 ebiederm@xmission.com, maz@kernel.org, matthias.bgg@gmail.com,
 tglx@linutronix.de, will@kernel.org, selindag@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Pavel,

On 26/03/2020 03:24, Pavel Tatashin wrote:
> From: James Morse <james.morse@arm.com>
> 
> To resume from hibernate, the contents of memory are restored from
> the swap image. This may overwrite any page, including the running
> kernel and its page tables.
> 
> Hibernate copies the code it uses to do the restore into a single
> page that it knows won't be overwritten, and maps it with page tables
> built from pages that won't be overwritten.
> 
> Today the address it uses for this mapping is arbitrary, but to allow
> kexec to reuse this code, it needs to be idmapped. To idmap the page
> we must avoid the kernel helpers that have VA_BITS baked in.
> 
> Convert create_single_mapping() to take a single PA, and idmap it.
> The page tables are built in the reverse order to normal using
> pfn_pte() to stir in any bits between 52:48. T0SZ is always increased
> to cover 48bits, or 52 if the copy code has bits 52:48 in its PA.
> 
> Pasha: The original patch from James
> inux-arm-kernel/20200115143322.214247-4-james.morse@arm.com

-EBROKENLINK

The convention is to use a 'Link:' tag in the signed-off area.
e.g. 5a3577039cbe

> Adopted it to trans_pgd, so it can be commonly used by both Kexec
> and Hibernate. Some minor clean-ups.

Please describe your changes just before your SoB. This means each author sign's off on
the stuff above their SoB, and its obvious who made which changes.

Search for 'Lucky K Maintainer' in process/submitting-patches.rst for an example.


> diff --git a/arch/arm64/include/asm/trans_pgd.h b/arch/arm64/include/asm/trans_pgd.h
> index 97a7ea73b289..4912d3caf0ca 100644
> --- a/arch/arm64/include/asm/trans_pgd.h
> +++ b/arch/arm64/include/asm/trans_pgd.h
> @@ -32,4 +32,7 @@ int trans_pgd_create_copy(struct trans_pgd_info *info, pgd_t **trans_pgd,
>  int trans_pgd_map_page(struct trans_pgd_info *info, pgd_t *trans_pgd,
>  		       void *page, unsigned long dst_addr, pgprot_t pgprot);

This trans_pgd_map_page() used to be create_single_mapping(), which is where the original
patch made its changes.

You should only need one of these, not both.


> +int trans_pgd_idmap_page(struct trans_pgd_info *info, phys_addr_t *trans_ttbr0,
> +			 unsigned long *t0sz, void *page);
> +
>  #endif /* _ASM_TRANS_TABLE_H */

> diff --git a/arch/arm64/mm/trans_pgd.c b/arch/arm64/mm/trans_pgd.c
> index 37d7d1c60f65..c2517d1af2af 100644
> --- a/arch/arm64/mm/trans_pgd.c
> +++ b/arch/arm64/mm/trans_pgd.c
> @@ -242,3 +242,52 @@ int trans_pgd_map_page(struct trans_pgd_info *info, pgd_t *trans_pgd,
>  
>  	return 0;
>  }
> +
> +/*
> + * The page we want to idmap may be outside the range covered by VA_BITS that
> + * can be built using the kernel's p?d_populate() helpers. As a one off, for a
> + * single page, we build these page tables bottom up and just assume that will
> + * need the maximum T0SZ.
> + *
> + * Returns 0 on success, and -ENOMEM on failure.
> + * On success trans_ttbr0 contains page table with idmapped page, t0sz is set to

> + * maxumum T0SZ for this page.

maxumum

> + */


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
