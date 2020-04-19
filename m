Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE0421AFB14
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 16:05:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LEtPv8mdyZBlQjWscwPML6HXM33+u5k5+TvHMRdDat8=; b=dKmUps2kT6US+/
	BdF9OqxhFPvOZK6KrwX2UwHv0C7PpoLBQyXh5ohRfQmHH8aTHXRmzg5Sj4kWsfoLTHJ3v8whvoyYJ
	N9ZCtJBrXevSB3PdAvMvfSD9OKby62AG4E7X3RHqgjRHpDThVHOCYun+qUCyhZq+pgMYmYE+tPTKj
	JMfrrFw9bW0baeggzaYWxqLKPcmMa4GirjFH1sxqY8lWOA/e3ZG3Noi/sQAehrvrMZiyA4PDYU9oO
	39r+Orm0SxfmO9TZSbjV7ym/dksfAPG5/rP/F+yCchsz06O53Y7Q5Y5eIM8txCQ18mfXDkZg15AGD
	mjpZPrgrS5t/uU5X7q0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQAZ7-0000wy-K5; Sun, 19 Apr 2020 14:04:57 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQAYz-0000uc-8q
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Apr 2020 14:04:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+SHhJHEC/GWthRFPTaIGWJDgkO5X8ypn4Dz5ktkP734=; b=ZkVSLJivHNanwbuSVZ0pniErm
 e5QCV0vA1YkLkDdzVL5pVn/1NmGIaHTl6vPFF7lHwGjnAJCCxPFvyF2yh0pEmgUb4nYklchBwntwD
 KpdpO1TAiiIG/hex8b0aXuy5QaOSbxwAha8mHaQriQ8Ky0W84nGufPJnx+T5ku7+x2FaIX6CqaIrz
 wNFJRgB/7weW5QEeNkyNARAonAswVt/0KtOwMoPdgDkDeb52Ch7z7Vm+8nfDPnkM6gVzwPRxszbhn
 GE0yojL25qeHZeSfevTnYhMJKjJOEf+S8rPTP9aPBoixbV5i+i3n9hnQZZRDdDBgqBkWFD/v+SeYI
 PTUhmR/4Q==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:52180)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jQAYX-0005xJ-0N; Sun, 19 Apr 2020 15:04:27 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jQAYR-0004tQ-G4; Sun, 19 Apr 2020 15:04:15 +0100
Date: Sun, 19 Apr 2020 15:04:15 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Stefan Agner <stefan@agner.ch>
Subject: Re: [PATCH v2 1/3] ARM: use .fpu assembler directives instead of
 assembler arguments
Message-ID: <20200419140415.GW25745@shell.armlinux.org.uk>
References: <cover.1587299429.git.stefan@agner.ch>
 <a78f7e5820a6b827c9d68362a94dcbf80a317dc9.1587299429.git.stefan@agner.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a78f7e5820a6b827c9d68362a94dcbf80a317dc9.1587299429.git.stefan@agner.ch>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_070449_478998_95E26152 
X-CRM114-Status: GOOD (  16.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: clang-built-linux@googlegroups.com, arnd@arndb.de,
 ard.biesheuvel@linaro.org, ndesaulniers@google.com,
 linux-kernel@vger.kernel.org, jiancai@google.com,
 yamada.masahiro@socionext.com, manojgupta@google.com, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 19, 2020 at 02:35:49PM +0200, Stefan Agner wrote:
> Explicit FPU selection has been introduced in commit 1a6be26d5b1a
> ("[ARM] Enable VFP to be built when non-VFP capable CPUs are selected")
> to make use of assembler mnemonics for VFP instructions.
> 
> However, clang currently does not support passing assembler flags
> like this and errors out with:
> clang-10: error: the clang compiler does not support '-Wa,-mfpu=softvfp+vfp'
> 
> Make use of the .fpu assembler directives to select the floating point
> hardware selectively. Also use the new unified assembler language
> mnemonics. This allows to build these procedures with Clang.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/762
> Signed-off-by: Stefan Agner <stefan@agner.ch>
> ---
> Changes in v2:
> - Add link in commit message
> 
>  arch/arm/vfp/Makefile |  2 --
>  arch/arm/vfp/vfphw.S  | 30 +++++++++++++++++++-----------
>  2 files changed, 19 insertions(+), 13 deletions(-)
> 
> diff --git a/arch/arm/vfp/Makefile b/arch/arm/vfp/Makefile
> index 9975b63ac3b0..749901a72d6d 100644
> --- a/arch/arm/vfp/Makefile
> +++ b/arch/arm/vfp/Makefile
> @@ -8,6 +8,4 @@
>  # ccflags-y := -DDEBUG
>  # asflags-y := -DDEBUG
>  
> -KBUILD_AFLAGS	:=$(KBUILD_AFLAGS:-msoft-float=-Wa,-mfpu=softvfp+vfp -mfloat-abi=soft)
> -
>  obj-y		+= vfpmodule.o entry.o vfphw.o vfpsingle.o vfpdouble.o
> diff --git a/arch/arm/vfp/vfphw.S b/arch/arm/vfp/vfphw.S
> index b2e560290860..e214007a20a2 100644
> --- a/arch/arm/vfp/vfphw.S
> +++ b/arch/arm/vfp/vfphw.S
> @@ -258,11 +258,13 @@ vfp_current_hw_state_address:
>  
>  ENTRY(vfp_get_float)
>  	tbl_branch r0, r3, #3
> -	.irp	dr,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15
> -1:	mrc	p10, 0, r0, c\dr, c0, 0	@ fmrs	r0, s0
> +	.irp	dr,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,

Apart from the extraneous comma above, this looks fine, thanks.

> +1:	vmov	r0, s\dr
>  	ret	lr
>  	.org	1b + 8
> -1:	mrc	p10, 0, r0, c\dr, c0, 4	@ fmrs	r0, s1
> +	.endr
> +	.irp	dr,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
> +1:	vmov	r0, s\dr
>  	ret	lr
>  	.org	1b + 8
>  	.endr
> @@ -271,10 +273,12 @@ ENDPROC(vfp_get_float)
>  ENTRY(vfp_put_float)
>  	tbl_branch r1, r3, #3
>  	.irp	dr,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15
> -1:	mcr	p10, 0, r0, c\dr, c0, 0	@ fmsr	r0, s0
> +1:	vmov	s\dr, r0
>  	ret	lr
>  	.org	1b + 8
> -1:	mcr	p10, 0, r0, c\dr, c0, 4	@ fmsr	r0, s1
> +	.endr
> +	.irp	dr,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
> +1:	vmov	s\dr, r0
>  	ret	lr
>  	.org	1b + 8
>  	.endr
> @@ -282,15 +286,17 @@ ENDPROC(vfp_put_float)
>  
>  ENTRY(vfp_get_double)
>  	tbl_branch r0, r3, #3
> +	.fpu	vfpv2
>  	.irp	dr,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15
> -1:	fmrrd	r0, r1, d\dr
> +1:	vmov	r0, r1, d\dr
>  	ret	lr
>  	.org	1b + 8
>  	.endr
>  #ifdef CONFIG_VFPv3
>  	@ d16 - d31 registers
> -	.irp	dr,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15
> -1:	mrrc	p11, 3, r0, r1, c\dr	@ fmrrd	r0, r1, d\dr
> +	.fpu	vfpv3
> +	.irp	dr,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
> +1:	vmov	r0, r1, d\dr
>  	ret	lr
>  	.org	1b + 8
>  	.endr
> @@ -304,15 +310,17 @@ ENDPROC(vfp_get_double)
>  
>  ENTRY(vfp_put_double)
>  	tbl_branch r2, r3, #3
> +	.fpu	vfpv2
>  	.irp	dr,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15
> -1:	fmdrr	d\dr, r0, r1
> +1:	vmov	d\dr, r0, r1
>  	ret	lr
>  	.org	1b + 8
>  	.endr
>  #ifdef CONFIG_VFPv3
> +	.fpu	vfpv3
>  	@ d16 - d31 registers
> -	.irp	dr,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15
> -1:	mcrr	p11, 3, r0, r1, c\dr	@ fmdrr	r0, r1, d\dr
> +	.irp	dr,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
> +1:	vmov	d\dr, r0, r1
>  	ret	lr
>  	.org	1b + 8
>  	.endr
> -- 
> 2.25.1
> 
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
