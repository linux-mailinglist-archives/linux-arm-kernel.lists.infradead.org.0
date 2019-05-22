Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20220264FF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 15:49:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=R9FmFM3nDQ9sEA/teR/a6cjzEMuqP0cDSY7K4y6pPOM=; b=A5aO++IvuG0hqK+FelXecVt8u
	7iJEKGRJCv0f4YNUUG6z6QxCw/U0NyG0jh7/SvAlAqaH8VJs0Yg92RqhWSm4t6k9f+XH0ZrlhCOND
	c406hWfuxzlDwE0XcZYcQ50dyDSivJlgq+PaKgD3EmnLgpXV/G04beuErn2lxz4MmGjhqb4+aeBvX
	sYnpGCs3R4FjPbRmEKq7tX3faERqhqgx7U1FU2DPQgJeNjqEy9SzYNb7RzMM1xUxq3nC/3Xj+QkFU
	Gwc0y/2bPOJyESJfhycpROyIcxHtFsD9yv50xB+UROtRoxql0wRAnsp2TV+OFW5WhMTcqZUBsEofw
	YnvMqUHaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTRcA-0007H1-Mm; Wed, 22 May 2019 13:49:06 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTRc3-0007GL-2Z
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 13:49:00 +0000
Received: by mail-wm1-x341.google.com with SMTP id x64so2307704wmb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 May 2019 06:48:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=SnKhUBZrT/sPuCdV1Uv2QnIPymrUbdqHNXKAWe9qXx0=;
 b=tc9v4nSBpMS7KH8OcDKfw9mE24cGP7vo4U5ys9Bsb6j1xdlQj5d5eyk9K4WsRAMU5G
 JGAbivJF1QcHu10RfRUvkNTFA1LcMy5Lve2RTFrcNg6EYU2/OCJWeqLryddoQ8gzfKEr
 OnDOD3EW9Im73HGQAkxhsSBmR+KNkVwkB1QtVchg6p+8CZZha8TIdkELcdcRQ1Ul/7Bm
 6zI3vZigEptpEkpvZJ2KHLNN0as+VxWQtT/y0LU0A0f84ijXIkY3K5Cg6oIyQtYEYla+
 x0r+EjSGD0ONdygV+aFyQaMNWrFC9wDjgDAlnCRTKe8KhPIWL55K5ep1NntIvz9h1Mhu
 xrHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=SnKhUBZrT/sPuCdV1Uv2QnIPymrUbdqHNXKAWe9qXx0=;
 b=mMNvnqpHBVFqYXguGF4xPTln3k8um9COtoQr3HwvQi7EgDt/yxdJ75DAMPJvF0vnGh
 9KdR8qVaofrsNc6ibU4OT8PtUwzZrfEXj1KyRNuzPxCwrXcM2ZahGrofPyD+lJQ3HSNK
 IskOA8wDfKA4F7WmC8s66IawDjo22XPrJd9qWEtp49Kn1oYfiPMVeDuhlkWRPz6WGTZw
 2CLRSR7WpGSLgkkt8FKR7u2bMLDpzP2vGLL07TfQEZdcktWFwTgDItsyfOIDfrC5wAog
 27UkGs0G0LZphx4naWj43WKzwa7v0g1c0piCplLK3BjHbdvgQrdp9nnOvoa4wohEF3bV
 +PFw==
X-Gm-Message-State: APjAAAVz7B5RQX7qQBJdNEXQa8dHRmmJJfmZ4B3b2sM/5J/v3QZ20Fic
 iydrKGI9ze5CDzIiQJUJzWQ=
X-Google-Smtp-Source: APXvYqyoUq0PiLCevdgg8MU0+OYTj4c8Uv/Is0aaVHA/cmny/YgEluTqa5TutJOH9d6+bzbC3brOgg==
X-Received: by 2002:a05:600c:21d7:: with SMTP id
 x23mr8018674wmj.87.1558532936965; 
 Wed, 22 May 2019 06:48:56 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id n1sm4623910wmc.19.2019.05.22.06.48.55
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 22 May 2019 06:48:56 -0700 (PDT)
Date: Wed, 22 May 2019 15:48:55 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V7 12/15] arm64: tegra: Enable PCIe slots in P2972-0000
 board
Message-ID: <20190522134855.GQ30938@ulmo>
References: <20190517123846.3708-1-vidyas@nvidia.com>
 <20190517123846.3708-13-vidyas@nvidia.com>
 <20190521105455.GK29166@ulmo>
 <6a2c0a9a-1c37-3e32-535a-aaf0db2f101d@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <6a2c0a9a-1c37-3e32-535a-aaf0db2f101d@nvidia.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_064859_143345_E489B794 
X-CRM114-Status: GOOD (  20.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mperttunen@nvidia.com, mmaddireddy@nvidia.com, linux-pci@vger.kernel.org,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 kthota@nvidia.com, kishon@ti.com, linux-tegra@vger.kernel.org,
 robh+dt@kernel.org, gustavo.pimentel@synopsys.com, jingoohan1@gmail.com,
 bhelgaas@google.com, jonathanh@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: multipart/mixed; boundary="===============0402741077994478290=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0402741077994478290==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="aNvCJ41Feu8IgPyB"
Content-Disposition: inline


--aNvCJ41Feu8IgPyB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, May 21, 2019 at 11:47:45PM +0530, Vidya Sagar wrote:
> On 5/21/2019 4:24 PM, Thierry Reding wrote:
> > On Fri, May 17, 2019 at 06:08:43PM +0530, Vidya Sagar wrote:
> > > Enable PCIe controller nodes to enable respective PCIe slots on
> > > P2972-0000 board. Following is the ownership of slots by different
> > > PCIe controllers.
> > > Controller-0 : M.2 Key-M slot
> > > Controller-1 : On-board Marvell eSATA controller
> > > Controller-3 : M.2 Key-E slot
> > >=20
> > > Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> > > ---
> > > Changes since [v6]:
> > > * None
> > >=20
> > > Changes since [v5]:
> > > * Arranged PCIe nodes in the order of their addresses
> > >=20
> > > Changes since [v4]:
> > > * None
> > >=20
> > > Changes since [v3]:
> > > * None
> > >=20
> > > Changes since [v2]:
> > > * Changed P2U label names to reflect new format that includes 'hsio'/=
'nvhs'
> > >    strings to reflect UPHY brick they belong to
> > >=20
> > > Changes since [v1]:
> > > * Dropped 'pcie-' from phy-names property strings
> > >=20
> > >   .../arm64/boot/dts/nvidia/tegra194-p2888.dtsi |  2 +-
> > >   .../boot/dts/nvidia/tegra194-p2972-0000.dts   | 41 ++++++++++++++++=
+++
> > >   2 files changed, 42 insertions(+), 1 deletion(-)
> > >=20
> > > diff --git a/arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi b/arch/ar=
m64/boot/dts/nvidia/tegra194-p2888.dtsi
> > > index 0fd5bd29fbf9..30a83d4c5b69 100644
> > > --- a/arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi
> > > +++ b/arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi
> > > @@ -191,7 +191,7 @@
> > >   						regulator-boot-on;
> > >   					};
> > > -					sd3 {
> > > +					vdd_1v8ao: sd3 {
> > >   						regulator-name =3D "VDD_1V8AO";
> > >   						regulator-min-microvolt =3D <1800000>;
> > >   						regulator-max-microvolt =3D <1800000>;
> > > diff --git a/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts b/arc=
h/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts
> > > index 73801b48d1d8..a22704e76a84 100644
> > > --- a/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts
> > > +++ b/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts
> > > @@ -167,4 +167,45 @@
> > >   			};
> > >   		};
> > >   	};
> > > +
> > > +	pcie@14100000 {
> > > +		status =3D "okay";
> > > +
> > > +		vddio-pex-ctl-supply =3D <&vdd_1v8ao>;
> > > +
> > > +		phys =3D <&p2u_hsio_0>;
> > > +		phy-names =3D "p2u-0";
> > > +	};
> > > +
> > > +	pcie@14140000 {
> > > +		status =3D "okay";
> > > +
> > > +		vddio-pex-ctl-supply =3D <&vdd_1v8ao>;
> > > +
> > > +		phys =3D <&p2u_hsio_7>;
> > > +		phy-names =3D "p2u-0";
> > > +	};
> > > +
> > > +	pcie@14180000 {
> > > +		status =3D "okay";
> > > +
> > > +		vddio-pex-ctl-supply =3D <&vdd_1v8ao>;
> > > +
> > > +		phys =3D <&p2u_hsio_2>, <&p2u_hsio_3>, <&p2u_hsio_4>,
> > > +		       <&p2u_hsio_5>;
> > > +		phy-names =3D "p2u-0", "p2u-1", "p2u-2", "p2u-3";
> > > +	};
> > > +
> > > +	pcie@141a0000 {
> > > +		status =3D "disabled";
> > > +
> > > +		vddio-pex-ctl-supply =3D <&vdd_1v8ao>;
> > > +
> > > +		phys =3D <&p2u_nvhs_0>, <&p2u_nvhs_1>, <&p2u_nvhs_2>,
> > > +		       <&p2u_nvhs_3>, <&p2u_nvhs_4>, <&p2u_nvhs_5>,
> > > +		       <&p2u_nvhs_6>, <&p2u_nvhs_7>;
> > > +
> > > +		phy-names =3D "p2u-0", "p2u-1", "p2u-2", "p2u-3", "p2u-4",
> > > +			    "p2u-5", "p2u-6", "p2u-7";
> > > +	};
> >=20
> > This last controller is disabled by default. Why do we need to include
> > all of this if it's not going to be used anyway?
> I want to keep this entry ready by populating all the required fields. Wh=
en pinctrl
> driver is ready, I'll send out patches to enable this node as well.

Okay, makes sense.

Thierry

--aNvCJ41Feu8IgPyB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAlzlU0QACgkQ3SOs138+
s6H22w/+NtFf3N+erJ1kmeI6iADQ1aPCyQLeYyKJnlpmga3nBTGjnWKcMOMvvKWJ
dd5BJVw/2y4WG/4MPOHVwNWqgikVwh9bWC1hvozWqOCVTgLfKmuJFDCuhYeEbRvo
IYvQ+1NC+9VOrsL/L4g9LprbvZaIcCjIRKlVJBuTddpjq9fKeNQq8eAuuronYKj4
ahrHQ4Xahni/Qe8R2crqo8qltCHwd4qWVPnTwJ0N90seqIh2sB6ZyPTUhb8WKeiL
NoGYw5w3VAVxgV8g6nXnWPcSbhV3lM7ju0M8g1d482EpNARag+nuFMyiKkBhO3uB
SQJQuXSJaclaThtJmdRKoL/HGd3efiJQBysjmdOyTHLPZ4Kth3Rtk7JHXJgiRmsD
zuh+P0KOe2aYUY4ZIx6jOG2SEHGghntBpGUpyZCpPoaVhmckstaRLxObmQAd/Q9a
tBwzjs2D1uSRLvGPYnA7BmGxzuEVq0gkg+a7EIESiEiNnuht4eIyfpaNLXaTAafU
RwDop6KWQk7Itcpt73agmOsXf5UyLJQpf6fT4yXX1kac4YdEr3gNLo2R0rENXgp+
THNyLcvLPPZGeS2oScl0wvhTObeAPoM42ELGLrIoZl8S8LrGYueIVjmThbsTIX1P
QuPXkfgLQNU6KQMzDMC9Dwa0+8lAH+ofvoEqihJkSre0uBwIMqY=
=SO5k
-----END PGP SIGNATURE-----

--aNvCJ41Feu8IgPyB--


--===============0402741077994478290==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0402741077994478290==--

