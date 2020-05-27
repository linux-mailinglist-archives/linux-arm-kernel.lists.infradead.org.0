Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A6AB1E431C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 15:14:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=23a0HOIaTySrfYUBjlvtG09R1FEuzS4wOjExLBp6hKQ=; b=k8YdRkMA7K8OS+
	asP4uHZofWeCbvSFKvkpnEaUA9yaRvMRZP7tRcQHbwqjmlVdQRaf1lds8mHcCEkPk1ytR4chxhOPq
	HlJUYn2tUElH7TmW1MeEmNIwINJtXBcwoLspJyPbF3Qy4XaUYpnnd+UxUMghaniXdeKGSiIlUt8S2
	bW0mnbYY899ofvyVsTDJeTs4H8GTsp59zn1WUqWTr+nyzJ3Q1Dp1r3c+ijoORDEkAw0Fk0qj+d5/K
	XUWGh9GVk9Ct0Z3wlROdt3qTtzPDzpEx+xvqKw5ayc+NNoZSMhgrB3/xAiOCSD5Y41DMUh2owZx4o
	RAcg2G4LadH/KrjRJ3fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdvss-0000H9-BJ; Wed, 27 May 2020 13:14:14 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdvsh-0000FB-5V
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 13:14:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+wGjp+L++7jFDqiavXvVkKbLUjq33uwUPkJYG8H0aO4=; b=pBFubWVa1Xrd5Payn7xwXgBxE
 A97Ya+cy+35Yr6lMIoTx68LNeQupgHP39Kxb1Mq4OcXXZFeYIMh0KU7TnXjEytLOQnUWMP/Gq2+MD
 /11eAQq9hitgh2JmLZD0WQAiwqTOe2sOklk6hjWCnxfIScwHkGRBBJ/ISX/5NzijIyP7U7QD0B4q1
 Gwm/iYJWUKtZvjK9VHJ9nkTE4Qyui/An2N4G4D2W0lIU5MDSG8g6p6G/gbG8n1RabyKAptpIjBXKP
 LQGuP9pIYGzcydXBd3JMqfAmp3xiZ+w3q0lH+SiTQy3iwCPKDlFLb+D9SpCqNBgUo7Hmn4CZxYTne
 Rfrvcd7sw==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:37680)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jdvsb-0002Tu-P7; Wed, 27 May 2020 14:13:57 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jdvsb-0006SX-1r; Wed, 27 May 2020 14:13:57 +0100
Date: Wed, 27 May 2020 14:13:57 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH] ARM: asm: Rewrite get_thread_info using BIC
Message-ID: <20200527131356.GN1551@shell.armlinux.org.uk>
References: <20200527122201.124090-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200527122201.124090-1-linus.walleij@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_061403_281673_84884FCD 
X-CRM114-Status: GOOD (  16.67  )
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
Cc: Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 27, 2020 at 02:22:01PM +0200, Linus Walleij wrote:
> By using two BIC instructions we can replace the ARM/thumb
> split instructions with something that works on either
> and also save one instruction.
> 
> Based on code from proc-macros.S and an idea from Ard
> Biesheuvel.
> 
> We need to include <linux/const.h> to expand the
> THREAD_SIZE definition properly in the preprocessor.
> 
> Suggested-by: Russell King <linux@armlinux.org.uk>
> Suggested-by: Ard Biesheuvel <ardb@kernel.org>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>

Looks good to me, thanks.

> ---
>  arch/arm/include/asm/assembler.h | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm/include/asm/assembler.h b/arch/arm/include/asm/assembler.h
> index 99929122dad7..f218e8cf7f88 100644
> --- a/arch/arm/include/asm/assembler.h
> +++ b/arch/arm/include/asm/assembler.h
> @@ -17,6 +17,7 @@
>  #error "Only include this from assembly code"
>  #endif
>  
> +#include <linux/const.h>
>  #include <asm/ptrace.h>
>  #include <asm/domain.h>
>  #include <asm/opcodes-virt.h>
> @@ -203,10 +204,8 @@
>   * Get current thread_info.
>   */
>  	.macro	get_thread_info, rd
> - ARM(	mov	\rd, sp, lsr #THREAD_SIZE_ORDER + PAGE_SHIFT	)
> - THUMB(	mov	\rd, sp			)
> - THUMB(	lsr	\rd, \rd, #THREAD_SIZE_ORDER + PAGE_SHIFT	)
> -	mov	\rd, \rd, lsl #THREAD_SIZE_ORDER + PAGE_SHIFT
> +	bic	\rd, sp, #(THREAD_SIZE - 1) & ~63
> +	bic	\rd, \rd, #63
>  	.endm
>  
>  /*
> -- 
> 2.25.4
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC for 0.8m (est. 1762m) line in suburbia: sync at 13.1Mbps down 424kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
