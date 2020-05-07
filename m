Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3FDC1C9667
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 18:24:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MF8zUQQBtPb0ftGqvpQ2eIHh34Wqx388mIINJ2sMumI=; b=mHRRdOyy6Re3j1
	ioi9PNEH/x7X8Gq8e1uX1PEAFPJZgEdQ8V0eioNX0P/QO36quLByuyZGV1EOXTFOcQ4NBkv38g1KD
	riWbIWOV3SyNGw9RxLSMrLtk6Hp+hfdvVdn3JI55DxSjrHqnTROFS2HA9mHyjX9UL5qxWEEjwx0Rj
	GlsqchPwHmMtqko5wc7Xs6dHD6vzmtUeMOp6i/ypcM04wNpNGBW4edIMftiTU0QFmk1RFYFw0d9xM
	O8wuqCxLmV/jvzpKCR+HBM5ksepOZOvbDe2UFcJxzpbilT/KeqBkRpBjFK8zoe5mpouBpBONPCBc7
	jp3HIVe51rseOnG82Odg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWjJa-0000br-ER; Thu, 07 May 2020 16:24:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWjII-0007yM-Vf; Thu, 07 May 2020 16:22:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6EF1B101E;
 Thu,  7 May 2020 09:22:40 -0700 (PDT)
Received: from [192.168.0.14] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B47893F71F;
 Thu,  7 May 2020 09:22:37 -0700 (PDT)
Subject: Re: [PATCH v9 16/18] arm64: kexec: configure trans_pgd page table for
 kexec
To: Pavel Tatashin <pasha.tatashin@soleen.com>
References: <20200326032420.27220-1-pasha.tatashin@soleen.com>
 <20200326032420.27220-17-pasha.tatashin@soleen.com>
From: James Morse <james.morse@arm.com>
Message-ID: <5ed92d16-123c-8b79-0fc1-4cefdee65d5d@arm.com>
Date: Thu, 7 May 2020 17:22:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200326032420.27220-17-pasha.tatashin@soleen.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_092243_183259_A69DACF6 
X-CRM114-Status: GOOD (  23.18  )
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
> Configure a page table located in kexec-safe memory that has
> the following mappings:
> 
> 1. identity mapping for text of relocation function with executable
>    permission.
> 2. linear mappings for all source ranges
> 3. linear mappings for all destination ranges.

Its taken this long to work out your definition of linear here doesn't match the way the
rest of the arch code uses the term.

You are using the MMU to re-assemble the scattered kexec image in VA space, so that the
relocation code doesn't have to walk the list.

While its a cool trick, I don't think this is a good idea, it makes it much harder to
debug as we have a new definition for VA->PA, instead of re-using the kernels. We should
do the least surprising thing. The person debugging a problem's first assumptions should
be correct. Doing this means any debug information printed before kexec() is suddenly
useless for debugging a problem that occurs during relocation.

...

Let me hack together what I've been describing and we can discuss whether its simpler.
(most of next week is gone already though...)

(some Nits below)

> diff --git a/arch/arm64/include/asm/kexec.h b/arch/arm64/include/asm/kexec.h
> index 0f758fd51518..8f4332ac607a 100644
> --- a/arch/arm64/include/asm/kexec.h
> +++ b/arch/arm64/include/asm/kexec.h
> @@ -108,6 +108,12 @@ extern const unsigned long kexec_el2_vectors_offset;
>   * el2_vector	If present means that relocation routine will go to EL1
>   *		from EL2 to do the copy, and then back to EL2 to do the jump
>   *		to new world.
> + * trans_ttbr0	idmap for relocation function and its argument
> + * trans_ttbr1	linear map for source/destination addresses.
> + * trans_t0sz	t0sz for idmap page in trans_ttbr0

You should be able to load the TTBR0_EL1 (and corresponding TCR_EL1.T0SZ) before kicking
off the relocation code. There should be no need to pass it in to assembly.

For example, hibernate sets TTBR0_EL1 in create_safe_exec_page().


> + * src_addr	linear map for source pages.
> + * dst_addr	linear map for destination pages.
> + * copy_len	Number of bytes that need to be copied
>   */
>  struct kern_reloc_arg {
>  	phys_addr_t head;

> @@ -70,10 +71,90 @@ static void *kexec_page_alloc(void *arg)
>  	return page_address(page);
>  }
>  
> +/*
> + * Map source segments starting from src_va, and map destination
> + * segments starting from dst_va, and return size of copy in
> + * *copy_len argument.
> + * Relocation function essentially needs to do:
> + * memcpy(dst_va, src_va, copy_len);
> + */
> +static int map_segments(struct kimage *kimage, pgd_t *pgdp,
> +			struct trans_pgd_info *info,
> +			unsigned long src_va,
> +			unsigned long dst_va,
> +			unsigned long *copy_len)
> +{
> +	unsigned long *ptr = 0;
> +	unsigned long dest = 0;
> +	unsigned long len = 0;
> +	unsigned long entry, addr;
> +	int rc;
> +
> +	for (entry = kimage->head; !(entry & IND_DONE); entry = *ptr++) {
> +		addr = entry & PAGE_MASK;
> +
> +		switch (entry & IND_FLAGS) {
> +		case IND_DESTINATION:
> +			dest = addr;
> +			break;

So we hope to always find a destination first?


> +		case IND_INDIRECTION:
> +			ptr = __va(addr);
> +			if (rc)
> +				return rc;

Where does rc come from?

> +			break;

> +		case IND_SOURCE:
> +			rc = trans_pgd_map_page(info, pgdp, __va(addr),
> +						src_va, PAGE_KERNEL);
> +			if (rc)
> +				return rc;
> +			rc = trans_pgd_map_page(info, pgdp, __va(dest),
> +						dst_va, PAGE_KERNEL);
> +			if (rc)
> +				return rc;
> +			dest += PAGE_SIZE;
> +			src_va += PAGE_SIZE;
> +			dst_va += PAGE_SIZE;
> +			len += PAGE_SIZE;
> +		}
> +	}
> +	*copy_len = len;
> +
> +	return 0;
> +}
> +
> @@ -89,9 +170,18 @@ int machine_kexec_post_load(struct kimage *kimage)
>  		kern_reloc_arg->el2_vector = __pa(reloc_code)
>  						+ kexec_el2_vectors_offset;
>  	}
> +
> +	/*
> +	 * If relocation is not needed, we do not need to enable MMU in

Strictly you aren't enabling it, but disabling it _after_ the relocation.


> +	 * relocation routine, therefore do not create page tables for
> +	 * scenarios such as crash kernel
> +	 */
> +	if (!(kimage->head & IND_DONE))
> +		rc = mmu_relocate_setup(kimage, reloc_code, kern_reloc_arg);
> +
>  	kexec_image_info(kimage);
>  
> -	return 0;
> +	return rc;
>  }


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
