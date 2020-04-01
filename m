Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A316D19B0E0
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 18:31:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KX3467fbwxZQddLxeU/lX48xPVjoffCIOseh0YcBhJc=; b=OLUn56HR/IQkOb
	T+MlGF7k+90fl4+tlFSWDZVn+REdOOHYRzDiXto2jX/jrBw9RmobZJjKHVy9Mm3Fv4JfwrniuSHOy
	VsOXdADjFVKcD8L0sTrrbODrFIsRg/q3+TV+ctOxMHNAGobfdYPBTQ9BFQVa3bFTWM6pzKI4E8vom
	/Qq9amqecRdrXacjOLBeZlpCUdQnioAjbDbOxwVyzefSiGkVhmQAPxIcXfjnYzZ5oQXwT6qYnb81y
	iNVfL8ComxAfC2ZFmHhGYUvfM3Ruh33//GuyEBF1bE2PfOLGYhu8S8GvfP1JoASunYq0e2g9vs6fC
	lWFI2M1f6FcZZKR+O8FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJgGx-0005o5-Ef; Wed, 01 Apr 2020 16:31:23 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJgGq-0005mG-OL
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 16:31:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tp5LnUbTw56wHyeSPmfUWY8H/MgTJs6JAtDGyeNVTzc=; b=tT8N+coBdBtUClsXB6A4SoeJZ
 hwlRmpnvuLLQSa/T0TnqqrvLH/3DFotSNFVmlrTgyuPyJWsTzc7J7rvDQmCHQePT2kqi/TW2iEcj5
 6/SJxWwR805Zf7N0TdPtnwWqeneYvKYjC/uPyeirSmOZAqVlWlFlWi9DkJgHv6Rcogd7aqsXgpuPZ
 0h2ij+q4rAVPqas/VGjPuxuuHCVEEHSEojiIeCk6nGtoLjqdYIJNrmnt8jaBSUYmberLkrqYshzAh
 npGj/8O0mvkybocAtlGF1CZ1kS7uwJKcHUriIQJfG4BkHDN0tOTzuFY7+pLT+ELJH+KawSG9NihKD
 9Ds2ZDuAA==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:60886)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jJgGc-0006uC-Kf; Wed, 01 Apr 2020 17:31:02 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jJgGb-0000pz-Ge; Wed, 01 Apr 2020 17:31:01 +0100
Date: Wed, 1 Apr 2020 17:31:01 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Guillaume Tucker <guillaume.tucker@collabora.com>
Subject: Re: [PATCH] ARM: exynos: update l2c_aux_mask to fix alert message
Message-ID: <20200401163101.GV25745@shell.armlinux.org.uk>
References: <b29f34870380093e6268c11d3033033d6def61b7.1585756648.git.guillaume.tucker@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b29f34870380093e6268c11d3033033d6def61b7.1585756648.git.guillaume.tucker@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_093116_792255_8360E0AA 
X-CRM114-Status: GOOD (  19.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 01, 2020 at 05:08:03PM +0100, Guillaume Tucker wrote:
> Allow setting the number of cycles for RAM reads in the pl310 cache
> controller L2 auxiliary control register mask (bits 0-2) since it
> needs to be changed in software.  This only affects exynos4210 and
> exynos4412 as they use the pl310 cache controller.
> 
> With the mask used until now, the following warnings were generated,
> the 2nd one being a pr_alert():
> 
>   L2C: platform modifies aux control register: 0x02070000 -> 0x3e470001
>   L2C: platform provided aux values permit register corruption.
> 
> This latency cycles value has always been set in software in spite of
> the warnings.  Keep it this way but clear the alert message about
> register corruption to acknowledge it is a valid thing to do.

This is telling you that you are doing something you should not be
doing.  The L2C controller should be configured by board firmware
first and foremost, because if, for example, u-boot makes use of the
L2 cache, or any other pre-main kernel code (in other words,
decompressor) the setup of the L2 controller will be wrong.

So, NAK.

> 
> Tested on exynos4412-odroid-x2.
> 
> Signed-off-by: Guillaume Tucker <guillaume.tucker@collabora.com>
> Reported-by: "kernelci.org bot" <bot@kernelci.org>
> ---
>  arch/arm/mach-exynos/exynos.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-exynos/exynos.c b/arch/arm/mach-exynos/exynos.c
> index 7a8d1555db40..ed1bba49210d 100644
> --- a/arch/arm/mach-exynos/exynos.c
> +++ b/arch/arm/mach-exynos/exynos.c
> @@ -194,7 +194,7 @@ static void __init exynos_dt_fixup(void)
>  
>  DT_MACHINE_START(EXYNOS_DT, "Samsung Exynos (Flattened Device Tree)")
>  	.l2c_aux_val	= 0x3c400001,
> -	.l2c_aux_mask	= 0xc20fffff,
> +	.l2c_aux_mask	= 0xc20ffff8,
>  	.smp		= smp_ops(exynos_smp_ops),
>  	.map_io		= exynos_init_io,
>  	.init_early	= exynos_firmware_init,
> -- 
> 2.20.1
> 
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
