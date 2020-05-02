Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F5201C27EB
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 May 2020 21:04:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WZjJG774vdn4JcWnddzTFkCJy9nLDSZbuu0fi6VNyUQ=; b=i2xL6xcsY+ExR3/JivnGSIual
	CjnCSD33PgfWLe3hdiAqaTlwaNatuuvC0TU8i2cuZQkHBt3U/K2TJrfIWqpjDqdGobFrwcPk7VPEs
	fegXpWhI653BMoc/2TswBDbx5dVZzQGgQaaAfx2b7ttQollI7IKPSwT+mwN4w5SdKpcGRA7go1Sho
	p+vlnglfZUBWtP2vorwPI9s7MzqZNLE2tNmHWFJc4tPx013mysPtZvzWqo1Hj+vpPAa7BeZ3SZs2/
	b1mUpNW887EDv+QatrBd0PYJZOZR3wlc3MjeqqYnmfM7qMRfke4Ra8mRVZ8CcDUJo/sThbjGKSpyt
	9HiU9hZ3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUxQw-0004DI-Cq; Sat, 02 May 2020 19:04:18 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUxQp-0004Cf-Th
 for linux-arm-kernel@lists.infradead.org; Sat, 02 May 2020 19:04:13 +0000
Received: by mail-qk1-x742.google.com with SMTP id c10so1514437qka.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 02 May 2020 12:04:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=NCkYmcZHW96yoAmdNeGIwLYX03v3lBdaBnxjiFgb2Tw=;
 b=F3LXI5S3+KmP+lqTW4V5BD9oG1d/7FfFHT8v/kkMqZYbKRFzk7Qcj01aGgD/HOgy5M
 QGTLk/VkEPOQsPRL4BacdeWTgroqUUEzNiqEBOUN9Trc9MAna1tuHR6QosR4aA3nuWOl
 zK2tAiNIEVM8c7g1ht4G4AKT42I9tJN7rZM3LQkZuRNZlJE/1nqTiJ3sgSsXkQsR3bn2
 B0I3IDwT5cwgPpBM8OgCQpiztboHxWKD+Z/VH1pzMAsaIHfgJC8DKP1m8RA2aCO2CTVc
 SF7gUFD0HlXqqp5gQLlKQ/C8jMJHGCXDCTrqX6SEDFYXVQ1jDAZw6JU8RdMLybVpDBGY
 FoQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=NCkYmcZHW96yoAmdNeGIwLYX03v3lBdaBnxjiFgb2Tw=;
 b=a8e6l56KwziUKwlXczs/PRTHmC4eNyk4jxofb+nUZm/lvzvpgFw2BBhc2SL5TcA/bU
 4zAw7SWpebCG8dhZJ27sw0F/lC2P+N2DeDGp3/zxUHVH3H+QmVIx/nuwR3je0eDuZ4YD
 wP1vItSCOjyPOSG6AScykKyOoqJUqNm/mOLyIZmhpPvXzxo5VHLeTLk2GvtFsl/OpE9b
 f4hUfv70A4kRc7RFngStLGCRzzed59v+zpygbg70ozzQApRsersKnxupXzrC56TPqoe5
 nYo4szoQtJo5z8P5Jhl2Nk8utV1StTBqKpJ4cIbG0d8ieuHeYm3rlnF/T0SzbTJYEhVr
 R1Ng==
X-Gm-Message-State: AGi0PuamVzhZujGXFD4bA5Y2YszD9ecXbefh6qDT9vesfPjI+/yTiVo3
 7RjF2LVfIsiHtWNrzqEjboM=
X-Google-Smtp-Source: APiQypIVG5ntpxByj4VpuQirn7n+AhI+45xStyXtk83ebcFqZOjDv7wHeXipdbqhYhw1eGf37Mxosw==
X-Received: by 2002:a37:67c6:: with SMTP id b189mr9289153qkc.188.1588446248756; 
 Sat, 02 May 2020 12:04:08 -0700 (PDT)
Received: from shinobu (072-189-064-225.res.spectrum.com. [72.189.64.225])
 by smtp.gmail.com with ESMTPSA id p24sm6391558qtp.59.2020.05.02.12.04.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 May 2020 12:04:07 -0700 (PDT)
Date: Sat, 2 May 2020 15:03:54 -0400
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: Syed Nayyar Waris <syednwaris@gmail.com>
Subject: Re: [PATCH v4 4/4] gpio: xilinx: Utilize for_each_set_clump macro
Message-ID: <20200502190354.GA6513@shinobu>
References: <cover.1588443578.git.syednwaris@gmail.com>
 <366a64f80ee9fe1c644ea038ac112ead9766d5c8.1588443578.git.syednwaris@gmail.com>
MIME-Version: 1.0
In-Reply-To: <366a64f80ee9fe1c644ea038ac112ead9766d5c8.1588443578.git.syednwaris@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200502_120411_982892_24A16538 
X-CRM114-Status: GOOD (  19.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [vilhelm.gray[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-gpio@vger.kernel.org, linus.walleij@linaro.org,
 michal.simek@xilinx.com, linux-kernel@vger.kernel.org,
 bgolaszewski@baylibre.com, akpm@linux-foundation.org,
 andriy.shevchenko@linux.intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4944860695349303218=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4944860695349303218==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="y0ulUmNC+osPPQO6"
Content-Disposition: inline


--y0ulUmNC+osPPQO6
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, May 03, 2020 at 12:21:54AM +0530, Syed Nayyar Waris wrote:
> This patch reimplements the xgpio_set_multiple function in
> drivers/gpio/gpio-xilinx.c to use the new for_each_set_clump macro.
> Instead of looping for each bit in xgpio_set_multiple
> function, now we can check each channel at a time and save cycles.
>=20
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> Cc: Michal Simek <michal.simek@xilinx.com>
> Signed-off-by: Syed Nayyar Waris <syednwaris@gmail.com>
> Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>
> ---
> Changes in v4:
>  - Minor change: Hardcode value for better code readability.
>=20
> Changes in v3:
>  - No change.
>=20
> Changes in v2:
>  - No change.
>=20
>  drivers/gpio/gpio-xilinx.c | 64 ++++++++++++++++++++------------------
>  1 file changed, 34 insertions(+), 30 deletions(-)
>=20
> diff --git a/drivers/gpio/gpio-xilinx.c b/drivers/gpio/gpio-xilinx.c
> index 67f9f82e0db0..67c5eeaf1bb9 100644
> --- a/drivers/gpio/gpio-xilinx.c
> +++ b/drivers/gpio/gpio-xilinx.c
> @@ -136,39 +136,43 @@ static void xgpio_set(struct gpio_chip *gc, unsigne=
d int gpio, int val)
>  static void xgpio_set_multiple(struct gpio_chip *gc, unsigned long *mask,
>  			       unsigned long *bits)
>  {
> -	unsigned long flags;
> +	unsigned long flags[2];
>  	struct xgpio_instance *chip =3D gpiochip_get_data(gc);
> -	int index =3D xgpio_index(chip, 0);
> -	int offset, i;
> -
> -	spin_lock_irqsave(&chip->gpio_lock[index], flags);
> -
> -	/* Write to GPIO signals */
> -	for (i =3D 0; i < gc->ngpio; i++) {
> -		if (*mask =3D=3D 0)
> -			break;
> -		/* Once finished with an index write it out to the register */
> -		if (index !=3D  xgpio_index(chip, i)) {
> -			xgpio_writereg(chip->regs + XGPIO_DATA_OFFSET +
> -				       index * XGPIO_CHANNEL_OFFSET,
> -				       chip->gpio_state[index]);
> -			spin_unlock_irqrestore(&chip->gpio_lock[index], flags);
> -			index =3D  xgpio_index(chip, i);
> -			spin_lock_irqsave(&chip->gpio_lock[index], flags);
> -		}
> -		if (__test_and_clear_bit(i, mask)) {
> -			offset =3D  xgpio_offset(chip, i);
> -			if (test_bit(i, bits))
> -				chip->gpio_state[index] |=3D BIT(offset);
> -			else
> -				chip->gpio_state[index] &=3D ~BIT(offset);
> -		}
> +	u32 *const state =3D chip->gpio_state;
> +	unsigned int *const width =3D chip->gpio_width;
> +	const unsigned long state_size =3D 32;
> +	const unsigned long total_state_bits =3D state_size * 2;

Hello Syed,

I don't think there's much need for these two variables either. You can
remove the state_size and total_state_bits variables, and instead inline
32 and 64 directly in your code below.

William Breathitt Gray

> +	unsigned long offset, clump;
> +	size_t index;
> +
> +	DECLARE_BITMAP(old, 64);
> +	DECLARE_BITMAP(new, 64);
> +	DECLARE_BITMAP(changed, 64);
> +
> +	spin_lock_irqsave(&chip->gpio_lock[0], flags[0]);
> +	spin_lock_irqsave(&chip->gpio_lock[1], flags[1]);
> +
> +	bitmap_set_value(old, state[0], 0, width[0]);
> +	bitmap_set_value(old, state[1], width[0], width[1]);
> +	bitmap_replace(new, old, bits, mask, gc->ngpio);
> +
> +	bitmap_set_value(old, state[0], 0, state_size);
> +	bitmap_set_value(old, state[1], state_size, state_size);
> +	state[0] =3D bitmap_get_value(new, 0, width[0]);
> +	state[1] =3D bitmap_get_value(new, width[0], width[1]);
> +	bitmap_set_value(new, state[0], 0, state_size);
> +	bitmap_set_value(new, state[1], state_size, state_size);
> +	bitmap_xor(changed, old, new, total_state_bits);
> +
> +	for_each_set_clump(offset, clump, changed, total_state_bits, state_size=
) {
> +		index =3D offset / state_size;
> +		xgpio_writereg(chip->regs + XGPIO_DATA_OFFSET +
> +				index * XGPIO_CHANNEL_OFFSET,
> +				state[index]);
>  	}
> =20
> -	xgpio_writereg(chip->regs + XGPIO_DATA_OFFSET +
> -		       index * XGPIO_CHANNEL_OFFSET, chip->gpio_state[index]);
> -
> -	spin_unlock_irqrestore(&chip->gpio_lock[index], flags);
> +	spin_unlock_irqrestore(&chip->gpio_lock[1], flags[1]);
> +	spin_unlock_irqrestore(&chip->gpio_lock[0], flags[0]);
>  }
> =20
>  /**
> --=20
> 2.26.2
>=20

--y0ulUmNC+osPPQO6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEk5I4PDJ2w1cDf/bghvpINdm7VJIFAl6tw/0ACgkQhvpINdm7
VJILNxAAizO1hWD+T2Ay9Zlch1hjNpo3iqmseCGBISXOB6SsfaYr0KwfbEpzxbHb
pqVfmPg7JqG/CUiEeXPX74QnAL4aLSRUQXO+Sbm0uPMxcl8mPwsmHhyVqrd0+iJi
lB0boE968Hatex9T6PUOe5O97BvNPOBqL9Us66+ji1Iexrq/4n0KykRSyhrQegFE
h3j5YkrfxgPxYePfDnn+wj5zsA8pgMcfGVFAuDI2jQi/S8px+Z2/NRDQSF8rFB7b
nChHKmhMscEqbChCuFsIOO6Rg65nwTIsDUQbCdFhhruAj8Q1v2fqkbEmTGQiu/nz
luKwt5mphkRoTCZLscYSZBhIjaq+xv14rM9Qn4nDtpun/PH4QRH0/PkJf2eaarJy
M1dMHEvS7vDwTx17YUXcXJy0qfVeBsPgTZxcOtTawO51+JmSPwSGpmvFA9wHb7iA
uT15Ba3IcR66z6nDJkMyzVNVRtZoTEEP200LBzYXvrCOIgypykRBn3edFshct2qo
Yup1vzFG69Z/PtninV3tei5QAqnwWkfyBgnzTUiCa57aPM026uxcoDABHbYDnkxk
WwtWn61px3tW5dRYrpxkgWyQ9YBfTfynQNldh2Ls+Kb+Mka1jIi1UqtTfNJdM73w
T7tYHxdR8b2X0qu3qxWW279D6RP1ied04gqzsfPdMa0RmMxMSe4=
=aFyG
-----END PGP SIGNATURE-----

--y0ulUmNC+osPPQO6--


--===============4944860695349303218==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4944860695349303218==--

