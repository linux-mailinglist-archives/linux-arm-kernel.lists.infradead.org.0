Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C30091D95D8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 14:05:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jwFoBk39XRhCtj+M9PNbKuZtAQt45RV4WaSWhFFe2K4=; b=GTQOGHv99cZwMz
	hL1FXuziXxDYCR7pEP3Xsm9SMz/GSsRTpvkdei5LuBO2s9zfDE4um5YbLR2eND26UwVTqdofbf63F
	LtAHtkgxne/x39SU+rVV23Defylgdaptx4kwO/9Zfd/gxlXl6+wHYyOjpoGB7qNCXK56TrS+4arnc
	FH7iYULl022DtBGYkDv+oidg/IVphVkX/dxLeiT3UZSd0FV6IQ11xrmUr/uqE/JZ5mwy69ycaSSgD
	YXVenwlIhqgXvGCixx65rry8WF5oYefpYCXheR3e0Isaj3clo3eMUUjffXa4ayDdTmbBZgVeR5wQJ
	af1VTkPeSzWwpketF7ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb105-0006om-C5; Tue, 19 May 2020 12:05:37 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb0zv-0006o7-L3
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 12:05:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589889927; x=1621425927;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=q+uMgkWii/Rp8nZstyK9Xz4jIR2voQK7J5e60BEVm4E=;
 b=L6yf27KRj+3Q19B10rsmxkA6OprftijbRgu1znMRub7TXqoJheE95Ugs
 Qk6/st7cBQoPhq5jef6Ahn6EtvnR7H6UfxxscJt6jkWqAv4aQ7FWA+n/h
 SYaqNoO9e6D2uMqdLkSitV0nOiP+oHoLiUZGB0TxAFua/5oEFBzipFQKs
 mxoPbGY1WLqGcWo2NXILICodpX+9b4vz72ViWoiAz3s+JaGxBOYxVHqyb
 rnqmTIrn0L8nspVK1yk01t7y2v99Ai1aQe9IJMkry9XWixmdr5owDg0VR
 tkz0GizQrzkHapT8uaVkuLNoc0zf86yzdWxs1C5zAfKfOhLfgXGti1WiM A==;
IronPort-SDR: RnaVAjoz7qlXYMO1U7Qf00Q1j9MjlGTJ5imBEoeQvtjHIpfDMXUeF8auplwCmIZVc3Kf61ZPrW
 7194go2GC/2b3tc8QV/pd+xedtcmeIiyBHKZcmiZ9lZ34WrUNApXEb4J2dEB1UWSCeiKMLjTS9
 sFLtmAFWo9CiK+BITa8mB7Ka7lCPxPG50pqHKEUar6yR5l6L2VF2UWL1gGPUjhoDslBxMWqIho
 EWs9ppZc7Yi+8JLhoT1SiMcuSSWFpdraxWoyDXOMjqCUQzaz/Sz+Es4OOBFoTrLAgnyEmQKbFl
 o9s=
X-IronPort-AV: E=Sophos;i="5.73,410,1583218800"; d="scan'208";a="73868962"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 19 May 2020 05:05:25 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 19 May 2020 05:05:26 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Tue, 19 May 2020 05:05:25 -0700
Date: Tue, 19 May 2020 14:05:19 +0200
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH 05/10] spi: spi-dw-mmio: Spin off MSCC platforms into
 spi-dw-mchp
Message-ID: <20200519120519.GE24801@soft-dev15.microsemi.net>
References: <20200513140031.25633-1-lars.povlsen@microchip.com>
 <20200513140031.25633-6-lars.povlsen@microchip.com>
 <20200513151811.GL4803@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513151811.GL4803@sirena.org.uk>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_050527_778818_9DFC6673 
X-CRM114-Status: GOOD (  15.27  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 SoC Team <soc@kernel.org>, Lars Povlsen <lars.povlsen@microchip.com>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13/05/20 16:18, Mark Brown wrote:
> Date: Wed, 13 May 2020 16:18:11 +0100
> From: Mark Brown <broonie@kernel.org>
> To: Lars Povlsen <lars.povlsen@microchip.com>
> Cc: SoC Team <soc@kernel.org>, Microchip Linux Driver Support
>  <UNGLinuxDriver@microchip.com>, linux-spi@vger.kernel.org,
>  devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
>  linux-arm-kernel@lists.infradead.org, Alexandre Belloni
>  <alexandre.belloni@bootlin.com>
> Subject: Re: [PATCH 05/10] spi: spi-dw-mmio: Spin off MSCC platforms into
>  spi-dw-mchp
> User-Agent: Mutt/1.10.1 (2018-07-13)
> 
> On Wed, May 13, 2020 at 04:00:26PM +0200, Lars Povlsen wrote:
> 
> > +config SPI_DW_MCHP
> > +	tristate "Memory-mapped io interface driver using DW SPI core of MSCC SoCs"
> > +	default y if ARCH_SPARX5
> > +	default y if SOC_VCOREIII
> 
> Why the default ys?

The SoC will typically boot from SPI... But its not a requirement per
se. I will remove it.

> 
> > +++ b/drivers/spi/Makefile
> > @@ -37,6 +37,7 @@ obj-$(CONFIG_SPI_DAVINCI)		+= spi-davinci.o
> >  obj-$(CONFIG_SPI_DLN2)			+= spi-dln2.o
> >  obj-$(CONFIG_SPI_DESIGNWARE)		+= spi-dw.o
> >  obj-$(CONFIG_SPI_DW_MMIO)		+= spi-dw-mmio.o
> > +obj-$(CONFIG_SPI_DW_MCHP)		+= spi-dw-mchp.o
> >  obj-$(CONFIG_SPI_DW_PCI)		+= spi-dw-midpci.o
> >  spi-dw-midpci-objs			:= spi-dw-pci.o spi-dw-mid.o
> >  obj-$(CONFIG_SPI_EFM32)			+= spi-efm32.o
> 
> Please keep the file alphabetically sorted.
> 

Noted.

> > +++ b/drivers/spi/spi-dw-mchp.c
> > @@ -0,0 +1,232 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +/*
> > + * Memory-mapped interface driver for MSCC SoCs
> > + *
> 
> Please make the entire comment a C++ one so things look more
> intentional.

Sure, I can do that. The presented form matches that of the other
spi-dw-* drivers, but I can see other using // blocks. Ack.

> 
> > +#define MAX_CS		4
> 
> This should be namespaced.

Ack.

> 
> > +	rx_sample_dly = 0;
> > +	device_property_read_u32(&pdev->dev, "spi-rx-delay-us", &rx_sample_dly);
> > +	dws->rx_sample_dly = DIV_ROUND_UP(rx_sample_dly,
> > +					  (dws->max_freq / 1000000));
> 
> If this is a standard feature of the DesignWare IP why parse it here and
> not in the generic code?

This is a standard feature of the DesignWare IP, so good suggestion. I
will arrange with Serge.

Thank you for your comments!

---Lars


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
