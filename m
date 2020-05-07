Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F6621C9BE7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 22:15:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Z8i5bUUFXTnHJEfSKi34myxbh+eU9JxJxYoJtQ0gLMY=; b=Y06qSNpz/1Oa1hE1qi7H0VdeB
	yvkK03wLHyPRg1XgSrlDVJ8flrKa9Ovg1M/Au0lMTullVtpixhT56kGqfUXN3gKiw2E57JmKcuVaf
	JaYCxITkiunNUQNz5JcS081w2HYA3m5PmK6ywbIGlum8chu8bMZp3C3C1kkjBjXqm7Yf1J9y1gU1/
	7Ny3NHwSxI9vuVkDO//YADJyUdSB/f4cuWyhVjFoTS9jKngJEkBKHjN+GGhQR+b43HzNdqYsZopps
	YwL2vfGgCpsZJjQ7XWMdESyh9UEojNR0x9Srs8dBWYZw49uLSrruW28q0NySrnv7BWHCiJjij6ZEe
	agF0kX7KA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWmvm-0007cv-2X; Thu, 07 May 2020 20:15:42 +0000
Received: from www62.your-server.de ([213.133.104.62])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWmve-0007c2-Qx
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 20:15:36 +0000
Received: from sslproxy05.your-server.de ([78.46.172.2])
 by www62.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.89_1) (envelope-from <daniel@iogearbox.net>)
 id 1jWmvV-0008H6-73; Thu, 07 May 2020 22:15:25 +0200
Received: from [178.195.186.98] (helo=pc-9.home)
 by sslproxy05.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <daniel@iogearbox.net>)
 id 1jWmvU-0008Ko-RK; Thu, 07 May 2020 22:15:24 +0200
Subject: Re: [PATCH v3 05/11] arm64: bpf: Annotate JITed code for BTI
To: Mark Brown <broonie@kernel.org>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon
 <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>
References: <20200506195138.22086-1-broonie@kernel.org>
 <20200506195138.22086-6-broonie@kernel.org>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <4da1f963-87ef-990e-00aa-d6de9c44207c@iogearbox.net>
Date: Thu, 7 May 2020 22:15:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20200506195138.22086-6-broonie@kernel.org>
Content-Language: en-US
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.102.2/25805/Thu May  7 14:14:46 2020)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_131534_871358_29E1D717 
X-CRM114-Status: GOOD (  18.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.133.104.62 listed in list.dnswl.org]
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
Cc: Kees Cook <keescook@chromium.org>,
 Jean-Philippe Brucker <jean-philippe.brucker@arm.com>,
 Amit Kachhap <amit.kachhap@arm.com>, bpf@vger.kernel.org,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[ Cc +bpf ]

On 5/6/20 9:51 PM, Mark Brown wrote:
> In order to extend the protection offered by BTI to all code executing in
> kernel mode we need to annotate JITed BPF code appropriately for BTI. To
> do this we need to add a landing pad to the start of each BPF function and
> also immediately after the function prologue if we are emitting a function
> which can be tail called. Jumps within BPF functions are all to immediate
> offsets and therefore do not require landing pads.
> 
> Signed-off-by: Mark Brown <broonie@kernel.org>
> Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>

Acked-by: Daniel Borkmann <daniel@iogearbox.net>

> ---
>   arch/arm64/net/bpf_jit.h      |  8 ++++++++
>   arch/arm64/net/bpf_jit_comp.c | 12 ++++++++++++
>   2 files changed, 20 insertions(+)
> 
> diff --git a/arch/arm64/net/bpf_jit.h b/arch/arm64/net/bpf_jit.h
> index eb73f9f72c46..05b477709b5f 100644
> --- a/arch/arm64/net/bpf_jit.h
> +++ b/arch/arm64/net/bpf_jit.h
> @@ -189,4 +189,12 @@
>   /* Rn & Rm; set condition flags */
>   #define A64_TST(sf, Rn, Rm) A64_ANDS(sf, A64_ZR, Rn, Rm)
>   
> +/* HINTs */
> +#define A64_HINT(x) aarch64_insn_gen_hint(x)
> +
> +/* BTI */
> +#define A64_BTI_C  A64_HINT(AARCH64_INSN_HINT_BTIC)
> +#define A64_BTI_J  A64_HINT(AARCH64_INSN_HINT_BTIJ)
> +#define A64_BTI_JC A64_HINT(AARCH64_INSN_HINT_BTIJC)
> +
>   #endif /* _BPF_JIT_H */
> diff --git a/arch/arm64/net/bpf_jit_comp.c b/arch/arm64/net/bpf_jit_comp.c
> index cdc79de0c794..83fa475c6b42 100644
> --- a/arch/arm64/net/bpf_jit_comp.c
> +++ b/arch/arm64/net/bpf_jit_comp.c
> @@ -171,7 +171,11 @@ static inline int epilogue_offset(const struct jit_ctx *ctx)
>   #define STACK_ALIGN(sz) (((sz) + 15) & ~15)
>   
>   /* Tail call offset to jump into */
> +#if IS_ENABLED(CONFIG_ARM64_BTI_KERNEL)
> +#define PROLOGUE_OFFSET 8
> +#else
>   #define PROLOGUE_OFFSET 7
> +#endif
>   
>   static int build_prologue(struct jit_ctx *ctx, bool ebpf_from_cbpf)
>   {
> @@ -208,6 +212,10 @@ static int build_prologue(struct jit_ctx *ctx, bool ebpf_from_cbpf)
>   	 *
>   	 */
>   
> +	/* BTI landing pad */
> +	if (IS_ENABLED(CONFIG_ARM64_BTI_KERNEL))
> +		emit(A64_BTI_C, ctx);
> +
>   	/* Save FP and LR registers to stay align with ARM64 AAPCS */
>   	emit(A64_PUSH(A64_FP, A64_LR, A64_SP), ctx);
>   	emit(A64_MOV(1, A64_FP, A64_SP), ctx);
> @@ -230,6 +238,10 @@ static int build_prologue(struct jit_ctx *ctx, bool ebpf_from_cbpf)
>   				    cur_offset, PROLOGUE_OFFSET);
>   			return -1;
>   		}
> +
> +		/* BTI landing pad for the tail call, done with a BR */
> +		if (IS_ENABLED(CONFIG_ARM64_BTI_KERNEL))
> +			emit(A64_BTI_J, ctx);
>   	}
>   
>   	ctx->stack_size = STACK_ALIGN(prog->aux->stack_depth);
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
