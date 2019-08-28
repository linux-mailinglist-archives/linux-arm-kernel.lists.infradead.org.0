Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7084EA067F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 17:41:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PGCIfvL/yly+aiaWKM+W6yZD5zej02Vcm6ujNB8HfJA=; b=AJMXhGOcMPJZzbXZnN6Btoi/s
	n9ngQVYM4trF+i1UFDiFlBClL+76TSh0A8+YLA0Qs28hwX1ANcgRl/xLi3LuzWLoQ/aS2C9tN52G2
	+s1VmiJPIJVuckg+N77OB+KxGqDl261yfsnZEhK+rqXrxgWq8JcdxR7O7GgqPzs5j7loWDmnmZ26/
	Ar7P4k2y+4bgHdu7y4+94fqcVghYRHK1KRTAf7mu8SQHFPNAI7l2OjIx/e/nk2uQ4zGl2diziUsUR
	mGmkb2cMRsUy18im+sdj7v12wuTweSnvLZHr3jMt6TQ902+kBgeHoXER9NVnRhl069SRcRhClrlkI
	S1mRCvuyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i304c-0001uZ-LW; Wed, 28 Aug 2019 15:41:26 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i304L-0001t6-Oy; Wed, 28 Aug 2019 15:41:11 +0000
Received: by mail-wr1-x443.google.com with SMTP id z1so228357wru.13;
 Wed, 28 Aug 2019 08:41:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=2ecfP7qpyNlbTo0mYeWkbfVtR/L95yNWsOdHy9lsC0g=;
 b=MOvdiN099d0TBYShN6TegYOOoYhOR6y9OJkGN0Q5RgQW2q3tIeh9V2u2tI5RCSjs/H
 urJH9GwWHKK/TT2BwkRvB/zahP9Os1NTNuLOKA8iSGUatmZhyUe7IBaB1TKB6qnMBG3y
 cobufCyrKe1INRxyxDRHij1O9aLy0funznfx/oOzej4zjwb7mbsZ8vgETxRROmCHOH0k
 u4PdCkYB/MGiOgHr3EFxvrY+vzTClzSVA2FCaDOhR65cmBbbHvctuWm7llqI7qpEPhny
 5pzQcEmE18iw2KD9X4ZBB3FisYzs41xEhnCy+g63/NVBl6vEBJqc+YiU8oyHXRgUizCB
 t49g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=2ecfP7qpyNlbTo0mYeWkbfVtR/L95yNWsOdHy9lsC0g=;
 b=gPs73Pw9GNkmmd8gRbKlOLdc9U4jT2AisByU42EwBmtQvERQa5JEqrPjS12oKs1u1v
 At4Ris8NTTW35OZoGquQQkUb/JCIXqT78qiSLa7YAvV+QIJjjPcujiHpcQEVcO2hiC1c
 v1uif5XCxw0S0gcLyGbBVpFh+gHnxbfBkiEanRpykbxpOqz7kdNJhTxhqeoOzHsZSGz1
 X1O2GGtQknPhIxxROohzmnqGmfdqV4FEQRe6tRlUau2QJAuLXYegubo7fQl3fTT1jIGg
 5/2FSMR+xaMMN2A6FDw7b8aZR8P5gMf+a2ZCt0I1vgquEZH++ZiSh6FIwKFwxrg2c7iA
 3Nqw==
X-Gm-Message-State: APjAAAUQ3b96NNrVFYKutzbEG0kFdRhywt8Aj49bCiih2ljpL4WQZxnX
 b0+YJJnK0DIKa9dO1K0pXR4=
X-Google-Smtp-Source: APXvYqwXitvjr5rnB28mAKox1kJplaWTPvWdxJTnr2ZAmk2hrgkYdM/08UCk7mPugyWBK2e4FbGLwA==
X-Received: by 2002:adf:ef05:: with SMTP id e5mr5596071wro.158.1567006866932; 
 Wed, 28 Aug 2019 08:41:06 -0700 (PDT)
Received: from localhost (pD9E51890.dip0.t-ipconnect.de. [217.229.24.144])
 by smtp.gmail.com with ESMTPSA id x6sm7253035wmf.6.2019.08.28.08.41.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Aug 2019 08:41:04 -0700 (PDT)
Date: Wed, 28 Aug 2019 17:41:03 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Andrew Murray <andrew.murray@arm.com>
Subject: Re: [PATCH] PCI: rockchip: Properly handle optional regulators
Message-ID: <20190828154103.GA10422@ulmo>
References: <20190828150737.30285-1-thierry.reding@gmail.com>
 <20190828153243.GZ14582@e119886-lin.cambridge.arm.com>
MIME-Version: 1.0
In-Reply-To: <20190828153243.GZ14582@e119886-lin.cambridge.arm.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_084109_863334_D0BA43EE 
X-CRM114-Status: GOOD (  26.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>, Vidya Sagar <vidyas@nvidia.com>,
 linux-rockchip@lists.infradead.org, Bjorn Helgaas <bhelgaas@google.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2540455437843254375=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2540455437843254375==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="FCuugMFkClbJLl1L"
Content-Disposition: inline


--FCuugMFkClbJLl1L
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 28, 2019 at 04:32:44PM +0100, Andrew Murray wrote:
> On Wed, Aug 28, 2019 at 05:07:37PM +0200, Thierry Reding wrote:
> > From: Thierry Reding <treding@nvidia.com>
> >=20
> > regulator_get_optional() can fail for a number of reasons besides probe
> > deferral. It can for example return -ENOMEM if it runs out of memory as
> > it tries to allocate data structures. Propagating only -EPROBE_DEFER is
> > problematic because it results in these legitimately fatal errors being
> > treated as "regulator not specified in DT".
> >=20
> > What we really want is to ignore the optional regulators only if they
> > have not been specified in DT. regulator_get_optional() returns -ENODEV
> > in this case, so that's the special case that we need to handle. So we
> > propagate all errors, except -ENODEV, so that real failures will still
> > cause the driver to fail probe.
> >=20
> > Signed-off-by: Thierry Reding <treding@nvidia.com>
> > ---
> >  drivers/pci/controller/pcie-rockchip-host.c | 16 ++++++++--------
> >  1 file changed, 8 insertions(+), 8 deletions(-)
> >=20
> > diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/=
controller/pcie-rockchip-host.c
> > index 8d20f1793a61..ef8e677ce9d1 100644
> > --- a/drivers/pci/controller/pcie-rockchip-host.c
> > +++ b/drivers/pci/controller/pcie-rockchip-host.c
> > @@ -608,29 +608,29 @@ static int rockchip_pcie_parse_host_dt(struct roc=
kchip_pcie *rockchip)
> > =20
> >  	rockchip->vpcie12v =3D devm_regulator_get_optional(dev, "vpcie12v");
> >  	if (IS_ERR(rockchip->vpcie12v)) {
> > -		if (PTR_ERR(rockchip->vpcie12v) =3D=3D -EPROBE_DEFER)
> > -			return -EPROBE_DEFER;
> > +		if (PTR_ERR(rockchip->vpcie12v) !=3D -ENODEV)
> > +			return PTR_ERR(rockchip->vpcie12v);
> >  		dev_info(dev, "no vpcie12v regulator found\n");
>=20
> In the event that -ENODEV is returned - we don't set vpcie12v to NULL, ho=
wever
> it seems that this is OK as vpcie12v is tested with IS_ERR before use eve=
rywhere
> else in this file.

Yeah, I was trying to keep the diff small here. There doesn't seem to be
any canonical way to mark regulators as "not available". This driver
leaves it set as an error pointer, the Tegra PCI driver sets it to NULL.
They're both valid ways to do it as long as they use the proper checks
before using them. So I wasn't trying to force one way or another, just
kept it the way it was and only fixed the problematic checks.

> By the way it looks like this patch pattern could be applied right across=
 the
> kernel, there are also others in PCI: pci-imx6 and pcie-histb.c - not sur=
e if
> you wanted to fix those up too.

I hadn't checked any other drivers, but I can take another look and
prepare patches for them.

> Reviewed-by: Andrew Murray <andrew.murray@arm.com>

Thanks,
Thierry

> >  	}
> > =20
> >  	rockchip->vpcie3v3 =3D devm_regulator_get_optional(dev, "vpcie3v3");
> >  	if (IS_ERR(rockchip->vpcie3v3)) {
> > -		if (PTR_ERR(rockchip->vpcie3v3) =3D=3D -EPROBE_DEFER)
> > -			return -EPROBE_DEFER;
> > +		if (PTR_ERR(rockchip->vpcie3v3) !=3D -ENODEV)
> > +			return PTR_ERR(rockchip->vpcie3v3);
> >  		dev_info(dev, "no vpcie3v3 regulator found\n");
> >  	}
> > =20
> >  	rockchip->vpcie1v8 =3D devm_regulator_get_optional(dev, "vpcie1v8");
> >  	if (IS_ERR(rockchip->vpcie1v8)) {
> > -		if (PTR_ERR(rockchip->vpcie1v8) =3D=3D -EPROBE_DEFER)
> > -			return -EPROBE_DEFER;
> > +		if (PTR_ERR(rockchip->vpcie1v8) !=3D -ENODEV)
> > +			return PTR_ERR(rockchip->vpcie1v8);
> >  		dev_info(dev, "no vpcie1v8 regulator found\n");
> >  	}
> > =20
> >  	rockchip->vpcie0v9 =3D devm_regulator_get_optional(dev, "vpcie0v9");
> >  	if (IS_ERR(rockchip->vpcie0v9)) {
> > -		if (PTR_ERR(rockchip->vpcie0v9) =3D=3D -EPROBE_DEFER)
> > -			return -EPROBE_DEFER;
> > +		if (PTR_ERR(rockchip->vpcie0v9) !=3D -ENODEV)
> > +			return PTR_ERR(rockchip->vpcie0v9);
> >  		dev_info(dev, "no vpcie0v9 regulator found\n");
> >  	}
> > =20
> > --=20
> > 2.22.0
> >=20

--FCuugMFkClbJLl1L
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl1moI8ACgkQ3SOs138+
s6F7AA//RclYPyFWgwjoCkQPsUjwPF986Gum7Zcjlo1Zkt4qcKq3R3wKPfd88eaq
/21fo0lQN5keqY+cTezH7so5LGEx1KTUmDi/e/d78dSFSm1Xcn4xg8INC8gY3boL
gwQMhsOr5tG/bR+mVbmS5gaITGJW53EOfWTtQg3pluzJdMuWjrVgwB82dIrsQLD7
wqD5p1Byf7JsEi035munGTUavP5SS1wHYWWX/OkncEQvyAHcYrk/+hOP0bKJQ7Nj
x+MhLqwc/jPTOfsiHGW2m8WazwLPtHfhI/y9QB1Bdb2nXrBoVC83/Jh6172NW4iX
etNOSy+51U19U1fGmBU/lB1GwoxcHWmaNebquAF1lBeTS+HjB/WgLkQw44rEFbkr
wP2n+hGOn7/I2dhgEJ5TokF+oxnFw4DLIXWmiyT0O0W8xU7CxNCYJsY2gHdfl0Yc
R4ib9+zFxTktefBNVgBcNIF0KXjnwUOcdV9rGcWMJeDTW9ua/VLgK6eOpIl+lNnh
nCl0lJEypiZoemzKAmJxiDAvy0Jzza2nT5Nxz6sPWsJn+C/V0RSiBVjiS+uTOqB2
q1BvIMhw4ZGK6Q6ZX2OASEjgivNu7yhAvR+iqeDUEDRPVW4aGmJqp08uzg9GOWpP
oljMoPWyxRWGAOJtiIHrF1lTetunVdDWm5h4XHkYFy/92cRbhpw=
=rwiw
-----END PGP SIGNATURE-----

--FCuugMFkClbJLl1L--


--===============2540455437843254375==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2540455437843254375==--

