Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8633011A196
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 03:44:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bzWmJtSLT/NnnoRVMyECeFH7LhR+ah30Tgzo3DMMK8Y=; b=QcCB3xcidErla+
	6rx9W9Z63LUjGyEapfrgd4KNAE07gxw6QVmPPhC4JsjmC8U+b0mfhV7ITpy/TF1qbr8a9O1pk9XOo
	TSEw/r6worQBuh5TTE6oX5tdSZOe7hLJz3LOnlXtZ5J9DP0aB7E6EK3dTnjsu+HVzJ/c4otfXYdcZ
	TK1p5dj4khVIrfx0OrHwZAgMa0aKeKHGBSQFeRu5GvCOYROJyj8ZplCoPQIO4tx3wLIq640aALoBg
	Oo3tWpUcWgMFN29e/PRwRRz9R3t3P5srSRrCLMwYM6ZEdX/QvLj+Fh+DRKbW+g4tQAzbU/4iwTUEe
	FaGnWL4SN9RqBhVCconA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ierzQ-0001M2-7d; Wed, 11 Dec 2019 02:44:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ierzF-0001LX-HC
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 02:44:26 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ECCE3205ED;
 Wed, 11 Dec 2019 02:44:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576032265;
 bh=8qaUnn5f1bStSxxUCek0D44SmTQ2zG8abc6aCt9cWFk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=M9QafYOPVucohpc7g/4HFb+IQqTOr81zM6xoIsZZswbzpERCi7ycKiWoD1z50dig/
 kIFZOOodyicPyV2SBACli5JO0irzQdO6ew5wxYEZtowAeEcz1CDH0ohQDmdFHTNISs
 RaqQbCyhxcAcKtA7ZNEe0+9EnmGU0+BJYdfruHEA=
Date: Wed, 11 Dec 2019 10:44:14 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH] ARM: imx: Enable ARM_ERRATA_814220 for i.MX6UL and i.MX7D
Message-ID: <20191211024413.GF15858@dragon>
References: <1575358720-27624-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1575358720-27624-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_184425_592688_C671F4F1 
X-CRM114-Status: GOOD (  12.58  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: aisheng.dong@nxp.com, arnd@arndb.de, s.hauer@pengutronix.de,
 linux@armlinux.org.uk, linux-kernel@vger.kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, tglx@linutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 03, 2019 at 03:38:40PM +0800, Anson Huang wrote:
> i.MX6UL and i.MX7D have Cortex-A7 inside, need to enable ARM_ERRATA_814220
> for proper workaround.

Can we briefly describe the ARM_ERRATA_814220 in the commit log?

Shawn

> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  arch/arm/mach-imx/Kconfig | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index 593bf15..4326c8f 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -520,6 +520,7 @@ config SOC_IMX6UL
>  	bool "i.MX6 UltraLite support"
>  	select PINCTRL_IMX6UL
>  	select SOC_IMX6
> +	select ARM_ERRATA_814220
>  
>  	help
>  	  This enables support for Freescale i.MX6 UltraLite processor.
> @@ -556,6 +557,7 @@ config SOC_IMX7D
>  	select PINCTRL_IMX7D
>  	select SOC_IMX7D_CA7 if ARCH_MULTI_V7
>  	select SOC_IMX7D_CM4 if ARM_SINGLE_ARMV7M
> +	select ARM_ERRATA_814220
>  	help
>  		This enables support for Freescale i.MX7 Dual processor.
>  
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
