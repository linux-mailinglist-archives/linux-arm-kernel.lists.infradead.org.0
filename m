Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE60A1E4310
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 15:13:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4XOu9zNGPZ04cHdrPJRgJ4nDS6aXJbm5ww26aMteQDQ=; b=Jx8c/XAlk1hvF9
	SkvrNjy/tkwRDcBn1qQLSKhU5Pzfgg5pKjxAdMpyXVx/98USirdsoLLFCVosQWW4nhD5g0c4mWHNe
	+A7T/6DacKYR0KAUy4shuulaV1LO2IWz2wbGtP2NZoZqKdi+q01rVzg/mIln4oaVEe9h4Hx2qXOjH
	amgCsGgEZIjoOr9yJhgf3hXGP1q2iEG3vcxQUcyjECbWPmrgZEFLZ/idLqhQPBvz/TI+7/g7HQu+C
	xZco1PTRoT2qPigL7n0sYW4FTXO+gy93g4Vm2mq/fgry98PoW3S1nJ3O6ySyh0S7bgMCdJFtZMTzo
	4qiCpY5tmorcCLXbRkoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdvsC-0008Ir-3z; Wed, 27 May 2020 13:13:32 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdvs0-0008Gq-UN
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 13:13:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gpeXnNzl8J+8s/XEc8qkVAk6eg5oTdSpcGUzvlpI+pQ=; b=kAinczcfbuXgwB0ls2JfOinly
 zoqCB1bz9vb1iO5y7keUoHT2c7OGedurLg21Lc/U+4rsX5ELzZLhE2YurzhkFNOJbp7hgu1cEpR4/
 0YuwICaIsGgVfvlWKPb1D+8j2n5At92MegdqgNFTNo1tCTAwHjLEk3HHy6Dp8/bUlaoFMITK+TZmE
 7ZBqfomlCg0NgmV+JeIjhGffQd/uZbwCVK/kGxtOhw1Ob8Go/Ets7fwgwkUXvkCRaLMnl2LcpkqWo
 5MWoZFIynhxLCBE5Zolrp1GmS+tCvoVGqh3bj0XcNEymkSPtdIcB0aGC/MNaPS8fo0Eb/g79xyGqe
 vaac9WyqQ==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:37678)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jdvru-0002Tj-DJ; Wed, 27 May 2020 14:13:14 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jdvrt-0006SP-2T; Wed, 27 May 2020 14:13:13 +0100
Date: Wed, 27 May 2020 14:13:13 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH v2] ARM: mm: Simplify act_mm macro
Message-ID: <20200527131312.GM1551@shell.armlinux.org.uk>
References: <20200527115618.92792-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200527115618.92792-1-linus.walleij@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_061321_247109_3B91838D 
X-CRM114-Status: GOOD (  14.56  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 27, 2020 at 01:56:18PM +0200, Linus Walleij wrote:
> The act_mm assembly macro is actually partly reimplementing
> get_thread_info so let's just use that.
> 
> Suggested-by: Russell King <linux@armlinux.org.uk>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> ChangeLog v1->v2:
> - Accidentally removed the index to the active task which
>   is what we want here.

Yep, this version is purrfec.  Thanks.

> ---
>  arch/arm/mm/proc-macros.S | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/arch/arm/mm/proc-macros.S b/arch/arm/mm/proc-macros.S
> index 60ac7c5999a9..e2c743aa2eb2 100644
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
> @@ -31,8 +30,7 @@
>   * act_mm - get current->active_mm
>   */
>  	.macro	act_mm, rd
> -	bic	\rd, sp, #(THREAD_SIZE - 1) & ~63
> -	bic	\rd, \rd, #63
> +	get_thread_info \rd
>  	ldr	\rd, [\rd, #TI_TASK]
>  	.if (TSK_ACTIVE_MM > IMM12_MASK)
>  	add	\rd, \rd, #TSK_ACTIVE_MM & ~IMM12_MASK
> -- 
> 2.25.4
> 
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC for 0.8m (est. 1762m) line in suburbia: sync at 13.1Mbps down 424kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
