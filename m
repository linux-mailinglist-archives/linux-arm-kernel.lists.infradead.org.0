Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC463144456
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 19:33:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qO2j9udg8CgMkHVl4LHGV5CBSXly2in9HfFVU1BXrSk=; b=ga17oaISHfN2WV+zyfDRKzF+r
	205fQlecOejt+6YKc+EesXoHlvmr2odAuujJEEvstjbX/8b2rrpDdxz6NFaz4gFinskZKsTe+MHuU
	dp+ITsOmn6lyIUCT6MOCJbR2tZdrFG1bgDHBMtWFGwtEMgoS58xgzzn/rHkLy//ZcQHnUkxzsUJcX
	EhTyGj9nK/ltwpSMUfE+WcwPk1THRhn6KL53P/ttYkpRsCzgcHrEMR0Y58FkkPyy8WX5vFC163mqO
	jkevPy/+Hmrd++8sp+j6iNGN7812DUGof5oNEZSKpn08QzCIT+o+Vc9tsT/6/KMDs/000xp2lWRDc
	s3uM76EyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ityKo-0007fZ-Pr; Tue, 21 Jan 2020 18:33:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ityKb-0007eb-45
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 18:32:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1DC861FB;
 Tue, 21 Jan 2020 10:32:51 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2F7533F6C4;
 Tue, 21 Jan 2020 10:32:50 -0800 (PST)
Date: Tue, 21 Jan 2020 18:32:47 +0000
From: Mark Brown <broonie@kernel.org>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH v2 2/2] drm: sun4i: hdmi: Add support for sun4i HDMI
 encoder audio
Message-ID: <20200121183247.GL4656@sirena.org.uk>
References: <20200120123326.30743-1-stefan@olimex.com>
 <20200120123326.30743-3-stefan@olimex.com>
 <20200121182905.pxs72ojqx5fz2gi3@gilmour.lan>
 <20200121182937.2ak72e4eklk4za2u@gilmour.lan>
MIME-Version: 1.0
In-Reply-To: <20200121182937.2ak72e4eklk4za2u@gilmour.lan>
X-Cookie: You too can wear a nose mitten.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_103253_208744_25DF593E 
X-CRM114-Status: GOOD (  14.42  )
X-Spam-Score: -0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Stefan Mavrodiev <stefan@olimex.com>, David Airlie <airlied@linux.ie>,
 linux-sunxi@googlegroups.com, Vinod Koul <vkoul@kernel.org>,
 "open list:DRM DRIVERS FOR ALLWINNER A10" <dri-devel@lists.freedesktop.org>,
 open list <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 "open list:DMA GENERIC OFFLOAD ENGINE SUBSYSTEM" <dmaengine@vger.kernel.org>,
 Dan Williams <dan.j.williams@intel.com>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============7054516280425095476=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7054516280425095476==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gwtGiOGliFx8mAnm"
Content-Disposition: inline


--gwtGiOGliFx8mAnm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jan 21, 2020 at 07:29:37PM +0100, Maxime Ripard wrote:

> > Mark, our issue here is that we have a driver tied to a device that is
> > an HDMI encoder. Obviously, we'll want to register into DRM, which is
> > what we were doing so far, with the usual case where at remove /
> > unbind time, in order to free the resources, we just retrieve our
> > pointer to our private structure using the device's drvdata.

> > Now, snd_soc_register_card also sets that pointer to the card we try
> > to register, which is problematic. It seems that it's used to handle
> > suspend / resume automatically, which in this case would be also not
> > really fit for us (or rather, we would need to do more that just
> > suspend the audio part).

There's a drvdata field in the snd_soc_card for cases like this - would
that work for you?

--gwtGiOGliFx8mAnm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl4nQ84ACgkQJNaLcl1U
h9DTsQf/ZXhHyM/3fgvqMJFm1rMy0RUSq2MP43zhb1/fioi7vxLOoPvc5jQzGwUw
0WCUnqbv87LZXwtMbvIx1TS2xVzFt1EvAuRX+XwwVYlmTP2svfRkN+pjdNGscEcY
Y9dO1Klqekk2WyzZsQ9fkDM8hoJtjXZ0oFRrPlUsae9jbmymykgqmK48XLVKFd3x
AaeVd0BuUIXA+6jlFqTBgaIA35TffdliRrgSxjwxoy3Jk+wrW562WgM/isGD2qjK
Jn+alQQhlwRYsN3Xmuni7Fd4P9zf5r7o8twcyijEOH/Um76H8d+vSjrwI2tCJfAm
c0+F7U3m8NTne3fCjVXvL4/ipHzMGQ==
=km+F
-----END PGP SIGNATURE-----

--gwtGiOGliFx8mAnm--


--===============7054516280425095476==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7054516280425095476==--

