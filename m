Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9C4A8CFA1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 11:31:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DBsBayNHpFmZuD+ATv3rpRwhl9D0QomMvLeGOfgNoQQ=; b=AVbE6YGxT3Kj1UrKKupSrSIIZ
	zBZm2cuppO0rlUELKhadmKn05Wn/emQHU9V1S48+u3SJNbABHmRiRh3epNpz5itzX3gZUWZ4kZuWm
	bE6+RfG7JtfoTvmM4bckdM8D9H99T6vo655jClHPKeEMnOZ01fBr+8RBRCMHzZPm6bs6Qo+JYFPen
	nczUGwHGBiIrsVErWnWrhzyU28jl5OdMH5uoyydP1fKHWmSK5Ve1CQgg8RMeAk0lnynRohC74jxiq
	sNb1CJrwAG2CwAOjYsw1BzEDPmEdtX6g0dHncjHcAZPw4j9SzZ2mYdnQdZhWZL/yOhQNHdDrisUtf
	khei4t9rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxpd2-0005yz-9W; Wed, 14 Aug 2019 09:31:36 +0000
Received: from mail-ed1-f100.google.com ([209.85.208.100])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxpbj-00055S-15
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 09:30:16 +0000
Received: by mail-ed1-f100.google.com with SMTP id f22so6490177edt.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 02:30:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=v9qswxVy3dhs4GBr5jsRkUeG6VCbad8w9toRrnKPrhA=;
 b=c+xU2fakIyTOruiJu1Yaafst/0Gw7o2Pofsm/GAJcrcI4sLCi94a28Zi29nKnenQX8
 VluSsYXQFlHbVYxVF0zEqBd1vqaoBii8MWFL0DA6CimT5NRspoPrVHG5irjhLpVufgqU
 2AhRc5rnbXfgTd9nmFz0aMUfYEOvUBUpofeCTi+hbjD3kGsgyolx4XI8Dg7lbw76hapg
 8Qf089UqLEeh16o35tRpFwSxrkiVWSWalRuEnCxkYziv+SM2wCOyVjrNGPvMda+4prQs
 2Y2BLXML7p901B0UO2iKHy2McrcDw/pohY0cYw9QMYDfJs0iSn+GcdBucV9QdBTCmcNm
 ubOg==
X-Gm-Message-State: APjAAAUTbn/GsI3bVhmfSuu7oLHQIwxjhJSIdwImLa6nJZbx/hTbBsW0
 06zaPH9K/YpilEV94ayO47ekzIde+lEQTuc5pSiQrIL0ZnuZp+hQ5ngOfv3BZ7889g==
X-Google-Smtp-Source: APXvYqyn2COYFbRgFubQJiRoUpBUtvfPHPFcJS7BJSMtk+eyrvFPgPJaildqaSGQJ5Xqjr4NHfOpp16s8q6E
X-Received: by 2002:a50:eb8f:: with SMTP id y15mr46657373edr.31.1565775012649; 
 Wed, 14 Aug 2019 02:30:12 -0700 (PDT)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk.
 [2a01:7e01::f03c:91ff:fed4:a3b6])
 by smtp-relay.gmail.com with ESMTPS id dd24sm47927ejb.47.2019.08.14.02.30.12
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 14 Aug 2019 02:30:12 -0700 (PDT)
X-Relaying-Domain: sirena.org.uk
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1hxpbg-0004iH-3X; Wed, 14 Aug 2019 09:30:12 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 3A9C92742B4F; Wed, 14 Aug 2019 10:30:11 +0100 (BST)
Date: Wed, 14 Aug 2019 10:30:11 +0100
From: Mark Brown <broonie@kernel.org>
To: codekipper@gmail.com
Subject: Re: [PATCH v5 02/15] ASoC: sun4i-i2s: Add set_tdm_slot functionality
Message-ID: <20190814093011.GD4640@sirena.co.uk>
References: <20190814060854.26345-1-codekipper@gmail.com>
 <20190814060854.26345-3-codekipper@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190814060854.26345-3-codekipper@gmail.com>
X-Cookie: Bridge ahead.  Pay troll.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_023015_321259_F4475898 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.100 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
 lgirdwood@gmail.com, be17068@iperbole.bo.it, linux-sunxi@googlegroups.com,
 maxime.ripard@free-electrons.com, wens@csie.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6873270858422956079=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6873270858422956079==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="/3yNEOqWowh/8j+e"
Content-Disposition: inline


--/3yNEOqWowh/8j+e
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 14, 2019 at 08:08:41AM +0200, codekipper@gmail.com wrote:
> From: Marcus Cooper <codekipper@gmail.com>
>=20
> Codecs without a control connection such as i2s based HDMI audio and
> the Pine64 DAC require a different amount of bit clocks per frame than

This isn't a universal property of CODECs without a control, and it's
something that CODECs with control can require too.

>  	return sun4i_i2s_set_clk_rate(dai, params_rate(params),
> -				      params_width(params));
> +				      i2s->tdm_slots ?
> +				      i2s->slot_width : params_width(params));

Please write normal conditional statements unless there's a strong
reason to do otherwise, it makes things more legible.

> +static int sun4i_i2s_set_dai_tdm_slot(struct snd_soc_dai *dai,
> +				      unsigned int tx_mask,
> +				      unsigned int rx_mask,
> +				      int slots, int width)
> +{
> +	struct sun4i_i2s *i2s =3D snd_soc_dai_get_drvdata(dai);
> +
> +	i2s->tdm_slots =3D slots;
> +
> +	i2s->slot_width =3D width;
> +
> +	return 0;
> +}

No validation of the parameters here?

--/3yNEOqWowh/8j+e
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1T1KIACgkQJNaLcl1U
h9CHugf6AjRO807eogpoF+xMNPWXjrK1Id3f+lBIjI+eQIHyysNsaOoU2cQm/xpC
oDixIET5TAwZtKrSpkmHPVk9ZdJFE8nzoUiZMauPOO+HKM9gxv73e4YXXimy08Id
KWmW6ajMPF2vgbrlU9j4HyPF/PxSxlDeqz4gzzhQ0SITqZa4TVFCdgM5xGuoAOLT
FVoipx99YfkemyMLeUmW+WS9z+cgq9EHznThZa/kKkdCxJLErL4JPuhOQ2s7o5JH
fB9HoFqiF8YFLE3tkcUf7qhIwq5913DuC2PH3bX4GPleK1PfH41JvD0+QBj1Aw00
BLuoNb+o7HReyWJhvgG0NOHxFgnQgw==
=bgB5
-----END PGP SIGNATURE-----

--/3yNEOqWowh/8j+e--


--===============6873270858422956079==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6873270858422956079==--

