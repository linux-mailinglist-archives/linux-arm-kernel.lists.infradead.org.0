Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D43EB41CC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 22:28:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UcfeuGNMzqikSj9jm+BSK6Wt7FNlzz5NpTBa4ARxdVw=; b=Mj2qS/madgSx3evpF+JsK7JEe
	+IsSOH04cIbd/I4TWjABreTzqHnDPdX/9IRiO89FITBEqZ3rEqtlkzQuooTkVZB76jnb6DBUpycIZ
	3sOrEJSjJ+6qNIRhYvk3JkJgiJUieFxh5LHJ5cwQoIJbJtHPkH6WGqHU4tI9kYVh6G+l7t5H/KTcm
	7NMWmGbbKVqcexfxU+65JAaEv1coyKsm1yagtcz94IOdPYx/eV35lsnmsys38fygArC+5qe3H+12s
	k+YfnMqiHRmmtOD8h9ur+zC1Lt8XsjVjOXkKhCua+kUMQC7uyofQU6/73OHoJYQXI8O4thJ1ZvaZO
	TKAnHoT4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9xbm-0007qk-IT; Mon, 16 Sep 2019 20:28:26 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9xbZ-0007qJ-W0
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 20:28:15 +0000
Received: by mail-wm1-x344.google.com with SMTP id v17so654873wml.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 13:28:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ANumgDbyzeiaEEBfEWsEly4Hx36OR5yCOPyK3D9zUTo=;
 b=EVMPpmwJ5lcayMI8roeCK+PBvGUEgpLaXdtyxrbP6GTdWB2LnBZJl1MPWFxjIr8BHx
 9bepwJut16YP8TB6ofZfE4079DxAI0EOgsWkUp0DWBwsUgJw6se5vfkok2h66p42YIV8
 nOqdH8KrhjsXpXSgSVX3CwawF7LvtK2c73r8Ivcq/77wPalfcKVerSeZKTEoDX3tI1+c
 6hKIa0iypmdFVICAv6kU3hKS7PhmixeVb4tD9oKT3fDAByh4idNXCBzRkUZJjhvMlFfq
 hTNscwvGyIYpzvGB89RO1ZoQCKa2jGnB45sJRPRkA32ftH/RDIR6GWLXY9a3c6IjZlYE
 fkFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ANumgDbyzeiaEEBfEWsEly4Hx36OR5yCOPyK3D9zUTo=;
 b=N5+3X3Vw2bdWVpa5g74J0UtkHz6LHn+q2XuwXHsAQ5BNr6QoyKLNT8Y7RsK2TCovsB
 CZZnsLrJVSYECtpYmDu7TA1MuoHrpaJVx6KEmxBypVcWSPFGnP121bE3AT+wX6sJizoS
 EPRdmhrGJvW13Xuht603hOfmAd6bK9a6HB+mVQyNoeLHv1BFkYezikxzUfLixyw1tuW8
 tyGx1cH9uEXFaKjLxU/OxOV6HHuwvAkrvm/x5pfc6na/SDZUaW9dNrHlTeJlPB3YWABw
 SsFWCegZg/yLQYJpTh+3u7o0I4hdF1afQOqE/3RTbb4YsByp5+kPFGKlTY0aBQ4lBdRI
 0bIA==
X-Gm-Message-State: APjAAAWg8zTzS82Cnw5NfVw6RZZe6ieMzhVDpyKDYBx9QR6UiVytZ5CV
 vz+o8652MzB+a5WJBXCe5uU=
X-Google-Smtp-Source: APXvYqzf/jl6fcz9CXqR/ytZkxJvV1mvIGMLlL9KvGTQctWzDgy377sUNEfpwUPiGRcRNcbHuVhHbA==
X-Received: by 2002:a1c:3182:: with SMTP id x124mr706196wmx.168.1568665691855; 
 Mon, 16 Sep 2019 13:28:11 -0700 (PDT)
Received: from localhost
 (p200300E41F0FEE00021F3CFFFE37B91B.dip0.t-ipconnect.de.
 [2003:e4:1f0f:ee00:21f:3cff:fe37:b91b])
 by smtp.gmail.com with ESMTPSA id s12sm11955wra.82.2019.09.16.13.28.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Sep 2019 13:28:10 -0700 (PDT)
Date: Mon, 16 Sep 2019 22:28:09 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 0/6] ARM, arm64: Remove arm_pm_restart()
Message-ID: <20190916202809.GA42800@mithrandir>
References: <20170130110512.6943-1-thierry.reding@gmail.com>
 <20190914152544.GA17499@roeck-us.net>
 <CAK8P3a3G_9EeK-Xp7ZeA0EN7WNzrL7AxoQcNZ8z-oe5NsTYW6g@mail.gmail.com>
 <056ccf5c-6c6c-090b-6ca1-ab666021db48@roeck-us.net>
 <20190916134920.GA18267@ulmo> <20190916154336.GA6628@roeck-us.net>
 <20190916155031.GE7488@ulmo>
 <CAK8P3a1EZi5apOm90B6YW2GzFXsirz5wk-D66daR20oj_TLXNg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAK8P3a1EZi5apOm90B6YW2GzFXsirz5wk-D66daR20oj_TLXNg@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_132814_035017_C1CF776B 
X-CRM114-Status: GOOD (  30.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
 Guenter Roeck <linux@roeck-us.net>
Content-Type: multipart/mixed; boundary="===============0128768200593500922=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0128768200593500922==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ikeVEW9yuYc//A+q"
Content-Disposition: inline


--ikeVEW9yuYc//A+q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 16, 2019 at 06:29:30PM +0200, Arnd Bergmann wrote:
> On Mon, Sep 16, 2019 at 5:50 PM Thierry Reding <thierry.reding@gmail.com>=
 wrote:
> > On Mon, Sep 16, 2019 at 08:43:36AM -0700, Guenter Roeck wrote:
> > > On Mon, Sep 16, 2019 at 03:49:20PM +0200, Thierry Reding wrote:
> > > > On Mon, Sep 16, 2019 at 06:17:01AM -0700, Guenter Roeck wrote:
> > > > > On 9/16/19 12:49 AM, Arnd Bergmann wrote:
> > > > > > On Sat, Sep 14, 2019 at 5:26 PM Guenter Roeck <linux@roeck-us.n=
et> wrote:
> > > > > > > On Mon, Jan 30, 2017 at 12:05:06PM +0100, Thierry Reding wrot=
e:
> > > > > > > > From: Thierry Reding <treding@nvidia.com>
> > > > > > > >
> > > > > > > > Hi everyone,
> > > > > > > >
> > > > > > > > This small series is preparatory work for a series that I'm=
 working on
> > > > > > > > which attempts to establish a formal framework for system r=
estart and
> > > > > > > > power off.
> > > > > > > >
> > > > > > > > Guenter has done a lot of good work in this area, but it ne=
ver got
> > > > > > > > merged. I think this set is a valuable addition to the kern=
el because
> > > > > > > > it converts all odd providers to the established mechanism =
for restart.
> > > > > > > >
> > > > > > > > Since this is stretched across both 32-bit and 64-bit ARM, =
as well as
> > > > > > > > PSCI, and given the SoC/board level of functionality, I thi=
nk it might
> > > > > > > > make sense to take this through the ARM SoC tree in order t=
o simplify
> > > > > > > > the interdependencies. But it should also be possible to ta=
ke patches
> > > > > > > > 1-4 via their respective trees this cycle and patches 5-6 t=
hrough the
> > > > > > > > ARM and arm64 trees for the next cycle, if that's preferred.
> > > > > > > >
> > > > > > >
> > > > > > > We tried this twice now, and it seems to go nowhere. What doe=
s it take
> > > > > > > to get it applied ?
> > > > > >
> > > > > > Can you send a pull request to soc@kernel.org after the merge w=
indow,
> > > > > > with everyone else on Cc? If nobody objects, I'll merge it thro=
ugh
> > > > > > the soc tree.
> > > > > >
> > > > >
> > > > > Sure, I'll rebase and do that.
> > > >
> > > > I've uploaded a rebased tree here:
> > > >
> > > >     https://github.com/thierryreding/linux/tree/for-5.5/system-powe=
r-reset
> > > >
> > > > The first 6 patches in that tree correspond to this series. There w=
ere a
> > > > couple of conflicts I had to resolve and I haven't fully tested the
> > > > series yet, but if you haven't done any of the rebasing, the above =
may
> > > > be useful to you.
> > > >
> > >
> > > Maybe Arnd can just use your branch (or rather part of it if you would
> > > split it off) since you already did the work ?
>=20
> The branch needs to be rebased once more as it is currently
> based on linux-next.

Yeah, I usually do that once -rc1 is out.

> > Yeah, I can just send the pull request for the 6 patches after -rc1.
>=20
> Ok, sounds good. I'm also happy to take the remaining patches
> in that branch, for the other architectures.

All of the patches beyond the 6 in this set rely on the system reset and
power "framework". I don't think there was broad concensus on that idea
yet. If you think it's worth another try I'm happy to send the patches
out again.

Thierry

--ikeVEW9yuYc//A+q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl1/8FUACgkQ3SOs138+
s6HQbRAAsAUrB9Y5EaS4wEkYNlG8Rh/+XitObYyO7DUe3QoQrleUdMXXeKD3JFXK
xqS07ZGmP+QktlmXAB0qv+g6buemf5MhbV4bBc2wos69IQIvoGoEBzg2RWBsNboY
TCTHB+j/brHP5T4sAjG2BON/zF/0p/JUUSzhpgdZqjmw7E+G05ylY35LUevlqM4o
kPLPSMuGgjZJN5DyJS4NAazq7qCh633q1XzCCNhwbO/qXYNn+LVu4pTNrM4g7MAN
S2h4tiJtmq+QAIUxHOLEPnZoV2n1XDFaJdyaAdAE/a9x23enYy5W9l042RoHIJBv
+vi35fDODi+KTgtJEkwkpoo5af8fjKILC6MLkTEKsc/JK3gOnXhW7xrdgsxtzAR0
1ZbA5EiEcGTwUn6AuTlTucAwW48HeI4pnzf/ieehbD2xr5SYjav7swns2ELrMV+Q
KQSWVGYuu2aDlicqcb3LU643Eip3b+kZrwsY0rURrZuiuYGm4IdQkImpdaQned+m
Zr5JU51cparoKgaedXAL+j4S4NWHa7gFzEURfto/WtlloguvZnLUg65y35SCqPaV
7xinlyQ9c7gBAMWy4dNoK5oLx9dsL0b+wjq/kVFYvtcX61ggphBOIVmwjQsAb5Yq
w+UhuTklA/79e7xaD7nwYHphQrWcI+NTOkj1CFdJGM5NkFuzMy0=
=0vrW
-----END PGP SIGNATURE-----

--ikeVEW9yuYc//A+q--


--===============0128768200593500922==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0128768200593500922==--

