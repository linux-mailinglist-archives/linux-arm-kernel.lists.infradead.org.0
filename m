Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2C48CD984
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 00:39:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GKCzHvQuPr8Vf+X1eCVXDlxbfZ9HMUmOGbvx03bP9i8=; b=HbD7U3q6VS/khkSa/mClXQVoc
	v0LqX56OYbQ+Lci8urga2y6rM6xa7CcQXsqD7H5qXNa4sJQaa++HF5uJ9yj+R9RO+APdN0tpQ1ym9
	b07RAo18tC3YEHIA8svcSqypa49kyhI8X11uqpg62PDXSGpCVFI5ihIK1alFGrC6UbVY9S469DfgK
	l5X06xwM8gh/PDpvkoKUBEL6mSZ97UktiD/F1hpZiQk7lHMx0XnJJfIAHg1HN7DROxwxMZ2bPAMZh
	RB0KCysXzB0pcT9SVHq7d4rBgWbcPfiao0ILz3yKwXe8RwDO/FL1BNFOA/Xa5xtkW7deHxtfwfZqm
	MRdLG7qhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHFBo-0005HA-FH; Sun, 06 Oct 2019 22:39:44 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHFBi-0005Ge-1X
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 22:39:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1570401534;
 bh=HQioVg0fLiB703pC94Q5CJrHeDjz8YSULyFi62pu9m0=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:References:In-Reply-To;
 b=Duz0PvB2qX4L8giiwuDvx5SsbWVQkb8MNecGicQqT5uyuTsSprcb4szvkk+FyF308
 T8DlnhoKCH/OKa212mngd7IOBBUBNriW+dQD/sJLRXWBvhuZc1HMtk5iSxIdv46jut
 AsHL66iTBj3HOm50gcjLz6rKv8wQRSbpJ9aIRN2E=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from longitude ([109.90.233.87]) by mail.gmx.com (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MTAFb-1ig9bd1brD-00Uabf; Mon, 07
 Oct 2019 00:38:54 +0200
Date: Mon, 7 Oct 2019 00:38:48 +0200
From: Jonathan =?utf-8?Q?Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>
To: Andreas Kemnade <andreas@kemnade.info>
Subject: Re: [PATCH v2 2/3] ARM: dts: add Netronix E60K02 board common file
Message-ID: <20191006223848.GE19803@latitude>
References: <20190930194332.12246-1-andreas@kemnade.info>
 <20190930194332.12246-3-andreas@kemnade.info>
MIME-Version: 1.0
In-Reply-To: <20190930194332.12246-3-andreas@kemnade.info>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Provags-ID: V03:K1:J4irto3tAosr7xHmcWxuJ3ndP76ZbpNdsbSVgPvdRBbyvC87GJw
 aihi+iczLukRIoJQMVNUx900ERyIMFo4pEOlHqGD9/GlFKFWHdmSMQMKFuEFr7ab1pSvKaB
 PCTNYdwLfqAYjoUal33EWnA8HpQaRIF9NQk/HqOjZ9Bg8I6iw5rRkIGWpJ0NN0XKfsgS5bT
 jH6ius3PpesaQmI65q7yQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:pNfCcJIi9Yg=:jVzGatRezPDUqXoRMuTiCK
 WikGS7YNtIWvBa/qyr/BVMfmnZjb9pRnm60iEVgst2Q0b5BzmrnXuyUb1FvlAF/uWqZYmg1+q
 CFSzTGbf2pYkYlT1qlrqNx7DD9mouXUZ8pzket/2gn2UDWtBNqBvOi7kVvhxFeJRhjGCZzahu
 M5qs7+I2OBeCuhhzkNNVLlJ5TNzhgmGjylo6WKoNC1UaRUTOOxm/+o6lkw5GoaYP6/irlMnqe
 bQK4OzU56aIAiSsIhkQPYSbJEjIupxPhldWu0LS8OKw2TfrXfzJsh6tL2+Tp/gKEfgk+KBvdr
 AsvXWv2AvUioCIfVMqjIzTUJpVoOf47CbJzwomtd6uieXgJIzPM2QXNaSb9vAh/UYpPvX+iHU
 ZBVIE6t1LFOpY/10M8Rl5ImuKyacdAAiXXbArWFyTxkRxndcoXo80p2tCai3HhXcPnIozoTSC
 UzRfgdcAPlVB9B+V4OQFRcXk4/2VVNifgvfYAaq+8u7+C71lxEUnODJ65Bu1p1ZXMdf5/beA3
 iY+MYzm9yM4xBlVpPdpz4Vp3q0ZPfk2ju73GIoKyewH0lH2W60sfAokDffg/UkSabsSnOq64j
 Kg8NLayxxqQAYNMOcyye0jaXw+GoeDkU7lxxxm7TDkKToZviztmG2gDbiL5iLreSroXfH0cZZ
 4vZrHoJZJ8Sj61SpRYdDZJ4MknKH28XRQW5ISijP5O9ZeiOspgabrgEqkML1E9ARcZXo159JY
 G5TlSvYgb33saya+tVqZ9UoRiwsAaIy9q+sZMpGNPLXfgkKYbApfDsGSCO6tz8n72KyXdr+ed
 ozjFUkYXZL6Bk6v03PFNVpYsxf4d5ZBiujCtJJ2MGqibQB3u5s624pxfQQNA1fiA5NKHBUswC
 0JwbFANOUgZhYZdg1w4hKdKtjN1A6KSEiFXKotRwJddHOiiiR/rm4wHqy9Xv8CoRyv7IQWOzw
 LD62IibRULWlTF2hOIjgHabvUAeaCbMAd3d08Fq0q/5fKkP0idx9oEflKmK6QMybjh7k0tF4E
 NNS4FpuHZBTPeZu6amVeiEOxnR5Ww3gsFKkllSVxRMRLTD2MaBHoBH7JIvT/QMKw+1JZAQ73O
 Z7nj7OK8dRans0lONpWYYru7/zGHG58Ws8NFy81e0OAzIOnpI8/izMHzjilLtlB5erIv/W07e
 rvSp08//+XL4Qq8XtRAtSipEneG03z4fF3cMc0DoT+x0Jrq/rwUb45LPXRoWTJXaaWeW0+CgV
 g54ivdND9+lGWgCLeBLfsp/MlwQFrI5mn+yICXlXuWqfDdUlpr3jkeJH/EnI=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_153938_420055_8EC67A76 
X-CRM114-Status: GOOD (  11.34  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (j.neuschaefer[at]gmx.net)
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, marex@denx.de, Marco Felsch <m.felsch@pengutronix.de>,
 devicetree@vger.kernel.org, andrew.smirnov@gmail.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, angus@akkea.ca, linux-kernel@vger.kernel.org,
 j.neuschaefer@gmx.net, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, manivannan.sadhasivam@linaro.org,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2603098935364844973=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2603098935364844973==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="BZaMRJmqxGScZ8Mx"
Content-Disposition: inline


--BZaMRJmqxGScZ8Mx
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Thanks for CCing me on this patchset. Nice to see more e-book reader
related work!

A few comments and questions below.

On Mon, Sep 30, 2019 at 09:43:31PM +0200, Andreas Kemnade wrote:
> The Netronix board E60K02 can be found some several Ebook-Readers,
> at least the Kobo Clara HD and the Tolino Shine 3. The board
> is equipped with different SoCs requiring different pinmuxes.

Do I understand it correctly that i.MX6SL and i.MX6SLL are pin-
compatible so we can use the same pin numbers and GPIO handles in the
DT?

> +	leds {
> +		compatible =3D "gpio-leds";
> +		pinctrl-names =3D "default";
> +		pinctrl-0 =3D <&pinctrl_led>;
> +
> +		GLED {

What does "GLED" mean? It's not obvious to me.
What user-visible purpose does this LED have, or where is it on the
board?

> +			gpios =3D <&gpio5 7 GPIO_ACTIVE_LOW>;
> +			linux,default-trigger =3D "timer";
> +		};
> +	};
> +
> +	memory {
> +		reg =3D <0x80000000 0x80000000>;

2 GiB of memory?

> +			/* Core3_3V3 */

What are these labels (Core3_3V3, Core4_1V2, etc.)?

> +			dcdc2_reg: DCDC2 {
> +				regulator-name =3D "DCDC2";
> +				regulator-always-on;
> +				regulator-boot-on;
> +				regulator-state-mem {
> +					regulator-on-in-suspend;
> +					regulator-suspend-max-microvolt =3D <3300000>;
> +					regulator-suspend-min-microvolt =3D <3300000>;
> +				};
> +			};


Thanks,
Jonathan Neusch=C3=A4fer

--BZaMRJmqxGScZ8Mx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEvHAHGBBjQPVy+qvDCDBEmo7zX9sFAl2abPEACgkQCDBEmo7z
X9uKtxAAzzgCu+n9jH9hNCttJ3lG5alFog0lO+dd69DN/EG3wH4NCQNnkfL0eTUQ
ePZWqAlCuXMrFgJUrL0RDEw926fYD558I9RBtJGI1yPlKq4Qhs0ENpkNI9bOSZyG
s4UI1iLsalte+sGFZwPcTfWv5mgD5FSoLPIQleDaaHvCoRh9+PP7Nn3svxyToGcY
OE7WtpBAwA+gawwKGWZJUxXLMGQKwyg3f8TcFkugLh5VefyiNgTpRcWnilUbZ3mI
uU1hZc4cC/dcoCs0blZZwO24MAIDN/686fwViySRjzKE411dp1XZDz9LqQdr9OLW
NKMyFCSsjhn5TFMPoo6rux88KLBujHPRiu7e+EXSVgYZH4nRsxUqPTxnGzimotrx
1IoN+Dkg+hx5hxVntHrKktH5kvwuN7mKcgGqHNtkQgyhS4dWa+83R0C0E+uEi/ZM
mH+ht5CK/J6BbCXyUans1T+tIs1xL5xYHsw/ZKZtiYIwGrVVMiIbLf/OW+9llrc4
wt0KQkqUudaQj8i6PCihRudCi371QWQbcGholaDqkn4HFEGYRC8pzsCHr7sU6Gdf
J/5fw3n4lQv5H2RBLgzQBqNWB9CkRdJOTTR3Zj95Gaz1HizSWwyk22aoVKdD/f9R
jQ8CI9hIEMXx1iGEmBAltMHzwtfAzlwp9esITOahR7Sd3ZK0Hyc=
=YsCq
-----END PGP SIGNATURE-----

--BZaMRJmqxGScZ8Mx--


--===============2603098935364844973==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2603098935364844973==--

