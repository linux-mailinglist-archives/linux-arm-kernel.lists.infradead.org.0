Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80CC21723E1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 17:48:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CdsbhexxWXQGdt01v0vP8rLzxb2LfLOC7oGEUPHGmtA=; b=V2vgLZarBxl2Jk
	D2MfHgPpdDwC2ot4IFRtkZ9HOKaU7WGaTpubV7BJDkdwj84IrN1zhoD/eY0An5XxlM43HKe1fROSq
	NZQYfUYkbg4DxXqAS4sD2mrPVZ+F2PPU9Blb5CQHFCno1hRSCPPYEW0rGionnTnRzS+loKgJbztYH
	HLihY71bZEltri8TannvUHM4Oa3AXFtX0H5Ups8M18aAr3nbTAo+vQMgR/TIMI6iW2RKWeAdbJ2Ug
	ghILWdHGMmWDhoCO2vKupCNMkWZgctcN/QPO7imD8jZbgJD2VgGBIpj7fotcwMoMj0HF5Zh1uo6md
	WSg+2tI9NUO/YVdRkF1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7MKy-0008EV-Gb; Thu, 27 Feb 2020 16:48:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7MKo-0008E1-CI
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 16:48:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A612D1FB;
 Thu, 27 Feb 2020 08:48:23 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 390443F703;
 Thu, 27 Feb 2020 08:48:22 -0800 (PST)
Date: Thu, 27 Feb 2020 16:48:17 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Amit Daniel Kachhap <amit.kachhap@arm.com>
Subject: Re: [PATCH 2/2] arm64: kprobe: disable probe of fault prone ptrauth
 instruction
Message-ID: <20200227164817.GA31259@lakrids.cambridge.arm.com>
References: <1582117240-15330-1-git-send-email-amit.kachhap@arm.com>
 <1582117240-15330-3-git-send-email-amit.kachhap@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582117240-15330-3-git-send-email-amit.kachhap@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_084826_508727_3318F233 
X-CRM114-Status: GOOD (  17.78  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Mark Brown <broonie@kernel.org>, James Morse <james.morse@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Amit,

On Wed, Feb 19, 2020 at 06:30:40PM +0530, Amit Daniel Kachhap wrote:
> This patch disables the probing of authenticate ptrauth instruction
> (AUTIASP) which falls under the hint instructions region. This is done
> to disallow probe of authenticate instruction in the kernel which may
> lead to ptrauth faults with the addition of Armv8.6 enhanced ptrauth
> features.
> 
> The corresponding append pac ptrauth instruction (PACIASP) is not disabled
> and they can still be probed.
> 
> Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
> ---
>  arch/arm64/include/asm/insn.h          | 13 +++++++------
>  arch/arm64/kernel/insn.c               |  1 +
>  arch/arm64/kernel/probes/decode-insn.c |  2 +-
>  3 files changed, 9 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/insn.h b/arch/arm64/include/asm/insn.h
> index bb313dd..2e01db0 100644
> --- a/arch/arm64/include/asm/insn.h
> +++ b/arch/arm64/include/asm/insn.h
> @@ -40,12 +40,13 @@ enum aarch64_insn_encoding_class {
>  };
>  
>  enum aarch64_insn_hint_op {
> -	AARCH64_INSN_HINT_NOP	= 0x0 << 5,
> -	AARCH64_INSN_HINT_YIELD	= 0x1 << 5,
> -	AARCH64_INSN_HINT_WFE	= 0x2 << 5,
> -	AARCH64_INSN_HINT_WFI	= 0x3 << 5,
> -	AARCH64_INSN_HINT_SEV	= 0x4 << 5,
> -	AARCH64_INSN_HINT_SEVL	= 0x5 << 5,
> +	AARCH64_INSN_HINT_NOP		= 0x0 << 5,
> +	AARCH64_INSN_HINT_YIELD		= 0x1 << 5,
> +	AARCH64_INSN_HINT_WFE		= 0x2 << 5,
> +	AARCH64_INSN_HINT_WFI		= 0x3 << 5,
> +	AARCH64_INSN_HINT_SEV		= 0x4 << 5,
> +	AARCH64_INSN_HINT_SEVL		= 0x5 << 5,
> +	AARCH64_INSN_HINT_AUTIASP	= (0x3 << 8) | (0x5 << 5),
>  };
>  
>  enum aarch64_insn_imm_type {
> diff --git a/arch/arm64/kernel/insn.c b/arch/arm64/kernel/insn.c
> index 4a9e773..87f7c8a 100644
> --- a/arch/arm64/kernel/insn.c
> +++ b/arch/arm64/kernel/insn.c
> @@ -63,6 +63,7 @@ bool __kprobes aarch64_insn_is_nop(u32 insn)
>  	case AARCH64_INSN_HINT_WFI:
>  	case AARCH64_INSN_HINT_SEV:
>  	case AARCH64_INSN_HINT_SEVL:
> +	case AARCH64_INSN_HINT_AUTIASP:
>  		return false;
>  	default:
>  		return true;

I'm afraid that the existing code here is simply wrong, and this is
adding to the mess.

We have no idea what HINT space instructions will be in the future, so
the only sensible implementations of aarch64_insn_is_nop() are something
like:

bool __kprobes aarch64_insn_is_nop(u32 insn)
{
	return insn == aarch64_insn_gen_hint(AARCH64_INSN_HINT_NOP);
}

... and if we want to check for other HINT instructions, they should be
checked explicitly.

Can you please change aarch64_insn_is_nop() as above?

Generally the logic in aarch64_insn_is_steppable() needs to be reworked
to a whitelist, but at least chagning aarch64_insn_is_nop() this way is
closer to where we want to be.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
