Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D55CF25475
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 17:48:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vbCKah6wuUXzjhu+fstkcbFz3CzstkCM6JfqHtZsqas=; b=NJhnPPoGAOZRZ4+jiNgV/xze+
	nQdpZkPpu+F5cnpb8JhbbTPW3BX8AnIyrSIzqyW3qZ0Tn6JYPIyespzYdoWd3JusT1WxBQbV7W0HI
	KndSxWXjmz4EO62sTWcPiRdvb4gRcQHQIhFUScWPukjl6g8z1hXIkGd6J05p3eRMkiiX2UzE0lulK
	0Mpi+a/qdhMchOm6hYoCWL6RPM9HGr1jcuyiZ6yG+aGMbDRq2B26bKop72uacnngTNKPo46lAnDS7
	TMWYpaE9PYUO30Ymewb8uuDiT61aBoqUW7qkQ2bbpYtC1S/tUJjabrf1GOAcfWJKVvCjF+LxdmIwv
	iv66dVZuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT701-0001Mb-QA; Tue, 21 May 2019 15:48:21 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT6yq-0000D7-Hq; Tue, 21 May 2019 15:47:14 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id B497EAE1F;
 Tue, 21 May 2019 15:47:05 +0000 (UTC)
Message-ID: <a142b72b828a798610d885d81189dd21b1870d78.camel@suse.de>
Subject: Re: [RFC v2 3/5] clk: bcm2835: use firmware interface to update pllb
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Stefan Wahren <stefan.wahren@i2se.com>, Florian Fainelli
 <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>, Scott Branden
 <sbranden@broadcom.com>, bcm-kernel-feedback-list@broadcom.com, Eric Anholt
 <eric@anholt.net>
Date: Tue, 21 May 2019 17:47:03 +0200
In-Reply-To: <6383b357-3f7e-f031-f59f-61c598e44763@i2se.com>
References: <20190520104708.11980-1-nsaenzjulienne@suse.de>
 <20190520104708.11980-4-nsaenzjulienne@suse.de>
 <ebc78880-418f-f507-021c-41295113e041@i2se.com>
 <6383b357-3f7e-f031-f59f-61c598e44763@i2se.com>
User-Agent: Evolution 3.32.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_084709_683656_488940A0 
X-CRM114-Status: GOOD (  23.75  )
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
Cc: linux-arm-kernel@lists.infradead.org, ptesarik@suse.com, sboyd@kernel.org,
 viresh.kumar@linaro.org, mturquette@baylibre.com, linux-pm@vger.kernel.org,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 mbrugger@suse.de, ssuloev@orpaltech.com
Content-Type: multipart/mixed; boundary="===============5463126787268273215=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5463126787268273215==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-zPUlS9r+c6dQNQzC21+7"


--=-zPUlS9r+c6dQNQzC21+7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Stefan, thanks for your comments!

On Tue, 2019-05-21 at 14:40 +0200, Stefan Wahren wrote:
> Hi Nicolas,
>=20
> On 20.05.19 14:11, Stefan Wahren wrote:
> > Hi Nicolas,
> >=20
> > the following comments applies only in case Eric is fine with the whole
> > approach.
> >=20
> > On 20.05.19 12:47, Nicolas Saenz Julienne wrote:
> > > Raspberry Pi's firmware, which runs in a dedicated processor, keeps
> > maybe we should clarify that the firmware is running in the VPU
> > > track of the board's temperature and voltage. It's resposible for
> > > scaling the CPU frequency whenever it deems the device reached an uns=
afe
> > > state. On top of that the firmware provides an interface which allows
> > > Linux to to query the clock's state or change it's frequency.
> > I think this requires a separate update of the devicetree binding.
> > > Being the sole user of the bcm2835 clock driver, this integrates the
> > > firmware interface into the clock driver and adds a first user: the C=
PU
> > > pll, also known as 'pllb'.
> > Please verify that the kernel still works (and this clock driver probe)
> > under the following conditions:
> >=20
> > - CONFIG_RASPBERRYPI_FIRMWARE=3Dn
> > - CONFIG_RASPBERRYPI_FIRMWARE=3Dm
> > - older DTBs without patch #1
> i thought about this and the case this driver would return
> -EPROBE_DEFER. The clock driver is too essential for doing such a thing.
> So i think the best solution would be to move these changes into a
> separate driver which should be register by the clock driver (similiar
> to vchiq). This also avoid the need of a new device tree binding.

I understand your concerns.

Wouldn't you prefer registering the device trough the device tree? I'd go w=
ith
the same approach as the firmware touchscreen driver, which is registered a=
fter
the firmware's probe trough dt's 'simple-bus'. That said, it's not a strong=
ly
held opinion, I'm happy with whatever solution as long as it works.

I get from your comments that you'd like the register based version of 'pll=
b'
and 'pllb_arm' to be loaded if for some reason the firmware isn't available=
. Is
that right? The main problem I see with this is the duplication of 'pllb' a=
nd
'pllb_arm'. Both drivers will create the same clock device through differen=
t
interfaces. Any suggestions on how to deal with that? If not I can simply
remove 'pllb' and 'pllb_arm' from clk-bcm2835.c.

Regards,
Nicolas


--=-zPUlS9r+c6dQNQzC21+7
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAlzkHXcACgkQlfZmHno8
x/58Pwf+J/igXfZ06sc7Gr74B5NqVdWqbVe+23xD1sjLpwUKTfWtUJAnbRuk8LOt
+XgjgwGqFMQHMRLpibxSSqUZrXT+TNh1SiicBzJ9KWNbz42xRcvek4A8sgBDTeUs
l6EVVtCNw+g8nPnT95arGKZ3xEIVAGdsg8tASLoyqbcNOJNb8r2QoXmsdK5oGQ/C
TsgPRiwPvc9TvvqDSkojXxMgEfxfh8pNcYTQ8KFs/HKFOrM+C7hny7s3q02r/xhA
Clhqd5Ur2BlhxvgOflW5i9eMeugVL1+g7pZUplzddVC1JA4U3KMD+RVZxXKhzg2S
srJIknJIKqm1VdajX7OLqqjUae1Dkw==
=kanr
-----END PGP SIGNATURE-----

--=-zPUlS9r+c6dQNQzC21+7--



--===============5463126787268273215==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5463126787268273215==--


