Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65C78159DA1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 00:46:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jW3IQOfo2CK1qM49WiwPKhWUNH6OH8tv4DG/6lmoReE=; b=OHuSiLmwkFMqPP
	sO/STlqrbHTCE1Khel6h6GoQ5S7WVaECM//NZn/WFsxym06VedSeZB0MTNBbVGmbnlXJ8VuLsE9WB
	zW6Z7T7LVmiUYOolYTxNCYAKSzEZV2XTAihTp9FqUu0yjVoNs25iQsR1gecWKWzB1NatWLWrt55FS
	PkNDr2LQVVnhTcMg8CB+n7yNID/zACtXGYUGJQeD2gvwW17U30TUbP14rgrQ/B7XsV86BF4lW0pOs
	PI61iyMqrIsBOl4DS0bJ5xrz+lgXrybWB+Sf966pmW5KGCk6uCovEan3JiEgD9zspOzMWsYoY2+0f
	TiHEmixQriqDRftWs5Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1fEB-0005S8-Go; Tue, 11 Feb 2020 23:46:03 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1fE3-0005RF-RG
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 23:45:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/63RZIRpBax9M6SO18Oi0fU9+y2EZyC+pNdMvta4lwc=; b=ocHiQR2CMJL+s3EwRYXwd8Zqi
 aeXyyQ9iTiAJjArEuJ8zmPc7aqkYIrxzXp5wPHqGaIdtkusS1Hu6Wm/8W8fheBcAoGZpkpvF1aE75
 QLf2TpYVrQt5dsbCK8DJzzaV4BIkW7f3mclBxeIkDNfGirCPsRyuKenLsghVXIOtj0vJ7BtcmR5P0
 mQg1bbEtmLiYb8sBViWkSj+DrluPEA0Dk7OQkrkJJbjF1ntiEkBNEytB8A4PmJRr6fauaF1NgWGCy
 FbfIt4Cp32XvfOIsmVivqzc++P6S5sAMFfvhqILBW+Uvv23Kn4wxiKbAQCfQDrLSympDvyywPE8y3
 JJDGTRmwA==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:46604)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1j1fDp-0007jp-Ak; Tue, 11 Feb 2020 23:45:41 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1j1fDk-0000pP-8Y; Tue, 11 Feb 2020 23:45:36 +0000
Date: Tue, 11 Feb 2020 23:45:36 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Li Yang <leoyang.li@nxp.com>
Subject: Re: [PATCH] iommu/arm-smmu: fix the module name for disable_bypass
 parameter
Message-ID: <20200211234536.GK25745@shell.armlinux.org.uk>
References: <1581464215-24777-1-git-send-email-leoyang.li@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1581464215-24777-1-git-send-email-leoyang.li@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_154555_886222_7B340410 
X-CRM114-Status: GOOD (  19.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Joerg Roedel <joro@8bytes.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 11, 2020 at 05:36:55PM -0600, Li Yang wrote:
> Since commit cd221bd24ff5 ("iommu/arm-smmu: Allow building as a module"),
> there is a side effect that the module name is changed from arm-smmu to
> arm-smmu-mod.  So the kernel parameter for disable_bypass need to be
> changed too.  Fix the Kconfig help and error message to the correct
> parameter name.

Hmm, this seems to be a user-visible change - so those of us who have
been booting with "arm-smmu.disable_bypass=0" now need to change that
depending on which kernel is being booted - which is not nice, and
makes the support side on platforms that need this kernel parameter
harder.

> 
> Signed-off-by: Li Yang <leoyang.li@nxp.com>
> ---
>  drivers/iommu/Kconfig    | 2 +-
>  drivers/iommu/arm-smmu.c | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/iommu/Kconfig b/drivers/iommu/Kconfig
> index d2fade984999..fb54be903c60 100644
> --- a/drivers/iommu/Kconfig
> +++ b/drivers/iommu/Kconfig
> @@ -415,7 +415,7 @@ config ARM_SMMU_DISABLE_BYPASS_BY_DEFAULT
>  	  hardcode the bypass disable in the code.
>  
>  	  NOTE: the kernel command line parameter
> -	  'arm-smmu.disable_bypass' will continue to override this
> +	  'arm-smmu-mod.disable_bypass' will continue to override this
>  	  config.
>  
>  config ARM_SMMU_V3
> diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
> index 16c4b87af42b..2ffe8ff04393 100644
> --- a/drivers/iommu/arm-smmu.c
> +++ b/drivers/iommu/arm-smmu.c
> @@ -512,7 +512,7 @@ static irqreturn_t arm_smmu_global_fault(int irq, void *dev)
>  		if (IS_ENABLED(CONFIG_ARM_SMMU_DISABLE_BYPASS_BY_DEFAULT) &&
>  		    (gfsr & ARM_SMMU_sGFSR_USF))
>  			dev_err(smmu->dev,
> -				"Blocked unknown Stream ID 0x%hx; boot with \"arm-smmu.disable_bypass=0\" to allow, but this may have security implications\n",
> +				"Blocked unknown Stream ID 0x%hx; boot with \"arm-smmu-mod.disable_bypass=0\" to allow, but this may have security implications\n",
>  				(u16)gfsynr1);
>  		else
>  			dev_err(smmu->dev,
> -- 
> 2.17.1
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
