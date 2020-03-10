Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C801D180464
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 18:09:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CQgXEWzN1nU6pwz3fl64OtNjXGHrboc/Epr9BVLeuBU=; b=gy+XhuzOPZtFLg0jJaBKEoixZ
	UZDIqkMz2MHAyL4jvBisgJZXCO9Y4yd5Bk8jOGnPgcjew+oBAVAUcLTEmLJ6aXlaHhuFmVhM4TutD
	9gt6XdQv6Jb9zbpsEM0luKAY7+NH6BE7L9yH86I4AgwuiNir1nUF5T+PvTLhQUqFhdBesGKlRsF8B
	TXQLAmUktnwCdFx/rD2EO4DkmZ+HTE+971v90oc8tH9Dlsakrk/FYTI+X75XLPg0vRTIHYoeomsDZ
	fxJLu5CySrj5/uCr/6wFxPH8dlu2ELHw5y0Vwfr4++Pu5MAd3I3LlcEyb8fbtkofjLo70UcVX0VPw
	sMOLBFS8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBiNE-0007eq-5n; Tue, 10 Mar 2020 17:08:56 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBiMt-0007dl-Lx
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 17:08:37 +0000
Received: by mail-wm1-x344.google.com with SMTP id a5so2284605wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 10:08:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=9tdh9Yd52OQvaS2+AWdpar84Y/IP3rkZCtKpcX/Lims=;
 b=IpS92EZQo9F96PT8IBgtBF1aag+gazu9GI7DdFAaBQ2URBR0VpPc8ZUisPH3v5fWqe
 bvJrsTqkoP2bEs8k5BaCAS3ReSxnj6pizCTj3G+jXg5Mits8GbdyVRTnp5qZtHsGEmjx
 s7NgNuInY2FGoPsvNcnTKcXxaNJbVzS2dtKRCDVfS5t5NSBRSmLhAvTWf2cs9dwUzzU4
 BGXPGNjDEi4Kb/gJBnW00HL5ixYt9xyDLT4sJSry5GxW/LX2xOHZvpQ3eT5/zELS3Onj
 aDxAxSMY22NzNSRvNvMrgBRkTyaTjFcqA5veE6psOwNGQCwGq9pg8bcmbSMuPqnKwWt8
 8rbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=9tdh9Yd52OQvaS2+AWdpar84Y/IP3rkZCtKpcX/Lims=;
 b=jdH558WwAkGYfAnp9at5r6inWf47l5ICG/oirS+lX4dNWhEUYbgxR4PpVWmoDvSmHz
 OkhoXHjdXOG32JUW7IcjQqJk9MjitcuBzQvpk56SW6ZKr6TTEc8YkvAuvXxxZMRQ9gbi
 UwiLhER1HLrhN7FBsjSxoWWG83KxnuS0CAnRrvz9bGlR3ZV1W/kox+Xzy75JwhrpAiiE
 K6/ixDxL7JuNR+git95ufkkkszvib7tFpjBLiQleViaKu/pa+fykopz2vCb7S2VBydyJ
 IhLzeltcYGLNkySiKjxiXu38XaZh0INAaPT+4PFBrTPdULcMVWnfz6umQPOSRWtk+JWd
 pIMw==
X-Gm-Message-State: ANhLgQ0+qbGMvhgbVGOKAa+PWrXhuWvJGPd6fRCAfurVNQv1PccfXPmk
 9In35ORCpFMl9aCmwkAOU9o=
X-Google-Smtp-Source: ADFU+vsaplm8JtjPK+Of2pJYXAco9+bzPuIKNcX6ycOK9ZGemGiwCbVuSMLr1ZTRtCKSwkkytjg9Rg==
X-Received: by 2002:a1c:cc06:: with SMTP id h6mr3186159wmb.118.1583860114315; 
 Tue, 10 Mar 2020 10:08:34 -0700 (PDT)
Received: from localhost (pD9E516A9.dip0.t-ipconnect.de. [217.229.22.169])
 by smtp.gmail.com with ESMTPSA id v20sm15560037wrv.17.2020.03.10.10.08.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 10:08:33 -0700 (PDT)
Date: Tue, 10 Mar 2020 18:08:32 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v5 2/8] clk: tegra: Export functions for EMC clock scaling
Message-ID: <20200310170832.GC3079591@ulmo>
References: <20200310152003.2945170-1-thierry.reding@gmail.com>
 <20200310152003.2945170-3-thierry.reding@gmail.com>
 <8e1f11e9-a95a-500f-ff44-6f44ad990863@gmail.com>
 <1ac24caf-e4c1-b20e-4c3d-97b328a97ea5@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1ac24caf-e4c1-b20e-4c3d-97b328a97ea5@gmail.com>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_100835_767777_7788BFCA 
X-CRM114-Status: GOOD (  13.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Jon Hunter <jonathanh@nvidia.com>, Rob Herring <robh+dt@kernel.org>,
 Joseph Lo <josephl@nvidia.com>, linux-tegra@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8238515960419526163=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8238515960419526163==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7gGkHNMELEOhSGF6"
Content-Disposition: inline


--7gGkHNMELEOhSGF6
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 10, 2020 at 07:16:15PM +0300, Dmitry Osipenko wrote:
> 10.03.2020 19:13, Dmitry Osipenko =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> > 10.03.2020 18:19, Thierry Reding =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> >> From: Joseph Lo <josephl@nvidia.com>
> >>
> >> Export functions to allow accessing the CAR register required by EMC
> >> clock scaling. These functions will be used to access the CAR register
> >> as part of the scaling sequence.
> >>
> >> Signed-off-by: Joseph Lo <josephl@nvidia.com>
> >> Signed-off-by: Thierry Reding <treding@nvidia.com>
> >> ---
> >> Changes in v5:
> >> - remove tegra210_clk_emc_update_setting() which is no longer needed
> >>
> > ...
> >> +EXPORT_SYMBOL_GPL(tegra210_clk_emc_update_setting);
> > ...
> >> +extern void tegra210_clk_emc_dll_enable(bool flag);
> >> +extern void tegra210_clk_emc_dll_update_setting(u32 emc_dll_src_value=
);
> >> +extern void tegra210_clk_emc_update_setting(u32 emc_src_value);
> >=20
> > Why these exports are needed given that the EMC driver is built-in?
> >=20
>=20
> Also, seems changelog doesn't match the patch itself.

I don't understand. These functions access the EMC clock's registers in
the CAR.

Oh... are you referring to tegra210_clk_emc_update_setting()
specifically? Yes, it looks like I forgot to remove the implementation
for it. I only removed the prototype.

Thierry

--7gGkHNMELEOhSGF6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl5nyY8ACgkQ3SOs138+
s6FE0g//Yhx1IIFBW0cnxGdopt71ts3wwH28AgKUyvq0sqSSrXWDcQ4rzkMotYBS
Q+sqXngUYZxTMuMJNxnOWs9GHE6jWAcUJYQVX1yZL5LRkraSL9GHZQkKA2UYpxU6
juV+JuOnUNMzb3Q9JtbZbxxRIgh+Sc90/ikKsMHaHzK5womAbxy1WDIrddBplgpq
VqtprZ5a7mQU4pi8i199lOEPhxuTX9AecjGthoplAOuCQtWrwIg+vYX1DdJkC5W9
j3IJeVryWM5KgJMx1PEmOE8+/66o1jcp4WACHK+cuNYc243vjMsAqi0AE3Ypyj9+
EbQ0YvZReoY9SIKQ7pyUg4lAgeSkf9E84e8+EWXXvm4g1+e5DqVbjxBJwsdWBK2b
ubflw4Wq5wsDWTT33Vqt2yXSEYNQETUckPjb8n3+Wh53BfeSMxKFvNhtDOwWGiMB
XI5JzInL10lMiXiB9z3/W/xC3C8roZRop9ihtvG8ImbpjHmkH+apWmcKpiKsIF7u
FNLjHK5G2hHJG+zamTFb2LVh3Btj/ZNmdMp0k49qR4W38FyEKPY9J0WKQGC+npnj
w7DS4a1Hw43+h1gbPZi0T+MzRc7zH74qHE9po7RyHBeQSEI5oCX/uVhDsZ7o2tyq
ELLmiPSibKQWaxcm3lloD8Duwqv0HUsnH+6zmnWiPFJPhHvmlw8=
=1/1K
-----END PGP SIGNATURE-----

--7gGkHNMELEOhSGF6--


--===============8238515960419526163==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8238515960419526163==--

