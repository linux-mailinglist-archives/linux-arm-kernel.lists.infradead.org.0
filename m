Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C06F1A2123
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 18:41:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=W0KJqoPMRWvqbgAKNN5Rk72JrJBEocTINT+qxNPnvV8=; b=oXg0dkTiDZsqyAbtshcsV37qK
	yCHzQptvG79EWLSwxSaiiXsdvR7pPLxerwnXskXAjy5AfOS/sgNaWLc+ZGULlHpY2XBJQ2qfb7tiu
	8ynvMlQJout8yaKgMoPMq09LDhPJla+Tr0Hcd5Caq2vfjv5nU2FnEIsLw7K0DYXlSpdVqzDMFzP6t
	Andcj7V+/Rnt7TNX7Wa3WvBqKw6sUdQUuaqqmRNVUytNSm7HOgk6K+hY9rRPzFQzo2yrUvz+AOLf3
	BCYB86faldSxi3AAUnMF3VYqZK/YXQ9kHCrA6czXxrpHiVjTiYg7UxHk9CuWQRfudgtbD6Fp80Sd/
	Sf5RewkBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3NUP-000791-Qy; Thu, 29 Aug 2019 16:41:37 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3NU8-000779-JU
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 16:41:23 +0000
Received: by mail-wr1-x444.google.com with SMTP id e16so4133123wro.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 09:41:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=7yR+2btUdVZzugNInICo4vnQNuN1EMp975yLN+tXmcs=;
 b=Nr51xhgt9tORYUWvBQQm95aMApchSwYclJnaXP/uN2D3PCnFROMeV96h47hEqCZtFq
 jd2Mp/8M0EoSfJLApxXhqm7cUoLqCSUjbOCu48TbMNufS9t2Ml1/z58Lx25+PKfbjP6/
 DtSUtMiXvQtBXJsxgNxyU2xGgSRI6WA+/wJjYWLVncs+CxNLYXP2mwhO/HekUlslp9eM
 rng+dCtd6tZ9lwQdaQhIyMEUVZT2vPtf26jsE03Xx7+4GaH8VvIyyM49gErUvkyyhqOM
 MoTnitGGbFgUyQXNCpqvElfqYeV+iPo2B6+BrC7Y1o8jWndezMS2efOabGZwIHbtleeX
 OjTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=7yR+2btUdVZzugNInICo4vnQNuN1EMp975yLN+tXmcs=;
 b=PiY3PYZLoOEWi5fF9wQp9NCpaOsAE7845OrVZSBluFBM76dVYpL0z8Dpa55P13INcg
 mD60YC7iPo7mxNPIQyLbkgB6LwedDoMTDeLWprAebC3Sr4jVngp+4p4/Z8A5ud39iL3j
 uz4UH1q/U40qCVegTqiVjGKHGG3aBopugipoLltr6KQLJBQLn7q2Qw1glWM214W8csTc
 ZiwkmjNm5owcWeFchUn2+/zn8DXTd/yfB1XovXkxk+iyKR1/Dk3gbGv++c0BTRv4tppE
 vALrCbgfUhuXN/ur7NG0JjuY0/TtV+J22fnRKPzqHvjElF8ouWjYuSxoNgLhpybGft5r
 06AQ==
X-Gm-Message-State: APjAAAVIwutAMKL7+LYxpakeDLFYkHYF+3MKYEDeVOwGN5jeoSrjdUxB
 FwwdTNYNsNPHm6rU0D63Yo0=
X-Google-Smtp-Source: APXvYqzH/Fb2rRJgC7QIBqkUDelILLM7o7FXNLzJWMFGznShGN50OrlVbmIDnTmkWuRLO1lAUsOcRA==
X-Received: by 2002:adf:ee41:: with SMTP id w1mr12591389wro.102.1567096878914; 
 Thu, 29 Aug 2019 09:41:18 -0700 (PDT)
Received: from localhost (pD9E51890.dip0.t-ipconnect.de. [217.229.24.144])
 by smtp.gmail.com with ESMTPSA id s64sm6260070wmf.16.2019.08.29.09.41.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 09:41:17 -0700 (PDT)
Date: Thu, 29 Aug 2019 18:41:15 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V3 2/6] dt-bindings: PCI: tegra: Add PCIe slot supplies
 regulator entries
Message-ID: <20190829164115.GD19842@ulmo>
References: <20190828172850.19871-1-vidyas@nvidia.com>
 <20190828172850.19871-3-vidyas@nvidia.com>
 <20190829120329.GC13187@ulmo>
 <cd106d64-e06c-e7a2-d807-f5f080625363@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <cd106d64-e06c-e7a2-d807-f5f080625363@nvidia.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_094120_669440_427CC709 
X-CRM114-Status: GOOD (  27.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mperttunen@nvidia.com, mmaddireddy@nvidia.com, kthota@nvidia.com,
 gustavo.pimentel@synopsys.com, linux-kernel@vger.kernel.org, kishon@ti.com,
 linux-tegra@vger.kernel.org, robh+dt@kernel.org, linux-pci@vger.kernel.org,
 bhelgaas@google.com, andrew.murray@arm.com, digetx@gmail.com,
 jonathanh@nvidia.com, linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: multipart/mixed; boundary="===============4411853027515207452=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4411853027515207452==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="DiL7RhKs8rK9YGuF"
Content-Disposition: inline


--DiL7RhKs8rK9YGuF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 29, 2019 at 08:48:39PM +0530, Vidya Sagar wrote:
> On 8/29/2019 5:33 PM, Thierry Reding wrote:
> > On Wed, Aug 28, 2019 at 10:58:46PM +0530, Vidya Sagar wrote:
> > > Add optional bindings "vpcie3v3-supply" and "vpcie12v-supply" to desc=
ribe
> > > regulators of a PCIe slot's supplies 3.3V and 12V provided the platfo=
rm
> > > is designed to have regulator controlled slot supplies.
> > >=20
> > > Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> > > ---
> > > V3:
> > > * None
> > >=20
> > > V2:
> > > * None
> > >=20
> > >   .../devicetree/bindings/pci/nvidia,tegra194-pcie.txt      | 8 +++++=
+++
> > >   1 file changed, 8 insertions(+)
> > >=20
> > > diff --git a/Documentation/devicetree/bindings/pci/nvidia,tegra194-pc=
ie.txt b/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie.txt
> > > index 0ac1b867ac24..b739f92da58e 100644
> > > --- a/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie.txt
> > > +++ b/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie.txt
> > > @@ -104,6 +104,12 @@ Optional properties:
> > >      specified in microseconds
> > >   - nvidia,aspm-l0s-entrance-latency-us: ASPM L0s entrance latency to=
 be
> > >      specified in microseconds
> > > +- vpcie3v3-supply: A phandle to the regulator node that supplies 3.3=
V to the slot
> > > +  if the platform has one such slot. (Ex:- x16 slot owned by C5 cont=
roller
> > > +  in p2972-0000 platform).
> > > +- vpcie12v-supply: A phandle to the regulator node that supplies 12V=
 to the slot
> > > +  if the platform has one such slot. (Ex:- x16 slot owned by C5 cont=
roller
> > > +  in p2972-0000 platform).
> >=20
> > There's an ongoing discussion regarding the use of optional power
> > supplies and I'm wondering if we're not abusing this here. Why exactly
> > are these regulators optional?
> I made them optional because, the number and type of supplies typically d=
epend on the
> kind of slot the controller is owning. If it is a CEM slot, then, it need=
s 3.3V & 12V
> supplies and if it is an M.2 Key-E/M slot, it needs only 3.3V supply. Als=
o, if there are
> on-board PCIe endpoint devices, supplies may vary again from vendor to ve=
ndor.
> Considering all these, I made them optional instead of mandatory.
> Also, I agree that regulator framework supplies a dummy regulator if we m=
ake them mandatory
> but doesn't supply one, but it does so with a warning print in the log wh=
ich I feel is
> an unwanted alert and to avoid that one has to supply dummy/fixed regulat=
ors which again
> seems an overkill when all of this can be addressed by making slot regula=
tors optional.

Okay. That sounds like a good reason to make these optional indeed.
There is no way for the PCI controller to know exactly which regulators
will be needed. The only case where it is known is that of the regular
PCIe slot where the 3.3 V and 12 V are mandatory. But since it isn't
always a standard PCIe slot that the controller drives, I think optional
is okay in this case.

Thierry

> > The distinction is somewhat subtle, but the other way to look at
> > modelling this in DT is that the supplies are in fact required, but may
> > be connected to an always-on regulator with a fixed voltage. Or in some
> > cases they may also be shorted to ground. In both cases the PCI
> > controller, or rather the slot that the controller connects to, actually
> > "requires" the supplies, it's just that we can get away without
> > describing them because they can't be controlled anyway.
> >=20
> > Looking at the PCI connector pinout for PCI Express, I do see a bunch of
> > +3.3 V and +12 V pins. To me that indicates that the 3.3 V and 12 V
> > supplies are indeed required for PCI slots. I'm not sure about devices
> > that are directly connected to the PCI controller, though. I'll need to
> > go look at some schematics to get a better understanding of these.
> >=20
> > Bottom line: I'm wondering if we shouldn't really make these supplies
> > mandatory and in case where we don't care either just leave them away
> > (the regulator framework will supply a dummy regulator in that case) or
> > hook them up to a fixed regulator if that matches the hardware design.
> >=20
> > Any thoughts?
> >=20
> > Thierry
> >=20
> > >   Examples:
> > >   =3D=3D=3D=3D=3D=3D=3D=3D=3D
> > > @@ -156,6 +162,8 @@ Tegra194:
> > >   			  0xc2000000 0x18 0x00000000 0x18 0x00000000 0x4 0x00000000>;  /=
* prefetchable memory (16GB) */
> > >   		vddio-pex-ctl-supply =3D <&vdd_1v8ao>;
> > > +		vpcie3v3-supply =3D <&vdd_3v3_pcie>;
> > > +		vpcie12v-supply =3D <&vdd_12v_pcie>;
> > >   		phys =3D <&p2u_hsio_2>, <&p2u_hsio_3>, <&p2u_hsio_4>,
> > >   		       <&p2u_hsio_5>;
> > > --=20
> > > 2.17.1
> > >=20
>=20

--DiL7RhKs8rK9YGuF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl1oACkACgkQ3SOs138+
s6EGvw//aC8g/p1/uH6bQaFYayqHbvSXJkcs+qLM1pXP6sQs+Y78dkyd0bFY5d3I
eWq7JMsg5syZh6vKYm8rYUQoOvmhKvgGJ2ICfXTe5Jj9F3pS2pK6PCcF3OpZIopk
N9rsnpwUm/N5966NBkZyikA9iQat2EPJXSJA917kV8bAhs2uu4/xxBO2joG9GLPb
hWD6EtgywvtYlRhpJ7irFlVjJ8VOj5j3zUi6ZpedMrtU8Bx/llbz+1bnrvyVlMjY
HtcN2ndkRacf4nwu8/nB5GIzucOAE6jiKmwjpfv0PwV1GHkj8QggDZ6U8YEK98i3
cYBL2iGlQw+k3dJgPl5poUrHmyHxvphHt3eEnrbOqXwe3jFtC/z4cKtc0d2h0omo
5OQzeXZ9DNP26b2NvCkz/JCQlSGzlCp6M/MiJQu4Iu53DTAR9S2T650QG4s/hMVF
cBujoyFuAc9rXwB+uxrkHHcHZZFNXDTawC8LQJgWIAfa5v8bhgfWKdaHbjhb0Bee
R7fHHclqVSU2J1K6cRJ1d1daqme8VloCxg+eClg72UxXXnEPqRPP/PJS7tyX9Dzp
uJMC4JfgRu+xShFywcXH9oif3ufSqHBnfIUiWNnKefLu5w6Y3Fg10nj5Shj0k0UL
Jjk6JzRLE/h8QkgmNs49r3r7NkjzFfm4GZ5xBC0n/VAeVRxxW/8=
=RTQ7
-----END PGP SIGNATURE-----

--DiL7RhKs8rK9YGuF--


--===============4411853027515207452==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4411853027515207452==--

