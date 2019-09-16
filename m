Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08057B3BCF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 15:49:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Fvxto/j6jtykg0KS0giJsxbfyUGS2GjtgECqxNOhe/o=; b=r/reQU7300h1HsztAP/bQ/Shm
	MXXX6H95bV+egkyuRWPTV4aNNlsgJ2O9VUc6M0fpW8UpBqJqAfXyxH8Iea94Fh/dX02Pe+epgmq9z
	cL3+G0dJg0FPs5sLZ4ioYFWi+jswrcp3OD6gG1M9Fr61gu57xjkRHptM/mY8foxOqAAXZtKTiJ0Aq
	qIPyJtJGu9lWBKDVR8Y5z3LI3w/HT4tM36DovZNxyU04IEV9XJI1SFEmT69biJQ37Zedl5jzDrV5G
	gFU6OY2wO0sFi1iG3LLH2vHMuOBmZhUZ2b5nVkDuLoNFS+Zj0Vi0GXsib73gwIlqCEIr5IwL5n2pM
	fYM6jmXvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9rNx-0003IC-EE; Mon, 16 Sep 2019 13:49:46 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9rNd-0003Hn-Jn
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 13:49:27 +0000
Received: by mail-wr1-x442.google.com with SMTP id l3so16246796wru.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 06:49:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=/NPsPj1awstwEtbeOu7moJJbL2ezBiFpC0Ki5LS8P+s=;
 b=fflNlJ8lJ60ejk7+T13Q78OrBQh1gYWQCS1F1lOJyhIrSjMemFYFV/ePr4IHxww7wk
 GhGHLlsvszDJUdF8tkGPxYeNV1nYtYterQLQRrX5GtXtj89lV/AN9tK9zEc7c60d9lk6
 xFvUJUXfTr+2Nw37eN1If1tRc/YltPfobrS4jEk+DtUTOy/Eu33Lhinp1Ddk1IH72Lpl
 L7TC3pUX81PSjp3Sunm+C4/uIW/6K/+GNGk772oY9lDwM5hM3+xlBIrTs6FJmeW0P5dy
 q+//hbUpc+bZwI1N0P/Fn9cJ7uukjkHlRT28FQlNKIq+ZIPiw4DeE0t+6XPP6IuPNZw3
 zP/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/NPsPj1awstwEtbeOu7moJJbL2ezBiFpC0Ki5LS8P+s=;
 b=OEnwVefbfGxX1hsfNfO3s4bm9rH+qyPDePF3Kdz/WBJAufi5j/kHl26Uuyiv+a82/T
 FkgJo2eav4HvNF9JDuV1O/+/03e/h20IhdfgbFfHmBBkIlfUF2DXDVCuDsmhWm4MsB8d
 FrR41+pA8CaqjVtNDl0iiajK5CqMItF14jQdYzZwCggKd9lB/+tzYNJMeQ0A66DaMRCp
 Ugi1aKcjH7ZQ5jmi4rb/sPdEKn1qiUQI0hE2Q8n7+A++pHvSDxKWbQv/DFV66177mgwz
 jAlxZ7xvprStBlwc6pSVNjbTfGoJjY1vuyasyAjQmHX8tPmF7puQ2rsvpgefSzPuAjKq
 +Llw==
X-Gm-Message-State: APjAAAXuzqmNtcuNZzFDx5/NYAR/zxfRWG2/k95cN5Sf24SpuH/11Lf3
 BwY4GPEtycgdaCeZBPF4m9Vy4/fs
X-Google-Smtp-Source: APXvYqwYGuFHyOnyPqHGJsh88x9YZDphC9WMSwz9ljoOj11Il80UrjNM46ouviozaiWNYy7L1RgGAg==
X-Received: by 2002:adf:e603:: with SMTP id p3mr28941971wrm.102.1568641764073; 
 Mon, 16 Sep 2019 06:49:24 -0700 (PDT)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id g201sm15984235wmg.34.2019.09.16.06.49.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Sep 2019 06:49:21 -0700 (PDT)
Date: Mon, 16 Sep 2019 15:49:20 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH 0/6] ARM, arm64: Remove arm_pm_restart()
Message-ID: <20190916134920.GA18267@ulmo>
References: <20170130110512.6943-1-thierry.reding@gmail.com>
 <20190914152544.GA17499@roeck-us.net>
 <CAK8P3a3G_9EeK-Xp7ZeA0EN7WNzrL7AxoQcNZ8z-oe5NsTYW6g@mail.gmail.com>
 <056ccf5c-6c6c-090b-6ca1-ab666021db48@roeck-us.net>
MIME-Version: 1.0
In-Reply-To: <056ccf5c-6c6c-090b-6ca1-ab666021db48@roeck-us.net>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_064925_653263_C5569A79 
X-CRM114-Status: GOOD (  22.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Arnd Bergmann <arnd@arndb.de>
Content-Type: multipart/mixed; boundary="===============1191796216130579920=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1191796216130579920==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="bp/iNruPH9dso1Pn"
Content-Disposition: inline


--bp/iNruPH9dso1Pn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 16, 2019 at 06:17:01AM -0700, Guenter Roeck wrote:
> On 9/16/19 12:49 AM, Arnd Bergmann wrote:
> > On Sat, Sep 14, 2019 at 5:26 PM Guenter Roeck <linux@roeck-us.net> wrot=
e:
> > > On Mon, Jan 30, 2017 at 12:05:06PM +0100, Thierry Reding wrote:
> > > > From: Thierry Reding <treding@nvidia.com>
> > > >=20
> > > > Hi everyone,
> > > >=20
> > > > This small series is preparatory work for a series that I'm working=
 on
> > > > which attempts to establish a formal framework for system restart a=
nd
> > > > power off.
> > > >=20
> > > > Guenter has done a lot of good work in this area, but it never got
> > > > merged. I think this set is a valuable addition to the kernel becau=
se
> > > > it converts all odd providers to the established mechanism for rest=
art.
> > > >=20
> > > > Since this is stretched across both 32-bit and 64-bit ARM, as well =
as
> > > > PSCI, and given the SoC/board level of functionality, I think it mi=
ght
> > > > make sense to take this through the ARM SoC tree in order to simpli=
fy
> > > > the interdependencies. But it should also be possible to take patch=
es
> > > > 1-4 via their respective trees this cycle and patches 5-6 through t=
he
> > > > ARM and arm64 trees for the next cycle, if that's preferred.
> > > >=20
> > >=20
> > > We tried this twice now, and it seems to go nowhere. What does it take
> > > to get it applied ?
> >=20
> > Can you send a pull request to soc@kernel.org after the merge window,
> > with everyone else on Cc? If nobody objects, I'll merge it through
> > the soc tree.
> >=20
>=20
> Sure, I'll rebase and do that.

I've uploaded a rebased tree here:

	https://github.com/thierryreding/linux/tree/for-5.5/system-power-reset

The first 6 patches in that tree correspond to this series. There were a
couple of conflicts I had to resolve and I haven't fully tested the
series yet, but if you haven't done any of the rebasing, the above may
be useful to you.

Thierry

--bp/iNruPH9dso1Pn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl1/kt0ACgkQ3SOs138+
s6Gyww/+K/pGweyEoA46/dAVNxy5Vcu6G8+VGLroSopzGQ4AagO4eAZk4SvXqWTM
A/Ig7+ORbGubvEVJWItR409xxLu6/eWNeZMgGaeeC7B3+X6dwG94uDPPP2JYVpKk
pDZ1VZLdP7GO3vGnehlH0V+o53iJ00HAebTNpYI4aUKDxrECapbL3idAPBny/ext
q1j+9nJxKkSw5SUQw3IF/PNBWJ7lF84r0wkwuZemObJDtdPllANlxmqS61uFXUVE
hZYr3rDzEZ/l4usVRJmwa/QMw8pWpt+eRTGxWedz8wmBw6K9Dmzz3EmvtI7a28Xc
fe1ARSsnh5d5tPN+uTy9GsjXzuX57hsXliWzkvcy10zWucGIvr7WtXyJdak8AuJ7
WxmKplq8Xt0I1qO5zQxwxkYRY5snwu0P82VE4mNuWSPtnb9vSb95q10k1C5elRpA
zOcSDHgiBmk8hOSX+DYP19kCzUduQHBDZhZyqbFGSkafGvw0/PQpBrYqy1nKu6rA
kivAJtIRc9t8QyTcBQ9nHccsMPkoNIa6sseXVPaFiQTQshBDvPpJ6HMSdYcfbohC
v9pGjGrjhMkXlK9Qur+R9NLDXkxoYWwA4D6BetGFo5OvD1uDXbUqyJBrDRf4xWmY
MHK8npnj+TyQD86KVEm0e5Zc/QwvRWTokAfsZM2f4QTRTUCp/WA=
=6fyR
-----END PGP SIGNATURE-----

--bp/iNruPH9dso1Pn--


--===============1191796216130579920==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1191796216130579920==--

