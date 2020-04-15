Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 404C71A9A6B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 12:28:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=stGdydfsBSdOFW0rnYEzcWRVkuYBy9OLEQrdJ7yx/QE=; b=m2cwJx/S0zvzfvm0CG3rGUIuE
	XXKaQJIkzCN0J+TDlh9KyKvhuzd+YeG8hxtkwdIJg3clp7barz5z4NPCoxe8xj+fAM5Gjl3kD+fID
	9/7DsRUJzCSDBJWAUh/5rVuUia9mOnjOAeLn4a8HwYaY6mGSdfTBxy1V65ZKWo90D8Lr/qwnbBATO
	zfdb7rR5NClnZHwptZM1RvJswj6F5Y8utJqOgi40nOmHTQBcfRJliMPHs42WdcYna9nwjbWmlpewc
	hbGRw+ANcy3wWiq4ALf/M8EGYE1hNeyemBZ0W/GNXqM64ThXFaUflCc4U8qLBLbC0NumUzp0TF1+U
	Q4KKgLS1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOfHY-0006fc-BF; Wed, 15 Apr 2020 10:28:36 +0000
Received: from wout2-smtp.messagingengine.com ([64.147.123.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOfHO-0006f3-3g
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 10:28:27 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id 01926896;
 Wed, 15 Apr 2020 06:28:23 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 15 Apr 2020 06:28:24 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=RoUMH5uplHJzYnyqDXTZLy21XNl
 /ku4HaCRXVlORw0M=; b=HysOTXkWgZt8klXzuHbITMV6pPNvsM3fbLVH+dZNxuo
 P02L58NPlrhVbP/aodTlSufTMf4U12br9zammRkmrFT0KIJXRA4VKesfQl5qKg0y
 me7hvY/yRTHge4za2aWQSU4VT3R1bZBL7wLwATk/K+kGCATENISVZmQ1b6BI8EiR
 656hT075HCC6WP/SNOIPjwbbPQbnKqKPo+ka4xZNyT9RA3ucTwjsforP9e0aV9qF
 6OgKgMq/U0elSDcrvUThoyYovfyPggbL03z5Z0zMFNN/v9G59H96bm22kMMc/N/a
 /0tA8+fFGcLacD7Xlo91KaGpF8euv0BqcVOD7Q76UAg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=RoUMH5
 uplHJzYnyqDXTZLy21XNl/ku4HaCRXVlORw0M=; b=wGcySNYHWD23Ogd4P+7Wqw
 ZL2FM8pu5ihO9+vIcaW4vKpIyJOjDnWY06NI0TKgMOexeXT0/XBjCq30YIiFZCb0
 5WOk99ppUtI4Gs6nM38GwckmtFBcUXIHrvSt7MO0wLWOJ0TogKql+TlXWt0eeTNF
 JU3km9EmE2zcNM9Dk90jUv1mtcBnIUxofckup125Szf8ijLTI1mNzeCfWDiweyP5
 QGsz+irvZpDcRlu0QG+F+Us/WpLZul5ilJxj7e/B7pcCQlCGOv8RGZ2jS2DbjY5z
 HYCGFoTOj2PLvZUAbXpOh49RCBV7mZdJTnTgZ+fSkdUg4j8tCFMk8xY1nWPM+hfw
 ==
X-ME-Sender: <xms:x-GWXqwZmpuUFCMkuvUlpab-GVJ1uYjfCiFZputQ7CPELfeHRbDwZA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrfeefgddujecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtjeenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucffohhmrghinh
 epghhithhhuhgsrdgtohhmnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgv
 rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnh
 hordhtvggthh
X-ME-Proxy: <xmx:x-GWXh-v4_ktdhiqILsyNkYz8Cseb7nwQR9b5LnAqkIgToZSBcp0hQ>
 <xmx:x-GWXoxrUHggCrh4H-FChfczyTyR-IrpebLyWBG79c_VIl_g1IT12g>
 <xmx:x-GWXppqC2TA_QOoZTo-mT68PoXBxCWngX58qZBXk0O2Gy1WutcDjw>
 <xmx:x-GWXsBL4SCr4q_SQ0X3-HmNBoramB9RqFwhcsatm_ceUg-2LZeskA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id D9AA8328005A;
 Wed, 15 Apr 2020 06:28:22 -0400 (EDT)
Date: Wed, 15 Apr 2020 12:28:21 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH v2 0/7] Add support for Allwinner H6 DVFS
Message-ID: <20200415102821.t4vm5y7zggxc3ezm@gilmour.lan>
References: <20200405173601.24331-1-peron.clem@gmail.com>
 <20200406081007.k6wlaampgbe46yts@gilmour.lan>
 <CAJiuCccPxnW-YMjENr5-_XMMu_gs5pRnCtYvpXQtHTAVj1QQqw@mail.gmail.com>
 <CAJiuCcdqv=mGmUvZ8=35P7fC=sePCpXFWw0_K7rEH+qPQT7W+g@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJiuCcdqv=mGmUvZ8=35P7fC=sePCpXFWw0_K7rEH+qPQT7W+g@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_032826_185993_4F5C3A1C 
X-CRM114-Status: GOOD (  19.37  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.25 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree <devicetree@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============3900609689571872880=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3900609689571872880==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="cfxk5euq6ylkqauh"
Content-Disposition: inline


--cfxk5euq6ylkqauh
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Clement,

On Mon, Apr 13, 2020 at 03:37:19PM +0200, Cl=C3=A9ment P=C3=A9ron wrote:
> On Mon, 6 Apr 2020 at 11:07, Cl=C3=A9ment P=C3=A9ron <peron.clem@gmail.co=
m> wrote:
> > On Mon, 6 Apr 2020 at 10:10, Maxime Ripard <maxime@cerno.tech> wrote:
> > >
> > > Hi,
> > >
> > > On Sun, Apr 05, 2020 at 07:35:54PM +0200, Cl=C3=A9ment P=C3=A9ron wro=
te:
> > > > Now that required drivers are merged we can contibute on DVFS
> > > > support for Allwinner H6.
> > > >
> > > > This serie is based on Yangtao Li serie[0] and Ond=C5=99ej Jirman w=
ork[1].
> > > >
> > > > Most of the OPP tables are taken from original vendor kernel[2].
> > > > Plus there is a new CPU frequencies at 1.6GHz, 1.7GHz and 1.8GHz.
> > > >
> > > > I wrote a simple script to randomly set a frequency during
> > > > a random time[3].
> > >
> > > If you ever need to do that ever again, cpufreq-ljt-stress-test (found
> > > here https://github.com/ssvb/cpuburn-arm) has proven to be very
> > > reliable to detect cpufreq related issues. stress-ng might not be
> > > enough since the (at least older) Allwinner SoCs tend to create cache
> > > corruption when undervolted, and that might not be unnoticed by
> > > stress-ng but will be catched by cpufreq-ljt-stress-test.
>
> The test seems good (see result below) :
>
> # cpufreq-ljt-stress-test
> Creating './whitenoise-1920x1080.jpg' ... done
> CPU stress test, which is doing JPEG decoding by libjpeg-turbo
> at different cpufreq operating points.
>
> Testing CPU 0
>  1800 MHz ............................................................ OK
>  1704 MHz ............................................................ OK
>  1608 MHz ............................................................ OK
>  1488 MHz ............................................................ OK
>  1320 MHz ............................................................ OK
>  1080 MHz ............................................................ OK
>   888 MHz ............................................................ OK
>   816 MHz ............................................................ OK
>   720 MHz ............................................................ OK
>   480 MHz ............................................................ OK
>
> Testing CPU 1
>  1800 MHz ............................................................ OK
>  1704 MHz ............................................................ OK
>  1608 MHz ............................................................ OK
>  1488 MHz ............................................................ OK
>  1320 MHz ............................................................ OK
>  1080 MHz ............................................................ OK
>   888 MHz ............................................................ OK
>   816 MHz ............................................................ OK
>   720 MHz ............................................................ OK
>   480 MHz ............................................................ OK
>
> Testing CPU 2
>  1800 MHz ............................................................ OK
>  1704 MHz ............................................................ OK
>  1608 MHz ............................................................ OK
>  1488 MHz ............................................................ OK
>  1320 MHz ............................................................ OK
>  1080 MHz ............................................................ OK
>   888 MHz ............................................................ OK
>   816 MHz ............................................................ OK
>   720 MHz ............................................................ OK
>   480 MHz ............................................................ OK
>
> Testing CPU 3
>  1800 MHz ............................................................ OK
>  1704 MHz ............................................................ OK
>  1608 MHz ............................................................ OK
>  1488 MHz ............................................................ OK
>  1320 MHz ............................................................ OK
>  1080 MHz ............................................................ OK
>   888 MHz ............................................................ OK
>   816 MHz ............................................................ OK
>   720 MHz ............................................................ OK
>   480 MHz ............................................................ OK
>
> Overall result : PASSED

Awesome, thanks for taking the time to do it :)

Maxime

--cfxk5euq6ylkqauh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXpbhxQAKCRDj7w1vZxhR
xeJFAQCRpXa5/WGOWfd5YXXrqOCzk7cnB4h+JQSnMqmMLY0Z2QD9GOOUOwmBTZj2
n3nqsY0/ztwdWeKtudJpz9pTOa6zxAE=
=VDi4
-----END PGP SIGNATURE-----

--cfxk5euq6ylkqauh--


--===============3900609689571872880==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3900609689571872880==--

