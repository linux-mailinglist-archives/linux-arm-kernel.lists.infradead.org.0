Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64B9F1E7DE7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 15:06:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+H4Pxp5vcZbEMUciKY7+ed39KZ6u5gdOKyEXrlA7Ukw=; b=XJ3q9wlajeVqzKtZPSoVp/YWM
	U8GnnUNUsrcfqGajpSpds8jKYKHWcnHFWO54ITBtf4AnTLWfzauuhdgyaL3HtFuF61sdqnZWHbkMq
	btN8bVnlr0fKFyKnbt9/EWlWG4msvlpqSiT+9c3kXJq/Xb0Xx3Z+MYqs9UrDCuBxaFkjB/d6cAhXi
	1ZV8Gv8mOyg21mOkFixLJq6/ad9FzX6tCNbOVkzyjOXiAu1zg5ErORM1PvhXbrrVn+w3uEB7s6oAn
	uOT9ib0bm7F/R1BtgZXOa61mfhJeZFRB6lKE1wNsQZM/T9gNGnN0PtqXKgFd8RY6CItIOSf5EJzjK
	FOHHhAMYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeeiB-0002tT-Kj; Fri, 29 May 2020 13:06:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeehl-0002pJ-QZ; Fri, 29 May 2020 13:05:48 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B714E206B6;
 Fri, 29 May 2020 13:05:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590757543;
 bh=iujYvPFgp+kMyGs/HHL6d27m94u1qo0gtVVFdFB0M/c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=s2sCbN+iq+BEr27d1TkCSeB+hJjmmTUlzYgQtmKUT88ehDy9jx8UgGGIPErHPLR54
 C/vcqmkGF5HZUV/dHn3msmqyvaFSHcBlTibGinAm7Kw+KMrh27uciL4Etw9ZyxZ5Pv
 HrKoTIT7/v9KH+mx6J/GeAsPi6tuIjURhuo22PFY=
Date: Fri, 29 May 2020 14:05:40 +0100
From: Mark Brown <broonie@kernel.org>
To: Tzung-Bi Shih <tzungbi@google.com>
Subject: Re: [PATCH] ASoC: mediatek: mt6358: support DMIC one-wire mode
Message-ID: <20200529130539.GK4610@sirena.org.uk>
References: <1590750293-12769-1-git-send-email-jiaxin.yu@mediatek.com>
 <20200529110915.GH4610@sirena.org.uk>
 <CA+Px+wVSwJK-=75chKLjSEe3bPRtV2wD95W5D_pdR0Pw0G470A@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CA+Px+wVSwJK-=75chKLjSEe3bPRtV2wD95W5D_pdR0Pw0G470A@mail.gmail.com>
X-Cookie: The Killer Ducks are coming!!!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_060545_891832_95EF5B43 
X-CRM114-Status: GOOD (  10.48  )
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
Content-Type: multipart/mixed; boundary="===============6876339908921672999=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6876339908921672999==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kswDJesP0akhmDn8"
Content-Disposition: inline


--kswDJesP0akhmDn8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, May 29, 2020 at 07:22:43PM +0800, Tzung-Bi Shih wrote:
> On Fri, May 29, 2020 at 7:09 PM Mark Brown <broonie@kernel.org> wrote:

> > What is DMIC one wire mode?  This doesn't sound like something I'd
> > expect to vary at runtime.

> It means: 1 PDM data wire carries 2 channel data (rising edge for left
> and falling edge for right).

I thought that was normal for DMICs - is this selecting between left and
right or something?

> The setting shouldn't and won't change at runtime.  Would you suggest
> putting it into DTS binding?

Yes.

--kswDJesP0akhmDn8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7RCKMACgkQJNaLcl1U
h9Dt/gf/avkSzsxeit+z9NWHGp2tenf6Da8cB10e6pe1usBAJnkn+iqx1Si29kpO
V/fPJbNJY31D3PVd9dnyKQs4ASO+IbdUS2URSUDI795vnUy+fZ+5gu7CWoTc9LVy
PvRBFNaVmKrSxHTR3dgeFs3Ehf1cTKnxhL3wXnqg0WrN5tXSzChYnsjz7vHs2aqo
Rt6eiUaP3GKEyOLUeI/ND7iucB6eWqh/1RcDuGobJNZkhaVnh4Vk2RbbbJoREPki
ni2aN+zVokiZj+JywoG5DP7488T3JdEjWJ84dHAAtb9QhQoZwwO75nHWXhPvRr0q
ATS32LCIvu4eZCYa7kNcUqItzPKNDA==
=TM61
-----END PGP SIGNATURE-----

--kswDJesP0akhmDn8--


--===============6876339908921672999==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6876339908921672999==--

