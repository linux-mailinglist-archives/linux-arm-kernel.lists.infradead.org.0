Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08FDABC624
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 13:03:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8Yw/rEWXr2Qy1HBHT5aFR6R4XizTO6ywV6M1C4YIf9w=; b=Rt0zr8458X+tpi27+OoFoaAS8
	must8+rcTR2DRFd/ijkvVmbASL1WUlInlEhAtgUaHFbD3Mxc6VNUXQRAAukyFZMbhICv16qa8tMDD
	WR0ldBRRo80cyGCgrOQkI05Ib+tBMPReGZoNtCOtomMC1Q02gEwgtoJPiESa8mej50CJdMyNYQAuW
	HyiXVxoPNeZ/qx7Ajq90oUJ4bpDYhFsXvagGnzE+j87eus3RaX+zkVxUhJWls28wCqxwGgh15cE+3
	Lh7523vZpfrqV6838rITGRWUr2G7Mcf5huLgDb4IboL47OC6f/6DAnpWHjNfOVg3C8Gsmuv4yH5eL
	t359OOgfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCib5-0006gi-5J; Tue, 24 Sep 2019 11:03:07 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCiar-0006gN-74
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 11:02:54 +0000
Received: by mail-wr1-x443.google.com with SMTP id y19so1442104wrd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Sep 2019 04:02:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=39oBHhyT5LUKl72KBXNwxMjpwohyaM3Lf/IBs+S5VfM=;
 b=KRMMpwxRTvDUSCbPtoBKXH1+SEQMejphNnTSPDh7MUKKjN95H/di8OjcMIIvnvd5b7
 fLgJlJOJigGHVjPuhwDmBfJXqfko76wHPyWsNedgJgSzoUjcaT6yipBayzPjK8+ViiZn
 1SBl35K4GsWDH131gnW/edR54ZK1Wx3VuJmYXL+JZYU3zXe21XkZY4qY1fCRNbO/3Fai
 4LtVUXscWzHj8gfACXdKKX0rBBUFx143d9MuD9DCCslYnyGrhQ45ifTXRq6/QC9Z6iup
 4DuIuTGEAUCZBXKq2v3M8pt3A5GIJCAjEcb91AMqxJS3EcOTXe/EVpyvL+dbXEuYYi5Y
 cx3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=39oBHhyT5LUKl72KBXNwxMjpwohyaM3Lf/IBs+S5VfM=;
 b=GXgzQ8cpNi7+WW4iMy5NOaS30ib9xowvQREvI7HaBGzWGv5jJL2JWKdLU7Q7h8hWfm
 TnG+IKSDRnSGV9y4puc7bAuiK9KFpRZ55aR905oIgDn0rHj93PmGm2ErZb7nEV1r6trP
 w1TwRhYrM/WdPmy4d1qtTtvwoadeFyQ8QWOVB8vkLcYB9A3ntn2fHH7sWC3cGKosN+pZ
 GEU83+XyWN8AzqpVMq1HSt3czpahcC9H4clobyH3OBuXh/hGxrQXnDvbwpBpS0zhxcjW
 izgUDI6heJFK2X5gZxJzvaLLwIRdmDDgsW4U5O+0Ncevvz60lAiDuCIhvwA92zYRLBnW
 P3jw==
X-Gm-Message-State: APjAAAW4vt16WbtuKg4D+FWdjV0M9NOPnwCAoW9slZ5aXyQPhK/xi/qC
 hEcAyose35RoPdQHfygpdPA=
X-Google-Smtp-Source: APXvYqyiabsF55sMwAHaoHbBYJyTJizQtfzpgpeT7+A/Pub6tNlghPfdwkrq6m06iZXyCjmzNOBpzg==
X-Received: by 2002:a5d:6242:: with SMTP id m2mr1795532wrv.261.1569322971287; 
 Tue, 24 Sep 2019 04:02:51 -0700 (PDT)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id e6sm1733774wrp.91.2019.09.24.04.02.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Sep 2019 04:02:49 -0700 (PDT)
Date: Tue, 24 Sep 2019 13:02:48 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH 1/2] pwm: pwm-mxs: use devm_platform_ioremap_resource()
 to simplify code
Message-ID: <20190924110248.GF14924@ulmo>
References: <1569318169-12327-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
In-Reply-To: <1569318169-12327-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_040253_284649_EC672FB2 
X-CRM114-Status: GOOD (  17.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
Content-Type: multipart/mixed; boundary="===============2835703453671535051=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2835703453671535051==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="cz6wLo+OExbGG7q/"
Content-Disposition: inline


--cz6wLo+OExbGG7q/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 24, 2019 at 05:42:48PM +0800, Anson Huang wrote:
> Use the new helper devm_platform_ioremap_resource() which wraps the
> platform_get_resource() and devm_ioremap_resource() together, to
> simplify the code.
>=20
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> 	- This is a resend version of patch: https://patchwork.kernel.org/patch/=
11048365/
> ---
>  drivers/pwm/pwm-mxs.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)

When you do resend patches, please make sure to include an Reviewed-by
or Acked-by tags that you get.

In this case that's not necessary since I had already applied the other
patch.

Thierry

>=20
> diff --git a/drivers/pwm/pwm-mxs.c b/drivers/pwm/pwm-mxs.c
> index 04c0f6b..b14376b 100644
> --- a/drivers/pwm/pwm-mxs.c
> +++ b/drivers/pwm/pwm-mxs.c
> @@ -126,15 +126,13 @@ static int mxs_pwm_probe(struct platform_device *pd=
ev)
>  {
>  	struct device_node *np =3D pdev->dev.of_node;
>  	struct mxs_pwm_chip *mxs;
> -	struct resource *res;
>  	int ret;
> =20
>  	mxs =3D devm_kzalloc(&pdev->dev, sizeof(*mxs), GFP_KERNEL);
>  	if (!mxs)
>  		return -ENOMEM;
> =20
> -	res =3D platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	mxs->base =3D devm_ioremap_resource(&pdev->dev, res);
> +	mxs->base =3D devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(mxs->base))
>  		return PTR_ERR(mxs->base);
> =20
> --=20
> 2.7.4
>=20

--cz6wLo+OExbGG7q/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl2J99gACgkQ3SOs138+
s6GQAhAArhAUpmU0pjAl8qc9eLxwkVNYkfxSagID+AR2KE1BW29cp1kDA5Mkg2/s
dy4eDAwIjvNSh0l8rlFrUmZ2Mxa5kOkHwEcfnHxNf6sps28wd2TseR0oIs/Nka4p
F8PDHqh7ukLOuJpLCt4H2oC2BkmXLq18w7fneryX8TMfg/KgrOqLDyuUIxUP7OzW
HKfgz6u1IfDH6U/1ehn601t6MJBNjenqFIJsiEVqUbynIBRqE4Ss7+QAxGQ2jrAu
A4NnolWe05xJjLeRqXGmD71fkHZHjyyN1sRggpsOOXCWkqcAZP0/wWq25PI055jv
eFZ/WjvqMfEVXCvxqR1iLmr/cgIsCpTrW8kzbyVbIjcWaw6fQtKdPOnEx0TQIC4v
GgDmVIMnjxhG82CSr9LBQ1hpQL6hDQJKltYSkQPZ8WwO2ISY0xmjCcvm1+FMG2ak
QjROGJw7JGoKQ46sD5/iYlEnGaEQTqVKCsTwb8kWGbQswKMxMmdd9cBImxTJxrua
ta2PsGUDKC18XSbw+bzh4EDJ1wYr4kOca2rWYbO9ubKXTsEkM4iiDIN9zrEhbmIH
L+CIlM03DnQq++a3DQsTS3/XpLAHVynaID9sa7nzcadb0ex6Twno+WP7weo/xySH
Q6S0fwoqdI8yJgN2SMmI/xePpnp7CDmRJ0pmXRx1GbJnfbsZbrI=
=h/nA
-----END PGP SIGNATURE-----

--cz6wLo+OExbGG7q/--


--===============2835703453671535051==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2835703453671535051==--

