Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4186914CBC0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Jan 2020 14:52:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VqQH+2ffCNiaD8h1RDe9mktz7FZl5Y6w2rDWGIougbI=; b=FqW8gRdovMwvw4CtIvNDJ7xRK
	Dbf4YIQvHbJExVJTBMCpwFwlHSMsEnMyXpT/68i9goHXTDRCyhS2kbazUWqXYNAAlPxuGGAVqvz/Y
	UvIZP8tEzovF+cetk6demAoDdrUeKDtWmpEvqKfaKSHjRIYowkiKMIu/NQNyikh+r74kJ58uqjLMT
	N/eXobnWdjUy1zRYF5/zQc/ZYlIIhLy0vJp0udNGvMQphJsUseu8c5guBgO0ISuqAwqs25h3az5He
	D+a+PsMubF86JCfnGj9zsKNBJzuac1pW3y+Dmsa1dyPajZLgXoEkbZVBh6PMSmyHWeR0uvklpApEc
	wPR/lBkoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwnlT-00087L-Uq; Wed, 29 Jan 2020 13:52:19 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwnlI-00086E-Kj
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Jan 2020 13:52:10 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 75568AD85;
 Wed, 29 Jan 2020 13:52:05 +0000 (UTC)
Message-ID: <b4c4b18eabe845e4cc3e0e1d5af2f3aa7b9091c7.camel@suse.de>
Subject: Re: [RFC PATCH 2/4] pinctrl: bcm2835: Refactor platform data
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Stefan Wahren <stefan.wahren@i2se.com>, Florian Fainelli
 <f.fainelli@gmail.com>, Linus Walleij <linus.walleij@linaro.org>, Ray Jui
 <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>
Date: Wed, 29 Jan 2020 14:52:03 +0100
In-Reply-To: <1580148908-4863-3-git-send-email-stefan.wahren@i2se.com>
References: <1580148908-4863-1-git-send-email-stefan.wahren@i2se.com>
 <1580148908-4863-3-git-send-email-stefan.wahren@i2se.com>
User-Agent: Evolution 3.34.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_055208_970032_5E15AD65 
X-CRM114-Status: GOOD (  15.73  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-gpio@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============2251728914907351671=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2251728914907351671==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-d10hOAw7/iXklX9kAd3Z"


--=-d10hOAw7/iXklX9kAd3Z
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Stefan,
thanks for the series!

On Mon, 2020-01-27 at 19:15 +0100, Stefan Wahren wrote:
> This prepares the platform data to be easier to extend for more GPIOs.
> Except of this there is no functional change.
>=20
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> ---

[...]

> @@ -1083,6 +1112,7 @@ static int bcm2835_pinctrl_probe(struct platform_de=
vice
> *pdev)
>  	struct device *dev =3D &pdev->dev;
>  	struct device_node *np =3D dev->of_node;
>  	struct bcm2835_pinctrl *pc;
> +	struct bcm_plat_data *pdata;

You could define this as const...

>  	struct gpio_irq_chip *girq;
>  	struct resource iomem;
>  	int err, i;
> @@ -1108,7 +1138,13 @@ static int bcm2835_pinctrl_probe(struct platform_d=
evice
> *pdev)
>  	if (IS_ERR(pc->base))
>  		return PTR_ERR(pc->base);
> =20
> -	pc->gpio_chip =3D bcm2835_gpio_chip;
> +	match =3D of_match_node(bcm2835_pinctrl_match, pdev->dev.of_node);
> +	if (!match)
> +		return -EINVAL;
> +
> +	pdata =3D (struct bcm_plat_data *)match->data;

...and drop this cast.

> +
> +	memcpy(&pc->gpio_chip, pdata->gpio_chip, sizeof(pc->gpio_chip));
>  	pc->gpio_chip.parent =3D dev;
>  	pc->gpio_chip.of_node =3D np;
> =20
> @@ -1159,19 +1195,14 @@ static int bcm2835_pinctrl_probe(struct
> platform_device *pdev)
>  		return err;
>  	}
> =20
> -	match =3D of_match_node(bcm2835_pinctrl_match, pdev->dev.of_node);
> -	if (match) {
> -		bcm2835_pinctrl_desc.confops =3D
> -			(const struct pinconf_ops *)match->data;
> -	}
> -
> -	pc->pctl_dev =3D devm_pinctrl_register(dev, &bcm2835_pinctrl_desc, pc);
> +	memcpy(&pc->pctl_desc, pdata->pctl_desc, sizeof(pc->pctl_desc));

I suggest doing (here and below):

	pc->pctl_desc =3D *pdata->pctl_desc;

> +	pc->pctl_dev =3D devm_pinctrl_register(dev, &pc->pctl_desc, pc);
>  	if (IS_ERR(pc->pctl_dev)) {
>  		gpiochip_remove(&pc->gpio_chip);
>  		return PTR_ERR(pc->pctl_dev);
>  	}
> =20
> -	pc->gpio_range =3D bcm2835_pinctrl_gpio_range;
> +	memcpy(&pc->gpio_range, pdata->gpio_range, sizeof(pc->gpio_range));
>  	pc->gpio_range.base =3D pc->gpio_chip.base;
>  	pc->gpio_range.gc =3D &pc->gpio_chip;
>  	pinctrl_add_gpio_range(pc->pctl_dev, &pc->gpio_range);

Regards,
Nicolas


--=-d10hOAw7/iXklX9kAd3Z
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl4xjgMACgkQlfZmHno8
x/5JwAf9FcQOs7WwV7QJ+nt29U48mXMjZhtcYmyn6DKR1pMZjkiT0bDey6lFCqFw
/GO7cinvI0n8LWSSTlqcfTNfSx8i4/S3HVBwwsH89e5aiXqjNsOhJVvjjZJapVcC
V9oMmxsstrTuQJXFFyufCcOTOxrZDIy93J1bu+4/UTITv9DuvmV74YDAi42880u+
41/ZgmJJkAgcirVoODK4lrbocd1ilh2mUFYcu9Of2oA3/MA0XSz50EpS1iHhZtSP
u6bZFQhOlT/nT2d+WfB9aem95yg+XWcMCA/OHkRgpFWNlFoTOxRrZWRBrOP/Toa3
+HAulEAOla3nDKnnaVFYAAbFncB5kA==
=B3Z4
-----END PGP SIGNATURE-----

--=-d10hOAw7/iXklX9kAd3Z--



--===============2251728914907351671==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2251728914907351671==--


