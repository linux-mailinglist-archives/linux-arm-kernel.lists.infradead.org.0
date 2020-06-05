Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0AF21EFC46
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 17:13:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=E2BXThX6qFTm54L0cglF5iJc/wmr9d5kDIbFCj/SJks=; b=XHkqNxeVUa43HVv1u3au4IFHa
	d0V3TrD7Rzn95eF8hhpaX++mM7dlgQvX39Xca+gE0Fddo2UpuvRbLHpRB285XMxaVcxkVgn158LdI
	LwQ3a99mThvR4jKII3dgCcjlyFi0U2pOlUwE8mGm3fk3PJYCblW0A595H81r15X0Y4JjZEZ0fV33Y
	CFrwTOLQMoBDgyS0QNf4VHFdp4/f53MJWjFbEQu/wB1kOZ+KwUwPlaw83TFN5th8n6GsOUJmuWHmY
	F6Jqo35VU7PFV945bDOPetFsa3cczbC5/bkByUfsw7NVSvyvWwTYsA2C0hUPsMziJISdNxZb/7Kr7
	Q2l2o8IFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhE2G-0007AE-P3; Fri, 05 Jun 2020 15:13:32 +0000
Received: from wnew4-smtp.messagingengine.com ([64.147.123.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhE29-00079L-Ks
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 15:13:27 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id DBB138E7;
 Fri,  5 Jun 2020 11:13:11 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Fri, 05 Jun 2020 11:13:12 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm3; bh=VbpvAVCUnsPFSpK3oSSzAp0uVqp
 GePbm13cRTcImBvI=; b=jEHhHx9BX/kWeienCimDjVFn8kxZA9a0xz4mCXIMQkT
 kimz89OdtBb22YkYSKmFbhCOtylqDGUWQk5zA7gBV8No/y0NrajZow4An1pJ/3/x
 oIwAC9ic6oZSAyE9q+jui4mbMkzfk6IqrQwvlTTEQ5bR5yTPtJECFGZkCweacrNy
 UHCexwhmK3GtqVGWwk1ek308TNz3TyOekpL0z7c8dTXJAXN++w1X07J6ir3dasPS
 3PtKk9lX2j7nV/R1fES1niXKbau5DO42I9NJpDpRHwcV3Z7IBV8FtnccxQbkb61s
 1MmvYx1Mx1zzCE2QZlgjdMpkuigH39M3Pk9LyFfiR1Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=VbpvAV
 CUnsPFSpK3oSSzAp0uVqpGePbm13cRTcImBvI=; b=OphJkDRAM94t6mGOS3+LGx
 1ZF+30KNo0Gv1pI8V1cVuY/Dy+bAt+/JZxfk1QeprT9uIp4DdEY2zEqQlw0OU9Mf
 g7H1x24ackvUhNn3T7IFcKeessqgYK/BnvFenPSB2QJtg4HCifV5zzKWxyHg8xki
 LXQOq/T0QaUetcjYuMoo2Zqpjk9SoVOCo3T8StZvFLWj0a1RDRUBxo5nRya4MB0P
 iFNVs2vgFq/awLTkCiAhFKM80mxRvPVz1YWCrqLtQVNAanHTv+qXqYwfyXb4k+h7
 3QaBGVWe55x09tdRg4QjqNugMolAKVHWHyB17mPY0Z9D0PdYVW4m1FqG9ie5B2Iw
 ==
X-ME-Sender: <xms:BGHaXszE6jCQt3UqXhv_rpK-h5ydbx5e0K9fIODa1lbA1h2fcZDzBQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudegfedgjeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesghdtre
 ertddtjeenucfhrhhomhepofgrgihimhgvucftihhprghrugcuoehmrgigihhmvgestggv
 rhhnohdrthgvtghhqeenucggtffrrghtthgvrhhnpeeutdfgjeeuudehvefgvedvtedtud
 elfffgffekledtffekgedukeejueevieegudenucfkphepledtrdekledrieekrdejieen
 ucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigih
 hmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:BGHaXgQvy1wn6p2e7o7S_OSWeDCmx6eR30VwmPn-7YK9mu6AjtMw7g>
 <xmx:BGHaXuX00NXX5LGAMEHvRqjEQRNG5vXJM8YYYT4N2NXYV0QwhG7O-A>
 <xmx:BGHaXqhv_WNqjpCMLG7pt29jUj990Xa3yBofV98mw_NMD960Q-jUlQ>
 <xmx:B2HaXi5JEQDk4McYhDkEso2_BbUpevJz_UdJNorqTGnvu3K4X4urb4p-_N0>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id F2F973280059;
 Fri,  5 Jun 2020 11:13:07 -0400 (EDT)
Date: Fri, 5 Jun 2020 17:13:06 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: wens <wens@csie.org>, =?utf-8?B?5p2O5oms6Z+s?= <frank@allwinnertech.com>,
 "linus.walleij" <linus.walleij@linaro.org>
Subject: Re: =?utf-8?B?5Zue5aSN77yaW1BBVENIIDIvNF0gcGluY3RybA==?=
 =?utf-8?Q?=3A?= sunxi: add support for the Allwinner A100 pin controller
Message-ID: <20200605151306.kqmyj673kux4sbaa@gilmour.lan>
References: <20200522030743.10204-1-frank@allwinnertech.com>
 <20200522030743.10204-3-frank@allwinnertech.com>
 <20200522152803.twvfvuhd6ztunvll@gilmour.lan>
 <8c7a8eeb-f4ea-4df7-b381-5aeab6dd170a.frank@allwinnertech.com>
MIME-Version: 1.0
In-Reply-To: <8c7a8eeb-f4ea-4df7-b381-5aeab6dd170a.frank@allwinnertech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_081325_722359_F3476E6D 
X-CRM114-Status: GOOD (  15.92  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.18 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree <devicetree@vger.kernel.org>,
 linux-gpio <linux-gpio@vger.kernel.org>, sboyd <sboyd@kernel.org>,
 mturquette <mturquette@baylibre.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "tiny.windzz" <tiny.windzz@gmail.com>, robh+dt <robh+dt@kernel.org>,
 =?utf-8?B?6buE54OB55Sf?= <huangshuosheng@allwinnertech.com>,
 "p.zabel" <p.zabel@pengutronix.de>, linux-clk <linux-clk@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============0227344876642591181=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0227344876642591181==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zkd5ahwpreyajhe3"
Content-Disposition: inline


--zkd5ahwpreyajhe3
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Frank,

On Wed, Jun 03, 2020 at 05:44:36PM +0800, =E6=9D=8E=E6=89=AC=E9=9F=AC wrote:
> >> + SUNXI_PIN(SUNXI_PINCTRL_PIN(F, 0),
> >> +  SUNXI_FUNCTION(0x0, "gpio_in"),
> >> +  SUNXI_FUNCTION(0x1, "gpio_out"),
> >> +  SUNXI_FUNCTION(0x2, "mmc0"),  /* D1 */
> >> +  SUNXI_FUNCTION(0x3, "jtag"),  /* MS1 */
> >> +  SUNXI_FUNCTION(0x4, "jtag"),  /* MS_GPU */
> >
> >We should use another name here, since the code will just pick the first=
 one and
> >ignore the second. What about jtag-gpu?
>=20
> The underscores are used in front, so changing it to jtag_gpu may be more=
 consistent.

Yep, that makes sense

> >> + SUNXI_PIN(SUNXI_PINCTRL_PIN(B, 7),
> >> +  SUNXI_FUNCTION(0x0, "gpio_in"),
> >> +  SUNXI_FUNCTION(0x1, "gpio_out"),
> >> +  SUNXI_FUNCTION(0x2, "spdif"),  /* DIN */
> >> +  SUNXI_FUNCTION(0x3, "i2s0"),  /* DOUT0 */
> >> +  SUNXI_FUNCTION(0x4, "i2s0"),  /* DIN1 */
> >
> >I guess the second one would be i2s1?
>=20
> No, each i2s may have many inputs and outputs.=20
>=20
>  SUNXI_PIN(SUNXI_PINCTRL_PIN(H, 19),
>      SUNXI_FUNCTION(0x0, "gpio_in"),
>               SUNXI_FUNCTION(0x1, "gpio_out"),
>               SUNXI_FUNCTION(0x2, "cir0"),          /* IN */
>               SUNXI_FUNCTION(0x3, "i2s3_dout3"),       /* DOUT3 */
>               SUNXI_FUNCTION(0x4, "i2s3_din3"),       /* DIN3 */
>               SUNXI_FUNCTION(0x5, "ledc"),
>               SUNXI_FUNCTION_IRQ_BANK(0x6, 6, 19)),
>=20
> Considering that the same pin has multiple same functions,=20
> so add a suffix, like i2s3_dout3 and i2s3_din3?  =20
>=20
> Or specify muxsel in the device tree may be another solution.

Having muxsel is not really an option. We have two sets of bindings to
maintain already, adding a third one would make it fairly hard to
maintain. And the second binding we support is the generic pinctrl
binding, so I'm not really sure why we would want to move away from
that.

And I'm not really fond of having a suffix either. It kind of breaks the
consistency we had so far, and ideally I'd like to keep that.

Chen-Yu, Linus? Any input on that one?

> >> + SUNXI_PIN(SUNXI_PINCTRL_PIN(H, 2),
> >> +  SUNXI_FUNCTION(0x0, "gpio_in"),
> >> +  SUNXI_FUNCTION(0x1, "gpio_out"),
> >> +  SUNXI_FUNCTION(0x2, "i2c1"),  /* SCK */
> >> +  SUNXI_FUNCTION(0x3, "cpu"),  /* CUR_W */
> >
> >What is "cpu" supposed to be?
>=20
> As far as I know, this is a function that has never been used.
> The hardware guy said that it can be used to control the CPU to reduce th=
e current.

Ok. Do we really need to add it right now if we don't really know what
it's going to be used for?

Thanks!
Maxime

--zkd5ahwpreyajhe3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXtphAgAKCRDj7w1vZxhR
xcOpAP9hPMQZE8RjquYSY0OYJtT3YHX6GtIBD2qqFYRYTe/y5AEA/ArnzVS22UCR
AAiE1kWBxSfADLmvwqJuQ7ofyhPp/AE=
=FjvJ
-----END PGP SIGNATURE-----

--zkd5ahwpreyajhe3--


--===============0227344876642591181==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0227344876642591181==--

