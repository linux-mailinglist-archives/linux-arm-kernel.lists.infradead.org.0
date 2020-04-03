Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C3D419DEAD
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 21:44:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EMcY/RVLvTV29Xv6pnxRan+uw++Kl8Po/zpWnHvhwcg=; b=q/4I1SDYAliz9f868xfNKejYt
	appWoFEiMjSNTOGF14b4s+XDUNWIWShcToMTs5XbwNaJoE8LkmNdkUcA8x+ecRqsnQZcrmTmnGbT/
	bI7LlQ1MpVjoQ5klwLj4AUnB9BOxJlg2xpYD8cVRlmckcSNMt2bbMq1gjFTXd51InLlxcZWt4IoAW
	x9gSU3317cQ1iFJzIdcTbExLqwNDir1xtmJR4WWlWM1krn1xT7fpkWu8wgs5Fh6XX4CDGHNyyBU88
	YZkS7tOwh/puqRwHK+wZIjgWAixzhm5gKJYSUjenmZblb/4/zyWNuth/q7ZrHymWEdgn6idoCBeIK
	N99O/rJqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKSEa-0000fW-Ah; Fri, 03 Apr 2020 19:44:08 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKSES-0000eX-MW; Fri, 03 Apr 2020 19:44:01 +0000
Received: by mail-wr1-x443.google.com with SMTP id w15so3657273wrv.10;
 Fri, 03 Apr 2020 12:43:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=VhUPoyVgqk+qZ+YSwj2U46k0fdPCJ/w50hKlV2MbuGw=;
 b=hhCWiye00MTANqJ6nW6EucLK2InoA2Rw9jqmk6Eomp3msE5cBzOiPJKNPNgkakOWcO
 Z6f/R3hrlu1FnKAFAWctSyIbwGP/3UY2S49ylYYbhpawrvKdhWo7A5MKz5NSDJw7S7qx
 CvPcHUyXe5CGhNL6Klqth1Tvr/rSCXvxtdP7V8gs18cWzJUKxRqFZgsTcvUrGa101MiX
 Wh/UZWF6d/nAp2SOQSZZiXMcOVCQyJpPeDD61ciT/5NG19tOnB3ON2F9gMaPDbK2SPfj
 r06WUI39IRPKPVu8DC2ulgBfZK+ZYwNVO48k0dwWfxg30DTmdiGgO7reYnaTf/8iCo5g
 AwDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=VhUPoyVgqk+qZ+YSwj2U46k0fdPCJ/w50hKlV2MbuGw=;
 b=M7eeEJAHLbwfhymD5PxxnVE9Cq0YobJYX9bqyVvAbpXmQCWt3qTiEGci+YEWtkY3eM
 +e2zTma9TLwM9h7kFKPkJ2VHOPVGPcugKbbHz9NX9h5h6WOXrYmurWRavBnHp2gOgPOp
 Tn2c6GZr69rCnelg/ah3nngUe/5v8zn+Qc61qunxOB6JgbqU1CbtjpFL1i+907KI4eh4
 Rz4a9/Vy9kPX4nr/G34MZwQiiDMoLtPsg71YeoL0bdDd7t6Nw1APPrNberJaWeJgfyYC
 //Wgr+5W9E8nY/XaOe+n9oAegn7RdqBGmhu7HG2pYCMp24ffVWjVPyIWzjGGf5D27jgW
 eiVw==
X-Gm-Message-State: AGi0PuZ6kLdxfJJfcg1CrM4ZOmbB1zHYjoWPAAm/RGB8dhvYXRTjBZqI
 rKfV6iLMS7HzQJaCRyL+dj2AUZnT
X-Google-Smtp-Source: APiQypKVRLjP5+xoPXsNXQUo2denoGstY9cptKeS0GbRKSrXlZZWW7kTNIWA3fDVCRT683g5iO2nZg==
X-Received: by 2002:adf:fe87:: with SMTP id l7mr10231570wrr.377.1585943037972; 
 Fri, 03 Apr 2020 12:43:57 -0700 (PDT)
Received: from localhost (pD9E51CDC.dip0.t-ipconnect.de. [217.229.28.220])
 by smtp.gmail.com with ESMTPSA id a13sm13077687wrh.80.2020.04.03.12.43.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Apr 2020 12:43:56 -0700 (PDT)
Date: Fri, 3 Apr 2020 21:43:55 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Colin King <colin.king@canonical.com>
Subject: Re: [PATCH] pwm: meson: remove redundant assignment to variable
 fin_freq
Message-ID: <20200403194355.GB201060@ulmo>
References: <20200402110857.509844-1-colin.king@canonical.com>
MIME-Version: 1.0
In-Reply-To: <20200402110857.509844-1-colin.king@canonical.com>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_124400_735389_A61EE690 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-pwm@vger.kernel.org, Kevin Hilman <khilman@baylibre.com>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0832240118646298492=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0832240118646298492==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tjCHc7DPkfUGtrlw"
Content-Disposition: inline


--tjCHc7DPkfUGtrlw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 02, 2020 at 12:08:57PM +0100, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
>=20
> The variable fin_freq is being initialized with a value that is never
> read and it is being updated later with a new value. The initialization
> is redundant and can be removed.
>=20
> Addresses-Coverity: ("Unused value")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---
>  drivers/pwm/pwm-meson.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks.

Thierry

--tjCHc7DPkfUGtrlw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl6HkfsACgkQ3SOs138+
s6HHhg//ZVsyNF1NKEv48QDcFr5adCAieVaCKk7J+kqjK7w2X2fnDrjuWXbmtlpb
drMho5uh8b597B5cDcFoprjQSeHl0D56JKiLgBYsBuBxeRsFcVUVS5zXxt8mlvFc
AIGKEPSSZsg+LFqlR5Msxf58M4YGYvG3lbFFQUOEN0I5K6W3wvfRY0+xGUvL0TC+
1kOy5HmhM8lFPv5h/zgs0biiFg32D5ghmaLduZN9VjUJLgPmnlR3nESaWbjiFdZv
XjGDkXPwx9+tJML2TzROxMWcBFFx7zBDfxHBvRfovv272QzMtpb7eT73Fh/cZSKQ
hMCslpZy5Vj/2HcHkRY/w1MN/NZAdX/mNhQaIw1gz2P30mJxvUUDOoOaAGk3k8p6
K2fUxY6YMthq7T731bAhROz1gxt4Ra0IMVksfAUSjBvHduIvOjikBJqTu+5TKIe3
FnXfzaOODWL9+DQwHZtYJIRv4z21DfPFJunzohcsHKptPf1AqMW1BJX+4XX5rIbn
dl0WS2h5BZ3lf/OU4FqXE6c9rKEj8NIZAYoYHTX1yDdQSI2G5GtFO811eGsN7h2C
uVtwi5Jj2Js8rSxFQDj4d/jIKpxppzOvTGEXl1/Xz5XzMwD4TBl7ILKFryCnYCN5
L6Y59GbxDRXjBGJuVj3HhV1bFnBcVqSFz5swfsnvXCMTNKp0wlk=
=9i9z
-----END PGP SIGNATURE-----

--tjCHc7DPkfUGtrlw--


--===============0832240118646298492==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0832240118646298492==--

