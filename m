Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2F7D1C3B7D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 15:43:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IA8peSF1BDZGFulqic/PXGnPFrs58STXjNFvsBmq6P4=; b=TjSxeMvqskwC4x
	/QECr4SH/IOznPrxQ1Rjb07KaIEEgiE2BcMnF3xBcG/mq3pn3JtbaxetyUENHGHmO9eHdCbma6hJA
	WyT67sNymyRFXfhIDdT3f92VCtpHBafgWCQTl3VZdB2eP1gstx/E2uVRyNGJw3DVhsJI9l+nNHv4K
	mkD3MbOdARhkp3Zc72LpvsPpdVEmrgwtggN5se26iY5y0L/yb96wGRf1ws5R7QL7AQAU5/itI4+MK
	+cjQ4WGhXonbACXF0p4cU5QtRNCdRC+kwJsihhdSAUz8mSwcubc0BfUgeSQ+THq4J/Ik1/4X3XDvD
	+cLZbLCE7EMF248bUftw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVbNp-0003Tp-1B; Mon, 04 May 2020 13:43:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVbNi-0003TG-JX
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 13:43:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5B4F81FB;
 Mon,  4 May 2020 06:43:37 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.4.172])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1E82D3F71F;
 Mon,  4 May 2020 06:43:35 -0700 (PDT)
Date: Mon, 4 May 2020 14:43:33 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v4 4/4] arm64: insn: Report PAC and BTI instructions as
 skippable
Message-ID: <20200504134333.GD73375@C02TD0UTHF1T.local>
References: <20200504131326.18290-1-broonie@kernel.org>
 <20200504131326.18290-5-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200504131326.18290-5-broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_064338_684224_81F0C284 
X-CRM114-Status: GOOD (  14.67  )
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

On Mon, May 04, 2020 at 02:13:26PM +0100, Mark Brown wrote:
> The PAC and BTI instructions can be safely skipped so report them as
> such, allowing them to be probed.
> 
> Signed-off-by: Mark Brown <broonie@kernel.org>
> Acked-by: Catalin Marinas <catalin.marinas@arm.com>

These all look safe to step in a XOL area, so:

Acked-by: Mark Rutland <mark.rutland@arm.com>

> ---
>  arch/arm64/kernel/insn.c | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
> 
> diff --git a/arch/arm64/kernel/insn.c b/arch/arm64/kernel/insn.c
> index 15c3f0643e3b..6439af794ec4 100644
> --- a/arch/arm64/kernel/insn.c
> +++ b/arch/arm64/kernel/insn.c
> @@ -57,6 +57,23 @@ bool __kprobes aarch64_insn_is_steppable_hint(u32 insn)
>  		return false;
>  
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

Just to check -- do we set the GP flag when creating/mapping the XOL
area? If that's PAGE_KERNEL_EXEC, presumably we do.

Mark.

>  	case AARCH64_INSN_HINT_NOP:
>  		return true;
>  	default:
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
