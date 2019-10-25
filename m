Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 043DDE478E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 11:42:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BmU4XHjOpPN2NSESLlFCN+qEPoRrsOA5aMZ8I3Txy90=; b=Cc7AQRid81HO4A
	G5/BbEXvCq31NqS9jTtqWEF1zIS1unF4w1kmHUti53iSnxio+nq01Z2oUtaqazy4bo23OGPLn33mF
	x3jzlWNbSWiwqUBolxQkH4nwp/Qb4R225pfi4qKHEFDB5nEwJZj77JHjguo+rnFr7wKogAZVZcirG
	IlHA1ktRpDmcwRL4/2G9zuPEN5TLlYy/24W/UOBk2SCJag7ITmWnqLfL3vLBp55iJ1aEPalHg3Hnl
	s+eoL+j/8GQAJOjKoCsQpQkhYYYY79PtXkWWVTyYycS3YkNYXf3Z7YdpDTmelTVdX8GSqx3q96bq/
	DJsNNKQUzmXdP36/uXZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNw6S-00087J-UF; Fri, 25 Oct 2019 09:41:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNw6I-00086R-WC
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 09:41:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E8EB228;
 Fri, 25 Oct 2019 02:41:41 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CA8C73F71F;
 Fri, 25 Oct 2019 02:41:39 -0700 (PDT)
Date: Fri, 25 Oct 2019 10:41:37 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: samitolvanen@google.com
Subject: Re: [PATCH v2 02/17] arm64/lib: copy_page: avoid x18 register in
 assembler code
Message-ID: <20191025094137.GB40270@lakrids.cambridge.arm.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191024225132.13410-1-samitolvanen@google.com>
 <20191024225132.13410-3-samitolvanen@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191024225132.13410-3-samitolvanen@google.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_024143_127636_C80353D2 
X-CRM114-Status: GOOD (  15.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, clang-built-linux@googlegroups.com,
 kernel-hardening@lists.openwall.com, Laura Abbott <labbott@redhat.com>,
 Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 24, 2019 at 03:51:17PM -0700, samitolvanen@google.com wrote:
> From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> 
> Register x18 will no longer be used as a caller save register in the
> future, so stop using it in the copy_page() code.
> 
> Link: https://patchwork.kernel.org/patch/9836869/
> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  arch/arm64/lib/copy_page.S | 38 +++++++++++++++++++-------------------
>  1 file changed, 19 insertions(+), 19 deletions(-)
> 
> diff --git a/arch/arm64/lib/copy_page.S b/arch/arm64/lib/copy_page.S
> index bbb8562396af..8b562264c165 100644
> --- a/arch/arm64/lib/copy_page.S
> +++ b/arch/arm64/lib/copy_page.S
> @@ -34,45 +34,45 @@ alternative_else_nop_endif
>  	ldp	x14, x15, [x1, #96]
>  	ldp	x16, x17, [x1, #112]
>  
> -	mov	x18, #(PAGE_SIZE - 128)
> +	add	x0, x0, #256
>  	add	x1, x1, #128
>  1:
> -	subs	x18, x18, #128
> +	tst	x0, #(PAGE_SIZE - 1)
>  
>  alternative_if ARM64_HAS_NO_HW_PREFETCH
>  	prfm	pldl1strm, [x1, #384]
>  alternative_else_nop_endif
>  
> -	stnp	x2, x3, [x0]
> +	stnp	x2, x3, [x0, #-256]
>  	ldp	x2, x3, [x1]
> -	stnp	x4, x5, [x0, #16]
> +	stnp	x4, x5, [x0, #-240]
>  	ldp	x4, x5, [x1, #16]

For legibility, could we make the offset and bias explicit in the STNPs
so that these line up? e.g.

	stnp	x4, x5, [x0, #16 - 256]
	ldp	x4, x5, [x1, #16]

... that'd make it much easier to see by eye that this is sound, much as
I trust my mental arithmetic. ;)

> -	stnp	x6, x7, [x0, #32]
> +	stnp	x6, x7, [x0, #-224]
>  	ldp	x6, x7, [x1, #32]
> -	stnp	x8, x9, [x0, #48]
> +	stnp	x8, x9, [x0, #-208]
>  	ldp	x8, x9, [x1, #48]
> -	stnp	x10, x11, [x0, #64]
> +	stnp	x10, x11, [x0, #-192]
>  	ldp	x10, x11, [x1, #64]
> -	stnp	x12, x13, [x0, #80]
> +	stnp	x12, x13, [x0, #-176]
>  	ldp	x12, x13, [x1, #80]
> -	stnp	x14, x15, [x0, #96]
> +	stnp	x14, x15, [x0, #-160]
>  	ldp	x14, x15, [x1, #96]
> -	stnp	x16, x17, [x0, #112]
> +	stnp	x16, x17, [x0, #-144]
>  	ldp	x16, x17, [x1, #112]
>  
>  	add	x0, x0, #128
>  	add	x1, x1, #128
>  
> -	b.gt	1b
> +	b.ne	1b
>  
> -	stnp	x2, x3, [x0]
> -	stnp	x4, x5, [x0, #16]
> -	stnp	x6, x7, [x0, #32]
> -	stnp	x8, x9, [x0, #48]
> -	stnp	x10, x11, [x0, #64]
> -	stnp	x12, x13, [x0, #80]
> -	stnp	x14, x15, [x0, #96]
> -	stnp	x16, x17, [x0, #112]
> +	stnp	x2, x3, [x0, #-256]
> +	stnp	x4, x5, [x0, #-240]
> +	stnp	x6, x7, [x0, #-224]
> +	stnp	x8, x9, [x0, #-208]
> +	stnp	x10, x11, [x0, #-192]
> +	stnp	x12, x13, [x0, #-176]
> +	stnp	x14, x15, [x0, #-160]
> +	stnp	x16, x17, [x0, #-144]

... likewise here:

	stnp	xt1, xt2, [x0, #off - 256]

I don't see a nicer way to write this sequence without using an
additional register, so with those changes:

Reviewed-by: Mark Rutland <mark.rutland@arm.com>

Thanks,
Mark.

>  
>  	ret
>  ENDPROC(copy_page)
> -- 
> 2.24.0.rc0.303.g954a862665-goog
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
