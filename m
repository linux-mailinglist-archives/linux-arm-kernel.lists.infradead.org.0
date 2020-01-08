Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7A9C1341FB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 13:42:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OMNLkiVWmfF4+as/+mtp2+PkIvcM0+shdSHHzNwK/Ec=; b=ih0Z87W4rNYXOpySKkCldbJYp
	wFdUdHjybwzocrTfGrjecmGRgEV18khUkirV32HjGDCR3bYyUGzBeDWCEZaXTWm6U5gTCxOQrW5ow
	BH+/xVoyYqnrzA07nLvsMQiCL1mxXJni7w5cdkBr+nljZtMY65ZUu6khMJ2f2BYv82KQLUQp/pIDt
	G734UW9rqU1Wd+/ouGlfZCu8KtnmP6c+tMxWFItdc99zbBsP9Ytz78/v6/p5z+knOFLJJ/UhIaa1r
	M0WRQ2szn5el2I+C3SPIMv4sdhtadkR+svVRPy4LlRiB/0gzHLqSzsFVjzQoIWh+R6F1pRhYe7XZQ
	pstQh7Mng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipAfT-0004I5-TE; Wed, 08 Jan 2020 12:42:35 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipAfM-0004He-KB
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 12:42:30 +0000
Received: by mail-wm1-x342.google.com with SMTP id d73so2335191wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Jan 2020 04:42:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=wtHnteVOSGYfVQHW+DJYvNro+VxPDt16khdirHn7AK8=;
 b=G4b42H3LpRSLGwqm7QRiP2Q50fpItEyTX/7gfZxKagQBkdPYlVdpwiynRWfQU9Kyyl
 AW2xosGD/80c/nBTl7EPE7/swsWEd4VTxG1Qoj4JxtzYBZvKVvBGcgiHTlEwLoj2mD7E
 UQVAOq/cU1C1Cbt4UJGuO/a5oXPADJoNEZ+fQsL4kL0MvUG+fjw9jMdyYCV8eLK2Lucr
 VTfjE+SBTzPWZBesC1OVwo5SMSr2X+UU6zsgZpEL1Qet4tt1+Pm4lHn4D8azQliO1ebq
 GLq1f59EpZIAzVYBx+kAvT7Txq+0t5fWQGI3eylFw5KFIlCEbfqBXdzVmJFvFfu3X6xF
 4hww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=wtHnteVOSGYfVQHW+DJYvNro+VxPDt16khdirHn7AK8=;
 b=h0THqN/XkC49IUG6a0QndlIdrNZS7/7VuiSm/Cjypgg0guwn8vZACQ470SSGNuRu3Y
 WlCtaZ9oamVcgbwph+RBbEuWhT1tu7PdEtayhDl2UfFmtIXsz5LyWxX+CEGi2HQU8PzR
 d8+cWlevKWV5b39yA6LKGw0X+Y1bOza4bLVBTexJkLpCYtJiNqNpp1OkUDH+meW/JKaf
 ByMyDkiohz9JKAqQmt97vJDElcpptRI5hB+MIaYS9mPp5dzQPtyFfus7HR745S5HNcDa
 i5EeL9ctApYbGqiSeyERGSYaLA+AqhjlQY0duQzZyvOts2cy1VFj03bpvGPTkssZMoWV
 +wQw==
X-Gm-Message-State: APjAAAWA/ePwvhGB+0dGrS44pZ5cwvU58YGRlBIM73S9JpLZE9SWZu9B
 lmNVNZQJlfW/ziiwZJZ6mCY=
X-Google-Smtp-Source: APXvYqyVxfaWOe0pOx25hdbX5AKrUImvDSlOu2ODCLf8hl0wKRTw6ZIDB9ZhC+/bQC2kyPGNJFK5KQ==
X-Received: by 2002:a1c:7dc4:: with SMTP id y187mr3545909wmc.161.1578487347499; 
 Wed, 08 Jan 2020 04:42:27 -0800 (PST)
Received: from localhost (p2E5BEF3F.dip0.t-ipconnect.de. [46.91.239.63])
 by smtp.gmail.com with ESMTPSA id c4sm3700812wml.7.2020.01.08.04.42.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Jan 2020 04:42:26 -0800 (PST)
Date: Wed, 8 Jan 2020 13:42:25 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH v9 0/6] Add support for H6 PWM
Message-ID: <20200108124225.GD1993114@ulmo>
References: <20191124172908.10804-1-peron.clem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20191124172908.10804-1-peron.clem@gmail.com>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_044228_667376_4775E0F5 
X-CRM114-Status: GOOD (  26.29  )
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
Cc: linux-pwm@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Philipp Zabel <pza@pengutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0054377006028085385=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0054377006028085385==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="MAH+hnPXVZWQ5cD/"
Content-Disposition: inline


--MAH+hnPXVZWQ5cD/
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Nov 24, 2019 at 06:29:02PM +0100, Cl=C3=A9ment P=C3=A9ron wrote:
> Hi,
>=20
> This is a rework of Jernej's previous work[1] taking account all the
> previous remarks.
>=20
> Bindings is still strict but probe in the driver are now optionnals.
>=20
> If someone could confirm that the PWM is not broken, as my board
> doesn't output it.
>=20
> Thanks,
> Cl=C3=A9ment
>=20
> Jernej's cover:
> Allwinner H6 SoC has PWM core which is basically the same as that found
> in A20, it's just depends on additional bus clock and reset line.
>=20
> This series adds support for it and extends PWM driver functionality in
> a way that it's now possible to bypass whole core and output PWM source
> clock directly as a PWM signal. This functionality is needed by AC200
> chip, which is bundled in same physical package as H6 SoC, to serve as a
> clock source of 24 MHz. AC200 clock input pin is bonded internally to
> the second PWM channel.
>=20
> I would be grateful if anyone can test this patch series for any kind of
> regression on other SoCs.
>=20
> [1]: https://patchwork.kernel.org/cover/11061737/
>=20
> Changes in v9:
>  - print error code in error message
>  - no capital letter to keep coherency
>=20
> Changes in v8:
>  - Display error return code
>  - split commit
>  - bypass is false if unsupported
>  - return instead of goto
>=20
> Changes in v7:
>  - Fix indent in Yaml bindings
>=20
> Changes in v6:
>  - Update git commit log
>  - Distinguish error message
>=20
> Changes in v5:
>  - Move bypass calculation to pwm_calculate
>  - Split mod_clock fallback from bus_clk probe  =20
>  - Update comment
>  - Move my SoB after acked-by/reviewed-by
>=20
> Changes in v4:
>  - item description in correct order and add a blank line
>  - use %pe for printing PTR_ERR
>  - don't print error when it's an EPROBE_DEFER
>  - change output clock bypass formula to match PWM policy
>=20
> Changes in v3:
>  - Documentation update to allow one clock without name
>  - Change reset optional to shared
>  - If reset probe failed return an error
>  - Remove old clock probe
>  - Update bypass enabled formula
>=20
> Changes in v2:
>  - Remove allOf in Documentation
>  - Add H6 example in Documentation
>  - Change clock name from "pwm" to "mod"
>  - Change reset quirk to optional probe
>  - Change bus_clock quirk to optional probe
>  - Add limitation comment about mod_clk_output
>  - Add quirk for mod_clk_output
>  - Change bypass formula
>=20
> Cl=C3=A9ment P=C3=A9ron (2):
>   pwm: sun4i: Prefer "mod" clock to unnamed
>   pwm: sun4i: Always calculate params when applying new parameters
>=20
> Jernej Skrabec (4):
>   pwm: sun4i: Add an optional probe for reset line
>   pwm: sun4i: Add an optional probe for bus clock
>   pwm: sun4i: Add support to output source clock directly
>   pwm: sun4i: Add support for H6 PWM
>=20
>  drivers/pwm/pwm-sun4i.c | 187 +++++++++++++++++++++++++++++++++-------
>  1 file changed, 156 insertions(+), 31 deletions(-)

Applied, thanks.

Thierry

--MAH+hnPXVZWQ5cD/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl4VzjEACgkQ3SOs138+
s6GRCw//fzLIOmnXcwHTbq33btuvCEB1rp9YfVj9gXCp/MAZB5jm0UBI6xImaD/H
dgrV/vrm7/xBSDuSHJXtEgioqcozjGB0cNdZxXrv7OZfoFo4xMLtiOC3FTjhJtLd
ERuVBETpNxkD8XDQMfzr3mwcqE2nyjB2Fd0M5n2hzGZ5LEYMOWMUZfSp9zWoQGu6
tm5Cg/W0l7FYV8IILR2cuKy7raMEWnPC3onUr0LUCSmm7U6L8JXewoXXp+qzSl5N
FOkT76MFuKCrnlK5t6g7qxb4q+LDKrRGe3dgLMGM/lobNBePTncypajgFE4JRg7x
0UTeTvM6USsBqCzq86cGOli/ZnyjQoGRvfXNR+jxM6NeAYJPbNg4NT2t/96IUMZH
A6Bwb1j/PvXZwdG6jdFb3Ca5MuEsG7OLz5INYZTcOhrt680wnM3SrCj7HuzmZ88R
4gaA2irjTO3d+aZeotvVj4x6sIkyHjbg97LoVfyDIaxKzJ5K5MPQf6kUjPMYJIux
fH2JTdzh6YB1Q+Ac4jaQrk8AXYMWT/EHvgwIQayJb6uqQ6iCuwFbGNnwg9UbRAYf
0aK7rL7rlolaqGkj5FlkzFmvKp80iE34RvC8Hrn6LfI6V8LI8CTVwdCHpum5FgDM
Ra4UqflyN317dwIbSM3+t6P6M5MQoFVWAUIS3DwOOCx6EN5IPis=
=slaW
-----END PGP SIGNATURE-----

--MAH+hnPXVZWQ5cD/--


--===============0054377006028085385==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0054377006028085385==--

