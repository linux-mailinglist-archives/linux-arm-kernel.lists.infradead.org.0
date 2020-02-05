Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C238153C2C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 00:57:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rdbHviQ4NfWw/wHrtXEzQSWswTX4XITUUV5pnA8CQvM=; b=oOcl+K6MVXPRCU
	mlYcadp+klnYCRWipB3pTUWcDq8yYwSUjcYQrGnilxSphP4xNYz5dfz6vWQEvhn5oqwCCR1/Ib4Kg
	pcgz6XbUjN93gioOTGbix9oxfol4VZCfpcYTK49iJTdN4dZcGs0plxowjNM29eSfJ0fiyteoGgSA9
	nr5+bKamEE3tRQICWcJlXDJ6oLnn3mH5k19dl1RW17cRiUOSkTmM3NC/UYHp15nC4FwSWXgIl8LPR
	20kelvu8JWaO2F2OflhPY9sqKt0ZJfC71McTmxaHHaIOhJSJXlOleu4Kur3mSyE6i2+Gb63t8q7R1
	XYIPgFTyS3g6MQp5PZfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izUXS-0003ea-Iz; Wed, 05 Feb 2020 23:56:58 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izUXM-0001t5-6D
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 23:56:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5aXRAu4MuUd1u+UkGWrwGKaLApXhm4yXkzsV9CVJjT0=; b=IHSaNrlX76PEvKY68PALvoF2i
 vdyQP4DzsFi59MzqPOMbeJKzjuWk6iMOAzGYIzNaCWxNlqkOFSzxj6lmw2bI8eWlYHqDGdcZHYJax
 hBa9FbdRBI16SgV1JE9UOz9M/4nAfYder1jTv6XjvVzIBFp8fQljmMbMAC7v1xYQUd4hH4OSbnPHl
 qv+aU2pmxRmIPELvvWP2BG/9mxvu7iVjoBhpDVV6bJF7TShe5ZmrdnyjemRqtCqWp9fhygFekoX4x
 zvZh2owVVzNYp1HUoaKuWJWoCxTuJPHjVht4yOxucSNgFHho6c/QO31WQ/I/kLdcG88rLjGpwp+3X
 Dc7WiGa9g==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:43988)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1izUVE-0003jc-VF; Wed, 05 Feb 2020 23:54:43 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1izUVE-0002If-5d; Wed, 05 Feb 2020 23:54:40 +0000
Date: Wed, 5 Feb 2020 23:54:40 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Stefan Agner <stefan@agner.ch>
Subject: Re: [PATCH] ARM: kexec: drop invalid assembly argument
Message-ID: <20200205235440.GW25745@shell.armlinux.org.uk>
References: <ab67c7c5a1f96af6d22240e57fc27ba766d4193d.1580943526.git.stefan@agner.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ab67c7c5a1f96af6d22240e57fc27ba766d4193d.1580943526.git.stefan@agner.ch>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_155652_231618_F27A72B3 
X-CRM114-Status: GOOD (  17.46  )
X-Spam-Score: 2.3 (++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 URIBL_DBL_ABUSE_MALW   Contains an abused malware URL listed in
 the Spamhaus DBL blocklist [URIs: infradead.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 05, 2020 at 11:59:26PM +0100, Stefan Agner wrote:
> The tst menomic has only a single #<const> argument in Thumb mode. There
> is an ARM variant which allows to write #<const> as #<byte>, #<rot>
> which probably is where the current syntax comes from.
> 
> It seems that binutils does not care about the additional parameter.
> Clang however complains in Thumb2 mode:
> arch/arm/kernel/relocate_kernel.S:28:12: error: too many operands for
> instruction
>  tst r3,#1,0
>            ^
> 
> Drop the unnecessary parameter. This fixes building this file in Thumb2
> mode with the Clang integrated assembler.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/770
> Signed-off-by: Stefan Agner <stefan@agner.ch>

Please drop it in the patch system, thanks.

> ---
>  arch/arm/kernel/relocate_kernel.S | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm/kernel/relocate_kernel.S b/arch/arm/kernel/relocate_kernel.S
> index 7eaa2ae7aff5..72a08786e16e 100644
> --- a/arch/arm/kernel/relocate_kernel.S
> +++ b/arch/arm/kernel/relocate_kernel.S
> @@ -25,26 +25,26 @@ ENTRY(relocate_new_kernel)
>  	ldr	r3, [r0],#4
>  
>  	/* Is it a destination page. Put destination address to r4 */
> -	tst	r3,#1,0
> +	tst	r3,#1
>  	beq	1f
>  	bic	r4,r3,#1
>  	b	0b
>  1:
>  	/* Is it an indirection page */
> -	tst	r3,#2,0
> +	tst	r3,#2
>  	beq	1f
>  	bic	r0,r3,#2
>  	b	0b
>  1:
>  
>  	/* are we done ? */
> -	tst	r3,#4,0
> +	tst	r3,#4
>  	beq	1f
>  	b	2f
>  
>  1:
>  	/* is it source ? */
> -	tst	r3,#8,0
> +	tst	r3,#8
>  	beq	0b
>  	bic r3,r3,#8
>  	mov r6,#1024
> -- 
> 2.25.0
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
