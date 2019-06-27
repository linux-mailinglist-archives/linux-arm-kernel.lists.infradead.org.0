Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A239B57C75
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 08:50:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w3Kp7GNmpZoGrxqb81u4o86V/doOQ3yht7lWgVwOGeE=; b=k0FRoGxvNasVbo
	RYTZCrjZRiHufTz7h20RHpReVpNIF5sJI6FdPZgg1L/r+q8mI1Gsj7lC7ktLL1dycAv1AOxQBefvF
	n7znSpPIF7J7aZBEgsvbcTNMHQlaj54ztJ/a0nMEmVfm4FMg+JVGWV1aGh2UL6D/d/Fna5Xwowumw
	kuhQDpqlYlGoBF92k4lqigjWGNXc4KLOvQfd6OIRUbRUs1WrU3dfvkkwt/fF/gkaI7wQD9DEU3CGq
	Wd7SScQU0LnlAS0+EQZV3K9Jjkq2DnhotLQQ23axWH1eHfM97O6H7JyUJ++0ZCDkLc3RMtXHgMH1u
	xJonzUTPj5ofLWYlgDzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgOEx-0005Ze-S0; Thu, 27 Jun 2019 06:50:39 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgO8T-0006KM-Ox
 for linux-arm-kernel@bombadil.infradead.org; Thu, 27 Jun 2019 06:43:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:Cc:To:Subject:Message-ID:
 Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HfbyWG+oAvLLDUQN4wyvRqLHKJYtkpqL+kUSe/Ulivw=; b=zhWwym137i6h0KvxExOjhaSYw
 GaQByc9xWXerzKPyuhv5fq+krrVxyZydqO75YBygQ+xjb+XHCjmcQQ0svQZknwElELYjRaSrh+7fJ
 JJjLKwqmJO8tdxBLyKwjv3abzGWcvzT07LKxNsM7p0FNJyhpU0JoCmG8rX09Qakj3i+T2uzzaz83R
 T7H1veBZIJa7YPaRdSHObyUhn2t/bRHUakzWSlQAuXYz6Lo4UWPanq4uXLbdNDG4mGW2r6eJn3lO/
 l483Q1QgvmW1H04Lkxq7Bv/dALAorJanC6cGno7izkdftbJO9LYx0I1c4x6cw3rK0YO/ebslX4wcf
 SHigKk66Q==;
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgJwu-0005ls-RB
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 02:15:45 +0000
Received: by mail-io1-xd44.google.com with SMTP id m24so1295430ioo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 19:15:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HfbyWG+oAvLLDUQN4wyvRqLHKJYtkpqL+kUSe/Ulivw=;
 b=CENJpEYH5tr5DsvMS0AxB4hBm9+N00CfCQGTEaDOF18GzeOhrFYHHklWx4X6PoheTe
 GoJ69iA6IL0IawkfcH6pjLrrtP/NOiyY1wDIGr6/vpVHeSB9RXn748DeyGIfs09ce+X0
 pBn7QonxN7OdhuyDydEzLcP4z1Hp/ZF5viqwuBTUSUkbIx8T2H6/3S5JVUegqCkH0XeO
 mw6Xdi+TO9nHg4pH705M2CH8O9NWxKfbjXr5emOE+tdFJ/GP5/peebuau8RhsQsWGI9Y
 VREDXleZx8LZOZwCRJ/KJjckJNfQGnRsAcTpLuJ0aW0bswl3QZBzgwce/IyjaZ7cCxUV
 8SUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HfbyWG+oAvLLDUQN4wyvRqLHKJYtkpqL+kUSe/Ulivw=;
 b=kYxco2Muxy9vCSl86t/h/QErv6QOS6dGSijLM+g6Zz2jRxaO4T3qcBEtBepLo029KJ
 QQI9298MNpvOop1TPS60SnlDnX55TR3CcqLUn1I/7Y/JVb9chtLSAXyJQ6sVNXSQqXTO
 XDfs92JC6OqyBiDHWyyW/IXuzqiYMm4nIWfOdI6FA4gXuOcDjlssvbHBqFxvyoGUY76r
 YiD251gGf1yo1TR6WqQefl6Tz3Oi/fCv75apDlsSz7iSKO2AJJt/fSIJkVXyPWE88Uzh
 M3BAKbg+Z888H3UPQb7SXuty012UM8c/HJpqOPU8HAqIlQ+Exmp1oSNvOggi8beilPFj
 VrFQ==
X-Gm-Message-State: APjAAAVEay06LVyi+In/xPstZ5NyUrl1KrnGtFw993SYCWE1PIZoA6Az
 KXuKSAq66q+7CdPrsKIw5zxWS4/djeSR6wDwqiSTyw==
X-Google-Smtp-Source: APXvYqwzdpkiDDH33Q51CFKXsXHPxhTPuvLOPouRoBfIq6UG+0ro3m+SgQhShjckHwT9jKw5SJDY67MJxSRRRTXNNco=
X-Received: by 2002:a6b:1494:: with SMTP id 142mr1729469iou.72.1561601676841; 
 Wed, 26 Jun 2019 19:14:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190625075305.29082-1-shawnguo@kernel.org>
 <20190625075305.29082-7-shawnguo@kernel.org>
 <20190625123234.ytva26bkeyqevtwc@localhost> <20190626020213.GF16146@dragon>
In-Reply-To: <20190626020213.GF16146@dragon>
From: Olof Johansson <olof@lixom.net>
Date: Thu, 27 Jun 2019 10:14:25 +0800
Message-ID: <CAOesGMiWqgBdxZ+XRexxLSEkZ_WuegxgqLmJ4=iBvhTxAJ_okQ@mail.gmail.com>
Subject: Re: [GIT PULL 7/7] i.MX defconfig changes for 5.3
To: Shawn Guo <shawnguo@kernel.org>
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 ARM-SoC Maintainers <arm@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 26, 2019 at 10:02 AM Shawn Guo <shawnguo@kernel.org> wrote:
>
> On Tue, Jun 25, 2019 at 05:32:34AM -0700, Olof Johansson wrote:
> > > Anson Huang (6):
> > >       arm64: defconfig: add support for i.MX system controller watchdog
> > >       ARM: imx_v6_v7_defconfig: Enable CONFIG_THERMAL_STATISTICS
> > >       ARM: imx_v6_v7_defconfig: Add TPM PWM support by default
> > >       arm64: defconfig: Enable CONFIG_QORIQ_THERMAL
> > >       arm64: defconfig: Add i.MX SCU SoC info driver
> >
> > An SoC info driver shouldn't need to be =y, I think? It exports no in-kernel
> > interfaces, so it should do just fine as a module.
>
> Hmm, soc_device_match() comes out of SoC bus subsystem and will be used
> by device drivers to identify SoC.

Ah, yes of course. But don't we usually use compatible for this?

> >
> >
> > >       arm64: defconfig: Enable CONFIG_KEYBOARD_SNVS_PWRKEY as module
> > >
> > > Fabio Estevam (3):
> > >       arm64: defconfig: Enable CONFIG_SPI_IMX
> > >       ARM: imx_v6_v7_defconfig: Enable the OV2680 camera driver
> > >       ARM: imx_v6_v7_defconfig: Select CONFIG_NVMEM_SNVS_LPGPR
> > >
> > > Leonard Crestez (6):
> > >       arm64: defconfig: Enable imx8mm clk/pinctrl
> > >       arm64: defconfig: Enable lpi2c for imx8qxp and sensors
> > >       arm64: defconfig: Enable ROHM_BD718XX PMIC for imx8mm-evk
> > >       arm64: defconfig: NVMEM_IMX_OCOTP=y for imx8m
> >
> > And why does this need to be =y? Patch doesn't say.
>
> Sorry for not making it clear in the commit log.  This basically enables
> the access to SoC fuses, where various system information are stored
> there, like CPU speed grading which is needed by cpufreq support.

Having hardware self-describe is nice, not having to populate DT
entries from the bootloader.

> I will rework the patch by putting above info into commit log, and
> resend the PR.

Thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
