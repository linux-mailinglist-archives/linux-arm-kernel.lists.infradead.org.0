Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91BA51A5BE1
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Apr 2020 03:49:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WikggT8GpltLzQJXxAexQtjuSaWfHelEE1QqIKKK/94=; b=Mhbru/1hPYPq9XY6fU+EoICQ/
	sdNEmaHjo9+bva1dLK+wvzR4GQb+iPuXWXvoPueOZ8SKPTG6P3+rmgPwrGyKpMY7psy4kNwBAkzC1
	mR5aErdhE2JjGZisUchbZ/5+r1sJVQXzXFx4E28EpaHYZ95+Sp1Mqar/gKcCYTMoejXG75jKDPPcJ
	g6JwP+8JPtVt24mXPTZF6iA4q4bCQb5qfLvgmm9duURFhwgPDAkkG389Nc7jXuqUK+3gM3dpJ5fc+
	mrVZcwaVI+nMefjTWYTbskusIXW982KkvMBgLaeWiPwyAKHJWx7C6kwfcwpJbyhqit7zmH6JiVRVt
	f4qbI91NQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNRkI-00075a-Ha; Sun, 12 Apr 2020 01:49:14 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNRkA-00075F-Hd
 for linux-arm-kernel@lists.infradead.org; Sun, 12 Apr 2020 01:49:08 +0000
Received: by mail-qk1-x742.google.com with SMTP id s63so2062785qke.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 11 Apr 2020 18:49:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=+9Y3dV2Xtqku3qCrqdtglCwXhbHqnJgBuqt5KN+/kvg=;
 b=YBZbJcc2LD98dHyVKU3N1vQhlEmAYnA3UYBtOP15S1lZNBAIEm0GTF7xL3d23wT/NQ
 DgrhZAlFsfSSRh+eCWgoyQUqHKFF+ZC0rfE3H4wo65JXU8/KSHNTTieZthVhaaZR+dYI
 0GA8ymh5pR1f9cMrllMX5O8AtqIct+/ipWZBTRaQrh/XvJvfxYnhGjjyfuctNyvUB8hH
 bAZQ6IozBklxpY234SyPCL/bHiepyiwWAiPpDDHECXeTk+esu7gTE4ofDRAO42O8d2RA
 f4JyAODQP7TdOdadjz8RgOrB7uFLUPghKUHbb14waASLjvMJRJTJMuE97Ei35S/5c0nV
 cHhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=+9Y3dV2Xtqku3qCrqdtglCwXhbHqnJgBuqt5KN+/kvg=;
 b=QT8ijlDHtkQlJtpZnQuVVBi3ykUMxUFo/f1cxt+Gw2FV/ya+LsFrspVqB77GT8vu3m
 MXPK85bjDDAnbtw4zoE5B+26SwmC/HtHbvbzBdRwsDyKBxOLQcq79iaxT1sI41r7DEy0
 ZjPBtOhGxloYw8BVIbcwQm6DNkHJtgkLH4Qk6RLq/3+rGREjA1PAFWSvsp6K9yp9bPOG
 q5BBcbAocVnxlfAfu0bekUzIgSQ/QGtjZq6r9l9xb9FOr6SU6n68sqZOTqUy4o5Hnx6r
 hqU3ddKU2HNInqoW8ZdD0JHKXB13KwfKuRznluk/pKlDA+fj4Te74NQmsGHbQi3cEbSm
 yUFw==
X-Gm-Message-State: AGi0PuZ1abWTCHKC6B3F5XQRMrDrD6/ZqPInOYUQNERbCI5+tIvYMaOU
 vii8SeHjrgHM0Lc8qraQMK4=
X-Google-Smtp-Source: APiQypKmffyrA28h99L9u2AYaxmu/LUn4aSf8as55IdDhJF1wTNt/ElTINEknk5ayr3tVCyCCXPd5g==
X-Received: by 2002:a37:317:: with SMTP id 23mr10488030qkd.233.1586656145392; 
 Sat, 11 Apr 2020 18:49:05 -0700 (PDT)
Received: from icarus (072-189-064-225.res.spectrum.com. [72.189.64.225])
 by smtp.gmail.com with ESMTPSA id l7sm4979378qkb.47.2020.04.11.18.49.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 11 Apr 2020 18:49:04 -0700 (PDT)
Date: Sat, 11 Apr 2020 21:48:48 -0400
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH 0/3] Introduce a counter inkernel API
Message-ID: <20200412014848.GA108143@icarus>
References: <20200406155806.1295169-1-kamel.bouhara@bootlin.com>
 <20200411172259.GB95806@icarus> <20200411233145.GC3628@piout.net>
MIME-Version: 1.0
In-Reply-To: <20200411233145.GC3628@piout.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_184906_609901_714C6796 
X-CRM114-Status: GOOD (  29.94  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Kamel Bouhara <kamel.bouhara@bootlin.com>, devicetree@vger.kernel.org,
 linux-iio@vger.kernel.org, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-input@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0227697051881492569=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0227697051881492569==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rwEMma7ioTxnRzrJ"
Content-Disposition: inline


--rwEMma7ioTxnRzrJ
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Apr 12, 2020 at 01:31:45AM +0200, Alexandre Belloni wrote:
> Hi,
>=20
> On 11/04/2020 13:22:59-0400, William Breathitt Gray wrote:
> > I'm not inherently opposed to adding an in-kernel API for the Counter
> > subsystem, but I'm not sure yet if it's necessary for this particular
> > situation.
> >=20
> > Is the purpose of this driver to allow users to poll on the rotary
> > encoder position value? If so, perhaps instead of an in-kernel API, the
> > polling functionality should be added as part of the Counter subsystem;
> > I can see this being a useful feature for many counter devices, and
> > it'll keep the code contained to a single subsystem.
> >=20
> > By the way, I'm going to be submitting a major update to the Counter
> > subsystem code in the next couple weeks that isolates the sysfs code
> > from the rest of the subsystem -- it'll likely affect the interface and
> > code here -- so I'll probably wait to decide for certain until that
> > patch lands; I anticipate it making things easier for you here after
> > it's merged.
> >=20
> > For now, I want to get a better high-level understanding about how users
> > would interact with this driver to use the device (input_setup_polling
> > is a new call for me). That should help me understand whether an
> > in-kernel API is the best choice here.
> >=20
>=20
> Well, the goal is not really polling the counters but mainly exposing
> the correct userspace interface for the rotary encoders that are
> connected to quadrature decoders.
>=20
> The input driver is using polling because this reduces the complexity of
> the patches but the ultimate goal is to also have interrupts working.

Okay, I think understand now. Interrupt support is another feature I
want to get working for counters too, so that development will probably
overlap with this driver as well. Hopefully with interrupts working
you'll be able to signal to the input driver whenever data is ready,
rather than just polling periodically to check.

> I'm pretty sure the in-kernel interface can also have other usages like
> for example iio triggers. I could envision having to read an ADC after x
> turns of a motor to check for the torque.

That's an interesting use case. I can see how an in-kernel interface
would be helpful here.

> I also think that having the sysfs code separate would help as it could
> be considered as one of the in-kernel interface user.
>=20
> BTW, do you have plans to add a character device interface?

Yes, actually a character device interface (and the timestamp feature)
is the primary motivation for this refactoring: sysfs code is separated
so that it can share a common core of functionality with the character
device code.

Implementing an in-kernel API should be trivial after these changes
since it will be just a matter of codifying the shared code that forms
the new core of the Counter subsystem. So perhaps this patchset should
wait until the Counter subsystem is updated, since it may be easier to
interact with counter devices once that is complete.

If you're curious about this patch, it's available on my personal iio
tree in the counter_chardev branch:
https://gitlab.com/vilhelmgray/iio/-/commits/counter_chardev/

I still need to add the character device code and respective userspace
API, but I expect to have it completed in the next couple weeks,
assuming no major issues or delays arise.

William Breathitt Gray

--rwEMma7ioTxnRzrJ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEk5I4PDJ2w1cDf/bghvpINdm7VJIFAl6Sc3MACgkQhvpINdm7
VJI6mRAA0IuuWWCtufHeMdtLn9J/o04q1ZcvE5YsY8vDHCdSvnRTGp0HvjEmd5jO
GZFU7ljEwqRf1FwPjmn3SkoQfoMMpbyp6TWDTNzAKV+rOEu+iOR6VJwnjzmwmYNV
PtHErMSFSAbB36jr2mKODi9eUPmFIQmrOXpnmXDKwxTHgq+i76a3T4z7WSDSoX2u
1rVjFav0cyT2BZPEaBb2YO8BlGqSUTk5EcG7ORiuXGoR87BOXpilHp95c9WZZpbY
gZ3N8Q9Kpll6ZC/SVFo9ZKwxR2wEV1NV/+Shl8wauQ6oB4Oljy6iOY+r7aSsUXmM
R9DmWrvwzIeYa+LRcIfcdrENUfqqgXjCDHtKJbBd+ux88KI/zzohcoPw6hO0uRe+
ZH16nqYrHhlWmn6N9OptrC7yinm3AC+68E64L/9I898rPFHbOpJW/0yfeGXIWq+U
Er1AkqmsZngFr8wmfehBNMc12gL/+Fy4xo0DvozxfmZkqCI/UzQW0qAqUxiyYbEQ
AKmodl8jENNjGMkvFAO+q0MIg9R2kNKRc4B+ekRnA47m0MopIR+kpwvzagW4Razs
LlNK/7napsnNiOP1ETUJeqlKQI6kgaxcsrYbtjD5XWj8LuqYQeuN3+xgVAsqjHP/
OO+VzX1USpVNKc29yn9uzqVfyajwEBFCWoJdXi7alCpwI/LCXxI=
=Xd2U
-----END PGP SIGNATURE-----

--rwEMma7ioTxnRzrJ--


--===============0227697051881492569==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0227697051881492569==--

