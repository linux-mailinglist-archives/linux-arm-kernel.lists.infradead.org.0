Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E513B181078
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 07:13:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x2Z+nGNdnO0ealUqz/ZPh9cEiiji5PiJg8LWEOeT+Iw=; b=hJLfjbY5kw6OqK
	l/+gu/yY8ZM83k+RmWu0BE7WciU4NWLide4UY4Ywd9d/2l6LNIIpCg6FEt/IZfSrgs8w7GBvgXhJn
	CpKC7SA6Y0w/mWG46ferZM/rR5Ioo+G4imonJ6hGSZx0aCfkd240CpewO/XRQGwC5atAAyKoAhk9M
	Z31QTUdMWqjoj4syF3AnKXfsAnmB8rKtmprNv23CvkKAr7/X9pUGvm1yKSzN5I3CJX5RmLsvKRyU9
	/5RVGQj96OWY+7/0wXxBUsrrD+6RK9VUca8h2TYrFPKLRCHKq6LRsg4ErugtWgdaYjybpdoLpd1sU
	QHKvoVun0+qzYWPCA6IA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBucW-0006LL-EK; Wed, 11 Mar 2020 06:13:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBucP-0006L1-G4
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 06:13:26 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1F2CD20873;
 Wed, 11 Mar 2020 06:13:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583907205;
 bh=jAVjS4LHx4J2YBJ/NlhABffxBXS41+Ke8Fes7SpT2QQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hyM6r/7mblSrckwDB11uuLIzXTpxYRt669ca+pxZjWGnM3NBeFpQap1/F1QlN6iBi
 uqPVRFwDvW7FU41/H/j7i+kM762DmQkZf8Br36WgAEAus24WHdVPwil+Ik6Syvhupw
 dDrWQUm5n7jKVL1jjOVdhan5EyJYNSMy1tZkP10k=
Date: Wed, 11 Mar 2020 14:13:21 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Li Yang <leoyang.li@nxp.com>
Subject: Re: [PATCH 09/15] arm64: defconfig: Enable QorIQ IFC NAND controller
 driver
Message-ID: <20200311061320.GC29269@dragon>
References: <1582585690-463-1-git-send-email-leoyang.li@nxp.com>
 <1582585690-463-10-git-send-email-leoyang.li@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582585690-463-10-git-send-email-leoyang.li@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_231325_556775_4333A799 
X-CRM114-Status: GOOD (  13.65  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 24, 2020 at 05:08:04PM -0600, Li Yang wrote:
> Enables NXP/FSL QorIQ IFC flash controller driver for NAND.  Enabled as
> built-in to load RFS from nand flash without initramfs.
> 
> Signed-off-by: Li Yang <leoyang.li@nxp.com>
> ---
>  arch/arm64/configs/defconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index d2d5d470a6fc..a625e322fa27 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -217,6 +217,7 @@ CONFIG_MTD_BLOCK=y
>  CONFIG_MTD_RAW_NAND=y
>  CONFIG_MTD_NAND_DENALI_DT=y
>  CONFIG_MTD_NAND_MARVELL=y
> +CONFIG_MTD_NAND_FSL_IFC=y
>  CONFIG_MTD_NAND_QCOM=y
>  CONFIG_MTD_SPI_NOR=y
>  CONFIG_SPI_CADENCE_QUADSPI=y
> @@ -801,7 +802,6 @@ CONFIG_ARCH_K3_J721E_SOC=y
>  CONFIG_TI_SCI_PM_DOMAINS=y
>  CONFIG_EXTCON_USB_GPIO=y
>  CONFIG_EXTCON_USBC_CROS_EC=y
> -CONFIG_MEMORY=y

Why is this getting removed?  Maybe worth a mentioning in the commit
log?

Shawn

>  CONFIG_IIO=y
>  CONFIG_EXYNOS_ADC=y
>  CONFIG_QCOM_SPMI_ADC5=m
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
