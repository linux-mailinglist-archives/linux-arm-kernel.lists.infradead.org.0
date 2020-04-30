Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D10A41C0179
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 18:07:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SGL643K5yB5r+M4YoPyGMHpdEdIAcn2rtnt0IBB5AIA=; b=N/IXRwMsYa/7dC
	n4RjKIv2p3I2QZT/gcGkL/pf0GOefHcgHntwrPxaS0IsZzqdwvEE6fen+wzA0olseR46fYtCT2n2N
	7Zq+HMOtu5JM9ir795QEt4W+hI15wx1/d+m5YkQ2/3sQEkqF8k40dqMo4tUjHpnY8uzRQ5+Bs0+dm
	BpUaKuBdqGrUjwZh8mGdm+VX3uoXyafrXQlnxdE5nzpwX4qf/pEv8G3XpenoBy/atiPZTSKedFH86
	nhtj/5dsrw2ffGNm8e3Y4woPmD+nvqV/L4jx+xU28M+/uVvi5yWkn/JC5Omr9ZHEeA368Gq1a7dxi
	juL6tPnr54RUTKAyxdEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUBix-0002qj-Iv; Thu, 30 Apr 2020 16:07:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUBio-0002qG-Us
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 16:07:36 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C4FAD2076D;
 Thu, 30 Apr 2020 16:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588262854;
 bh=V60szU4R69RLK7NiCHooBzIQ6FoS2Mur2fzZJs7Q6Jw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UJlJnvuVEGMPBt6jZR1Bu8a5VPPkcAkVZlHi2UQGE4HPXwE6CByF+WiGaq1gaWdg0
 xk0ZW+az4LZmOVeER5eeGo528w//KTB+esyB3MEDROWMdWfA+5FKT2g+lmIYhqVe6m
 o+x4w+PRAqr7y/2ZRqpdqYt8wYdVLsKFdEHkzT4g=
Date: Thu, 30 Apr 2020 17:07:30 +0100
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v2 2/3] arm64: insn: Add constants for PAC and BTI
 instruction decode
Message-ID: <20200430160729.GB25258@willie-the-truck>
References: <20200428172433.48830-1-broonie@kernel.org>
 <20200428172433.48830-3-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200428172433.48830-3-broonie@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_090735_015041_08B4D72B 
X-CRM114-Status: GOOD (  14.98  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 28, 2020 at 06:24:32PM +0100, Mark Brown wrote:
> Add constants for decoding the various PAC and BTI instructions defined
> in the HINT space. Since we are now decoding both the op2 and CRm fields
> rename the enum as well; this is compatible with what the existing users
> are doing.
> 
> Signed-off-by: Mark Brown <broonie@kernel.org>
> Acked-by: Catalin Marinas <catalin.marinas@arm.com>
> ---
>  arch/arm64/include/asm/insn.h | 22 ++++++++++++++++++++--
>  arch/arm64/kernel/insn.c      |  2 +-
>  2 files changed, 21 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/insn.h b/arch/arm64/include/asm/insn.h
> index bb313dde58a4..e5a87f98a548 100644
> --- a/arch/arm64/include/asm/insn.h
> +++ b/arch/arm64/include/asm/insn.h
> @@ -39,13 +39,31 @@ enum aarch64_insn_encoding_class {
>  					 * system instructions */
>  };
>  
> -enum aarch64_insn_hint_op {
> +enum aarch64_insn_hint_cr_op {
>  	AARCH64_INSN_HINT_NOP	= 0x0 << 5,
>  	AARCH64_INSN_HINT_YIELD	= 0x1 << 5,
>  	AARCH64_INSN_HINT_WFE	= 0x2 << 5,
>  	AARCH64_INSN_HINT_WFI	= 0x3 << 5,
>  	AARCH64_INSN_HINT_SEV	= 0x4 << 5,
>  	AARCH64_INSN_HINT_SEVL	= 0x5 << 5,
> +
> +	AARCH64_INSN_HINT_PACIA_1716 = 0x08 << 5,
> +	AARCH64_INSN_HINT_PACIB_1716 = 0x0A << 5,
> +	AARCH64_INSN_HINT_AUTIA_1716 = 0x0B << 5,
> +	AARCH64_INSN_HINT_AUTIB_1716 = 0x0C << 5,

These still look wrong to me.

> +	AARCH64_INSN_HINT_PACIAZ     = 0x18 << 5,
> +	AARCH64_INSN_HINT_PACIASP    = 0x19 << 5,
> +	AARCH64_INSN_HINT_PACIBZ     = 0x1A << 5,
> +	AARCH64_INSN_HINT_PACIBSP    = 0x1B << 5,
> +	AARCH64_INSN_HINT_AUTIAZ     = 0x1C << 5,
> +	AARCH64_INSN_HINT_AUTIASP    = 0x1D << 5,

This one is typo'd in the Arm ARM as AUTHASP. Seems nobody can get this
stuff right!

> +	AARCH64_INSN_HINT_AUTIBZ     = 0x1E << 5,
> +	AARCH64_INSN_HINT_AUTIBSP    = 0x1F << 5,
> +
> +	AARCH64_INSN_HINT_BTI   = 0x20 << 5,
> +	AARCH64_INSN_HINT_BTIC  = 0x22 << 5,
> +	AARCH64_INSN_HINT_BTIJ  = 0x24 << 5,
> +	AARCH64_INSN_HINT_BTIJC = 0x2C << 5,

This looks wrong as well.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
