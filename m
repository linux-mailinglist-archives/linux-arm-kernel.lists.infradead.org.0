Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F005718047B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 18:12:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CFsfwmEcXkiJagWlSZXi7WTYKYuSjL8jfJL2hIccx+c=; b=a6EVziDLNF6gxhrS+3SYswLKf
	tVwyqantPIKnkw4KpPETJaoyjqw+Laoqp3SM38y+40WAmIbwhVBeGRaKuE3bqp9MjBYudTo53fDgc
	x6UIXRubEY1a03abWnxq59GN2OqD4QRYDojT6N9MTOJTiUloro617TDd4q+rguePtbgo18Ex4gow5
	93vupRsVnkKcjbmMo/RxfvIY+VlM9AUFzvBZYzew1I/uN14K1cVjOrRl16+vRQ/ZTHaTxJwGMCPae
	uGq0Vir3U04KoTQNr9EPb5EfXhTq1xDfPqDdd4U+CMyQkCKE9CFUxHDRjVtRbFQsl1bZbEV9EZIc1
	e3Kyl+/AQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBiQY-0001dh-EV; Tue, 10 Mar 2020 17:12:22 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBiQO-0001d5-Da
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 17:12:13 +0000
Received: by mail-wm1-x343.google.com with SMTP id a132so2287108wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 10:12:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=LKUhAxSDiXZz9k+Am7IwqG8TBjJAqywF+N6KA2tyh0c=;
 b=H8F2v/bybE9ZEaybwe80VCAqEnD7JxdIpHfUUvto4kZ+pYayYL8mOYC0Sb7rln/Cq7
 50foEmGx8WRQBv/l8IlQ/EqJe02QcwZrVFO4wLqDuRqWzAjr6+I31BqseijJr3XchS/S
 U9JerH/ADnnbW1T+oTFcmsWozjSitJF2rtTnLeCGb0/GlVcX8iggEQymVn39sZIZJtuT
 t2ZEcMwKxBD+Wz3FE1o8uxBIpImQOO2944Gy2NQAPSoqvFei30lpuvLKnm1jFCzTkFFZ
 3qQRc/v/2MNKPqmIJMFi/KZGPC8IU2Z1PkL1P9v6BH+UzHO9//5eeKX7x/vENl+Wx9Mp
 6Djg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=LKUhAxSDiXZz9k+Am7IwqG8TBjJAqywF+N6KA2tyh0c=;
 b=N2mgpo9Nje02E/6UaLWgXA+ZL/I684gSOuuTzY31FoEVgifeoBa17I2+UDzQaTuGTZ
 tALgnYa7lyNnNGYVni5bo0wb1Q1435k2DcoZzCwl/h1Inj714Q5sKDA0Bb3h8QchOJo4
 +TMLkdx5l9Dq1MyigVBD9o34RXYXg/+1IARCe6QmPlWeXGAc89dVgHSdjdKPDajoENwG
 pbFT/YO1/dWhq1gTc04Yk+M+eBkRYINc5nGszoT/PRh5nRSr2NRozXWCPabymWMTrqtk
 43/v16/ov6CgUrbWvyOJNMY5s4rIaMYvrPZmajp7Otc1DGOwLtZSNb2/aeLZNnVa/FQw
 9vUQ==
X-Gm-Message-State: ANhLgQ10TyltC2FcY3FzDpAUYF5Lf2zWS1MSGP6ZH8wxuEBL8uwCIKHv
 gzpii4yBpKM3HLpz7cXynCs=
X-Google-Smtp-Source: ADFU+vsBEK9JNpFIt1tv8l5t900LrWPohb/2G7vL+e1mQNvDYuytSY9FTrnvi6owLE6AoGu4Ev2+Vg==
X-Received: by 2002:a1c:b4c1:: with SMTP id d184mr3121260wmf.160.1583860330609; 
 Tue, 10 Mar 2020 10:12:10 -0700 (PDT)
Received: from localhost (pD9E516A9.dip0.t-ipconnect.de. [217.229.22.169])
 by smtp.gmail.com with ESMTPSA id g5sm213909wrr.57.2020.03.10.10.12.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 10:12:09 -0700 (PDT)
Date: Tue, 10 Mar 2020 18:12:08 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v5 4/8] dt-bindings: memory: tegra: Add external memory
 controller binding for Tegra210
Message-ID: <20200310171208.GE3079591@ulmo>
References: <20200310152003.2945170-1-thierry.reding@gmail.com>
 <20200310152003.2945170-5-thierry.reding@gmail.com>
 <67295862-0898-87d1-ddb2-660713501bca@gmail.com>
MIME-Version: 1.0
In-Reply-To: <67295862-0898-87d1-ddb2-660713501bca@gmail.com>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_101212_460018_000D2E71 
X-CRM114-Status: GOOD (  15.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
Content-Type: multipart/mixed; boundary="===============5773204186567585796=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5773204186567585796==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="KuLpqunXa7jZSBt+"
Content-Disposition: inline


--KuLpqunXa7jZSBt+
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 10, 2020 at 07:35:01PM +0300, Dmitry Osipenko wrote:
> 10.03.2020 18:19, Thierry Reding =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> > From: Joseph Lo <josephl@nvidia.com>
> >=20
> > Add the binding document for the external memory controller (EMC) which
> > communicates with external LPDDR4 devices. It includes the bindings of
> > the EMC node and a sub-node of EMC table which under the reserved memory
> > node. The EMC table contains the data of the rates that EMC supported.
> >=20
> > Signed-off-by: Joseph Lo <josephl@nvidia.com>
> > Signed-off-by: Thierry Reding <treding@nvidia.com>
> > ---
> > Changes in v5:
> > - convert to dt-schema
>=20
> ...
>=20
> > +  memory-region:
> > +    $ref: /schemas/types.yaml#/definitions/phandle
> > +    description:
> > +      phandle to a reserved memory region describing the table of EMC
> > +      frequencies trained by the firmware
>=20
> Shouldn't the table's format be documented?

I'm not sure that's needed here. A proprietary bootloader creates this
table and the kernel has a structure for it. Describing the exact layout
in the device tree binding seems a bit excessive.

Thierry

--KuLpqunXa7jZSBt+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl5nymgACgkQ3SOs138+
s6Fj5BAAmv+mvasJUdui0XMVUv4sBs9YLxhTG+7acJVbOtaCfrhyxXoIoI3Y+PpF
HwS5ueYZ/cl+OHk0zkXiUWx8bZ6lQzZHw10iSkdLFAZze2LZmms9vHbIMwYaF+g9
APNbwV+anz+If2OTSXP1AFYorlo9myooQy4hBHILwy8pXcMnJg7FYIZkYtq8L836
ffkocgrgeo4QfP1JKLXbyb3fsT5rwoxrKiaLNCxH/+vNOdxuMnstI9QhZxFNvNgu
DlFXjRfpnlK99G7wfbqEYn8aP0VQ2l/6UeFGG37PTCBZX6WWg9WpWrMqzacKJO6K
+Esu24qd266pgSu2Tw9iy09JYOVqWwlPWQg0O47IFs0fCq2nj+ldJ7eJJ6uTIIsu
b/OOK2wh5zJ/rYy+9mR+IsjNtsux2vXXElJrj4kMvcNFuC70VfAeihGIB5PtlFOP
diCYDy8BJKwH0mPRbf9cIu1N885HNAhDilEw3o9QvtuyYYSeO+A4i55kBA+yc3RZ
+2MRvFaI28cNU6FrXuHAvBxnfLaH6AKVgGd16mW+0A34xlKiLqlzwjc/2pub4Udn
1MDG5vnvAWIutHjR0KOraodPzntxR8y0HJmihMTY2iNA87OolC7UjoNxpJcc0p7T
znsyuk0wZUYktfTHaJz9rPpk+LYecFvNue0jKSzQbukSU4ah0vA=
=DG9g
-----END PGP SIGNATURE-----

--KuLpqunXa7jZSBt+--


--===============5773204186567585796==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5773204186567585796==--

