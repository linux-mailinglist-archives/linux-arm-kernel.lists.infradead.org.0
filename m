Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23DE4528BB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 11:56:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JqpZC9MBHIRXdEuE1LnkbTkuu1Nll5dBr6GdCnWstyo=; b=IuUoFK7eo3JHPSZ5Lt84q7Ltn
	yNzTkn+6dOdqor6+qKqivuZV89/aMW0WPWv/ChD4+9thDEI/In+Vr6xDd1WgSzNEczu1viQhE1nH9
	HVt3O/ppV4CDDXKzXxlO9338ewS6SVzWEXQwJQ/OoFAS6k1qkdeSaf1yaVoCPOuw4RBdu8FJGaOtI
	dFJjTSvqBvUn62/wvCn3WpAd8QAXDmXvelsw5Pgp0qFLT5T0qhc0PmnJ2V1EH0s/KT0tLBVVl0NQt
	5V4L4UFku/WRVk/s9AZ1UD6y8A3Eo/9zt840Br9RDUQMPDrs1k8Bt+VQsSE09jcsoCRv+vXH8+Ef/
	iZaAfgXUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfiBk-0007gN-SF; Tue, 25 Jun 2019 09:56:32 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfiAr-0007El-Pk
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 09:55:42 +0000
Received: from localhost (p54B333A7.dip0.t-ipconnect.de [84.179.51.167])
 by pokefinder.org (Postfix) with ESMTPSA id 275C22C376D;
 Tue, 25 Jun 2019 11:55:34 +0200 (CEST)
Date: Tue, 25 Jun 2019 11:55:33 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: I2C filtering (was Re: [PATCH v2 6/9] dt-bindings: i2c: at91: add
 binding for enable-ana-filt)
Message-ID: <20190625095533.GC1688@kunai>
References: <1561449642-26956-1-git-send-email-eugen.hristev@microchip.com>
 <1561449642-26956-7-git-send-email-eugen.hristev@microchip.com>
 <4e81d3c9-25f3-ca6e-f2d5-17fad5905bb8@axentia.se>
 <84628b5e-bea7-7d91-f790-f3a2650040fa@microchip.com>
 <20190625093156.GF5690@piout.net>
MIME-Version: 1.0
In-Reply-To: <20190625093156.GF5690@piout.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_025538_127526_34B0758B 
X-CRM114-Status: GOOD (  11.77  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 Pierre-Yves MORDRET <pierre-yves.mordret@st.com>, linux-kernel@vger.kernel.org,
 Ludovic.Desroches@microchip.com, robh+dt@kernel.org, linux-i2c@vger.kernel.org,
 Eugen.Hristev@microchip.com, peda@axentia.se,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3951189592145828481=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3951189592145828481==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="PuGuTyElPB9bOcsM"
Content-Disposition: inline


--PuGuTyElPB9bOcsM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 25, 2019 at 11:31:56AM +0200, Alexandre Belloni wrote:
> On 25/06/2019 09:14:13+0000, Eugen.Hristev@microchip.com wrote:
> > > Perhaps
> > >=20
> > > 	microchip,digital-filter;
> > > 	microchip,analog-filter;
> > >=20
> > > ?
> >=20
> > Hi Peter,
> >=20
> > Thanks for reviewing. The name of the property does not matter much to=
=20
> > me, and we have properties prefixed with vendor, and some are not.
> >=20
> > @Alexandre Belloni: which name you think it's best ?
> >=20
>=20
> I'm not sure, it depends on whether Wolfram thinks it is generic enough
> to be used without a vendor prefix.

I could imagine that we design a generic property for filters. The ones
above make me wonder, though, because they are bool. I'd think you can
configure the filters in some way, too?

I never used such filtering, so I am unaware of the parameters needed /
suitable. Quick grepping through I2C master drivers reveals that
i2c-stm32f7.c also handles filters, but only with default values. Maybe
DT configuration would be benefitial to that driver, too?

Adding some people to CC.


--PuGuTyElPB9bOcsM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl0R75EACgkQFA3kzBSg
KbaFyA//UefpasMtRS97YQqN/2m6N9Xgl7LiXTof1v53GW/mee1Y8ce675X8tAHL
H2Hcvak1eeDIBiN+FPopoUSZ3EhxO3jsMeuR4cAXAKgbFS9lngHGyQcYWd8EZG3p
lxcbnahpnUOBnvFKHet1j84f3RAkk8tksxEc7sFaV5puN3dReSBA5e++trJz73yk
oUjx+42R9Zytrt27IsH+Vy86znzzuDboc+ngLwl+deTGG3E56xLAUNX4U5eGLJiJ
jL7Ot0GUBIw+iHI610z+HrzuKREIQGY3XkGowq+ZU6RxgSnpdf0faRp8EqfRaJdb
i0379EM5C0Hb4O0l7RLMmlNPWaIGPVhoh7Hr2cBSEXMmL4Fr8uBWNlpkKU1aFM4v
4mq4KBULWYfihJ2CfFqWyKOLzY4320whOiHcq0O+81nYSrRoXCEpYyxHMLpfTicW
YSysulIyWNbAv+j+Cns7y6SRE/Pm6HBaWsHuP8gqKha0+wjmAs+eE6zwZ4RiUYez
tSqP31BTOQw7UG26/FOX+N/fAtBGQP2NcBePPSAmMBLTGAiAXWnEIZv/x9MO9qJ1
kVEs2wtgeyX93qxwedyL9ueTa/d5HbmMpYDN0R3PFwpqGyC+qkyNlatWd/DJutwP
oXKFHwEdabgjoSwYIaIfHkP4gxF/5BJp3F0H+vR/n+sDlQoaWp4=
=qB/9
-----END PGP SIGNATURE-----

--PuGuTyElPB9bOcsM--


--===============3951189592145828481==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3951189592145828481==--

