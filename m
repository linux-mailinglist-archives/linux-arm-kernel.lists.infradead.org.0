Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 062BD2FC96
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 15:44:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fA/IumSuCrV7xfboELCDxfDvvhtaOUpPw/+Gnk9k0F0=; b=g26GVMzAu3EZz8
	ZFe4eR7Nr/63fKZxL89TInhOn3aaHRAiJ4GZfHfrs3rvae1NZ0sCmkoC+Ohvmx0/n24YmQyVdX9iu
	wLWtCiAutgIwvTsKajvEbOUIFrOYLraph0atrtcYm7lJdhLQvr/AuvpfwDuzsym4hhHJ2/9AJOWMZ
	3CR0INsxHV2K1x6h4KXuAVRx76dLMx1CQcDGkxPJVuFrxi0ompQIypA4MBO4zRrS0NPbMw5M+3Dt5
	QucqVjy1PN1MQtJsvBYaTabQzQe3oQGAWY+UxaZye8v3cQorNE/z3Q4/JKh86BDuKxzv58NBqydd4
	/BZ2nXHLcH6PJvnCRBVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWLLt-00042d-UO; Thu, 30 May 2019 13:44:17 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=deadmen.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWLLl-00041t-QW
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 13:44:11 +0000
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1hWLLk-0005gQ-Fn; Thu, 30 May 2019 21:44:08 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1hWLLh-0003hY-2D; Thu, 30 May 2019 21:44:05 +0800
Date: Thu, 30 May 2019 21:44:05 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH v2 0/6] crypto - wire up Atmel SHA204A as RNG in DT and
 ACPI mode
Message-ID: <20190530134404.kpxdpkxbzyxhpbxo@gondor.apana.org.au>
References: <20190524162651.28189-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190524162651.28189-1-ard.biesheuvel@linaro.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_064410_004184_A7264AB5 
X-CRM114-Status: GOOD (  14.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Tudor Ambarus <tudor.ambarus@microchip.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-crypto@vger.kernel.org,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 24, 2019 at 06:26:45PM +0200, Ard Biesheuvel wrote:
> The Socionext SynQuacer based 96boards DeveloperBox platform does not
> incorporate a random number generator, but it does have a 96boards low
> speed connector which supports extension boards such as the Secure96,
> which has a TPM and some crypto accelerators, one of which incorporates
> a random number generator.
> 
> This series implements support for the RNG part, which is one of several
> functions of the Atmel SHA204A I2C crypto accelerator, and wires it up so
> both DT and ACPI based boot methods can use the device.
> 
> v2:
> - update DT binding patches so the SHA204A and ECC508A module bindings are
>   in trivial-devices.yaml.
> - add acks from Linus and Mika
> 
> Assuming Rob is ok now with the DT binding patches, can we please take
> this through the crypto tree?
> 
> Cc: Herbert Xu <herbert@gondor.apana.org.au>
> Cc: Tudor Ambarus <tudor.ambarus@microchip.com>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Mika Westerberg <mika.westerberg@linux.intel.com>
> 
> Ard Biesheuvel (6):
>   i2c: acpi: permit bus speed to be discovered after enumeration
>   crypto: atmel-ecc: add support for ACPI probing on non-AT91 platforms
>   crypto: atmel-ecc: factor out code that can be shared
>   crypto: atmel-i2c: add support for SHA204A random number generator
>   dt-bindings: add Atmel SHA204A I2C crypto processor
>   dt-bindings: move Atmel ECC508A I2C crypto processor to
>     trivial-devices
> 
>  Documentation/devicetree/bindings/crypto/atmel-crypto.txt |  13 -
>  Documentation/devicetree/bindings/trivial-devices.yaml    |   4 +
>  drivers/crypto/Kconfig                                    |  19 +-
>  drivers/crypto/Makefile                                   |   2 +
>  drivers/crypto/atmel-ecc.c                                | 403 ++------------------
>  drivers/crypto/atmel-ecc.h                                | 116 ------
>  drivers/crypto/atmel-i2c.c                                | 364 ++++++++++++++++++
>  drivers/crypto/atmel-i2c.h                                | 196 ++++++++++
>  drivers/crypto/atmel-sha204a.c                            | 171 +++++++++
>  drivers/i2c/i2c-core-acpi.c                               |   6 +-
>  10 files changed, 781 insertions(+), 513 deletions(-)
>  delete mode 100644 drivers/crypto/atmel-ecc.h
>  create mode 100644 drivers/crypto/atmel-i2c.c
>  create mode 100644 drivers/crypto/atmel-i2c.h
>  create mode 100644 drivers/crypto/atmel-sha204a.c

All applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
