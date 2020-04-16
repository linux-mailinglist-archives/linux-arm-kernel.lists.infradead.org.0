Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B1371AC1E4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 14:57:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lBGOzWlwPbnQhvMjxXzn4KzKd0W5nMFO24f3RFCGEWA=; b=mwyCNydcfZT7Zw
	u5lBYZG+62UYRm20P3fKTO4TQISektjb6wzJi4R2libhmpvwXDLckKaClE1/Zmq5j1zBCLInYVBuo
	OjZPSrTosQbrduHBF6GDLe9UvsOzgfmvSbKOxghkKFAgyBpvaHxPM3tnbv7uNfi8pdmGDJ6BeniYl
	lKe1BOoTY+OyIdDY0tMGV0hF83hvo2WfbD+uZe7tioDofsA7l7dyPLlyz6l2+Miy1O4uSHi6YvuKv
	xG/EJ2PPUQOpTePFe80/lt5lkfrTLCR0Efz6itGsd7ofKQ1VFmqNdOb+QSP7LkhSzzdkPIbs3JPcf
	t/lkGfxv9dZ6Iwo/+mGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP45T-00033N-U7; Thu, 16 Apr 2020 12:57:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP45N-000332-Hc
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 12:57:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 409AA1FB;
 Thu, 16 Apr 2020 05:57:40 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B093E3F68F;
 Thu, 16 Apr 2020 05:57:38 -0700 (PDT)
Date: Thu, 16 Apr 2020 13:57:36 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH 1/2] arm64: Sort vendor-specific errata
Message-ID: <20200416125736.GG4987@lakrids.cambridge.arm.com>
References: <20200416115658.20406-1-geert+renesas@glider.be>
 <20200416115658.20406-2-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200416115658.20406-2-geert+renesas@glider.be>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_055741_670986_3A56D5DC 
X-CRM114-Status: GOOD (  20.83  )
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
Cc: Arnd Bergmann <arnd@arndb.de>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, Wei Xu <xuwei5@hisilicon.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org,
 Robert Richter <rrichter@marvell.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 16, 2020 at 01:56:57PM +0200, Geert Uytterhoeven wrote:
> Sort configuration options for vendor-specific errata by vendor, to
> increase uniformity.
> Move ARM64_WORKAROUND_REPEAT_TLBI up, as it is also selected by
> ARM64_ERRATUM_1286807.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

This makes sense to me, so FWIW:

Acked-by: Mark Rutland <mark.rutland@arm.com>

Mark.

> ---
>  arch/arm64/Kconfig | 72 +++++++++++++++++++++++-----------------------
>  1 file changed, 36 insertions(+), 36 deletions(-)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 40fb05d96c6072c9..8d33d7fed6d8549b 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -553,6 +553,9 @@ config ARM64_ERRATUM_1530923
>  
>  	  If unsure, say Y.
>  
> +config ARM64_WORKAROUND_REPEAT_TLBI
> +	bool
> +
>  config ARM64_ERRATUM_1286807
>  	bool "Cortex-A76: Modification of the translation table for a virtual address might lead to read-after-read ordering violation"
>  	default y
> @@ -694,6 +697,35 @@ config CAVIUM_TX2_ERRATUM_219
>  
>  	  If unsure, say Y.
>  
> +config FUJITSU_ERRATUM_010001
> +	bool "Fujitsu-A64FX erratum E#010001: Undefined fault may occur wrongly"
> +	default y
> +	help
> +	  This option adds a workaround for Fujitsu-A64FX erratum E#010001.
> +	  On some variants of the Fujitsu-A64FX cores ver(1.0, 1.1), memory
> +	  accesses may cause undefined fault (Data abort, DFSC=0b111111).
> +	  This fault occurs under a specific hardware condition when a
> +	  load/store instruction performs an address translation using:
> +	  case-1  TTBR0_EL1 with TCR_EL1.NFD0 == 1.
> +	  case-2  TTBR0_EL2 with TCR_EL2.NFD0 == 1.
> +	  case-3  TTBR1_EL1 with TCR_EL1.NFD1 == 1.
> +	  case-4  TTBR1_EL2 with TCR_EL2.NFD1 == 1.
> +
> +	  The workaround is to ensure these bits are clear in TCR_ELx.
> +	  The workaround only affects the Fujitsu-A64FX.
> +
> +	  If unsure, say Y.
> +
> +config HISILICON_ERRATUM_161600802
> +	bool "Hip07 161600802: Erroneous redistributor VLPI base"
> +	default y
> +	help
> +	  The HiSilicon Hip07 SoC uses the wrong redistributor base
> +	  when issued ITS commands such as VMOVP and VMAPP, and requires
> +	  a 128kB offset to be applied to the target address in this commands.
> +
> +	  If unsure, say Y.
> +
>  config QCOM_FALKOR_ERRATUM_1003
>  	bool "Falkor E1003: Incorrect translation due to ASID change"
>  	default y
> @@ -705,9 +737,6 @@ config QCOM_FALKOR_ERRATUM_1003
>  	  is unchanged. Work around the erratum by invalidating the walk cache
>  	  entries for the trampoline before entering the kernel proper.
>  
> -config ARM64_WORKAROUND_REPEAT_TLBI
> -	bool
> -
>  config QCOM_FALKOR_ERRATUM_1009
>  	bool "Falkor E1009: Prematurely complete a DSB after a TLBI"
>  	default y
> @@ -729,25 +758,6 @@ config QCOM_QDF2400_ERRATUM_0065
>  
>  	  If unsure, say Y.
>  
> -config SOCIONEXT_SYNQUACER_PREITS
> -	bool "Socionext Synquacer: Workaround for GICv3 pre-ITS"
> -	default y
> -	help
> -	  Socionext Synquacer SoCs implement a separate h/w block to generate
> -	  MSI doorbell writes with non-zero values for the device ID.
> -
> -	  If unsure, say Y.
> -
> -config HISILICON_ERRATUM_161600802
> -	bool "Hip07 161600802: Erroneous redistributor VLPI base"
> -	default y
> -	help
> -	  The HiSilicon Hip07 SoC uses the wrong redistributor base
> -	  when issued ITS commands such as VMOVP and VMAPP, and requires
> -	  a 128kB offset to be applied to the target address in this commands.
> -
> -	  If unsure, say Y.
> -
>  config QCOM_FALKOR_ERRATUM_E1041
>  	bool "Falkor E1041: Speculative instruction fetches might cause errant memory access"
>  	default y
> @@ -758,22 +768,12 @@ config QCOM_FALKOR_ERRATUM_E1041
>  
>  	  If unsure, say Y.
>  
> -config FUJITSU_ERRATUM_010001
> -	bool "Fujitsu-A64FX erratum E#010001: Undefined fault may occur wrongly"
> +config SOCIONEXT_SYNQUACER_PREITS
> +	bool "Socionext Synquacer: Workaround for GICv3 pre-ITS"
>  	default y
>  	help
> -	  This option adds a workaround for Fujitsu-A64FX erratum E#010001.
> -	  On some variants of the Fujitsu-A64FX cores ver(1.0, 1.1), memory
> -	  accesses may cause undefined fault (Data abort, DFSC=0b111111).
> -	  This fault occurs under a specific hardware condition when a
> -	  load/store instruction performs an address translation using:
> -	  case-1  TTBR0_EL1 with TCR_EL1.NFD0 == 1.
> -	  case-2  TTBR0_EL2 with TCR_EL2.NFD0 == 1.
> -	  case-3  TTBR1_EL1 with TCR_EL1.NFD1 == 1.
> -	  case-4  TTBR1_EL2 with TCR_EL2.NFD1 == 1.
> -
> -	  The workaround is to ensure these bits are clear in TCR_ELx.
> -	  The workaround only affects the Fujitsu-A64FX.
> +	  Socionext Synquacer SoCs implement a separate h/w block to generate
> +	  MSI doorbell writes with non-zero values for the device ID.
>  
>  	  If unsure, say Y.
>  
> -- 
> 2.17.1
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
