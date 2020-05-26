Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38CFC1E2439
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 16:38:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qYPYqGUqlGo7Uq7yvHoLNFdX+jySoKniBjwK8c4DrUs=; b=MSShHpbgzzaT5r
	zc8oYeC1j/Bdb1kRrBo9x8Jfv8r0MspnUz/8VEdV99k073Cc6STIHgJW+mPa1YSSBiwrUr1bx7b0Q
	oN84qmmeTTpvjCOg8/dyxjszEk6NHTtR7OPCT25TAiEJDGQzh+/fhuwReQUmpRTfFKCivCaa2LuYd
	iLT9WlbLdSlneBWnGaNat5waClTJAGgtCpENId8QIBnC762waH0WK0NqqCCY23wXTZYUGvg6203NT
	030ZC6DAr7UFtKL6NnuDnmDW/ZjwrAzYsGb4tQcY+R42eqBEsjR5wIfIXN1Q0MlJQ7xTYwpPcInln
	RPGR97AN/RZXJX17kwFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdaiZ-0007bk-4d; Tue, 26 May 2020 14:38:11 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdaiP-0007b6-KE
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 14:38:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6r4j8rBbTE2dFZlMnxrudaMntRuorYxjw3EurSlJSOc=; b=WDpkxa1jYDyPvIN+x4b9XNo1b
 ROgGmfb4JRqdVtHcI57bGMhgBcYQ8HC3NX/GYKatTT4DMGuSwhhNVyRDwDWjmRodfSuaLbdb4SGYx
 SvozEC1iXVZXDy8/X8giPsSn8P7f1FhgETk5zKolqyN33eOS09+BqvjusAMG/3q87QUES8d1ku4Ol
 h60FSFqwCLvwXOCywz3TeR7HvQudM8sAxwPsCqdGGyBzALNw4XCEjlTTzIgA/BaUZa7b5AxEPHbBv
 Rhoel2jiEjL6FmfZdPfF+u0e3YqImG8qIFDU6jiDOKtFR13ZqByw7yG1A89CA4okEhYfpxTQAbqhb
 PQLv/Zc5Q==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:45316)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jdaiL-00081w-0V; Tue, 26 May 2020 15:37:57 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jdaiK-0005Rw-GH; Tue, 26 May 2020 15:37:56 +0100
Date: Tue, 26 May 2020 15:37:56 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH] ARM: mm: Simplify act_mm macro
Message-ID: <20200526143756.GZ1551@shell.armlinux.org.uk>
References: <20200526143249.68202-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200526143249.68202-1-linus.walleij@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_073801_665988_52EADD2C 
X-CRM114-Status: GOOD (  14.87  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 26, 2020 at 04:32:49PM +0200, Linus Walleij wrote:
> The act_mm assembly macro is actually partly reimplementing
> get_thread_info so let's just use that.
> 
> Suggested-by: Russell King <linux@armlinux.org.uk>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
>  arch/arm/mm/proc-macros.S | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/arch/arm/mm/proc-macros.S b/arch/arm/mm/proc-macros.S
> index 60ac7c5999a9..65eaea85d3d6 100644
> --- a/arch/arm/mm/proc-macros.S
> +++ b/arch/arm/mm/proc-macros.S
> @@ -5,7 +5,6 @@
>   *  VMA_VM_FLAGS
>   *  VM_EXEC
>   */
> -#include <linux/const.h>
>  #include <asm/asm-offsets.h>
>  #include <asm/thread_info.h>
>  
> @@ -31,9 +30,7 @@
>   * act_mm - get current->active_mm
>   */
>  	.macro	act_mm, rd
> -	bic	\rd, sp, #(THREAD_SIZE - 1) & ~63
> -	bic	\rd, \rd, #63
> -	ldr	\rd, [\rd, #TI_TASK]
> +	get_thread_info \rd

This is not quite the same thing.

get_thread_info loads into \rd the address of the thread_info structure.
That's what the two bic instructions are doing.  The LDR is then loading
the address of the task_struct into \rd.

>  	.if (TSK_ACTIVE_MM > IMM12_MASK)
>  	add	\rd, \rd, #TSK_ACTIVE_MM & ~IMM12_MASK
>  	.endif

So this change alters which structure \rd is pointing to.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC for 0.8m (est. 1762m) line in suburbia: sync at 13.1Mbps down 424kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
