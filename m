Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A8BD1DDC06
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 02:17:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dp7HIQYA+QlezgCjhoqjDq5kfl7YeEzJWlUiaoWd7xQ=; b=ouYeNp9HhMJqUSFvVDoD1BOzN
	3s1/ouNTK3bDJiIIWOkRIbTH1q6kZoKNeUTtGPw5Pb5GRHIm9gPZKS0UFRnZZu7oJ2W8T645DLYNM
	+sZLI45nfFgLYnjkakEeBhHLkFda4JTijMm978d/59AyI82ohSojZi0aoweihSpMJPlp70hS3Te7C
	LyJ9iJL+Lq8a6MctR7pfCon9W3011U+qJtN8kAjLaKF8jE53k8E6JrgDDU8GAxuAU1YB6N1qQWRGp
	TjX4gjRsjSmokjx0SFNCChHlC2MKWzhSSwYj15aPvOMgw/MQPXabd9DDDSF+2iepRG71u0eoEn1/w
	a0fDNAngg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbvMr-0005LQ-DD; Fri, 22 May 2020 00:16:53 +0000
Received: from bilbo.ozlabs.org ([203.11.71.1] helo=ozlabs.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbvMh-0005Ks-Fp
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 00:16:45 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 49Sn936fsnz9sSc;
 Fri, 22 May 2020 10:16:39 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1590106600;
 bh=l28u3l9eD1XulIm/Ob3VyL9n6/znFRgaPoWiwdYuchM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=T+kZWPqIDh1yLruVXvjSA0aAcEUeQfBa9mbmwsY0cTnpt9QxbzPW+V+DOjjJj8W9w
 QnGbExnmF6+8LPuS01E2FhHCTK1b4OEucxX9CSCGYg0mvRNytU8MYPlDOYFusIr1i6
 b9G8tAwipE+fVmbYdzsgOpnRz1ZE99N/oHq1QJ9aGZgnYzWbADH+4YGVdboZKV2d6p
 sc/OUgjH0EROstM6Xk4lKImI6oyqADzhQS2bzIA0mXSyp2xhzas/TH/EIX9aAsaVEi
 kuOKleNXpeB/NrzyKWi/+O15u85EwuMb6il1PpdBawFdBZcEz6IzDY+xnpBHVKUdPc
 hV3bv0maYoTMg==
Date: Fri, 22 May 2020 10:16:38 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>, ARM
 <linux-arm-kernel@lists.infradead.org>
Subject: Re: linux-next: build warning after merge of the aspeed tree
Message-ID: <20200522101638.052bd0a2@canb.auug.org.au>
In-Reply-To: <CACPK8Xd4651vtBTbBoGk0G7daunmF2CCOsDZ-ceto7Yu6A5z5g@mail.gmail.com>
References: <20200507091008.1bd38185@canb.auug.org.au>
 <CACPK8XfOJqj=E4JwQsZWvAsp7cv=bjqj2twZk0=MR+ZJQP1nqQ@mail.gmail.com>
 <CACPK8XcUydETZvJEkWPvLnLXatAg3D-MfA1yeDzE0epc-hisJQ@mail.gmail.com>
 <CAL_JsqJWXH4JMZgRQa9r_aPLW6Muz6BRtf_NmeqJv21Aefji1A@mail.gmail.com>
 <CACPK8Xd4651vtBTbBoGk0G7daunmF2CCOsDZ-ceto7Yu6A5z5g@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_171643_746580_E588FC29 
X-CRM114-Status: GOOD (  18.55  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree <devicetree@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Andrew Jeffery <andrew@aj.id.au>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Vijay Khemka <vkhemka@fb.com>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Joel Stanley <joel@jms.id.au>,
 Manikandan Elumalai <manikandan.hcl.ers.epl@gmail.com>,
 Devicetree Compiler <devicetree-compiler@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============7375404265490922828=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============7375404265490922828==
Content-Type: multipart/signed; boundary="Sig_/DcFF.Emc/VDOSRZyZQaAlh_";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/DcFF.Emc/VDOSRZyZQaAlh_
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

On Wed, 20 May 2020 07:56:36 +0000 Joel Stanley <joel@jms.id.au> wrote:
>
> On Mon, 11 May 2020 at 15:19, Rob Herring <robh+dt@kernel.org> wrote:
> >
> > On Fri, May 8, 2020 at 1:40 AM Joel Stanley <joel@jms.id.au> wrote: =20
> > >
> > > On Wed, 6 May 2020 at 23:13, Joel Stanley <joel@jms.id.au> wrote: =20
> > > >
> > > > Hi Rob,
> > > >
> > > > On Wed, 6 May 2020 at 23:10, Stephen Rothwell <sfr@canb.auug.org.au=
> wrote: =20
> > > > >
> > > > > After merging the aspeed tree, today's linux-next build (arm
> > > > > multi_v7_defconfig) produced this warning: =20
> > > >
> > > > Thanks Stephen.
> > > > =20
> > > > > arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:126.11-130.4=
: Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@80/ipmb1@10: I2C bus=
 unit address format error, expected "40000010"
> > > > > arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:128.3-30: Wa=
rning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@80/ipmb1@10:reg: I2C add=
ress must be less than 10-bits, got "0x40000010"
> > > > > arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:137.11-141.4=
: Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@100/ipmb3@10: I2C bu=
s unit address format error, expected "40000010"
> > > > > arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:139.3-30: Wa=
rning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@100/ipmb3@10:reg: I2C ad=
dress must be less than 10-bits, got "0x40000010"
> > > > > arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:148.11-152.4=
: Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@180/ipmb5@10: I2C bu=
s unit address format error, expected "40000010"
> > > > > arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:150.3-30: Wa=
rning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@180/ipmb5@10:reg: I2C ad=
dress must be less than 10-bits, got "0x40000010"
> > > > > arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:159.11-163.4=
: Warning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@300/ipmb7@10: I2C bu=
s unit address format error, expected "40000010"
> > > > > arch/arm/boot/dts/aspeed-bmc-facebook-yosemitev2.dts:161.3-30: Wa=
rning (i2c_bus_reg): /ahb/apb/bus@1e78a000/i2c-bus@300/ipmb7@10:reg: I2C ad=
dress must be less than 10-bits, got "0x40000010" =20
> > > >
> > > > These are IPMB nodes with the SLAVE_ADDRESS bit set:
> > > >
> > > > +&i2c5 {
> > > > +       //Host3 IPMB bus
> > > > +       status =3D "okay";
> > > > +       multi-master;
> > > > +       ipmb5@10 {
> > > > +               compatible =3D "ipmb-dev";
> > > > +               reg =3D <(0x10 | I2C_OWN_SLAVE_ADDRESS)>;
> > > > +               i2c-protocol;
> > > > +       };
> > > >
> > > > This is a correct entry, so dtc should not warn about it. =20
> > >
> > > I sent a patch for dtc here:
> > > https://lore.kernel.org/lkml/20200508063904.60162-1-joel@jms.id.au/ =
=20
> >
> > Patches for dtc need to be against upstream dtc. There's already a
> > similar patch posted for it which I commented on and never saw a
> > respin. =20
>=20
> Can I suggest some instructions in scsripts/dtc explaining that you
> don't take patches in the kernel tree for this code?
>=20
> I've sent the patch so it applies to the dtc tree. It would be good to
> see that change propagate over to -next as others have reported this
> warning.

These warnings now appear in the arm-soc tree.

--=20
Cheers,
Stephen Rothwell

--Sig_/DcFF.Emc/VDOSRZyZQaAlh_
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl7HGeYACgkQAVBC80lX
0Gwm/gf/UiP3XqMc4FaiRIxc5sp/aEjFR3Yms5szHXC52VDyyQAv8DBKcjV6wFbC
6tANr+Lqsuu7loczGa7pvqcY7VdBlgk7dLKMDpQdVkgT0qcjiXYLp4w6hDJQO8vk
+9ajzo1pJTIzTRV+b2AOOguhqsZyD/KzRqvkIU7EJW7WwKRFzPpQ9es70thQmSbG
dMNZovADYWZEFGo/hpfnKlEmcdo0X3B5yzB4atAqrlaI4Y9JPDSaUiPney+V8uTP
8bjHyyk9Q9COdJOLqb5NPbK1WUWpXPWnqwTQI1fO7hRqaBx8Zopw8rc1DdW1NDbQ
dmsqJlupAoog2jtPrusX7Ok7b7s8bA==
=Gt6l
-----END PGP SIGNATURE-----

--Sig_/DcFF.Emc/VDOSRZyZQaAlh_--


--===============7375404265490922828==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7375404265490922828==--

