Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C1501D18F4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 17:18:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VoaErRCmlD7erDP4Qllp7H8ooaer7nqZmz4Xmep77KM=; b=AyV1tTTEN58WuTZCi8tn3LUyj
	4utXlv/ckj9pGcyuMIyhL0WMufG2mtcZLw15dbaqad3XtIOaltnuZJO4V05sC6F9so3yJtr5yYNMg
	vnPg9qFi9yNQ1QbVdZQFuQPtmSq18zGckw1LghDs/iS+gtqbs68xJJvRzNqPMgFijvkcHmHR5Z+hK
	s8Tv1R0AtzqRXCLemd9dIuY9fidf7h9SvMeE7+rvubXQW4yCWYqurXXAsNLEBpi/qj6T8wHFmmO9n
	2AjksNhQWR2zBKudapOUSgDAdFChEs7BhHgVhzCxMXv4r3d55gXCXwTLRE53heOtzj7lMY1dk4VKe
	vSyqrXTow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYt9M-0005f3-Dd; Wed, 13 May 2020 15:18:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYt9C-0005eh-Cs
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 15:18:15 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B73112064E;
 Wed, 13 May 2020 15:18:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589383094;
 bh=Y/fGvAHke+qH6hU964aYi1T7HyX/xn8dwPWAEjJIT+I=;
 h=Date:From:To:List-Id:Cc:Subject:References:In-Reply-To:From;
 b=UcbprM3ckt3Au8HMIbHMzJiM1K2ciAEDA7E20bgfHheAeZCJQ/wNeDNtRjAovK/nG
 5naWAQe0UaO9LEt5DUKQ6Ukaqan/hHpIKSrv3qUJPnoyYMS/hfrvSExnAK9hRPk0D5
 4VNZrQIyoqmrwEtX82GL/foJpcI3t3JGaOg7zaPg=
Date: Wed, 13 May 2020 16:18:11 +0100
From: Mark Brown <broonie@kernel.org>
To: Lars Povlsen <lars.povlsen@microchip.com>
Subject: Re: [PATCH 05/10] spi: spi-dw-mmio: Spin off MSCC platforms into
 spi-dw-mchp
Message-ID: <20200513151811.GL4803@sirena.org.uk>
References: <20200513140031.25633-1-lars.povlsen@microchip.com>
 <20200513140031.25633-6-lars.povlsen@microchip.com>
MIME-Version: 1.0
In-Reply-To: <20200513140031.25633-6-lars.povlsen@microchip.com>
X-Cookie: Long life is in store for you.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_081814_457667_3FE44CC2 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 SoC Team <soc@kernel.org>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8469487867259103261=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8469487867259103261==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="RNGrj7vazCqBHNw7"
Content-Disposition: inline


--RNGrj7vazCqBHNw7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, May 13, 2020 at 04:00:26PM +0200, Lars Povlsen wrote:

> +config SPI_DW_MCHP
> +	tristate "Memory-mapped io interface driver using DW SPI core of MSCC SoCs"
> +	default y if ARCH_SPARX5
> +	default y if SOC_VCOREIII

Why the default ys?

> +++ b/drivers/spi/Makefile
> @@ -37,6 +37,7 @@ obj-$(CONFIG_SPI_DAVINCI)		+= spi-davinci.o
>  obj-$(CONFIG_SPI_DLN2)			+= spi-dln2.o
>  obj-$(CONFIG_SPI_DESIGNWARE)		+= spi-dw.o
>  obj-$(CONFIG_SPI_DW_MMIO)		+= spi-dw-mmio.o
> +obj-$(CONFIG_SPI_DW_MCHP)		+= spi-dw-mchp.o
>  obj-$(CONFIG_SPI_DW_PCI)		+= spi-dw-midpci.o
>  spi-dw-midpci-objs			:= spi-dw-pci.o spi-dw-mid.o
>  obj-$(CONFIG_SPI_EFM32)			+= spi-efm32.o

Please keep the file alphabetically sorted.

> +++ b/drivers/spi/spi-dw-mchp.c
> @@ -0,0 +1,232 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Memory-mapped interface driver for MSCC SoCs
> + *

Please make the entire comment a C++ one so things look more
intentional.

> +#define MAX_CS		4

This should be namespaced.

> +	rx_sample_dly = 0;
> +	device_property_read_u32(&pdev->dev, "spi-rx-delay-us", &rx_sample_dly);
> +	dws->rx_sample_dly = DIV_ROUND_UP(rx_sample_dly,
> +					  (dws->max_freq / 1000000));

If this is a standard feature of the DesignWare IP why parse it here and
not in the generic code?

--RNGrj7vazCqBHNw7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl68D7IACgkQJNaLcl1U
h9AKCAf+NFQMIaDxcIpdmNimLXhIBXiwxKV9UyvU37bLEfzGcOSblzN/eqg7LqJK
aJgqdf7kUNakfrEuwNoZKeDrZZC2jjupUrAZnemna4DCMdLbhlZCJ54xKxFZnuLz
RzfRX7b7ChyfYLEHsYW6bq65o+Q7Fu4LStBymSkqhqQ63vF6WWN6qZbKnNrTJouT
vKBCNr3KP77Mnz5dfnihjghjtyGjkRmpxVUQ/uNLCSJ3Qot4h1yDYqaRLmkTupJx
cQ2cMLPHmMXcxEskEP9bg4sX85Zgk9UPGbeI1B7pn3QlYNcVDFC5xoozCFcmY6hv
2dmAD/OnMSk0DZLi+mNJDjrwGztaVA==
=Z++N
-----END PGP SIGNATURE-----

--RNGrj7vazCqBHNw7--


--===============8469487867259103261==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8469487867259103261==--

