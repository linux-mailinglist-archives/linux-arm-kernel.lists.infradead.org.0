Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01E551AA2B2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 15:03:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6H1cIkISveguBHbkvTa2Aw4r70v8gsd0UjXWPRwbpus=; b=SpCCOmaOkqQAfqF8fKVikmOa0
	XdCTd4zxDPkaIhGDOVRlZJ6+qnj3mDm5hIQ2uQP6JacagEEUibwphAZJCPY/VC+15IjP0iR5sYChk
	ECMc9+bxLbA5IwkH/ml2XgRw2wD4pTmfZ9Yo3cbEhLcm6j6ZKR5d4KLJJtTztK+l5EL19tAjU/r/b
	Z8+nczHdc2po+L8EA7RMqGSbzufvJc5Qz4UBAs/vuGfJaHfIrtDzeBlROppH34O9OEpl2OTmeztv2
	DOrcG17N5cru5GSk00TcoZ8ocC2qoeBD1AFgBR5Cvmv4qiT9CM56Bx85xhc3w+qFXEL8S4sjf+zAJ
	0vr11ivCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOhgr-0000h1-KL; Wed, 15 Apr 2020 13:02:53 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOhgj-0000ft-G6
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 13:02:47 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id BBB2A580395;
 Wed, 15 Apr 2020 09:02:41 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 15 Apr 2020 09:02:41 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=039DxBF+ah5v0vg8ROQIv9FjG5q
 WhfMw1SLvfcd04OU=; b=CkV6dsPcz9Y8idW+hVEyDm6mSV+pUN9Xres8bMKvdRL
 VALjfsC9aI3bhfwoujPhd7EQWqTFMM3MpY0CXMnqitTCS8Fof1sumtKs+1noHkck
 0zy18sJCCWvRsROIXMI80ldSbi7DqI7VYqCLs/1mdKw9zI/NcBitSAQbREvT7L8g
 D4/NJhFvTCxTM7g/tnjms6irqeB7SlILFscWcV0Ce03qvfwgv9/2EatxXaqwDpOt
 //I1mYI1uCDy9IhEch95UxPJJ+Kv4Kn4Nyja93nWS05Egy1qnFDulfPzV8LpPw3s
 DonUZNuI0Jhy6aVgp2M7WLectakQApnHU18B32D9UPQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=039DxB
 F+ah5v0vg8ROQIv9FjG5qWhfMw1SLvfcd04OU=; b=S9h1/Q+pWQGqd+nltx7U9q
 EtiyPyF6+ndcxfpEsE8fKQDJuXpfo16gmVbpfrTLMpDeNmvuN9vlkr4FPoAkLMQm
 9IqswPbsY1N2m95yuHAtlQw3clcmF8saECBneO0wNSjOMXxIqltgpA+y6ONjUj68
 AFBBsJvEeWG3Z9Of09J8HkEnMLsZVx3GogUvVVpEWD6E4MNaS5HjS01rkaGt9TXi
 y9HyZu0mKxSdRDvuzEDI5liYqgvTHXR63Zht+ftr8lzaAYk9NXUHyw5RG9uZYXSu
 CkvJHJDRd/moF8rMWHtNLJ9EyLR2y9cj02+vehqJfB8HMOv8YWoOxKAJDN9M3DVQ
 ==
X-ME-Sender: <xms:7AWXXh82Tz9QrgxCYXxwiUQuqvXNIYslbCEeOSB8EK9jqYSp_7Z4Aw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrfeefgdegkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:7AWXXjHxvIxxyP6a2yvja6_mj0wSrBN48QEe3Nw1WyoqXA1cLZ-20A>
 <xmx:7AWXXkrlPi5zXv3NYFVpM8E20gPMRRwOXPqTkM0T5VGb043_hRT93A>
 <xmx:7AWXXgAfYxDQc7ACxpWBH6yA5fa2JTCRXbHr-EPSPe_jpeeWde-k-w>
 <xmx:8QWXXipi434smJv24Fiv-djdHGL_1nvMAm8dctLyIRDrtTUu2D9z5g>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 9C9A93280066;
 Wed, 15 Apr 2020 09:02:35 -0400 (EDT)
Date: Wed, 15 Apr 2020 15:02:33 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: "H. Nikolaus Schaller" <hns@goldelico.com>
Subject: Re: [PATCH v6 00/12] ARM/MIPS: DTS: add child nodes describing the
 PVRSGX GPU present in some OMAP SoC and JZ4780 (and many more)
Message-ID: <20200415130233.rgn7xrtwqicptke2@gilmour.lan>
References: <cover.1586939718.git.hns@goldelico.com>
 <20200415101008.zxzxca2vlfsefpdv@gilmour.lan>
 <2E3401F1-A106-4396-8FE6-51CAB72926A4@goldelico.com>
MIME-Version: 1.0
In-Reply-To: <2E3401F1-A106-4396-8FE6-51CAB72926A4@goldelico.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_060245_982612_9EC65AF1 
X-CRM114-Status: GOOD (  15.84  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.229 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, David Airlie <airlied@linux.ie>,
 James Hogan <jhogan@kernel.org>, dri-devel@lists.freedesktop.org,
 linux-mips@vger.kernel.org, Paul Cercueil <paul@crapouillou.net>,
 linux-samsung-soc@vger.kernel.org, letux-kernel@openphoenux.org,
 Paul Burton <paulburton@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Tony Lindgren <tony@atomide.com>, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>, devicetree@vger.kernel.org,
 =?utf-8?Q?Beno=C3=AEt?= Cousson <bcousson@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Philipp Rossak <embed3d@gmail.com>, openpvrsgx-devgroup@letux.org,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 Daniel Vetter <daniel@ffwll.ch>, kernel@pyra-handheld.com
Content-Type: multipart/mixed; boundary="===============3819411564311751637=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3819411564311751637==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="il2lli6whdapbh2d"
Content-Disposition: inline


--il2lli6whdapbh2d
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Apr 15, 2020 at 02:41:52PM +0200, H. Nikolaus Schaller wrote:
> >> The kernel modules built from this project have successfully
> >> demonstrated to work with the DTS definitions from this patch set on
> >> AM335x BeagleBone Black, DM3730 and OMAP5 Pyra and Droid 4. They
> >> partially work on OMAP3530 and PandaBoard ES but that is likely a
> >> problem in the kernel driver or the (non-free) user-space libraries
> >> and binaries.
> >>
> >> Wotk for JZ4780 (CI20 board) is in progress and there is potential
> >> to extend this work to e.g. BananaPi-M3 (A83) and some Intel Poulsbo
> >> and CedarView devices.
> >
> > If it's not been tested on any Allwinner board yet, I'll leave it
> > aside until it's been properly shown to work.
>
> Phillip has testes something on a83.

I'm a bit skeptical on that one since it doesn't even list the
interrupts connected to the GPU that the binding mandates.

Maxime

--il2lli6whdapbh2d
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXpcF6QAKCRDj7w1vZxhR
xTUIAP9UGzsDJo2NmFuuOEh6FQ/3E2jykOavlFl7nNEkbp/76QEAgh0UD8HzNN4c
lB61sBbeDdFaPvEy3tOwvQ2UnCbWKAA=
=cHXH
-----END PGP SIGNATURE-----

--il2lli6whdapbh2d--


--===============3819411564311751637==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3819411564311751637==--

