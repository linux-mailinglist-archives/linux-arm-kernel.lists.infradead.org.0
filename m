Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A13A1986C9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 23:47:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=xoW/GCh1ZTCqMQgx2G/MerOte0eQ6pacX4CuXKhLPjo=; b=ZrAk+IbihczAsv
	q5bsQFQDjnYWwlXmmV3egEdR66E5OW1zHO/DZoVaTRZfeFm68SPWHdfS4+9OEK7uO+OLeVBvNpahD
	OOJnAi1O2qWSmGXbDRR+afgFrhYFdVxA8QLJftbeVUl7OiDONB9ez3zmYvkaL4UrikREfAskNYGf5
	qVsw1XXMpc2xNewRwPZ050AtocVVnvQ5ZQ+VEJM3hCG3lSkQ0dJbupIf9hXL03udHz4DgfYOvF+b/
	dj2SNApe2w/ZlBGU9HWdGAQdg+pm13be7SRjhnFYfnGDfDV4UWMJGy7+Uhh9XoPOjVvNCzNfyVPuq
	OpDaXP2qa7E/A/E7z3/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ2Fr-0008EH-Br; Mon, 30 Mar 2020 21:47:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ2Fj-0008CN-Ii
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 21:47:29 +0000
Received: from localhost (mobile-166-175-186-165.mycingular.net
 [166.175.186.165])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3F53720733;
 Mon, 30 Mar 2020 21:47:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585604845;
 bh=6/8IMtsBYVs/ZL7NiDKLX3paM96z8lTPX2wEv7zaKfU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=t8W4J+XQjr3z6eAglVlitJGmOmiJZMSlDej7zIE58C/b82pmZeKp+W3rh1wAFg5vA
 LlMSCCG7EKzxQFuYai0lVPqaCSMbissPGkxXDtelwI0osColYKtQr0s3yMK5Yuc8XN
 OgW3SItZrsnVux2srolpCsfeCzPR876KzCDRS4qI=
Date: Mon, 30 Mar 2020 16:47:21 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V5 5/5] PCI: tegra: Add support for PCIe endpoint mode in
 Tegra194
Message-ID: <20200330214721.GA128269@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200303181052.16134-6-vidyas@nvidia.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_144727_662849_60868286 
X-CRM114-Status: GOOD (  18.21  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 FAKE_REPLY_C           No description available.
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mmaddireddy@nvidia.com, kthota@nvidia.com, gustavo.pimentel@synopsys.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, kishon@ti.com,
 thierry.reding@gmail.com, linux-pci@vger.kernel.org,
 linux-tegra@vger.kernel.org, andrew.murray@arm.com, jonathanh@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 03, 2020 at 11:40:52PM +0530, Vidya Sagar wrote:
> Add support for the endpoint mode of Synopsys DesignWare core based
> dual mode PCIe controllers present in Tegra194 SoC.
> 
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> Acked-by: Thierry Reding <treding@nvidia.com>
> ---
> V5:
> * Added Acked-by: Thierry Reding <treding@nvidia.com>
> * Removed unwanted header file inclusion
> 
> V4:
> * Addressed Lorenzo's review comments
> * Started using threaded irqs instead of kthreads
> 
> V3:
> * Addressed Thierry's review comments
> 
> V2:
> * Addressed Bjorn's review comments
> * Made changes as part of addressing review comments for other patches
> 
>  drivers/pci/controller/dwc/Kconfig         |  30 +-
>  drivers/pci/controller/dwc/pcie-tegra194.c | 679 ++++++++++++++++++++-
>  2 files changed, 691 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/Kconfig b/drivers/pci/controller/dwc/Kconfig
> index 0830dfcfa43a..169cde58dd92 100644
> --- a/drivers/pci/controller/dwc/Kconfig
> +++ b/drivers/pci/controller/dwc/Kconfig
> @@ -248,14 +248,38 @@ config PCI_MESON
>  	  implement the driver.
>  
>  config PCIE_TEGRA194
> -	tristate "NVIDIA Tegra194 (and later) PCIe controller"
> +	tristate
> +
> +config PCIE_TEGRA194_HOST
> +	tristate "NVIDIA Tegra194 (and later) PCIe controller - Host Mode"
>  	depends on ARCH_TEGRA_194_SOC || COMPILE_TEST
>  	depends on PCI_MSI_IRQ_DOMAIN
>  	select PCIE_DW_HOST
>  	select PHY_TEGRA194_P2U
> +	select PCIE_TEGRA194
> +	default y

Sorry I missed this before, but why is this "default y"?  From
Documentation/kbuild/kconfig-language.rst:

  The default value deliberately defaults to 'n' in order to avoid
  bloating the build. With few exceptions, new config options should
  not change this. The intent is for "make oldconfig" to add as little
  as possible to the config from release to release.

I do see that several other things in other drivers/pci/ Kconfig files
are also "default y", and we should probably change some of them.  But
I don't want to add even more unless there's a good reason.

I'm not looking for more reactions like these:

https://lore.kernel.org/r/CAHk-=wiZ24JuVehJ5sEC0UG1Gk2nvB363wO02RRsR1oEht6R9Q@mail.gmail.com
https://lore.kernel.org/r/CA+55aFzPpuHU1Nqd595SEQS=F+kXMzPs0Rba9FUgTodGxmXsgg@mail.gmail.com

Can you please update this patch to either remove the "default y" or
add the rationale for keeping it?

> +	help
> +	  Enables support for the PCIe controller in the NVIDIA Tegra194 SoC to
> +	  work in host mode. There are two instances of PCIe controllers in
> +	  Tegra194. This controller can work either as EP or RC. In order to
> +	  enable host-specific features PCIE_TEGRA194_HOST must be selected and
> +	  in order to enable device-specific features PCIE_TEGRA194_EP must be
> +	  selected. This uses the DesignWare core.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
