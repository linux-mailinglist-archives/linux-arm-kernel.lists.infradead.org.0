Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59AD01A83B1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 17:48:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7sAcIqT2cO5djAaqHy8FOejkISy2GVANISo+SVK6ajw=; b=LXR5VFtPfH8dYJRvhwgnhFgDc
	B3ALnvvxUltE/iwtliAEqG1Xa6FIhlw7HJourBnQ8uofSUl/lqwuqGORE49JYe0RKE/DqWtIBdsJY
	J4y2pLDYQ3GS1mQO9Cyk3hIlOIYihu4J3Xtr8AUbfFrVSSfh0oB2+9VZsYw4fjIfX0vTOhaRG579X
	Vt6Z0sBtH4qu/w6ykFvGd+hrphkMcVqoLNoeBN6/ca5D/NZVHzqdoil6AT1lG0bCPELRaws9836ol
	mFLtSOkY3xnRoYWwuc9C+44Li+njos7Z3rgqrHqsCezYUOC/cTXdhh33hXlpyq+5GpdRTs2BGl7Cw
	e89Y++WsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jONnA-0004Y5-L5; Tue, 14 Apr 2020 15:48:04 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jONn3-0004Xj-1V
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 15:47:58 +0000
Received: by mail-wm1-x343.google.com with SMTP id x4so13511502wmj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 08:47:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=dtEhtg3V0XhnUJ3vLOoW6oMCs8PMCorqBPl+EaqQeLI=;
 b=BBCuPhLf+ty7IXCYq+5AILovgI5KqRQjdXB1eqO18/Exqs4SaPcTL32yZTYLQbvrwo
 PEINDwuUgnEQBA6ie3Kuno5Aa6Smiap4YEis+5Et1XK/Q07C5m8XemAL4iSVHEtqP+eT
 3tpjW/6Bm1fhwqtCGMiWLwriytiXBtxgsBOGhFMsiPpHh7DMhnBhnmWyQm+KD4rcomQJ
 WObLKL/MiwexLbBYoFTIc5aP4Vuw+oW9S0JPsJ8opujJ99JTw2rFLoS5tyhRfP5586A3
 PSbSxPI6ZF/M6TLx/x24kBhYoz/SM+pFBhwK4ivQtVeJXbyyS4TgNZ4EoTI912nlYhUi
 x7zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=dtEhtg3V0XhnUJ3vLOoW6oMCs8PMCorqBPl+EaqQeLI=;
 b=bGOzjrm8TlUHIHP6jtPig5B9l2pTFQ+5/nW7avg1+J1rmFxPBVha/0B17v3v3Xi4j7
 GyjLjBEWz2DTMG7nhKV0Skdun8FB+P4i4VDQ9RzHefMIdbajfYsGTFXobOBOPV/0UjVd
 2yzMaP/zG+kRM2i1+EYdr+/qY4r+yT5aPKuweElVp9KWsLDhzMgkOTjsfqRRkJZ3/yqZ
 +XUfVHBU6UKF6F6ln6CJfufcvH2jIHu7QsMFm8szDQrxgb+eHlbRa6QdsT6UxLlXBKtP
 3yrrJA5q8wDpOvivgfTJt7+QT11Xv/8h/6zA7yDbjNF4dXgSMxkrHETL9O479/AOACFl
 xvfQ==
X-Gm-Message-State: AGi0PuZV0oecqc90sROozMnFBzOiGJtw1oIYh/xXaPl1gJDDsZcTIw4a
 UPp+AMa3PblpRTrRM4yIXOI=
X-Google-Smtp-Source: APiQypL+nMY5gY9tIEHLtexZ8cB50IQWLclIQoRNELFR2lKge7Lg0909hOyuaODL8bt6tAMRiSrlpQ==
X-Received: by 2002:a7b:cb59:: with SMTP id v25mr517878wmj.13.1586879275890;
 Tue, 14 Apr 2020 08:47:55 -0700 (PDT)
Received: from localhost (pD9E51D62.dip0.t-ipconnect.de. [217.229.29.98])
 by smtp.gmail.com with ESMTPSA id 19sm11461613wmo.3.2020.04.14.08.47.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 08:47:54 -0700 (PDT)
Date: Tue, 14 Apr 2020 17:47:53 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v6 11/14] memory: tegra: Support derated timings on
 Tegra210
Message-ID: <20200414154753.GQ3593749@ulmo>
References: <20200409175238.3586487-1-thierry.reding@gmail.com>
 <20200409175238.3586487-12-thierry.reding@gmail.com>
 <7f23f140-4c56-3d9a-946e-f29bc569f40c@gmail.com>
MIME-Version: 1.0
In-Reply-To: <7f23f140-4c56-3d9a-946e-f29bc569f40c@gmail.com>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_084757_080312_6E24891B 
X-CRM114-Status: GOOD (  12.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Jon Hunter <jonathanh@nvidia.com>,
 Rob Herring <robh+dt@kernel.org>, Joseph Lo <josephl@nvidia.com>,
 linux-tegra@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============9009579722167363084=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============9009579722167363084==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zfSPj0+0wxNpTjLN"
Content-Disposition: inline


--zfSPj0+0wxNpTjLN
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 10, 2020 at 02:44:16AM +0300, Dmitry Osipenko wrote:
> 09.04.2020 20:52, Thierry Reding =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> ...
> >  	tegra210_emc_debugfs_init(emc);
> > =20
> > +	cd =3D devm_thermal_of_cooling_device_register(emc->dev, np, "emc", e=
mc,
> > +						     &tegra210_emc_cd_ops);
> > +	if (IS_ERR(cd)) {
> > +		err =3D PTR_ERR(cd);
> > +		dev_err(emc->dev, "failed to register cooling device: %d\n",
> > +			err);
>=20
> > +		goto detach;
>=20
> I think it's not really worthwhile to fail whole EMC driver because of
> the failed CDEV.

Well, we do kind of need this cooling device mechanism in order for the
memory to continue to operate properly at high temperatures. It's also
very unlikely that this will ever fail, so I don't see any harm in
making this mandatory.

Thierry

--zfSPj0+0wxNpTjLN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl6V2ykACgkQ3SOs138+
s6EAeA/+IsxKWQvGh2RYgVTWhjjt4UXdnCKicikH4x5BNbL8tXenzOzKPEmGNWD5
Ts2RFpne3QaRGscpN0bTZry+XjKv8UHoInOHgYZtd1KyS1+yJUbgZYeoHBA87Z+P
bF7X/Pq8ZJPhqgvn6dAuNO2GWl/EpR9h5ne+TI7cEL84bqgAfaqRQjdqnyJdnc6X
gg2eP8U7dff0CO9jR4JJHt1PckFrb/r6cwsCg9WlYbu+MBXj8mCXJzo0PvXHM9ea
uLVXjEDdN8RV9kqypiiDiLpWxdaDBZqwD14yvdOfTYSXW/S/Ai8txPjlD2NqaqJE
v+WikKx5xk3wUx4ul+v21cj3Xm1IClxl30UULyvznZGm5MqNHf/Nh+t/2ehgVslS
CyzybTooPUv5qDkvlOPV+0ipG4UEask6NU80mNE90f27g9d5JhghOD2OgFKjiNLH
hhzBwzz2innAetUGUI92suwYpXf3MyJqLnXdS9aGOQTT/lS68zMYRzCQvNwebT1K
RzRzzPIywb2oegonGMCc6Y2aokC3dMmlyXaAkzmZD4rgjGjU8Q4i4iAvgqgAsRzu
ZJdWtLqmc9IzFjWLDS1ThvojvXWSqtp/o08teaSw8Wv259svK8sfOm5/2K5zFKdk
AmE9XGUvw/1zolMRomOMUkvvbDH9M7vBzeQbQqPwBBHAnz75HO8=
=4S/7
-----END PGP SIGNATURE-----

--zfSPj0+0wxNpTjLN--


--===============9009579722167363084==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============9009579722167363084==--

