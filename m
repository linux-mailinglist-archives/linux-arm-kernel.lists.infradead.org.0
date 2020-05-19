Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08DD41D97AC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 15:27:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mGAKQXjWlmzXFsZme0pSam0OHArIj7FPjF56X9un3gs=; b=T2A0jqtlNL3Tq0
	zPbzBhS7/0910BOXHwFWgSxhwoI7YcTqrcsWNk1s8cE0PYcspkCztUEXDF58vNqElNAho6w4hixyh
	6eS+5qdeWsXzJ6zbP6cFdfV3e01kN0HSStvCdR9MuPmiZlavsT+hJkvTjeewjCIwCAKbsgsCAnieF
	o5B3PhvfqLXt54NlIJO7ebVdVqsl7pYD4gs952H32xkVBpc9D3DXftANKGLCD+dVumcc5Df3xNwie
	sfmlcxvszaOI08b2pD14APz/r2/jbqhbxoxxAgT+rCVkUPaLrKdJLaHpYE7lkNubNlyVCYVJ3kX05
	gEaYmvZwIZKC2tlnlQEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb2Gv-0007DB-KH; Tue, 19 May 2020 13:27:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb2Gn-0007Cm-PX
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 13:26:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 44DF730E;
 Tue, 19 May 2020 06:26:57 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 602303F52E;
 Tue, 19 May 2020 06:26:56 -0700 (PDT)
Date: Tue, 19 May 2020 14:26:54 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 2/3] arm64: vdso: Add a comment to justify the mysterious
 NOP in sigreturn
Message-ID: <20200519132654.GF5031@arm.com>
References: <20200519121818.14511-1-will@kernel.org>
 <20200519121818.14511-3-will@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200519121818.14511-3-will@kernel.org>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_062657_870103_1126CBA4 
X-CRM114-Status: GOOD (  19.55  )
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
Cc: Tamas Zsoldos <tamas.zsoldos@arm.com>, Mark Brown <broonie@kernel.org>,
 kernel-team@android.com, linux-arm-kernel@lists.infradead.org,
 Daniel Kiss <daniel.kiss@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 19, 2020 at 01:18:17PM +0100, Will Deacon wrote:
> Every so often we have to remind ourselves about the purpose of the
> weird NOP instruction immediately preceding the sigreturn trampoline.
> 
> Add a short comment to state that it exists for some unwinders that
> determine the caller address by subtracting from the return address.
> 
> Cc: Dave Martin <dave.martin@arm.com>
> Cc: Daniel Kiss <daniel.kiss@arm.com>
> Cc: Tamas Zsoldos <tamas.zsoldos@arm.com>
> Signed-off-by: Will Deacon <will@kernel.org>
> ---
>  arch/arm64/kernel/vdso/sigreturn.S | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/kernel/vdso/sigreturn.S b/arch/arm64/kernel/vdso/sigreturn.S
> index 83ac284dae79..7853fa9692f6 100644
> --- a/arch/arm64/kernel/vdso/sigreturn.S
> +++ b/arch/arm64/kernel/vdso/sigreturn.S
> @@ -14,7 +14,12 @@
>  
>  	.text
>  
> -	nop
> +/*
> + * This mysterious NOP is required for some unwinders that subtract one from
> + * the return address in order to identify the calling function.
> + * Hack borrowed from arch/powerpc/kernel/vdso64/sigtramp.S.
> + */
> +	nop	// Mysterious NOP

Reviewed-by: Dave Martin <Dave.Martin@arm.com>

>  /*
>   * GDB relies on being able to identify the sigreturn instruction sequence to
>   * unwind from signal handlers. We cannot, therefore, use SYM_FUNC_START()
> -- 
> 2.26.2.761.g0e0b3e54be-goog
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
