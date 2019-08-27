Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D5819E605
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 12:46:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ahFp9B3QdJd8gDqgV9BMhJTHn+m5zQyxbgBu7m8esOw=; b=qQdvMov4DmSEXjapiwEiHtRl+
	vqHSymQXOj4Chs98bWsURC8HL+osf+l8p0oofCbN/INx4lhCIEMeajcQCP1HtqoOpgliX3BJ3QWn7
	u6rzKwMFz8PwGlnYs2YrvYWyg2PIT9T5RqRJb3bmwN2H5ApbyoSycYbZ3WaXi/ka5MPBnyq3XojWu
	SHYVT9W9giS+B+dyE1Y45mQXt2FKhOjQZ3qDxgo7U/KvEnmC5eZ7n7ptowSrwzhibiAoGT9N8YJOG
	hkuRvGhDpw4wMpoj/a/5GjFDY/5kJ5sYSNHxKqt6/UqNff/F6VEpzM5mD/rLB5K+nukcmvDMlk+Eg
	e60KBTx4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Yzl-0004x6-GP; Tue, 27 Aug 2019 10:46:37 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2YzV-0004wg-Gj
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 10:46:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8QAAUf3vEixa4AQLyanZm3bk3o3NCepVwowzlteGrV8=; b=SpcTXMiQRD7y+zEJj7wHEMuF4
 BdHm2bdibtEv5B+rAJ0/EF+oWbDSmWg9KZTTH95faBeQs4OseJpdk1lTxb4kOQMe/faiAgyE9jVPL
 v3iJ12dlMyxSwM0jmxfpZoy9dG7xoOY4qvJ+kJnde+0Xempz1BfkDPGyZejBx0KdfnbCM=;
Received: from [92.54.175.117] (helo=fitzroy.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1i2YzP-0007t4-Tr; Tue, 27 Aug 2019 10:46:15 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id 8B4A3D02CE6; Tue, 27 Aug 2019 11:46:15 +0100 (BST)
Date: Tue, 27 Aug 2019 11:46:15 +0100
From: Mark Brown <broonie@kernel.org>
To: Chen-Yu Tsai <wens@csie.org>
Subject: Re: Applied "ASoC: sun4i-i2s: Fix the MCLK and BCLK dividers on
 newer SoCs" to the asoc tree
Message-ID: <20190827104615.GZ23391@sirena.co.uk>
References: <0e5b4abf06cd3202354315201c6af44caeb20236.1566242458.git-series.maxime.ripard@bootlin.com>
 <20190820174105.96899274314F@ypsilon.sirena.org.uk>
 <CAGb2v64vzcZbXqfW27cgobpQ-AXQjb2zanqotAR0ezw+6KCdpw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAGb2v64vzcZbXqfW27cgobpQ-AXQjb2zanqotAR0ezw+6KCdpw@mail.gmail.com>
X-Cookie: Don't SANFORIZE me!!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_034621_560370_93E340FF 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linux-ALSA <alsa-devel@alsa-project.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Marcus Cooper <codekipper@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============6843387399915410799=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6843387399915410799==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lIC76ItX9S6XOZ/S"
Content-Disposition: inline


--lIC76ItX9S6XOZ/S
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Aug 27, 2019 at 05:25:21PM +0800, Chen-Yu Tsai wrote:

> > From: Marcus Cooper <codekipper@gmail.com>

> The authorship of this patch looks to be wrong. Maybe it's a tooling issue.
> I imagine it might have happened if Maxime created the patches using
> `git format-patch` with his @bootlin.com address, then sent them with his
> @kernel.org address, and `git send-email` swapped out the "From:" header
> and prepended it to the body.

No idea.  In any case it's kind of hard to fix at this point
since there's a merge in the way.  This is why I like using
branches for things but Linus doesn't :/

> Either way the "From:" line looks odd in the commit log.

This is what git format-patch does when sending stuff via e-mail
if the author is different from the sender, it uses that to
override things.

--lIC76ItX9S6XOZ/S
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1lCfYACgkQJNaLcl1U
h9Di7ggAgNoZ8rQn7YvVm4cejhwJBcdMuUs1+pBMAGoZh58gwfOMXjpmjeBhjc/F
tSA0tLaf56ov+6K+icWnoYNv3uAMWBA1jimgQTS/ZOPTnfNPQ94/StKIHQKDxj+U
o4MwOkNdSc/ilIGdzRYa9mbTszAjTcB8zylCWd8ONcxTM8RxADVVlVSNXinS7ZnI
cslI9umNwU7+S8WoO7Q5gdk0cOHWmEjW12kgv6LsT6GyLrdlY08Nylb+uaLX+cQP
Tfoym0mSqCbh5/yCHO5tffAuvsMTUdWw+Pid75EkdaY/u4zmnn0+4D5n64a/wfmi
o2fP8Rqk1GMMBWKc42wqfjqulKd53A==
=onS9
-----END PGP SIGNATURE-----

--lIC76ItX9S6XOZ/S--


--===============6843387399915410799==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6843387399915410799==--

