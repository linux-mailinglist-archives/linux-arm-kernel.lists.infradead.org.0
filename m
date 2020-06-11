Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0B221F6D62
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 20:24:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=s4szksdHdMkIig5UdDpluou3gBlQAlhZmPGub20m2PA=; b=JNjq7oSDWMb0WpdRZU6K2c5/A
	u6LFt1eqoI2povq9P+V0614VJywlkuz8O0wn5YgEUXo7izqXvPV8eLKsJ5t8g1i/czlBvmP+D36T7
	pvjQAIS7dfIcKAG5a1TUPNj1I8h7eR5g3RlL3S0M1xNvGtYTsF/dH4knRXGLTQGOg67XGEk1O4PbT
	sUbk1ZhbVe+SdP9d05zB2LmCboObciqCBfhNGTs47tU0ScO/GLsIuonMVnRDJxCBaIURBIq5m9vEt
	sxB5Zuyo2ohY3/r88YVPSqa6QwleWF9fnKNfTcfEwmFGxN5llsCz2YjWfoLIdtDLsgMxQecCGlPMM
	E3og1saWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjRsd-0007ot-Bv; Thu, 11 Jun 2020 18:24:47 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjRsS-0007oM-JU
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 18:24:38 +0000
Received: by mail-wm1-x342.google.com with SMTP id k26so5963457wmi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jun 2020 11:24:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=nAJQCJO3sI3ktluQ6mqJxN6WNOCFp8G6mAcSHO36wgc=;
 b=Rk+ELiNJGvDaygVwcKmN4b9KjPfXU5Q+eTVQU9Jvs2q6VzotRU1p8fhOwBmj446D4t
 miHq/qX8JATF2eGSjU6qjRV+2HTtyFx30Ls8EvKUfNWZrTu0ejYLz/kbBO+o6urAgjzA
 7HXmSOUutrnnRNIYKLmeCVALg+x0iIrctaMheb8wtp6aXE8zyPwmBQ9aCz3YOxO3Ktw4
 C9vKEV8d9kyf2PI4CgWN+t49zk3OBXk1beMsgKATKPRVBTox4VZ0/N+i2KeeQfsuybsq
 dFPULnZle339w1PBtdmaAjMk9BxkVZ+wk1eb5vEma4Lhu9lM7svc7rrqbSCb6BORVaT+
 oUuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=nAJQCJO3sI3ktluQ6mqJxN6WNOCFp8G6mAcSHO36wgc=;
 b=OWSu0JZ8ca9lXyOM+wH73zH/W+iOEgO6MU5qQLi9YIQjFnzfy5aNC8awLANevAiHKj
 CUJV7SJ5hHWOXCzkzDIidUHXfYxoHtEYuWPwZv8fpBR+cStZsKhGBPgmAPagl7XM1dwc
 wcCdJrXPo8wEjJbxPXDrFhKz4v+CeRC7Sn53lKCmIb4YSBWQmjjGNlnGs0jV8/Agon6p
 eafyUbO16frxkdASF+Hmh2Ue3dUcMcpqAUj3Flv6XNuDO8Fy4/gOHhwWfYYpFy6yhmGn
 w7piozwE1J4Fw6IaAZMtCO2s00p/ehHCtJf6H9iTP34Qst8r8wZa6QuCvA4XbjfWHuxF
 3O+g==
X-Gm-Message-State: AOAM531wHziIooAOhW4bFVCotNU7XwNPt6YtKGRCWeTATnTGX+XJHC/e
 VoUEk2cyjy7+Im63r6VxZPo=
X-Google-Smtp-Source: ABdhPJw212c5x0+6odnA8m6cltLpE5W3g9HNinnEyYSJg7guhdrUMjbPbBysV+ZtF2kffAyZEiWvzw==
X-Received: by 2002:a7b:c348:: with SMTP id l8mr10039618wmj.54.1591899874021; 
 Thu, 11 Jun 2020 11:24:34 -0700 (PDT)
Received: from localhost (pd9e51079.dip0.t-ipconnect.de. [217.229.16.121])
 by smtp.gmail.com with ESMTPSA id u3sm5311663wmg.38.2020.06.11.11.24.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Jun 2020 11:24:31 -0700 (PDT)
Date: Thu, 11 Jun 2020 20:24:30 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Guru Das Srinagesh <gurus@codeaurora.org>
Subject: Re: [PATCH v16 00/11] Convert PWM period and duty cycle to u64
Message-ID: <20200611182430.GA2293927@ulmo>
References: <cover.1591136989.git.gurus@codeaurora.org>
 <20200611165505.GA9335@codeaurora.org>
MIME-Version: 1.0
In-Reply-To: <20200611165505.GA9335@codeaurora.org>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_112436_661581_7C6AB653 
X-CRM114-Status: GOOD (  27.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org, linux-pwm@vger.kernel.org,
 Daniel Thompson <daniel.thompson@linaro.org>, Arnd Bergmann <arnd@arndb.de>,
 David Collins <collinsd@codeaurora.org>, Stephen Boyd <sboyd@kernel.org>,
 linux-kernel@vger.kernel.org, Geert Uytterhoeven <geert@linux-m68k.org>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Joe Perches <joe@perches.com>,
 Subbaraman Narayanamurthy <subbaram@codeaurora.org>,
 Lee Jones <lee.jones@linaro.org>, Guenter Roeck <linux@roeck-us.net>
Content-Type: multipart/mixed; boundary="===============0877375621469504661=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0877375621469504661==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2oS5YaxWCcQjTEyO"
Content-Disposition: inline


--2oS5YaxWCcQjTEyO
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 11, 2020 at 09:55:05AM -0700, Guru Das Srinagesh wrote:
> On Tue, Jun 02, 2020 at 03:31:04PM -0700, Guru Das Srinagesh wrote:
> > Because period and duty cycle are defined in the PWM framework structs =
as ints
> > with units of nanoseconds, the maximum time duration that can be set is=
 limited
> > to ~2.147 seconds. Consequently, applications desiring to set greater t=
ime
> > periods via the PWM framework are not be able to do so - like, for inst=
ance,
> > causing an LED to blink at an interval of 5 seconds.
> >=20
> > Redefining the period and duty cycle struct members in the core PWM fra=
mework
> > structs as u64 values will enable larger time durations to be set and s=
olve
> > this problem. Such a change to the framework mandates that drivers usin=
g these
> > struct members (and corresponding helper functions) also be modified co=
rrectly
> > in order to prevent compilation errors.
> >=20
> > This patch series introduces the changes to all the drivers first, foll=
owed by
> > the framework change at the very end so that when the latter is applied=
, all
> > the drivers are in good shape and there are no compilation errors.
> >=20
> > Changes from v15:
> >   -  Rebased to tip of for-next.
> >=20
> > Changes from v14:
> >   - Collected Uwe's Acked-by for the pwm core patch.
> >   - Addressed comments in pwm-clps711x.c.
> >=20
> > Changes from v13:
> >   - Pruned cc-list and added same (reduced) set of reviewers to all pat=
ches.
> >   - Added Lee Jones' Acked-by to the pwm_bl.c patch.
> >   - Added Jani Nikula's Acked-by to intel-panel.c patch.
> >   - Added Stephen Boyd's Acked-by to pwm-clk.c patch.
> >   - Addressed Geert's review comments in clps711x.c patch.
> >=20
> > Changes from v12:
> >   - Rebased to tip of for-next
> >   - Collected Acked-by for sun4i
> >   - Reworked patch for intel-panel.c due to rebase, dropped Jani's Acke=
d-by as
> >     a result
> >=20
> > Changes from v11:
> >   - Rebased to tip of for-next.
> >   - Collected "Acked-by:" for v7 (unchanged) of pwm: sifive: [4]
> >   - Squished stm32-lp.c change with final patch in series
> >   - sun4i: Used nsecs_to_jiffies()
> >   - imx27: Added overflow handling logic
> >   - clps711x: Corrected the if condition for skipping the division
> >   - clk: pwm: Reverted to v8 version, added check to prevent division-b=
y-zero
> >=20
> > Changes from v10:
> >   - Carefully added back all the "Reviewed-by: " and "Acked-by: " tags =
received
> >     so far that had gotten missed in v9. No other changes.
> >=20
> > Changes from v9:
> >   - Gathered the received "Reviewed-by: " tag
> >   - Added back the clk-pwm.c patch because kbuild test robot complained=
 [3]
> >     and addressed received review comments.
> >   - clps711x: Addressed review comments.
> >=20
> > Changes from v8:
> >   - Gathered all received "Acked-by: " and "Reviewed-by: " tags
> >   - Dropped patch to clk-pwm.c for reasons mentiond in [2]
> >   - Expanded audience of unreviewed patches
> >=20
> > Changes from v7:
> >   - Changed commit messages of all patches to be brief and to the point.
> >   - Added explanation of change in cover letter.
> >   - Dropped change to pwm-sti.c as upon review it was unnecessary as st=
ruct
> >     pwm_capture is not being modified in the PWM core.
> >=20
> > Changes from v6:
> >   - Split out the driver changes out into separate patches, one patch p=
er file
> >     for ease of reviewing.
> >=20
> > Changes from v5:
> >   - Dropped the conversion of struct pwm_capture to u64 for reasons men=
tioned
> >     in https://www.spinics.net/lists/linux-pwm/msg11541.html
> >=20
> > Changes from v4:
> >   - Split the patch into two: one for changes to the drivers, and the a=
ctual
> >     switch to u64 for ease of reverting should the need arise.
> >   - Re-examined the patch and made the following corrections:
> >       * intel_panel.c:
> > 	DIV64_U64_ROUND_UP -> DIV_ROUND_UP_ULL (as only the numerator would be
> > 	64-bit in this case).
> >       * pwm-sti.c:
> > 	do_div -> div_u64 (do_div is optimized only for x86 architectures, and
> > 	div_u64's comment block suggests to use this as much as possible).
> >=20
> > Changes from v3:
> >   - Rebased to current tip of for-next.
> >=20
> > Changes from v2:
> >   - Fixed %u -> %llu in a dev_dbg in pwm-stm32-lp.c, thanks to kbuild t=
est robot
> >   - Added a couple of fixes to pwm-imx-tpm.c and pwm-sifive.c
> >=20
> > Changes from v1:
> >   - Fixed compilation errors seen when compiling for different archs.
> >=20
> > v1:
> >   - Reworked the change pushed upstream earlier [1] so as to not add an
> >     extension to an obsolete API. With this change, pwm_ops->apply() ca=
n be
> >     used to set pwm_state parameters as usual.
> >=20
> > [1] https://lore.kernel.org/lkml/20190916140048.GB7488@ulmo/
> > [2] https://lore.kernel.org/lkml/20200312190859.GA19605@xxxxxxxxxxxxxx/
> > [3] https://www.spinics.net/lists/linux-pwm/msg11906.html
> > [4] https://www.spinics.net/lists/linux-pwm/msg11986.html
> >=20
> > Guru Das Srinagesh (11):
> >   drm/i915: Use 64-bit division macro
> >   hwmon: pwm-fan: Use 64-bit division macro
> >   ir-rx51: Use 64-bit division macro
> >   pwm: clps711x: Use 64-bit division macro
> >   pwm: pwm-imx-tpm: Use 64-bit division macro
> >   pwm: imx27: Use 64-bit division macro and function
> >   pwm: sifive: Use 64-bit division macro
> >   pwm: sun4i: Use nsecs_to_jiffies to avoid a division
> >   backlight: pwm_bl: Use 64-bit division function
> >   clk: pwm: Use 64-bit division function
> >   pwm: core: Convert period and duty cycle to u64
> >=20
> >  drivers/clk/clk-pwm.c                      |  7 ++++-
> >  drivers/gpu/drm/i915/display/intel_panel.c |  2 +-
> >  drivers/hwmon/pwm-fan.c                    |  2 +-
> >  drivers/media/rc/ir-rx51.c                 |  3 +-
> >  drivers/pwm/core.c                         | 14 ++++-----
> >  drivers/pwm/pwm-clps711x.c                 |  2 +-
> >  drivers/pwm/pwm-imx-tpm.c                  |  2 +-
> >  drivers/pwm/pwm-imx27.c                    | 48 ++++++++++++++++++++++=
++++----
> >  drivers/pwm/pwm-sifive.c                   |  2 +-
> >  drivers/pwm/pwm-stm32-lp.c                 |  2 +-
> >  drivers/pwm/pwm-sun4i.c                    |  2 +-
> >  drivers/pwm/sysfs.c                        |  8 ++---
> >  drivers/video/backlight/pwm_bl.c           |  3 +-
> >  include/linux/pwm.h                        | 12 ++++----
> >  14 files changed, 77 insertions(+), 32 deletions(-)
> >=20
> > --=20
>=20
> Hello Thierry, Uwe, Lee,
>=20
> Gentle reminder for this patch series :) Earlier discussions on next
> steps were as per [1] and [2].

Hi Guru,

I ended up deciding against queueing this for v5.8-rc1 because I want
this to soak for a bit in linux-next. I'll apply them early next week
after v5.8-rc1 is out.

Thierry

--2oS5YaxWCcQjTEyO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl7idt4ACgkQ3SOs138+
s6GNsg//VAMZ3a0gqYkSM99mCdQx0o0+Y1Y14Vf/zK/D/VQKmfyVOZro8AFvqp4n
I0wFixIFWxhc1RROOdsCLrwBPWCYgArtYHsXnKwasYbkCJtQBtOSlX0UA5vBAvoT
1aDCy2dKwRT4NHVj1qa1FdTp1YwX+89l/dpu5dE+BluYN6LDR/8doMYVQ6r9YT0+
k7bNRotaoM2/TXn8y5CLXunnpHytD9SB3oRMSVLjESYUvgy9jWcfj9yiIknoTPb7
jslp9FLKhBbEMx2FLW4drGpoWml+RRt8fqIEeucqoDf3e/ZtwrPfhzG3TeDU75+U
ATfpQn033j5RMK4RYbeUPMN29hDiKBr1uVA2rq3xYDblgbbFegCYhtgeoFf3iLl+
bUvp0ZBHf9tVsO9O378xNBnYn3P+BqEqwek0/1HHHs1iGxe0rvRcf+QN91sGOyKd
hdVWm/MYs7wRDqRQgxV3xNammYCapCCizApSYfnNb3Om3QY30Y+WI5rmExcIUPzP
1rgdBJmpzdfuxgWoaBO5lKlHyTzFOM6Md3AO1E20pfUp6DsJ+l8LDdYgVT4Z88Fg
H+7GkvC9OtLtdKls3fAzjE9HGafCtxT8fvnFScA01FDsHUf0CaitNAodnNgJMtNy
vQ3Yer+0/+jwUI3Wy9h1qRj6rJ2ADF71w1CtSvjN1VG5Kvagddk=
=xxlE
-----END PGP SIGNATURE-----

--2oS5YaxWCcQjTEyO--


--===============0877375621469504661==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0877375621469504661==--

