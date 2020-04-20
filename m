Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 898631B0A4A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 14:48:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=efVIfPHjiMId2cHvkUMfiAMVN8Mb6AFsFNO2sXNFMvM=; b=NcYsXrtzVhaDXeceuund7U4yB
	WS0lbPgpt1OIlpZMJDrjsNvKrOmOd/24sXaQ7YM1PAlma1K96ZgcKImQ2Qonhdqdzce6Ud+DWo+Z9
	SmP86GE//6ZhWeBGVBj9EwPuyi9zYVcCZYuAqLEbbCdYTyVsdbNzA4xAlBXW3lKfItpBJdqzNWGbv
	KFTB4oGuDSrtll9B+88+TgT7VSegxO4fIQd7yPEXN+diApYUJmADZRhkN9ZGAlFusIKvVzw/FNwaG
	0YC4mHsMnGx/iMrtPp7dqqBVG3XE6MQ0T3lESaxcrXObZHdcFGwS7UyzUZKGFsI7ZfpaILesJG6ya
	EMU42Nedw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQVqH-0007W5-RC; Mon, 20 Apr 2020 12:48:05 +0000
Received: from wout2-smtp.messagingengine.com ([64.147.123.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQVpw-0007Qm-HU
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 12:47:48 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id A9497469;
 Mon, 20 Apr 2020 08:47:41 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 20 Apr 2020 08:47:42 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=4O8pI+mDeEP3GbZSfNlfRq+qy/A
 6N194naVgCStRxOk=; b=uBoGN2FwOjBwpNvmwTjyWtqbYsuLde7J2Y8XTEpI9Ta
 4McxRqkGLHrkzq8OprRf/Ulp18Ysy8p+wbaDpILB+/L/FPIrpTFOEYLSx36fBLht
 T/46gjMH1CX05uyMlUpvbIq2KLMMQqF0y3F7ffga7UlXSMoKE78ysA3xM4K0lkAV
 +Ap2O1keGtNJr0XLG1bn5v0rPZARd/+uBVW+TdeVpuNnuo+MOP87TeBHdYIFrnXa
 B3C34BkulDE8c4emdsQtfAG8IGSD78z8Ggq0IAmYCbVpl2uM61cP7s5sKpTjDa+H
 RUG9n6/jw0UBkVk9Mx6hGsgxG8fjEsv0aSBI52d7Odg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=4O8pI+
 mDeEP3GbZSfNlfRq+qy/A6N194naVgCStRxOk=; b=gNaP1jkpxSv/Gv3pLb66gR
 8F0WzDNSraxCbyqsocm4jE3yav+GbMeiF8CbUXMsDlpdJR9HtBhGhGjWcCnXCIuH
 v+xPVfQbRX6FJtCE8s+50gdxUevGCEsjaKjwJ/dvxPZoz4eDjQXSIAfsp0XPOREk
 tA6O8LFRFLSa94HIC1C6wyhviTwmXlygsKBxM0IKJ6T8dlUdgmgivY1kdg1WIKGD
 vcFlCYDZlbiyfnMUrPK0RzrIOwtuhQ4H8hSIs6aWAyzMo06j1lNxL3D3KRH37ive
 foLAfumFIYfI+/ARqrbRiJToo9nr3nEgtrtxDhNu1NxolNdEp622NUAzZQrYZ91g
 ==
X-ME-Sender: <xms:7JmdXtOLCUrfWTgU8jhJ9SOwQW393IJQO-cqAEbAuvpVAYr1MF2s4g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrgeefgdehiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtjeenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucffohhmrghinh
 epghhithhhuhgsrdgtohhmnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgv
 rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnh
 hordhtvggthh
X-ME-Proxy: <xmx:7JmdXrGDpz7U_FD6dP_tJaSkUTeKJ6Joptp74Hdn_77MUWVAya58Ow>
 <xmx:7JmdXiq_faWCS2Zu5oaZHuSGVz8VI2V8sAq7Aq8m94MkbY_dMQBavQ>
 <xmx:7JmdXkoRlVm-3Y73ZLaYhepwpHC5-rL_5dKFkYlnTNQyRqTg4zbeyw>
 <xmx:7ZmdXi3N5BiZobBekln9v08DtnUuwxohc1Dqo3v709IxZc8AP95UVg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 552C63280060;
 Mon, 20 Apr 2020 08:47:40 -0400 (EDT)
Date: Mon, 20 Apr 2020 14:47:39 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH v3 0/7] Add support for Allwinner H6 DVFS
Message-ID: <20200420124739.pxmtvktlyt7ppfjb@gilmour.lan>
References: <20200419135011.18010-1-peron.clem@gmail.com>
 <20200420084547.q5xqlbnmug7l45p2@gilmour.lan>
 <20200420103927.uvzotrolz2inz6q2@core.my.home>
 <CAJiuCcdDge21pRmN8LzKv_tMqBoD9KHg96MUxDS9gp0+xbroJg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJiuCcdDge21pRmN8LzKv_tMqBoD9KHg96MUxDS9gp0+xbroJg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_054744_679405_A569CEEF 
X-CRM114-Status: GOOD (  25.66  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>,
 devicetree <devicetree@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============1814860952410497610=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1814860952410497610==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="kp6c2uiwchhfgvss"
Content-Disposition: inline


--kp6c2uiwchhfgvss
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 20, 2020 at 02:36:32PM +0200, Cl=C3=A9ment P=C3=A9ron wrote:
> Hi Ondrej, Maxime,
>=20
> On Mon, 20 Apr 2020 at 12:39, Ond=C5=99ej Jirman <megous@megous.com> wrot=
e:
> >
> > Hi Maxime,
> >
> > On Mon, Apr 20, 2020 at 10:45:47AM +0200, Maxime Ripard wrote:
> > > Hi,
> > >
> > > On Sun, Apr 19, 2020 at 03:50:04PM +0200, Cl=C3=A9ment P=C3=A9ron wro=
te:
> > > > Now that required drivers are merged we can contibute on DVFS
> > > > support for Allwinner H6.
> > > >
> > > > This serie is based on Yangtao Li serie[0] and Ond=C5=99ej Jirman w=
ork[1].
> > > >
> > > > Most of the OPP tables are taken from original vendor kernel[2].
> > > > Plus there are new CPU frequencies at 1.6GHz, 1.7GHz and 1.8GHz.
> > > >
> > > > I wrote a simple script to randomly set a frequency during
> > > > a random time[3]. This script is quite stressfull and set some high
> > > > frequency without checking temperature. This can result on behavior
> > > > that whould not occurs with the real cpufreq framework.
> > > > As Maxime point out I also tested with cpufreq-ljt-stress-test
> > > > (found here https://github.com/ssvb/cpuburn-arm).
> > > > This script doesn't trigger any issue.
> > > > I also test that that offlining CPU0 and doing DVFS on other CPUs
> > > > works. As CPU regulator is only set for CPU0.
> > > >
> > > > The GPU devfreq was drop as the regulator is still not properly
> > > > drive by panfrost driver[4].
> > > > I will re-introduce it later.
> > > >
> > > > Ond=C5=99ej Jirman has an Orange Pi 3, Jernej has a PineH64 and a T=
anix
> > > > TX6 boards and I have a Beelink GS1 board so I have enable these
> > > > boards. But CPU Devfreq is really touchy has it depends on:
> > > > board design, SoC speed_grade and environement which can affect
> > > > thermal cooling and have different behavior for different user.
> > > >
> > > > If people can test this serie and give feedback, I will try to
> > > > introduce this in LibreElec tree, so LE community can test it.
> > >
> > > Applied all of them, thanks!
> >
> > Please also apply "[PATCH v2 1/7] arm64: dts: allwinner: h6: Add
> > clock to CPU cores" from the v2 series, otherwise cpufreq will
> > not work.
> >
> > I can also send a missing patch adding the trip points, and cpu
> > as a cooling device, that I linked in my other reply to this patch
> > series afterwards, if Cl=C3=A9ment wants.
>=20
> Indeed I have sent using the following cmd : "git send-email --to=3DXXXX =
HEAD~7"
> from the previous version.
>=20
> I should had do Instead: "git send-email --to=3DXXXX next/master "
>=20
> Sorry for that :(

I haven't pushed anything yet, can you resend the proper branch?

Thanks!
Maxime

--kp6c2uiwchhfgvss
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXp2Z6wAKCRDj7w1vZxhR
xXoXAP0Wa0t3EnXDf6veNECaAM7Mc/wslH1BMhCQ0Z0+C2JW4AD/VIJlxoE3NFRZ
R97rKIRBipUXmveGudSVP2ZFhDihHwY=
=+hUu
-----END PGP SIGNATURE-----

--kp6c2uiwchhfgvss--


--===============1814860952410497610==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1814860952410497610==--

