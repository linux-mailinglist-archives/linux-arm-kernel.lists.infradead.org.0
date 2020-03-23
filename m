Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB6918F35E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 12:05:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QYjmk/LFflMHm0xGMMMf2t8o2nM1enTnRd3ntbB72jA=; b=QbRkxMl0pCpDipf7CH/NkzQyN
	q5pZPIO+jk634es95fc9aSF9i2MFhrKqRmNW3OzxSmzB6yyGZlkynlcPeuaSqfJLM7fwGIVKUBLYl
	taPn/4ItM15AbO/oifhr6AyR8Gtts/c3fBogcbNb+oDWw4RJaS+2ODMM7AiSgABPZv8XUVyeq1jBj
	ODFAHFBPW0GwxhCRKnTD1SVpZFv6zIJnvT7RX0PDwkcF+QVn0g7IcISNiwlinmtvqf500MX48zdq7
	yUg3hHUtyd9EeOfGx26+Z6yb5T9p3hpq39BCczxOEUoz9zpjIY0A4+G2WGJgDmpzDJ68ujKJNAO0L
	91DhmRNpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGKtu-0007Cs-HJ; Mon, 23 Mar 2020 11:05:46 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGKti-0007CC-NG
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 11:05:36 +0000
Received: by mail-wr1-x441.google.com with SMTP id j17so13069759wru.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Mar 2020 04:05:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=n5IqmciM7J1/WUmGc31nCBaJXVIdQHzoRYVr2A+AxaM=;
 b=rQ0VIgnWmRV8twfDfXP66SOHYe+QLeXBW1nRKp+3zp/v6sR8SPjPpOUQ6pGN+wAGL6
 kXw5BWubN206D1fdTHorlcpnbvusMqFmm4xxd06eWUAmBG6+dFltey56gtV63AMQ2rHh
 mkW3V+Y8/bbsCgihxH9ANjUYNhGZba+VwQzhJYTr0NK8zS4D+COpgeDwO48MeXagJ0Zf
 k7glDhcxpZUDM8UpDsNE/ScnLGRZCDTPNi34CmxKBq0Cio7wKt4wwHSa0mPXcAKQJVGr
 pYZ6putsCwxwD2CRd+Y1ZsruJ4lt3FdEkJ9WmybEXLcRGeccV12Ep8Sp5aEh+CtlX08O
 OpVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=n5IqmciM7J1/WUmGc31nCBaJXVIdQHzoRYVr2A+AxaM=;
 b=igaO8Lqyf5z6owpCaMyj90jeBTF3KvuLsLMx2IMtq1PR8tRRRgm4KuyXWQC2vNv++L
 1nA0u24wvQsCRsElT9ID2RpSL8l6rDPppw4zMQJdDOSm93JCE5JZ9oJCTHj11h38sDww
 GnJHG2JsmYBHXVmHxZFBnPEbPDHYZg71K7Rssq7JAZYEQ8KA7Cj/gqRxYNiRgXbW4oLd
 +cn9vlv2qBO68W4jBlah0C2BqhnCEsylDCI9HGbIjUE4kE+RTrPpfTtYm1wfctg3Yf2S
 jCo6iAIWz8SfSNzV5xamN+g9VcKZ19l3JE5EVaaCLyBIsatnyqlBdsSr4VgbLDEVVaGO
 sFuQ==
X-Gm-Message-State: ANhLgQ1Sf8QaxAFimnfZuF1JZ/dqv4EXdfQJjHchP5EzZe/19+x4rXH2
 oT356l28aIZKH2dbtgB7oPg=
X-Google-Smtp-Source: ADFU+vvQjV0wjKEwuIh9yioJEL7NAU3DgdAsS2sGZo3vAEWFH1x+NECd8Au8y1mbHKvmGstmp8Rnpw==
X-Received: by 2002:adf:9796:: with SMTP id s22mr28506678wrb.31.1584961533542; 
 Mon, 23 Mar 2020 04:05:33 -0700 (PDT)
Received: from localhost (pD9E51CDC.dip0.t-ipconnect.de. [217.229.28.220])
 by smtp.gmail.com with ESMTPSA id n1sm23059060wrj.77.2020.03.23.04.05.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 04:05:32 -0700 (PDT)
Date: Mon, 23 Mar 2020 12:05:31 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v5 3/8] clk: tegra: Implement Tegra210 EMC clock
Message-ID: <20200323110531.GD3883508@ulmo>
References: <20200310152003.2945170-1-thierry.reding@gmail.com>
 <20200310152003.2945170-4-thierry.reding@gmail.com>
 <b5fb83d8-003c-d76b-9dac-7c8ef15f2ab1@gmail.com>
MIME-Version: 1.0
In-Reply-To: <b5fb83d8-003c-d76b-9dac-7c8ef15f2ab1@gmail.com>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_040534_791490_2A587CE0 
X-CRM114-Status: GOOD (  18.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Jon Hunter <jonathanh@nvidia.com>, Rob Herring <robh+dt@kernel.org>,
 Joseph Lo <josephl@nvidia.com>, linux-tegra@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2643154049275351671=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2643154049275351671==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="C1iGAkRnbeBonpVg"
Content-Disposition: inline


--C1iGAkRnbeBonpVg
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 10, 2020 at 07:55:39PM +0300, Dmitry Osipenko wrote:
> 10.03.2020 18:19, Thierry Reding =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> > From: Joseph Lo <josephl@nvidia.com>
> >=20
> > The EMC clock needs to carefully coordinate with the EMC controller
> > programming to make sure external memory can be properly clocked. Do so
> > by hooking up the EMC clock with an EMC provider that will specify which
> > rates are supported by the EMC and provide a callback to use for setting
> > the clock rate at the EMC.
> >=20
> > Based on work by Peter De Schrijver <pdeschrijver@nvidia.com>.
> >=20
> > Signed-off-by: Joseph Lo <josephl@nvidia.com>
> > Signed-off-by: Thierry Reding <treding@nvidia.com>
> > ---
> > Changes in v5:
> > - major rework and cleanup
>=20
> ...
>=20
> > +static int tegra210_emc_resume(struct device *dev)
> > +{
> > +	struct tegra_emc *emc =3D dev_get_drvdata(dev);
> > +
> > +	emc->emc_suspend =3D false;
>=20
> Looks like the 'emc->emc_suspend' isn't really needed, nothing in kernel
> shall touch EMC rate at this point.

I've removed this.

> Perhaps should be better to make EMC clk exlusive in order to catch
> abusers, please see tegra30-emc suspend/resume for an example.

Good idea. Done.

> > +	clk_set_rate(emc->emc_clk, emc->emc_resume_rate);
> > +
> > +	pr_debug("%s at rate %lu\n", __func__, clk_get_rate(emc->emc_clk));
> > +
> > +	return 0;
> > +}
> > +#endif
> > +
> > +static const struct dev_pm_ops tegra210_emc_pm_ops =3D {
> > +	SET_SYSTEM_SLEEP_PM_OPS(tegra210_emc_suspend, tegra210_emc_resume)
> > +};
> What about to use the default suspend/resume level?

I don't understand. This is already the default suspend/resume level,
isn't it?

Thierry

--C1iGAkRnbeBonpVg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl54l/sACgkQ3SOs138+
s6Gcgg//XEFAg5FXQke9ezCAmIWt0qxVXLKGIpJAn6Own9QsP/hoyD89LVQwfmMI
JMow5JKbPdySRmJJ4Nb4ZLF1nT3Ma8eIPW58fGjaAlWodsmAdTpQTrD5s2dLsQRr
Pu5GuDUR+7rVAz7fpBZl+DJREyq0DThvnN5ojtGnAqaYJ8LSbJuJuG2+7VNLCGF/
YGIcH/xTYr+UvjPSQcnyxIjYLSqj6Y2KWJnCHeMeYm/5LFfsZ3l5p4fxAcVyS1E8
pw2ejNhajSx+6MbolV/2j0/4flKzFs5FTWdq8mJOpuPwsVO6a3vJAahl1Y2xzOib
BH8VZboNjnF1DYIO4QfqAzm116b2sTlm7rOV3czv3HYVtrrhIMX7RXNYHsTq5y+z
TkwBqnt9uYjRHFgR/H1z7aNRcyBeW6ec0oc7Xl2wZ7AZoSDojbrdmI9gEqjSQryu
DG1S484D0Tht+dhpHjYH3dIblsrfZiVJ9e3vyocFl8zdwRGOdbKXWl5gClF33yaN
5kgIJWWXbGakpSF0JguWG2NLdpvdhvCJqCl9Y1fmqPs6yull0ptPW/mwPl02Bi/8
5l9wo+QiUsg4PYWZf6NQ1Z77NXVyQCPmPJlO7RyWvQEyCJJIcpGAIxCfCbNSskZ5
hCGvCUvxx05WtqmhAw3jtaXzbmtg1DrYXeouAxUz0G2TjXi/46U=
=k3Qa
-----END PGP SIGNATURE-----

--C1iGAkRnbeBonpVg--


--===============2643154049275351671==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2643154049275351671==--

