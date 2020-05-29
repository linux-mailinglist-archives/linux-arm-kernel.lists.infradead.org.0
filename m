Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 633C01E866E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 20:16:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aJoAmp/oz6DFs70lLxQE8G7QXxhhjN5C3Cz/9Go5MO4=; b=SVOEklJh1eaP+rwC8Hi8VoI1z
	McBIk4WV1aGUDrn3A/mI60Za76lxWTqunls0AohCGAOceU1kf/ElWSB21Jx+UNpli/sx2s7vNFsDf
	BIQDyvwPAOZ/rUM7CL8zzaX9XBAenaljdTvi9q+/CfnXeu3JwrEpI2mgXKd2sxJthtLg8aCwo2OQw
	BnnPCc5AdT9h3BRr1N8Xlwz8bjTfXJbyxvBc9Ucp2bRXryS4qPSAByFfxDKZEExVW7GGbAXq+6wbO
	XGh2exiaCY+7mJSPFSlPfSYsfVaJNHPIN7E+uhd6kOkOpEnK5yzQt2a+bY3CilPabDu8S/2TQ57/k
	Vl6GV56Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jejYN-000885-Hz; Fri, 29 May 2020 18:16:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jejYA-00087S-Vt; Fri, 29 May 2020 18:16:12 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E96E3206A4;
 Fri, 29 May 2020 18:16:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590776170;
 bh=GH7xgOfWGLC1xYWHZL51BlZXClwRjmPTGXTEkgGZCAc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rs/5+UaBczGURiLrYQDpbv1FEsswVSL+V7v/G+hW1TcMvv846K+Vqn5aLBaf0Zth3
 fKZGLUa+ZDpzeu3pWLeubWt+46pbK9QSLhmRNRxYJwAmddJfx/XAE+WX2bhO/qkD1V
 RDEIci3V4TGyCD05zXZeC4PH9tOmCjRw2P5giNv4=
Date: Fri, 29 May 2020 19:16:06 +0100
From: Mark Brown <broonie@kernel.org>
To: Tzung-Bi Shih <tzungbi@google.com>
Subject: Re: [PATCH] ASoC: mediatek: mt6358: support DMIC one-wire mode
Message-ID: <20200529181606.GU4610@sirena.org.uk>
References: <1590750293-12769-1-git-send-email-jiaxin.yu@mediatek.com>
 <20200529110915.GH4610@sirena.org.uk>
 <CA+Px+wVSwJK-=75chKLjSEe3bPRtV2wD95W5D_pdR0Pw0G470A@mail.gmail.com>
 <20200529130539.GK4610@sirena.org.uk>
 <CA+Px+wVhXoU=BdBmMW0sdPtUrnQH+Kn6dkFdW-n67qEDGceCEQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CA+Px+wVhXoU=BdBmMW0sdPtUrnQH+Kn6dkFdW-n67qEDGceCEQ@mail.gmail.com>
X-Cookie: The Killer Ducks are coming!!!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_111611_044118_21674FFB 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 howie.huang@mediatek.com, Takashi Iwai <tiwai@suse.com>,
 ALSA development <alsa-devel@alsa-project.org>,
 Jiaxin Yu <jiaxin.yu@mediatek.com>, Liam Girdwood <lgirdwood@gmail.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6462452780131972351=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6462452780131972351==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="oP9at/Ymg5VWhwKB"
Content-Disposition: inline


--oP9at/Ymg5VWhwKB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, May 30, 2020 at 01:26:20AM +0800, Tzung-Bi Shih wrote:
> On Fri, May 29, 2020 at 9:05 PM Mark Brown <broonie@kernel.org> wrote:

> > I thought that was normal for DMICs - is this selecting between left and
> > right or something?

> Not sure what is the common name but use the same context here.

> MT6358 accepts up to 2 PDM wires for 2 DMICs.
> If one wire mode is on, MT6358 only accepts 1 PDM wire.
> If one wire mode is off, MT6358 merges L/R from 2 PDM wires into 1
> I2S-like to SoC.

Oh, interesting - so it's essentially a mixer?  Not seen that before but
makes sense.  In any case this definitely seems like a good fit for a DT
property.

--oP9at/Ymg5VWhwKB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7RUWYACgkQJNaLcl1U
h9DzCAf/eSG8ftQqt2zLUXgVK2VdTkdi/4wwtHrEUTnLh92NVK3qVJo7AlDSmwxK
nq/ophHJqVsYmeXUCott6BaJKspd6r+KnrnyJRupzBixtLTx573x7VdREPful5eW
6cVUHkoI0quLHqspblBrZFW0kvt6iwuol2dK0pIORn6rRiaaQlzB9kTmE1BI5Clt
GZrYuFcCzsW7IHYLPWD3Mbl9IsTFius8mjWym4jiglkPFu+8c8bgXRLJE7wGgoGz
x60eHOnNmXwuzOBkrao6njQPWLX+/jtRU5aw4mQ5csVzf662KRmsciNScxyWLHMV
v00PW1FlfI9AGrtQdlSKb1UMyO+Rpg==
=ODhy
-----END PGP SIGNATURE-----

--oP9at/Ymg5VWhwKB--


--===============6462452780131972351==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6462452780131972351==--

