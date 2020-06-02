Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D3B11EB741
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 10:22:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h+MwLU72CoS2VrnvHDOnzRjBy3CCGAlv6CWVd9LIUCc=; b=m3lJsD0fFJK5uI
	V69RgcA9dZpkFXmOFtqXr5vw2rDDa9iepzpFs+X4eqbhzgvFOJaoZ6/Kp5rHC5R02svvQWX004wWm
	jlyP1Na7A1q4Aym9LMK0Sl/8+lYbGqH/ToJGT+BqTMUnKVMTW05SUxZ05ZAng5GNqLFH7K4iAM7uV
	zHnHEd4y6zD5zSNFTclALg7/v/DzbpR9wJMuqiA35LAkQ6y2c8APyGptdZOGnOtFcZ6Ut01fuULD5
	xzezG3hwZiVth8GJLNEjqpmp1/VINtHbdV+zu3l7l/6XqQlHU1oE4eN2gBEN/K/THvIGDK4Db43nv
	613QFTGnJXxW9H64DzTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg2BJ-0001qA-Oj; Tue, 02 Jun 2020 08:21:57 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg2BD-0001oe-1M
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 08:21:52 +0000
Received: by mail-lj1-x243.google.com with SMTP id c17so5738293lji.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jun 2020 01:21:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=FjBag7M9X3aH/ZEGPq07O51zdgo35JEFdqZ5HJOkkrY=;
 b=trqAUZ5/3aI8+fzxUeXYg9HQQREJNPKZygkPMG8OxgCxlHjocPZQUltnETkIeH93+x
 GlvbKY7vPkmozFCHoqeUJZt/LA4ILlc7q4q8w8RaZgwrHLs981qT/DOlGWbtbSuGsd6W
 GzipgCj7YaEfl0q5vDgePniFVNOi7X2IMK+FTlrMBvD/SQxvL5vlMyE6URYW5Rw8+LRB
 84edeF780OHnDzvL6K0FackZAXac+L+jbj+3PLOMs4RA6KhctEzjbQGpsnah12f5RHPj
 ZiQuO6IvA1ojr8tFR2/x08q35acbauyctmRta6izQdslhJvvVMzeBKkyFKdsdCq/Sjar
 HMgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=FjBag7M9X3aH/ZEGPq07O51zdgo35JEFdqZ5HJOkkrY=;
 b=ItXlsbVxzKvEaOwl8ewOe1F3Db4QkgbGorcwKMMMWQEaxR9p+35RLyn6P4NKjxSGNE
 yNSIEiZfgvIQ9SuV1jnfwr8FMQVGRGJbLjwcyAjNrS8sZ1X8jDROfDU6mRaTWRvHAhbV
 02Bmd25CLRyZXhZGMZHfORbRw1Wi6hMShrVFpAipLoruOMFbd+PAjtZwoQtzd/nmfqqG
 UzrxiRje420qh9iRqZf6zNHWtpbwWzWhYvfrQ4Dd7XWP/hpT9p7jOCzX2kY1raKxPY4D
 g+Wup7IJ62QlEQBLsQNQ81JTyrNFdyGsE7wbK7+tgfbwIpYogrwD0um7M1Lxmc9Bw6sv
 CTng==
X-Gm-Message-State: AOAM530/k3t862T4JlK4afhSsl5mcMa3TTXUXi4i6zFFDxDCZEcHxZwp
 2kGTdnN41+mApLRtdbfNtzU=
X-Google-Smtp-Source: ABdhPJzDOQi6hmzqge53Xl5Zq7aD1IUTng25DanPHl/+hcvMgGV5LOyybYU5LKq4k+WpCS9xK0BI4w==
X-Received: by 2002:a2e:5c45:: with SMTP id q66mr7580829ljb.147.1591086107518; 
 Tue, 02 Jun 2020 01:21:47 -0700 (PDT)
Received: from mobilestation ([95.79.222.123])
 by smtp.gmail.com with ESMTPSA id d22sm516778lfn.84.2020.06.02.01.21.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Jun 2020 01:21:46 -0700 (PDT)
Date: Tue, 2 Jun 2020 11:21:44 +0300
From: Serge Semin <fancer.lancer@gmail.com>
To: Lars Povlsen <lars.povlsen@microchip.com>
Subject: Re: [PATCH 00/10] spi: Adding support for Microchip Sparx5 SoC
Message-ID: <20200602082144.z2crru6uqoiyfj5k@mobilestation>
References: <20200513140031.25633-1-lars.povlsen@microchip.com>
 <20200529162130.hsjcde27xhohl6jl@mobilestation>
 <87img9q3sb.fsf@soft-dev15.microsemi.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87img9q3sb.fsf@soft-dev15.microsemi.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_012151_102039_A0710B44 
X-CRM114-Status: GOOD (  24.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [fancer.lancer[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, Serge Semin <Sergey.Semin@baikalelectronics.ru>,
 SoC Team <soc@kernel.org>, Mark Brown <broonie@kernel.org>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 02, 2020 at 10:18:28AM +0200, Lars Povlsen wrote:
> 
> Serge Semin writes:
> 
> > Hello Lars,
> >
> > On Wed, May 13, 2020 at 04:00:21PM +0200, Lars Povlsen wrote:
> >> This is an add-on series to the main SoC Sparx5 series
> >> (Message-ID: <20200513125532.24585-1-lars.povlsen@microchip.com>).
> >>
> >> The series add support for Sparx5 on top of the existing
> >> ocelot/jaguar2 spi driver.
> >>
> >> It spins off the existing support for the MSCC platforms into a
> >> separate driver, as adding new platforms from the MSCC/Microchip
> >> product lines will further complicate (clutter) the original driver.
> >>
> >> New YAML dt-bindings are provided for the resulting driver.
> >>
> >> It is expected that the DT patches are to be taken directly by the arm-soc
> >> maintainers.
> >
> > Regarding our cooperation. It can be implemented as follows. Since your patchset
> > is less cumbersome than mine and is more ready to be integrated into the generic DW
> > APB SSI code, it would be better to first make it through Mark', Andy' and my reviews
> > to be further merged into the kernel version of the driver. After that I'll have
> > my code altered so it could be applied on top of your patches. When everything
> > is done we'll have a more comprehensive DW APB SSI driver with poll-based
> > PIO operations support, new features like rx-delay, etc.
> >
> 
> Hi Serge!
> 
> I think I would be able to work on the SPI patches this week. Should I
> base it on the current spi-next or 5.7? Then address the comments and
> send out a new revision?
> 
> Thanks for reaching out.

Sorry for a delay. I had to finish urgent tasks first. I'll give my review comments
shortly today.

-Sergey

> 
> ---Lars
> 
> > Thank you one more time for the series you've shared with us. Let's see what can
> > be done to improve it...
> >
> > -Sergey
> >
> >>
> >> Lars Povlsen (10):
> >>   spi: dw: Add support for polled operation via no IRQ specified in DT
> >>   spi: dw: Add support for RX sample delay register
> >>   spi: dw: Add support for client driver memory operations
> >>   dt-bindings: spi: Add bindings for spi-dw-mchp
> >>   spi: spi-dw-mmio: Spin off MSCC platforms into spi-dw-mchp
> >>   dt-bindings: spi: spi-dw-mchp: Add Sparx5 support
> >>   spi: spi-dw-mchp: Add Sparx5 support
> >>   arm64: dts: sparx5: Add SPI controller
> >>   arm64: dts: sparx5: Add spi-nor support
> >>   arm64: dts: sparx5: Add spi-nand devices
> >>
> >>  .../bindings/spi/mscc,ocelot-spi.yaml         |  89 ++++
> >>  .../bindings/spi/snps,dw-apb-ssi.txt          |   7 +-
> >>  MAINTAINERS                                   |   2 +
> >>  arch/arm64/boot/dts/microchip/sparx5.dtsi     |  37 ++
> >>  .../boot/dts/microchip/sparx5_pcb125.dts      |  16 +
> >>  .../boot/dts/microchip/sparx5_pcb134.dts      |  22 +
> >>  .../dts/microchip/sparx5_pcb134_board.dtsi    |   9 +
> >>  .../boot/dts/microchip/sparx5_pcb135.dts      |  23 +
> >>  .../dts/microchip/sparx5_pcb135_board.dtsi    |   9 +
> >>  arch/mips/configs/generic/board-ocelot.config |   2 +-
> >>  drivers/spi/Kconfig                           |   7 +
> >>  drivers/spi/Makefile                          |   1 +
> >>  drivers/spi/spi-dw-mchp.c                     | 399 ++++++++++++++++++
> >>  drivers/spi/spi-dw-mmio.c                     |  93 ----
> >>  drivers/spi/spi-dw.c                          |  31 +-
> >>  drivers/spi/spi-dw.h                          |   4 +
> >>  16 files changed, 644 insertions(+), 107 deletions(-)
> >>  create mode 100644 Documentation/devicetree/bindings/spi/mscc,ocelot-spi.yaml
> >>  create mode 100644 drivers/spi/spi-dw-mchp.c
> >>
> >> --
> >> 2.26.2
> >>
> >> _______________________________________________
> >> linux-arm-kernel mailing list
> >> linux-arm-kernel@lists.infradead.org
> >> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 
> --
> Lars Povlsen,
> Microchip

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
