Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3DE119BEA0
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 11:28:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=l8WbNzfB6RE9JgJ8DGs+Gy1WrJoLGrZt7bgowcb3onE=; b=BXlnsSdhVZLIA2a93Dw7mSq14
	j/sL7SL+SH6jqpQO3SxEobNtcqVxwYjzmcR/rwYyRSDZ7So6AyRF3eb8WQe4SDu1quPWBR+DImqsA
	wg9qsChkPaedUa8JGD451VvAhBOwwczsPFWUbskm6p13PXl7FxoHDgILi2VdYhwex68EJoMazwwbn
	L8VMbW1sIsf1R1FfwMs/Vqh2zSv5azmq09uMetoTbC1Tcc7U27fK0zcK7qFo9n9J1BFZFuoAXb/xz
	zkpGg/Zh3gBGYXGi+RW82kxiT8FqfW3RSn/uV9bNyJ6UsBUsIetjTvr5wQjiZjCa1AODmZAkZ3Pi7
	M77rMiFOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJw9E-0000Hy-4S; Thu, 02 Apr 2020 09:28:28 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJw95-0000Fe-VD
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 09:28:21 +0000
Received: from localhost (p54B333EE.dip0.t-ipconnect.de [84.179.51.238])
 by pokefinder.org (Postfix) with ESMTPSA id DB7882C0590;
 Thu,  2 Apr 2020 11:28:16 +0200 (CEST)
Date: Thu, 2 Apr 2020 11:28:13 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Laine Jaakko EXT <ext-jaakko.laine@vaisala.com>,
 Rob Herring <robh@kernel.org>
Subject: Re: [PATCH] i2c: xiic: Support disabling multi-master in DT
Message-ID: <20200402092813.GA986@ninjato>
References: <20200218135627.24739-1-ext-jaakko.laine@vaisala.com>
 <CAKfKVtFf+VpinkOGsBFZ2-_PKvx-C1L7G7_uhY2RCvV5dy6L_w@mail.gmail.com>
 <AM0PR06MB5185E501349E06428093B62FD4F70@AM0PR06MB5185.eurprd06.prod.outlook.com>
 <20200401143254.GA2409@ninjato>
 <AM0PR06MB5185F8F51316FCD5213F0ABED4C60@AM0PR06MB5185.eurprd06.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <AM0PR06MB5185F8F51316FCD5213F0ABED4C60@AM0PR06MB5185.eurprd06.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_022820_150754_D9A0DDD1 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org,
 "michal.simek@xilinx.com" <michal.simek@xilinx.com>,
 Shubhrajyoti Datta <shubhrajyoti.datta@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============1059516260593539739=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1059516260593539739==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="17pEHd4RhPHOinZp"
Content-Disposition: inline


--17pEHd4RhPHOinZp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Jaako,

> > My best bet is to introduce another binding "single-master" which says
> > clearly that we are the only bus master on that bus.
> >
> > Both bindings missing means then "unclear".
> >
> > I think this matches reality best.
> >
> > Opinions?

> I agree that this sounds like the best option if original binding
> can't be used, even though it can also be a bit confusing to have 2
> similar bindings.

I think it becomes understandable if we emphasize that "no bindings"
means "unclear". We need to document it.

> How would both bindings existing simultaneously be interpreted? Maybe
> both existing simultaneously should be considered as an invalid
> configuration, so that it would be enough to just check the one you
> need? The other option would be to treat both existing similarly to
> neither existing, which would require the driver to always check both
> if checking one.

I am clearly for saying that this is an illegal combination. I'd hope
this can be expressed in a YAML binding. Yet, my research didn't give me
an answer. Adding Rob and DT list to CC. Question is:

Can we check if the boolean bindings "multi-master" and "single-master"
are not applied at the same time? Any other combination is okay, i.e.
just one of them or none of them.

> Should the new single-master binding also be a general binding for all
> I2C drivers or a binding just defined for the XIIC driver? Having it

It should definately be global.

Thanks,

   Wolfram


--17pEHd4RhPHOinZp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl6FsCkACgkQFA3kzBSg
Kbbvtw/+L5wD8ARrOmtDVYzMRtJvbyu1XsD4cZdfx/fHNB3oOKbL65t9dnKWiuRy
Np7KViYB9VbVGTYtRWPT5EPWUqhtNbRWfEoxONZ02IVVBq8qfl9iIgcXpvrbVU2J
7m3AJSB8x2A9FJ4iE1o3hPw7zkUKtnXui1nn7MIFO34d6QaU7UgxpQ3pIdITKtIm
BqUedfcI2zj0cV+V4RsZFUlZLZ7QsVUkcXDd3tsXt/yKnBxPVV/pzqmsQzNrXI3Q
evWAjIFHmBJzM4B3teelLwsE2toVGVtK/j4x5ZhTSkEpPBnkA++02xAVq+krdM+z
AMBD8ZIoHwQzjoSNGcoEXprLkQmN2nbfl1dgvRGUPotJ8LDIYo5NyaRy4WYBh6xF
QjnMQFg29QuuWCfXDKC8vNG1BN/DYUh+8Bzo7HCGiEPd7B/unsFqz7QxW6WCg29G
MmHi+253Xq9LKDvC6OqB2+Dvc764BGI2xiVu4t4/iXXvWI0VkhCeoZkUdLkx19OR
LKEw7ipKmhiX4sPvhtD38J6c4XKz1izB+4rzTq7ZZH+Vg1cNtYL3/riIfE9BwxjF
A6KwJi6vXetZxROIxWTxj8BX9qjbhErOYDCTWPxFlj815S4RfDgqC5oiHIhGGr4m
Vv3egui9LAtlne0QsqmR0PjP5hQ4fFp+78rjdoHgyyFAtKA9fnA=
=KFqX
-----END PGP SIGNATURE-----

--17pEHd4RhPHOinZp--


--===============1059516260593539739==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1059516260593539739==--

