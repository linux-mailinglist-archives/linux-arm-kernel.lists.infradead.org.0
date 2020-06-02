Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D4DD1EBBD8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 14:39:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HOIVJVd28QAvFX/5YLikHwFj6A5XjFanEKVYPfrs0YI=; b=qe6uXKBiEFoJy7LaAjm6ufYUJ
	2BgXDh/4qUfTkemBBRMwywHqoGz7eaxW9qoj51CJxIgMXeotXtEEvN1/m1RgDYfNPkC9RriWPzcKE
	RQML0o7C6qxFluq9wwhe5G6J5Pt4F4FzcqefU/FUFE3FtlKNlTysWHA4z39bbbcXgFY2SEBqyUvwm
	DQ4wXeKCD5iWNPI9gs2jGhd9i8cDoU/LZNFECV9Jhmz0x6x+ObJnnkT0J5Z5dup4s9h1a5gMGLB0e
	3PWBctFLtgJq6JTFlk0nCryX08wonQdCshHaCRxO78zFEOyosGy464l+uTNZ88PsE3bvNbCaeIVME
	jG/NEEb2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg6CU-0002HC-Sf; Tue, 02 Jun 2020 12:39:26 +0000
Received: from mail-ej1-x644.google.com ([2a00:1450:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg6CM-0002GZ-3V; Tue, 02 Jun 2020 12:39:19 +0000
Received: by mail-ej1-x644.google.com with SMTP id f7so12582967ejq.6;
 Tue, 02 Jun 2020 05:39:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=F1vjzv7szM2SvYyH6cUhGI5pKgsWnnEULj32MB0yFS4=;
 b=WYnvAJWjcIH5V3n93yd+hBCgHBYATbMf4IhCsfwQ9Oy1ZM9Z6rPS+WbFRPRAFWV/bF
 g8NVrkY1eAE3itDiEE0aGbFh82DXnCYGwNCAVEFB9InkZi2h89PET4FN6iEgxXtQf0uv
 Tx1pit9Jd6xv3AdFKIWO7ZejWVHuRhkC878hAEFOiQFDje52U6ZlKNLeqXVPUoQX4T4e
 GB7+N4Vxwux1TDzFrN8dajdxWthW3Hz1N2MRMmG9WVU48aO+F4QH0DSedqbufQ+5ESWw
 ZkycrkFkAvLKMSlCKPX3yzohcyD9cGBxC439RRXOlwZ/WsIsfF6eXyxeDckOKQLJ9FRJ
 WJtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=F1vjzv7szM2SvYyH6cUhGI5pKgsWnnEULj32MB0yFS4=;
 b=q1+qlGpbb/ssqPLy9b2OWwkthXEuTpDv0HqmFCRNUxcKCAaxAjHy9nBcTUeQQSW+0u
 brhggdFI/IH/pJ1OtDQoWQarMpR6H6i046TYiR/hSECy0jfWebbnj/oLkvOpQg27AodJ
 sf77OG/CGFArvTiVTZhql5fGlg6HdUgeAiu1ZBd5lDMx2xJL+tFct0gwXhhpjksdd9CF
 U8MbTDBBN6j6HcpE1I76GHGspChs+X8kzx3YcP/B2z0VdQJJ3/n0XQElYhBMo2n9xxpC
 qfoTVeGbbO2zIVzbYUlFNYgqMU4AOBwOLn6FVdOBzluJTz/MT/iEs7cGzoStCO2oOElk
 22Rg==
X-Gm-Message-State: AOAM530gj8SiY8muuEcm1hm5/QiUPlVIwpZjM42w6u9dIPFl0js9rROY
 enz8QhpG0xdC8gPUyz9cUBM=
X-Google-Smtp-Source: ABdhPJy0URsgXsVIryc33w0XdDF5+UsNv9pCt38qFg7zKESxBcV+HSUzFeWuuPBLGmUt+XridHj6UQ==
X-Received: by 2002:a17:906:7ad3:: with SMTP id
 k19mr22505707ejo.464.1591101556221; 
 Tue, 02 Jun 2020 05:39:16 -0700 (PDT)
Received: from localhost (pd9e51079.dip0.t-ipconnect.de. [217.229.16.121])
 by smtp.gmail.com with ESMTPSA id dc8sm1522400edb.10.2020.06.02.05.39.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Jun 2020 05:39:14 -0700 (PDT)
Date: Tue, 2 Jun 2020 14:39:14 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Subject: Re: [PATCH] pwm: rockchip: simplify rockchip_pwm_get_state()
Message-ID: <20200602123914.GA3360525@ulmo>
References: <20190919091728.24756-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
In-Reply-To: <20190919091728.24756-1-linux@rasmusvillemoes.dk>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_053918_143750_594281F1 
X-CRM114-Status: GOOD (  13.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-pwm@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 David Wu <david.wu@rock-chips.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4511719088639064821=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4511719088639064821==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="IJpNTDwzlM2Ie8A6"
Content-Disposition: inline


--IJpNTDwzlM2Ie8A6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 19, 2019 at 11:17:27AM +0200, Rasmus Villemoes wrote:
> The way state->enabled is computed is rather convoluted and hard to
> read - both branches of the if() actually do the exact same thing. So
> remove the if(), and further simplify "<boolean condition> ? true :
> false" to "<boolean condition>".
>=20
> Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
> ---
> I stumbled on this while trying to understand how the pwm subsystem
> works. This patch is a semantic no-op, but it's also possible that,
> say, the first branch simply contains a "double negative" so either
> the !=3D should be =3D=3D or the "false : true" should be "true : false".
>=20
>  drivers/pwm/pwm-rockchip.c | 7 +------
>  1 file changed, 1 insertion(+), 6 deletions(-)

I've applied this. Irrespective of any feedback David would have this is
correct and a nice simplification.

Thierry

--IJpNTDwzlM2Ie8A6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl7WSHEACgkQ3SOs138+
s6EIvA//U+YBcRa/yOWyp3jhnv0UxhIHPIk4tcP1l5N4cNtnj23Y4VCdv7baJM4M
k2OKqKanjnp0AROTYeu150CEqI+xXuND8W7PKRIcCTLkS2Gy7WBXh1ezlCRupzyH
uYRPi+PY5ZkX/owSFRy+2Ii5o5ywzPc5aH6hqsLfKGzkUrJA/wFsTH85JfmEwwTu
8WOYkvO8zGqaA32B5Orx42x4jH020aa/PorZsl1WXjEnqN7zc0Ke5CZxZN/puoE+
YuTAqG9NDMFiZzkeN2vHbuafUyBk0zSRiz+/1KTkKPnubJ0bLncbCZRonghCCCNV
3hWEB8Fm5pP9mo5Ht4q6Z4or2JkuWbcu3IwyE9SrerLtcTbkbCqaU3kkvKFm72Gy
QN2iUJiGHk4i7PYqNEAWfQ9i16U7+2nbb6rroHiHcKR8G1boWJcwyg6dwVto5uUN
47k4J8HTAZBsDysAH4GVavggIig9WwMMqprGhVRA7CLhMtp5i/g+9fyN6OmxmwAO
9N4Sxs/ScWdReU63b0DbWRdEQa9OVK0BWz13uoESETZcfeH9ggZpY2EDBQ96KRY5
cG9Ka88WfHJJ7qth/PcHsu94fFnbcPkZeca16guCWoYIi5SdCJeDuPVfbjV1xn9T
Fu/bhyvbAecyGACpTbIwZb5DhtT4HYr0IX4Q4mJ8PfM8b0BdR4o=
=OaiW
-----END PGP SIGNATURE-----

--IJpNTDwzlM2Ie8A6--


--===============4511719088639064821==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4511719088639064821==--

