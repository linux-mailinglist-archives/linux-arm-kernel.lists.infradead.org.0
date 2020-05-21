Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B781DC791
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 09:27:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xI6ENgRXTc+nAgXg+AhduGtOMXqy8hB7TcYpKDg2+34=; b=mY0NOUtl2qIsMyMaOcCQwQVzr
	rY+bokv7Tzpw6RackoqV/iYLNmSNSkOvyOHwayXDI1jSO9Nx+vU07IBmbKj3LYjoCuhkuyEVacwqJ
	lIMm/n2hnffiJngzPxKRE6IugVrL10my8y0ykGeZ+KZRTOdSwQbplT/Bk+lfTrtAeHSC1N89cvCzl
	h1pSdx/tRuNemjDD51FSXtjH1Un7ou1dS0Iu4A+DIv/+z971kav0muEfp6HjNm2swT6lIHH0fR+k5
	iiUnCbfzB3hE0xotu/dBF427TQVVvPqt783Q47ctn+s3RmKCZLVbv3kV8Jdw/8AS06p00+TGyQ392
	KclcolE7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbfbl-00067W-EC; Thu, 21 May 2020 07:27:13 +0000
Received: from out1-smtp.messagingengine.com ([66.111.4.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbfbM-0005nP-Ig
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 07:26:50 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 332B15C00B6;
 Thu, 21 May 2020 03:26:37 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Thu, 21 May 2020 03:26:37 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=dJT+KWYcMv/G5Sm0/52tWPXUHYu
 Atj8/WjQOBOEtXmU=; b=mTzRsI1zPniBfEgNmlcWaXrAoSSyTryrPIfNgGtuxDX
 oVMNcGU1NhQJ7o+kZUKcbnWCapbKMwN0OEux4g/pOF39m/IDPAplAvXgxvlpu6ke
 /lWQ/FfhNqcH+Km4aEw7ZGTvmojAzrOuq+IrRDfHQoHrfE8+MQdgDpUI2/0oH4Go
 KSKQOb7XIz5DFDeNL++Ye0dg+7ddXeulPN1iw59tDI8j0oMo4N3R56F71cs1Rczx
 oIr35kupumOW0KB9All5+cv7axfLGrHk/hJTc6DlZnOHUNhu+KpMPrEsOviN2mYy
 bgXJB2auIdrLC/qCVxdLZwGMM9+uLYwattpvHg6AIVg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=dJT+KW
 YcMv/G5Sm0/52tWPXUHYuAtj8/WjQOBOEtXmU=; b=QTj28Sv2BmsgqNxNsOpqm0
 /gGyMUgtQhyqQ2z0uqAMQvLJH3suNUbRBh/4BQQGv/41vDE5aPEdzJBs5R2EhSgm
 VWEZrwNmdXM8vcnHAZWASCN9Gm/m0TplX63j7YRFvgX4dNrCF+ObD0ADihioBjnw
 HEXilDiCfxREgretnqrLqu2Fhov3Fe2g/tAJfByo+b+K0z0TI5wXDYEopwDy3azO
 C5+BqBCaRr6Q6iox3jj0NjPIaQh8/rZm6YIHGiVuFmQ8vwg33teqxa9qEFQskwdE
 BYZey8gJnUM806vw5TjlBOeKFf9L5R/VKB8qfQIFRdsSclpEuW2Tm+LYmfWBWKRQ
 ==
X-ME-Sender: <xms:LC3GXiKzAMjDNAtuCfL9TtKMuFHWY4ukVvApaMJLdysg-NW4zQp2Fg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddutddguddujecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpeffhffvuffkfhggtggujgesghdtreertddtudenucfhrhhomhepofgrgihi
 mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
 htthgvrhhnpeduvdduhfekkeehgffftefflefgffdtheffudffgeevteffheeuiedvvdej
 vdfgveenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:LC3GXqLtirCcmTfUpmXlwlzsOqwpLppjEuOHdVR1M_Lq6d4WAOMY6w>
 <xmx:LC3GXisSX4EWgMmh0xqMPZ7XJwAnLozYzZi6pCp88wVwc1FiVdLxGA>
 <xmx:LC3GXnbKVM5FXFDjlsQutPqD8l1QDTcTb8oyDz61m-VM25YfgQzG6A>
 <xmx:LS3GXonG5bj65oRiY0aY72i4a7UdzZh-yBgZdQYDen2JW3ceAPp2LQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 59FC33280059;
 Thu, 21 May 2020 03:26:36 -0400 (EDT)
Date: Thu, 21 May 2020 09:26:34 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: =?utf-8?B?SsOpcsO0bWU=?= Pouiller <jerome.pouiller@silabs.com>
Subject: Re: Possible race while masking IRQ on Allwinner A20
Message-ID: <20200521072634.6ig7jcuy5tmvmojf@gilmour.lan>
References: <11042983.UNsANRFJuY@pc-42>
MIME-Version: 1.0
In-Reply-To: <11042983.UNsANRFJuY@pc-42>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_002648_965533_DBD7AF79 
X-CRM114-Status: GOOD (  22.04  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.25 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.25 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Marc Zyngier <maz@kernel.org>, Marc Dorval <marc.dorval@silabs.com>,
 Thomas Gleixner <tglx@linutronix.de>, Chen-Yu Tsai <wens@csie.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7112641474409469265=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7112641474409469265==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2hpla6dmmi5ct33b"
Content-Disposition: inline


--2hpla6dmmi5ct33b
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

Adding Thomas and Marc in Cc.

On Tue, May 19, 2020 at 10:59:26AM +0200, J=E9r=F4me Pouiller wrote:
> I have some trouble with integration of the wfx driver[1] on Allwinner
> A20 platform.
>=20
> The chip WF200 is connected to the SDIO bus. At the beginning, I tried=20
> to use the IRQ provided by the SDIO bus. However, I have noticed I=20
> received some IRQs twice. Since the IRQ line is multiplexed with the=20
> data line, it is not very clear if it is a bug, or if the SDIO device=20
> has to support that.
>=20
> The chip WF200 allows to use a dedicated line for the IRQ (aka
> "Out-Of-Band" IRQ). So I have enabled this feature with a edge triggered=
=20
> IRQ. However, I missed some IRQs. Indeed, it seems that Allwinner use a=
=20
> 32KHz clock to sample the IRQs. It is not fast enough for us. I think it=
=20
> explains why we miss some IRQs (using the attribute "input-debounce"[2],=
=20
> I tried to enable the 24Mhz clock, but without success).

Without success as in you couldn't make it use the 24MHz clock, or using it
didn't change anything?

But yeah, missing an edge interrupt is bound to happen at some point, and a
level interrupt is going to be more reliable (especially if you can't recov=
er
=66rom a missed interrupt).

> Nevermind, I tried to use a level triggered IRQ (and my request is on=20
> this part). As you can see in the wfx driver (in  bus_sdio.c and bh.c),=
=20
> I use a threaded IRQ for that. Unfortunately, I receive some IRQs twice.=
=20
> I traced the problem, I get:
>=20
>  QSGRenderThread-981   [000] d.h.   247.485524: irq_handler_entry: irq=3D=
80 name=3Dwfx
>  QSGRenderThread-981   [000] d.h.   247.485547: irq_handler_exit: irq=3D8=
0 ret=3Dhandled
>  QSGRenderThread-981   [000] d.h.   247.485600: irq_handler_entry: irq=3D=
80 name=3Dwfx
>  QSGRenderThread-981   [000] d.h.   247.485606: irq_handler_exit: irq=3D8=
0 ret=3Dhandled
>       irq/80-wfx-260   [001] ....   247.485828: io_read32: CONTROL: 0000f=
046
>       irq/80-wfx-260   [001] ....   247.486072: io_read32: CONTROL: 0000f=
046
>     kworker/1:1H-116   [001] ....   247.486214: io_read: QUEUE: 8b 00 84 =
18 00 00 00 00 01 00 15 82 2b 48 01 1e 88 42 30 00 08 6b d7 c3 53 e0 28 80 =
88 67 32 af ... (192 bytes)
>     kworker/1:1H-116   [001] ....   247.493097: io_read: QUEUE: 00 00 00 =
00 00 00 00 00 06 06 00 6a 3f 95 00 60 00 00 00 00 08 62 00 00 01 00 5e 00 =
00 07 28 80 ... (192 bytes)
>     [...]
>=20
> On this trace, we can see:
>   - the hard IRQ handler
>   - the IRQ acknowledge from the thread irq/80-wfx-260
>   - the access to the data from kworker/1:1H-116
>=20
> As far as I understand, the first call to the IRQ handler (at=20
> 247.485524) should mask the IRQ 80. So, the second IRQ (at 247.485600)=20
> should not happen and the thread irq/80 should be triggered only once.
>=20
> Do you have any idea of what is going wrong with this IRQ?

That's pretty weird indeed. My first guess was that you weren't using
IRQF_ONESHOT, but it looks like you are. My next lead would be to see if the
mask / unmask hooks in the pinctrl driver are properly called (and actually=
 do
what they are supposed to do). I'm not sure we have any in-tree user of a
threaded IRQ attached to the pinctrl driver, so it might have been broken f=
or
quite some time.

Maxime

--2hpla6dmmi5ct33b
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXsYtKgAKCRDj7w1vZxhR
xdqIAQDPodiDt+Ei5GIW188vQPVfyBl/ky3W8mvnctKqTv7NqwD9H/bdVlCpF9Ff
LBmSdDEtlt/IgiiDUGKKgdG5b7bL9AM=
=MIk2
-----END PGP SIGNATURE-----

--2hpla6dmmi5ct33b--


--===============7112641474409469265==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7112641474409469265==--

