Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C14E1C3C4D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 16:05:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZAlR3b/hH8QoYFrPj4WzoQhhbo9/VyjPhQpY2sflc4Q=; b=r9i+lzgoYvZIhh
	5B9NAho3fBAPK8yhfuXNvHgQc4QsuPYWYxvMAxLEqUJ5iPhTXpU8fBMm2uWWm8iXCeu/fEvLRiDGY
	MZORp1s3HDderDo52oVgvF8tQrqeDqsxkUiQHxAsIu6kwdoUB/XGlX4qAz9BR6sBlLn+bgRO1gJz3
	hGE4+6SSnHxuSsfxIKrKi26mPOan7eP/hMk2i/c4LW9XnszbXUwSgBVLQPpeesL+frB4VGi39ozlm
	SCX+z2NGPz06IMlpz44iCRkwQ4oS5ok6gMAgoWh23A6yUwakqlcrLI70jobAIOGV7bt5nWCtRn0BF
	fMwrBSUWpexDCD8BYm3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVbih-0005Nr-GX; Mon, 04 May 2020 14:05:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVbiX-0003bS-8q
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 14:05:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 70B1A1FB;
 Mon,  4 May 2020 07:05:04 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.4.172])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 25B263F305;
 Mon,  4 May 2020 07:05:03 -0700 (PDT)
Date: Mon, 4 May 2020 15:05:00 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v4 1/4] arm64: insn: Add constants for new HINT
 instruction decode
Message-ID: <20200504140500.GF73375@C02TD0UTHF1T.local>
References: <20200504131326.18290-1-broonie@kernel.org>
 <20200504131326.18290-2-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200504131326.18290-2-broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_070509_430826_A02DF9B7 
X-CRM114-Status: GOOD (  15.81  )
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

On Mon, May 04, 2020 at 02:13:23PM +0100, Mark Brown wrote:
> Add constants for decoding newer instructions defined in the HINT space.
> Since we are now decoding both the op2 and CRm fields rename the enum as
> well; this is compatible with what the existing users are doing.
> 
> Signed-off-by: Mark Brown <broonie@kernel.org>
> Acked-by: Catalin Marinas <catalin.marinas@arm.com>

These all look correct to me per the "Architectural hint instructions"
table on page C5-378 of ARM DDI 0487F.a, so:

Acked-by: Mark Rutland <mark.rutland@arm.com>

It looks like DGH was added recently, so we might want to follow up with
that at some point, but it's certianly not necessary now.

Mark.

> ---
>  arch/arm64/include/asm/insn.h | 28 ++++++++++++++++++++++++++--
>  arch/arm64/kernel/insn.c      |  2 +-
>  2 files changed, 27 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/insn.h b/arch/arm64/include/asm/insn.h
> index bb313dde58a4..575675145fe2 100644
> --- a/arch/arm64/include/asm/insn.h
> +++ b/arch/arm64/include/asm/insn.h
> @@ -39,13 +39,37 @@ enum aarch64_insn_encoding_class {
>  					 * system instructions */
>  };
>  
> -enum aarch64_insn_hint_op {
> +enum aarch64_insn_hint_cr_op {
>  	AARCH64_INSN_HINT_NOP	= 0x0 << 5,
>  	AARCH64_INSN_HINT_YIELD	= 0x1 << 5,
>  	AARCH64_INSN_HINT_WFE	= 0x2 << 5,
>  	AARCH64_INSN_HINT_WFI	= 0x3 << 5,
>  	AARCH64_INSN_HINT_SEV	= 0x4 << 5,
>  	AARCH64_INSN_HINT_SEVL	= 0x5 << 5,
> +
> +	AARCH64_INSN_HINT_XPACLRI    = 0x07 << 5,
> +	AARCH64_INSN_HINT_PACIA_1716 = 0x08 << 5,
> +	AARCH64_INSN_HINT_PACIB_1716 = 0x0A << 5,
> +	AARCH64_INSN_HINT_AUTIA_1716 = 0x0C << 5,
> +	AARCH64_INSN_HINT_AUTIB_1716 = 0x0E << 5,
> +	AARCH64_INSN_HINT_PACIAZ     = 0x18 << 5,
> +	AARCH64_INSN_HINT_PACIASP    = 0x19 << 5,
> +	AARCH64_INSN_HINT_PACIBZ     = 0x1A << 5,
> +	AARCH64_INSN_HINT_PACIBSP    = 0x1B << 5,
> +	AARCH64_INSN_HINT_AUTIAZ     = 0x1C << 5,
> +	AARCH64_INSN_HINT_AUTIASP    = 0x1D << 5,
> +	AARCH64_INSN_HINT_AUTIBZ     = 0x1E << 5,
> +	AARCH64_INSN_HINT_AUTIBSP    = 0x1F << 5,
> +
> +	AARCH64_INSN_HINT_ESB  = 0x10 << 5,
> +	AARCH64_INSN_HINT_PSB  = 0x11 << 5,
> +	AARCH64_INSN_HINT_TSB  = 0x12 << 5,
> +	AARCH64_INSN_HINT_CSDB = 0x14 << 5,
> +
> +	AARCH64_INSN_HINT_BTI   = 0x20 << 5,
> +	AARCH64_INSN_HINT_BTIC  = 0x22 << 5,
> +	AARCH64_INSN_HINT_BTIJ  = 0x24 << 5,
> +	AARCH64_INSN_HINT_BTIJC = 0x26 << 5,
>  };
>  
>  enum aarch64_insn_imm_type {
> @@ -370,7 +394,7 @@ u32 aarch64_insn_gen_comp_branch_imm(unsigned long pc, unsigned long addr,
>  				     enum aarch64_insn_branch_type type);
>  u32 aarch64_insn_gen_cond_branch_imm(unsigned long pc, unsigned long addr,
>  				     enum aarch64_insn_condition cond);
> -u32 aarch64_insn_gen_hint(enum aarch64_insn_hint_op op);
> +u32 aarch64_insn_gen_hint(enum aarch64_insn_hint_cr_op op);
>  u32 aarch64_insn_gen_nop(void);
>  u32 aarch64_insn_gen_branch_reg(enum aarch64_insn_register reg,
>  				enum aarch64_insn_branch_type type);
> diff --git a/arch/arm64/kernel/insn.c b/arch/arm64/kernel/insn.c
> index 4a9e773a177f..d63d9cd8b4a2 100644
> --- a/arch/arm64/kernel/insn.c
> +++ b/arch/arm64/kernel/insn.c
> @@ -574,7 +574,7 @@ u32 aarch64_insn_gen_cond_branch_imm(unsigned long pc, unsigned long addr,
>  					     offset >> 2);
>  }
>  
> -u32 __kprobes aarch64_insn_gen_hint(enum aarch64_insn_hint_op op)
> +u32 __kprobes aarch64_insn_gen_hint(enum aarch64_insn_hint_cr_op op)
>  {
>  	return aarch64_insn_get_hint_value() | op;
>  }
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
