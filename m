Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A090017050F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 17:59:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uZSTREQN5u3gRhWtQuvDC03poNNTPKvaLDmRHEnb6BI=; b=ZsEgoPqPZq2mHu2dKQpCUUHRt
	Urvv4yrL/yXg1lZuWCdVQz0lH71SU+tNPTHIBiyKkGqgCGEgDaMwKF7g7EqsScyrGaE0GJ1ktUE23
	mB4C44RpKInV1FGusLKYJWLgHksrOsAb+Lz52UtrcYS/g76FzphsRlv7Eg96cNA3arMnGfOm5P/R7
	jqkvj4TzFSHDsN66jdQD6pSRiffb0JZ9KtqF97EMRc5Muzl7iQUG8eK43nhMS1oWAVK1iX53kaUYY
	dRnUf6ddgmAdgWF2OBcrTl2YJqDZc5dEjxyNkxL9D+J1VOtYwOPKtZAQw8RH3XOppRb2S9BFoUBjM
	/xlDdWfgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j701M-0003Sv-C2; Wed, 26 Feb 2020 16:58:52 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j700P-0002ov-9f
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 16:57:55 +0000
Received: by mail-wr1-x443.google.com with SMTP id v4so3960082wrs.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 08:57:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=LTnKsoB4AHL0Snl7rS1+dxo+f9zUGTx20/bjCtbZfUk=;
 b=jSj8QK91Bei3ZtBRSgP4/M6DmJg58SFTDJVi+oWjJXWyUlc5PdKVwDjpzJc+GsAUsl
 s1VyRMNUgwK4V8TwQY58z+xHiSgYufvbUSaeypVa59Uwe+2V9cjPWog4c6tl88dz7IgO
 /rDhKI8l6YJugDDiNnHpDDCFYz5PKS/MTM/cginoQYKfuVuvzagbhe5ZzAyP2LyMBlnv
 fedkAuixsBtj902DvH35CarLsdXtNv7W8EDOTSus+8gW7auqLfWsJclci9iVhD3qU6VV
 vuDj3eKdgJvwOZGsI/NYGqtwbLYeVqY0SfB+aSKpMDWhLi3hlF2uuB7F6u0LwJTF3dq/
 kdwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=LTnKsoB4AHL0Snl7rS1+dxo+f9zUGTx20/bjCtbZfUk=;
 b=cUqqOUQ7WExmwP8TFKc2FQlJfFaJVww5KysSVvhHFitlyx5+BqIuy0uEyFX2lI2SIy
 MmlK8uboGlYo35RO5M255g0li4inkWYJt9zz4VYcgqm3L+AsJQD7k35ammXS4Z2fGpdP
 WKQJ5Bzw8l7YVP5axW3rjmlAV2ySW7tdsPahPEOZH6nsxc+AbfYLT54z5c8Z51t3EvNA
 hgmoON8F4ttA4718ewrtTKbRIAqHvN5lgECEz5RotshZPrHxNIisz5vQr/0bF9902OdY
 VXbjMtw4oZ0iSEtwLcV0AlvKaWeZZuAQ8dJ5HOIMk7kMBzYfS0osUq1efSITFH1HSVD/
 FaaA==
X-Gm-Message-State: APjAAAUZpurktwDoIbRbFbijbON8q8677lmYrekOPxqE1VOtG89g8Y/7
 R+uRlPXUAmfQFicnnnwXAtM=
X-Google-Smtp-Source: APXvYqxjn0zIyssHpKxJ/ktrsS1gyu41mZpxUcjjEzpuIwUXcZtYIMToPnprQ4nt5hXpLsBAHHBEww==
X-Received: by 2002:a5d:4b91:: with SMTP id b17mr6363630wrt.325.1582736269484; 
 Wed, 26 Feb 2020 08:57:49 -0800 (PST)
Received: from localhost (pD9E516A9.dip0.t-ipconnect.de. [217.229.22.169])
 by smtp.gmail.com with ESMTPSA id d4sm4082431wra.14.2020.02.26.08.57.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 08:57:48 -0800 (PST)
Date: Wed, 26 Feb 2020 17:57:46 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Joseph Lo <josephl@nvidia.com>
Subject: Re: [PATCH V4 4/8] memory: tegra: Add Tegra210 EMC clock driver
Message-ID: <20200226165746.GA818759@ulmo>
References: <20190529082139.5581-1-josephl@nvidia.com>
 <20190529082139.5581-5-josephl@nvidia.com>
 <403181d4-100b-679e-b1d8-c052c6d1f3ac@gmail.com>
 <2f9722b4-df92-546b-9659-3b02768bbe41@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <2f9722b4-df92-546b-9659-3b02768bbe41@nvidia.com>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_085753_405278_50E9786B 
X-CRM114-Status: GOOD (  37.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
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
Cc: devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Rob Herring <robh+dt@kernel.org>,
 linux-tegra@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6013296399422998885=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6013296399422998885==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="a8Wt8u1KmwUX3Y2C"
Content-Disposition: inline


--a8Wt8u1KmwUX3Y2C
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 30, 2019 at 10:45:01AM +0800, Joseph Lo wrote:
> On 5/29/19 9:26 PM, Dmitry Osipenko wrote:
> > 29.05.2019 11:21, Joseph Lo =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> > > This is the initial patch for Tegra210 EMC clock driver, which doesn't
> > > include the support code and detail sequence for clock scaling yet.
> > >=20
> > > The driver is designed to support LPDDR4 SDRAM. Because of the LPDDR4
> > > devices need to do initial time training before it can be used, the
> > > firmware will help to do that at early boot stage. Then, the trained
> > > table of the rates we support will pass to the kernel via DT. So the
> > > driver can get the trained table for clock scaling support.
> > >=20
> > > For the higher rate support (above 800MHz), the periodic training is
> > > needed for the timing compensation. So basically, two methodologies f=
or
> > > clock scaling are supported, one is following the clock changing
> > > sequence to update the EMC table to EMC registers and another is if t=
he
> > > rate needs periodic training, then we will start a timer to do that
> > > periodically until it scales to the lower rate.
> > >=20
> > > Based on the work of Peter De Schrijver <pdeschrijver@nvidia.com>.
> > >=20
> > > Signed-off-by: Joseph Lo <josephl@nvidia.com>
> > > ---
> > > v4:
> > > - remove the statistic data in debugfs
> > > - add tegra210_clk_register_emc API to make it compatible with the ca=
se
> > >    if the kernel still uses the older DTB which doesn't have EMC node.
> > >    And the MC and EMC clock can still be registered successfully.
> > > v3:
> > > - address almost all the comments from the previous version
> > > - remove the DT parser of EMC table
> > > - The EMC table is passing as a binary blob now.
> > > ---
> > >   drivers/memory/tegra/Kconfig        |  10 +
> > >   drivers/memory/tegra/Makefile       |   1 +
> > >   drivers/memory/tegra/tegra210-emc.c | 671 +++++++++++++++++++++++++=
+++
> > >   drivers/memory/tegra/tegra210-emc.h | 156 +++++++
> > >   include/soc/tegra/emc.h             |   2 +
> > >   5 files changed, 840 insertions(+)
> > >   create mode 100644 drivers/memory/tegra/tegra210-emc.c
> > >   create mode 100644 drivers/memory/tegra/tegra210-emc.h
> > >=20
> > > diff --git a/drivers/memory/tegra/Kconfig b/drivers/memory/tegra/Kcon=
fig
> > > index 4680124ddcab..9d051bcdbee3 100644
> > > --- a/drivers/memory/tegra/Kconfig
> > > +++ b/drivers/memory/tegra/Kconfig
> > > @@ -26,3 +26,13 @@ config TEGRA124_EMC
> > >   	  Tegra124 chips. The EMC controls the external DRAM on the board.
> > >   	  This driver is required to change memory timings / clock rate for
> > >   	  external memory.
> > > +
> > > +config TEGRA210_EMC
> > > +	bool "NVIDIA Tegra210 External Memory Controller driver"
> > > +	default y
> >=20
> > This is not enough since you're leaving possibility to disable
> > compilation of the driver, but the compilation will fail because of the
> > unresolved symbol (tegra210_clk_register_emc).
> >=20
> > > +	depends on TEGRA_MC && ARCH_TEGRA_210_SOC
> > > +	help
> > > +	  This driver is for the External Memory Controller (EMC) found on
> > > +	  Tegra210 chips. The EMC controls the external DRAM on the board.
> > > +	  This driver is required to change memory timings / clock rate for
> > > +	  external memory.
> >=20
> > Either TEGRA210_EMC Kconfig option shall be always force-selected for
> > T210 or you should move all the clk-related code into drivers/clk/tegra=
/.
> >=20
> > Could you please give a rationale for having EMC clock code within the
> > EMC driver?
>=20
> I didn't have a specific reason for that initially, just wanted the clock
> code and EMC driver together for easier maintenance.
>=20
> But considering the fix in v4, that makes it backward compatible with the
> case if the kernel uses the older DT without EMC node, I think it's better
> to move the clock code into the clk folder now.

I looked into this a bit and I don't think this is actually worth it.
The problem is that, as opposed to Tegra124 and earlier, the sequence
for changing the EMC frequency is much more entangled. The bulk of the
programming will be on the EMC side, with the code occasionally calling
into CAR code to set the parent clock and some other flags.

So there's going to be some interdependencies regardless of where the
clock code actually lives. I can try to split this apart, but I don't
have very high hopes that the end result will be any cleaner than the
version here.

Thierry

--a8Wt8u1KmwUX3Y2C
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl5Wo4YACgkQ3SOs138+
s6FCXA//bWBXN7bSyzNc46zqWag8Is1uVhZgTR0H59XJTfsxw4K+6eDOpVcVCmLa
0cSrwEsh+4ggJuXovFA7ISWgbgRMM9eL+tv8gxtWheXtuPco2OzUfLGSe+rE7fCn
/boebHLd+04IRklVz0BkjmwtLVmzbTAMGV1SRc75Wz0eg9AqEoVNMBYEHnyZ3Z+n
po6Spd1ITGZdAZ1H3UA4UhGusFmDGDOLEbQPTSOs2iSRYFr08PJngqv28fsLTNnn
eXm8f97NJedT5LhgQNxA2jZE9Frg6YBO8bgikL0UpCP3hMW8F3lXA0F4Rf8Nt+ZM
sX3H0WXs3iwFcr7KzK2QGWntXKWhUpjNiZtrjgo+wXuzeMxOSgcfgC/DskEuSFHk
IQvKAxM2W2iyh6QfiZhUpDzF1rHY3RggAEWsLpXGqzTizfiXUu1yb1SEQuC7wxmg
lawIhYSMykcVb6+m/TUuN+FxbFSeofft9xA4hMa33OoQ9M3NlljppxsgR1YRijGy
/YdClu/Jibzt+qKmRHtkjWYMe9VvAeLhMpr1W7aadFp5+vSGACVHn+DB9c6SGQoZ
oU9FMiSEnfgwV6rbTO7NegUHWNbnqHDzFk4dl21ZGOYIbgvTA4sUq/R0HxqdNoks
ejGKyBWQ/H7hFdR3IQ6EvvnqWuvQymbHp/Sua9oIDb9s3vTWn3Q=
=BuGo
-----END PGP SIGNATURE-----

--a8Wt8u1KmwUX3Y2C--


--===============6013296399422998885==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6013296399422998885==--

