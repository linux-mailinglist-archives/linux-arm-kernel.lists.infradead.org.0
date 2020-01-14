Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D70B13AC9F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 15:50:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tudhfTx3GBtUtr0cNwZBr5knfuBp0VQF/7uK6xk7HPw=; b=TnJyrZ4EwubaUFvg0LZLvMpjI
	G3m9NRZsm1z05X1soEA8O4fusM7ZKTp/JjhiHjLkKSAaPi4Kzc8PtWLBWn9cS3HFwqXqYnkmuCh4/
	GfwflngiqSyB5aIk5vBnVYr9miGFsl2onps5MfpCJjWhBUBVOTz5UScqkAdGTr+D2xPV8jUFCsndw
	VpVtSs3548Vf1NvdhtflVJFqiISvR6Tunegp7I5dYFUdYwJWFpODhnqovhaim5lBcuWZGjiatdq5Y
	KL7+86oppePvSAIvz/q6GhRKpqq828qKdyCPzYDrj3qYVy8s2WcGoaJWbj3JY+KZkhA0VuRibDNoG
	YZxjXoknw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irNWI-00067a-4w; Tue, 14 Jan 2020 14:50:14 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irNVv-00066g-OE
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 14:49:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6nJUJhhumQt0VjlRrHEVPz0UIG6WR97W9B6Dcn2o5bo=; b=amMLuROlHT/tLBsR+5kwzWHb7
 naLAfg3uDbdvdIcSpnBKTj9lHHnRZCrjQukY2soUdDUpHasEnZRnagbYgTHyiHQlKJeHF//0nrZFK
 WLr+qr0loLSfVMA5aBNaftPEU3fCh1PvgjHcwFkbtPPYOHhak//E+0XGT2DyOyHtjc3GM=;
Received: from fw-tnat-cam7.arm.com ([217.140.106.55]
 helo=fitzroy.sirena.org.uk) by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1irNVp-0008Pd-SH; Tue, 14 Jan 2020 14:49:45 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id 32656D01965; Tue, 14 Jan 2020 14:49:45 +0000 (GMT)
Date: Tue, 14 Jan 2020 14:49:45 +0000
From: Mark Brown <broonie@kernel.org>
To: Takashi Iwai <tiwai@suse.de>
Subject: Re: [PATCH v6] ASoC: Add MediaTek MT6660 Speaker Amp Driver
Message-ID: <20200114144945.GU3897@sirena.org.uk>
References: <1578968526-13191-1-git-send-email-richtek.jeff.chang@gmail.com>
 <s5htv4yfpnt.wl-tiwai@suse.de>
 <36357249c6ed4a989cd11535fdefef6e@ex1.rt.l>
 <s5hwo9uqrbu.wl-tiwai@suse.de>
MIME-Version: 1.0
In-Reply-To: <s5hwo9uqrbu.wl-tiwai@suse.de>
X-Cookie: Programming is an unnatural act.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_064951_790384_E6841D02 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "tiwai@suse.com" <tiwai@suse.com>, "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
 Jeff Chang <richtek.jeff.chang@gmail.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 jeff_chang <jeff_chang@richtek.com>, "perex@perex.cz" <perex@perex.cz>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============3961056664918026590=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3961056664918026590==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="/7+LvQqw8N5lf/3J"
Content-Disposition: inline


--/7+LvQqw8N5lf/3J
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jan 14, 2020 at 11:12:53AM +0100, Takashi Iwai wrote:

> So, for the codec, it doesn't matter at all about the signedness and
> the alingment of 32bit / 24bit of the incoming signals, but magically
> handled as is?  Interesting...

On the playback side CODECs sometimes don't care that much, they
clock data in and if it stops early they just go on to the next
sample with the width being used to configure filters or
something.

The signedness is a bit more surprising I have to say :/

--/7+LvQqw8N5lf/3J
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl4d1PgACgkQJNaLcl1U
h9D7qgf+KdBUSPJ38rdTjpyt2K7lYvMyXL5+ZUVws3WSh8Mf6NKFkc2TRAtLJLMm
cqQxLWHy6m4R7X+tZtn2iwoi5f+RDi8uYHOcvSfU9qoI5KQeCgHQjXwaU6tnx7fx
UeeJ0kwtqgsO3xcGpn6DUjoujSvxI9dyr83h0MS3EhX216xvzEDBgF/ujsbnYfCj
ukYd9ZB/jD9aFtelkTHgJh6zeKPkcLTLhBB+/i3AalSM+yBR2eLgXkVUGBB7pPMD
k4LL/2R2f91ziU7J/6NgZuO+X6RzXAmYNDs2nH28v9sQotj1KTXXFl3/t5L42zm7
3XPg4S+5Q5SefOGfY4kvylDWjank2A==
=ff88
-----END PGP SIGNATURE-----

--/7+LvQqw8N5lf/3J--


--===============3961056664918026590==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3961056664918026590==--

