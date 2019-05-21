Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 752FF24E89
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 14:02:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xlbQ6iTJ9KJUYMHPcpQ5TLYjJpa0qpQMPeuW+G9SfAc=; b=lkvqrPd54qbEE2LQcLdggm1G5
	xnz3D0h0G9V61WT+cTfplaLuE3P62kjUrOV0rd9OF1uAZPEoa3/+oYK8vh8Kg1rq4jPqoWdF0QhK9
	R4qQP60pcWnfc2OaZVph0zXNC+1qt0CZPnHprGKWEFYOaxTRZbR9C2Z4xwdaCabioQpplI0/nBnPW
	kraqHnX1X9Tra5qSIj/a8FCsL35D7a3Hdwq55RiChrZEOClDetYMcWRbKTLvAJ0jErRjgwdNLeCHk
	u15T7JRRDs1ALDyqoaokALkw1ltvax6X8FpxjsWtss7Xc+yaeW2UEmvPzRlgYjGkzUjd+ky9SbmYm
	93+hRiXpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT3TS-0004b4-N7; Tue, 21 May 2019 12:02:30 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT3TL-0004aZ-P2; Tue, 21 May 2019 12:02:25 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 207ACAE31;
 Tue, 21 May 2019 12:02:22 +0000 (UTC)
Message-ID: <a54bd83c219b328153352f0d2c96badbac042353.camel@suse.de>
Subject: Re: [RFC v2 0/5] cpufreq support for the Raspberry Pi
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Viresh Kumar <viresh.kumar@linaro.org>
Date: Tue, 21 May 2019 14:02:20 +0200
In-Reply-To: <20190520105153.ftlnjx7ocr2qkxhd@vireshk-i7>
References: <20190520104708.11980-1-nsaenzjulienne@suse.de>
 <20190520105153.ftlnjx7ocr2qkxhd@vireshk-i7>
User-Agent: Evolution 3.32.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_050224_100216_7F70CF03 
X-CRM114-Status: GOOD (  24.78  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: stefan.wahren@i2se.com, devicetree@vger.kernel.org, f.fainelli@gmail.com,
 linux-pm@vger.kernel.org, sboyd@kernel.org, mturquette@baylibre.com,
 ptesarik@suse.com, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 eric@anholt.net, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, ssuloev@orpaltech.com,
 linux-clk@vger.kernel.org, mbrugger@suse.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0914920570615385663=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0914920570615385663==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-+jPebD3prxDeK5SyijTN"


--=-+jPebD3prxDeK5SyijTN
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Viresh, thanks for the comments.

On Mon, 2019-05-20 at 16:21 +0530, Viresh Kumar wrote:
> On 20-05-19, 12:47, Nicolas Saenz Julienne wrote:
> > Hi all,
> > as some of you may recall I've been spending some time looking into
> > providing 'cpufreq' support for the Raspberry Pi platform[1]. I think
> > I'm close to something workable, so I'd love for you to comment on it.
> >=20
> > There has been some design changes since the last version. Namely the
> > fact that I now make sure *only* the CPU frequency is updated. The
> > firmware API we use has two modes, with or without turbo. Enabling turb=
o
> > implies not only scaling the CPU clock but also the VPU and other
> > peripheral related clocks.  This is problematic as some of them are not
> > prepared for this kind frequency changes. I spent some time adapting th=
e
> > peripheral drivers, but the result was disappointing as they poorly
> > support live frequency changes (which most other chips accept, think fo=
r
> > instance I2C and clock stretching) but also turned out hard to integrat=
e
> > into the kernel. As we were planning to use 'clk_notifiers' which turns
> > out not to be such a good idea as it's prone to deadlocks and not
> > recommended by the clock maintainers[2]. It's also worth mentioning tha=
t
> > the foundation kernel doesn't support VPU frequency scaling either.
> >=20
> > With this in mind, and as suggested by clock maintainers[2], I've
> > decided to integrate the firmware clock interface into the bcm2835 cloc=
k
> > driver. This, in my opinion, provides the least friction with the
> > firmware and lets us write very simple and portable higher level
> > drivers. As I did with the 'cpufreq' driver which simply queries the ma=
x
> > and min frequencies available, which are configurable in the firmware,
> > to then trigger the generic 'cpufreq-dt'.
> >=20
> > In the future we could further integrate other firmware dependent clock=
s
> > into the main driver. For instance to be able to scale the VPU clock,
> > which should be operated through a 'devfreq' driver.
> >=20
> > This was tested on a RPi3b+ and if the series is well received I'll tes=
t
> > it further on all platforms I own.
>=20
> Please always supply version history on what has changed from V1.

Will do

> And why do you keep sending it as RFC ?

Well it's because of patch #3 which integrates the firmware interface into =
the
clock driver. I want some approval from the maintainers before cleaning it =
up
testing it on all RPi versions.

> Just keep the default PATCH thing,the patches are in good shape I would s=
ay.

Thanks :)

Regards,
Nicolas


--=-+jPebD3prxDeK5SyijTN
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAlzj6MwACgkQlfZmHno8
x/71TwgAn7hhXU5xBPx2AtDtmx95N4yx8PRK0rNIgfZVHYNj+CYHgmn1xTbGTNUQ
ZEAwEtz4nCxuCKORfYFpQUobPrcHyHFGv2UPpy+EmqsKVqPhkOBJGsjashoIk4lK
m9Hd1Nb+JQQIahBR10CpKteuw/Sfk5UhyA07zzDQs6H6Qihc4xGZm20r6vsKLO7t
Vm8El7HkxVyxGIMqU9mysSclpbZzVGeEkKY/BlWj31rDhf5RzWYiEq6IaMY2PaTX
Vb0LLw+3SHDGQ7GoKZf8wbKNB24zdwCgjZFkacCfBzN63HpaMWrbLQhzLRnAQ0bV
OBkmX/49IOaRTIbQHc93kQZLdfS1sQ==
=Ae8T
-----END PGP SIGNATURE-----

--=-+jPebD3prxDeK5SyijTN--



--===============0914920570615385663==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0914920570615385663==--


