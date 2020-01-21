Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB727143B03
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 11:30:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jqJu2g2MBkd0JAkysi1BhazXQyPT6AyjAG2D4B28tzc=; b=XIIxdkOZ3axtEG
	u7Fmr3O/+mHnm6Fo6vcjwLoQlCtled/1M5wE/0KJf3KBSaCvM8kBe+GJFSBPDEw2a6VnF42ctSrTG
	2caN27UD9SB6VofVCInm4EdzB4dnYgyZJGI+Zlq62+96lYvH5TC5bGoUwKTkpgiIohecvfwQcLIkM
	4S42+IsI8r9CVIfoprX0JuX0nOWX8KTUqgzfB0kTkuff/KhgdxK/IXeCi2d+rsQkGLmnI4CR1K74y
	fSXtorXwMp1PTaffCvRhcS3VHAvPZBoIJp8xq4X8aAYZZ5hGpO79cYxnYkC69g+d7CMotzuRWAUeH
	aeM1RSXKTco+hh3xn5Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itqng-0007At-Cm; Tue, 21 Jan 2020 10:30:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itqnT-00079q-Tj
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 10:30:16 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9A23720678;
 Tue, 21 Jan 2020 10:30:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579602610;
 bh=7D1HCfiOtTDIypi8kLQVfL4J6rylD03wymw6qZhwpYw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tut9YvkGGv4ApRTsJQkQp2meT+eqI+vRYmkVnNdjmYn7BF2QAjBHV0BawxPfAhRqn
 3CKT6S+x+7ddbQxeXfOci7SBkrW8sNDEx5Hef6804IRXwt3ZVqNnWgtQnLW4KXBDwX
 vC1uQLfS7NxJsv9xWHq4p2+WEs2v54EncaNJ3vaE=
Date: Tue, 21 Jan 2020 10:30:06 +0000
From: Will Deacon <will@kernel.org>
To: Julien Thierry <jthierry@redhat.com>
Subject: Re: [RFC v5 47/57] arm64: assembler: Add macro to annotate asm
 function having non standard stack-frame.
Message-ID: <20200121103005.GA11154@willie-the-truck>
References: <20200109160300.26150-1-jthierry@redhat.com>
 <20200109160300.26150-48-jthierry@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200109160300.26150-48-jthierry@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_023011_984261_FE449FC7 
X-CRM114-Status: GOOD (  16.37  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: peterz@infradead.org, catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 raphael.gault@arm.com, jpoimboe@redhat.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jan 09, 2020 at 04:02:50PM +0000, Julien Thierry wrote:
> From: Raphael Gault <raphael.gault@arm.com>
> 
> Some functions don't have standard stack-frames but are intended
> this way. In order for objtool to ignore those particular cases
> we add a macro that enables us to annotate the cases we chose
> to mark as particular.
> 
> Signed-off-by: Raphael Gault <raphael.gault@arm.com>
> Signed-off-by: Julien Thierry <jthierry@redhat.com>
> ---
>  include/linux/frame.h | 19 ++++++++++++++++++-
>  1 file changed, 18 insertions(+), 1 deletion(-)
> 
> diff --git a/include/linux/frame.h b/include/linux/frame.h
> index 02d3ca2d9598..1e35e58ab259 100644
> --- a/include/linux/frame.h
> +++ b/include/linux/frame.h
> @@ -11,14 +11,31 @@
>   *
>   * For more information, see tools/objtool/Documentation/stack-validation.txt.
>   */
> +#ifndef __ASSEMBLY__
>  #define STACK_FRAME_NON_STANDARD(func) \
>  	static void __used __section(.discard.func_stack_frame_non_standard) \
>  		*__func_stack_frame_non_standard_##func = func
> +#else
> +	/*
> +	 * This macro is the arm64 assembler equivalent of the
> +	 * macro STACK_FRAME_NON_STANDARD define at
> +	 * ~/include/linux/frame.h
> +	 */
> +	.macro	asm_stack_frame_non_standard	func
> +	.pushsection ".discard.func_stack_frame_non_standard"
> +	.quad	\func
> +	.popsection
> +	.endm
> 
> +#endif /* __ASSEMBLY__ */
>  #else /* !CONFIG_STACK_VALIDATION */
> 
> +#ifndef __ASSEMBLY__
>  #define STACK_FRAME_NON_STANDARD(func)
> -
> +#else
> +	.macro	asm_stack_frame_non_standard	func
> +	.endm
> +#endif /* __ASSEMBLY__ */

Hmm. Given that we're currently going through the exercise of converting
a bunch of ENTRY/ENDPROC macros to use the new SYM_{CODE,FUNC}_{START,END}
macros, I would much prefer for this to be a new flavour of those.

In fact, can you just use SYM_CODE_* for this?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
