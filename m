Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 608F030C8D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 12:29:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2N07rzsXNKjJ7Z1JUSMk3o3DzDAzbQ2heWvrZbIWTRI=; b=gFcoFwXDTnzHhPzpS3/MHhSP7
	8qyOap8BRDhHyDu1d8TWw7JXOHEOXLYktyaOP/+eH3JHaBEzbG0fXD11ul4Nz9u1PrUykK53BIQvp
	PN5nqaoapcR+HYMarH9q6qqt1/zYPmICExdTEAiB0jcFZo9rLqTjLaBBFA7yPxEtBKR4lk25R6oOX
	5XxSeZo9X7dacXLuRgeZ7aBIouYbYotb17rQaAQ9nlMLayfjhGhZz0V1RWU/INaP3PRLDXdmDP93c
	M1+K03dWqg99OBeat+4U+nCpDt6XOfGh4yG5GRAhhFEZcFIOeek0BI9MQIc/6bTqdDm0AF/YEmK7T
	8eJlztN9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWemb-0003SX-CM; Fri, 31 May 2019 10:29:09 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWemU-0003SC-GR
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 10:29:03 +0000
Received: by mail-wm1-x342.google.com with SMTP id g135so2533526wme.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 May 2019 03:29:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=wavfemkihOm+dzcypR1HDDUiAwAwsd2Iq1AEC8Art7s=;
 b=GcR9ldq4F42Q0WGtJdMojCE2oUMBg/NeUQPGFtC6G4MKQ8/dgpSzth2Omc3NeULxqC
 DU93Vq3S8DeRyAbHcvQkR/pODN0VXk0xNDAHLBoI/Wz17uuZSkWHOEI9vePKSot4Qghu
 nnzevzWrN2SyEk1xS0fWubcrSnELz8QX9vrtPi9V2ONQs3hG0pfxoK6DnCDPGR41iw2Z
 EjYnV+jkLoKbUab6RY55WbGr9/tkgk/ffSeZHcec/f8S49yCrXQDnldSFiTNB4q6w2u3
 qgtXbqWYrRZWaa3jVz/NiQq/hBqWGIXIG9bZ3fqT6K/L0LNzUZnZRTx1yrHGAVEJDbIp
 FRMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=wavfemkihOm+dzcypR1HDDUiAwAwsd2Iq1AEC8Art7s=;
 b=JnO5ETIJ+HiTEnrZ3PqQQEfGL7wy1aeV56bsVkDCz+MWkIlbz4eSaENPuHHN44F8qi
 C4/rmgwPX1IClj6maAsT3RV9a3duXf67yT0YohYvhGpj89GZ1KOHCHuhHJBS+9eh6QGE
 Zye4yj3sR6xVmiHXVjbeYLnFr1UcHS9TGEO1O9noDlMlh+624ItBPZd0MMzq0hr8r06d
 CqjtIV00gNE0GTk5V+K/liFlo0PvQp76KZZQAwhhjeV0B4REIbiiHAfLAe63oa6OHjMp
 34YjxvPs1HTNhw91z0Nf39CcraG/B0SEf7fQGtfqIoXZXW+uSDrkIGviQKy5kkzEby5J
 lRew==
X-Gm-Message-State: APjAAAWMaf33RboOU40NPexL1AtSvhIoqT2m5ZTxmhcOks+f+PDYjr5s
 hYE+Pcm3aR5k+tTHITARKa6gk7ed
X-Google-Smtp-Source: APXvYqxqnc3WA3ovtwTbPcjOxkkou6kiX5EIvG3n7soiuUXv8RWSnaAQREkCz8Bo4R3J8HfkR7R8WA==
X-Received: by 2002:a1c:4484:: with SMTP id r126mr5412119wma.27.1559298540194; 
 Fri, 31 May 2019 03:29:00 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id d11sm6598454wrv.72.2019.05.31.03.28.59
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 31 May 2019 03:28:59 -0700 (PDT)
Date: Fri, 31 May 2019 12:28:58 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Jon Hunter <jonathanh@nvidia.com>
Subject: Re: [PATCH 2/2] soc/tegra: pmc: Avoid crash for non-wake IRQs
Message-ID: <20190531102858.GA21355@ulmo>
References: <20190529102654.14665-1-thierry.reding@gmail.com>
 <20190529102654.14665-2-thierry.reding@gmail.com>
 <27ffbfe6-1c88-63a1-aee1-7fe6ce252e54@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <27ffbfe6-1c88-63a1-aee1-7fe6ce252e54@nvidia.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_032902_594887_F9C5D441 
X-CRM114-Status: GOOD (  19.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-tegra@vger.kernel.org, Peter De Schrijver <pdeschrijver@nvidia.com>,
 linux-arm-kernel@lists.infradead.org, Bitan Biswas <bbiswas@nvidia.com>
Content-Type: multipart/mixed; boundary="===============1472630103226839781=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1472630103226839781==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="8t9RHnE3ZwKMSgU+"
Content-Disposition: inline


--8t9RHnE3ZwKMSgU+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, May 31, 2019 at 10:32:40AM +0100, Jon Hunter wrote:
>=20
>=20
> On 29/05/2019 11:26, Thierry Reding wrote:
> > From: Thierry Reding <treding@nvidia.com>
> >=20
> > For interrupts that are not wakeup sources but that may end up getting
> > mapped through the PMC as interrupt parent (this can happen for GPIOs),
> > return early in order to avoid a subsequent crash from an out-of-bounds
> > access to the register region.
>=20
> Maybe worth clarifying here what you mean by 'not wakeup sources'
> because the Tegra GPIO driver does have a set_wake() API to enable
> wakeup at the LIC IIRC. So maybe GPIOs that are not wakeup sources for
> what level of suspend?

Wakeup sources in the context of PMC is always LP0 wakeup sources. At
that point I don't think LIC is enabled anymore. So LIC is to wake up
=66rom LP1 (and perhaps LP2), while PMC wakeup sources need to be
configured in order to wake up from LP0.

Adding Peter to confirm, I think he's more familiar with the power
states on earlier chips than I am.

Thierry

>=20
> > Reported-by: Bitan Biswas <bbiswas@nvidia.com>
> > Signed-off-by: Thierry Reding <treding@nvidia.com>
> > ---
> >  drivers/soc/tegra/pmc.c | 3 +++
> >  1 file changed, 3 insertions(+)
> >=20
> > diff --git a/drivers/soc/tegra/pmc.c b/drivers/soc/tegra/pmc.c
> > index 653fe2c466f6..6e66b5e293be 100644
> > --- a/drivers/soc/tegra/pmc.c
> > +++ b/drivers/soc/tegra/pmc.c
> > @@ -1924,6 +1924,9 @@ static int tegra_pmc_irq_set_wake(struct irq_data=
 *data, unsigned int on)
> >  	unsigned int offset, bit;
> >  	u32 value;
> > =20
> > +	if (WARN_ON(data->hwirq =3D=3D ULONG_MAX))
> > +		return 0;
> > +
> >  	offset =3D data->hwirq / 32;
> >  	bit =3D data->hwirq % 32;
>=20
> Otherwise ...
>=20
> Acked-by: Jon Hunter <jonathanh@nvidia.com>
>=20
> Cheers
> Jon
>=20
>=20
> --=20
> nvpublic

--8t9RHnE3ZwKMSgU+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAlzxAecACgkQ3SOs138+
s6FFaxAAr4aaLWFmkpEiABQ0zu4tN5TmLuUUgZ9pYuwjTMW0yzcIYx5gB+Y6XlOP
1WEmbHUwx81+e6C5hEmhRigPbBj1AZcA9QZzSUS6WrwAVl5a+10Qb85ESl4x2yIS
jLotoprmcHyachwpD+zfn2P7xyAIgvntTyrN1rYbBZzebGwGdXNv5kgqdAjFrEs+
GNVGVS1Pk6NOWX3Vh4SrvSp59q5QG41ZPdBabRZfZVrF9jG+9imIm1Thtz/RU3rk
4AC2p5LpQi3ErQ6JSNlAfNToDAw98q1CK+MerhmgAytjpbHRSK7F5fqJpNwWFhEt
0MGEemqz9dvEJe9iDnc1kE2j2zmyG/qB5XLU8tzLGyZWybqF2nsgOIDVrcRan/Ag
/lYvza2oquo8/VP5iVyMw9JzjYUp+tMbMBv0hc5fzwU5PFYKIlJYUwC35oQgdyLd
RVDcm8TZYZiu42fIb1Pl1b8E5Vki/vyF9B7NN6TAfV6Odp56WHo7OJb8oL1kxt4u
BC447KHwr/Uk3/9kcHCjIIf10dVZp9nDp8Zp/5k4P32nMxhCPkNmKhb9I5Lm6z07
DivFYgbK56pFlcB8pMfE0fjHRmSgaxafCenrhioANV2sHQiR1pb6H7oYV81Xeybt
cTq95XTe+SrThiOwdK0B9b4VXqPW+UHawqnJ0dhvbaKuDqKKumA=
=kCdx
-----END PGP SIGNATURE-----

--8t9RHnE3ZwKMSgU+--


--===============1472630103226839781==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1472630103226839781==--

