Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6986E126F65
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 22:08:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nlH+EnGpRDl7N5YZuyHPtGMmxOJN7jEhaFY60MKVvms=; b=Itbz4kQXEiyIPQ
	skdAmfR/Li4b2dBsjFoOKqJP+XIduYHxJLOBJj+zAYa1kfGSBSIioH3V/V93SOtE3ISjcET8q9dC3
	xi1fxN4y9UdqohNzQPfrK2s+CSpUBvyXsnuc5XGVIZYPiJD+zbxP+3KJYDLCIuPdXVnKj0W2kCnd9
	8BXYQIyjz8E8+stHJ2kyH14PPc1OKLZnoraa+9B7FUwFoIeEj6BcJds18fv+SkL1wQeQLr6aGZMcd
	jajJcz5m4iOBILZ247SjU3Dy6H5YOnDMPl1DU9kl+ucQxsRskXxbrNsuhrnif30b5CfTW45six25t
	EUr3kijhMTsbJjrd+7zA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii31g-0000ot-S6; Thu, 19 Dec 2019 21:08:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii31Y-0000o1-VF
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 21:07:58 +0000
Received: from localhost (c-67-164-102-47.hsd1.ca.comcast.net [67.164.102.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 11B9121D7D;
 Thu, 19 Dec 2019 21:07:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576789676;
 bh=mRwJ3TFMybkPYT/eY1l83r9mSMwFUFYKIs4bT5vCFxg=;
 h=Date:From:To:cc:Subject:In-Reply-To:References:From;
 b=efdGhesOQO9OcYFKml7AwibVo7HI8XUhzFgm/9QAUkru3Ug6pmXZGPviJkhEgjoVK
 v6Ms+Ylba97HHNYjWV0cKupzaYwiVSo2OortrtIcz6Hs2IQhIBgz+rkKK7iSwdya3O
 ofP4fp2iYU2ba8hnhkyJ9gyw7nHKU62qhyo+jxFY=
Date: Thu, 19 Dec 2019 13:07:50 -0800 (PST)
From: Stefano Stabellini <sstabellini@kernel.org>
X-X-Sender: sstabellini@sstabellini-ThinkPad-T480s
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v2] arm64: xen: Use modern annotations for assembly
 functions
In-Reply-To: <20191219122532.6538-1-broonie@kernel.org>
Message-ID: <alpine.DEB.2.21.1912191307410.9832@sstabellini-ThinkPad-T480s>
References: <20191219122532.6538-1-broonie@kernel.org>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_130757_024264_3C732D9F 
X-CRM114-Status: GOOD (  13.70  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Stefano Stabellini <sstabellini@kernel.org>, Julien Grall <julien@xen.org>,
 Catalin Marinas <catalin.marinas@arm.com>, xen-devel@lists.xenproject.org,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 19 Dec 2019, Mark Brown wrote:
> In an effort to clarify and simplify the annotation of assembly functions
> in the kernel new macros have been introduced. These replace ENTRY and
> ENDPROC. Update the annotations in the xen code to the new macros.
> 
> Signed-off-by: Mark Brown <broonie@kernel.org>
> Reviewed-by: Julien Grall <julien@xen.org>
> Reviewed-by: Stefano Stabellini <sstabellini@kernel.org>

Thank you!

> ---
>  arch/arm64/xen/hypercall.S | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/xen/hypercall.S b/arch/arm64/xen/hypercall.S
> index c5f05c4a4d00..5b09aca55108 100644
> --- a/arch/arm64/xen/hypercall.S
> +++ b/arch/arm64/xen/hypercall.S
> @@ -56,11 +56,11 @@
>  #define XEN_IMM 0xEA1
>  
>  #define HYPERCALL_SIMPLE(hypercall)		\
> -ENTRY(HYPERVISOR_##hypercall)			\
> +SYM_FUNC_START(HYPERVISOR_##hypercall)		\
>  	mov x16, #__HYPERVISOR_##hypercall;	\
>  	hvc XEN_IMM;				\
>  	ret;					\
> -ENDPROC(HYPERVISOR_##hypercall)
> +SYM_FUNC_END(HYPERVISOR_##hypercall)
>  
>  #define HYPERCALL0 HYPERCALL_SIMPLE
>  #define HYPERCALL1 HYPERCALL_SIMPLE
> @@ -86,7 +86,7 @@ HYPERCALL2(multicall);
>  HYPERCALL2(vm_assist);
>  HYPERCALL3(dm_op);
>  
> -ENTRY(privcmd_call)
> +SYM_FUNC_START(privcmd_call)
>  	mov x16, x0
>  	mov x0, x1
>  	mov x1, x2
> @@ -109,4 +109,4 @@ ENTRY(privcmd_call)
>  	 */
>  	uaccess_ttbr0_disable x6, x7
>  	ret
> -ENDPROC(privcmd_call);
> +SYM_FUNC_END(privcmd_call);
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
