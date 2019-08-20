Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93AE4967B0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 19:39:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yzPO4LeSDF5a8dRgrThxyhNWy/S1iTbO8Bt+d0Zhpss=; b=lKYdE/bN/UQdV7TFmcdjZpepr
	fZrL+4hE65BT5t2iBEQ/ZFnQYHCnpQ5RV5Y3qKpQKItqPAGC0/sfsPB+cjFx5TRxbL2xzgTWscIAX
	MobCkEhRuR7gHtaAxiSXT64/GMZI3zlpi+R17AisjCfhfj1EJW+Bk551dbccRsS3IK4JmMMOajhUM
	rqPncGnr9HaqQ3Wl8aSAMowXC5irph/6f49LJHLlvVmObg4yh0425Nrgcs6RT+IOy0zB5Mewbizkl
	vbiNuBmc2cbIj3jW07xqohxb/bNeanm7zupKf0hPqdz/UkxCE60uCBPPNR4I1iQ3MtkgAhtObLVvI
	bgRPMa6tA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i086G-0000Rt-U6; Tue, 20 Aug 2019 17:39:16 +0000
Received: from mail-wr1-f100.google.com ([209.85.221.100])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0868-0000Qx-1r
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 17:39:09 +0000
Received: by mail-wr1-f100.google.com with SMTP id b16so13259277wrq.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 10:39:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=m7ao7ORH60h0tFo771t8XxOyJrM0P+fZjWuoPCMruUU=;
 b=Gr4fHe8SXBrONcZl7AiLvfZ7xn5ZfOifqZJqPSpRmaw/ZTb+ui12KGy7xnfsXCfG+a
 GJXZVNUZxAHN3xZe5kReMB1UnagiTZryJaOpMNlxAi9lp63hOcMPhGEPHE3k4AxIT8L7
 NXPcOZBTavtWiodPvnZmS5FNezBuJqRAjA6p58VcCjA7OPnylOg26RVfo8NVfSLefRFW
 8aFJW1CEJBAGAPerBftUidVE3bxpz8Q9JixxtnQx7NRkXkWP3gbtsA6Y9ATj5JliCS7V
 1k5FGm0F3kKJzzz68ZIbZTMNXSzYYe8gQKVg2shgCrhEfIdZKmN5P15H8sY4pBkHCuKl
 wlRw==
X-Gm-Message-State: APjAAAVkqBF75wUHAZLAfCU8bq9+RVaf27g4+F1Cz1GiKGYOMvZch9y5
 kwrioFyYRr7VTzuhibRP64UuBGcDxu45RBo0WIiTRmYRyuiRP5BdQHFLTrAPBVGzNA==
X-Google-Smtp-Source: APXvYqzLzv/aLlzn2NHdKvwVs2INSBhJKvCzoIitnolVH0fpSkwLd7iHz1QYiEa9AY9Z0BuWcUR9HGgkrZ69
X-Received: by 2002:a5d:6307:: with SMTP id i7mr36464585wru.144.1566322744775; 
 Tue, 20 Aug 2019 10:39:04 -0700 (PDT)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk.
 [2a01:7e01::f03c:91ff:fed4:a3b6])
 by smtp-relay.gmail.com with ESMTPS id f9sm2448wmj.34.2019.08.20.10.39.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 10:39:04 -0700 (PDT)
X-Relaying-Domain: sirena.org.uk
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1i0864-00031g-Cu; Tue, 20 Aug 2019 17:39:04 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 593B12742B4A; Tue, 20 Aug 2019 18:39:03 +0100 (BST)
Date: Tue, 20 Aug 2019 18:39:03 +0100
From: Mark Brown <broonie@kernel.org>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH 11/21] ASoC: sun4i-i2s: Use the actual format width
 instead of an hardcoded one
Message-ID: <20190820173903.GA5702@sirena.co.uk>
References: <cover.e08aa7e33afe117e1fa8f017119d465d47c98016.1566242458.git-series.maxime.ripard@bootlin.com>
 <fcf77b3bee47b54d81d1a3f4f107312f44388f5a.1566242458.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <fcf77b3bee47b54d81d1a3f4f107312f44388f5a.1566242458.git-series.maxime.ripard@bootlin.com>
X-Cookie: When in doubt, lead trump.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_103908_098659_557506E6 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.100 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: alsa-devel@alsa-project.org, lgirdwood@gmail.com,
 linux-kernel@vger.kernel.org, codekipper@gmail.com,
 Chen-Yu Tsai <wens@csie.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7468363814926829415=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7468363814926829415==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Dxnq1zWXvFF0Q93v"
Content-Disposition: inline


--Dxnq1zWXvFF0Q93v
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 19, 2019 at 09:25:18PM +0200, Maxime Ripard wrote:

>  		regmap_update_bits(i2s->regmap, SUN4I_I2S_FMT0_REG,
>  				   SUN8I_I2S_FMT0_LRCK_PERIOD_MASK,
> -				   SUN8I_I2S_FMT0_LRCK_PERIOD(32));
> +				   SUN8I_I2S_FMT0_LRCK_PERIOD(params_physical_width(params)));

This doesn't build for me:

In file included from sound/soc/sunxi/sun4i-i2s.c:16:
sound/soc/sunxi/sun4i-i2s.c: In function =E2=80=98sun4i_i2s_set_clk_rate=E2=
=80=99:
sound/soc/sunxi/sun4i-i2s.c:360:57: error: =E2=80=98params=E2=80=99 undecla=
red (first use in this function); did you mean =E2=80=98parameq=E2=80=99?
        SUN8I_I2S_FMT0_LRCK_PERIOD(params_physical_width(params)));
                                                         ^~~~~~
=2E/include/linux/regmap.h:75:42: note: in definition of macro =E2=80=98reg=
map_update_bits=E2=80=99
  regmap_update_bits_base(map, reg, mask, val, NULL, false, false)
                                          ^~~
sound/soc/sunxi/sun4i-i2s.c:360:8: note: in expansion of macro =E2=80=98SUN=
8I_I2S_FMT0_LRCK_PERIOD=E2=80=99
        SUN8I_I2S_FMT0_LRCK_PERIOD(params_physical_width(params)));

--Dxnq1zWXvFF0Q93v
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1cMDYACgkQJNaLcl1U
h9A5+wf/R8kszzb6oMjGJWYnQJj4y8zrub+Ef7frMS3FakQtrfpNijxNi57HOXai
jJvL1rK1E89FeYJlt5rPq9DJGlWe8dS9dMvhuz7JhsYl5cn+8m4o1LoUbH6Inv5k
95bWW3IC9IBXhd6MiQwBZZpZ79T1UjHu9UfOF5dOEQ059wu8JCYvA0y/PzyH6kq8
w1MO/wGVaEHT/DMsAs66Mp5/3Ju8DAn9ZaE7ZhrgIsBphf/P+/BZHPU/pQjFEVag
f0ayDyQwRU1t26KvNeIRQpnUXV/N7ZF7j/uQ2mUQDTPjViBLS0uzUw/5bklcAT24
w+0X+AVImMFg+yfuBP7oOP25UCjzbQ==
=C0WO
-----END PGP SIGNATURE-----

--Dxnq1zWXvFF0Q93v--


--===============7468363814926829415==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7468363814926829415==--

