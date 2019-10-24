Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDAD5E362D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 17:07:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TSOBDbNrgmjyCqlI3q1AFFvqtjzSROHzSIk8H0bYq6s=; b=CpQTCOAD5wS/thg41cLlr6gLZ
	rVWCdBJjp4AVnmdC8pflUlMDYalDLXKCRpCZbBxsiHzWP43Rwx+AKjULUppsqymY9bhBa+Kgr/8m3
	8gNfXh8rcKcEicubyiqeJn9zbGNOR1nsAe8YSGRCX6Os8ylSArZSEw65dBLPuK4R+OCJfs/pXe0sT
	8ZhKni0R3tzuCKIYXXXBfgaqkqnlhCd8F2jOoWkdMHZZIck94p6IguMIOqWL1n4oUnSISbW36pHke
	/V1VGWH9RL6HynGXo4XBGpzQVcQ9UU5GDaqzHzXVpZ4mJfQzV5r71CEYdLp69yeKHCSMTdvsY3Xte
	PMDm8ZPsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNeiI-0007Tk-Po; Thu, 24 Oct 2019 15:07:46 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNei7-0007SK-V5
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 15:07:37 +0000
Received: from localhost (x4d0d4399.dyn.telefonica.de [77.13.67.153])
 by pokefinder.org (Postfix) with ESMTPSA id AB61C2C011D;
 Thu, 24 Oct 2019 17:07:27 +0200 (CEST)
Date: Thu, 24 Oct 2019 17:07:26 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Codrin.Ciubotariu@microchip.com
Subject: Re: [PATCH 2/4] i2c: at91: implement i2c bus recovery
Message-ID: <20191024150726.GA1120@kunai>
References: <20191002144658.7718-1-kamel.bouhara@bootlin.com>
 <20191002144658.7718-3-kamel.bouhara@bootlin.com>
 <20191021202044.GB3607@kunai>
 <724d3470-0561-1b3f-c826-bc16c74a8c0a@bootlin.com>
 <1e70ae35-052b-67cc-27c4-1077c211efd0@microchip.com>
MIME-Version: 1.0
In-Reply-To: <1e70ae35-052b-67cc-27c4-1077c211efd0@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_080736_150139_A5AB9FE8 
X-CRM114-Status: UNSURE (   5.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: kamel.bouhara@bootlin.com, alexandre.belloni@bootlin.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Ludovic.Desroches@microchip.com, linux-i2c@vger.kernel.org,
 thomas.petazzoni@bootlin.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8849071501144428280=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8849071501144428280==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="9amGYk9869ThD9tj"
Content-Disposition: inline


--9amGYk9869ThD9tj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


> So at the beginning of a new transfer, we should check if SDA (or SCL?)=
=20
> is low and, if it's true, only then we should try recover the bus.

Yes, this is the proper time to do it. Remember, I2C does not define a
timeout.


--9amGYk9869ThD9tj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl2xvikACgkQFA3kzBSg
KbY2xw/9FIdBm3lKLqDZpmKjcsD3wcKioeBhtRCD82gnXZgkMqSlbbQQRf8y8ZKe
KAun1rTcj+rHtvzH20i+alDXQzChwwJAS9ZxORyWPurh0sRTwGDH5z8Bl1Sm8kUp
6dMDTGNrWwFGV0iQmHzF17n545X7ho/QHlTmpQi23SxS0sOJGPz5D8drDlWS0eBq
MFrDt9jqeCRV2u68gntAWoMoTHUr5klUizS+p8Jrt3yMIfriH1uPc3VGa5xuuLVI
al5YrR9bB0zgYZatgoxnZ6Q5KkInb1DkZIZNRmJP+4QoTMo97HHW+ZrsNJUD9mw5
Uuoh2NTgVGkbuCXRDzVsDOoEEMVM1qmmZxNfeXPtIO6jWbZID8ZaWbsgAfV4SXnQ
eeeZkH8ZuO19KhSeS6/El283JSMuvl89njtXd7l6/hcY41ndFOkjtjEDs/7Ed7RJ
SB0dnavo3zYhzyMJ1IjhtIEIc3+cRZRy7HmBxgovyuEYYCF+re6I8HLjvo2/aYuC
+s7J45zgY/9lqcnJRMz6iL7yIAFyoptYVVq5V065QWCyeKDNmVNBg3XP24ETd879
060Xp1xPeZQU/Pe6D+j7fzfYDyg94Hi9a7P7TT4ZwatTm8LCObi5g7FCCuq5OQPM
eY9Z7YHvo7yo4rYM1tqbAoYA0ZUxXj9IxGI8uIr0L3lBjLIJAI0=
=cVZT
-----END PGP SIGNATURE-----

--9amGYk9869ThD9tj--


--===============8849071501144428280==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8849071501144428280==--

