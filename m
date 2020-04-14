Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE96F1A8080
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 16:55:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/37QzZH0Esnh3jVxnLJ7HHt3uww9+guf9wrzoeEDT3E=; b=JpYbR6AJW8tbnkXOIW37zqB+K
	ClHJcinFATxeUcyykp0P71DspjZw/ZGf8FNxnUWUkIOwYbewdiAXT4ANEgqZp/tCMjzwimsys2D3I
	dpbuEqUxiq1rAIXJ28bT8YB9dxJRYPbUghXnIoUzVyAkMNfJFrXEtGJE7cgsJxZlPg0Z8oALHVkXb
	aoCWpFSqMk4PnNzslm7agfD70XtG3RZ9hLlc95eBH7VJ3Ayrcs2o04jHgdWsBMbK4FZWF6Euf/PIF
	UwN3z1h9OSirNtX3I68jGhWm/MExA9xxnNkSoq4BYffs57YQawV8Ob8IpraEVux03dLCTzFzswG8L
	6eC70QIrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOMxm-0000MY-F2; Tue, 14 Apr 2020 14:54:58 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOMxa-0000M8-TL
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 14:54:48 +0000
Received: by mail-wr1-x441.google.com with SMTP id t14so1443326wrw.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 07:54:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=cx/An3FrYpvsA3Jo+TX90hd+pBWFVDPUJAu6kOERHiM=;
 b=pQDGtbOFHglLib4MrJQ3AZdvm9iFmmTkqVo50rcVd2ZP0weofC494Uw9u2Cs87pZst
 zLA8VKZgh2BJPGE3jmZ7RhqsK+ocgUpB/W2Z39t9Oy28epKam0ChWs3AC3NX9OZh2x54
 l1mbvGQwC+mlkEvswNNa0GWg2APmw3QIiUKecxSfcfP9qJVZyS0P+neT6xprHQvPShxi
 QCcauAj33LQdsb+49mMhBnyjBm9ZfQ3vnNKHlTisturVOxMMEAPnINVbFr5CciwxQUmB
 SqS6fZJn1SvSmXZ5f4GEqd//UUptcup+XkU8E11hAAxigjQUxbETytxpOFhsnky8oYuH
 gMfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=cx/An3FrYpvsA3Jo+TX90hd+pBWFVDPUJAu6kOERHiM=;
 b=XFs4KQIBDzWcDie82qQy5TfpAejfxPJea7CO1s1juN5FymcTpT3taoVl7aDGNjCP8U
 QHE2yI94btzL/yoolynPwX00PRJJYgqbf2PG6Z+0RG8HoQufWETeShmNlKyxcSsllb7d
 AHRd8r5kDr5mvBEOwrQpkAg+pDRtUTudPk9z857NnMs0kt0yQX5HeY1V00sp2jcwuKVd
 YrJLBVZokQ6xuWCQyIN1o+yGl+JAsM/11DokRSt1HAYGRRJc2FiAoSACbo3Kq5BLGu4j
 rTnKNrP1NnWoDJk5jOq0/4FjrrMfsyUUsElITS/tg/0J+4oi54hrdAQwRdxhkCOcv409
 5ZIg==
X-Gm-Message-State: AGi0PuaeMto0a1N1Quu02dQVibMLqMRF01NyWhDFvnw+My/jJWvAd2yS
 IndT9QYbADsD1vkYOTeUJAy9ne/l
X-Google-Smtp-Source: APiQypKhWP6c2ZqXCCHUc5zNd3KCJ2EYnMaDh0pr3xp87FB6fK/p/Kq9K1noTp6aNMqnCUiSbaIPjQ==
X-Received: by 2002:a5d:49cb:: with SMTP id t11mr10499248wrs.91.1586876084678; 
 Tue, 14 Apr 2020 07:54:44 -0700 (PDT)
Received: from localhost (pD9E51D62.dip0.t-ipconnect.de. [217.229.29.98])
 by smtp.gmail.com with ESMTPSA id z11sm19615784wrv.58.2020.04.14.07.54.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 07:54:43 -0700 (PDT)
Date: Tue, 14 Apr 2020 16:54:42 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v6 09/14] memory: tegra: Add EMC scaling support code for
 Tegra210
Message-ID: <20200414145442.GJ3593749@ulmo>
References: <20200409175238.3586487-1-thierry.reding@gmail.com>
 <20200409175238.3586487-10-thierry.reding@gmail.com>
 <a9afb1b5-3141-4923-c7fa-194228081e1b@gmail.com>
MIME-Version: 1.0
In-Reply-To: <a9afb1b5-3141-4923-c7fa-194228081e1b@gmail.com>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_075446_974896_339031FE 
X-CRM114-Status: GOOD (  17.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Jon Hunter <jonathanh@nvidia.com>,
 Rob Herring <robh+dt@kernel.org>, Joseph Lo <josephl@nvidia.com>,
 linux-tegra@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3021781503337454955=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3021781503337454955==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="QxN5xOWGsmh5a4wb"
Content-Disposition: inline


--QxN5xOWGsmh5a4wb
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 09, 2020 at 10:16:46PM +0300, Dmitry Osipenko wrote:
> 09.04.2020 20:52, Thierry Reding =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> ...
> > +static int tegra210_emc_set_rate(struct device *dev,
> > +				 const struct tegra210_clk_emc_config *config)
> > +{
> > +	struct tegra210_emc *emc =3D dev_get_drvdata(dev);
> > +	struct tegra210_emc_timing *timing =3D NULL;
> > +	unsigned long rate =3D config->rate;
> > +	s64 last_change_delay;
> > +	unsigned long flags;
> > +	unsigned int i;
> > +
> > +	if (rate =3D=3D emc->last->rate * 1000UL)
> > +		return 0;
>=20
> Couldn't all the rates be expressed in Hz? Then you won't need all these
> multiplications by 1000.

The EMC table is generated with kHz and I'd rather not change the values
in those entries. There's only a few cases where we need to convert from
one to the other, and they are always only when we compare a CCF rate to
the EMC rate, so I think it's fairly explicit when it's needed.

> > +	for (i =3D 0; i < emc->num_timings; i++) {
> > +		if (emc->timings[i].rate * 1000UL =3D=3D rate) {
> > +			timing =3D &emc->timings[i];
> > +			break;
> > +		}
> > +	}
> > +
> > +	if (!timing)
> > +		return -EINVAL;
> > +
> > +	if (rate > 204000000 && !timing->trained)
> > +		return -EINVAL;
> > +
> > +	emc->next =3D timing;
> > +	last_change_delay =3D ktime_us_delta(ktime_get(), emc->clkchange_time=
);
> > +
> > +	/* XXX use non-busy-looping sleep? */
> > +	if ((last_change_delay >=3D 0) &&
> > +	    (last_change_delay < emc->clkchange_delay))
> > +		udelay(emc->clkchange_delay - (int)last_change_delay);
> > +
> > +	spin_lock_irqsave(&emc->lock, flags);
> > +	tegra210_emc_set_clock(emc, config->value);
> > +	emc->clkchange_time =3D ktime_get();
> > +	emc->last =3D timing;
> > +	spin_unlock_irqrestore(&emc->lock, flags);
> > +
> > +	return 0;
> > +}
>=20
> I'd suggest to check how much time invocation of ktime_get() takes, at
> least it came to a surprise to me in a case of the tegra-cpuidle driver.
>=20
> It may be well over the emc->clkchange_delay.

I assume that at least each invocation would take roughly the same
amount of time? Since we only use the value to compute the time since
the last clock change the result should always be valid. In the worst
case if ktime_get() really takes that long we may be waiting longer
than we need to, but that wouldn't be all that bad either. Changing
the EMC clock rate isn't something that you want to do a lot.

> ...
> > +static int tegra210_emc_probe(struct platform_device *pdev)
> > +{
> ...
> > +	emc->clkchange_delay =3D 100;
> > +	emc->training_interval =3D 100;
>=20
> Not sure why these aren't a constant with the code.. ?

The idea is to make them easily tunable without having to go hunt for
them later on. We don't use them in a lot of computations, so making
them constants isn't going to buy us a lot. Also, none of these code
paths are really hot, so I like the flexibility that this gives us in
being able to quickly tweak if we ever need to without having to worry
that we'll forget a location.

Thierry

--QxN5xOWGsmh5a4wb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl6VzrIACgkQ3SOs138+
s6FSURAAuHIkM76l/aW376GVZabPFaDTft8S6fSnvsPAacz3OhBF4M0kAK/SjSoq
ce97F/3HY63ernpSMN5gvmnWUi9KU7xdFYUrn3xdRGMk9art6jtN4yzut8Q8oaec
iu6lXrNqDGY9NzngDbmz0GBLjQSxg8oA67TJ5Cl4mL8TWwFFfkUO8+VZzO/xkc3k
rNQgmFbMOKKMecFlDRSHHXBEVOFzLfduRplsi+7bm6S2Qb0Cw2KQvAFBCgKEXgRi
zfz17e3hP03jD3wkmW58MswKBnqvj2aDunaU+rbSxYKQVwen4M81KKt7pryc2V+z
XzBD9DJDjmkW5Cn4AGs3oYuDfzgojT9eoS/I3HshHbACqeIIpIauUpLxtYMEsF2A
KCcHLwZ1G8XUDG1uD8f54eJkL7VidI+vecLpiR069NfDpF6wg1jq4RFWKorUeUd9
05wT5ZfHmzy+aOHh738jOfI6ddmNUTygueMzQKmKCUCLPeq+lxL3Yg5FVkYiQVQu
/rqOlEZNolYcfU2x5C32i0qf0Tx4Dwzsad66wgvC0QpJmMqrVWKEXySGHF76tvvQ
7VdSm6ThYSQNQ4Xhz71+g2hCNNu2/1U+gkpBarP+crQ7nt8zAxR6jZl9hgfDfYq5
S0hZ8vQvEwGMLv/qXWdlQzycOFUl0dNe81DcENQGt7HMCAdRXBs=
=NhUM
-----END PGP SIGNATURE-----

--QxN5xOWGsmh5a4wb--


--===============3021781503337454955==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3021781503337454955==--

