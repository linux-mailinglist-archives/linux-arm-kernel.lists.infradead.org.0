Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C0AC134365
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 14:07:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OJu6D0zdbn1wM0FmgDw6ipK68z87/gDLyIYk5Pr0mGg=; b=OoJhMgsb9a2QTlWozXnRKrUtN
	3+On7Mrik9iTFhgvyORLMhJ29pgnyAefP3s4unxZ9QVqMhnxTkDz+DESoE76Rt38LMO6uHLukK3+W
	eof3efEzJ8CY2SO0S9vuSymYG7GMnN3/RJ+MK8pwK/IhkUAZZvEdZ8nvjQ0ZyHR6i0YsiSgz1FeCL
	CttzXgPJA7Xd9LzPyCFDzC1U7mWhwrptKKKjGLdGNI0VJk+qYmYqKXNyeWXgXYmMLfdcB12+RPZLz
	qfL1h7mZjkwVQmHPSaelOJZKkaMxxPRfnydZSDe1zw6QTlMnZEGQou7hY53/Tz+oXU80U73RBssRO
	jEB/1fifQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipB3L-000642-9O; Wed, 08 Jan 2020 13:07:15 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipAwo-0007mr-D0
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 13:00:31 +0000
Received: by mail-wr1-x443.google.com with SMTP id d16so3239287wre.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Jan 2020 05:00:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Vu/TEPKi3gH8supR1Fm33b81xSnPq5jh2aLIJG+pAp8=;
 b=C38VsHkaSiTnMp8oEqik2sQ+UdujLVRJBOZhWNt4HwDT8TYYXUfc63GaVwY5Bm1w9C
 l1wjcqYxCFc4z5QuoCYAByJVCEomoXceMFWonezy3nkqwlFOVaQtUzOMEjcSI1Gqndrq
 PwCGeih3fbaQqS/TdXBE0iIUpYSKxkmOmnOc7cWU47OH5VHIXcTwa2YBK3zXz0eWEA9k
 zHctIPV5y0jf0OR4wDs4zphKIonZ8+snGFwIaWWURmlXByQoWBXh7/Mz2/I5AV4+eouP
 hOVz3Jf+EF58eqmBJBljqNoiroJzL/84XqKfiH7SXJgg/ez26ejE9IxJHfZFbjZmwl/R
 66hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Vu/TEPKi3gH8supR1Fm33b81xSnPq5jh2aLIJG+pAp8=;
 b=ljclTSld8v9nx9tCTmSDSU1N8S1+CtO7JwSLnOAHV69lOo+NRD1nFDMrzgglzRldqE
 ud90g5ZG+6SVz5qUP/jCY5uWWpV1d4th2pYXF3ZS3gO8Lu5pq126A7To3nljUknACRhV
 J4TxWn3DbuSBAgrwyhUuCS7Vu5HSVfChK6uawq3UyHd1lGBcm/0bsBLkazPMyDCogLjX
 r47JTobuPa/mv+LLlNF8Hmg/weL7yKeg5i7FLAqDZW4Fq/3klIyVJMzog+eNTMEIo/Ov
 qREw3RAnf2T1yiiINjvu2cPsolOX7RXwOej2qPPwcF2NTy83KGg9eXhk1dD6Fvb4zB2r
 VQtQ==
X-Gm-Message-State: APjAAAUrvKe1s4z9b+25sVtPfL7jZ9V5YkxI8tSVvI+B8z3u9necaIMg
 ftexAw1nbKimbg03cIzx5R8=
X-Google-Smtp-Source: APXvYqxfk6AD/hSdePxpW2VxHPJad/imk9QQ8DFlIIefqzAfODMxbLf89oGNQR1D54/rKDHPVZzaTQ==
X-Received: by 2002:a5d:4386:: with SMTP id i6mr4444474wrq.63.1578488428368;
 Wed, 08 Jan 2020 05:00:28 -0800 (PST)
Received: from localhost (p2E5BEF3F.dip0.t-ipconnect.de. [46.91.239.63])
 by smtp.gmail.com with ESMTPSA id g9sm4228133wro.67.2020.01.08.05.00.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Jan 2020 05:00:27 -0800 (PST)
Date: Wed, 8 Jan 2020 14:00:26 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
Subject: Re: [PATCH v2 0/6] Updates for the atmel PWM driver
Message-ID: <20200108130026.GE1993114@ulmo>
References: <20190824001041.11007-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
In-Reply-To: <20190824001041.11007-1-uwe@kleine-koenig.org>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_050030_473696_C4BC7602 
X-CRM114-Status: GOOD (  15.10  )
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
Cc: linux-pwm@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Claudiu Beznea <claudiu.beznea@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0413883696728615855=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0413883696728615855==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7LkOrbQMr4cezO2T"
Content-Disposition: inline


--7LkOrbQMr4cezO2T
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Aug 24, 2019 at 02:10:35AM +0200, Uwe Kleine-K=C3=B6nig wrote:
> Hello,
>=20
> this is v2 of my series to update the atmel PWM driver. (Implicit) v1
> was sent on Aug 15, starting with Message-Id:
> 20190815214133.11134-1-uwe@kleine-koenig.org.
>=20
> I updated the patches from the feedback I got in v1, see the individual
> patches for the details.
>=20
> Best regards
> Uwe
>=20
> Uwe Kleine-K=C3=B6nig (6):
>   pwm: atmel: Add a hint where to find hardware documentation
>   pwm: atmel: use a constant for maximum prescale value
>   pwm: atmel: replace loop in prescale calculation by ad-hoc calculation
>   pwm: atmel: document known weaknesses of both hardware and software
>   pwm: atmel: use atmel_pwm_writel in atmel_pwm_ch_writel; ditto for
>     readl
>   pwm: atmel: implement .get_state()
>=20
>  drivers/pwm/pwm-atmel.c | 86 ++++++++++++++++++++++++++++++++++-------
>  1 file changed, 73 insertions(+), 13 deletions(-)

There were two patches in this that were not reviewed or acked, but they
seem trivial enough, so I've just applied the whole series.

Thanks,
Thierry

--7LkOrbQMr4cezO2T
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl4V0mgACgkQ3SOs138+
s6GwPxAAi8QbyZuxjXTyrcwXhceTZn1UkH51OaRD7myFIQ8A/sanP7QV2f4jKug8
TbrVlK9dpSj96Ne9UfXBW3+5+JvNpVshrqsc/IcIq6i+honBrJz9upJMKxt0+YRB
wNMO5dM/XEzr93hAilRGrzW/63rPsqkP/Vj14Gf3lOo/qW9WoCbWx+3/1bupYwm2
2ih1zLbDrR6d8PZ2mFkTl7WRXqOVcTpk/pyauBy2R/sq+7iK92lL4dugjlgtLO/W
mwW1g/hswT2D0FQ7QYBgApRUIsKsaSjjcLairZFTTmYvYvGSzyAsSbWPkQfMrh/T
qmMrL6TP49Ba0Ce1X7sff1hIeGsMMuhveg1viKbXDwPV0pvuT0ANejXHoPsW0Dum
6iB9xNSGyYupsbFq+Wn2LXO6dkVNCAsMVoMnxTzgAMvxoxQ7erpktjOKl5vi2dna
MHid3SqGo4kdRmGyKbGPATocpC/+A4f5fqx36Wo2sixGFpfsZhfoh2uXB9jo2bNx
b1zVcUfHxjzckt3QJPgYALNtkv5cYqbfE5nayz2m14oJDzYd8LCBloEsqak3+RMm
I4xoip1+vrA8c9qF30qHJTz4ef9s0sVB25GPd/rtOEduWvRm2rAPRmpij2u326su
N4tqKheeJJ8vscS8j+9t+WYdAOVFECuCO6YHC9wikPuZ+o6PoPA=
=opLK
-----END PGP SIGNATURE-----

--7LkOrbQMr4cezO2T--


--===============0413883696728615855==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0413883696728615855==--

