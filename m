Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01350C8763
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 13:34:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=g5HC1pGXgWlIO8K3V9G3+xGlsMz7Du8VDoiJeLOkCeg=; b=Bej13mGddL3HN+/Sc1VRxhAN3
	+FVX+L+MtbT/E0sQRNu8NQJnUkv1J6WmSbSIH2SrKRpPztdM28NerXPGhjMR10nlgdXwJXO6LkBQw
	jp+c2Qj3kti9/sKx0qgfG/S8y4rLwU/7zL4WIufJqiLK/tyqDK+/5Vt5Nq3p51p2ZZibCG7wh9YI/
	AyQyEY8YP6LA7IvFEzd8pKjZTSx1OKrJjWJ5RYyL7zANWdmhCQlbA1wNvtC8MJ+MHqZfOBVt4z15Y
	gh39uNG7cHVaocLigH/hCD2ZTxXkZjrk78rLkunBrgoMlETZ2nHfD/dfPv+F2dq4DuvA9l0Otv3uG
	r179HHHJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFctd-0006tt-0I; Wed, 02 Oct 2019 11:34:17 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFctT-0006ta-PD
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 11:34:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zdwEezXVISsa9PHkwP5BMlyUlO6t4LLnWgMNEkTlL8E=; b=v1HVyy/usl4yaOLpSL4RXACwj
 xxwrXo5u9Bl33UJWQA9pvEzWDNA/MK2Kua6KDvwtt45nWVxPR9Z2LiVu7W4YViRrQpJrL3RmYIx9l
 wmlEHm3K1tzV2FAZR5+txYchrmO5EzTA94ULKeLXUj5msiqrlNUlkbRpW/Wv9KFmvMFg4=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iFctL-0000Xe-FZ; Wed, 02 Oct 2019 11:33:59 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 85F452742D0A; Wed,  2 Oct 2019 12:33:58 +0100 (BST)
Date: Wed, 2 Oct 2019 12:33:58 +0100
From: Mark Brown <broonie@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] ASoC: atmel: fix atmel_ssc_set_audio link failure
Message-ID: <20191002113358.GA6538@sirena.co.uk>
References: <20191001142116.1172290-1-arnd@arndb.de>
 <20191001175501.GA14762@sirena.co.uk>
 <CAK8P3a2idD4as-9ns0NrLjYGYSEc0=6A67VaNXDacA3-tJEr0Q@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAK8P3a2idD4as-9ns0NrLjYGYSEc0=6A67VaNXDacA3-tJEr0Q@mail.gmail.com>
X-Cookie: Pardon me while I laugh.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_043407_830533_A7EDF721 
X-CRM114-Status: UNSURE (   9.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 ALSA Development Mailing List <alsa-devel@alsa-project.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Takashi Iwai <tiwai@suse.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Jaroslav Kysela <perex@perex.cz>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Codrin Ciubotariu <codrin.ciubotariu@microchip.com>,
 =?utf-8?B?TWljaGHFgiBNaXJvc8WCYXc=?= <mirq-linux@rere.qmqm.pl>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============7307869006000176502=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7307869006000176502==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="SLDf9lqlvOQaIe6s"
Content-Disposition: inline


--SLDf9lqlvOQaIe6s
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Oct 01, 2019 at 09:02:22PM +0200, Arnd Bergmann wrote:
> On Tue, Oct 1, 2019 at 7:55 PM Mark Brown <broonie@kernel.org> wrote:

> > This doesn't apply against current code, please check and resend.

> I looked at "git://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git
> for-next"
> as well as the for-linus branch in the same place, but found no
> conflicting changes
> in there compared to v5.4-rc1. Am I looking at the right tree?

Yes.  I'm just going by what git said here...

--SLDf9lqlvOQaIe6s
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2UiyMACgkQJNaLcl1U
h9C5Qwf/RiC5F7iZ+aTgaYtUrV+CrzlbJV7Gnco8nXr+ykxzFWvEDLB/K5tZ0iKu
DLmW1tuSIklnqAWfXvnNeX+LDvwHExW1dnQoN81M4lJoP0eCeCLE1UJ/uSCwqFLJ
iY2RLbdkYZ5gXgyb8+eGsHPUtoKUPhP89LBHbdoYX9DyV9dzi95jdbpYeRw3Ux8p
3jB20K8VI44zWlmmyClAi+wUiDx1pPizL9JT9QC1oPwzTyLhIXIth6TuAqAVk9Tm
2pytsySr0MFLF1iDo0izxyxPusZnsglcj4eViS3B2mYBXcVoZmRNuO6IYOHa6+3o
9OGn/XEpbRb0Z6lpimUPNRhBY7vB4Q==
=GnRg
-----END PGP SIGNATURE-----

--SLDf9lqlvOQaIe6s--


--===============7307869006000176502==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7307869006000176502==--

