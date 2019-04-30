Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99A56EEC3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 04:27:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PhUqX9/CLlRm2UwDoPkR+bfKSUkG95SeACSshehugwM=; b=oMPgVNTQRwmYqX
	2V7YjJskTR8njiF7BidlEJ83vB8tHxZPsxsQnhy42qaT9mffZydRQICaA51SDkD2N5kKAxsVxoL74
	EWB1gl0pIC3xMOAKMWYPKBbFUKIIT3g+zHJXA1WPPgwkulzp5xzdDiPktJbJxFe06+Qyqp60qJazk
	WpAbuGMp70+6IBTi7ATdUtoeP7zbtU3K+V34y3KhncHHDhR6bcAQFBgUW3X10gYLKDDE7D4qaJTJf
	4ZHJCBbTyYb8k9+ImEQPKK2TjK3+ul1gCMqyrPjTdzMyhaCU/PfaCV26xEwXwRv0W2kkkTreS7US1
	aLSI64a8KzyIjWyxGnYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLIUL-0007Rg-OK; Tue, 30 Apr 2019 02:27:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLIUF-0007RN-7o
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 02:27:16 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0798521670;
 Tue, 30 Apr 2019 02:27:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556591234;
 bh=AB+CZWuCECOiJMQ8QG+PiXccuQJtzVG9wjNCoih4pjI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZA88Su5t++Vdp+uFjttnCoALAB9z0fpXHNanMvvdNl9JfgI2aByx1fREVWJ3MVCdi
 Kvf/kRpbm8SzKbxQL34y3Nsq3facTPBv6y66x4GEsjHqOY/YW9Cna6BMyFp21IE5Xg
 cSZNw7IkaN2TFa1/Yte/kxV7vTG+72Y4mDLBMGHY=
Date: Tue, 30 Apr 2019 10:26:38 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Olof Johansson <olof@lixom.net>, Fabio Estevam <festevam@gmail.com>,
 Abel Vesa <abel.vesa@nxp.com>, Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [GIT PULL 6/6] i.MX defconfig update for 5.2
Message-ID: <20190430022636.GA25377@dragon>
References: <20190422082836.3734-1-shawnguo@kernel.org>
 <20190422082836.3734-6-shawnguo@kernel.org>
 <20190429162910.l27ewbfvvestb474@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190429162910.l27ewbfvvestb474@localhost>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_192715_300197_619F8ACE 
X-CRM114-Status: GOOD (  17.68  )
X-Spam-Score: -5.3 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Stefan Agner <stefan@agner.ch>, Li Yang <leoyang.li@nxp.com>,
 arm@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 29, 2019 at 09:29:10AM -0700, Olof Johansson wrote:
> On Mon, Apr 22, 2019 at 04:28:36PM +0800, Shawn Guo wrote:
> > The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> > 
> >   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> > 
> > are available in the Git repository at:
> > 
> >   git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-defconfig-5.2
> > 
> > for you to fetch changes up to a3f12aac21848796f5b5c6e9ce2f04e411ec2129:
> > 
> >   arm64: defconfig: NVMEM_IMX_OCOTP=y for imx8m (2019-04-22 10:33:53 +0800)
> > 
> > ----------------------------------------------------------------
> > i.MX defconfig update for 5.2:
> >  - Enable PCF857X GPIO expander and SIOX bus driver support for
> >    imx_v6_v7_defconfig.
> >  - Enable more drivers for i.MX8 platform support in arm64 defconfig:
> >    SNVS RTC, SCU Watchdog, SPI, i.MX8MM pinctrl and clock, LPI2C,
> >    ROHM_BD718XX PMIC and OCOTP NVMEM.
> 
> All of these are enabled as =y. I don't think all of them are critical for
> booting the system up to a rootfs. Can you please switch over any non-critical
> drivers to =m?

Okay, let's check them one by one.

- CONFIG_SPI_IMX=y

  @Fabio, do you have a critical use case for this to be 'y'?  Or can we
  change this to 'm'?

- CONFIG_RTC_DRV_SNVS=y

  @Abel, I guess this can be 'm'? Or you have a good reason for this to
  be 'y'?

- CONFIG_PINCTRL_IMX8MM=y, CONFIG_CLK_IMX8MM=y

  @Olof, I think we shouldn't have problem to have pinctrl and clock
  driver to be 'y', as they are pretty fundamental for a platform
  support.

- CONFIG_GPIO_MAX732X=y

  @Olof, this is essentially a GPIO controller, just like
  CONFIG_GPIO_PCA953X=y currently sitting in defconfig.

- CONFIG_I2C_IMX_LPI2C=y

  @Olof, this is a driver for I2C bus controller which is used for many
   I2C devices, and above GPIO expander is one example.  So we would
   treat it as fundamental one.

- CONFIG_MFD_ROHM_BD718XX=y, CONFIG_REGULATOR_BD718XX=y

  @Leonard, are they critical for booting imx8mm-evk board up? Or can
  they be installed as module after system is up?

- CONFIG_NVMEM_IMX_OCOTP=y

  @Olof, this is the driver for fuse access on i.MX platform.  Drivers
  like cpufreq will need to access fuse for cpu grade data.  So we would
  take this driver as fundamental infrastructural.

Shawn

> 
> (Not merged)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
