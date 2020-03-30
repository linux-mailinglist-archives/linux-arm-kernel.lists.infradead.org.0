Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8903197E38
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 16:17:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4mFBfndy1BzbysIw08MEtSrW3pkhuFJb7Pbd/6e+dRg=; b=eM9+Tj8rxPumChjnc7BuTsDCc
	UHmeWb2MMmGXRDWICFX99tOrAw0rXHcme3UBa1t1VmSy5apxMb7zLOMtKAczgFDSfwdrgGYug6UY1
	SN1dRn2p+JnV2uA7LwmDACASiUdwqjMo9RhBeeq/QhICxD0ZikZrUiGRvmtuIXBJkLZokEuIlYSs5
	a5Dauv81QIDM6Xi2XC7vMc7/vzJC6u3mTrClKHZJ5BoCU1UtlxSL6b4ZpBslGrTF1KSIJALzoAPrT
	M8uoLDpSTvAHoJg99FNjIjdfvCDCqPxhflW8yUeodUmRQwfG5e1qBMB0HOXDuXLwDX1MVQq2q2+f5
	YxSMgJUYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIvE4-0008Dy-O8; Mon, 30 Mar 2020 14:17:16 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIvDs-0008D3-FY
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 14:17:05 +0000
Received: by mail-wr1-x444.google.com with SMTP id m17so21794664wrw.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 07:17:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=pBQqZVEq9iQY3TkOskST4uSFuna+gg54Ys7RpapkQWM=;
 b=lujtqJdPJb/psrSlD2NuWhPp2R7EnCRb96e3qZY71byvANMzufsCgACW8htq/HTCNw
 q0qQGFneoyuYvJ17HsXw/bBpOcHGlCHJok2zU+eoZo509R++/5sqTQ58Sd2L9eODY1bF
 4g6b5WYlbADl5u6U7OsvEXy4AtNSNH4vOifUzBZYTsWPJtL0XlFMcXJYMDFlwixmkdy5
 TStl8BrOSoXRHfXSWLTAg1MEVzRWEb/21Gi826VIVxddtDh8kQ/3ccceI2zRYNQ+Si1r
 EWzyox7gf1XVfJVlJJlToMXN06+cDec+KhNbqgpH4KzBKRVrGjtkABoTVx4XhF80ICL5
 d0nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=pBQqZVEq9iQY3TkOskST4uSFuna+gg54Ys7RpapkQWM=;
 b=ECGnsrqSFFJ9O22Z6SzVG/CWuVOMB924duvuBgRoYNFHNa9iN+lSH6SPcrpjZYs2yQ
 mjIemrquoSnGIN5btDMs+w9nTyDI9jzVimGxuPPu2riiZLOga9cPH4FFfrhL3OBS6Zv9
 XYI1c+7KCOvrDNKtSA/mPBp59Uztb134+UNKNJsZs850cGKYlwJUA6K7QJ0bsE25FVbB
 eoZIaIU3xYEyc68OnfuwdtZWmONCgYENIUmiRJeSul4RQ1spp85fGNLG1d6YlcVin7EF
 D9873S0a/hUt/T3flouaP1P5nGsZAYOB7RZpuMDFPx2wv5kRUTTtTWDJc8RIEw6jG0lD
 jKSg==
X-Gm-Message-State: ANhLgQ1EFSiO0lZfoVgavLCrbnz73KxiP3++hzkcgupgtpym0pdKzmX0
 GyTjarwQhqJt4l/sush+KOU=
X-Google-Smtp-Source: ADFU+vtKQ6aYSmXN4bQziwMlCpsmcaXBaCgjvE5/V9oWoSrehpWwu/MsMEXXPUfNybIGUJX+7pY0Zg==
X-Received: by 2002:adf:f8cd:: with SMTP id f13mr14712693wrq.119.1585577820845; 
 Mon, 30 Mar 2020 07:17:00 -0700 (PDT)
Received: from localhost (pD9E51CDC.dip0.t-ipconnect.de. [217.229.28.220])
 by smtp.gmail.com with ESMTPSA id v26sm23272574wra.7.2020.03.30.07.16.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 07:16:59 -0700 (PDT)
Date: Mon, 30 Mar 2020 16:16:57 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Pascal Roeleven <dev@pascalroeleven.nl>
Subject: Re: [RFC PATCH 1/4] pwm: sun4i: Remove redundant needs_delay
Message-ID: <20200330141657.GH2431644@ulmo>
References: <20200317155906.31288-1-dev@pascalroeleven.nl>
 <20200317155906.31288-2-dev@pascalroeleven.nl>
MIME-Version: 1.0
In-Reply-To: <20200317155906.31288-2-dev@pascalroeleven.nl>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_071704_520917_F35BCCF2 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-pwm@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0244971059238626947=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0244971059238626947==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="v2Uk6McLiE8OV1El"
Content-Disposition: inline


--v2Uk6McLiE8OV1El
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 17, 2020 at 04:59:03PM +0100, Pascal Roeleven wrote:
> 'needs_delay' does now always evaluate to true, so remove all
> occurrences.
>=20
> Signed-off-by: Pascal Roeleven <dev@pascalroeleven.nl>
> ---
>  drivers/pwm/pwm-sun4i.c | 13 ++-----------
>  1 file changed, 2 insertions(+), 11 deletions(-)

I've applied this one since it's obviously correct. I'll hold off on the
others until it can be more broadly tested. Hopefully Maxime or Chen-Yu
can help review the remainder of this series as well.

Thierry

--v2Uk6McLiE8OV1El
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl6B/1kACgkQ3SOs138+
s6FuiA//cx1ke/G8okfRZ3jdGF2EHHZNYra6C9bHQDNUFuqoqfLNoWCZ2vGlYDpm
gpE9BAX7AWFq5BkD41Im+NeWH5Z63iQaR3H/+aMW/yiyaR0+bt8wlbmQzFLzUltZ
HP/nEIeM3weYrlNLMJx2t9UGXH7m+jjR9/d/rmfweJPNMfxgWl2b4bbq4nnQFUDN
KQMds94x3Hrzn04CzB+00E7TYIUh75bxBYQnTAnRfASN+F/Tg1tSrCgCamz3WjF8
ry8LFyg3WT/pbZaI+Yv3dq6C5NT04VuJC3qyhQaqH+vHbOK5iIUBUWCsJbkBybXY
+ZguKG2/07rMx6wC/e/NzL/7ChmPVym/O5di3TTtf6T5f8ZkuVwTqacf0V6etOxJ
tYWFG6Yxf97olwc4MhdUqK1SgT3D+0HsKaEZ2R9FCQvSMNByWesHjan7ZpldHjU7
I/xJqQlP6jahCEQYR2sWDw1bcpY4X251V6Mp/07jvks4JWvU2fHDy/CqJKIOWynO
tv2tr0GssCK3ZHt5Olv3mI3wHfkvHIKfI2LWF4kYkkpVcEkVRL2joQuUL0x70Miv
KcickysSrgI9DW24l1NGJe5ZUq6EE/18QETvurlORS7S087RHcwUwXu2Vg7G4s7V
CFTY/EHKeRL638QPV+MvSMudI9DhDRBiCwmGdOVYy7B6rVImsdM=
=LA4s
-----END PGP SIGNATURE-----

--v2Uk6McLiE8OV1El--


--===============0244971059238626947==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0244971059238626947==--

