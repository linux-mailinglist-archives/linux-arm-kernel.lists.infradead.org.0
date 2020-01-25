Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B36FD14949A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Jan 2020 11:45:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H+Rdok1PG1VpIvYbOikFchvTnj/II970ObHN+b4BdA8=; b=HHajVMcNpgyJ7D
	jD55Rjb5a0m1wMqtm7RHa6OCv+6wfxxys3HevUtpEmvAsNufH/n+gQcUZyVKOU3F0bksMDUtbKrhP
	hbErRSQFiH2ndpvIGoQyHSmYSLVjgvqslERQtSFPhzELtG+7UXWxK4tHOdCWa2jPNZWAgKkpE432x
	3WjM4xVqzd5Z4vc154CvLcFv4fmybATl2vmA9Ulp2lEU2/OizQuzw1bKNoJXxw0QUntCYLNwykI98
	p3p80DbrC6b5tj8429FU8fCSFllaxw/TRdXna4dwO+lO+ZarR7w7K0S9Hiu8hH1836IZ1x8PWAWQo
	FMlSHElqQL+3lgL3F8Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivIvt-0007zs-VQ; Sat, 25 Jan 2020 10:44:53 +0000
Received: from onstation.org ([52.200.56.107])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivIvi-0007z5-Or
 for linux-arm-kernel@lists.infradead.org; Sat, 25 Jan 2020 10:44:44 +0000
Received: from localhost (c-98-239-145-235.hsd1.wv.comcast.net
 [98.239.145.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: masneyb)
 by onstation.org (Postfix) with ESMTPSA id 02C023E89A;
 Sat, 25 Jan 2020 10:44:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=onstation.org;
 s=default; t=1579949079;
 bh=Lz0pxK/LetnayMAtW2akT3tAhYG5/kRtAyz7pWruqMw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MDBES6JfqmFchwVZ3bnEO+Eg4s5HT2u51Utes9/mH+ZNEOnVOm8FguULJwLYsUGbq
 2xfLF798fxp1uOkJP7ghLHQnrMDjrMxiVINfBKZWzO+WfAwcl0PrL28J34EK4Tf0OK
 SU4YdGPODj0bQN9hQt0Y7zKrMHX64Vpqumav/D7w=
Date: Sat, 25 Jan 2020 05:44:38 -0500
From: Brian Masney <masneyb@onstation.org>
To: Luca Weiss <luca@z3ntu.xyz>
Subject: Re: [PATCH 1/2] ARM: qcom_defconfig: Regenerate
Message-ID: <20200125104438.GA5646@onstation.org>
References: <20191104210943.101393-1-luca@z3ntu.xyz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191104210943.101393-1-luca@z3ntu.xyz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200125_024442_936962_8AB43206 
X-CRM114-Status: GOOD (  19.96  )
X-Spam-Score: -1.7 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [52.200.56.107 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Russell King <linux@armlinux.org.uk>, Krzysztof Kozlowski <krzk@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Jordan Crouse <jcrouse@codeaurora.org>, Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Luca,

On Mon, Nov 04, 2019 at 10:09:40PM +0100, Luca Weiss wrote:
> Several options were dropped a while ago and the options QCOM_ADSP_PIL
> and QCOM_Q6V5_PIL have been renamed.
> 
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
> ---

Thanks for the pointer to these two patches today. I confirmed that I'm
able to get the modem booted on the Nexus 5 with these two patches, plus
these two patches from Bjorn:
https://lore.kernel.org/lkml/20191109004033.1496871-1-bjorn.andersson@linaro.org/

I see this patch series wasn't applied. I suggest making a few minor
changes:

- I would make one patch that drops the options that are no longer
  present.
- Make one or two more patches for the QCOM_ADSP_PIL / QCOM_Q6V5_PIL
  renames.
- I know that running 'make savedefconfig' causes a big diff when the
  generated file is moved to qcom_defconfig. I've been using that as a
  guide of where to put the new config option and then dropping all of
  the other unrelated changes. Maybe if you do this as a separate patch
  it'll make the overall diff much smaller and easier to review. I'd put
  it at the very end of the series in case it's rejected.

Brian


>  arch/arm/configs/qcom_defconfig | 45 ++++++++++++---------------------
>  1 file changed, 16 insertions(+), 29 deletions(-)
> 
> diff --git a/arch/arm/configs/qcom_defconfig b/arch/arm/configs/qcom_defconfig
> index 9792dd0aae0c..94d5e1a8c61a 100644
> --- a/arch/arm/configs/qcom_defconfig
> +++ b/arch/arm/configs/qcom_defconfig
> @@ -1,6 +1,7 @@
>  CONFIG_SYSVIPC=y
>  CONFIG_NO_HZ=y
>  CONFIG_HIGH_RES_TIMERS=y
> +CONFIG_PREEMPT=y
>  CONFIG_IKCONFIG=y
>  CONFIG_IKCONFIG_PROC=y
>  CONFIG_CGROUPS=y
> @@ -11,32 +12,28 @@ CONFIG_EMBEDDED=y
>  # CONFIG_SLUB_DEBUG is not set
>  # CONFIG_COMPAT_BRK is not set
>  CONFIG_PROFILING=y
> -CONFIG_OPROFILE=y
> -CONFIG_KPROBES=y
> -CONFIG_MODULES=y
> -CONFIG_MODULE_UNLOAD=y
> -CONFIG_MODULE_FORCE_UNLOAD=y
> -CONFIG_MODVERSIONS=y
> -CONFIG_PARTITION_ADVANCED=y
>  CONFIG_ARCH_QCOM=y
>  CONFIG_ARCH_MSM8X60=y
>  CONFIG_ARCH_MSM8960=y
>  CONFIG_ARCH_MSM8974=y
>  CONFIG_ARCH_MDM9615=y
> -CONFIG_PCI=y
> -CONFIG_PCI_MSI=y
> -CONFIG_PCIE_QCOM=y
>  CONFIG_SMP=y
> -CONFIG_PREEMPT=y
>  CONFIG_HIGHMEM=y
> -CONFIG_CLEANCACHE=y
>  CONFIG_ARM_APPENDED_DTB=y
>  CONFIG_ARM_ATAG_DTB_COMPAT=y
>  CONFIG_CPU_IDLE=y
>  CONFIG_ARM_CPUIDLE=y
>  CONFIG_VFP=y
>  CONFIG_NEON=y
> +CONFIG_OPROFILE=y
> +CONFIG_KPROBES=y
> +CONFIG_MODULES=y
> +CONFIG_MODULE_UNLOAD=y
> +CONFIG_MODULE_FORCE_UNLOAD=y
> +CONFIG_MODVERSIONS=y
> +CONFIG_PARTITION_ADVANCED=y
>  # CONFIG_CORE_DUMP_DEFAULT_ELF_HEADERS is not set
> +CONFIG_CLEANCACHE=y
>  CONFIG_CMA=y
>  CONFIG_NET=y
>  CONFIG_PACKET=y
> @@ -47,18 +44,17 @@ CONFIG_IP_MULTIPLE_TABLES=y
>  CONFIG_IP_ROUTE_VERBOSE=y
>  CONFIG_IP_PNP=y
>  CONFIG_IP_PNP_DHCP=y
> -# CONFIG_INET_XFRM_MODE_TRANSPORT is not set
> -# CONFIG_INET_XFRM_MODE_TUNNEL is not set
> -# CONFIG_INET_XFRM_MODE_BEET is not set
>  # CONFIG_IPV6 is not set
>  CONFIG_CFG80211=m
>  CONFIG_MAC80211=m
>  CONFIG_RFKILL=y
> +CONFIG_PCI=y
> +CONFIG_PCI_MSI=y
> +CONFIG_PCIE_QCOM=y
>  CONFIG_DEVTMPFS=y
>  CONFIG_DEVTMPFS_MOUNT=y
>  CONFIG_MTD=y
>  CONFIG_MTD_BLOCK=y
> -CONFIG_MTD_M25P80=y
>  CONFIG_MTD_RAW_NAND=y
>  CONFIG_MTD_NAND_QCOM=y
>  CONFIG_MTD_SPI_NOR=y
> @@ -113,7 +109,6 @@ CONFIG_SERIO_LIBPS2=y
>  CONFIG_SERIAL_MSM=y
>  CONFIG_SERIAL_MSM_CONSOLE=y
>  CONFIG_HW_RANDOM=y
> -CONFIG_I2C=y
>  CONFIG_I2C_CHARDEV=y
>  CONFIG_I2C_QUP=y
>  CONFIG_SPI=y
> @@ -140,7 +135,6 @@ CONFIG_QCOM_TSENS=y
>  CONFIG_MFD_PM8XXX=y
>  CONFIG_MFD_QCOM_RPM=y
>  CONFIG_MFD_SPMI_PMIC=y
> -CONFIG_REGULATOR=y
>  CONFIG_REGULATOR_FIXED_VOLTAGE=y
>  CONFIG_REGULATOR_QCOM_RPM=y
>  CONFIG_REGULATOR_QCOM_SMD_RPM=y
> @@ -149,13 +143,11 @@ CONFIG_MEDIA_SUPPORT=y
>  CONFIG_DRM=y
>  CONFIG_DRM_MSM=m
>  CONFIG_DRM_PANEL_SIMPLE=y
> -CONFIG_FB=y
> -CONFIG_FRAMEBUFFER_CONSOLE=y
> -# CONFIG_LCD_CLASS_DEVICE is not set
>  CONFIG_BACKLIGHT_CLASS_DEVICE=y
>  # CONFIG_BACKLIGHT_GENERIC is not set
>  CONFIG_BACKLIGHT_LM3630A=y
>  CONFIG_BACKLIGHT_LP855X=y
> +CONFIG_FRAMEBUFFER_CONSOLE=y
>  CONFIG_SOUND=y
>  CONFIG_SND=y
>  CONFIG_SND_DYNAMIC_MINORS=y
> @@ -169,15 +161,12 @@ CONFIG_USB_ANNOUNCE_NEW_DEVICES=y
>  CONFIG_USB_OTG=y
>  CONFIG_USB_MON=y
>  CONFIG_USB_EHCI_HCD=y
> -CONFIG_USB_EHCI_MSM=y
>  CONFIG_USB_ACM=y
>  CONFIG_USB_CHIPIDEA=y
>  CONFIG_USB_CHIPIDEA_UDC=y
>  CONFIG_USB_CHIPIDEA_HOST=y
> -CONFIG_USB_CHIPIDEA_ULPI=y
>  CONFIG_USB_SERIAL=y
>  CONFIG_USB_HSIC_USB4604=y
> -CONFIG_USB_MSM_OTG=y
>  CONFIG_USB_GADGET=y
>  CONFIG_USB_GADGET_DEBUG_FILES=y
>  CONFIG_USB_GADGET_VBUS_DRAW=500
> @@ -185,7 +174,6 @@ CONFIG_USB_CONFIGFS=y
>  CONFIG_USB_CONFIGFS_NCM=y
>  CONFIG_USB_CONFIGFS_ECM=y
>  CONFIG_USB_CONFIGFS_F_FS=y
> -CONFIG_USB_ULPI_BUS=y
>  CONFIG_USB_ETH=m
>  CONFIG_MMC=y
>  CONFIG_MMC_BLOCK_MINORS=32
> @@ -215,13 +203,13 @@ CONFIG_MSM_LCC_8960=y
>  CONFIG_MDM_LCC_9615=y
>  CONFIG_MSM_MMCC_8960=y
>  CONFIG_MSM_MMCC_8974=y
> -CONFIG_MSM_IOMMU=y
>  CONFIG_HWSPINLOCK=y
>  CONFIG_HWSPINLOCK_QCOM=y
>  CONFIG_MAILBOX=y
> +CONFIG_MSM_IOMMU=y
>  CONFIG_REMOTEPROC=y
> -CONFIG_QCOM_ADSP_PIL=y
> -CONFIG_QCOM_Q6V5_PIL=y
> +CONFIG_QCOM_Q6V5_MSS=y
> +CONFIG_QCOM_Q6V5_PAS=y
>  CONFIG_QCOM_WCNSS_PIL=y
>  CONFIG_RPMSG_CHAR=y
>  CONFIG_RPMSG_QCOM_SMD=y
> @@ -257,7 +245,6 @@ CONFIG_EXT2_FS_XATTR=y
>  CONFIG_EXT3_FS=y
>  CONFIG_FUSE_FS=y
>  CONFIG_VFAT_FS=y
> -CONFIG_TMPFS=y
>  CONFIG_JFFS2_FS=y
>  CONFIG_NFS_FS=y
>  CONFIG_NFS_V3_ACL=y
> -- 
> 2.23.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
