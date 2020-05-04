Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E612F1C3B8B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 15:44:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ggAARtcX7prEr3S73Bx0p2pZNof/rcGo0AQOmf2nBpw=; b=rhXluhHBIFCwmH
	TccfiLFzF42bY9t7EoUnYelYhF4et1KHVuR7Xj7ZqSpMeV+JoD87j+0pdeqODaDJa9kml7ugeVG1+
	WJ/nP+5lRR2PhCOl84xwMOpAVG2TWmbg96ci2kh3WuCqirAco+hvtJaI2i7/1hMSLwlCJHvscR9aE
	h6VVIIt+7mGAz13RrtFS8gfEZTjqF5lNdqTETQTxg3mEFyzO9E1gyRVmuB9jOz+I2Gqr/S4UuO3E5
	l3+vD5LrAFMqt3mHjjNBSJiF1SubAWA/xMcwlnuQk66+EN/M8R4j/Dtk2ei6XjJSn2C+fQ1HEYV8v
	I6MwG3f5lL/hIVTn5W/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVbOx-0003w2-1N; Mon, 04 May 2020 13:44:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVbOn-0003uz-Ov
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 13:44:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 878C11FB;
 Mon,  4 May 2020 06:44:44 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.4.172])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6564B3F71F;
 Mon,  4 May 2020 06:44:43 -0700 (PDT)
Date: Mon, 4 May 2020 14:44:40 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v4 3/4] arm64: insn: Don't assume unrecognized HINTs are
 skippable
Message-ID: <20200504134440.GE73375@C02TD0UTHF1T.local>
References: <20200504131326.18290-1-broonie@kernel.org>
 <20200504131326.18290-4-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200504131326.18290-4-broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_064448_134843_C1526579 
X-CRM114-Status: GOOD (  17.70  )
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

On Mon, May 04, 2020 at 02:13:25PM +0100, Mark Brown wrote:
> Currently the kernel assumes that any HINT which it does not explicitly
> recognise is skippable.  This is not robust as new instructions may be
> added which need special handling, and in any case software should only
> be using explicit NOP instructions for deliberate NOPs.
> 
> This has the effect of rendering PAC and BTI instructions unprobeable
> which means that probes can't be inserted on the first instruction of
> functions built with those features.
> 
> Signed-off-by: Mark Brown <broonie@kernel.org>
> Acked-by: Catalin Marinas <catalin.marinas@arm.com>

Acked-by: Mark Rutland <mark.rutland@arm.com>

Mark.

> ---
>  arch/arm64/kernel/insn.c | 10 +++-------
>  1 file changed, 3 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm64/kernel/insn.c b/arch/arm64/kernel/insn.c
> index 0829bb5b45ec..15c3f0643e3b 100644
> --- a/arch/arm64/kernel/insn.c
> +++ b/arch/arm64/kernel/insn.c
> @@ -57,14 +57,10 @@ bool __kprobes aarch64_insn_is_steppable_hint(u32 insn)
>  		return false;
>  
>  	switch (insn & 0xFE0) {
> -	case AARCH64_INSN_HINT_YIELD:
> -	case AARCH64_INSN_HINT_WFE:
> -	case AARCH64_INSN_HINT_WFI:
> -	case AARCH64_INSN_HINT_SEV:
> -	case AARCH64_INSN_HINT_SEVL:
> -		return false;
> -	default:
> +	case AARCH64_INSN_HINT_NOP:
>  		return true;
> +	default:
> +		return false;
>  	}
>  }
>  
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
