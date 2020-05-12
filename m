Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 341D01CFC1E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 19:26:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U4NyT4n4GhJFIN5Y4b1JWsLjZt2qZgB9IZaw+GZsnHc=; b=D6IaxLKZvamqFr
	Gsp/S2C03zOgacDSpgoL0SkfsOmVDjWm6/NLgtZWPh5g+DnYOn8KNhux+wUSVMLh2mXccjaQQ8QxM
	AwQ+kGlBPSeXGh7Q8Cdro74ag6uEgKI6faMx5SzhcfA/mr2HICdii6Fw2ZbiB40Kna5n8q8SbqGGi
	Knd3BJOJOOzzGdPburruKpVal2wxDcBwGFw6HnJ/vc5QzKjeC+a40s/WC/iCmHbK9YN84khRxjrgd
	nKbr43u8oE7UowSRW9H/kg4PrlqkgVG/SHnm2CG8uPihcwLH7EWHdoxEGmqoWfO5E+GwSpsymbm+Q
	tIKpWet98fjFjd1lJMAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYYfn-0000iA-FX; Tue, 12 May 2020 17:26:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYYfa-0000hC-An
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 17:26:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CE76F1FB;
 Tue, 12 May 2020 10:26:17 -0700 (PDT)
Received: from [192.168.0.14] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D5CC73F305;
 Tue, 12 May 2020 10:26:15 -0700 (PDT)
Subject: Re: [PATCH 08/26] KVM: arm64: Use TTL hint in when invalidating
 stage-2 translations
To: Marc Zyngier <maz@kernel.org>
References: <20200422120050.3693593-1-maz@kernel.org>
 <20200422120050.3693593-9-maz@kernel.org>
From: James Morse <james.morse@arm.com>
Message-ID: <157643ed-53a7-db90-e898-c0c040a93716@arm.com>
Date: Tue, 12 May 2020 18:26:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200422120050.3693593-9-maz@kernel.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_102618_448881_DE94820E 
X-CRM114-Status: GOOD (  14.04  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Jintack Lim <jintack@cs.columbia.edu>, Andre Przywara <andre.przywara@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, kvmarm@lists.cs.columbia.edu,
 Will Deacon <will@kernel.org>, George Cherian <gcherian@marvell.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 "Zengtao \(B\)" <prime.zeng@hisilicon.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Alexandru Elisei <alexandru.elisei@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 22/04/2020 13:00, Marc Zyngier wrote:
> Since we always have a precide idea of the level we're dealing with

(precise)

> when invalidating TLBs, we can provide it to as a hint to our
> invalidation helper.

> diff --git a/arch/arm64/include/asm/stage2_pgtable.h b/arch/arm64/include/asm/stage2_pgtable.h
> index 326aac658b9da..7ed5c1a769a9b 100644
> --- a/arch/arm64/include/asm/stage2_pgtable.h
> +++ b/arch/arm64/include/asm/stage2_pgtable.h
> @@ -230,4 +230,13 @@ stage2_pgd_addr_end(struct kvm *kvm, phys_addr_t addr, phys_addr_t end)
>  	return (boundary - 1 < end - 1) ? boundary : end;
>  }
>  
> +/*
> + * Level values for the ARMv8.4-TTL extension, mapping PUD/PMD/PTE and
> + * the architectural page-table level.
> + */
> +#define S2_NO_LEVEL_HINT	0
> +#define S2_PUD_LEVEL		1
> +#define S2_PMD_LEVEL		2
> +#define S2_PTE_LEVEL		3

Are these really just for stage2, would the stage1 definition be the same?

~

Digging into the VTCR_EL2.SL0 trickery, it does everything at pgd where there are no block
mappings, and no hints, so it looks fine.

Reviewed-by: James Morse <james.morse@arm.com>


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
