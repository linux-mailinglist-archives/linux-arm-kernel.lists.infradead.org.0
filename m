Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD8498936
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 04:07:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y6+GPl07IjCg0lkt1ycKlx1ruFm6jS8uBZ51ex7el8w=; b=L5wvKilBvrQqjX
	f+pP1CtkSQGfqG2RjVvMzFsp7GQ2VgOvfg83RmG6AD0j+GM9xYaixkwhCPZDbicoS9TnYEKJD6x2+
	YzpiQdy7iYVTEnk8ERVxiD/p1DWZNBS1myIvE57s+ODuseloPcOl0luaIK6OH3t2NQBJ4P18t8ju9
	Jl1uAueCQpGad+Xj4Go4GvJB64qBxfSxunsl9WGj6kdkpIUlhof2u9jgToo61HJulF94Zsi8BhaH7
	ZeZsngfYHCi/2ATWRx4tgMLtT3w0lckba9Va5r1J3HI4BS3e9Lmv8kZNLpVEIKFTHav1sW2AVKrh3
	F4u0qKJc6TsWkm4Q3Gfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0cVG-00080g-ED; Thu, 22 Aug 2019 02:07:06 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0cV9-00080M-ES
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 02:07:00 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 95D392201F;
 Wed, 21 Aug 2019 22:06:58 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Wed, 21 Aug 2019 22:06:58 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=KYWuCso3H9tQIAMYJuMqDYcfvu9fCit
 U3GrLXPFFaoY=; b=aEX7qQmndyrfK/xEY+NxPzwImoqEYHZOVl9Qrzey1oV/LCt
 Pr4Ug6CO19fVWizZuty5b6UGy1eZNGUGRx6k+OZb+77dhxMSJEabvi2l30D/zeo8
 FPzBIkHSUQYwo+j0SffP0tHTPhivfq23nfHszSSeMfG3D31dlg9PTfOLcxgTw5El
 7ivY5oJQP3PAbXgTiWZaXI7af9/ic72RuTVZpFO2VQqWIdnSfZ4/DCIPwGZjUoAR
 bd8ZyZQhQHRbiLjbTd66tUXAtYLrCTtsxU6r1N0MmwpT15EOeY0zyfTRJ3xvZ0kn
 QZzUFalP7d5Yc8rXOWXDlENJ8043yGGojM15dUg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=KYWuCs
 o3H9tQIAMYJuMqDYcfvu9fCitU3GrLXPFFaoY=; b=rb54j1N4kjy8/JMA9szmtM
 LrFnXBdc/R3X8ZAgA/pBOrjynKicBZrPn00vxwZu25xDBYXSPlGron2JgjegfaHQ
 fYoQnEU+vI/Gj7L56O80XiP8jd8OJm6aRa2+KhT4kobCX7X6V1XKpmF/Wi007Qec
 m6gn20oqfYOCS6EmML7SdaNFq2zkN6qVn0cvAtXHwsWLYvzGrBmhR7kgwHNK0iOE
 RCAswUnyj3n6YFUNct47T7Aw+PEhpm8YgBqiEZPhUMVDGe3tpROsupcAafEa6I87
 6noVYTjnCIm1jU7Xl2iyZ9I/m9x6x+kJ9yeJx1s73H6pRbQlzZRUwy76M7ofyHFA
 ==
X-ME-Sender: <xms:wPhdXSy1rR4PGy3rAbY3KkVifoaduUJ6ZWr1OytoxsYkNwJrK8MyYg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudeggedgheejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecurfgrrh
 grmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgv
 rhfuihiivgeptd
X-ME-Proxy: <xmx:wPhdXSihcO7QYo2NtJnK0dbB7BtFlFh3L9oNX1h0GSFEeypk91lbtA>
 <xmx:wPhdXfV6Sbm2g7g_0wvaQ7nfrJGb9B6-adtT75XzipDnJ7yOrjUuOQ>
 <xmx:wPhdXc2BnMdnkF6tJL_2WV4FboY3B9zWpPy4U3KRFbvWyd7mGFr4gg>
 <xmx:wvhdXZ6naR9I7_Lus8WJjLZvmnJji9AfpDUmlmywhhqnLP1godS7Nw>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 2045EE00A4; Wed, 21 Aug 2019 22:06:56 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-916-g49fca03-fmstable-20190821v7
Mime-Version: 1.0
Message-Id: <faf79f9d-baa1-4c8c-a35b-c5d97ad6df8b@www.fastmail.com>
In-Reply-To: <20190821055530.8720-8-joel@jms.id.au>
References: <20190821055530.8720-1-joel@jms.id.au>
 <20190821055530.8720-8-joel@jms.id.au>
Date: Thu, 22 Aug 2019 11:37:12 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Joel Stanley" <joel@jms.id.au>, "Rob Herring" <robh+dt@kernel.org>,
 "Arnd Bergmann" <arnd@arndb.de>, "Olof Johansson" <olof@lixom.net>
Subject: Re: [PATCH 7/7] ARM: configs: aspeed_g5: Enable AST2600
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_190659_622790_EFFD0D17 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Ryan Chen <ryan_chen@aspeedtech.com>, linux-aspeed@lists.ozlabs.org,
 =?UTF-8?Q?C=C3=A9dric_Le_Goater?= <clg@kaod.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Wed, 21 Aug 2019, at 15:26, Joel Stanley wrote:
> CONFIG_STRICT_KERNEL_RWX is enabled by default with ARMv7.
> 
> Turn on HIGHMEM as the EVB has 2GB of RAM, and not all is usable without
> hihgmem.
> 
> The SoC contains Cortex A7 supporting VFP and has two CPUs.
> 
> Signed-off-by: Joel Stanley <joel@jms.id.au>
> ---
>  arch/arm/configs/aspeed_g5_defconfig | 17 ++++++++++++++---
>  1 file changed, 14 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/configs/aspeed_g5_defconfig 
> b/arch/arm/configs/aspeed_g5_defconfig
> index 426d8e0c9890..597536cc9573 100644
> --- a/arch/arm/configs/aspeed_g5_defconfig
> +++ b/arch/arm/configs/aspeed_g5_defconfig
> @@ -21,21 +21,26 @@ CONFIG_PERF_EVENTS=y
>  CONFIG_SLAB=y
>  CONFIG_SLAB_FREELIST_RANDOM=y
>  CONFIG_ARCH_MULTI_V6=y
> -# CONFIG_ARCH_MULTI_V7 is not set
>  CONFIG_ARCH_ASPEED=y
>  CONFIG_MACH_ASPEED_G5=y
> +CONFIG_MACH_ASPEED_G6=y
>  # CONFIG_CACHE_L2X0 is not set
> +CONFIG_SMP=y
> +# CONFIG_ARM_CPU_TOPOLOGY is not set
>  CONFIG_VMSPLIT_2G=y
> +CONFIG_NR_CPUS=2
> +CONFIG_HIGHMEM=y
>  CONFIG_UACCESS_WITH_MEMCPY=y
>  CONFIG_SECCOMP=y
>  # CONFIG_ATAGS is not set
>  CONFIG_ZBOOT_ROM_TEXT=0x0
>  CONFIG_ZBOOT_ROM_BSS=0x0
>  CONFIG_KEXEC=y
> -# CONFIG_SUSPEND is not set
> +CONFIG_VFP=y
> +CONFIG_NEON=y
> +CONFIG_KERNEL_MODE_NEON=y
>  CONFIG_FIRMWARE_MEMMAP=y
>  CONFIG_JUMP_LABEL=y
> -CONFIG_STRICT_KERNEL_RWX=y
>  # CONFIG_BLK_DEV_BSG is not set
>  # CONFIG_BLK_DEBUG_FS is not set
>  # CONFIG_MQ_IOSCHED_DEADLINE is not set
> @@ -140,10 +145,12 @@ CONFIG_ASPEED_BT_IPMI_BMC=y
>  CONFIG_HW_RANDOM_TIMERIOMEM=y
>  # CONFIG_I2C_COMPAT is not set
>  CONFIG_I2C_CHARDEV=y
> +CONFIG_I2C_MUX=y
>  CONFIG_I2C_MUX_PCA9541=y
>  CONFIG_I2C_MUX_PCA954x=y
>  CONFIG_I2C_ASPEED=y
>  CONFIG_I2C_FSI=y
> +CONFIG_SPI=y
>  CONFIG_GPIOLIB=y
>  CONFIG_GPIO_SYSFS=y
>  CONFIG_GPIO_ASPEED=y
> @@ -194,6 +201,10 @@ CONFIG_USB_CONFIGFS_F_LB_SS=y
>  CONFIG_USB_CONFIGFS_F_FS=y
>  CONFIG_USB_CONFIGFS_F_HID=y
>  CONFIG_USB_CONFIGFS_F_PRINTER=y
> +CONFIG_MMC=y
> +CONFIG_MMC_SDHCI=y
> +CONFIG_MMC_SDHCI_PLTFM=y
> +CONFIG_MMC_SDHCI_OF_ASPEED=y

The patches haven't yet been applied to the MMC tree, maybe we should
add this later?

Anyway,

Acked-by: Andrew Jeffery <andrew@aj.id.au>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
