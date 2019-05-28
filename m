Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDFB02C40B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 12:12:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GFfqRgh6nirwbBxK5fv2g14h0p4qsv3XC6FiAbg3ROo=; b=ZxQPoN79pGUMbe
	zCbcdeCAO/75Tb6jI9q/LBYIxCMMynu4lngXr0jqsFofBEbzPWUZsVwkuSmTXhgyX1OxtgYF95ro6
	JShU7w3ujpSluSY9Q6pM5IO6YX53cRWV//hStCU3PjjpGmSDqN8Zu9zbDWk9X9SJqV4THPcLtUcGR
	iSYk4nAU8wSQY61ZmIit/y5Uqqmswe31M04PK02aIhDLHdnEdZbxahFI2sg2QjqSdOWTxP9WSjFKw
	3Oh8hJVzJkgK2jEvn0jDfDWzYJxpSys8SWkL3gkg6hLUeN0bwUbwoAXZDc3fjYIVPRy/UJLwYZpYh
	ewzxXg35hvtRR3urfoEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVZ5M-0007Et-7r; Tue, 28 May 2019 10:12:00 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVZ5D-0007CZ-HU
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 10:11:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A926D341;
 Tue, 28 May 2019 03:11:50 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 99AD53F59C;
 Tue, 28 May 2019 03:11:49 -0700 (PDT)
Date: Tue, 28 May 2019 11:11:47 +0100
From: Will Deacon <will.deacon@arm.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH] arm64/module: revert to unsigned interpretation of
 ABS16/32 relocations
Message-ID: <20190528101147.GB20809@fuggles.cambridge.arm.com>
References: <20190527064413.21304-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190527064413.21304-1-ard.biesheuvel@linaro.org>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_031151_600400_DFA5DF4A 
X-CRM114-Status: GOOD (  21.98  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, marc.zyngier@arm.com, james.morse@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 08:44:13AM +0200, Ard Biesheuvel wrote:
> Commit 1cf24a2cc3fd
> 
>   ("arm64/module: deal with ambiguity in PRELxx relocation ranges")
> 
> updated the overflow checking logic in the relocation handling code to
> ensure that PREL16/32 relocations don't overflow signed quantities.
> 
> However, the same code path is used for absolute relocations, where the
> interpretation is the opposite: the only current use case for absolute
> relocations operating on non-native word size quantities is the CRC32
> handling in the CONFIG_MODVERSIONS code, and these CRCs are unsigned
> 32-bit quantities, which are now being rejected by the module loader
> if bit 31 happens to be set.
> 
> So let's use different ranges for quanties subject to absolute vs.
> relative relocations:
> - ABS16/32 relocations should be in the range [0, Uxx_MAX)
> - PREL16/32 relocations should be in the range [Sxx_MIN, Sxx_MAX)
> 
> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> ---
>  arch/arm64/kernel/module.c | 14 ++++++++------
>  1 file changed, 8 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/kernel/module.c b/arch/arm64/kernel/module.c
> index f32359cffb01..85fb63c1ba3a 100644
> --- a/arch/arm64/kernel/module.c
> +++ b/arch/arm64/kernel/module.c
> @@ -98,10 +98,10 @@ static int reloc_data(enum aarch64_reloc_op op, void *place, u64 val, int len)
>  
>  	/*
>  	 * The ELF psABI for AArch64 documents the 16-bit and 32-bit place
> -	 * relative relocations as having a range of [-2^15, 2^16) or
> -	 * [-2^31, 2^32), respectively. However, in order to be able to detect
> -	 * overflows reliably, we have to choose whether we interpret such
> -	 * quantities as signed or as unsigned, and stick with it.
> +	 * relative and absolute relocations as having a range of [-2^15, 2^16)
> +	 * or [-2^31, 2^32), respectively. However, in order to be able to
> +	 * detect overflows reliably, we have to choose whether we interpret
> +	 * such quantities as signed or as unsigned, and stick with it.
>  	 * The way we organize our address space requires a signed
>  	 * interpretation of 32-bit relative references, so let's use that
>  	 * for all R_AARCH64_PRELxx relocations. This means our upper
> @@ -111,12 +111,14 @@ static int reloc_data(enum aarch64_reloc_op op, void *place, u64 val, int len)
>  	switch (len) {
>  	case 16:
>  		*(s16 *)place = sval;
> -		if (sval < S16_MIN || sval > S16_MAX)
> +		if ((op == RELOC_OP_ABS && (sval < 0 || sval > U16_MAX)) ||
> +		    (op == RELOC_OP_PREL && (sval < S16_MIN || sval > S16_MAX)))
>  			return -ERANGE;
>  		break;
>  	case 32:
>  		*(s32 *)place = sval;
> -		if (sval < S32_MIN || sval > S32_MAX)
> +		if ((op == RELOC_OP_ABS && (sval < 0 || sval > U32_MAX)) ||
> +		    (op == RELOC_OP_PREL && (sval < S32_MIN || sval > S32_MAX)))
>  			return -ERANGE;
>  		break;
>  	case 64:

Hmm. I worry that this isn't the last time we're going to be tweaking this,
so I'm wondering whether or not we should just revert 1cf24a2cc3fd instead.

However, if you still want to pursue this, please can you restructure the
check so that we do:

	if (op == RELOC_OP_PREL) {
		/* Comment about deviation from ELF ABI */
		if (signed overflow check)
			return -ERANGE;
	} else if (unsigned overflow check) {
		return -ERANGE;
	}

i.e. drop the explicit check of ABS so that the default behaviour follows
the ELF spec?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
