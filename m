Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAD29A818D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 13:56:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NMPzjBZ15MTWMzRU3dRaeOSsFLEv85el+1FO2dtqYV8=; b=Ptsxp5YSb6Hd8ad1ISK7gjFWT
	xsv9Gza5sqfBugTEe9GUcQ/3f7eLSaNnf3vdl/SZ8NQdPoCUSaibLpHyRRdjQS9lbM3ALLacXV5mE
	pXWmgL0YyNFf0fAE8HtRWNecGWxh9vEmu2lak4XDYYhg/gTJh7ifbVS29+BDv0v4j3gx8vqKnkmkC
	gDBMdlfcx4lfanm+AkEc7wgRnY4Jif4wT/g6UZhCuoFOnaAecqI2FS+Ng9oUWf21FqxfwhMyfrsZ7
	MwoMR456SqcpGg2FxB0yWJ/hGsIoEb72wuOJeXCQ/TDpvth+RZ5HIKiZLxVL5VtpnYcIwbm3pVRCC
	K0HTXiqmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Tu6-0001mV-Kq; Wed, 04 Sep 2019 11:56:50 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Ttr-0001m8-Pr; Wed, 04 Sep 2019 11:56:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DBbsf8r5uOYzN+tf0BF20JNGTJbY9WmlICsBkr1a8NU=; b=xlWeFFxHrCDMBztiXN9rlo8jH
 8JrGmZ3VaD7B2cqQBHxSC2Q4Cny4Pt5Lw7NvWRLwE1/6EkM5oPKFAihJ9ss0ZnQFOn6LCsAaKa+oC
 wc/QPCRUrPrgEADCudEqA6s0uJe4jDxcUw4thuNr6vZNPZ9Edzuyw2jpVDjzB6T5jGQLE=;
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1i5Ttn-0005I8-RR; Wed, 04 Sep 2019 11:56:31 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id A64EE2742B45; Wed,  4 Sep 2019 12:56:30 +0100 (BST)
Date: Wed, 4 Sep 2019 12:56:30 +0100
From: Mark Brown <broonie@kernel.org>
To: Richtek Jeff Chang <richtek.jeff.chang@gmail.com>
Subject: Re: [PATCH] [MT6660] Mediatek Smart Amplifier Driver
Message-ID: <20190904115630.GA4348@sirena.co.uk>
References: <1567494501-3427-1-git-send-email-richtek.jeff.chang@gmail.com>
 <20190903163829.GB7916@sirena.co.uk>
 <1a776762-ee65-7344-4bca-c82e16badffa@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1a776762-ee65-7344-4bca-c82e16badffa@gmail.com>
X-Cookie: Help fight continental drift.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_045635_852315_644E52F6 
X-CRM114-Status: GOOD (  20.45  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org, tiwai@suse.com,
 lgirdwood@gmail.com, linux-mediatek@lists.infradead.org,
 matthias.bgg@gmail.com, perex@perex.cz, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4474316529951973138=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4474316529951973138==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xHFwDpU9dbj6ez1V"
Content-Disposition: inline


--xHFwDpU9dbj6ez1V
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Sep 04, 2019 at 03:07:06PM +0800, Richtek Jeff Chang wrote:

> > > +static int32_t mt6660_i2c_update_bits(struct mt6660_chip *chip,
> > > +	uint32_t addr, uint32_t mask, uint32_t data)
> > > +{

> > It would be good to implement a regmap rather than open coding
> > *everything* - it'd give you things like this without needing to open
> > code them.  Providing you don't use the cache code it should cope fine
> > with variable register sizes.

> Due to our hardware design, it is hard to implement regmap for MT6660.

You definitely can't use all the functionality due to the variable
register sizes but using reg_write() and reg_read() should get you most
of it.

> > > +static int mt6660_i2c_init_setting(struct mt6660_chip *chip)
> > > +{
> > > +	int i, len, ret;
> > > +	const struct codec_reg_val *init_table;
> > > +
> > > +	init_table = e4_reg_inits;
> > > +	len = ARRAY_SIZE(e4_reg_inits);
> > > +
> > > +	for (i = 0; i < len; i++) {
> > > +		ret = mt6660_i2c_update_bits(chip, init_table[i].addr,
> > > +				init_table[i].mask, init_table[i].data);
> > > +		if (ret < 0)
> > > +			return ret;

> > Why are we not using the chip defaults here?

> Because MT6660 needs this initial setting for working well.

What are these settings?  Are you sure they are generic settings and
not board specific?

> > > +	if (on_off) {
> > > +		if (chip->pwr_cnt == 0) {
> > > +			ret = mt6660_i2c_update_bits(chip,
> > > +				MT6660_REG_SYSTEM_CTRL, 0x01, 0x00);
> > > +			val = mt6660_i2c_read(chip, MT6660_REG_IRQ_STATUS1);
> > > +			dev_info(chip->dev,
> > > +				"%s reg0x05 = 0x%x\n", __func__, val);
> > > +		}
> > > +		chip->pwr_cnt++;

> > This looks like you're open coding runtime PM stuff?  AFAICT the issue
> > is that you need to write to this register to do any I/O.  Just
> > implement this via the standard runtime PM framework, you'll need to do
> > something about the register I/O in the controls (ideally in the
> > framework, it'd be a lot easier if you did have a cache) but you could
> > cut out this bit.

> In our experience, some Customer platform doesn't support runtime PM.

Tell your customers to turn it on, it's a standard kernel framework and
there's really no excuse for open coding it.  If there's some reason why
runtime PM can't work for them then we should get that fixed but it
really is *very* widely deployed.

--xHFwDpU9dbj6ez1V
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1vpm0ACgkQJNaLcl1U
h9D/Wgf/fF6J63LckawJfQOykVgSmyHQqs469Lx+ZiWwED24peJ4nfDP41ehqc2N
jIXIbNv3uhy0SKfDxmczPs6zHyy+XgWw3pHOHVQR7SX2ZBIU/JwBYSYtmJiZW9yo
GWU/tn7Yql2ApiXs1VRjJfCeiHWCpPg4WTAGOjP2LUeALkQasMQI9nwtqEoJWSyz
tZ15Q9sb3HyKa1Pl0qmh4IPIIQvCtpvD3DdTyHs8OZGFlWzUg5WC17sjRLpbqgxd
d75ADeY84KntmV55haCavSYQGD5cjIMD1pWRc5Ln0yOUKO3H3gwUHqgOgafmUbmc
cTfAzmpdBvy1P5aHKQZ0z6uU7LT39g==
=jNHe
-----END PGP SIGNATURE-----

--xHFwDpU9dbj6ez1V--


--===============4474316529951973138==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4474316529951973138==--

