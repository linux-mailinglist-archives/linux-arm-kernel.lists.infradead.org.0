Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88DA435920
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 10:59:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=25VN5doWt5g8d9bMjtSvMr7AOaWWgrc6KNuoCT67sSU=; b=quAhVmb0J0QDkm
	5XrpQcy7g0Ru0PFJg2TVeJGlB+pvxve+oCDlwamqyo/2D7tawJO4A2ri94PrR6grjaj8uD4qMOipL
	zZuWTa1EqAaa/P2CKD517tiHJYPk3OFcGxVRF0HQOuG3B1bh1JgkEcs/kvsUmIRDvByi8i6udi7Cm
	cVIk36m0yYie6Ff8yvc+PPgMDMCASIcXhlPam4jFiK4IelQkCOROTLsE1dzgd02NWGl0g7HIOYyLz
	QgrQNBXgcuAVgxEVi04au2P+ZNS7nApvAlv65Gl4aRX3Ps80R7Zbmg/CPjKu8gvSuuWABAX4U06rG
	ZyOdVFz8M3TXUKQNVrfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYRlJ-0003PE-Uz; Wed, 05 Jun 2019 08:59:13 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYRlB-0003Gw-T8
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 08:59:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 63AAFA78;
 Wed,  5 Jun 2019 01:59:03 -0700 (PDT)
Received: from [10.1.197.45] (e112298-lin.cambridge.arm.com [10.1.197.45])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2E3ED3F690;
 Wed,  5 Jun 2019 01:59:02 -0700 (PDT)
Subject: Re: [PATCH v1 1/6] KVM: arm64: Abstract the size of the HYP vectors
 pre-amble
To: James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu
References: <20190604144551.188107-1-james.morse@arm.com>
 <20190604144551.188107-2-james.morse@arm.com>
From: Julien Thierry <julien.thierry@arm.com>
Message-ID: <34170392-528f-b57c-e50c-16eac02a5043@arm.com>
Date: Wed, 5 Jun 2019 09:58:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <20190604144551.188107-2-james.morse@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_015905_953520_BC379810 
X-CRM114-Status: GOOD (  19.44  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Suzuki K Pouloze <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi James,

On 04/06/2019 15:45, James Morse wrote:
> The EL2 vector hardening feature causes KVM to generate vectors for
> each type of CPU present in the system. The generated sequences already
> do some of the early guest-exit work (i.e. saving registers). To avoid
> duplication the generated vectors branch to the original vector just
> after the preamble. This size is hard coded.
> 
> Adding new instructions to the HYP vector causes strange side effects,
> which are difficult to debug as the affected code is patched in at
> runtime.
> 
> Add KVM_VECTOR_PREAMBLE to tell kvm_patch_vector_branch() how big
> the preamble is. The valid_vect macro can then validate this at
> build time.
> 
> Signed-off-by: James Morse <james.morse@arm.com>
> ---
>  arch/arm64/include/asm/kvm_asm.h |  6 ++++++
>  arch/arm64/kvm/hyp/hyp-entry.S   | 10 +++++++++-
>  arch/arm64/kvm/va_layout.c       |  7 +++----
>  3 files changed, 18 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/kvm_asm.h b/arch/arm64/include/asm/kvm_asm.h
> index ff73f5462aca..9170c43b332f 100644
> --- a/arch/arm64/include/asm/kvm_asm.h
> +++ b/arch/arm64/include/asm/kvm_asm.h
> @@ -41,6 +41,12 @@
>  	{ARM_EXCEPTION_TRAP, 		"TRAP"		},	\
>  	{ARM_EXCEPTION_HYP_GONE,	"HYP_GONE"	}
>  
> +/*
> + * Size of the HYP vectors preamble. kvm_patch_vector_branch() generates code
> + * that jumps over this.
> + */
> +#define KVM_VECTOR_PREAMBLE	4

Nit: I would use AARCH64_INSN_SIZE instead of 4 for the value if
possible. Makes it clear what the value of the vectore preamble
represent (and if we ad instruction we just multiply).

Otherwise the patch seems a good improvement.

Reviewed-by: Julien Thierry <julien.thierry@arm.com>

Thanks,

-- 
Julien Thierry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
