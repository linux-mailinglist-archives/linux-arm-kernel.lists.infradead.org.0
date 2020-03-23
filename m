Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE7FC18F351
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 12:02:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Kw5pZxrYm3ONEIL9fnqaGg+a9yGoW8Y2hLH0JosEh2o=; b=NdpucByY+B1eDTcqEbiCAIqLi
	dQo3X3+uPyuZRrZ2oQHeFVBMRPUlYnXfU5zLP6/inD12nXd1VS2laLMXrtoHLBayB4A57Xo36LG8h
	uBjkVaCOaJc5ZlI0nLbcGvom2HJP7/Is519eFvxATISK+T2JHA2RI2YIQZPnVVHnxy+naly0ROtOk
	CO8KbJfhRIM81VWSaBjW40Ktyfq1Wi+KBfbFAqUCi+MY4EM+4aI0gYLIvg3E28iguOPosfmM4HY2r
	Bp6hl1jFrJGcBFvHQi3BMNg0b2aov6QXRk7Ouoyjp3ZHeO5Hl2Szf2dnKtBa51F20FK8Fs+N516EV
	Lya3vJk5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGKqu-0005It-AZ; Mon, 23 Mar 2020 11:02:40 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGKqf-0005I6-9U
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 11:02:26 +0000
Received: by mail-wr1-x444.google.com with SMTP id d5so4105672wrn.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Mar 2020 04:02:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=YQ2GBjATshIplvLJBnkEmU69ZuL9aT5IEeXUjRBrBsc=;
 b=M5cxysHT4r3SLET1JXdcrPb7r/OqqF39uk/3o4c/yNFn7rWgC2LuS3QIYsiWdIBEFv
 9JaF7/D9p30yfd1BMynaOETu93WomytHnw1m4A+J4iwTyodnulcmpsEKIxhLEq3QEMSo
 ZIge3jJlLIPLg3o5E2p9wDtKtAANlvlHK0MekgV3bDDq+fulOpfyEI66SsryMj19tqMU
 b8fN7dVyAdYJ/MKzcvppk8UX/qceBIdrwcWC38JIg2OyL2u6DWSaVv7OnRQVYyDZBGDD
 e3wlQs2fEYnTD34BTvhQWOr7dkumn4qGUNbkMy/LqE/EyCGMLcrnC9nobEUJmeBw+T59
 LJog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=YQ2GBjATshIplvLJBnkEmU69ZuL9aT5IEeXUjRBrBsc=;
 b=fBoSWqPt95E3ZXceLzsx1PmVyVtOCaIhxcL+Oqt9wD8nc75yh1Vxvew5CoM7ryG9Ny
 RPu34BQzewMedAfXmVvL6ETnyIjCP5882BdxbXFo/Qc7Y4Hb/9K+bX+mHfmXLc4SEEfi
 6ZIzO754i3POXVlCEMGGoi7VdklmSfgjQITW90cweHtlvbBm7TQ0lf0adZNG5KEmSU8D
 r8qWO9RXZwSm4UYvWdJtpFNBNXuZdUVYqwga1EOo9c32rwXVFb04wf0deGkmlTdaJ/I0
 mjHC9D4H0iYDP4ud0f+RDi3EO8v3TFNBbO3K9UW2k5R5r8pWJoG4BCZ46hal4QH9H3tm
 io6g==
X-Gm-Message-State: ANhLgQ3Ng74rZhjEKm9I+bx8uw0PI6zM+7I50Lpm1HRvke81vhuS2cr/
 f1vD3glObrX1i15PRxMVX1w=
X-Google-Smtp-Source: ADFU+vuSpKlosvvv4uXBUKCBdshjKyNRNBYzyUj88SroU8xss08DtZUl+XMts+0GAZqW9SyYFilW8A==
X-Received: by 2002:adf:a21a:: with SMTP id p26mr29193441wra.102.1584961343825; 
 Mon, 23 Mar 2020 04:02:23 -0700 (PDT)
Received: from localhost (pD9E51CDC.dip0.t-ipconnect.de. [217.229.28.220])
 by smtp.gmail.com with ESMTPSA id k133sm22340434wma.11.2020.03.23.04.02.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 04:02:22 -0700 (PDT)
Date: Mon, 23 Mar 2020 12:02:21 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v5 3/8] clk: tegra: Implement Tegra210 EMC clock
Message-ID: <20200323110221.GC3883508@ulmo>
References: <20200310152003.2945170-1-thierry.reding@gmail.com>
 <20200310152003.2945170-4-thierry.reding@gmail.com>
 <7a4e0ab4-e17e-9e6a-2d30-d9a321be1dc8@gmail.com>
MIME-Version: 1.0
In-Reply-To: <7a4e0ab4-e17e-9e6a-2d30-d9a321be1dc8@gmail.com>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_040225_334095_848ECA4F 
X-CRM114-Status: GOOD (  14.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
Content-Type: multipart/mixed; boundary="===============5357981099998306097=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5357981099998306097==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="DSayHWYpDlRfCAAQ"
Content-Disposition: inline


--DSayHWYpDlRfCAAQ
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 10, 2020 at 08:03:05PM +0300, Dmitry Osipenko wrote:
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
> > +#ifdef CONFIG_PM_SLEEP
> > +static int tegra210_emc_suspend(struct device *dev)
>=20
> The __maybe_unused attribute will be a bit cleaner than the #ifdef.

Done.

Thierry

--DSayHWYpDlRfCAAQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl54lz0ACgkQ3SOs138+
s6Gd3BAAuTyoEJ+JL1G9GWcOanhXD05YmbFew23yyyioslf+tvjbE65mIZ0quv65
wLcxow76yP90BL1pX3dIbBHxs+rfq9SGdDC6L8cwT/Vh01xMti0YmWOFmmYZV/fm
4l6OWJlwULsyaQh5q7blUqI5zX+OQ5cNPVNeO5HPpFrjhSrP7d0IbHYqcAcUo0b7
942u/zU1r/yySYXvzOs7nZZ5+gQ6m/vTzbodk/XDZbSWWKZ4PGmrw2FlfFzmWELX
7BoYGo8Y5fCynE7wqqFyPGOGlfr5ADydD5EhKr8ryBphTWNXHm8hL1I37o7RQ5w6
ycwZX8lIkJMeC0x3HINZSkstv2VrPdKTH9h01K9tI/zwjBrzO5dXrfjjo1oszRg3
caxfEzDNjUcO7qlZAJmLdspGU9iprnmXBg7TQQJ4p+tmfDkJjnHoh1+G8VmvXCIZ
pnwS+pU80DSdcHwGFPWMs6vXpqaw92QOmNt/btkWLe06y00S/oTYLuLZ+kqPnX54
JAppAovMhDk1U2PzesmMjzTdzLP8aneT+ScdfWPz+YjaMgoTGPY3+IYzVEaojL2K
WYVSjyfyx5cCjHIeWKI91Mg/N3y096aOo0kRiEgHgpIwccaGezkRH1cu8eWtMPY+
eTuE86Lh7LotXklg6Re46VNih9Q3SZDaVejoC1U9fdOjEpNqabQ=
=Gt4N
-----END PGP SIGNATURE-----

--DSayHWYpDlRfCAAQ--


--===============5357981099998306097==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5357981099998306097==--

