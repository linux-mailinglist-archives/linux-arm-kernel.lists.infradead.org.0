Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FFE81EBBDF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 14:40:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GynPtSVRSSTIUUDjzppe7yOPxtoNW8TA8tp3xJ+lmFg=; b=n63kV0KOHSmIQyy/BHsCWS1rE
	GaCN1exBuLTaaw/RfsuQ/j0LhK5aYHrOuoYj7iB8Vb42+HgQw8GgqArG75kBczU0dF70dvWti+Ruv
	YRu1urI462JvKTpnwEfOWqVUzsw9/EFC3D+dHX7+f7vJpiUnqMHfz/ExPJxnhx+OEs6FcF/fyrLo9
	8SmmVC8GdKCzi1UoNNkuMsjaf5jj3bSLgiwIuPZJWuCRYbQU2K5yuVgvbQGSppUWQ5DkoIKxa03Iu
	umKlMbDIJAmO2/K26BdPiITyxmfs0uMM5n8kr96gx1QQRIO5zHl9baHR+RwpW9yRtYZyGHWwGjeq4
	WpAZL2Zzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg6DQ-00053D-0k; Tue, 02 Jun 2020 12:40:24 +0000
Received: from mail-ej1-x641.google.com ([2a00:1450:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg6DG-0003wj-03
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 12:40:19 +0000
Received: by mail-ej1-x641.google.com with SMTP id gl26so12563747ejb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jun 2020 05:40:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=pnkbE2uBubmbsQ93vSdhuAVLA29ePPmsNN07Qt9DHJ4=;
 b=dYsfrN7LwYJdkBm0nZ1qPQHkUNeGceflDzI5C5NUoLIiZvmiZpWFc/mmvz6qM3A546
 /5G/DdfN6Fg7pJ/64PoBkDDacuYGmPLFyoa4RbNvSIoU7w8rWqRVJ3lxBvGe+S/i0UYD
 6iliy99FeqPecrqyPhTWDxi57Bh0r7g21U11O5jYSVleisF4GZ0k9xl02xK5uf+FAIuO
 +UH2SEnaIXNdaGfuINUDDJ2CSi8JhQnS5Um2aqFgmbbPy5RE1fxA+70wAVhFoo7t0KfN
 saJOvarvOlt/HnlsrlRRlvB9tcD9bYWuRv3vYg08ILqVox2Iyxml5oYoM8QCFsvyPI1G
 8ZhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=pnkbE2uBubmbsQ93vSdhuAVLA29ePPmsNN07Qt9DHJ4=;
 b=icetjvKdqnyDm6M+rfJD9or/aQKFvY3qnr23GWOccpM9Vo21h1GgFVdjaaxkqyVlrV
 mkry11YC4EmeICXHDYCkXZUaNjmn+0Hl+tHfOCmUmCYlUMHHhdSvUwW8F7JjvtsRy73Z
 Z4o30BBnljB4DvbLIJ80eKX+j3N09D7NoFQHli3BVmEAXQPUr2w3Kxq9i9tS2LChtRRJ
 ovEXzrId4fSP39bx5iRC1uJUJd4d2pi+6m18tVLslPxarKhegj7a3GkiA592YQYiBQti
 tR9gA6aS+NF98KSM520ezmF9WHNiSuAJuatR24Msy6Za/QsCLN8VbzX2IWjQlWeHroVs
 5E8g==
X-Gm-Message-State: AOAM533cETpebOMfQsLmGpyIoYTlAY3G8kvy7BX5/NvKkPaj3YyUdc20
 gGV0trVHLH4/bOqI20ctzmM=
X-Google-Smtp-Source: ABdhPJz4LZjAT+sYrMfbdPxp8PF2QaCCD5/7pLVxD/qNvvvB/GiZeB2y1VMgWBQYjIBc3hOGpR7vVQ==
X-Received: by 2002:a17:906:4d04:: with SMTP id
 r4mr22460219eju.317.1591101607207; 
 Tue, 02 Jun 2020 05:40:07 -0700 (PDT)
Received: from localhost (pd9e51079.dip0.t-ipconnect.de. [217.229.16.121])
 by smtp.gmail.com with ESMTPSA id cb6sm620637edb.18.2020.06.02.05.40.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Jun 2020 05:40:05 -0700 (PDT)
Date: Tue, 2 Jun 2020 14:40:04 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Peter Vasil <peter.vasil@gmail.com>
Subject: Re: [PATCH v2] pwm: sun4i: direct clock output support for Allwinner
 A64
Message-ID: <20200602124004.GB3360525@ulmo>
References: <20200428164150.366966-1-peter.vasil@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200428164150.366966-1-peter.vasil@gmail.com>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_054014_198570_AD7161E7 
X-CRM114-Status: GOOD (  10.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:641 listed in]
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
Cc: linux-pwm@vger.kernel.org, nightwolf@relghuar.net,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0457879935234874012=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0457879935234874012==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="+pHx0qQiF2pBVqBT"
Content-Disposition: inline


--+pHx0qQiF2pBVqBT
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 28, 2020 at 06:41:50PM +0200, Peter Vasil wrote:
> Allwinner A64 is capable of a direct clock output on PWM (see A64
> User Manual chapter 3.10). Add support for this in the sun4i PWM
> driver.
>=20
> Signed-off-by: Peter Vasil <peter.vasil@gmail.com>
> ---
>  drivers/pwm/pwm-sun4i.c | 9 +++++++++
>  1 file changed, 9 insertions(+)

Applied, thanks.

Thierry

--+pHx0qQiF2pBVqBT
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl7WSKQACgkQ3SOs138+
s6EaEhAAm/NQGeJ/IOWtqrbF6KZ1hxhFv6kLldfbKchk0A0Rhnebp1FqHYMkQBwu
/KzAQl8/ZLrQMM3oXqYeKEWW+sSowB/KyICk7Ynx/RRJjAQiBsdOjfANNvONeF56
4VOWkiC12fHm7l+vOFWtQttg8ShAIoKQQM/XQ+Gj259BfdAeSs+Gv+7FL9ue8pTI
n6iM9g68mr88CP2XkWMPsMhaSAE21o7UEgMI6y4BpHXETnb2bmbaIHPoWJB2jx/E
rLpCN6iQTkxrgtV/mU8sXggejhRDqTWdq9aueNt3dEDj4o2eAayIJy4Rba4zbyb/
l1C+6qiuT9MQglKbmY4of4FXWt339nfgtgXJL6aHRJob1ROu/OH0hVmW/jDfJV64
C73+XaNUyfNUqgNc2Q+5B/xNCuRa7cENLhA8j3vu+gKFIlSMHVpD35ISBr/DSQwR
qEBPZ2ZDW6TmqUxr2ZLuirW3SXV6jVngsMJhDqAFSWEaLc49MjIi3LG9ItEQdj6h
h2OTJPS+IE3JSTKkX90e9BA/QEsi+f/SP3sQBpxetXYn19eUliLXMzIKv0V/rWUc
L85/oyvgT1n8PVbc7O0hMEgqoRxwth9R/EOtozadIlceBw9zdpRy3lp+aO4DL8NR
5mOiC5GtWuBmP2/l8/edwhneBVDCQQP2AYVZ6vm29XVX5Glklvs=
=FM1x
-----END PGP SIGNATURE-----

--+pHx0qQiF2pBVqBT--


--===============0457879935234874012==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0457879935234874012==--

