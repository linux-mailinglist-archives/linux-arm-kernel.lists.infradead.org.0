Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41F9D63853
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 17:02:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sskaJRLttGdgLtdwUDVFZ7rVqfM4+u001rh4C7ERQVA=; b=D3A9PykWa8yYhu
	n4I/Rld2zoe96w1eoYfvt/Ed9auH23SQRHT9EWvmTRhrDpMj/jhn1HppGrwWk80tNYPPr4tfNWm9Y
	KEftzfaZ7FFBqS3S8/39ncaOtmsBtrjDkzUMrv0yuaVW/QTm4gUe7oxEKrk5EXkOFp9z1yeVTMFZZ
	n6IEgcn/g/Fskxa/Fk5Di+/RDlMzp8Dn64gix+3DGVcvbz3mVGkp9Dv/unZ9Igdr76e86kpiO/yJt
	Xc0N9mOGJHukj/uKftJoswT1VPKfPBpAfjm3TuerYVIWnbaR1pe5DQfRNcKnOsNwN2x6cdfdvHZDi
	WFK46pv7wV1ay3/EercA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkrdg-0003IU-Qp; Tue, 09 Jul 2019 15:02:41 +0000
Received: from pb-smtp1.pobox.com ([64.147.108.70])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkrdW-0003Hq-A9
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 15:02:32 +0000
Received: from pb-smtp1.pobox.com (unknown [127.0.0.1])
 by pb-smtp1.pobox.com (Postfix) with ESMTP id 59515160299;
 Tue,  9 Jul 2019 11:02:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=date:from:to
 :cc:subject:in-reply-to:message-id:references:mime-version
 :content-type; s=sasl; bh=b23qucjwjnJ+BBds9dDr8qNYbLc=; b=Ht74I+
 lKAQXBvlcyDG/uSbdyYoZ3pditj8v7z9HerxOlnd+61RZiE9tDE59D4N+RZx6gf9
 Ev8CSOit8zz9K5AhDwAcE7dRfJHH5bVJLcddLVZJfzUTkRdIcX7ogpUOZurODLJB
 XmibXsGRDn6Nqyj9cEw6jJjSD+3ZUwdEz0gEM=
Received: from pb-smtp1.nyi.icgroup.com (unknown [127.0.0.1])
 by pb-smtp1.pobox.com (Postfix) with ESMTP id 454CA160298;
 Tue,  9 Jul 2019 11:02:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=fluxnic.net;
 h=date:from:to:cc:subject:in-reply-to:message-id:references:mime-version:content-type;
 s=2016-12.pbsmtp; bh=M9/2siyHq2MpQrsUQ7f38F3iXnwZg60+edm2Q9zNPlI=;
 b=IMFGCGD5fVckr7WP9xRSuM1oBuGCNdg45jSZdCJ+yvV5CrOxzZumng6Sl9IZH0L2eq6v4g3Oog9fb4pov5QEWQsjRGwnjp7kaNzGXsc+Hc+lX5NgYiclglkR9qKUumXPr4OG5nOxpvAxRbVESdy3WBi2EWjtdwxbGQf4cS8NynM=
Received: from yoda.home (unknown [70.82.130.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by pb-smtp1.pobox.com (Postfix) with ESMTPSA id 98681160297;
 Tue,  9 Jul 2019 11:02:24 -0400 (EDT)
Received: from xanadu.home (xanadu.home [192.168.2.2])
 by yoda.home (Postfix) with ESMTPSA id B50602DA0192;
 Tue,  9 Jul 2019 11:02:23 -0400 (EDT)
Date: Tue, 9 Jul 2019 11:02:23 -0400 (EDT)
From: Nicolas Pitre <nico@fluxnic.net>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH 2/2] ARM: boot: Replace open-coded nop with macro
In-Reply-To: <20190709130301.1916-2-linus.walleij@linaro.org>
Message-ID: <nycvar.YSQ.7.76.1907091100510.4190@knanqh.ubzr>
References: <20190709130301.1916-1-linus.walleij@linaro.org>
 <20190709130301.1916-2-linus.walleij@linaro.org>
User-Agent: Alpine 2.21 (LFD 202 2017-01-01)
MIME-Version: 1.0
X-Pobox-Relay-ID: 8F4C66C6-A25A-11E9-BFB5-46F8B7964D18-78420484!pb-smtp1.pobox.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_080230_463129_0437807F 
X-CRM114-Status: GOOD (  18.52  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.108.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Russell King <linux@arm.linux.org.uk>, linux-arm-kernel@lists.infradead.org,
 Roy Franz <roy.franz@cavium.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 9 Jul 2019, Linus Walleij wrote:

> This open-coded nop as mov r0, r0 is a development history
> artifact.
> 
> First commit b11fe38883d1
> ("ARM: 6663/1: make Thumb2 kernel entry point more similar
> to the ARM one") moved the code around so that the nops
> would come before the conditional thumb instructions, as it
> turned out that some boot loaders were patching the initial
> nop instructions in the kernel. At this point it is clear
> that all mov r0,r0 are open-coded nops.
> 
> Then commit 81a0bc39ea19 ("ARM: add UEFI stub support")
> moved things around and defined __nop for EFI support and
> missed this open-coded nop.
> 
> commit 06a4b6d009a1
> ("ARM: 8677/1: boot/compressed: fix decompressor header
> layout for v7-M") makes all invocations of __nop be wide,
> but that is fine, because this is what we want: the
> mov r0,r0 is inside ifndef CONFIG_THUMB2_KERNEL.
> 
> Cc: Nicolas Pitre <nico@fluxnic.net>
> Cc: Roy Franz <roy.franz@cavium.com>
> Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>

For both patches:

Acked-by: Nicolas Pitre <nico@fluxnic.net>



> ---
>  arch/arm/boot/compressed/head.S | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/compressed/head.S b/arch/arm/boot/compressed/head.S
> index 544450c90673..93dffed0ac6e 100644
> --- a/arch/arm/boot/compressed/head.S
> +++ b/arch/arm/boot/compressed/head.S
> @@ -169,7 +169,7 @@ start:
>  		__nop
>  		.endr
>  #ifndef CONFIG_THUMB2_KERNEL
> -		mov	r0, r0
> +		__nop
>  #else
>   AR_CLASS(	sub	pc, pc, #3	)	@ A/R: switch to Thumb2 mode
>    M_CLASS(	nop.w			)	@ M: already in Thumb2 mode
> -- 
> 2.21.0
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
