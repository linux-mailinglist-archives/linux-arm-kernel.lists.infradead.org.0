Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9D53B2CB5
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Sep 2019 21:37:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GHVRw2q0gqEFF/7ep8eDHP6SQLs1OdTFmg/facgCePk=; b=dgMpDAC6bUUgI0
	Y9QD/oBoLVeIBpyToy828Jd6VGOMCGwJ+WUtRRD79W5XOmc5oVlwuQAuNLvo7muYNnmyd8cybLzg+
	NAZ88aH50UTWIpeRUHvvl/bCDUHAOw57h5bEf6CJgVHwKqBzVIuqinbQcHHfvkeHObEDH1uZRAJBM
	ro4BFdAJEzE6a4nlaKUDLBRql7611j0PKIUVRGqblqPgmQ3OWrWQeODIk6Yo0ueaI4N7/DH6RAJMV
	9vEZ87ugmHAH+3eR4D8zUgElqSNKRBfKlMrqaG/0Clx5yUFONo3kEeMPkO42QLwr0pwEerBzyLPjS
	zVNH/CyIOD8ozSDVb1og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9Dqv-0007fg-Gw; Sat, 14 Sep 2019 19:37:01 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9Dqd-0007f1-3w
 for linux-arm-kernel@lists.infradead.org; Sat, 14 Sep 2019 19:36:44 +0000
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Ludovic.Desroches@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="Ludovic.Desroches@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Ludovic.Desroches@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: keNpXfLXUMoDMxEwDXkh1mbph9oViuJ4JrpXrJ1xCqVup2vET7FDtb/AgXnpGSP8bhWt3hK3ED
 M2ecOs3Uzbx/jrAqI0h1XFbDiPrHDVi8jLp9RRSbdUNcbC7kgoF5pTk5/7Rn1v81U5Y5pPPJGw
 4VrpogipfA5ZH0fLogMBvjEhSyttU5D5yM0YDXpik8iBIcZjBJ/QkWKiT6eQUu/I0uYCaDVJsB
 QDupPgUqYtqi8/8L9NJRY2wtZzdem1JzD05xhgGXzZWgO8+O8CZ9yp5WBa1pumUaMXN77ZBc4Z
 29E=
X-IronPort-AV: E=Sophos;i="5.64,506,1559545200"; d="scan'208";a="49099072"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 14 Sep 2019 12:36:41 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sat, 14 Sep 2019 12:36:41 -0700
Received: from localhost (10.10.85.251) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Sat, 14 Sep 2019 12:36:40 -0700
Date: Sat, 14 Sep 2019 21:36:40 +0200
From: Ludovic Desroches <ludovic.desroches@microchip.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH] pinctrl: at91-pio4: implement .get_multiple and
 .set_multiple
Message-ID: <20190914193640.rukypixp6t54fwfc@sekiro>
Mail-Followup-To: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20190905141304.22005-1-alexandre.belloni@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190905141304.22005-1-alexandre.belloni@bootlin.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190914_123643_170245_C384F4DE 
X-CRM114-Status: GOOD (  15.00  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-gpio@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 05, 2019 at 04:13:04PM +0200, Alexandre Belloni wrote:
> 
> Implement .get_multiple and .set_multiple to allow reading or setting
> multiple pins simultaneously. Pins in the same bank will all be switched at
> the same time, improving synchronization and performances.
> 
> Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

Acked-by: Ludovic Desroches <ludovic.desroches@microchip.com>

Thanks for this improvement. You can keep my ack for v3 as the changes
should be the commit message only. I'll be off for three weeks.

Regards

Ludovic

> ---
>  drivers/pinctrl/pinctrl-at91-pio4.c | 60 +++++++++++++++++++++++++++++
>  1 file changed, 60 insertions(+)
> 
> diff --git a/drivers/pinctrl/pinctrl-at91-pio4.c b/drivers/pinctrl/pinctrl-at91-pio4.c
> index d6de4d360cd4..488a302a60d4 100644
> --- a/drivers/pinctrl/pinctrl-at91-pio4.c
> +++ b/drivers/pinctrl/pinctrl-at91-pio4.c
> @@ -328,6 +328,35 @@ static int atmel_gpio_get(struct gpio_chip *chip, unsigned offset)
>  	return !!(reg & BIT(pin->line));
>  }
>  
> +static int atmel_gpio_get_multiple(struct gpio_chip *chip, unsigned long *mask,
> +				   unsigned long *bits)
> +{
> +	struct atmel_pioctrl *atmel_pioctrl = gpiochip_get_data(chip);
> +	unsigned int bank;
> +
> +	bitmap_zero(bits, atmel_pioctrl->npins);
> +
> +	for (bank = 0; bank < atmel_pioctrl->nbanks; bank++) {
> +		unsigned int word = bank;
> +		unsigned int offset = 0;
> +		unsigned int reg;
> +
> +#if ATMEL_PIO_NPINS_PER_BANK != BITS_PER_LONG
> +		word = BIT_WORD(bank * ATMEL_PIO_NPINS_PER_BANK);
> +		offset = bank * ATMEL_PIO_NPINS_PER_BANK % BITS_PER_LONG;
> +#endif
> +		if (!mask[word])
> +			continue;
> +
> +		reg = atmel_gpio_read(atmel_pioctrl, bank, ATMEL_PIO_PDSR);
> +		bits[word] |= mask[word] & (reg << offset);
> +
> +		pr_err("ABE: %d %08x\n", bank, bits[word]);
> +	}
> +
> +	return 0;
> +}
> +
>  static int atmel_gpio_direction_output(struct gpio_chip *chip, unsigned offset,
>  				       int value)
>  {
> @@ -358,11 +387,42 @@ static void atmel_gpio_set(struct gpio_chip *chip, unsigned offset, int val)
>  			 BIT(pin->line));
>  }
>  
> +static void atmel_gpio_set_multiple(struct gpio_chip *chip, unsigned long *mask,
> +				    unsigned long *bits)
> +{
> +	struct atmel_pioctrl *atmel_pioctrl = gpiochip_get_data(chip);
> +	unsigned int bank;
> +
> +	for (bank = 0; bank < atmel_pioctrl->nbanks; bank++) {
> +		unsigned int bitmask;
> +		unsigned int word = bank;
> +
> +#if ATMEL_PIO_NPINS_PER_BANK != BITS_PER_LONG
> +		word = BIT_WORD(bank * ATMEL_PIO_NPINS_PER_BANK);
> +#endif
> +		if (!mask[word])
> +			continue;
> +
> +		bitmask = mask[word] & bits[word];
> +		atmel_gpio_write(atmel_pioctrl, bank, ATMEL_PIO_SODR, bitmask);
> +
> +		bitmask = mask[word] & ~bits[word];
> +		atmel_gpio_write(atmel_pioctrl, bank, ATMEL_PIO_CODR, bitmask);
> +
> +#if ATMEL_PIO_NPINS_PER_BANK != BITS_PER_LONG
> +		mask[word] >>= ATMEL_PIO_NPINS_PER_BANK;
> +		bits[word] >>= ATMEL_PIO_NPINS_PER_BANK;
> +#endif
> +	}
> +}
> +
>  static struct gpio_chip atmel_gpio_chip = {
>  	.direction_input        = atmel_gpio_direction_input,
>  	.get                    = atmel_gpio_get,
> +	.get_multiple           = atmel_gpio_get_multiple,
>  	.direction_output       = atmel_gpio_direction_output,
>  	.set                    = atmel_gpio_set,
> +	.set_multiple           = atmel_gpio_set_multiple,
>  	.to_irq                 = atmel_gpio_to_irq,
>  	.base                   = 0,
>  };
> -- 
> 2.21.0
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
