Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42DAC18915A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 23:27:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=csOB6wNHH8XONpPPcDvo4PuePIadDS+dY0wSs4JWyCA=; b=usgoXLCLFZ0Gcx
	mCIwzYqlNtDZF7g3/pln1XlCO7962x1/W+/GliedM50FYMZDx9pmFRsfkH83d3uNqcV9Ys2fpDd6x
	CNlR2mnBZ99FsFqVUD7PzzgivDnxHl7AsqPXE9o3VQJ1wHyeYWUZpOjYvNCCnXG+8C1P13TYJQI32
	y5l4wgXZMuSk4+LxoCR5y+xSCTCl1OVC0hl1PM0D4NxVBQQDQUirPdHlQdy3+DCZNs+sWWZAsZLol
	j8EvYXam/phNq8oHnEnOR37UTNKZCEwwGDWxnNQ5LMz6GEbGfFkHJB1ZB0oSiDsfbObUsmSgKH+J1
	P5vQguBFbNOPH8cdxqCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEKg2-0005uT-Fc; Tue, 17 Mar 2020 22:27:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEKft-0005u4-GB
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 22:27:02 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9F310206EC;
 Tue, 17 Mar 2020 22:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584484021;
 bh=feXoVNdYfrV4TFKhykYHVASYD8nshaCB8LWcN1l/eP0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OuSZmRfjKjT3bppoNPLTNL8hxyiP67j2pV1bJszZfFXsz6kepBPj0ffTfi3CAMdhX
 PT18tvPVppBBRLf9c8jRrZiCyLQShrtjUtDVfD3YSbrLvSbOX73h0e1ecdX6fk7g8Q
 jLcEb8O5V34blCKFSXRQG03gPImfHhSwjEX+lfPM=
Date: Tue, 17 Mar 2020 22:26:56 +0000
From: Will Deacon <will@kernel.org>
To: =?iso-8859-1?Q?R=E9mi?= Denis-Courmont <remi@remlab.net>
Subject: Re: [PATCH] arm64: move kimage_vaddr to .rodata
Message-ID: <20200317222656.GE20788@willie-the-truck>
References: <20200312094002.153302-1-remi@remlab.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200312094002.153302-1-remi@remlab.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_152701_562910_619B3212 
X-CRM114-Status: GOOD (  14.52  )
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
Cc: suzuki.poulose@arm.com, maz@kernel.org, linux-kernel@vger.kernel.org,
 james.morse@arm.com, linux-arm-kernel@lists.infradead.org,
 catalin.marinas@arm.com, kvmarm@lists.cs.columbia.edu,
 julien.thierry.kdev@gmail.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 12, 2020 at 11:40:02AM +0200, R=E9mi Denis-Courmont wrote:
> From: Remi Denis-Courmont <remi.denis.courmont@huawei.com>
> =

> This datum is not referenced from .idmap.text: it does not need to be
> mapped in idmap. Lets move it to .rodata as it is never written to after
> early boot of the primary CPU.
> (Maybe .data.ro_after_init would be cleaner though?)
> =

> Signed-off-by: R=E9mi Denis-Courmont <remi@remlab.net>
> ---
>  arch/arm64/kernel/head.S | 12 +++++++-----
>  1 file changed, 7 insertions(+), 5 deletions(-)
> =

> diff --git a/arch/arm64/kernel/head.S b/arch/arm64/kernel/head.S
> index 6e08ee2b4d55..8e5c0e0040e4 100644
> --- a/arch/arm64/kernel/head.S
> +++ b/arch/arm64/kernel/head.S
> @@ -457,17 +457,19 @@ SYM_FUNC_START_LOCAL(__primary_switched)
>  	b	start_kernel
>  SYM_FUNC_END(__primary_switched)
>  =

> +	.pushsection ".rodata", "a"
> +SYM_DATA_START(kimage_vaddr)
> +	.quad		_text - TEXT_OFFSET
> +SYM_DATA_END(kimage_vaddr)
> +EXPORT_SYMBOL(kimage_vaddr)
> +	.popsection
> +
>  /*
>   * end early head section, begin head code that is also used for
>   * hotplug and needs to have the same protections as the text region
>   */
>  	.section ".idmap.text","awx"
>  =

> -SYM_DATA_START(kimage_vaddr)
> -	.quad		_text - TEXT_OFFSET
> -SYM_DATA_END(kimage_vaddr)
> -EXPORT_SYMBOL(kimage_vaddr)

Acked-by: Will Deacon <will@kernel.org>

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
