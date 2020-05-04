Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65AE11C3B6D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 15:41:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TJ4hkr+G0z8Wbk6ROk+zNMONtY0Jc2eak75LlTBJMLw=; b=ZtfqiVjfC8numV
	Y3QStJ9n1WK2fp9W1ZKGnsmCCgvLeNZuXmtO4EW8F2kRnua8Sh2iH8QWrofwK8CysHQdeGLmctsfq
	8qAifPqyajKRjxMFRSojHg22Ep6eR+lVxxuqd3bpHsw5mU3lETBeT/h2i4c+1YlOFue5FE0BgPhTa
	1npPCxTg1mnmX0lPFFX8V++GJyQwF5s/Sf8egPzzR3Sujcc9Ssnzdir+LWTimO4jK5wORzRXEPB68
	DB+8XDDmWdACI8Qltlo7Bru1phbpuVq5gchM9sLF/8d4q9Ft1VezjwkRaCcBi1f3Up/NsfbM5UK0o
	P4W+bmGCrEyPRnSk31/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVbL1-0002TV-4v; Mon, 04 May 2020 13:40:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVbKq-0002Se-Me
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 13:40:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id ACE041FB;
 Mon,  4 May 2020 06:40:39 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.4.172])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7270E3F71F;
 Mon,  4 May 2020 06:40:38 -0700 (PDT)
Date: Mon, 4 May 2020 14:40:35 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v4 2/4] arm64: insn: Provide a better name for
 aarch64_insn_is_nop()
Message-ID: <20200504134035.GC73375@C02TD0UTHF1T.local>
References: <20200504131326.18290-1-broonie@kernel.org>
 <20200504131326.18290-3-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200504131326.18290-3-broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_064040_785533_BC78DB09 
X-CRM114-Status: GOOD (  18.27  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 04, 2020 at 02:13:24PM +0100, Mark Brown wrote:
> The current aarch64_insn_is_nop() has exactly one caller which uses it
> solely to identify if the instruction is a HINT that can safely be stepped,
> requiring us to list things that aren't NOPs and make things more confusing
> than they need to be. Rename the function to reflect the actual usage and
> make things more clear.
> 
> Suggested-by: Mark Rutland <mark.rutland@arm.com>
> Signed-off-by: Mark Brown <broonie@kernel.org>

Thanks for this!

Acked-by: Mark Rutland <mark.rutland@arm.com>

Mark.

> ---
>  arch/arm64/include/asm/insn.h          | 2 +-
>  arch/arm64/kernel/insn.c               | 3 +--
>  arch/arm64/kernel/probes/decode-insn.c | 2 +-
>  3 files changed, 3 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/insn.h b/arch/arm64/include/asm/insn.h
> index 575675145fe2..0bc46149e491 100644
> --- a/arch/arm64/include/asm/insn.h
> +++ b/arch/arm64/include/asm/insn.h
> @@ -368,7 +368,7 @@ __AARCH64_INSN_FUNCS(msr_reg,	0xFFF00000, 0xD5100000)
>  
>  #undef	__AARCH64_INSN_FUNCS
>  
> -bool aarch64_insn_is_nop(u32 insn);
> +bool aarch64_insn_is_steppable_hint(u32 insn);
>  bool aarch64_insn_is_branch_imm(u32 insn);
>  
>  static inline bool aarch64_insn_is_adr_adrp(u32 insn)
> diff --git a/arch/arm64/kernel/insn.c b/arch/arm64/kernel/insn.c
> index d63d9cd8b4a2..0829bb5b45ec 100644
> --- a/arch/arm64/kernel/insn.c
> +++ b/arch/arm64/kernel/insn.c
> @@ -51,8 +51,7 @@ enum aarch64_insn_encoding_class __kprobes aarch64_get_insn_class(u32 insn)
>  	return aarch64_insn_encoding_class[(insn >> 25) & 0xf];
>  }
>  
> -/* NOP is an alias of HINT */
> -bool __kprobes aarch64_insn_is_nop(u32 insn)
> +bool __kprobes aarch64_insn_is_steppable_hint(u32 insn)
>  {
>  	if (!aarch64_insn_is_hint(insn))
>  		return false;
> diff --git a/arch/arm64/kernel/probes/decode-insn.c b/arch/arm64/kernel/probes/decode-insn.c
> index b78fac9e546c..263d5fba4c8a 100644
> --- a/arch/arm64/kernel/probes/decode-insn.c
> +++ b/arch/arm64/kernel/probes/decode-insn.c
> @@ -46,7 +46,7 @@ static bool __kprobes aarch64_insn_is_steppable(u32 insn)
>  		 * except for the NOP case.
>  		 */
>  		if (aarch64_insn_is_hint(insn))
> -			return aarch64_insn_is_nop(insn);
> +			return aarch64_insn_is_steppable_hint(insn);
>  
>  		return true;
>  	}
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
