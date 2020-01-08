Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EAD11341F5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 13:41:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZUNjxQhzsq1dCHCG2g8c8x1j9YJfi5S2YhSKFgNPQc4=; b=iTMlrxAZGedsj/aclSBn+t4uD
	o/L3vBNLIanoH55Ha23JSbD94j9IRO+Rwp8m3X3eALgxCQgamuPLtpVg03WdPoy9wLT8KdIEyuFoR
	kbR7nvfG1HuXc7l1dymkFSvYJae+RVpiAXKFXubg48hRk2cYZNpivoMx+OBpWOngF7q//BXwP6mnN
	Zrk6WTMCn36+J8zLqh32m6724dNwXDKqUS/L5MVHRmp+IIUlxeN43sh9F+wNsEAFXvQruyWlKDkDq
	7YuU841qVzf+jYHU9ttN9hYSHTV8evWPeA2MJnI/srnl5tlbnIpmzuOG+1IEWqWcRWTqjrmwk05v+
	eRNHaQkUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipAed-0003tp-NX; Wed, 08 Jan 2020 12:41:43 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipAeW-0003t3-Mu
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 12:41:37 +0000
Received: by mail-wm1-x342.google.com with SMTP id m24so2316261wmc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Jan 2020 04:41:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=2FpWqk5kX5ZHzdiu6B4EPT5qMnNg77c2Hjts/PYf+0A=;
 b=H8P3CEg+uTqzcZSyOl/Loa8wZGqZkRitl/SOWRJP0/aVFNuuGI7zodu6Kei6b4yEUF
 LT3qyhbKoPvXKgHoYXFKWOnlpYof81GFy71es14AQmvZx628+YG3oy8oGYjfnI0kC+D+
 ssZ/Yfq8FOTgKbNnazbaEgX0lo+Wd8nfy39FTOd2Bo39v38VVDzpCCyhAzFDZOkxghDb
 2b1v/ivhwuDjCIHVPxQarzNPZeNVVKVLuqye0R1vL1B56v33dc0hrtEANYuo8cszjAFW
 coOWk77rDWTmtLCiDst7ef7KSffAv9pFxwnEt1MRVRJ1q3H1Z3pwT/zkvX3y4SjGw1UI
 o7lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=2FpWqk5kX5ZHzdiu6B4EPT5qMnNg77c2Hjts/PYf+0A=;
 b=TfouzM4HG/jenzoVJexPRKFaRj2okD9Jrs1hzDZo4HABBHOa/ohMxCmi0eQCPVuJJS
 /tM0KXxpReutYDgrTbjaweL/V2caX6w4gHUL/4GnWl4vPVH50845vrt0rWm2yRxWum4w
 ngFJo74Q9ezWE5FPF/rih7/+eh6RfNE9QDDIZIDNd+uQY/nMOX+/jMIUrRqIkINIeAH8
 5LelH5cZNRxZNQeYUacGAFGpsC6KdiNrGedc8Q2kwJ6syNzzdS05HUN+dQ+AqsfgcFMi
 GSZDmScWCk7cqdZW1DHWj/wrGxWlh6bhdfgnU74rSEoAJ405hAYQxlH5VBeFTS5zkLeq
 aJ6w==
X-Gm-Message-State: APjAAAX7SdqIOvByVy5qPW9Nki5MNj4OX0P0Xze9BwP1V2iTYG3T4b6p
 wJAqDgMH91HTiq2j1YDOXW4=
X-Google-Smtp-Source: APXvYqwaF+btXG6zk5cvB15rPmx9cOJ3OhlFMPfM9b/9hmfBceRINUIsHbFESeLBwAtylB9xPyCaHA==
X-Received: by 2002:a1c:e289:: with SMTP id z131mr3483897wmg.18.1578487292009; 
 Wed, 08 Jan 2020 04:41:32 -0800 (PST)
Received: from localhost (p2E5BEF3F.dip0.t-ipconnect.de. [46.91.239.63])
 by smtp.gmail.com with ESMTPSA id w20sm3569232wmk.34.2020.01.08.04.41.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Jan 2020 04:41:30 -0800 (PST)
Date: Wed, 8 Jan 2020 13:41:29 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Subject: Re: [PATCH v2 0/6] pwm: mxs: add support for setting polarity via DT
Message-ID: <20200108124129.GC1993114@ulmo>
References: <20191004133207.6663-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
In-Reply-To: <20191004133207.6663-1-linux@rasmusvillemoes.dk>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_044136_750548_EC2DA7C7 
X-CRM114-Status: GOOD (  18.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pwm@vger.kernel.org,
 devicetree@vger.kernel.org, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0346552675708558275=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0346552675708558275==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="s9fJI615cBHmzTOP"
Content-Disposition: inline


--s9fJI615cBHmzTOP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 04, 2019 at 03:32:01PM +0200, Rasmus Villemoes wrote:
> This series adds support for setting the polarity via DT to the
> pwm-mxs driver.
>=20
> The DT binding is updated, but I'm not touching the existing .dts or
> .dtsi files - it seems that the same was done for bcm2835 in commits
> 46421d9d8e802e570dfa4d793a4938d2642ec7a7 and
> 8a88b2a2017d1e7e80db53080baff591fd454722, while
> arch/arm/boot/dts/bcm283x.dtsi still has #pwm-cells =3D <2>.
>=20
> v2:
> - Rebase to v5.4-rc1
> - Address comments from Uwe.
> - Add Rob's ack to patch 4.
> - New patches 5 and 6. The last one is independent of the others, but
>   I stumbled on this when rebasing and found the signature had
>   changed.
>=20
> Rasmus Villemoes (6):
>   pwm: mxs: implement ->apply
>   pwm: mxs: remove legacy methods
>   pwm: mxs: add support for inverse polarity
>   dt-bindings: pwm: mxs-pwm: Increase #pwm-cells
>   pwm: mxs: avoid a division in mxs_pwm_apply()
>   pwm: update comment on struct pwm_ops::apply
>=20
>  .../devicetree/bindings/pwm/mxs-pwm.txt       |   4 +-
>  drivers/pwm/pwm-mxs.c                         | 101 +++++++++---------
>  include/linux/pwm.h                           |   5 +-
>  3 files changed, 53 insertions(+), 57 deletions(-)

Applied, thanks.

Thierry

--s9fJI615cBHmzTOP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl4VzfcACgkQ3SOs138+
s6Faow//TMKnlzQDSD5P+wcJ27rYXmJrVrrfo/2vFp2FVtLXqOjDk6c0uR9m8Qiq
oiSIc70R+qNva7QrmlgDZpbIVnSD+ziImsh04Zr9fH8N+pdWda26aqYkGjPUutXU
7Rh02JTyvOqBK7W9qEu2c7xrlUdKzadeeeQSxijqqAyHFSsG5wfNmZK6qeTlB0y/
q0tWwa4YyVfDhjkAWUvKUhw5nPfv/AKO2zStCMv8jIuSJ62w5ahypLBs2A3adZJY
npSKMvPIFzyVOaHdWs3+rmJJzbujKtqMKsQ7RyE6rBRaectlLeHSonDFSjMFtO0t
BKcikgTpmwUEVDzMh0l+uNGm3cAcIjIfRQ7cpigyQEc+dntXNQfRKh8y+x3pWeDc
gssO+6ftEcLgnBSy13djxqNf2xzzqzgv0a/nTzBG2OUfGL85VQTfocP2SN+2yYmV
X4NQckVF2qs8nSQtJCdLhYGUQQMJzJ+KLd0RDRms35E2QiawYii/KvUz+oqN06WP
Wt4h4SWFZ0PVsaq9EeW74DJ1iPvHgDoFWg2y+WGlKO1F3nNQcH15lQdqWuL8i0NP
quf8OKsUUEGTfImySK2ql7pzk2ouy1Sup7wZs8bz7almHoP0KOgFVST9jb1VZRIl
2CQY1FTNqQVTWKcERuxOn6HVMVAnGBLuGWah7wr04iziCVoiY/w=
=4ETa
-----END PGP SIGNATURE-----

--s9fJI615cBHmzTOP--


--===============0346552675708558275==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0346552675708558275==--

