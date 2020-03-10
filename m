Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5204180473
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 18:10:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2XV95r2IcEs2qCgG13OOw/yTRokbi08EsckHtlR4w3M=; b=O9zwQWsXlXf2+dB6RgRwFbxwe
	Hm5GApQ67MZlrnGjvFPOf6JQCuLdh8htVCReRkvUnV8LPD/H7FFw+JSOmywKk4wJSuukriE+uPoIN
	oxQ98WtZdGSpM517d0VgaJiKFdtsWsWD9GZ7GwtJ8SHReSOHq4AQN0jkGXjcvzgbfpQDsbWBo9GPP
	uPzqxhiuImjS+i1iGKvGlui4b5E/aPcmJH2CrGN3Iic4qcHBXRxAvSenI5Csap8Lfbn8rpUWZbzan
	cgbE18aXDHZZ4usuvBXPFBkde3Jn0+TthXLn4RkHL+3/ZTmr4ZCL1Up8WKzinumtYqcWmWPiwh1Xh
	NJr64O+fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBiOs-0001DB-53; Tue, 10 Mar 2020 17:10:38 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBiOi-0001Cc-Om
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 17:10:30 +0000
Received: by mail-wr1-x443.google.com with SMTP id n15so16840495wrw.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 10:10:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=uUt4O9JUVGJDyPbmYWUfeT3Xr3oSlBD8NwfayO4w4nw=;
 b=sTcvb/JXP52CznNkTOuLxZG2vO1nFKI6T67EVGtD4lbjeORkRct4rsYL2QlfTwChhI
 bVFv+LERnQ+rLHb3HUJsuSSCm4KxJI9QbFuWWsqmk7bcQAQ6N5o7rPq8oljV50ua+Efa
 qLZ21cMWKlj/D5Eyb8MvPTKWEoZ/qF/nHf5Pf57aCgckp8cEgpSR7wFRwDiHzQPyahXr
 Ry/5EI7AE2SlubZovFKjBWsuLg6WeI6AGR8dfQbPkWXRa8QRs+/3BxIEHZLkThCpLJ7m
 lufOX1ZyDwZIilWpgPHroSODYoUWPfvzUoCNqptp94JT9oJw2MeK4LWIYoEchJoHhdzm
 s/Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=uUt4O9JUVGJDyPbmYWUfeT3Xr3oSlBD8NwfayO4w4nw=;
 b=AmL5sYQ6EcNBk8eMkpZF9xPw8a7ThueC+tVMC+h3Vm1FumUXl6T6Rz3T6/0kZHitNY
 9ZlEwvfE0IpH0o8OvTW3n28GE2gXY6MtypKdJCj6mHWxomRRO6ww9YKXE9sk6UakR7BZ
 K/I09ZPwuOxZJTqPqRccH3rnCwIxDVrhwKaUuj1rtqPWg5n1kCdbZa6keQOIhVXfnUP9
 +6jhkZYviqf3BfOSfVUA/i7P29GLTClc/34XdTzan2p9LrRm33iCpHoZpWGb6AD+upsp
 IqZtbIdA7OnR6LMEXn8BnuKOshR3JlhaZiSvRaY5k8sxaVWIVK6NT8MPHUKReUWr6hjQ
 CRvA==
X-Gm-Message-State: ANhLgQ2EH0ai5tXqMXqWR/P09VeGwYPgrctUbGT1rv1NqhrvjR950cgP
 wyeVqCWfp5zvdx9SOCPwTrw=
X-Google-Smtp-Source: ADFU+vupdzEUJEXInMZxKKU+qF8R2hdKmy1x/T6mpdzFNC0oP8TleGCfPwxeKIkEvtH1vg8BplCFeg==
X-Received: by 2002:adf:f7c9:: with SMTP id a9mr28661493wrq.225.1583860227159; 
 Tue, 10 Mar 2020 10:10:27 -0700 (PDT)
Received: from localhost (pD9E516A9.dip0.t-ipconnect.de. [217.229.22.169])
 by smtp.gmail.com with ESMTPSA id b203sm5222572wme.32.2020.03.10.10.10.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 10:10:25 -0700 (PDT)
Date: Tue, 10 Mar 2020 18:10:25 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v5 3/8] clk: tegra: Implement Tegra210 EMC clock
Message-ID: <20200310171025.GD3079591@ulmo>
References: <20200310152003.2945170-1-thierry.reding@gmail.com>
 <20200310152003.2945170-4-thierry.reding@gmail.com>
 <88d18719-b6dd-98d0-e147-f89eed2f3f0c@gmail.com>
MIME-Version: 1.0
In-Reply-To: <88d18719-b6dd-98d0-e147-f89eed2f3f0c@gmail.com>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_101028_812200_CF813393 
X-CRM114-Status: GOOD (  15.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: multipart/mixed; boundary="===============5208538451546616606=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5208538451546616606==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="bjuZg6miEcdLYP6q"
Content-Disposition: inline


--bjuZg6miEcdLYP6q
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 10, 2020 at 07:26:28PM +0300, Dmitry Osipenko wrote:
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
> > +u32 emc_readl(struct tegra_emc *emc, unsigned long offset)
> > +{
> > +	return readl_relaxed(emc->emc_base[REG_EMC] + offset);
> > +}
>=20
> static u32 emc_readl()
>=20
> > +u32 emc_readl_per_ch(struct tegra_emc *emc, int type,
> > +			    unsigned long offset)
>=20
> static u32 emc_readl_per_ch()

I think something went wrong here during a rebase. These are actually
supposed to be part of the EMC driver patch and are no longer needed in
the clock driver.

Thierry

--bjuZg6miEcdLYP6q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl5nygEACgkQ3SOs138+
s6Go7BAAtIjGuj40OUzzPquQVnTWUkzR2TnhGUCRZwzN625caWOJH8hMCv7Djey8
1wKJoORtan933YKqVNLCtn6GsV8hnfyM9cZ3rQKnYvUbaNQPritrOlE1oq2lH+6B
9LKudhswinPgNaToOqVsxhQPGGsZBpAuN4+zTFmGniDHswCyGuV76CVDrUkyqSu4
CiF7BfCWitZPEJMLCgDrmhWPQxejAjmAsO/ce+VC+plvlDdCChlqoqT3yz+KjEPr
32YyEFZ9MWnrbqLh+UHm+JE5rs4eq++kDbgf86OZ8JaVmYSo1mz/Sl4kEEoLh6OV
39qfF+QHsqy7jLSVww8EF6pWmiKpEIryhb3Qil9FMwFhu+i9tpL2WZYaFZ6qOstX
HKZm9I/ABVIQzixvwlHoJhOroxno0nWpyP6HJzOdW8q7FAF9yvH9ZyEPwT1y2T1e
T/m8IztVMS1kjkDNIEgnIeeXRfiEBNj4lJAXR4W6maAmmQ+HS7ioLXvOEYsm43M1
076vcA8ZgtKM1sOgvbT4Nl3wgYsZcJ5iIkOUB0yUfqpid6EbN4JR1Fz8FjI2l2Ry
NjAftd3fA0CBWjMBY4JwdJmNilWiK7y84K6MH92+j6gh+YnuC8uHLxKqrOUBCoJQ
sYndXufYEVVgSa/Ci7hMw53zRxEaZ8bGooBkIsiFnw0hpF7sLpo=
=rt6T
-----END PGP SIGNATURE-----

--bjuZg6miEcdLYP6q--


--===============5208538451546616606==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5208538451546616606==--

