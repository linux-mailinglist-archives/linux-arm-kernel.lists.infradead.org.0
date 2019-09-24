Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59EC8BC5E5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 12:53:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=a+l9vdo4wFEYtiAtoG4XgJJJ7PHydIEY7Yj2zACxmLo=; b=DRIuOJ7WjmRsKfZBh2uvzwhwI
	mZMKFkv+o1q+ehlKTZliZZ42byZoBJmIVi7FxF3OV50Hxjy+ggIg836UwMSu6iiCQt+rDpYcpicGE
	rUl78ID3wMhpjG1T9SdojYdfrNmhFwJsXSYFnpBr3D8IzaOEzVjTFvo7Xtj8PM+fkBik1puLv3hEp
	gQFPkRRG4eezRjV9KQlySHbHaOlYsez3V7c5ZyOJUyYRHLatSLRZq9WSo6rkUDfg35LutK2yqcc99
	ayajco4RcvQ1NBJbAVz45xU7lel4iYyQ4yz50bqfhwZec2FsGzUJWJe0aYgZRHMZMAEYDif7uY006
	ObJXIjGNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCiRT-0002T8-It; Tue, 24 Sep 2019 10:53:11 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCiRL-0002Sp-KB
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 10:53:04 +0000
Received: by mail-wm1-x344.google.com with SMTP id r17so1341130wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Sep 2019 03:53:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=zTAIzBlG72evi2cgoET66WS7OLBiEq9wKfjo4akk6iY=;
 b=FZ+Hh60KUFlgTLWM/xD3fFBsnzHbq9FsaV4vHvWIIQHTkJ+goAjqbWkTl0lD5q9lVu
 TQ/y/HbMpPwwN6A9pkuEWagjZlURawBTa8Xbfcpn6YllYwnrDtupck0W8U9WIVFN0hzo
 es9q/76FyXW1dxquq/tjOS+BM3y317aYFSyNDq5jqZmngaTwQ6LFIoPsQFwxg1PNbWDF
 ZQKn7sBXgX/7Cmu+SUyAvmTcH9odT4QJI3hXaZsODv/KN7c1TQZDMrPCE44goFQ/7rFy
 kVx7kCmjR82j2y7Vhyo1c4AWTkUzybDBcTz4w4yxgnTIwoSPKZpLkzF/V51pjtx71khF
 iNdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=zTAIzBlG72evi2cgoET66WS7OLBiEq9wKfjo4akk6iY=;
 b=XkbX67fWtP0tDOW52m1nWKSPyF0ny7W7XUGb6+tbzW2jnkiuZ12vzYyurl3dn8A1pI
 4w8k9ON2BG4xHab8s0rN3KB7PvU+POr3dtHzgtxE47yK0ghuK31sAAMBhrhTgeKCl+eB
 mcbK2zZonE5vFslHXcjPQx7hDrTjjxu2Mkh1B42iF11qNnWTGs3MNcMYraLW2XJwf32p
 lra6ug4xfXNgHkvVUDwxQA6lyxf9X6v6oDkct5CG/m1l+MjGgNHEaHKjWj3dSVNLjKc2
 OQNtOBYsX1RI0t0qrO1Rv9Yu+Y0guLP94OsAC3GYojUgUXnHADkoN0cp+ilAgHoKE3gh
 gdTg==
X-Gm-Message-State: APjAAAXeaX71toI/kOLOxdjUbkGBW5AtWNxuCBMAMkcoHYyirti8T8fH
 vx1MLtYcrN/WiPhgvWc95zs=
X-Google-Smtp-Source: APXvYqz/aiWV9T4oK3iswRY/DHmoWOBJTxWMue/zFVZQVujkEp2H3ifBhWSGVYBmpuJ9dVjH15/ZKg==
X-Received: by 2002:a1c:2144:: with SMTP id h65mr2310421wmh.114.1569322382016; 
 Tue, 24 Sep 2019 03:53:02 -0700 (PDT)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id y186sm3817474wmd.26.2019.09.24.03.53.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Sep 2019 03:53:00 -0700 (PDT)
Date: Tue, 24 Sep 2019 12:52:59 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH] pwm: pwm-imx-tpm: Use 'dev' instead of dereferencing it
 repeatedly
Message-ID: <20190924105259.GD14924@ulmo>
References: <1569315667-1525-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
In-Reply-To: <1569315667-1525-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_035303_666572_E3F781D3 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-pwm@vger.kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, Linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4527103451680794225=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4527103451680794225==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="pQhZXvAqiZgbeUkD"
Content-Disposition: inline


--pQhZXvAqiZgbeUkD
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 24, 2019 at 05:01:07PM +0800, Anson Huang wrote:
> Add helper variable dev =3D &pdev->dev to simply the code.
>=20
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  drivers/pwm/pwm-imx-tpm.c | 13 +++++++------
>  1 file changed, 7 insertions(+), 6 deletions(-)

Again, positive diffstat and doesn't gain enough for it to be worth the
churn, in my opinion.

Thierry

--pQhZXvAqiZgbeUkD
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl2J9YsACgkQ3SOs138+
s6H7EA//c+M1K7oG4eadkixheMYBpEIjyymh8PkLi2meN3+11V9d0zFBvVRjuoUQ
WyoSvQevjdLRO7oiD00k3Eq4oq12pW1nDKkYie2q/KhK/BkHxO9nZppcGmjxp2l5
vf8g076NvJ3Fuwg8e7aWiNPGDHuy+fSrF2wzX174wMZ6z08s3iCFfkfF68PqxYAx
uO6/QC0Ici6CvltPqVrIMYLtn89BbQYVm5GivwAbzkfoukfcvEyMnPRtsMMLPwys
vuHSVpAy6BaQ0q30fqjErVEMDv/nBmBnK+Wk0S4mkt+31rBARoqhoAxPqU2RTsFT
xekt/OoywxVDS4VsFulovvTSC4MRzFFN39z0IiWQq4nlfpVZqYTPm5+Gh0vIRhtl
Yk6ASiRKbLVBfHTMVKoM2ojwHzLoRu7k6P78POdHdiVVdO2LCCdQQZIfW9mOApO3
fEwqdKaRSfQY/MCv+nyoNYB+Slx+2h6qKon6uracPgaYKPasZILcgWQAummpP2OL
yRox2Bk1NDjkXk0Rb/OcQkG5OwoPh/FIbfsoZHwUl2GxO3tJKZcOnCDTcu9B7aEf
txM17yl9fcS166Ir1yhdna/l1mrC+/Rysc7jfYpUC5D26V1K1zwODYlELFGqGY6Q
21LKYO/js44tPqj0CuJz8DHnGS4RLcn7mQr7b1MXN01ue01DwGk=
=AXDg
-----END PGP SIGNATURE-----

--pQhZXvAqiZgbeUkD--


--===============4527103451680794225==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4527103451680794225==--

