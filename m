Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECC0B185086
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 21:47:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T6iFhXkuPEQcDCE1vIFyspstPDmUue0gJfe9asaMKm0=; b=B+VUkXT9JArJdH
	9eDx0dpusRc6hK/ooXvP5GPOXudR/SGtn3IWtwbzGoqN94nkTqsrP6ID9ZmLz9TbOtO4583JmDPYg
	jfqXXYlNKKRLATe0GmEW4vyiV6Ij7YbX5eD6P52qaooIZPp2/Ao4riWF0tMDJdp9yxUHUrNFQh7oX
	l/Sn3pMclq1Ofi5Ql10pxFylw3ZRgd3eySxlXNoqWZXPNANpQ5WAP1dgs5ZdGoJVDdsajHJZ/Eaoh
	9tOygzL3COUJRh/4LDUhm4BKt+Cm0gP6uHjD8Eamh5fhCdjasb+X1VdZ9TxSPqzB8KIPgnCSXj0jt
	ZhtZrtgdUIEdPKGCLllQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCrDO-0006ko-AP; Fri, 13 Mar 2020 20:47:30 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCrDG-0006kQ-RK
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 20:47:24 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id AF93F8087;
 Fri, 13 Mar 2020 20:48:08 +0000 (UTC)
Date: Fri, 13 Mar 2020 13:47:19 -0700
From: Tony Lindgren <tony@atomide.com>
To: soc@kernel.org
Subject: Re: [GIT PULL] Fixes for omaps for v5.6-rc cycle
Message-ID: <20200313204719.GG37466@atomide.com>
References: <pull-1584131971-332655@atomide.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <pull-1584131971-332655@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_134722_923742_2C712119 
X-CRM114-Status: GOOD (  17.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-omap@vger.kernel.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Tony Lindgren <tony@atomide.com> [200313 20:40]:
> From: "Tony Lindgren" <tony@atomide.com>
> 
> The following changes since commit 51c22d7b40dca8b39a33b2c3b03f13122a2a1af3:
> 
>   ARM: OMAP2+: Fix compile if CONFIG_HAVE_ARM_SMCCC is not set (2020-02-26 10:49:25 -0800)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.6/fixes-rc5-signed
> 
> for you to fetch changes up to cfb5d65f25959f724081bae8445a0241db606af6:
> 
>   ARM: dts: dra7: Add bus_dma_limit for L3 bus (2020-03-13 07:40:55 -0700)
> 
> ----------------------------------------------------------------
> Fixes for omap variants for v5.6-rc cycle
> 
> - Add bus_dma_limit for dra7 that fixes a SATA controller issue trying
>   to do 64-bit DMA on LPAE kernels. We first had this only for SATA, but
>   decided on the mailings lists that it applies to the whole interconnect
> 
> - Add missing quirk handling for lcdc on am335x to fix a suspend/resume
>   issue. Note that this fix causes a minor merge conflict with patches
>   pending in Linux next that I've already resolved in my updated
>   omap-for-v5.7/ti-sysc branch, so I'll send a separate pull request for
>   that
> 
> - Fix a regression for n900 onenand timings that caused onenand to
>   not work depending on the version of onenand manufacturer
> 
> - Fix a regression for dm814x and j5eco for Ethernet that was again
>   caused by the earlier changes to disable phy delay for RGMII mode
>   but only recently noticed
> 
> ----------------------------------------------------------------
> Arthur Demchenkov (1):
>       ARM: dts: N900: fix onenand timings
> 
> Roger Quadros (1):
>       ARM: dts: dra7: Add bus_dma_limit for L3 bus
> 
> Tomi Valkeinen (1):
>       backlight: add led-backlight driver
> 
> Tony Lindgren (6):
>       ARM: dts: droid4: Configure LED backlight for lm3532
>       Merge branch 'omap-for-v5.6/fixes-rc2' into fixes
>       Merge branch 'omap-for-v5.6/fixes-rc3' into fixes
>       ARM: dts: Fix dm814x Ethernet by changing to use rgmii-id mode
>       bus: ti-sysc: Fix quirk flags for lcdc on am335x
>       Merge branch 'fix-lcdc-quirk' into fixes
> 
>  arch/arm/boot/dts/dm8148-evm.dts                |   4 +-
>  arch/arm/boot/dts/dm8148-t410.dts               |   4 +-
>  arch/arm/boot/dts/dra62x-j5eco-evm.dts          |   4 +-
>  arch/arm/boot/dts/dra7.dtsi                     |   1 +
>  arch/arm/boot/dts/motorola-mapphone-common.dtsi |  13 +-
>  arch/arm/boot/dts/omap3-n900.dts                |  44 ++--
>  arch/arm/configs/omap2plus_defconfig            |   1 +
>  drivers/bus/ti-sysc.c                           |   3 +-
>  drivers/video/backlight/Kconfig                 |   7 +
>  drivers/video/backlight/Makefile                |   1 +
>  drivers/video/backlight/led_bl.c                | 260 ++++++++++++++++++++++++
>  11 files changed, 317 insertions(+), 25 deletions(-)
>  create mode 100644 drivers/video/backlight/led_bl.c

Here the diffstat is off a bit, the led_bl.c changes
have been already merged in v5.6-rc5.

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
