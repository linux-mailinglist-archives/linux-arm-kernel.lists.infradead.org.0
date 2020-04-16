Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24C461AC1DE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 14:56:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+TUC9zaEsl0ojhxYWCLcp77bSQ66hWjBvCQTsvpV5ko=; b=rCp1+43rFz635b
	pwVAya0YvDaCIwtjTVPSom9YZ0xOKWlrs0Ckc5ZiOuczWiEQOsT4I/iKBmSVfDielevZ7C74tSK90
	qOey06a1iJ6OKf/YEO7Tga0XOHipK2ADl0nh1rugD1FxhcgDBaiYmXF8+Elcn2u+FhiK8vEIYezwb
	OEZHDDM16Mi9l7CCoNDsgU2nClFDnCDIhNb1Tc27+Yp1LqS6shTEiP7nUzsato609meRkyl5mW0J0
	NOfX9BRLYgRLKuiCdRmuiohYp+2zhxyRPpKAAM5WsuacXArJ0EE7RxYGW9EocBvIXrZg25DrJpAVo
	aIs75wnpy8VxREnBl9Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP44Q-0002la-In; Thu, 16 Apr 2020 12:56:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP44J-0002lH-Qr
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 12:56:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EEF5C1FB;
 Thu, 16 Apr 2020 05:56:34 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 688BA3F68F;
 Thu, 16 Apr 2020 05:56:33 -0700 (PDT)
Date: Thu, 16 Apr 2020 13:56:31 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH 2/2] [RFC] arm64: Add dependencies to vendor-specific
 errata
Message-ID: <20200416125630.GF4987@lakrids.cambridge.arm.com>
References: <20200416115658.20406-1-geert+renesas@glider.be>
 <20200416115658.20406-3-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200416115658.20406-3-geert+renesas@glider.be>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_055635_956838_A5E070EA 
X-CRM114-Status: GOOD (  22.40  )
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

Hi Geert,

On Thu, Apr 16, 2020 at 01:56:58PM +0200, Geert Uytterhoeven wrote:
> Currently the user is asked about enabling support for each and every
> vendor-specific erratum, even when support for the specific platform is
> not enabled.
> 
> Fix this by adding platform dependencies to the config options
> controlling support for vendor-specific errata.
> 
> Note that FUJITSU_ERRATUM_010001 is left untouched, as no config symbol
> exists for the Fujitsu A64FX platform.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

I'm not su1re that it makes sense to do this in general, becaose the
ARCH_* platform symbols are about plactform/SoC support (e.g. pinctrl
drivers), and these are (mostly) CPU-local and/or VM-visible.

I think that it makes sense for those to be independent because:

* future SoCs in the same family might not need the same CPU errata
  workarounds, and it's arguably just as confusing to have the option
  there.

* It prevents building a minimal VM image with all (non-virtualized)
  platform support disabled, but all possible (VM-visible) errata
  options enabled. I do that occassionally for testing/analysis, and I
  can imagine this is useful for those building images that are only
  intended to be used in VMs.

I think the change to SOCIONEXT_SYNQUACER_PREITS makes sense given
that's a platform-level detail. Arguably that should be moved into
drivers/irqchip/Kconfig.

Thanks,
Mark.

> ---
>  arch/arm64/Kconfig | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 8d33d7fed6d8549b..81f52f0b988e6350 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -622,6 +622,8 @@ config ARM64_ERRATUM_1542419
>  
>  	  If unsure, say Y.
>  
> +if ARCH_THUNDER2
> +
>  config CAVIUM_ERRATUM_22375
>  	bool "Cavium erratum 22375, 24313"
>  	default y
> @@ -697,6 +699,8 @@ config CAVIUM_TX2_ERRATUM_219
>  
>  	  If unsure, say Y.
>  
> +endif # ARCH_THUNDER2
> +
>  config FUJITSU_ERRATUM_010001
>  	bool "Fujitsu-A64FX erratum E#010001: Undefined fault may occur wrongly"
>  	default y
> @@ -718,6 +722,7 @@ config FUJITSU_ERRATUM_010001
>  
>  config HISILICON_ERRATUM_161600802
>  	bool "Hip07 161600802: Erroneous redistributor VLPI base"
> +	depends on ARCH_HISI
>  	default y
>  	help
>  	  The HiSilicon Hip07 SoC uses the wrong redistributor base
> @@ -726,6 +731,8 @@ config HISILICON_ERRATUM_161600802
>  
>  	  If unsure, say Y.
>  
> +if ARCH_QCOM
> +
>  config QCOM_FALKOR_ERRATUM_1003
>  	bool "Falkor E1003: Incorrect translation due to ASID change"
>  	default y
> @@ -768,8 +775,11 @@ config QCOM_FALKOR_ERRATUM_E1041
>  
>  	  If unsure, say Y.
>  
> +endif # ARCH_QCOM
> +
>  config SOCIONEXT_SYNQUACER_PREITS
>  	bool "Socionext Synquacer: Workaround for GICv3 pre-ITS"
> +	depends on ARCH_SYNQUACER
>  	default y
>  	help
>  	  Socionext Synquacer SoCs implement a separate h/w block to generate
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
