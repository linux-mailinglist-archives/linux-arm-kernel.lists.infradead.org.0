Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7012B189183
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 23:32:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y736ZWPiGtIR1pdGTNAL9CsD0G2kqYMvCJupbOkWDQw=; b=aF402g4pbiPPfj
	pMyoMrF6uJAJqTDVaz1V4Jzb0Oa0C138jedr2o5ytg+X9hy1dazk6UR//Aq4RJAdXxnQ8v5Gom4Mh
	PtiAg2wwvXecIbKE6KChZvTjAiimvLWquuhrM4dWZyCtu1CJUqVTTxG6lTUetmugA3I5k7ulZ/L9j
	uvLzD6kIdu9m7qibRxYkKq0DENlkAqrLvm2JhTJ8hAeV92pZCe8LxmSud1BfhWpDh1cRmmVqAEU1F
	P0tYO8P6ElcJtZ/+EGIXGlFWauI/KV+3S5tTPLftDWgugY1r4MprPN4OF41JPWNjxSDO9pohTaF9v
	2TeG7MDpDaRZarM++FIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEKlB-0000G3-Ck; Tue, 17 Mar 2020 22:32:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEKl1-0000Fg-6p
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 22:32:20 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E6E7720409;
 Tue, 17 Mar 2020 22:32:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584484338;
 bh=pZTJ/8UKR7bf2a0aOzgxZOTLFw+VBYwUntAVVeJQlh0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=m3Spbdfdq+dp39kywq8qbf1OKNQQfGGu6sD69qgCgIFfNjYeeG0d2iCOpwidhDSH+
 7PCV8eRewGVknqlhQKeqaBJzWeF2MRwdSspUJ0DLT70dtDz2jLej+SVGMQb1f10xZs
 jVnX5ynoYN8q4wQ5ymnUEOAziw0G8bX+TQFKMv3k=
Date: Tue, 17 Mar 2020 22:32:14 +0000
From: Will Deacon <will@kernel.org>
To: =?iso-8859-1?Q?R=E9mi?= Denis-Courmont <remi@remlab.net>
Subject: Re: [PATCH 2/3] arm64/sdei: gather trampolines' .rodata
Message-ID: <20200317223214.GK20788@willie-the-truck>
References: <20200316124046.103844-2-remi@remlab.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200316124046.103844-2-remi@remlab.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_153219_265458_943BA2FD 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 16, 2020 at 02:40:45PM +0200, R=E9mi Denis-Courmont wrote:
> From: R=E9mi Denis-Courmont <remi.denis.courmont@huawei.com>
> =

> This gathers the two bits of data together for clarity.
> =

> Signed-off-by: R=E9mi Denis-Courmont <remi.denis.courmont@huawei.com>
> ---
>  arch/arm64/kernel/entry.S | 12 +++++-------
>  1 file changed, 5 insertions(+), 7 deletions(-)
> =

> diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
> index 24f828739696..af17fcb4aaea 100644
> --- a/arch/arm64/kernel/entry.S
> +++ b/arch/arm64/kernel/entry.S
> @@ -859,6 +859,11 @@ SYM_CODE_END(tramp_exit_compat)
>  #ifdef CONFIG_RANDOMIZE_BASE
>  	.pushsection ".rodata", "a"
>  	.align PAGE_SHIFT
> +#ifdef CONFIG_ARM_SDE_INTERFACE
> +SYM_DATA_START(__sdei_asm_trampoline_next_handler)
> +	.quad	__sdei_asm_handler
> +SYM_DATA_END(__sdei_asm_trampoline_next_handler)
> +#endif
>  SYM_DATA_START(__entry_tramp_data_start)
>  	.quad	vectors
>  SYM_DATA_END(__entry_tramp_data_start)
> @@ -980,13 +985,6 @@ SYM_CODE_END(__sdei_asm_exit_trampoline)
>  NOKPROBE(__sdei_asm_exit_trampoline)
>  	.ltorg
>  .popsection		// .entry.tramp.text
> -#ifdef CONFIG_RANDOMIZE_BASE
> -.pushsection ".rodata", "a"
> -SYM_DATA_START(__sdei_asm_trampoline_next_handler)
> -	.quad	__sdei_asm_handler
> -SYM_DATA_END(__sdei_asm_trampoline_next_handler)
> -.popsection		// .rodata
> -#endif /* CONFIG_RANDOMIZE_BASE */
>  #endif /* CONFIG_UNMAP_KERNEL_AT_EL0 */

Acked-by: Will Deacon <will@kernel.org>

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
