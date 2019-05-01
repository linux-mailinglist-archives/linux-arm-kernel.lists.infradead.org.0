Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF47710389
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 02:42:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sY+mqtKCJkJoPjKluxWh32MoyRGOWXs1fvo04FElQrw=; b=DhxDfU57cviB7G
	xkAM5TV8Ub4janCKag1P/XH8SfSL66CRyiEZVIL7aAtlKAWT5XQVifazyoSxNMySEEtflx44Q0feJ
	XnL0TgBuCTgCrg5lwLF2cAR8pHn8EwQiAJC0uP3elCXTE5AP/7SfEfxDqFV/mCAOwKuxUZkXlRRj2
	9Jvp06flZzi2bKJLuysHS5WPcj9uilYTVpCneEFwx9VB30XRVuqz6UaWCMNOTbr5NRH8MKSOsQX8u
	sLtJm1jtFBhqrrmdO54c1XiFd5QUWQCaEYX8ZXZHR9h61bP/daScxzxfSbGKJi+NoZ8O9tZuYJ287
	xabwzTRcJeTerthnxi5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLdKQ-0005tE-Tk; Wed, 01 May 2019 00:42:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLdKK-0005sj-JT
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 00:42:26 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4B77621734;
 Wed,  1 May 2019 00:42:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556671342;
 bh=uu/SRmymCuvA2ZcwrC8n1xRwZijIkG4cx4DdqqrfSD8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VCyNAe/fda50Y81vT8cjYRySa2ndjI36Y/6TyWhIpgQdAX4ZIFuv2en1/bQiJXpuv
 78DMq+SmSvUzB1YGJqtI2fymYYD+R3/wXU/MzLb+2DtZ4RB7kBFeT0nuZHb/19h924
 RlLxzA8/5mEPgwVW8WAAdCu1uC3uw35hScjX/0Io=
Date: Wed, 1 May 2019 08:41:41 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [GIT PULL 6/6] i.MX defconfig update for 5.2
Message-ID: <20190501004139.GB25377@dragon>
References: <20190422082836.3734-1-shawnguo@kernel.org>
 <20190422082836.3734-6-shawnguo@kernel.org>
 <20190429162910.l27ewbfvvestb474@localhost>
 <20190430022636.GA25377@dragon>
 <AM0PR04MB64345FA41350834C7552E81FEE3A0@AM0PR04MB6434.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM0PR04MB64345FA41350834C7552E81FEE3A0@AM0PR04MB6434.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_174224_746658_6F07154C 
X-CRM114-Status: GOOD (  24.31  )
X-Spam-Score: -5.3 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Abel Vesa <abel.vesa@nxp.com>, Stefan Agner <stefan@agner.ch>,
 Leo Li <leoyang.li@nxp.com>, "arm@kernel.org" <arm@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Olof Johansson <olof@lixom.net>, Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 30, 2019 at 09:18:18PM +0000, Leonard Crestez wrote:
> On 4/30/2019 5:27 AM, Shawn Guo wrote:
> > On Mon, Apr 29, 2019 at 09:29:10AM -0700, Olof Johansson wrote:
> >> On Mon, Apr 22, 2019 at 04:28:36PM +0800, Shawn Guo wrote:
> >>> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> >>>
> >>>    Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> >>>
> >>> are available in the Git repository at:
> >>>
> >>>    git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-defconfig-5.2
> >>>
> >>> for you to fetch changes up to a3f12aac21848796f5b5c6e9ce2f04e411ec2129:
> >>>
> >>>    arm64: defconfig: NVMEM_IMX_OCOTP=y for imx8m (2019-04-22 10:33:53 +0800)
> >>>
> >>> ----------------------------------------------------------------
> >>> i.MX defconfig update for 5.2:
> >>>   - Enable PCF857X GPIO expander and SIOX bus driver support for
> >>>     imx_v6_v7_defconfig.
> >>>   - Enable more drivers for i.MX8 platform support in arm64 defconfig:
> >>>     SNVS RTC, SCU Watchdog, SPI, i.MX8MM pinctrl and clock, LPI2C,
> >>>     ROHM_BD718XX PMIC and OCOTP NVMEM.
> >>
> >> All of these are enabled as =y. I don't think all of them are critical for
> >> booting the system up to a rootfs. Can you please switch over any non-critical
> >> drivers to =m?
> 
> > - CONFIG_MFD_ROHM_BD718XX=y, CONFIG_REGULATOR_BD718XX=y
> > 
> >    @Leonard, are they critical for booting imx8mm-evk board up? Or can
> >    they be installed as module after system is up?
> 
> This is the PMIC used on imx8mm-evk and also the purism devkit. Since 
> it's used for main chip power "y" makes sense but boards can boot 
> without it and I can't think of a corner case where we could fail to 
> reach rootfs because of no PMIC driver.
> 
> Looking through arm64 defconfig other PMIC regulators seem to be "y"

Okay.

> 
>  > - CONFIG_GPIO_MAX732X=y
>  > - CONFIG_I2C_IMX_LPI2C=y
> 
> Other I2C/GPIO drivers are "y" but again can't point to anything 
> specific that would fail.

I understand that the rootfs in Olof's context might be ramdisk, and
missing GPIO driver shouldn't be a problem.  However, I really would
like build a kernel image out of defconfig that can run into rootfs on
SD/MMC or NFS, which would be much more useful.  In that case, drivers
like GPIO should be required. 

> 
> > - CONFIG_NVMEM_IMX_OCOTP=y
> > 
> >    @Olof, this is the driver for fuse access on i.MX platform.  Drivers
> >    like cpufreq will need to access fuse for cpu grade data.  So we would
> >    take this driver as fundamental infrastructural.
> 
> Other than thermal and speed grading fuses also contain MAC address on 
> imx chips. Since FEC (imx ethernet controller) is "y" for easy netboots 
> it makes a lot of sense to keep this "y" as well.

Agreed.

> 
> These are all relatively small drivers. I don't think that RTC drivers 
> are worth excluding either.

I don't think that is a good argument.  The need of being 'y' is based
on necessity rather than driver size.  arm-soc folks are maintaining
one single defconfig for all arm64 platforms. There could be hundreds
of such small drivers to be 'y' for no good reason.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
