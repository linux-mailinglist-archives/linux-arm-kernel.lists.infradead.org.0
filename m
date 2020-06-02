Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B82411EBC0B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 14:48:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=g+IDV0Diq5b2zoB0yuPe8Eos1wMxW1Sb+/nGhYTNT7s=; b=NcRjPbu3W5tdQzpONerkeqx8m
	89N5GQULato7x0GJDL3lg8uTEHutLUuTZEzKjUU4u7UOpIA+cH9NfC7SHU6uWMrOVqubzQp9kYBIM
	0txx3a8ra2/5Wjy40SSXzDWbnoGbzZz4CvaUbiRBOSaFKZl5A/w/fVMsFQaWQQP413rDSsgIvvoFw
	v0zan/dYAVebtYXNooPb5E8lX6RLNd21ZNgmy71gUVB9WASILguD/fhVKrtOSZSzFrf1AbDhMoL/g
	dmri4xyNQ/madcZGvHKTczkxVv+b5Fh8+v+Nyo388jImQVmyALjG1PlviNv+6yB/wcnZtqytGZJUK
	WwNhFor3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg6LV-0000WO-8h; Tue, 02 Jun 2020 12:48:45 +0000
Received: from mail-ej1-x641.google.com ([2a00:1450:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg6LO-0000Vc-CJ
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 12:48:39 +0000
Received: by mail-ej1-x641.google.com with SMTP id z5so12639588ejb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 02 Jun 2020 05:48:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=D8ASqWdJAv4t2zLF3N0AUOlU0jAxJ7ZIdD5NPQNHjtQ=;
 b=q5BiBMm6LBcsZZl6y+QtTB8QMD09UkwOycxWIv8vTm+sOTvKN7AnH4f5Dbb4ihlc0T
 hjZO8PZKG6NCuSHlJQMKMe7adp3yh0QoO+G8PoGz++SYakN6EU/I47tc6LtpGpLLojON
 349dPRDJttaotizfuNqo2/ktYHgJm6hK18mJtUPkk5ZSnF8BOc2Rv6lQWiuzgXpFm+KD
 X47bmmhC4lr1SiHhb1oCsPpgVI5wETtOUVtKSfSZ3mIQLx+Wm7PqqaXwC6dPN5+bo0Wr
 pIPQY2V1/d7z2tgVw0WjtnlIb17ymUZA3uzua0FOWjqIV5S1bcvKSwhep78wkTC3+PtS
 E7Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=D8ASqWdJAv4t2zLF3N0AUOlU0jAxJ7ZIdD5NPQNHjtQ=;
 b=lA+xrQ7uTqvJQUqpwfLq7mTclkFcnaKAJgGyC+Aj4Ibx+zgXkGF/4bvVwuQ1THaMPc
 lypNI/7TGqaB8FUzMeQ3EbdM8nl+g3IgFa8eawVhSGDpnKEEI3bj8f8T8cfVIaPFLE2a
 KKgPU9lbM/VxUEhM7a0369DlMaPW6RI1NuMgEEfLqEiMauwnoT2eXFU5j/biRPS2n5l/
 flDjvK8EPenLxsq4ATo3FirgGNyJQljT+MbZEDPV+nJQiE5mLqgTngKFm1Qzdd2C8dwF
 aVPkNSi3spJ/b+SyukP1X2ZGOcuKm+btD9FGOrF7iNjrpuaHGnQ9MP4G5ye7uKrstDFT
 3cTQ==
X-Gm-Message-State: AOAM5306sPNuw0vdbb/jHYCYmjSPiEOFDQXmjDuZYHOwz2QQG86mxWA+
 seWFRyIJFo1p+4YSC+tMr9U=
X-Google-Smtp-Source: ABdhPJz9TSeTycfAnFGOX7r1nw8BJ3WU0LAiYCUi9qQB1y/48Xus0YdiirnXPJDYCzGQ/fZvyc+wmA==
X-Received: by 2002:a17:906:77c4:: with SMTP id
 m4mr14353047ejn.246.1591102117237; 
 Tue, 02 Jun 2020 05:48:37 -0700 (PDT)
Received: from localhost (pd9e51079.dip0.t-ipconnect.de. [217.229.16.121])
 by smtp.gmail.com with ESMTPSA id sa19sm1621550ejb.15.2020.06.02.05.48.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Jun 2020 05:48:35 -0700 (PDT)
Date: Tue, 2 Jun 2020 14:48:35 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH] pwm: imx27: Fix rounding behavior
Message-ID: <20200602124835.GF3360525@ulmo>
References: <20200416080245.3203-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20200416080245.3203-1-u.kleine-koenig@pengutronix.de>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_054838_419166_8BC2E1C0 
X-CRM114-Status: GOOD (  12.52  )
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
Cc: linux-pwm@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0810393904207283486=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0810393904207283486==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="IvGM3kKqwtniy32b"
Content-Disposition: inline


--IvGM3kKqwtniy32b
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 16, 2020 at 10:02:45AM +0200, Uwe Kleine-K=C3=B6nig wrote:
> To not trigger the warnings provided by CONFIG_PWM_DEBUG
>=20
>  - use up-rounding in .get_state()
>  - don't divide by the result of a division
>  - don't use the rounded counter value for the period length to calculate
>    the counter value for the duty cycle
>=20
> Signed-off-by: Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix.de>
> ---
>  drivers/pwm/pwm-imx27.c | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)

Applied, thanks.

Thierry

--IvGM3kKqwtniy32b
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl7WSqMACgkQ3SOs138+
s6H0Ew//dg1D7NOYsebYUxn1ebbp1eH/F2Xg1HwYxqcR0QKh+xVcdEHbVEVqPkKL
Fn1HM0l8qe/Und4p8CvS36PyTTGn4X/c3O3+l0wXYvsbTMCwlQctBbcWMvafAgIj
xcjfweYrjXZUwNM9KYiNIZCASt5pI3lfTbnxp+vLQhnGgkL8ZmZUmBmspVTLsSOy
yYn50/FlqSFCFWfiFK/WE8UZWo5rAFO5KubXsJKKMipyJuKTa5tumLj8ic30E9g6
HRHqPuBS/BoIZ4ZzxfgDZo6qyHHvnlFx3ZAXxEFwVGiHj2gy2LH9XpIW/unZLxwq
kW5ydvr+ynOZhKqWNHP3g2080+tM+nm/G6PUeh4tws85qANHcFYge5HhjF+NDunP
oI1ZOgIaqBcRnBRooDJ4Zn/JQHmpQ0X4pwJdNeKAR2pFq0wp5w+UeQbNpRMxJho1
ia+KawFNTWTFCTLFgvzP2GY0yZ+BL5Kx6820khlcQtdq6zqNz0EWS4dJ5pN84VB9
qkpAOpMiP0Mvx8cnaDdLzEFZ0LAE8wIIlUZvS4xo+PzMglH51F3HzHjYMpJ45rEP
dlAXS7W2tswYlUK89IrpEdZv5dcT4t1FeXtLRfZF0bv6RUGW35uTUw8sWgvqk3KT
dkpcXxfpRNkifF63NKULxHq8wrEAbwqZDdYzlVLweJMRpAW+/TI=
=YRtJ
-----END PGP SIGNATURE-----

--IvGM3kKqwtniy32b--


--===============0810393904207283486==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0810393904207283486==--

