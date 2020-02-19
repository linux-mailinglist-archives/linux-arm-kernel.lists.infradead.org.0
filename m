Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0504E1639C4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 03:03:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nkvOJv2zsTyxeBdP3oU/dvH69omBZMZAHVQ2zPJ1sKA=; b=dPiI6CQ35smwuN
	ycaKbFMhj5GSj5mhWBZzsj8w0Wbfx4oORAJp+gj3DUg9bajGCtIY5ofYIyHA9sYdf+Q9iP5Hzfgf7
	WlhZmtWOhAbKbcrE9ajCj7QuFykF1ebXMOnSAO76tkDQy81aqJJfeRQTYhyfLKYXyeHR8tYCBjPWU
	WXveoRvjJPYeRpdn6ydyNY21Mb41YUD9Ak+0CkNcG0/ZeklyBUV7A7cgMXGy1TvY+0jPZw+s6Pjov
	fLX08Nyr7RE05O5COlHFBxX+LfSnHBgymslCR7yNPM0cNOJZR8F3K1vEvuAoF2/gCt/k+021zP/Vm
	slVXDpMzetHbwChGnw/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Ehe-0002WT-Hu; Wed, 19 Feb 2020 02:03:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4EhS-0002VU-4N
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 02:02:55 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 458AC206DB;
 Wed, 19 Feb 2020 02:02:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582077771;
 bh=zZgKpAVTcS0HFTReo92vS7ROv9M5SlQjFcvItuZaouo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KCDvIX5ESx+/fv2GnQodDCuhBF3i33bgdk0P29bY4M65DN6YnkPaUL8Eq89/mUfa9
 CHCnzIHCRkXPfC8R9b8lqwJyoRn5SpyfY3uDcf36X2cHocrVtDhl00zts6aYUhpUqg
 8rZ+Sis0tKo+8K56bw/I3farjiXEOpmhwXx5QUfI=
Date: Wed, 19 Feb 2020 10:02:45 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Leo Li <leoyang.li@nxp.com>
Subject: Re: [PATCH 2/2] arm64: defconfig: enable additional drivers needed
 by NXP QorIQ boards
Message-ID: <20200219020244.GG6075@dragon>
References: <1581382559-18520-1-git-send-email-leoyang.li@nxp.com>
 <1581382559-18520-2-git-send-email-leoyang.li@nxp.com>
 <20200217053730.GB6042@dragon>
 <VE1PR04MB668774D60323E11C7FF1FF7F8F110@VE1PR04MB6687.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <VE1PR04MB668774D60323E11C7FF1FF7F8F110@VE1PR04MB6687.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_180254_202788_8EBC6B4E 
X-CRM114-Status: GOOD (  15.67  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 18, 2020 at 04:44:09PM +0000, Leo Li wrote:
> 
> 
> > -----Original Message-----
> > From: Shawn Guo <shawnguo@kernel.org>
> > Sent: Sunday, February 16, 2020 11:38 PM
> > To: Leo Li <leoyang.li@nxp.com>
> > Cc: linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org
> > Subject: Re: [PATCH 2/2] arm64: defconfig: enable additional drivers needed
> > by NXP QorIQ boards
> > 
> > On Mon, Feb 10, 2020 at 06:55:59PM -0600, Li Yang wrote:
> > > This enables the following SoC device drivers for NXP/FSL QorIQ SoCs:
> > > CONFIG_QORIQ_CPUFREQ=y
> > > CONFIG_NET_SWITCHDEV=y
> > > CONFIG_MSCC_OCELOT_SWITCH=y
> > > CONFIG_CAN=m
> > > CONFIG_CAN_FLEXCAN=m
> > > CONFIG_FSL_MC_BUS=y
> > > CONFIG_MTD_NAND_FSL_IFC=y
> > > CONFIG_FSL_ENETC=y
> > > CONFIG_FSL_ENETC_VF=y
> > > CONFIG_SPI_FSL_LPSPI=y
> > > CONFIG_SPI_FSL_QUADSPI=y
> > > CONFIG_SPI_FSL_DSPI=y
> > > CONFIG_GPIO_MPC8XXX=y
> > > CONFIG_ARM_SBSA_WATCHDOG=y
> > > CONFIG_DRM_MALI_DISPLAY=m
> > > CONFIG_FSL_MC_DPIO=y
> > > CONFIG_CRYPTO_DEV_FSL_DPAA2_CAAM=m
> > > CONFIG_FSL_DPAA=y
> > > CONFIG_FSL_FMAN=y
> > > CONFIG_FSL_DPAA_ETH=y
> > > CONFIG_FSL_DPAA2_ETH=y
> > >
> > > And the drivers for on-board devices for the upstreamed QorIQ
> > > reference
> > > boards:
> > > CONFIG_MTD_CFI=y
> > > CONFIG_MTD_CFI_ADV_OPTIONS=y
> > > CONFIG_MTD_CFI_INTELEXT=y
> > > CONFIG_MTD_CFI_AMDSTD=y
> > > CONFIG_MTD_CFI_STAA=y
> > > CONFIG_MTD_PHYSMAP=y
> > > CONFIG_MTD_PHYSMAP_OF=y
> > > CONFIG_MTD_DATAFLASH=y
> > > CONFIG_MTD_SST25L=y
> > > CONFIG_EEPROM_AT24=m
> > > CONFIG_RTC_DRV_DS1307=y
> > > CONFIG_RTC_DRV_PCF85363=y
> > > CONFIG_RTC_DRV_PCF2127=y
> > > CONFIG_E1000=y
> > > CONFIG_AQUANTIA_PHY=y
> > > CONFIG_MICROSEMI_PHY=y
> > > CONFIG_VITESSE_PHY=y
> > > CONFIG_MDIO_BUS_MUX_MULTIPLEXER=y
> > > CONFIG_MUX_MMIO=y
> > >
> > > The following two options are implied by new options and removed from
> > > defconfig:
> > > CONFIG_CLK_QORIQ=y
> > > CONFIG_MEMORY=y
> > >
> > > Signed-off-by: Li Yang <leoyang.li@nxp.com>
> > 
> > This is too much change in a single patch. It should be split properly to make
> > review and merge easier, considering arm-soc folks are cautious to those 'y'
> > options.
> 
> Ok.  So probably separating them based on different subsystems will be good?  It would be too many patches if I separate for each individual config option.

Yep, subsystem should be good.  And for those 'y' options, please state
why they need necessarily to be 'y'.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
