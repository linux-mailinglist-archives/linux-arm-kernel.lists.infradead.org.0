Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA1BDA038C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 15:43:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=U9m84tKVLRHQgJ16VnNuq73GljEpbxOwexkfvvsmX48=; b=h0qOzokHfU0VMCu5bZlzP/Syf
	KCxp9ne8qWTE7Lx1lJp8OMoeqSK5Z4gCM4a9uaCApaDbMlePMePJeDXQIu63+9R9EUhPqkjS6jaM8
	nmCpr1I9UvpV0qJtp7Y0beuJxKKvRmcxZMyb9sl3IcA3CLFi+1gB/EENUdKR5eWE3Y2ikLGrGLhNh
	lC0uhGZm5MPIj4IhazEjD0NYPcPLfSWjZVlT2orlu+CvJB3/B5dyxnEMI6ZKjUQlL/1ozqm/OPIsX
	NucIVsUbOSg0SRDCmaBwDSY2DfKL+OQSoJPk9At3H2ZcL3SKOkQ33JWbBZSffH0Aq4OR8h0lDIegl
	gzFT4PrPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2yEl-00042T-SH; Wed, 28 Aug 2019 13:43:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2yEb-00041w-EG
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 13:43:38 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4C5B022CF5;
 Wed, 28 Aug 2019 13:43:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566999816;
 bh=PfdDBsRCBBChXNzCDotQ1Pc7yIyNBpQQ3ATlOtaDOC0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vrdJ3HfPobb2OsDW8pbRC6kIQu+M8yr50ucNLFVYTeNTKvLnO6nyKvDDpbmHFOJae
 BH6dkijIWCasP0rO2X7LUyBR1E1ZIsj6yaAd2rKfKTLspoDx1SyGcEY5p9+FHRy4q1
 m8OXKEa1iDTbzsnltW5dZ5sSPKxK/nsX6gP28+Ik=
Date: Wed, 28 Aug 2019 15:43:34 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Chen-Yu Tsai <wens@csie.org>
Subject: Re: [linux-sunxi] Re: [PATCH] mmc: sunxi: fix unusuable eMMC on some
 H6 boards by disabling DDR
Message-ID: <20190828134334.qzuwodoxmw7ov5yg@flea>
References: <20190825150558.15173-1-alejandro.gonzalez.correo@gmail.com>
 <CACRpkdazfe3gJr6Q+X05GzxPuKtUg0M780SPA_oR5bd+-xBPvA@mail.gmail.com>
 <CAGb2v67e8EiS-LUuhAyPc57nWd4iOBEWC_SZbH801Lzi4QWGyg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAGb2v67e8EiS-LUuhAyPc57nWd4iOBEWC_SZbH801Lzi4QWGyg@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_064337_502237_869EBB55 
X-CRM114-Status: GOOD (  15.08  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 Alejandro =?utf-8?B?R29uesOhbGV6?= <alejandro.gonzalez.correo@gmail.com>,
 Greg KH <gregkh@linuxfoundation.org>, Linus Walleij <linus.walleij@linaro.org>,
 linux-mmc <linux-mmc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============3228720934326301981=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3228720934326301981==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="v6flhv747vrdixqb"
Content-Disposition: inline


--v6flhv747vrdixqb
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 28, 2019 at 09:29:32PM +0800, Chen-Yu Tsai wrote:
> On Wed, Aug 28, 2019 at 8:52 PM Linus Walleij <linus.walleij@linaro.org> =
wrote:
> >
> > On Sun, Aug 25, 2019 at 5:06 PM Alejandro Gonz=E1lez
> > <alejandro.gonzalez.correo@gmail.com> wrote:
> >
> > > Jernej Skrabec compared the BSP driver with this
> > > driver, and found that the BSP driver configures pinctrl to operate at
> > > 1.8 V when entering DDR mode (although 3.3 V operation is supported),=
 while
> > > the mainline kernel lacks any mechanism to switch voltages dynamicall=
y.
>
> AFAIK The Pine H64 does not have the ability to switch I/O voltages. It is
> fixed to either 1.8V (the default based on the schematics) or 3.3V.

Should that be handled at the board level then maybe?

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--v6flhv747vrdixqb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXWaFBgAKCRDj7w1vZxhR
xUbcAQDTgCwVjSWuZKxoSkt/fp1VLfWi1UjCpSZ0cCr11a5BwAD8DLgodYfexZWL
iW8NfsUfcOV7SktdFUgfMP1x74uruwE=
=sxYW
-----END PGP SIGNATURE-----

--v6flhv747vrdixqb--


--===============3228720934326301981==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3228720934326301981==--

