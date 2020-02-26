Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DC39170AB3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 22:42:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=drg0q2CdvEie0W1Lz6vq8+v9m6bAVbQWpaqugQW+VGg=; b=XZnL3OEv4HTmUd
	nDxhgu5e7qf9yjwXiBZGVdK7a45oz6bc40Q2o0jS5qBGGJqlQ5egztU+VHp1qc7F9PxsE+O6+7XON
	DFwkTqay2aKQZb0LGPpWg7i6OU++jOON8+bnbDpyoejQ9d/ewHs2cSSzHFIzz05czIB1K2iaigFld
	P6DHexujgRE1yWwUqKL3CwyQ32Tk0wcKjJ6e3vEm4UHSARoadddhCOaTVN5S9319HG4K2agInsZse
	LRPZ4zd/qIWoC/K5WNmv7cJDV+yfrT5+aJgUR/YLL7/B2JOiXbwh3/6O1mwzqsf/zTvGStaLwp+aB
	wiTINVnfZkO4B3ZtZ4kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j74Rc-0004JV-9f; Wed, 26 Feb 2020 21:42:16 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j74RQ-0004H2-Cq
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 21:42:05 +0000
Received: by mail-pg1-x541.google.com with SMTP id b1so295552pgm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 13:42:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=CMs6CM+hK6aKdC1S/oL5Dxo9YOdRorQKtX4mbGWHNSk=;
 b=CU1gKkU3xVHYfQWJJENAudAyAiPTUD9x0S1kT0iOTLbD28SlxzNGyC/Pjw96hdP+Ic
 KYiXd/ZyZjzG/MAgYZfYLykdQEZCv52NwiDmvuSsSwe5Lz0GvhE9KWl1U6RevuNcNG/3
 Yu6+M1GqnsTAvu1IQig3Cvlyxb/ZJgDUzh5tc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=CMs6CM+hK6aKdC1S/oL5Dxo9YOdRorQKtX4mbGWHNSk=;
 b=ahslwcDiJowDOv+LoYCMeyXaCJLQ8RswtXXn4vDKWJ2pqtilkF3NZVEkd17DoY0gJY
 WmJUj/BUwq1/ZgBMrCOyeB85hXf/DqJE1JqKweW7xbp+DzyQQeKNX7FyJXaPK+07MpPG
 Gl/0UPEgG2d1QbPUs+hRazgGhuwYK/tpKnuWjg2acmMFj4bMsKeDwhgn4G/+xjYAUlPE
 LvmhqM2FI1/39FgNkSli9IIe+tBPrQUr/lUK9EKQtsIu5U81ezMPP5BzWYIBUC9VUqeG
 xKsph7EDRu1sdMPHu3c+69kTBj8W00XrPe7S21a2xD/rpAkFEGjyFO+Sp+MbDPNxInAo
 zxnw==
X-Gm-Message-State: APjAAAX5roMGIB0qMTkcsNjJewGkWAB4BwsdR2nlfJdT1L8Z2CHuJIxG
 SFJgNCgi4W0xmz+1phsabRnXDg==
X-Google-Smtp-Source: APXvYqwNJNZWiE0vCSozBBya4T8gbUsaluXQ146HDDTof3lcBkuezuHeqc1lwfvZRCtbqCDz6bE47w==
X-Received: by 2002:a62:f842:: with SMTP id c2mr746353pfm.104.1582753323721;
 Wed, 26 Feb 2020 13:42:03 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id u11sm3814980pjn.2.2020.02.26.13.42.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 13:42:02 -0800 (PST)
Date: Wed, 26 Feb 2020 13:42:01 -0800
From: Kees Cook <keescook@chromium.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v7 06/11] arm64: BTI: Decode BYTPE bits when printing
 PSTATE
Message-ID: <202002261341.D2BB57A@keescook>
References: <20200226155714.43937-1-broonie@kernel.org>
 <20200226155714.43937-7-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200226155714.43937-7-broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_134204_469967_B7C1C89F 
X-CRM114-Status: GOOD (  18.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Paul Elliott <paul.elliott@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Andrew Jones <drjones@redhat.com>,
 Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 Eugene Syromiatnikov <esyr@redhat.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, "H . J . Lu " <hjl.tools@gmail.com>,
 Yu-cheng Yu <yu-cheng.yu@intel.com>, Arnd Bergmann <arnd@arndb.de>,
 Jann Horn <jannh@google.com>, Richard Henderson <richard.henderson@linaro.org>,
 Kristina =?utf-8?Q?Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Florian Weimer <fweimer@redhat.com>,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Sudakshina Das <sudi.das@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 26, 2020 at 03:57:09PM +0000, Mark Brown wrote:
> From: Dave Martin <Dave.Martin@arm.com>
> 
> The current code to print PSTATE symbolically when generating
> backtraces etc., does not include the BYTPE field used by Branch
> Target Identification.
> 
> So, decode BYTPE and print it too.
> 
> In the interests of human-readability, print the classes of BTI
> matched.  The symbolic notation, BYTPE (PSTATE[11:10]) and
> permitted classes of subsequent instruction are:
> 
>     -- (BTYPE=0b00): any insn
>     jc (BTYPE=0b01): BTI jc, BTI j, BTI c, PACIxSP
>     -c (BYTPE=0b10): BTI jc, BTI c, PACIxSP
>     j- (BTYPE=0b11): BTI jc, BTI j
> 
> Signed-off-by: Dave Martin <Dave.Martin@arm.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> Signed-off-by: Mark Brown <broonie@kernel.org>
> ---
>  arch/arm64/kernel/process.c | 17 +++++++++++++++--
>  1 file changed, 15 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
> index b8e3faa8d406..24af13d7bde6 100644
> --- a/arch/arm64/kernel/process.c
> +++ b/arch/arm64/kernel/process.c
> @@ -211,6 +211,15 @@ void machine_restart(char *cmd)
>  	while (1);
>  }
>  
> +#define bstr(suffix, str) [PSR_BTYPE_ ## suffix >> PSR_BTYPE_SHIFT] = str
> +static const char *const btypes[] = {
> +	bstr(NONE, "--"),
> +	bstr(  JC, "jc"),
> +	bstr(   C, "-c"),
> +	bstr(  J , "j-")
> +};
> +#undef bstr
> +
>  static void print_pstate(struct pt_regs *regs)
>  {
>  	u64 pstate = regs->pstate;
> @@ -229,7 +238,10 @@ static void print_pstate(struct pt_regs *regs)
>  			pstate & PSR_AA32_I_BIT ? 'I' : 'i',
>  			pstate & PSR_AA32_F_BIT ? 'F' : 'f');
>  	} else {
> -		printk("pstate: %08llx (%c%c%c%c %c%c%c%c %cPAN %cUAO)\n",
> +		const char *btype_str = btypes[(pstate & PSR_BTYPE_MASK) >>
> +					       PSR_BTYPE_SHIFT];
> +
> +		printk("pstate: %08llx (%c%c%c%c %c%c%c%c %cPAN %cUAO BTYPE=%s)\n",
>  			pstate,
>  			pstate & PSR_N_BIT ? 'N' : 'n',
>  			pstate & PSR_Z_BIT ? 'Z' : 'z',
> @@ -240,7 +252,8 @@ static void print_pstate(struct pt_regs *regs)
>  			pstate & PSR_I_BIT ? 'I' : 'i',
>  			pstate & PSR_F_BIT ? 'F' : 'f',
>  			pstate & PSR_PAN_BIT ? '+' : '-',
> -			pstate & PSR_UAO_BIT ? '+' : '-');
> +			pstate & PSR_UAO_BIT ? '+' : '-',
> +			btype_str);
>  	}
>  }
>  
> -- 
> 2.20.1
> 

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
