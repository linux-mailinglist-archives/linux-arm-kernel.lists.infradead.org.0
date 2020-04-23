Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80E421B59AD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 12:53:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=weLmQk8jSoobqDjhsxUahO5JEbGmqE2WJZ3fLeU3q4k=; b=RzdU98JFWnKA5rcsm15Mq8FdD
	QSNr3JxSw8dZRehAxnfLljAbKXu+4DhiFtVvnvxfkLJbs3iiDzeVu8AZB+s5fA9nCkr7DCkHKy8Bs
	VzrHOFoy6KJBhciJgM7OSykBTgFdsooqRqoWzrFrILOrzkYRI8MzjhqIJF7NdT3IgEIQ3CN5L48gv
	+692EGAInC8nntOPvAr95iMyYUZQcw/ZTbTloOILxqWHo5ajheD2F7880UTz+b5sKUELFOwoGMf7T
	af6lp9kEbj2SsggJX2KCOhE3N5UNw35o9S4rSrLNODxuG/8JGknQxT5EHOKhFz92ireHq/dxXsCtu
	8lSMMWBuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRZU5-0005cp-42; Thu, 23 Apr 2020 10:53:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRZTw-0005bT-P9; Thu, 23 Apr 2020 10:53:25 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 679782084D;
 Thu, 23 Apr 2020 10:53:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587639200;
 bh=RjwnHTP2eva16wVTq1KWCo6EOtNgpvCv7s8zsms1nJw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mkAUwcab26oFt2hNW27sDJNILiBQyTNneBROjROOu6MrPN+9Ue90Xf06bn7/4sBro
 dQ6wB4yiELfVhIgTGHNS7r5SfK5Di2qBsbwu1j00ro7eZkozm6+z8RblOPr+qSxRxr
 jAj6PRaCpCth8Detqa5YBRTPTYU8IC78y9smt6bA=
Date: Thu, 23 Apr 2020 11:53:17 +0100
From: Mark Brown <broonie@kernel.org>
To: Ranjani Sridharan <ranjani.sridharan@linux.intel.com>
Subject: Re: [PATCH 0/4] ASoC:: don't use snd_soc_rtdcom_lookup()
Message-ID: <20200423105317.GE4808@sirena.org.uk>
References: <87d080unyx.wl-kuninori.morimoto.gx@renesas.com>
 <d20cc18d0fa10b52437e0ac29ea98792e0a3d45d.camel@linux.intel.com>
 <874ktbuq4j.wl-kuninori.morimoto.gx@renesas.com>
 <ebe305743178c4548b779f25e6400863094ef5a9.camel@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <ebe305743178c4548b779f25e6400863094ef5a9.camel@linux.intel.com>
X-Cookie: This unit... must... survive.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_035324_835798_F6A3AA2C 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Cezary Rojewski <cezary.rojewski@intel.com>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Jie Yang <yang.jie@linux.intel.com>, alsa-devel@alsa-project.org,
 Liam Girdwood <liam.r.girdwood@linux.intel.com>,
 Richard Fontana <rfontana@redhat.com>, Shunli Wang <shunli.wang@mediatek.com>,
 YueHaibing <yuehaibing@huawei.com>,
 Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
 Jiaxin Yu <jiaxin.yu@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 Vijendar Mukunda <Vijendar.Mukunda@amd.com>,
 Stephen Boyd <swboyd@chromium.org>, linux-mediatek@lists.infradead.org,
 Eason Yen <eason.yen@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 Takashi Iwai <tiwai@suse.com>,
 Ravulapati Vishnu vardhan rao <Vishnuvardhanrao.Ravulapati@amd.com>,
 Colin Ian King <colin.king@canonical.com>
Content-Type: multipart/mixed; boundary="===============2830313904120649022=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2830313904120649022==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vv4Sf/kQfcwinyKX"
Content-Disposition: inline


--vv4Sf/kQfcwinyKX
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 22, 2020 at 03:39:58PM -0700, Ranjani Sridharan wrote:
> On Thu, 2020-04-23 at 07:12 +0900, Kuninori Morimoto wrote:

> > I'm thinking removing lookup function is nice idea,
> > but don't feel pressure to it.
> > "Now you know it" is very enough for me.

> I am having a hard time visualizing a scenario where we would have more
> than one platform component. And even if we did, I'd think that the
> driver registering these components would make sure to not duplicate
> the driver names. Of course, we dont really check if thats really the
> case.=20

The only use case I can think of is a link where there's a CPU on both
ends for some reason.

> Do you think it makes sense to add that check when registering a
> component? If we do that, then keeping snd_soc_rtdcom_lookup() might
> not be such a bad idea.=20

Yeah.

--vv4Sf/kQfcwinyKX
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl6hc5wACgkQJNaLcl1U
h9Cu8Qf/cq9pFoV56i2+DRs+jmMJicnREMu0OSge/i/ggbrKqjQfW0sQhCxMsp+x
qbe1NP5lu+wveiQR7uwLVFWSDCwp2aYKsu77bQ32anHS5v6CssSflkOaCGYp802q
g3tYpyR2vndnG0zwa3SZHn71Qz50l84H9rPJScjwipjpK1PkImOng/M8BMsC4pOe
vhgo+0xa4mW98nTdrAruuoE4Ij6AHkYRr1LDoAaVn3X37lgpdenxFTLJLouhARSl
PFnem/27PssfsAWoMHMS++QjB+Tf+UdZHi0yzpHpWRVqQhUpisV4uMdsv5yS//uN
P/wwtqV9ta83VVcMYs3bMxa64vsNsg==
=8wH0
-----END PGP SIGNATURE-----

--vv4Sf/kQfcwinyKX--


--===============2830313904120649022==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2830313904120649022==--

