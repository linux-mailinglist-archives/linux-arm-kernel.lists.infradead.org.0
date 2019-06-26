Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E2F555E13
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 04:02:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iyD50AAHAwzdt5MjHpEH0YBU97xHanngmcrJa2RkHXE=; b=NYKyYqnET15atj
	Qt6J5rbsexM5nJi1HzyvN2wKDqL4W8YLAcqHapoWqTUalDcB1h5p2RQK2utQEoR+8oTyzQDcwojg3
	J8Bhx1nHyY5+3/mdnDy+3vGkYrTLKVGRnhZxwRL7SrTUKO4z+OfGhzdlw3AUvwdG9JDaEBXfPZSwq
	y4q84viE0Iz7L17xqIsbUjZULDHD0uh+eDndp+BE1eIusa3MN7/pu6LNfVqO42muuw85eKUg8uz0s
	OAfR72gERZxJYvJYrj6vqoFW42SK6UL4ehRan5/CuUVyWfT5OnjwhiBsXTfoV3U+EIrHGjtBCvDey
	DBJSrs7sRuCE86113nsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfxGv-0000ia-3O; Wed, 26 Jun 2019 02:02:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfxGf-0000i7-I3
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 02:02:39 +0000
Received: from dragon (li1322-146.members.linode.com [45.79.223.146])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0278A20644;
 Wed, 26 Jun 2019 02:02:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561514554;
 bh=PU8ySQOxhxWP5XVC2zisrbJL5D4wlDh6UbnOAbCzAVI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lp+cJSMvojQNIDOc6BEygaWGLiDK+ZhHsqHDYKEnKZmza3Q/+gOKgJNc9PSywtIlE
 pjCns1PuS/vEFQJRmt63F4Ig//v3LVp0a5WpOtaD/R0V9jLjWowQixxNEkelLqyGsv
 s0xCE4Zw7+tF5jelTirpDJJZ8re9FxcQmbetLbmY=
Date: Wed, 26 Jun 2019 10:02:18 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Olof Johansson <olof@lixom.net>
Subject: Re: [GIT PULL 7/7] i.MX defconfig changes for 5.3
Message-ID: <20190626020213.GF16146@dragon>
References: <20190625075305.29082-1-shawnguo@kernel.org>
 <20190625075305.29082-7-shawnguo@kernel.org>
 <20190625123234.ytva26bkeyqevtwc@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190625123234.ytva26bkeyqevtwc@localhost>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_190238_443053_86A63F81 
X-CRM114-Status: GOOD (  11.90  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Stefan Agner <stefan@agner.ch>, Li Yang <leoyang.li@nxp.com>,
 arm@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 05:32:34AM -0700, Olof Johansson wrote:
> > Anson Huang (6):
> >       arm64: defconfig: add support for i.MX system controller watchdog
> >       ARM: imx_v6_v7_defconfig: Enable CONFIG_THERMAL_STATISTICS
> >       ARM: imx_v6_v7_defconfig: Add TPM PWM support by default
> >       arm64: defconfig: Enable CONFIG_QORIQ_THERMAL
> >       arm64: defconfig: Add i.MX SCU SoC info driver
> 
> An SoC info driver shouldn't need to be =y, I think? It exports no in-kernel
> interfaces, so it should do just fine as a module.

Hmm, soc_device_match() comes out of SoC bus subsystem and will be used
by device drivers to identify SoC.

> 
> 
> >       arm64: defconfig: Enable CONFIG_KEYBOARD_SNVS_PWRKEY as module
> > 
> > Fabio Estevam (3):
> >       arm64: defconfig: Enable CONFIG_SPI_IMX
> >       ARM: imx_v6_v7_defconfig: Enable the OV2680 camera driver
> >       ARM: imx_v6_v7_defconfig: Select CONFIG_NVMEM_SNVS_LPGPR
> > 
> > Leonard Crestez (6):
> >       arm64: defconfig: Enable imx8mm clk/pinctrl
> >       arm64: defconfig: Enable lpi2c for imx8qxp and sensors
> >       arm64: defconfig: Enable ROHM_BD718XX PMIC for imx8mm-evk
> >       arm64: defconfig: NVMEM_IMX_OCOTP=y for imx8m
> 
> And why does this need to be =y? Patch doesn't say.

Sorry for not making it clear in the commit log.  This basically enables
the access to SoC fuses, where various system information are stored
there, like CPU speed grading which is needed by cpufreq support.

I will rework the patch by putting above info into commit log, and
resend the PR.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
