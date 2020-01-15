Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E101B13BB75
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 09:45:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ctgg3HwFpG8MKU82Zz0iKhlRn6ska+IqeP3ArQzYpQE=; b=eBJ+rBYCNGUTpVRt1RkVmaFrV
	UrsumK1D+bZZThd+kwEgkc+hSJaoBaTIAwJX5YsRzLXmwfiz9sckOmECMGO1cpRlmyPHw77o/8ZNy
	vhP9VceyHDpJFwGBW5vEU0TVDIXK2NeTVsXajAP8xfk1dwB5YaTmuMUZtaSf48CXmtDKibtB6c9/V
	X6KbOb4Eu6jS2Nt2dC9fU7NxoXjqfyKUmF8miZDCGSFx1Bzstbgr79ovaZZ5MLvoVE+LSILYR99s+
	Th/WqbYH0K0gzEJKDeyTMnFghEO1EilMLV8JcGZDmSHDR3KY69bO0O1gfSwRrd5ltaZhrqxR7ZUWL
	eCB9sZtRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ireIH-0004Ky-Lq; Wed, 15 Jan 2020 08:44:53 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ireGs-00035Z-8d; Wed, 15 Jan 2020 08:43:31 +0000
Received: by mail-lf1-x142.google.com with SMTP id y1so12042282lfb.6;
 Wed, 15 Jan 2020 00:43:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=Z/YS02c1TwDm4fzEdyAro9aD0jq2KhJ8uk8GHgLnCGk=;
 b=fQa/lqqe1G4ZA5nZyEaSWefREZoNM3o2XddUf51vA48tYZ8nt2SpLGiTC3Yx8JL7rY
 2BS7pZKcgnit8y7b5JTX0okELFgiZMp+17SwVjG0IL0ck6gGX7s4LZIcVBr0GbOX8qrx
 PR5WPkZBqZO/SBLtwvkcVXCrm8oi6/gQv988ZHXX8SKH3oqimuJAlyOmoYQFSIA1NJ8M
 zjVfgLHPFzdwGKfcjXB1K9eoI7luM2ROaK7aFlqJG+0/xKOxroj6mDMFDwr9LwIh7qof
 Y4OaTSYfrqPR2J32rt75LHSpZG7K6uCQRQ5/MFz2xkRT2u1oQzx/dJPowXJ3owlpXJiW
 IsXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:in-reply-to:references
 :date:message-id:mime-version;
 bh=Z/YS02c1TwDm4fzEdyAro9aD0jq2KhJ8uk8GHgLnCGk=;
 b=lMEqZexJygDll5cVULoFijVLkl39xEvyKiSzznGVRB2tZeq6E8shliVJCuuPXbGIE1
 aeaXt0mj28i2h2BNosLa4HIj3WLm4OOsAsiZbk30j9nikFjRCzSF5JZ//tUtYM5BxBvH
 F1sUUiVGMhya+27HfpfsOIahRgQmDGJ7Ijy0xr+98NEVIXIpzOswjGjl8E4/hVaxzMKB
 vLJl3a9K3le6caDnfieFhIRqSSmRBxhW+lRm7oDpCsB40x3MFBP+IiWkxhq7EuRDQHJ2
 dZEV0kth+NGKhqRi5ETBpZiyBjbL5WnKdx0PDeGgqms5fPQmV7QBwcZwsT6ZGoTHWTy3
 EaRA==
X-Gm-Message-State: APjAAAWSM3mkpULGGveM+C2XdqDGyrpgnCllja5uEOlAPU9/Y8xC2a+z
 eEjoD7f48V1I6wKSu0/WBPQBUxXwTcCrNQ==
X-Google-Smtp-Source: APXvYqyopiD+cXnqJ096h1Jrq1D8XyPRz5Dh2ChG/ePnwC7zEu53MzS8S88Fo9mm2rYEdlGUpXrqBA==
X-Received: by 2002:ac2:4194:: with SMTP id z20mr4115478lfh.20.1579077803634; 
 Wed, 15 Jan 2020 00:43:23 -0800 (PST)
Received: from saruman (88-113-215-33.elisa-laajakaista.fi. [88.113.215.33])
 by smtp.gmail.com with ESMTPSA id x23sm8491572lff.24.2020.01.15.00.43.21
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 15 Jan 2020 00:43:22 -0800 (PST)
From: Felipe Balbi <balbi@kernel.org>
To: Hanjie Lin <hanjie.lin@amlogic.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>, Rob Herring <robh@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kevin Hilman <khilman@baylibre.com>
Subject: Re: [PATCH v4 4/6] usb: dwc3: Add Amlogic A1 DWC3 glue
In-Reply-To: <1578537045-23260-5-git-send-email-hanjie.lin@amlogic.com>
References: <1578537045-23260-1-git-send-email-hanjie.lin@amlogic.com>
 <1578537045-23260-5-git-send-email-hanjie.lin@amlogic.com>
Date: Wed, 15 Jan 2020 10:44:23 +0200
Message-ID: <87pnfl6rdk.fsf@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_004326_402536_1FBE3207 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (balbif[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, Hanjie Lin <hanjie.lin@amlogic.com>,
 Victor Wan <victor.wan@amlogic.com>, Jianxin Pan <jianxin.pan@amlogic.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-usb@vger.kernel.org, Yue Wang <yue.wang@amlogic.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Liang Yang <liang.yang@amlogic.com>, Qiufang Dai <qiufang.dai@amlogic.com>,
 Xingyu Chen <xingyu.chen@amlogic.com>, Carlo Caione <carlo@caione.org>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Jian Hu <jian.hu@amlogic.com>
Content-Type: multipart/mixed; boundary="===============4401293599701575541=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============4401293599701575541==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha256; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable


Hi,

Hanjie Lin <hanjie.lin@amlogic.com> writes:

> Adds support for Amlogic A1 USB Control Glue HW.
>
> The Amlogic A1 SoC Family embeds 1 USB Controllers:
> - a DWC3 IP configured as Host for USB2 and USB3
>
> A glue connects the controllers to the USB2 PHY of A1 SoC.
>
> Signed-off-by: Hanjie Lin <hanjie.lin@amlogic.com>
> Signed-off-by: Yue Wang <yue.wang@amlogic.com>

you're not really adding a new glue. Rather, you're adding support for a
new platform in an existing glue. Make sure subject is clearer

> @@ -409,17 +426,32 @@ static int dwc3_meson_g12a_probe(struct platform_de=
vice *pdev)
>  		priv->vbus =3D NULL;
>  	}
>=20=20
> -	priv->clk =3D devm_clk_get(dev, NULL);
> -	if (IS_ERR(priv->clk))
> -		return PTR_ERR(priv->clk);
> +	priv->soc_id =3D (enum meson_soc_id)of_device_get_match_data(&pdev->dev=
);
> +
> +	if (priv->soc_id =3D=3D MESON_SOC_G12A) {

you can use of_device_is_compatible() and get rid of the enumeration you ad=
ded.


=2D-=20
balbi

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEElLzh7wn96CXwjh2IzL64meEamQYFAl4e0OcACgkQzL64meEa
mQYg7hAA3b0X6pzchiGHghxKiosXFmzOQiX2dHylXsAnC1vrb2qhE18bHFR+1bBV
R2w3SJE9PG0ohQN7JGOhL0SFHXbMs1DkRODizU6bvahZdgZy+/303lGKoKHwROaY
xY0BVakqO6it+5Kvuk0HR4FcHRNKmePWF3Eh86UBClVON/O8xxGaIiUaTzGNM8d4
thCM+xTDuBqhUsucX2VStmiL7I0vfFXVk8K/vWPLPEEoYvVZVkU4fEu0RZQnLXtn
yqrGAw/YNEG9e1RLiLILZeNEA0d22hQS3tFiS3bi6AOe124C0Cmok592uypCyhaI
+9kllsLmVroR26xEw1edqA2aQ/WzQV5ALagTa1QAjRwp72Do2ls8efc1lyyRgxro
JlH/XiRV4vS+Rt8E5Z1Sz7uteVU32Qnvc6vEqAXa0DBRAnDxSNL/zEfZe4mvI5jx
hE+0NNRbyK+cvmvzAIinsAueFgngGMUxr/ssX8Gogibipp2yCYs5QWMQ6iXRDdWU
TG2J39+gfrJWHmd9fJp8hsb/lxTwEe1qhZCQPNH3YB7PcIiyNbDDnjhqPNm3DtbQ
771yDsiOxNo0lfb135GHYW+HblXqLHbmRlW0c8SZ9gm0Bs5V4eppjDUVdWyL1W1P
3fk3G2/nxHKRTD8sc8T3EPCIc19dbCTOKrO9rHnM/aOuzE9TXmU=
=/llC
-----END PGP SIGNATURE-----
--=-=-=--


--===============4401293599701575541==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4401293599701575541==--

