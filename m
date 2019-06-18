Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 862BA4A79F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 18:51:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tD6fvibuQQc9/PXtQ/g05lsJvOvqidGT5SoqjVjIuGw=; b=WaieeTGMVrUp6x
	PxSzzuoITbELNPXsxGTxbP/y7RhYwKbGLjKmHLWt0bNuH5aRWOruVeBYJDtxhtIQcSSPpI3arQFDp
	3zOBd+w1LnZvS8cpTHGyaOov7RI02jgikyDq7WLnZ1119xHx+8zqzM/3HyyjaJFuNBZAuy7VYFIgO
	agLoLLnHvrCfLLJWrXmopmW+SvdbU9FXaXMtxTX+iDl/VEC/YWc5PoPzFi66LUGJnMNeE5eJNTxAv
	CHsvf/8M4fBG0RWCQGVfbX1u07lWUz+NTPD7ivqcjZZlqSmYCiHo76Y60+WtYI2Vdd/rvhRtm+7vS
	A8sJ0LCf8ZjuXGJp1WPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdHKh-0000Zc-3x; Tue, 18 Jun 2019 16:51:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdHKV-0000ZG-LS
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 16:51:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 271F6344;
 Tue, 18 Jun 2019 09:51:31 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9019F3F246;
 Tue, 18 Jun 2019 09:51:30 -0700 (PDT)
Date: Tue, 18 Jun 2019 17:51:28 +0100
From: Will Deacon <will.deacon@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH 1/2] arm64: Expose ARMv8.5 CondM capability to userspace
Message-ID: <20190618165128.GC4270@fuggles.cambridge.arm.com>
References: <20190617112656.2614-1-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190617112656.2614-1-broonie@kernel.org>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_095131_743023_97308CE0 
X-CRM114-Status: GOOD (  13.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

On Mon, Jun 17, 2019 at 12:26:55PM +0100, Mark Brown wrote:
> ARMv8.5 adds new instructions XAFLAG and AXFLAG to translate the
> representation of the results of floating point comparisons between the
> native ARM format and an alternative format used by some software. Add
> a hwcap allowing userspace to determine if they are present.
> 
> Signed-off-by: Mark Brown <broonie@kernel.org>
> ---
>  Documentation/arm64/elf_hwcaps.txt  | 4 ++++
>  arch/arm64/include/asm/hwcap.h      | 1 +
>  arch/arm64/include/uapi/asm/hwcap.h | 1 +
>  arch/arm64/kernel/cpufeature.c      | 1 +
>  arch/arm64/kernel/cpuinfo.c         | 1 +
>  5 files changed, 8 insertions(+)
> 
> diff --git a/Documentation/arm64/elf_hwcaps.txt b/Documentation/arm64/elf_hwcaps.txt
> index b73a2519ecf2..08e8e380a826 100644
> --- a/Documentation/arm64/elf_hwcaps.txt
> +++ b/Documentation/arm64/elf_hwcaps.txt
> @@ -207,6 +207,10 @@ HWCAP_FLAGM
>  
>      Functionality implied by ID_AA64ISAR0_EL1.TS == 0b0001.
>  
> +HWCAP_CONDM85

This should be referring to HWCAP2.

Also, to dive in with the naming bikeshed, although CONDM85 does appear
to be aligned with the architecture, we've already got HWCAP_FLAGM for
the case when ID_AA64ISAR0_EL1.TS == 0b0001, so I think we're better off
being consistent with ourselves and just having something like
HWCAP2_FLAGM2 with the string "flagm2".

With that change:

Acked-by: Will Deacon <will.deacon@arm.com>

Thanks,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
