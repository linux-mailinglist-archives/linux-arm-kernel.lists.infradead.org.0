Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF9411C2442
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 May 2020 11:06:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AK4AcWiiozd4dOKGbErOa2iptxk1JVuQQvAUf6g4rkE=; b=LWkvsYDdW6augL
	kZzczUecm/koYbrlj9Xvz+BttRhaDyqBuSMfGppol27qpHG/DOm/KQk6DnaCW4yL2GGP314tcwvyp
	ZGtKkd7wePptocwOAi/SQdBuhcR8kdAQm0vJtE2TEBldSQbSp8O6gFIgMk60bjpXOSSSA/X4grScp
	9CXJZDDHX8RkwtUboE01PnFcI8XIK8pwJ43n2hsynZqlY/RmWkuUXcuB78E/sKeq+wQGsmIOatFBz
	QhljYpLcCfcqOf5irOChqv/3SHCfBnwSP4DFEg8K/bOL5O6IqENHTilmVGvVz+0A4/2eUqyrg3cvX
	JlCa2k4MLMWSUdsrE1Bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUo6U-00054f-Af; Sat, 02 May 2020 09:06:34 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUo6K-000202-VA
 for linux-arm-kernel@lists.infradead.org; Sat, 02 May 2020 09:06:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+xxsMuayT6OUTVNwJbUrq8ypk6Bmy0pMtrNWYkktz70=; b=Tb4++faHvult4X2/06OQObBz5
 5u8GjzZV4gsbVJvjBhn7bCA/2n9x30csVeoIheOU8iFowttFolAjL8Hj08RllYgSGFtK7mTHzKyS/
 LG9gArFaXHmZyJUbKgi1zZ9gjPulIvC6egtTLVA6wBdyBk5m1wyedgndoO1MmHdbYmMhHjpbPFU+P
 5Fd5MnFmrq+yw3VZE/2RQOs+dLC6kemV06cfRmMGOqPUX6nti0KKRhDjh607UV4PILsZc46OS5aGn
 4EkWe3W6e3/4LmojTWgwUSg8XwZloXS13bvqWuEQ0SnpcWDfibOohsw0qmTUSz9Y3CjYgKdUbsL2b
 8Z2u9yTHw==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:52710)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jUo4C-0000id-CG; Sat, 02 May 2020 10:04:12 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jUo40-0003zd-Vi; Sat, 02 May 2020 10:04:01 +0100
Date: Sat, 2 May 2020 10:04:00 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Bin Meng <bmeng.cn@gmail.com>
Subject: Re: [PATCH] arm: Drop CONFIG_MTD_M25P80 in various defconfig files
Message-ID: <20200502090400.GT1551@shell.armlinux.org.uk>
References: <1588393408-31225-1-git-send-email-bmeng.cn@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1588393408-31225-1-git-send-email-bmeng.cn@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200502_020625_295652_C6061BEA 
X-CRM114-Status: GOOD (  12.49  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Bin Meng <bin.meng@windriver.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 01, 2020 at 09:23:28PM -0700, Bin Meng wrote:
> From: Bin Meng <bin.meng@windriver.com>
> 
> Drop CONFIG_MTD_M25P80 that was removed in
> commit b35b9a10362d ("mtd: spi-nor: Move m25p80 code in spi-nor.c")

Have you checked whether these defconfigs contain the new symbol?
It seems at least one does not.

$ grep -rl CONFIG_MTD_M25P80 arch/arm/configs | \
  xargs grep -L CONFIG_MTD_SPI_NOR
arch/arm/configs/axm55xx_defconfig

Plesae fix.

> 
> Signed-off-by: Bin Meng <bin.meng@windriver.com>
> ---
> 
>  arch/arm/configs/axm55xx_defconfig     | 1 -
>  arch/arm/configs/davinci_all_defconfig | 1 -
>  arch/arm/configs/dove_defconfig        | 1 -
>  arch/arm/configs/imx_v6_v7_defconfig   | 1 -
>  arch/arm/configs/keystone_defconfig    | 1 -
>  arch/arm/configs/mvebu_v5_defconfig    | 1 -
>  arch/arm/configs/mvebu_v7_defconfig    | 1 -
>  arch/arm/configs/mxs_defconfig         | 1 -
>  arch/arm/configs/pxa_defconfig         | 1 -
>  arch/arm/configs/qcom_defconfig        | 1 -
>  arch/arm/configs/sama5_defconfig       | 1 -
>  arch/arm/configs/socfpga_defconfig     | 1 -
>  arch/arm/configs/tegra_defconfig       | 1 -
>  13 files changed, 13 deletions(-)
> 
> diff --git a/arch/arm/configs/axm55xx_defconfig b/arch/arm/configs/axm55xx_defconfig
> index 4607521..c731d4a 100644
> --- a/arch/arm/configs/axm55xx_defconfig
> +++ b/arch/arm/configs/axm55xx_defconfig
> @@ -88,7 +88,6 @@ CONFIG_MTD_CFI_AMDSTD=y
>  CONFIG_MTD_CFI_STAA=y
>  CONFIG_MTD_PHYSMAP=y
>  CONFIG_MTD_PHYSMAP_OF=y
> -CONFIG_MTD_M25P80=y
>  CONFIG_PROC_DEVICETREE=y
>  CONFIG_BLK_DEV_LOOP=y
>  CONFIG_BLK_DEV_RAM=y
> diff --git a/arch/arm/configs/davinci_all_defconfig b/arch/arm/configs/davinci_all_defconfig
> index e849367..4d8f6f6 100644
> --- a/arch/arm/configs/davinci_all_defconfig
> +++ b/arch/arm/configs/davinci_all_defconfig
> @@ -75,7 +75,6 @@ CONFIG_MTD_CFI=m
>  CONFIG_MTD_CFI_INTELEXT=m
>  CONFIG_MTD_CFI_AMDSTD=m
>  CONFIG_MTD_PHYSMAP=m
> -CONFIG_MTD_M25P80=m
>  CONFIG_MTD_RAW_NAND=m
>  CONFIG_MTD_NAND_DAVINCI=m
>  CONFIG_MTD_SPI_NOR=m
> diff --git a/arch/arm/configs/dove_defconfig b/arch/arm/configs/dove_defconfig
> index e70c997..546afaf 100644
> --- a/arch/arm/configs/dove_defconfig
> +++ b/arch/arm/configs/dove_defconfig
> @@ -44,7 +44,6 @@ CONFIG_MTD_CFI_GEOMETRY=y
>  CONFIG_MTD_CFI_INTELEXT=y
>  CONFIG_MTD_CFI_STAA=y
>  CONFIG_MTD_PHYSMAP=y
> -CONFIG_MTD_M25P80=y
>  CONFIG_MTD_SPI_NOR=y
>  CONFIG_BLK_DEV_LOOP=y
>  CONFIG_BLK_DEV_RAM=y
> diff --git a/arch/arm/configs/imx_v6_v7_defconfig b/arch/arm/configs/imx_v6_v7_defconfig
> index 5a20d12..308de35 100644
> --- a/arch/arm/configs/imx_v6_v7_defconfig
> +++ b/arch/arm/configs/imx_v6_v7_defconfig
> @@ -110,7 +110,6 @@ CONFIG_MTD_CFI_AMDSTD=y
>  CONFIG_MTD_CFI_STAA=y
>  CONFIG_MTD_PHYSMAP_OF=y
>  CONFIG_MTD_DATAFLASH=y
> -CONFIG_MTD_M25P80=y
>  CONFIG_MTD_SST25L=y
>  CONFIG_MTD_RAW_NAND=y
>  CONFIG_MTD_NAND_GPMI_NAND=y
> diff --git a/arch/arm/configs/keystone_defconfig b/arch/arm/configs/keystone_defconfig
> index 11e2211..eeaa140 100644
> --- a/arch/arm/configs/keystone_defconfig
> +++ b/arch/arm/configs/keystone_defconfig
> @@ -121,7 +121,6 @@ CONFIG_MTD=y
>  CONFIG_MTD_CMDLINE_PARTS=y
>  CONFIG_MTD_BLOCK=y
>  CONFIG_MTD_PLATRAM=y
> -CONFIG_MTD_M25P80=y
>  CONFIG_MTD_RAW_NAND=y
>  CONFIG_MTD_NAND_DAVINCI=y
>  CONFIG_MTD_SPI_NOR=y
> diff --git a/arch/arm/configs/mvebu_v5_defconfig b/arch/arm/configs/mvebu_v5_defconfig
> index 226f2e9..1859097 100644
> --- a/arch/arm/configs/mvebu_v5_defconfig
> +++ b/arch/arm/configs/mvebu_v5_defconfig
> @@ -75,7 +75,6 @@ CONFIG_MTD_CFI_GEOMETRY=y
>  CONFIG_MTD_CFI_INTELEXT=y
>  CONFIG_MTD_CFI_STAA=y
>  CONFIG_MTD_PHYSMAP=y
> -CONFIG_MTD_M25P80=y
>  CONFIG_MTD_RAW_NAND=y
>  CONFIG_MTD_NAND_ORION=y
>  CONFIG_MTD_SPI_NOR=y
> diff --git a/arch/arm/configs/mvebu_v7_defconfig b/arch/arm/configs/mvebu_v7_defconfig
> index cddce57..c8f4723 100644
> --- a/arch/arm/configs/mvebu_v7_defconfig
> +++ b/arch/arm/configs/mvebu_v7_defconfig
> @@ -50,7 +50,6 @@ CONFIG_MTD_CFI_INTELEXT=y
>  CONFIG_MTD_CFI_AMDSTD=y
>  CONFIG_MTD_CFI_STAA=y
>  CONFIG_MTD_PHYSMAP_OF=y
> -CONFIG_MTD_M25P80=y
>  CONFIG_MTD_RAW_NAND=y
>  CONFIG_MTD_NAND_MARVELL=y
>  CONFIG_MTD_SPI_NOR=y
> diff --git a/arch/arm/configs/mxs_defconfig b/arch/arm/configs/mxs_defconfig
> index a9c6f32..1322ebd 100644
> --- a/arch/arm/configs/mxs_defconfig
> +++ b/arch/arm/configs/mxs_defconfig
> @@ -46,7 +46,6 @@ CONFIG_MTD=y
>  CONFIG_MTD_CMDLINE_PARTS=y
>  CONFIG_MTD_BLOCK=y
>  CONFIG_MTD_DATAFLASH=y
> -CONFIG_MTD_M25P80=y
>  CONFIG_MTD_SST25L=y
>  CONFIG_MTD_RAW_NAND=y
>  CONFIG_MTD_NAND_GPMI_NAND=y
> diff --git a/arch/arm/configs/pxa_defconfig b/arch/arm/configs/pxa_defconfig
> index b817c57..50bbfdd 100644
> --- a/arch/arm/configs/pxa_defconfig
> +++ b/arch/arm/configs/pxa_defconfig
> @@ -181,7 +181,6 @@ CONFIG_MTD_RAM=m
>  CONFIG_MTD_ROM=m
>  CONFIG_MTD_COMPLEX_MAPPINGS=y
>  CONFIG_MTD_PXA2XX=m
> -CONFIG_MTD_M25P80=m
>  CONFIG_MTD_BLOCK2MTD=y
>  CONFIG_MTD_DOCG3=m
>  CONFIG_MTD_RAW_NAND=m
> diff --git a/arch/arm/configs/qcom_defconfig b/arch/arm/configs/qcom_defconfig
> index c882167..0a90c8d 100644
> --- a/arch/arm/configs/qcom_defconfig
> +++ b/arch/arm/configs/qcom_defconfig
> @@ -62,7 +62,6 @@ CONFIG_DEVTMPFS=y
>  CONFIG_DEVTMPFS_MOUNT=y
>  CONFIG_MTD=y
>  CONFIG_MTD_BLOCK=y
> -CONFIG_MTD_M25P80=y
>  CONFIG_MTD_RAW_NAND=y
>  CONFIG_MTD_NAND_QCOM=y
>  CONFIG_MTD_SPI_NOR=y
> diff --git a/arch/arm/configs/sama5_defconfig b/arch/arm/configs/sama5_defconfig
> index bab7861..7e9ec6f 100644
> --- a/arch/arm/configs/sama5_defconfig
> +++ b/arch/arm/configs/sama5_defconfig
> @@ -63,7 +63,6 @@ CONFIG_MTD=y
>  CONFIG_MTD_CMDLINE_PARTS=y
>  CONFIG_MTD_BLOCK=y
>  CONFIG_MTD_CFI=y
> -CONFIG_MTD_M25P80=y
>  CONFIG_MTD_RAW_NAND=y
>  CONFIG_MTD_NAND_ATMEL=y
>  CONFIG_MTD_SPI_NOR=y
> diff --git a/arch/arm/configs/socfpga_defconfig b/arch/arm/configs/socfpga_defconfig
> index e73c97b..04c8bd3 100644
> --- a/arch/arm/configs/socfpga_defconfig
> +++ b/arch/arm/configs/socfpga_defconfig
> @@ -48,7 +48,6 @@ CONFIG_DEVTMPFS=y
>  CONFIG_DEVTMPFS_MOUNT=y
>  CONFIG_MTD=y
>  CONFIG_MTD_BLOCK=y
> -CONFIG_MTD_M25P80=y
>  CONFIG_MTD_RAW_NAND=y
>  CONFIG_MTD_NAND_DENALI_DT=y
>  CONFIG_MTD_SPI_NOR=y
> diff --git a/arch/arm/configs/tegra_defconfig b/arch/arm/configs/tegra_defconfig
> index aa94369..6a7988a 100644
> --- a/arch/arm/configs/tegra_defconfig
> +++ b/arch/arm/configs/tegra_defconfig
> @@ -76,7 +76,6 @@ CONFIG_DEVTMPFS=y
>  CONFIG_DEVTMPFS_MOUNT=y
>  CONFIG_TEGRA_GMI=y
>  CONFIG_MTD=y
> -CONFIG_MTD_M25P80=y
>  CONFIG_MTD_SPI_NOR=y
>  CONFIG_BLK_DEV_LOOP=y
>  CONFIG_AD525X_DPOT=y
> -- 
> 2.7.4
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
