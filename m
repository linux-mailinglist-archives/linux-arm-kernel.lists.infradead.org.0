Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EDACECB0B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 23:13:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S/jqlrnGzxZj+6kKK4jCiGmGXewEp07gIdQmrz8Yers=; b=nWACMKuTwk/aMW
	iWebqeDn79ev9Fdh8ltDMg8x3iSTvUrTcRGPXyTfPsvE73Q+IuDiymB0BaiJwP5LVpsWV3AuXPteI
	u/fZYjSbuEcs/PdNP7z89KL854KWCBd+mQKQDFhWO4UBD0z1cmuAP4sBXFzvzbMlHZWdkIDtlXh47
	bI6aHFH8qbFhemTIyJcl+fX7mFd0M3M7KhsmqpjtiHay3Mm01l0tON+M8ivV0LBMIDGqufG+pJloh
	n8NAdG8n3h7ogQZT15He3UuiAibOwYLcLl8QtVTpCwKIfRWpbogMfjgxALy/oMtoWxWA10C1E3FVG
	2VyoZP+1QKIRkIKnAcrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQfA6-0008IK-UR; Fri, 01 Nov 2019 22:12:54 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQf9D-0006DZ-M1
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 22:12:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UZ+SaEOWnCzvDrxTX6AG9Wwn8agTsJsGJeEc8woNULI=; b=hZXZMeFoazQYFUDfoHWbz7LR6
 e61UZAeW9hl9TUo9DCf/pKzC8+hPb+F9EhM79CLzrW/Ev1L/hGh1JFwto8ECXGOCFwe9PVsMzKh55
 KCldn3SwmblmCgp8M7n25aBYgxnykz6yzgoJDybAVe474AsmaL23jpZGL3eCfN/6623iv634ES8Rw
 tYmHo3BdXtu+QabHkNtAYIXPWJeWYfVnOzmJA5Z0z0GAWMyXF065AXwdmiI7smdNbgaSpCJSGfYDe
 3RHxJTfpBBLpupHAvfKzGBy9vMGchkwt3thhvw0vJRJtYoGicwMP0FiWOetF78qSo0YMegNQDQQx6
 FVYky62hg==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:58018)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iQf71-0007UG-3j; Fri, 01 Nov 2019 22:09:43 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iQf6x-0007vG-Dj; Fri, 01 Nov 2019 22:09:39 +0000
Date: Fri, 1 Nov 2019 22:09:39 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Stefan Agner <stefan@agner.ch>
Subject: Re: [PATCH] ARM: use APSR_nzcv instead of r15 as mrc operand
Message-ID: <20191101220939.GK25745@shell.armlinux.org.uk>
References: <472f8bd1f000f45343cc0c66a26380fe4b532147.1572644664.git.stefan@agner.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <472f8bd1f000f45343cc0c66a26380fe4b532147.1572644664.git.stefan@agner.ch>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_151159_715954_75BDB736 
X-CRM114-Status: GOOD (  15.24  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: ard.biesheuvel@linaro.org, linus.walleij@linaro.org, nico@fluxnic.net,
 ndesaulniers@google.com, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, rfranz@marvell.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 01, 2019 at 10:47:58PM +0100, Stefan Agner wrote:
> LLVM's integrated assembler does not accept r15 as mrc operand.
>   arch/arm/boot/compressed/head.S:1267:16: error: operand must be a register in range [r0, r14] or apsr_nzcv
>   1: mrc p15, 0, r15, c7, c14, 3 @ test,clean,invalidate D cache
>                  ^
> 
> Use APSR_nzcv instead of r15. The GNU assembler supports this
> syntax since binutils 2.21 [0].
> 
> [0] https://sourceware.org/git/gitweb.cgi?p=binutils-gdb.git;a=commit;h=db472d6ff0f438a21b357249a9b48e4b74498076
> 
> Signed-off-by: Stefan Agner <stefan@agner.ch>

Looks fine, please put it in the patch system; however, please note
that I've been tweaking the patch system over the last week (mainly
with the database, which has impacted almost everything) so there
may be issues that I've not yet found...

Thanks.

> ---
>  arch/arm/boot/compressed/head.S | 2 +-
>  arch/arm/mm/proc-arm1026.S      | 4 ++--
>  arch/arm/mm/proc-arm926.S       | 4 ++--
>  3 files changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm/boot/compressed/head.S b/arch/arm/boot/compressed/head.S
> index 15ecad944847..ead21e5f2b80 100644
> --- a/arch/arm/boot/compressed/head.S
> +++ b/arch/arm/boot/compressed/head.S
> @@ -1273,7 +1273,7 @@ iflush:
>  __armv5tej_mmu_cache_flush:
>  		tst	r4, #1
>  		movne	pc, lr
> -1:		mrc	p15, 0, r15, c7, c14, 3	@ test,clean,invalidate D cache
> +1:		mrc	p15, 0, APSR_nzcv, c7, c14, 3	@ test,clean,invalidate D cache
>  		bne	1b
>  		mcr	p15, 0, r0, c7, c5, 0	@ flush I cache
>  		mcr	p15, 0, r0, c7, c10, 4	@ drain WB
> diff --git a/arch/arm/mm/proc-arm1026.S b/arch/arm/mm/proc-arm1026.S
> index 10e21012380b..0bdf25a95b10 100644
> --- a/arch/arm/mm/proc-arm1026.S
> +++ b/arch/arm/mm/proc-arm1026.S
> @@ -138,7 +138,7 @@ ENTRY(arm1026_flush_kern_cache_all)
>  	mov	ip, #0
>  __flush_whole_cache:
>  #ifndef CONFIG_CPU_DCACHE_DISABLE
> -1:	mrc	p15, 0, r15, c7, c14, 3		@ test, clean, invalidate
> +1:	mrc	p15, 0, APSR_nzcv, c7, c14, 3		@ test, clean, invalidate
>  	bne	1b
>  #endif
>  	tst	r2, #VM_EXEC
> @@ -363,7 +363,7 @@ ENTRY(cpu_arm1026_switch_mm)
>  #ifdef CONFIG_MMU
>  	mov	r1, #0
>  #ifndef CONFIG_CPU_DCACHE_DISABLE
> -1:	mrc	p15, 0, r15, c7, c14, 3		@ test, clean, invalidate
> +1:	mrc	p15, 0, APSR_nzcv, c7, c14, 3		@ test, clean, invalidate
>  	bne	1b
>  #endif
>  #ifndef CONFIG_CPU_ICACHE_DISABLE
> diff --git a/arch/arm/mm/proc-arm926.S b/arch/arm/mm/proc-arm926.S
> index 3188ab2bac61..1ba253c2bce1 100644
> --- a/arch/arm/mm/proc-arm926.S
> +++ b/arch/arm/mm/proc-arm926.S
> @@ -131,7 +131,7 @@ __flush_whole_cache:
>  #ifdef CONFIG_CPU_DCACHE_WRITETHROUGH
>  	mcr	p15, 0, ip, c7, c6, 0		@ invalidate D cache
>  #else
> -1:	mrc	p15, 0, r15, c7, c14, 3 	@ test,clean,invalidate
> +1:	mrc	p15, 0, APSR_nzcv, c7, c14, 3 	@ test,clean,invalidate
>  	bne	1b
>  #endif
>  	tst	r2, #VM_EXEC
> @@ -358,7 +358,7 @@ ENTRY(cpu_arm926_switch_mm)
>  	mcr	p15, 0, ip, c7, c6, 0		@ invalidate D cache
>  #else
>  @ && 'Clean & Invalidate whole DCache'
> -1:	mrc	p15, 0, r15, c7, c14, 3 	@ test,clean,invalidate
> +1:	mrc	p15, 0, APSR_nzcv, c7, c14, 3 	@ test,clean,invalidate
>  	bne	1b
>  #endif
>  	mcr	p15, 0, ip, c7, c5, 0		@ invalidate I cache
> -- 
> 2.23.0
> 
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
