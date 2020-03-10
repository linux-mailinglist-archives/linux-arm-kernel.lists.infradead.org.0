Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA90E18048C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 18:14:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iFgdRr+uWq9EvvEJ86Jgz7ftbKrqaCFN5hnfHJnhCM8=; b=tIyyHJtL7DjxWgCX9vTpDwHlK
	TfjF46CjKHmIPFvZ3tWAiTXpEre513SWzEl2u3Icz6HPq5R8edDn9RBXZj2nOlE+0hCwMyhsa7V+/
	2JzTDrSkcxG2onfiFgs3l/xKClFlnYpBmZqdjj6sZiz6xUS8xPmk2zLpou+npcACwuFlKp4KUST1F
	CRyp8BWJim7QaHYIglz1okB11wq5LllmkvipkOV37BG9oKbdCjriyhbMnRgOhE5G0OD/3It1QLYKo
	DxchtFcXRTU9zZYN9RAJhRTugPSwUMBw8hMZcJL7hBjnrVmTF6oqmTrYfufmHx8pEGYyJ/PHOE+qi
	M/5NdboZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBiS0-00021N-Fz; Tue, 10 Mar 2020 17:13:52 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBiRt-000207-6R
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 17:13:46 +0000
Received: by mail-wr1-x442.google.com with SMTP id s14so3232433wrt.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 10:13:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=X1PUxwFQA8c9j51WnRi6Nm8Fu/nPospzhRaCoQrGYvE=;
 b=TtPPrB9rIchoH0ODp+e06tmGnlJKRBp5681b2S8QU1VoLl8Mr8uKXciqfBJruLy5kO
 72t0joEWFQBFNs5WVYkF3GtcrXID7z15k3HvjhWWmkpyOEUuI4Fz2rM4sMfJLpAX2ZIh
 ee+UtCDyPFhgPYaA6Nc76uS1g1WT1FLdyqSwdst3IBSI0gCpd+lSkgETpBjny3QWDTuU
 pzAY08DkKsmszrhUyyNCM2Pnu2zl9Vm7OS5+i7YFpoMii1TAgOtcl43QrNauVcNKsC+T
 I8M42kxFSviaxuPBKxtloPYIsdqb/f0Ure4AuVxYXmBW6haXnrOk+YCO4yiJ4swpZKDH
 H8cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=X1PUxwFQA8c9j51WnRi6Nm8Fu/nPospzhRaCoQrGYvE=;
 b=r/+j5trcyDJRZrnY6clpKCyHJvKkribzYdHOF97AippE98lkQIJJSJuzl0XUJl121B
 W86y1yWAga1eH6OcDqjBmGMbWpsL4pvCI8uEqGnw8VyPz2IpZAStb+iHvtYi4OFlFTst
 D2p0/pSvSKi1DCedLFfmMBO79iqfZhQc2FkA9zrhVqKoe6arm8xUFLUbr1tSDHjsdDZy
 tDj9p+CZZdotm7GjV87R67TYgP4nif2zWBaDk+d7BNJNbpYrW+hv25Vv0Y7RN9Uk9pmY
 Gn9si/9WLUFm5K/pLHsFd7/Qc/gEwIuHv9o9zLIF6nlu1GBnZaHYVzamkG2UTHohDf3F
 /QfA==
X-Gm-Message-State: ANhLgQ2KQMJRUAaWBGKnsWK3HpxL24QnYm0VUkQZOxJrzaPt0Lpqcpho
 YhEZy7ZadYmOu+K0Uh3qnGU=
X-Google-Smtp-Source: ADFU+vv082ivAK2kV9o82i+Lh/FeTPGbh6XmML1p2AierlRN9G266AFBkNd8zghr+Sy639X9cISJTA==
X-Received: by 2002:a05:6000:370:: with SMTP id
 f16mr22278312wrf.9.1583860420748; 
 Tue, 10 Mar 2020 10:13:40 -0700 (PDT)
Received: from localhost (pD9E516A9.dip0.t-ipconnect.de. [217.229.22.169])
 by smtp.gmail.com with ESMTPSA id t18sm5049212wml.17.2020.03.10.10.13.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 10:13:39 -0700 (PDT)
Date: Tue, 10 Mar 2020 18:13:38 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v5 5/8] memory: tegra: Add EMC scaling support code for
 Tegra210
Message-ID: <20200310171338.GF3079591@ulmo>
References: <20200310152003.2945170-1-thierry.reding@gmail.com>
 <20200310152003.2945170-6-thierry.reding@gmail.com>
 <4ea3a96f-52cb-4eab-cf92-932f6882ad85@gmail.com>
MIME-Version: 1.0
In-Reply-To: <4ea3a96f-52cb-4eab-cf92-932f6882ad85@gmail.com>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_101345_266602_38E13E85 
X-CRM114-Status: GOOD (  26.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
Content-Type: multipart/mixed; boundary="===============4807509017656333529=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4807509017656333529==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="NGIwU0kFl1Z1A3An"
Content-Disposition: inline


--NGIwU0kFl1Z1A3An
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 10, 2020 at 07:43:12PM +0300, Dmitry Osipenko wrote:
> 10.03.2020 18:20, Thierry Reding =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> > From: Joseph Lo <josephl@nvidia.com>
> >=20
> > This is the initial patch for Tegra210 EMC frequency scaling. It has the
> > code to program various aspects of the EMC that are standardized, but it
> > does not yet include the specific programming sequence needed for clock
> > scaling.
> >=20
> > The driver is designed to support LPDDR4 SDRAM. Devices that use LPDDR4
> > need to perform training of the RAM before it can be used. Firmware will
> > perform this training during early boot and pass a table of supported
> > frequencies to the kernel via device tree.
> >=20
> > For the frequencies above 800 MHz, periodic retraining is needed to
> > compensate for changes in timing. This periodic training will have to be
> > performed until the frequency drops back to or below 800 MHz.
> >=20
> > This driver provides helpers used during this runtime retraining that
> > will be used by the sequence specific code in a follow-up patch.
> >=20
> > Based on work by Peter De Schrijver <pdeschrijver@nvidia.com>.
> >=20
> > Signed-off-by: Joseph Lo <josephl@nvidia.com>
> > Signed-off-by: Thierry Reding <treding@nvidia.com>
> > ---
> > Changes in v5:
> > - major rework and cleanup
> >=20
> >  drivers/memory/tegra/tegra210-emc.c | 1952 +++++++++++++++++++++------
> >  drivers/memory/tegra/tegra210-emc.h |  893 +++++++++++-
> >  2 files changed, 2390 insertions(+), 455 deletions(-)
> >=20
> > diff --git a/drivers/memory/tegra/tegra210-emc.c b/drivers/memory/tegra=
/tegra210-emc.c
> > index 80ea14d1e6ce..4ea8fb70a4fd 100644
> > --- a/drivers/memory/tegra/tegra210-emc.c
> > +++ b/drivers/memory/tegra/tegra210-emc.c
> > @@ -1,6 +1,6 @@
> >  // SPDX-License-Identifier: GPL-2.0
> >  /*
> > - * Copyright (c) 2015-2019, NVIDIA CORPORATION.  All rights reserved.
> > + * Copyright (c) 2015-2020, NVIDIA CORPORATION.  All rights reserved.
> >   */
>=20
> Would be nice to avoid all the unnecessary changes, like the one above
> and then all the code's removals/reshuffling.
>=20
> Such that a new patch was a clean addition to a previous patch, instead
> of a re-write.

I think this is the result of me messing up a rebase. The EMC driver
changes added in the clock driver patch should've been in this patch,
which would've made this a clean addition. I'll reshuffle the code
for the next revision.

Thanks for pointing that out.

Thierry

--NGIwU0kFl1Z1A3An
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl5nysIACgkQ3SOs138+
s6HEAA//QmK3t4ukt87828r7Nv2SwiHTTaa2Ye2D+MviiW5gQGuejM71cG0f1yVD
pRfZtF83Vw0y8rITa25HiCjM+qCBk8ZaHMgokgXgSPW1t3Ata4aoCnjyGlFfNSGX
SM8DmMt7zFLdoVgjV4oWgk16CnbwamqmCvTGLrIObnvilJMD1EGaJpAgliom5DJt
VHsxit2CGv2jsEkHsBvqpUq2Vfe959FiiCQoQwyf8uYaMM7RWhYKTTDGhi0y0Wdb
Xktq0/448CK9QW2jj/rWfmFLCOt0NnuYK3rFf3ldtDsYkFfUu4iqn5rt3u9XxqCo
+1g8vUzEc+1peAUeTSO/GjtiTEx2qcE2W0yx2AikAejEM/qNwR5VopkInSclClKl
Cv5JAg10mHFJCySzZqTiKojCgllnj/WHvgN3UJER+hYsBQ3Vx1qTAQ2gVymlHVyq
2ee70J8KN5sQj43sQ+4WlwjtrtT03ORmdLCwL6gUhQZM/JfblDIJ0YE8Cvd+QMWk
utuXITH33f+CJcu7OrYOapFUqwTyyXOyXbJpnegYlYtqoygZ8GRWsr1aIIAP3Nht
0yGpo0lxdGeAt6jqqYgABOMwWphCsJ5ihofV5RhecXyFAVlLt+9HlWgXH9LSKONl
fD/QqzKMIPOWdmBkSfavRfK1pb+hqFcHlwpoin67t1H026CexQs=
=+3N+
-----END PGP SIGNATURE-----

--NGIwU0kFl1Z1A3An--


--===============4807509017656333529==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4807509017656333529==--

