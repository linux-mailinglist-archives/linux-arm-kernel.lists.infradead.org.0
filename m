Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE655117BA8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 00:46:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PIhuC4TUzrI3wLhtTV91pw7F7SQpxRrUrH5ltS6cPLc=; b=Yl7wfak3Ch4ZlZ
	iJ3ImCxbivR2f6NzcDh63y8de/TsnM3NSeO3W28wD6uTyG6VwyU6rVpgRRFUThnM6Tb3NiTDi8qgX
	UreTQrS1V2Ubhy4TcIcMWdWiI0pBBlcmvZOenR82/go4KFM/nFUqsbmg6Dj+z+lBB0UepRRE7m0Rk
	LwhjQDDoShLa3rY5+ED31epWY3NreOhljqNXXMa+ZPUjtez00SwzZMjQxj+OJVAO/1KWFdpZWBRAU
	gkRIkSVf5O4KEKEJdCrje1wtr7ZcIBnWXuyzsTMip5ygn9v6XrjrIIE1f5NLuOkbqwXISlK6rLoDb
	Hg/w40RbTobvT3EcYIyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieSj2-0002Eg-LE; Mon, 09 Dec 2019 23:46:00 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieSis-0002Bq-Dk
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 23:45:52 +0000
X-Originating-IP: 195.39.63.77
Received: from localhost (unknown [195.39.63.77])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 67FB2E0002;
 Mon,  9 Dec 2019 23:45:48 +0000 (UTC)
Date: Tue, 10 Dec 2019 00:45:46 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: Re: [PATCH v3 0/9] SoC and defconfig support for SAM9X60
Message-ID: <20191209234546.GD1463890@piout.net>
References: <1575035505-6310-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1575035505-6310-1-git-send-email-claudiu.beznea@microchip.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_154550_601360_D512D10F 
X-CRM114-Status: GOOD (  15.02  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux@armlinux.org.uk, ludovic.desroches@microchip.com, sre@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 29/11/2019 15:51:36+0200, Claudiu Beznea wrote:
> Hi,
> 
> This series enables proper support for SAM9X60 in Kconfig and
> defconfig.
> 
> Thank you,
> Claudiu Beznea
> 
> Changes in v3:
> - move patch "ARM: at91: Kconfig: add config flag for SAM9X60 SoC" before
>   the patches that uses CONFIG_SOC_SAM9X60
> - sqash defconfig patches (except the savedefconfig one)
> 
> Changes in v2:
> - cahnged cover letter title; previously it was:
>   "add defconfig support for SAM9X60"
> - have new entry in arch/arm/mach-at91/Kconfig for SOC_SAM9X60
>   independent of SOC_AT91SAM9 to be able to select only necessary
>   config flags for SAM9X60 (patches 02/17, 03/17)
> - select POWER_RESET_AT91_RESET and POWER_RESET_AT91_SAMA5D2_SHDWC
>   as for SAMA5D2 (patches 04/17, 05/17)
> - select DEBUG_AT91_RM9200_DBGU (patch 06/17)
> - shaped a bit the patches titles and commit desciptions for defconfig
>   patches (patches 09-17/17)
> 
> Claudiu Beznea (9):
>   ARM: at91: Kconfig: add sam9x60 pll config flag
>   ARM: at91: Kconfig: add config flag for SAM9X60 SoC
>   ARM: at91: pm: move SAM9X60's PM under its own SoC config flag
>   drivers: soc: atmel: move sam9x60 under its own config flag
>   power: reset: Kconfig: select POWER_RESET_AT91_RESET for sam9x60
>   drivers: soc: atmel: select POWER_RESET_AT91_SAMA5D2_SHDWC for sam9x60
>   ARM: debug-ll: select DEBUG_AT91_RM9200_DBGU for sam9x60
>   ARM: at91/defconfig: use savedefconfig
>   ARM: at91/defconfig: enable config flags for sam9x60 SoC
> 
>  arch/arm/Kconfig.debug             |  6 ++---
>  arch/arm/configs/at91_dt_defconfig | 55 ++++++++++++++++++--------------------
>  arch/arm/mach-at91/Kconfig         | 24 +++++++++++++++--
>  arch/arm/mach-at91/Makefile        |  1 +
>  arch/arm/mach-at91/at91sam9.c      | 18 -------------
>  arch/arm/mach-at91/pm.c            |  2 +-
>  arch/arm/mach-at91/sam9x60.c       | 34 +++++++++++++++++++++++
>  drivers/power/reset/Kconfig        |  4 +--
>  drivers/soc/atmel/soc.c            |  5 ++--
>  9 files changed, 92 insertions(+), 57 deletions(-)
>  create mode 100644 arch/arm/mach-at91/sam9x60.c
> 
Applied, thanks.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
