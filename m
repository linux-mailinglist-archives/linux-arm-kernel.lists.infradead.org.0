Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FECD1C127C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 14:57:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g1GSih9vEN6LJUZqqc+4SQ4VPLP4alNZOBkEKhfChTo=; b=Vflr57UfIM/MMt
	D6ZRaqjS+CRSe1Uo9cIs9XMqZmCMXdablYT9wtcD9vjkGpIbCiD2NqGY+VHjyPoO5WssIuVhwMRu5
	+x5KeMeD8GIcLUkxFfd4wXqj+jwSfj2Pt4T27HS4W7rhYJuadnGajigtRW41tj5nOtSErMm6uQNKi
	XJDGYOy4V0L3U5O+BKdpqDzMSqDKhdgjbINrOg0hKj+M1uMRmwP+nAvlDGzO6YIo8j6Zm0nn0I2FO
	Vk+dP75wLKBvBYfvApg5pCEIvXQIaNqhB4gwEni1H9MyqSZN1Fvn43LFxD/zgDQeD+adYBXyw6QzX
	/OMUYM62pp+M1edVxv0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUVEf-0008CI-Nb; Fri, 01 May 2020 12:57:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUVEZ-0008BX-FI
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 12:57:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C947E1FB;
 Fri,  1 May 2020 05:57:38 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.7.8])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 870F93F305;
 Fri,  1 May 2020 05:57:37 -0700 (PDT)
Date: Fri, 1 May 2020 13:57:34 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v3 3/3] arm64: insn: Report PAC and BTI instructions as
 NOPs
Message-ID: <20200501125734.GD53528@C02TD0UTHF1T.local>
References: <20200501123709.6640-1-broonie@kernel.org>
 <20200501123709.6640-4-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200501123709.6640-4-broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_055739_551526_BABC6FAB 
X-CRM114-Status: GOOD (  17.31  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 01, 2020 at 01:37:09PM +0100, Mark Brown wrote:
> In order to allow probing of PAC and BTI instructions without more
> specialized support recognize them as NOPs.
> 
> Signed-off-by: Mark Brown <broonie@kernel.org>
> Acked-by: Catalin Marinas <catalin.marinas@arm.com>
> ---
>  arch/arm64/kernel/insn.c | 23 +++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
> 
> diff --git a/arch/arm64/kernel/insn.c b/arch/arm64/kernel/insn.c
> index d458604a96a3..aa525975bf94 100644
> --- a/arch/arm64/kernel/insn.c
> +++ b/arch/arm64/kernel/insn.c
> @@ -57,7 +57,30 @@ bool __kprobes aarch64_insn_is_nop(u32 insn)
>  	if (!aarch64_insn_is_hint(insn))
>  		return false;
>  
> +	/*
> +	 * The PAC and BTI instructons are not strictly NOPs but until
> +	 * better support is added we can treat them as such and they
> +	 * are commonly placed in locations where it is useful to be
> +	 * able to probe.
> +	 */
>  	switch (insn & 0xFE0) {
> +	case AARCH64_INSN_HINT_XPACLRI:
> +	case AARCH64_INSN_HINT_PACIA_1716:
> +	case AARCH64_INSN_HINT_PACIB_1716:
> +	case AARCH64_INSN_HINT_AUTIA_1716:
> +	case AARCH64_INSN_HINT_AUTIB_1716:
> +	case AARCH64_INSN_HINT_PACIAZ:
> +	case AARCH64_INSN_HINT_PACIASP:
> +	case AARCH64_INSN_HINT_PACIBZ:
> +	case AARCH64_INSN_HINT_PACIBSP:
> +	case AARCH64_INSN_HINT_AUTIAZ:
> +	case AARCH64_INSN_HINT_AUTIASP:
> +	case AARCH64_INSN_HINT_AUTIBZ:
> +	case AARCH64_INSN_HINT_AUTIBSP:
> +	case AARCH64_INSN_HINT_BTI:
> +	case AARCH64_INSN_HINT_BTIC:
> +	case AARCH64_INSN_HINT_BTIJ:
> +	case AARCH64_INSN_HINT_BTIJC:
>  	case AARCH64_INSN_HINT_NOP:
>  		return true;
>  	default:

I appreciate the desire to not change this code too much, but could we
please rename this to aarch64_insn_is_steppable_hint() to avoid the
misleading name?

This is only ever used in the stepping code today, so the impact is just
the prototype/declaration/callside, but it avoids confusion in future
and renders the comment redundant. If we really need to identify true
nops in future we can add a new aarch64_insn_is_nop() implementation
just for that.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
