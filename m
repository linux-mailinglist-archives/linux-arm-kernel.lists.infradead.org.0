Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13D5117D398
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Mar 2020 12:32:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H+g6bGPLLvm6fwSqLbI+PxAbwi5oxDRgdEpgA5tUzUo=; b=pCEbniYTIpdFxO
	963CaZEWOiqqzrOfcp4kx1qwIvIC9skClKa3qneLmYEt9n2XEsk0dXZeXc3tPbnNb6yWBDwVuIiF9
	bctK9AfHXglN4F8PD1AjnP216Kc3z5fVy/rRkwcRo6emj0YwqucpP8EAdigpaxrwBqVmZnmgrEpso
	mQ76wXGjqGun409DGZTNe1fXp0850dr/N0PsNVR2f427tuQfxhabbfVuhH3SRWZ01oTKgy7mFq+zi
	LA+sriqUxIgmgo7yVRmfufw0+4893PO5TlRrJNTNqtasyuXCzo9CsfWezSex+zlCpJBvk7cUR//F0
	yfeDGFZndrayLlSTXUwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAuA6-0007Qu-Bh; Sun, 08 Mar 2020 11:32:02 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAu9y-0007PZ-Oz
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Mar 2020 11:31:56 +0000
X-Originating-IP: 87.231.134.186
Received: from localhost (87-231-134-186.rev.numericable.fr [87.231.134.186])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 2B51460003;
 Sun,  8 Mar 2020 11:31:29 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>, Arnd Bergmann <arnd@arndb.de>,
 Kevin Hilman <khilman@kernel.org>, Olof Johansson <olof@lixom.net>
Subject: Re: [PATCH 16/20] ARM: orion5x: Drop unneeded select of
 PCI_DOMAINS_GENERIC
In-Reply-To: <20200121103722.1781-16-geert+renesas@glider.be>
References: <20200121103413.1337-1-geert+renesas@glider.be>
 <20200121103722.1781-1-geert+renesas@glider.be>
 <20200121103722.1781-16-geert+renesas@glider.be>
Date: Sun, 08 Mar 2020 12:31:28 +0100
Message-ID: <87d09nqe0f.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_043154_946857_1462373B 
X-CRM114-Status: GOOD (  12.04  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.195 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 Geert Uytterhoeven <geert+renesas@glider.be>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Geert,

> Support for Marvell Orion SoCs depends on ARCH_MULTI_V5, and thus on
> ARCH_MULTIPLATFORM.
> As the latter selects GENERIC_CLOCKEVENTS and USE_OF, there is no need
> for ARCH_ORION5X and ARCH_ORION5X_DT to select any of them.
>
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Cc: Jason Cooper <jason@lakedaemon.net>
> Cc: Andrew Lunn <andrew@lunn.ch>
> Cc: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
> Cc: Gregory Clement <gregory.clement@bootlin.com>


Applied on mvebu/arm

Thanks,

Gregory

> ---
> All patches in this series are independent of each other.
> Cover letter at https://lore.kernel.org/r/20200121103413.1337-1-geert+renesas@glider.be
>
>  arch/arm/mach-orion5x/Kconfig | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/arch/arm/mach-orion5x/Kconfig b/arch/arm/mach-orion5x/Kconfig
> index cf9cb3d2590ec19b..e94a61901ffd86b4 100644
> --- a/arch/arm/mach-orion5x/Kconfig
> +++ b/arch/arm/mach-orion5x/Kconfig
> @@ -3,7 +3,6 @@ menuconfig ARCH_ORION5X
>  	bool "Marvell Orion"
>  	depends on MMU && ARCH_MULTI_V5
>  	select CPU_FEROCEON
> -	select GENERIC_CLOCKEVENTS
>  	select GPIOLIB
>  	select MVEBU_MBUS
>  	select FORCE_PCI
> @@ -18,7 +17,6 @@ if ARCH_ORION5X
>  
>  config ARCH_ORION5X_DT
>  	bool "Marvell Orion5x Flattened Device Tree"
> -	select USE_OF
>  	select ORION_CLK
>  	select ORION_IRQCHIP
>  	select ORION_TIMER
> -- 
> 2.17.1
>

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
