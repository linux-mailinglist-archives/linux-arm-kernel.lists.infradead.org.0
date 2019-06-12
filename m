Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA004429F8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 16:55:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=q37EbcQPrc0Zo3U8D070HGmfMhJjVzNa8035AL4UVNY=; b=OJwmgjF7/QKzrIqadiYQobl/G
	TybWO/x3L4KsuMXWQJm/Klh0Q73/eMDWwbgZEc5oaAKQ8NRRfpHmssLYSeUrurUAEW2vJYhwkMUWp
	Zi8c4mvnFD9TnAVdyUK8a3UG9zYhAMGm8l+QsBCzV95JGwLTsbruoSMRrmW52+u3OR1WPmzBK6oOQ
	GMb3K/opjbu9rPRKb8w3E6VnrxxsjWRvY4j5BiRSS++rCd516b3RDArHelCp3Gl4Ns4dLU3ZzwAR5
	pNuwERKdMA1uPLH/OxtOUFarV1Zn6s9BmuoaglhfPjt6rmYBA5OUugWTzx1D4P1Fi8QnLgZsCQLVp
	yrucWapYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb4eO-0004EH-0h; Wed, 12 Jun 2019 14:54:56 +0000
Received: from mail-lj1-f194.google.com ([209.85.208.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb4eG-0004DY-4M
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 14:54:49 +0000
Received: by mail-lj1-f194.google.com with SMTP id t28so15357185lje.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 07:54:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=bT+gRjhnUHcITZVyDjTy7yxpytcU0MLxWkLAIPqteWw=;
 b=U78f0y8B6eeSW2D2VzGYzEQXBF4NA+XElZ7xEyyF06681lBL4JwhdcqQa3VojSrgtK
 O0SWBu3QcKE5em43IwYtfLKn9plng5RvLgjUz9v8WFwB/9QBgsVNygRz9HfJ5SBNXnA2
 DnBk454+/JMl6n1Uv5eznBt4OYSVJHQ66SvLJmIFkc/uoVKgkx9PueNxm31YLkI7HRqc
 Pg2aAKlrUo87dUm90fyNXM6H8MqgQB5XgQ6QYZVFl3w1HEVU+n7P2WYIc0UYL5guVL3R
 DTRkPqEdQsgPCLyfWIVoGmc7aqlXNLzuDQrp31lB7ii+ZeiZw/yQbGPtGinS5JaZCwb6
 RwrA==
X-Gm-Message-State: APjAAAW8DIuNo2u4tX233rBLYvm9TKBgpFNHOXAw679f7kPx2XIzMKLd
 FcMYJvZ1BcWwX23vISZpgiSf2N0dGM8=
X-Google-Smtp-Source: APXvYqzZog9g6xCnR4zHYUJ0suI+/068Gy7cJkGIYif1HT7VnDSyju5wVbF7g0t6qiL48hJmlT6Q0Q==
X-Received: by 2002:a2e:3008:: with SMTP id w8mr7377643ljw.13.1560351284397;
 Wed, 12 Jun 2019 07:54:44 -0700 (PDT)
Received: from xi.terra (c-74bee655.07-184-6d6c6d4.bbcust.telenor.se.
 [85.230.190.116])
 by smtp.gmail.com with ESMTPSA id f30sm16287lfa.48.2019.06.12.07.54.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 12 Jun 2019 07:54:42 -0700 (PDT)
Received: from johan by xi.terra with local (Exim 4.92)
 (envelope-from <johan@kernel.org>)
 id 1hb4eD-0004oo-So; Wed, 12 Jun 2019 16:54:45 +0200
Date: Wed, 12 Jun 2019 16:54:45 +0200
From: Johan Hovold <johan@kernel.org>
To: Wolfram Sang <wsa@the-dreams.de>
Subject: Re: [PATCH 2/8] i2c: i2c-qcom-geni: Signify successful driver probe
Message-ID: <20190612145445.GB18153@localhost>
References: <20190604104455.8877-1-lee.jones@linaro.org>
 <20190604104455.8877-2-lee.jones@linaro.org>
 <20190605062020.GL22737@tuxbook-pro> <20190605071625.GK4797@dell>
 <20190605075656.GC29637@localhost> <20190605082047.GM4797@dell>
 <20190605083353.GD29637@localhost> <20190605084921.GQ4797@dell>
 <20190605085527.GE29637@localhost> <20190605141812.GA962@kunai>
MIME-Version: 1.0
In-Reply-To: <20190605141812.GA962@kunai>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_075448_172656_016148E1 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jhovold[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.194 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.194 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org, balbi@kernel.org,
 david.brown@linaro.org, gregkh@linuxfoundation.org, linus.walleij@linaro.org,
 linux-usb@vger.kernel.org, Johan Hovold <johan@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, wsa+renesas@sang-engineering.com,
 alokc@codeaurora.org, kramasub@codeaurora.org, linux-i2c@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 andy.gross@linaro.org, jlhugo@gmail.com, Lee Jones <lee.jones@linaro.org>,
 linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============8157253960506539111=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8157253960506539111==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="3V7upXqbjpZ4EhLz"
Content-Disposition: inline


--3V7upXqbjpZ4EhLz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 05, 2019 at 04:18:12PM +0200, Wolfram Sang wrote:
>=20
> > To enable dynamic debugging in driver core you could use something like
> >=20
> > 	CONFIG_CMDLINE=3D"dyndbg=3D\"func really_probe =3Dp\""
> >=20
> > That gives you two printouts per successful probe, for example:
> >=20
> > 	bus: 'usb-serial': really_probe: probing driver edgeport_ti_1 with dev=
ice ttyUSB0
> > 	bus: 'usb-serial': really_probe: bound device ttyUSB0 to driver edgepo=
rt_ti_1
>=20
> I agree that this scales much better than adding strings to every
> driver. Also, the driver core will report failed probes other than
> -ENODEV, or?

Right, errors other than -EPROBE_DEFER, -ENODEV and -ENXIO are always
logged, and the previous three would also be logged with debugging
enabled.

Johan

--3V7upXqbjpZ4EhLz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQQHbPq+cpGvN/peuzMLxc3C7H1lCAUCXQESJgAKCRALxc3C7H1l
CP3ZAQCXRPAnR1biCp42ucqiyFiqTwNI2ivpwkFZxtse1SooNgD/f+BDGNZpuRH0
tiQ1iXCC4VjcExWVqH6isBuTFoPS2wU=
=yyFo
-----END PGP SIGNATURE-----

--3V7upXqbjpZ4EhLz--


--===============8157253960506539111==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8157253960506539111==--

