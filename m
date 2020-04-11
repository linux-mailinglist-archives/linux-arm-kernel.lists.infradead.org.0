Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89CB61A5319
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Apr 2020 19:23:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Hlg1BsEqgT1/2WJPxb5kpeJ5YBU1B+DBF0UDhKztkiA=; b=AW7xByWLMWNgcokxXvfp74hnX
	9lw/QVpjADbdyGWALQe0ofeh971LlVgctp4SzKaZngbZbboIsgCjAMDpw7Kbykk8ZeEDzT5JHAuyD
	B7s5HvuUF+6UKQ8MgtMFnfwA+cm97vJW5rXl3UUkKBOH2v+aXAVjcR0CM9HanhNLW0zV5tSRGkeP0
	rqOmMQ31JKVIsiMPN79RdcIJiuh2L3GCj6SFYoNiby8fVva9+1gAagdbtQ5F8vqWXWFrdZANx96NR
	/EPmiNdZcUoBMlKemu8R8X1SNLk/koVPrIjaeAebZJjYWBgPTkrWoaJwKk+2jWFgOLm1srWfAagMm
	oi9sNq++A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNJqa-0007vX-Bi; Sat, 11 Apr 2020 17:23:12 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNJqS-0007ul-Fy
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Apr 2020 17:23:06 +0000
Received: by mail-qk1-x742.google.com with SMTP id b62so5361465qkf.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 11 Apr 2020 10:23:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=+Ayr3d044SiKn+0TAPDMyKPpqh+ya5/Ml+HLoEx/aHI=;
 b=SF2b+rsNf7n3Y7ncNeM6Z+GZ8p5q0su6HbWASI6ylQzlFJ16Fw0DWrYblTsVxm0Ovw
 4SbeqaYcxqh7f8UzLa4TmKrwDDS4qzOZhvn66II0fnz+wi8Z7RLi0O1qg6I4bd0YIVi2
 Wy3FCamlP2ed+At7XvF9OusgQ9/LOqS4OTuOq2Vy8bdHl4c8mCO261jfGSecr6BMcwwt
 jPg9TxjK4qdrVRIAgMY2ZPxQ+2HvXQbWdPHA1EWEm2/rQO/dhJUckXma+EsT4HEdmgLR
 ljFwBeSp55zmBQPAfdjy60D4/ZU6nyWHqKyzpxOGDHr/r2fhrVeqdC4j9WkOABG/uc5c
 6LWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=+Ayr3d044SiKn+0TAPDMyKPpqh+ya5/Ml+HLoEx/aHI=;
 b=YXtNRWWp1arVZCqJpWLEtmFPUAKTHaO/0FKQU2zFRcEbX7EGGrId+aONIMiy0Y6OGj
 LRh8dmNpI0VLnbpAQ6qwyhdJMQzgHpAExIO3om0hJukCaZrt7AqFBYQ8IbtcPGx+6Gs4
 PStAskVgyY2TrZvslDwfOUmAmzxo1G7qdFQ/PzERpZh2+i4DKT7Uh+3Oc3Dl7drOg/L4
 QoHJ7N4c/Tq686+KnoOkkjFIWDG2GEYFNvUkzo0uCWje3EczIElLIX7BKNXu0l4CNFkm
 hUIuH9YS9k2IOltIVHCFvU36E+NSg1zNokuvlB9ZvUiNHWtM2jAGZc6r1Ao5c/1J8MtZ
 RsMg==
X-Gm-Message-State: AGi0PubbPtGCTpWgkf43bUB/miGM8PTdPtoX8NwfG/y5FKLOlZkQ6tWT
 0pkb40GHMDJ4pXzq032c90I=
X-Google-Smtp-Source: APiQypLRbj9x/M6LU2b+6Naa9xWB3R34biG+yS19O+uI116m27K8PWcX4EoCx+U0X25dFZgIABeD6g==
X-Received: by 2002:a37:9b4a:: with SMTP id d71mr9111643qke.382.1586625783226; 
 Sat, 11 Apr 2020 10:23:03 -0700 (PDT)
Received: from icarus (072-189-064-225.res.spectrum.com. [72.189.64.225])
 by smtp.gmail.com with ESMTPSA id u27sm4152409qtc.73.2020.04.11.10.23.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 11 Apr 2020 10:23:02 -0700 (PDT)
Date: Sat, 11 Apr 2020 13:22:59 -0400
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: Kamel Bouhara <kamel.bouhara@bootlin.com>
Subject: Re: [PATCH 0/3] Introduce a counter inkernel API
Message-ID: <20200411172259.GB95806@icarus>
References: <20200406155806.1295169-1-kamel.bouhara@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20200406155806.1295169-1-kamel.bouhara@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_102304_533929_673829FD 
X-CRM114-Status: GOOD (  18.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [vilhelm.gray[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, linux-iio@vger.kernel.org,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-input@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5654188812555887905=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5654188812555887905==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="eAbsdosE1cNLO4uF"
Content-Disposition: inline


--eAbsdosE1cNLO4uF
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 06, 2020 at 05:58:03PM +0200, Kamel Bouhara wrote:
> Hello everyone,
>=20
> This series introduce a basic inkernel API for the counter subsystem and
> add a new rotary encoder driver that use a counter interface instead of
> the GPIO existing one.
>=20
> See commit log in 0001-counter-add-an-inkernel-API.patch for further
> details.
>=20
> Kamel Bouhara (3):
>   counter: add an inkernel API
>   Input: rotary-encoder-counter: add DT bindings
>   Input: add a rotary encoders based on counter devices
>=20
>  .../input/rotary-encoder-counter.yaml         |  67 ++++++
>  drivers/counter/counter.c                     | 213 ++++++++++++++++++
>  drivers/input/misc/Kconfig                    |   9 +
>  drivers/input/misc/Makefile                   |   1 +
>  drivers/input/misc/rotary_encoder_counter.c   | 152 +++++++++++++
>  include/linux/counter.h                       |  27 +++
>  6 files changed, 469 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/input/rotary-encode=
r-counter.yaml
>  create mode 100644 drivers/input/misc/rotary_encoder_counter.c
>=20
> --
> 2.25.0

Hello Kamel,

I'm not inherently opposed to adding an in-kernel API for the Counter
subsystem, but I'm not sure yet if it's necessary for this particular
situation.

Is the purpose of this driver to allow users to poll on the rotary
encoder position value? If so, perhaps instead of an in-kernel API, the
polling functionality should be added as part of the Counter subsystem;
I can see this being a useful feature for many counter devices, and
it'll keep the code contained to a single subsystem.

By the way, I'm going to be submitting a major update to the Counter
subsystem code in the next couple weeks that isolates the sysfs code
=66rom the rest of the subsystem -- it'll likely affect the interface and
code here -- so I'll probably wait to decide for certain until that
patch lands; I anticipate it making things easier for you here after
it's merged.

For now, I want to get a better high-level understanding about how users
would interact with this driver to use the device (input_setup_polling
is a new call for me). That should help me understand whether an
in-kernel API is the best choice here.

William Breathitt Gray

--eAbsdosE1cNLO4uF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEk5I4PDJ2w1cDf/bghvpINdm7VJIFAl6R/OYACgkQhvpINdm7
VJJULA//cJf3iV5J+NsneoTVZ26SG+cQdVz4UFAUmrQ7lKokM+KB49/vO6JjzUXa
kXebfHwgqvjcnCwiyEmHqvkVR5QDH1Qo9uryOrBzY2Uz/HGmUI7DB8OZXTa0J6Vf
Udy0T/jiwC7iTy2IGKt0svVAauesGdFA052BHCt+1fbarvKjr+ZBwDLQjPEy7rOU
NYcpVoOH4bPtQbgvDLGp01dmw1nvzSmjxrCHF0ARy8funxA7Bng69jQcGWiaWRjm
PAyqb8CBIfQ4clIrEwGh5Hhj/oYUFMIf8pB0fFM5mZ39ISqwKF9nedQZ6hYmvgXH
xNRDOWP63UksmBVXp1vtZjiHUdrH07sF+cRRgrwQkn3bkJfR8sQAA2oRDCBieMA3
hRBWjmw31IGzmI0HtzYjsFLvFUuK1Yoe7F+EGdvdrVmRQmtom3pzZ8AcDdpB6h8R
Hr/v9jKXPc54UKOe66rKhMe7aTx4H/7nG3kxnZSzNKWFhwV+dCjy8D1X9HxEKoZp
WRAfsClBsNGzJBqVSO3ryFrIzRuJuYLtGNbKhBbTJvc0nRpJAuJbSnw0ZRf9kGZg
KJ0nNPdweo26YbxYkT2hyNJantJCYc9GmyLy+FubdgF3skX47nnIusRtpoBYe/hd
AZ/ERtySq9+Tv+dQzk8xrWxAYGdoIVCdub93jaSnWAYoyKZJs7g=
=Rx8J
-----END PGP SIGNATURE-----

--eAbsdosE1cNLO4uF--


--===============5654188812555887905==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5654188812555887905==--

