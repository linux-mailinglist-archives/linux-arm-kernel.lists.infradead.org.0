Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E5B4189187
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 23:34:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JEp/2Rz+1JsnrJe5tDq/PjwxlI9Wotnn2pPpgxpw7MY=; b=YN0iUYguT4/zV2
	U0yISXxffweyEPF921AQnzKUYpJX+BgQDOzPHzXFfDQ0pxmof2hze/fyicTP4cXIkhLgdnPiqfTT3
	wLmhE8PMwPw57gNSr0oTq56ASAdC0zJnffd/S1J5vPW6uUR3XCYJ8W6/6s2kD5+GP5lVqEb3Tg0hu
	eHobSEzasvp3/+n9RRk3HmEsQnd9seFNdE7XOFGK/e5vtYmpDMw92PjfnxL/Vr8EijrooL0A5emWI
	eCmJ42esCeJrIqGuKWKCfUaW38LTxO2bwXcee2lH6EREwBBkvXQdxA577GHDVdfYOhZXOxsm0SN/Z
	MvzeXEx98xcPs0tts7pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEKnO-0000ln-H6; Tue, 17 Mar 2020 22:34:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEKnG-0000lL-9Q
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 22:34:39 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F1DE820674;
 Tue, 17 Mar 2020 22:34:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584484478;
 bh=/LP+yOTLJ8bmG3iy62G9dpLGOzZo7YWw9GhpuzL/3Zs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ovh3ufRqT9Kuyo9vQDhUv7CQkINb8MM9jyYJfqQwQ+2OZ535SCMb8SWLt3EXfRA+E
 MvWraLAlFagDJiHV+WH16RTeK3bAk57Ro2Rb2j5ay4/vfaC+i1DYK8vvt/OlezHboy
 nvKpIex7HtHVlPKF2eU7nHym/Y/cbkuYjzF1oZ3I=
Date: Tue, 17 Mar 2020 22:34:33 +0000
From: Will Deacon <will@kernel.org>
To: =?iso-8859-1?Q?R=E9mi?= Denis-Courmont <remi@remlab.net>
Subject: Re: [PATCH 3/3] arm64: reduce trampoline data alignment
Message-ID: <20200317223433.GL20788@willie-the-truck>
References: <20200316124046.103844-3-remi@remlab.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200316124046.103844-3-remi@remlab.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_153438_354478_0265F3BE 
X-CRM114-Status: GOOD (  16.59  )
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

On Mon, Mar 16, 2020 at 02:40:46PM +0200, R=E9mi Denis-Courmont wrote:
> From: R=E9mi Denis-Courmont <remi.denis.courmont@huawei.com>
> =

> The trampoline data, currently consisting of two relocated pointers,
> must be within a single page. However, there are no needs for it to
> start a page.
> =

> This reduces the alignment to 16 bytes (with SDEI) or 8 bytes (without
> SDEI), which is sufficient to ensure that the data is entirely within a
> single page of the fixmap.
> =

> Signed-off-by: R=E9mi Denis-Courmont <remi.denis.courmont@huawei.com>
> ---
>  arch/arm64/kernel/entry.S | 4 ++--
>  arch/arm64/mm/mmu.c       | 5 ++---
>  2 files changed, 4 insertions(+), 5 deletions(-)
> =

> diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
> index af17fcb4aaea..b648f9fe1e33 100644
> --- a/arch/arm64/kernel/entry.S
> +++ b/arch/arm64/kernel/entry.S
> @@ -858,12 +858,12 @@ SYM_CODE_END(tramp_exit_compat)
>  	.popsection				// .entry.tramp.text
>  #ifdef CONFIG_RANDOMIZE_BASE
>  	.pushsection ".rodata", "a"
> -	.align PAGE_SHIFT
>  #ifdef CONFIG_ARM_SDE_INTERFACE
> +	.align	4	// all .rodata must be in a single fixmap page
>  SYM_DATA_START(__sdei_asm_trampoline_next_handler)
>  	.quad	__sdei_asm_handler
>  SYM_DATA_END(__sdei_asm_trampoline_next_handler)
> -#endif
> +#endif /* CONFIG_ARM_SDE_INTERFACE */
>  SYM_DATA_START(__entry_tramp_data_start)
>  	.quad	vectors
>  SYM_DATA_END(__entry_tramp_data_start)
> diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
> index 9b08f7c7e6f0..6a0e75f48e7b 100644
> --- a/arch/arm64/mm/mmu.c
> +++ b/arch/arm64/mm/mmu.c
> @@ -599,9 +599,8 @@ static int __init map_entry_trampoline(void)
>  	if (IS_ENABLED(CONFIG_RANDOMIZE_BASE)) {
>  		extern char __entry_tramp_data_start[];
>  =

> -		__set_fixmap(FIX_ENTRY_TRAMP_DATA,
> -			     __pa_symbol(__entry_tramp_data_start),
> -			     PAGE_KERNEL_RO);
> +		pa_start =3D __pa_symbol(__entry_tramp_data_start) & PAGE_MASK;
> +		__set_fixmap(FIX_ENTRY_TRAMP_DATA, pa_start, PAGE_KERNEL_RO);
>  	}
>  =

>  	return 0;

Acked-by: Will Deacon <will@kernel.org>

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
