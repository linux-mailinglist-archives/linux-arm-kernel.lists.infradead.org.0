Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02A844EC18
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 17:34:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nzwq9w09es+93Gqv5mBKiSzhtpjbTu+TulQbTd97Z/o=; b=jdbugvNAJGvv65
	Hi8rbqtDkw2nH3iE+0Vnmdy49EVqFmBrdgWgurpAYhFFIRhxcrN4hi24AKFSGUzExxskpAlChPPT2
	1H69YH8tMmbnf4+0ZsrDx9CLpP2Y78BtKhacuBacpRFFj2mLVhBjx8rfNcDftlgygQzEAAui4NkiQ
	BghHp36LGYPVCIfvkH8wmzUgItO2SoVGbcZiX7LG3eQfSDybYNd4G9QmmWOWscwqW2azDcTGRu4f4
	Wh8QZBQrO3OzHQ6MEnXgVirzx7Nc9D/U1ic5ZIjo9dKj5H1P9eFQzOgsrBFc6TuMnhatyhsWIHSDg
	28erjuVWMQgeRZ6PadxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heLYb-0001Eg-3S; Fri, 21 Jun 2019 15:34:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heLXN-0000Sm-56
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 15:33:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D11841500;
 Fri, 21 Jun 2019 08:33:12 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 97EE13F575;
 Fri, 21 Jun 2019 08:33:11 -0700 (PDT)
Date: Fri, 21 Jun 2019 16:33:09 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Julien Grall <julien.grall@arm.com>
Subject: Re: [RFC PATCH v2 6/8] arm64/sve: Implement an helper to load SVE
 registers from FPSIMD state
Message-ID: <20190621153309.GB2790@e103592.cambridge.arm.com>
References: <20190613161656.20765-1-julien.grall@arm.com>
 <20190613161656.20765-7-julien.grall@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190613161656.20765-7-julien.grall@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_083313_321032_56F47037 
X-CRM114-Status: GOOD (  16.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Anton.Kirilov@arm.com, catalin.marinas@arm.com, will.deacon@arm.com,
 oleg@redhat.com, zhang.lei@jp.fujitsu.com, alex.bennee@linaro.org,
 linux-arm-kernel@lists.infradead.org, Daniel.Kiss@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 13, 2019 at 05:16:54PM +0100, Julien Grall wrote:
> In a follow-up patch, we may save the FPSIMD rather than the full SVE
> state when the state has to be zeroed on return to userspace (e.g
> during a syscall).
> 
> Introduce an helper to load SVE vectors from FPSIMD state and zero the rest
> of SVE registers.
> 
> Signed-off-by: Julien Grall <julien.grall@arm.com>
> ---
>  arch/arm64/include/asm/fpsimd.h  |  3 +++
>  arch/arm64/kernel/entry-fpsimd.S | 17 +++++++++++++++++
>  2 files changed, 20 insertions(+)
> 
> diff --git a/arch/arm64/include/asm/fpsimd.h b/arch/arm64/include/asm/fpsimd.h
> index fda3544c9606..f07a88552588 100644
> --- a/arch/arm64/include/asm/fpsimd.h
> +++ b/arch/arm64/include/asm/fpsimd.h
> @@ -86,6 +86,9 @@ extern void sve_load_state(void const *state, u32 const *pfpsr,
>  
>  extern void sve_flush_live(void);
>  
> +extern void sve_load_from_fpsimd_state(struct user_fpsimd_state const *state,
> +				       unsigned long vq_minus_1);
> +

Lose the extra blank line?

>  extern unsigned int sve_get_vl(void);
>  
>  struct arm64_cpu_capabilities;
> diff --git a/arch/arm64/kernel/entry-fpsimd.S b/arch/arm64/kernel/entry-fpsimd.S
> index 17121a51c41f..35c21a707730 100644
> --- a/arch/arm64/kernel/entry-fpsimd.S
> +++ b/arch/arm64/kernel/entry-fpsimd.S
> @@ -58,6 +58,23 @@ ENTRY(sve_get_vl)
>  	ret
>  ENDPROC(sve_get_vl)
>  
> +/*
> + * Load SVE state from FPSIMD state.
> + *
> + * x0 = pointer to struct fpsimd_state
> + * x1 = VQ - 1
> + *
> + * Each SVE vector will be loaded with the first 128-bits taken from FPSIMD
> + * and the rest zeroed. All the other SVE registers will be zeroed.
> + */
> +ENTRY(sve_load_from_fpsimd_state)
> +		sve_load_vq	x1, x2, x3
> +		fpsimd_restore	x0, 8
> + _for n, 0, 15, _sve_pfalse	\n
> +		_sve_wrffr 0
> +		ret
> +ENDPROC(sve_load_from_fpsimd_state)
> +
>  /* Zero all SVE registers but the first 128-bits of each vector */
>  ENTRY(sve_flush_live)
>  	sve_flush

With the extra blank line in fpsimd.h gone (if you agree):

Reviewed-by: Dave Martin <Dave.Martin@arm.com>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
