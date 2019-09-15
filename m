Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDE28B2F8B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Sep 2019 12:22:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L+I4F6aMD+edsZ4CdcID3JfVEljy7AhJ+kJ3bZUPRZU=; b=PzDKLWvSL/AvX+
	ag1hn+GR9DbddCuaKPc0RqcdBtl2Yla7YSxMb0kzYVQsv32vMOwdyf0IaNl4xwsv8YsH/ruSez4ar
	4iFPXiPGEE1aOGCGSRoYn8dxzBODXmNqQTMRYrb2Bo8oZeiHuvegQfW8QXK2Yx1x8BCn0kkk2tjMj
	dKguzUUTodYx6m2vxnV2Y0rQs8bl/WrxX5lGAFtFXA/Y0wXJKa9W6ntxUkvK1kLAkBaLopdHZbUpw
	XqZBsVUI9zFUK6+6X+Jp43SxBEV1P544pmsi831PlhrHWmwIWOKU1AK6SVT+6uD8a7D/EktL74OZo
	5cLzKXXOjKAMPB+vQZ2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9Rfx-0005fo-Nl; Sun, 15 Sep 2019 10:22:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9RfY-0005fD-0C
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Sep 2019 10:22:13 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 07FD220692;
 Sun, 15 Sep 2019 10:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568542931;
 bh=jQ+dE0FqCn4YmPt8H5tQ6UZBzpg1F2BEc20j8Ptglzk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Y5BbD16mnzz7OhM8IfFnS1ggxaS2GA7BFcYFp/ccokTArfJNqni/tOl8YgI7yBU1a
 02MB/74LKXFKXF/CZtGJW3ui1b5ObbJmJeNgeAeV4H9IUbuVJb7IUfH4AHojzPQ2RJ
 MHoECe9e7kfh2HZwSU+AzNE8mmhDT2tYuMWweIsI=
Date: Sun, 15 Sep 2019 11:22:05 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Alexandru Ardelean <alexandru.ardelean@analog.com>
Subject: Re: [RFC PATCH 00/15] Unify SPI delays into an `struct spi_delay`
Message-ID: <20190915112205.0007d62d@archlinux>
In-Reply-To: <20190913114550.956-1-alexandru.ardelean@analog.com>
References: <20190913114550.956-1-alexandru.ardelean@analog.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_032212_102621_8B390CF8 
X-CRM114-Status: GOOD (  18.16  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: f.fainelli@gmail.com, baolin.wang@linaro.org, linux-iio@vger.kernel.org,
 zhang.lyra@gmail.com, linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, broonie@kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-tegra@vger.kernel.org,
 orsonzhai@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 13 Sep 2019 14:45:35 +0300
Alexandru Ardelean <alexandru.ardelean@analog.com> wrote:

> Initially, I started this patchset thinking: "we need a new delay for
> something-something" (in case someone is curios, we need a CS-hold-time for
> the first transfer, because the CS wakes a chip from sleep-mode).
> 
> Then I added the delay, and felt a bit dirty-inside about adding a new one
> (just like that), and decided to look at maybe cleaning things up a bit,
> and a few days later, I got here.
> 
> Full disclaimer: this patchset is not complete. It's an RFC.
> It's based on top of Jonathan's `iio/togreg` branch which also includes the
> ADIS driver library changes and also includes `cs_change_delay`.
> 
> I'll send a V2 patchset, which just the first 4 patches, since I feel that
> those are a bit more complete.
> 
> I thought about just sending the first 4 patches on-their-own, but I
> figured that the whole series (even if not complete) serves as a better
> explanation about the whole "why?".
> 
> Hopefully, this can sort-of-explain things.
> I'll reference this RFC on the next series.

General approach looks sensible to me. Over to SPI specialists on
whether this is a sensible bit of unification to do.

Jonathan

> 
> Thanks
> 
> Alexandru Ardelean (15):
>   spi: move `cs_change_delay` backwards compat logic outside switch
>   spi: introduce spi_delay struct as "value + unit" &  spi_delay_exec()
>   spi: make `cs_change_delay` the first user of the `spi_delay` logic
>   iio: imu: adis: convert cs_change_delay to spi_delay struct
>   spi: sprd: convert transfer word delay to spi_delay struct
>   spi: orion: use new `word_delay` field for SPI transfers
>   spi: spidev: use new `word_delay` field for spi transfers
>   spi: core,atmel: convert `word_delay_usecs` -> `word_delay` for
>     spi_device
>   spi: introduce `delay` field for `spi_transfer` + spi_transfer_exec()
>   spi: use new `spi_transfer_delay` helper where straightforward
>   spi: tegra114: use `spi_transfer_delay` helper
>   spi: spi-loopback-test: use new `delay` field
>   spi: spidev: use new `delay` field for spi transfers
>   spi: tegra114: change format for `spi_set_cs_timing()` function
>   spi: implement SW control for CS times
> 
>  drivers/iio/imu/adis.c           |  24 ++---
>  drivers/spi/spi-atmel.c          |  29 +++++-
>  drivers/spi/spi-bcm63xx-hsspi.c  |   3 +-
>  drivers/spi/spi-cavium.c         |   3 +-
>  drivers/spi/spi-fsl-dspi.c       |   3 +-
>  drivers/spi/spi-fsl-espi.c       |   3 +-
>  drivers/spi/spi-fsl-spi.c        |   3 +-
>  drivers/spi/spi-loopback-test.c  |  12 ++-
>  drivers/spi/spi-mpc512x-psc.c    |   3 +-
>  drivers/spi/spi-mpc52xx-psc.c    |   3 +-
>  drivers/spi/spi-omap-100k.c      |   3 +-
>  drivers/spi/spi-orion.c          |   6 +-
>  drivers/spi/spi-pl022.c          |  25 +++--
>  drivers/spi/spi-sc18is602.c      |   3 +-
>  drivers/spi/spi-sh-hspi.c        |   3 +-
>  drivers/spi/spi-sprd.c           |  11 ++-
>  drivers/spi/spi-tegra114.c       |  39 +++++---
>  drivers/spi/spi-tegra20-sflash.c |   2 +-
>  drivers/spi/spi-topcliff-pch.c   |   7 +-
>  drivers/spi/spi-txx9.c           |   3 +-
>  drivers/spi/spi-xcomm.c          |   3 +-
>  drivers/spi/spi.c                | 162 +++++++++++++++++++++++++------
>  drivers/spi/spidev.c             |   6 +-
>  include/linux/spi/spi.h          |  65 ++++++++++---
>  24 files changed, 293 insertions(+), 131 deletions(-)
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
