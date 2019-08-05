Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 442B881AF8
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 15:11:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kswl14jov1+VehavwagbcFV7OzB4QGjHO/UQwLEywrQ=; b=QlB0rmMJSvgek0r2mXgmLyYm7
	eZs2x1Ew89Xa1dPVlnpK62Pj1Sq4YcGi/+7iDqUqLL0eZletFuctOuKeZeRbHDik+w6rB//4acZpD
	NlkDTKwykz33M3rhgKxO7sA/EJiC4yj6Otk89/d8iLFtBSlqmhSYpnA+v9LX2NELdW3HjLj9mH/en
	qQmfHUseSRVmrC5Qbmo7nM75b8UXrsOkd4APJTn7sGevTs8ei7lsKzaZhGq5P+OmEE1+ftFuU2jLn
	WYemDailQXWKt3VjcUX+IUydD1iI1HwXIg8nVyRnkLT9oK7Z8kFAdXWxMpOxpOxhQkLIXPH1DnmBu
	0qsDX2xZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huclP-0004rF-7R; Mon, 05 Aug 2019 13:10:59 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huclA-0004qT-Sn; Mon, 05 Aug 2019 13:10:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VrCAPwQwFTw1if53nWlT2zlercpavRMIEI0XwlCoYsQ=; b=Ms5BxrLVteV4zzh+7oV/uBRGh
 TXR3nX5sfpayQu52G/5XB9tCD8Fna9FaGr4vBwbShA7ReHxN2SGNGnBOGSGnHmOK3RqFjGou6SgsA
 d8M36V3YTUebG4vAkZ0rxqUueGAJPpA4eEHL2aLxIWLBLMwN6g163SKd+kHbGr7zBxXnU=;
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hucky-0000Js-H6; Mon, 05 Aug 2019 13:10:32 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id D91112742D06; Mon,  5 Aug 2019 14:10:30 +0100 (BST)
Date: Mon, 5 Aug 2019 14:10:30 +0100
From: Mark Brown <broonie@kernel.org>
To: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
Subject: Re: [PATCH v4 07/10] regulator: mt6358: Add support for MT6358
 regulator
Message-ID: <20190805131030.GE6432@sirena.org.uk>
References: <1564982518-32163-1-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1564982518-32163-8-git-send-email-hsin-hsiung.wang@mediatek.com>
MIME-Version: 1.0
In-Reply-To: <1564982518-32163-8-git-send-email-hsin-hsiung.wang@mediatek.com>
X-Cookie: Place stamp here.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_061044_936499_E58C2984 
X-CRM114-Status: GOOD (  14.18  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, srv_heupstream@mediatek.com,
 devicetree@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 Liam Girdwood <lgirdwood@gmail.com>, linux-kernel@vger.kernel.org,
 Richard Fontana <rfontana@redhat.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Allison Randal <allison@lohutok.net>,
 linux-rtc@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 Lee Jones <lee.jones@linaro.org>, Kate Stewart <kstewart@linuxfoundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============9031348581794275148=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============9031348581794275148==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xJK8B5Wah2CMJs8h"
Content-Disposition: inline


--xJK8B5Wah2CMJs8h
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Aug 05, 2019 at 01:21:55PM +0800, Hsin-Hsiung Wang wrote:

> +static const u32 vmch_voltages[] = {
> +	2900000, 3000000, 3300000,
> +};

> +static const u32 vemc_voltages[] = {
> +	2900000, 3000000, 3300000,
> +};

Several of these tables appear to be identical.

> +static inline unsigned int mt6358_map_mode(unsigned int mode)
> +{
> +	return mode == MT6358_BUCK_MODE_AUTO ?
> +		REGULATOR_MODE_NORMAL : REGULATOR_MODE_FAST;
> +}

There is no need for this to be an inline and please write normal
conditional statements to improve legibility.  There's other examples in
the driver.

> +static int mt6358_get_buck_voltage_sel(struct regulator_dev *rdev)
> +{
> +	int ret, regval;
> +	struct mt6358_regulator_info *info = rdev_get_drvdata(rdev);
> +
> +	ret = regmap_read(rdev->regmap, info->da_vsel_reg, &regval);
> +	if (ret != 0) {
> +		dev_info(&rdev->dev,
> +			 "Failed to get mt6358 Buck %s vsel reg: %d\n",
> +			 info->desc.name, ret);

dev_err() for errors here and throughout the driver.

> +		return ret;
> +	}
> +
> +	ret = (regval >> info->da_vsel_shift) & info->da_vsel_mask;
> +
> +	return ret;
> +}

This looks like a standard get_voltage_sel_regmap()?

> +err_mode:
> +	if (ret != 0)
> +		return ret;
> +
> +	return 0;

Or just return ret unconditionally?

--xJK8B5Wah2CMJs8h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1IKsYACgkQJNaLcl1U
h9AMIggAg397SgwCnQsqUm0bErtFXMF3frCb8lQZCc/BOEjOShATbn9igZbM6ZTU
QxQabCCpti0hAUqGHB6ye8q+OlI13w8ShOMg6+VJxOhec2ihBGLtkbhJguoZtfVI
v+cqPZf3DxmDs1QCqMQTHdKK47Zjf2GN7XMEubNifpcWlkAHTcrQ8NGTC+8vGcCj
5Ss9eBuRyAO0c5Z08Nsxh70MhK6FnHzwXDzlaOPDXbQWfxouTBvNLHN2LtGeNLDO
St8mmX2B4jwvOLjItqqhsATzbH+DwoBGSOUtRNFbwIh+/UeZfwpwQJJk5U0FsgwC
4K6rYZLMhm8RQGlTWwS3xPlqirZbvg==
=1DeU
-----END PGP SIGNATURE-----

--xJK8B5Wah2CMJs8h--


--===============9031348581794275148==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============9031348581794275148==--

