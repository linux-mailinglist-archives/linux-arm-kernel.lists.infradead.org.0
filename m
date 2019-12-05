Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8FC0113BB8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 07:34:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=d21J0vWEKkRiEDOIIqVUfA73mBH4ko/Urod30y8nNXY=; b=i6eRk4cy44iFkU1zsCaBj/JNm
	Ir6qdh2NIn2d9IPD6djlKJ+XXl8K6+QIwM6LQr3+IXmGvAVtwXMDFrODUmNHWPsa8ANV030nnmtEX
	UEBQL8e76gAAGKob9o+71S7VOeVIvLGfOsbdfxePqcIO83rlNl96B6AoHRb0Fz6kmHbhTfu9Pi6+o
	weAVfFemiwAkegNN+t+oxvD6SojgzbIMe73I82XtNd4A9Y9xYJkC6QMSQBH59kNd7sTrQofaZKSzv
	5195NmAAVY69da3MFGoOfyse7WwI9Zr9hG+ETP1mTj7RGVGfi1VJH5y6IYJDDqz+wwADnHlVCX8x+
	awsJV7e5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ickiY-0002Rl-Vc; Thu, 05 Dec 2019 06:34:26 +0000
Received: from mail.andi.de1.cc ([2a01:238:4321:8900:456f:ecd6:43e:202c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ickiQ-0002RF-1h
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 06:34:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=kemnade.info; s=20180802; h=Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dSBpaxwIFIt6XTXn2BVKEZT+C7a4WG7hO1oDu4g0lQU=; b=XnC1T96098DXSfUc1kQjc+opX
 ooXVR+JY2HBPWk/qL7yTfIZreq7mGSB7NGYY6mz0IoX6TxcQw4Cd2dunJtUPRP+B1foaXHBJgZv4N
 KZbSjEpyHvTdsnm64HgcAhdkMGm7KpM9JrSl8t3yLW0zZEZTfqVjebrCkhfVmXjhUaLGc=;
Received: from [185.238.219.17] (helo=localhost)
 by mail.andi.de1.cc with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <andreas@kemnade.info>)
 id 1ickHZ-0002i1-4a; Thu, 05 Dec 2019 07:06:34 +0100
Received: from [::1] (helo=localhost) by eeepc with esmtp (Exim 4.89)
 (envelope-from <andreas@kemnade.info>)
 id 1ickHN-0000Bm-8W; Thu, 05 Dec 2019 07:06:21 +0100
Date: Thu, 5 Dec 2019 07:06:12 +0100
From: Andreas Kemnade <andreas@kemnade.info>
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH] ARM: dts: e60k02: fix power button
Message-ID: <20191205070612.27204646@kemnade.info>
In-Reply-To: <20191204123645.GL3365@dragon>
References: <20191111202959.24189-1-andreas@kemnade.info>
 <20191204123645.GL3365@dragon>
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; i686-pc-linux-gnu)
MIME-Version: 1.0
X-Spam-Score: -1.0 (-)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_223419_131634_8B816715 
X-CRM114-Status: GOOD (  14.48  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [185.238.219.17 listed in zen.spamhaus.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org,
 "H . Nikolaus Schaller" <hns@goldelico.com>
Content-Type: multipart/mixed; boundary="===============6178002218313638181=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============6178002218313638181==
Content-Type: multipart/signed; micalg=pgp-sha256;
 boundary="Sig_/e59ch/q73Ij1=hh=gGw_suC"; protocol="application/pgp-signature"

--Sig_/e59ch/q73Ij1=hh=gGw_suC
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Wed, 4 Dec 2019 20:36:47 +0800
Shawn Guo <shawnguo@kernel.org> wrote:

> On Mon, Nov 11, 2019 at 09:29:59PM +0100, Andreas Kemnade wrote:
> > The power button was only producing irqs, but no key events,
> > Forced power down with long key press works, so probably
> > only a short spike arrives at the SoC.
> > Further investigation shows that LDORTC2 is off after boot
> > of the vendor kernel. LDORTC2 is shared with a GPIO at the pmic
> > which probably transfers the button press to the SoC.
> > That regulator off at boot, so "regulator-boot-on" is definitively
> > wrong. So remove that.
> >=20
> > Reported-by: H. Nikolaus Schaller <hns@goldelico.com>
> > Signed-off-by: Andreas Kemnade <andreas@kemnade.info> =20
>=20
> Do you want this go into 5.5-rc as a fix?  In that case, we may need a
> Fixes tag here.
>=20
well, now there is=20
regulator: core: Let boot-on regulators be powered off
so the power button should work after regulator_late_cleanup()
is called but that is usually some time after userspace has started,
so it would be better to have that in. And of course dt should
correctly describe the hardware. That would be

Fixes: c100ea86e6ab ("ARM: dts: add Netronix E60K02 board common file")

BTW: I have not seen your 5.5 stuff in Linus' tree yet. Seems that Olof
has not sent his pull request yet or is there bigger trouble?

Regards,
Andreas

--Sig_/e59ch/q73Ij1=hh=gGw_suC
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEPIWxmAFyOaBcwCpFl4jFM1s/ye8FAl3onlQACgkQl4jFM1s/
ye9lJhAArhjRzxxMavFXQf2PI+2ZJZ4rFZjFvJ75/UxnBDrNFslJ3WEeEnuIymQD
MRPwgn4qE57P4pj17WFRS+Xaw7BRRJ5sHjHSfWLsNZMlzhkEDviVx9zOIhQK6GJO
yxbZq2u0hthGAFM7nJ+Z38Z+j6E9dzQLpufmgFfrCzZaza1GYeJnQbwfUZSHtvjB
/NwXiA1M6ELlx3evtZ7P6Chi45SmXl4foy1zX4ESh46rR1uaLij1sOXJ7Tu5r54C
GgaxpdqqR1GtTWfZkF0sQvRmcxGXM+UZDyHFZ2c/Id/6MApQx1vibAyKY9zyHdp0
wc6tBEPKJHdts9H5rNwQrSwF9k50YlCphuTRtsJUsW3BiNxBmksTNBVfLM2AjiDO
rpL5OKfJqgUXeP5/sR/H1ZrlJWPMibSvK2C/F8XlkRzM1h54xcil523ymoCoJrc2
N72JzslVK83SI5gm4CrsRYnEXu+sMS5UbLbgU7zCJdC76PqhsM44hqtVGN1Faf7w
RB03MjZ2vnuQtk5k/Xn/nUJS5NFp4g0nburvcjSW/jpTPrdT7jhqafUzbazU70NU
OimIpJWZBghslhZLYaagOJJE/iLrzqe7Tns7UNzzQhKae+YAFtoutLPhV920XVab
1JSQ1Dtb9AQmLNPhIvXTKaRFpHVYzPlrJO4ICfJbt9ouTY9IrN4=
=m0VS
-----END PGP SIGNATURE-----

--Sig_/e59ch/q73Ij1=hh=gGw_suC--


--===============6178002218313638181==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6178002218313638181==--

