Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24E4B1DFFEA
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 May 2020 17:36:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XakNGotk3PS24tJ4DdiqYVHu0xdqq9SmXL+oJK9N5yk=; b=N5MIc1cXmGbctEP7AEWpfeHV+
	Be4etqY+3fcH4GlhABcUkBoqzeZAnTb18c0jfdJkgipetNGOTQZnZHQisTu2ohVntM/3pkO5fUPSW
	2fGRoVxSfZcy+mn/aaxVcOvdeeH8jH/tcjCkgAmKepzo3fnHsZ85tEQ7Gkgxu5QjhVmoeh8ZGW2LX
	MetR7cm23Pq59ZUQl25Q/qniN23UUMxS4jecO69YCdWkdr1g7bYGWx8crMtfPxcc8K2kK/lMMGhk0
	qTQUyLFX95bisplLodOO432XScC/2kbDBViAiisbYR4k0Jook/5SisT9EHi3pNgH77gKbRsMie50v
	QoYmJyqFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcsfZ-00033F-N4; Sun, 24 May 2020 15:36:09 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcsfP-00032v-TB
 for linux-arm-kernel@lists.infradead.org; Sun, 24 May 2020 15:36:01 +0000
Received: by mail-qt1-x841.google.com with SMTP id z1so86828qtn.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 24 May 2020 08:35:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=XSCyThDWyT3fRTEHc54P7I+5QHzke3yyM7FEulzWvu8=;
 b=YR6PZ0L19epbm54KSIM6jkDTWp4P7VfPRm5s9CPSLA5FHrEftyANl9d+s3YeuNnsy7
 JWythQbTQyISwhHYEKUJbb81KkDsS0TkezrJzD0chKFVa2NgH7COgHoyyOhW8n/Zz7Le
 qE8RsUHAE8v5P+LC0H47nX/7rpYWgyjTIxk3EBFD6Xdq1iY/KwMXil2yxMrBBhgLA66R
 g7YFYBDW6CTm5UyiiT6z5wpwI5ctLdYPCOliVJRLpk5i/ZHX9DqUUDgdteeMxuboittP
 cDQawHSbAZkLtpCdGkcu0fpgqZGfLzm4OAHqA6i85n7z+FRybiMA4NTroioqGuJqiqaq
 wshg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=XSCyThDWyT3fRTEHc54P7I+5QHzke3yyM7FEulzWvu8=;
 b=PH/EfEd0+0b3Q2OcJyUW/4OAyUD4+to342am3nVZmluEa9rhBRD8UMHhb2mHoq8eOg
 R4FA7JttX2msdEbPvuhdPnsnu6PKHLIGZwf7qKxR66GNid0MbI0hch26VMSnv+IAQlDN
 0FpjEcV2jDnLqOD0fziP7mES02OsFMo8CgTq8msdG+MbXywEFOGzms8dIhWA2IG4aCk1
 xLQksu0MfNcMD+wyU6zb0NUHmOttwb0b3hbnLXRnuzhXrZfJyFK9owMlBPjGyX4et7+7
 9Gg2IxmkXw0kLqp6hyi0H93XM+Md/nOPd1duoHyKTevjB+MQRRwuO3aT2Av1wn9X44gt
 dIMA==
X-Gm-Message-State: AOAM532rMVZrmq74UFpPzZG1xQRmlZgqYJZo92e3s+gS7YYJMIhac1CW
 oCQOOnVmCvtrqOubVA0wiUk=
X-Google-Smtp-Source: ABdhPJzcdoAUJKNz0W5YPodIcHyX0Rwi2/R6t/LiimRGcL49J8cUWFiqg5PdX9DFLQiPedJJRgqhFg==
X-Received: by 2002:ac8:7b2b:: with SMTP id l11mr24573932qtu.307.1590334558128; 
 Sun, 24 May 2020 08:35:58 -0700 (PDT)
Received: from shinobu (072-189-064-225.res.spectrum.com. [72.189.64.225])
 by smtp.gmail.com with ESMTPSA id g5sm13165613qti.87.2020.05.24.08.35.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 24 May 2020 08:35:57 -0700 (PDT)
Date: Sun, 24 May 2020 11:35:38 -0400
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>
Subject: Re: [PATCH v5 5/5] counter: Add microchip TCB capture counter
Message-ID: <20200524153538.GA12461@shinobu>
References: <20200519083716.938384-1-kamel.bouhara@bootlin.com>
 <20200519083716.938384-6-kamel.bouhara@bootlin.com>
 <20200524161624.2c932a30@archlinux>
MIME-Version: 1.0
In-Reply-To: <20200524161624.2c932a30@archlinux>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_083559_960357_EEC6F6B2 
X-CRM114-Status: GOOD (  14.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [vilhelm.gray[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Kamel Bouhara <kamel.bouhara@bootlin.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, devicetree@vger.kernel.org,
 linux-iio@vger.kernel.org, Ludovic Desroches <ludovic.desroches@microchip.com>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-input@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3412109821246223878=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3412109821246223878==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="NzB8fVQJ5HfG6fxh"
Content-Disposition: inline


--NzB8fVQJ5HfG6fxh
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, May 24, 2020 at 04:16:24PM +0100, Jonathan Cameron wrote:
> On Tue, 19 May 2020 10:37:16 +0200
> Kamel Bouhara <kamel.bouhara@bootlin.com> wrote:
>=20
> > This drivers allows to use the capture mode of the Timer Counter Block
> > hardware block available in Microchip SoCs through the counter subsyste=
m.
> >=20
> > Two functions of the counter are supported for the moment: period
> > capture and quadrature decoder. The latter is only supported by the
> > SAMA5 series of SoCs.
> >=20
> > For the period capture mode a basic setup has been chosen that will
> > reset the counter each time the period is actually reached. Of course
> > the device offers much more possibilities.
> >=20
> > For quadrature mode, both channel 0 and 1 must be configured even if we
> > only capture the position (no revolution/rotation).
> >=20
> > Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
>=20
> Looks good to me.  After reviews from William, DT and maybe
> something from SoC side if intent is I'm taking this.
>=20
> Jonathan

I'll defer to the DT maintainers for the dt-binding changes. Regarding
this counter driver, I believe there have been no changes since I
signed-off for it in the v3 patchset thread. If that's true, I haven't
changed my mind -- I'm still statisfied with this particular version and
have no objections if it's merged. ;-)

William Breathitt Gray

--NzB8fVQJ5HfG6fxh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEk5I4PDJ2w1cDf/bghvpINdm7VJIFAl7KlDQACgkQhvpINdm7
VJIzLxAAkUJg6LHVXHAStbGJFDBPydEKceoWzIEgLZ/vm3dG1y7LyBGkng33mKQS
MtCM5M9/l+WF1cy6xhfAMaq2A74pPRnGmYaNuMov44MnHeTezlv6udD3nn9R/Dyz
S/a0ZGI+ASgY4RxvomRWiQCe1lP9Fx4EQGxjL+1Q+f1+Z9RlpAVwO+2ayGWhmu3u
NDT3jF4KKpgQuSBQb4HHC/3MUgEuAn5tg6YIND4eP8sZ31C+HvY0AReg9G2pILEF
ISxHTZEJUFQ2W1KFBhoytEueebjUzXLFe9DUGJ9oRkL2FyCt6SNcKajFHkNQ3cKN
dh514IIQ2MoUHXS7775y08Ad3AHhRVyBAuLCoyAqeUlvxZbmrC9uGpvYq5sudDbH
MoPGTAOwJUTEW1Qk+K3S9b20ebNYxkchClt19QeGhV9Inl9NJAFnqWwu9rTujO1n
YXjjZUCioWFt80v+lkuEgIVE3ZKxFNAL4RdTBH1LvDYTgJiCh+0OOsDmv4Vxzjee
jVWxMcUyHZ+rXb5roWmqUkWoWgynTBEnZP1B+22NfLCTsffATOkFKIvGwx1Nmgo5
6EQSrIDVSXYa3xoIBTcIfQFp7CDCOf1CwkxjRtKSBjoXpzW/zU7AnVAwZJIJMArN
1SiaQaG7ZMWQO4o6qjfACamGAvH1H8AUvryTYVy/MwTZOVZQYoc=
=ENit
-----END PGP SIGNATURE-----

--NzB8fVQJ5HfG6fxh--


--===============3412109821246223878==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3412109821246223878==--

