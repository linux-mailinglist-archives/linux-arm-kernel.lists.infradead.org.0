Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A6593392B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 21:40:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=i2TQj3VK+LY+9YSrZy1xluyyPC1qCNZsM9MUv6fBXiY=; b=AVDdkaRHPh4Ix4aDm/tvRB+3o
	opfI7W/qNfHCbcDBXBD7x15044HEPGx0qnYtSPLkyn/6MoiJyLXaHpFkyI92ModJI5jBCmWuk939v
	W6goAWUA1n2WW+k482grrQow+BH6PGhvZeNCtR8vUQxqJ87KIq2tRhOZH/GHPwAmeGs3kmrlf+aZK
	UpFHBXIwIFGzy9NMFtsyAuF+QRzedb/95zpzkwUNdck3Me1pwgZP8sp3TVsM6UyYjZt5d2ynN6UZZ
	+b6P5Oq1TZVpMeks5ukK9Pf6Cj+8XuQtRkE3JfpbwKXuoV4wtqFq4FpVPnKUl6vo9JIv502TKu0is
	N2YkawhAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXsoK-0006fP-O4; Mon, 03 Jun 2019 19:40:00 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXsoE-0006ex-Fb
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 19:39:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VWDF/wo4nmqBx8MpCkyt+Tdq3nZlay3xTvmbElXHcrM=; b=arUHyqsuWR8lhBwBTa1ojeE6j
 skRqS+y7OWCsVREkCmbky6jj1MB/p+D/J2QTwFMT3HSOzjJe3JvM6bWHIrJ+kpbZJVxTo2mgfkGPU
 ab/SVpZF7Srovvo+Gy0wpjdsal402VraMZjWUgYkM1yEqbZmyoAma0RzUFZyn/PNmHC+g=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=finisterre.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hXso7-0003pN-KP; Mon, 03 Jun 2019 19:39:47 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
 id A80BF440046; Mon,  3 Jun 2019 20:39:46 +0100 (BST)
Date: Mon, 3 Jun 2019 20:39:46 +0100
From: Mark Brown <broonie@kernel.org>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH 0/6] mailbox: arm_mhu: add support to use in doorbell mode
Message-ID: <20190603193946.GC2456@sirena.org.uk>
References: <20190531143320.8895-1-sudeep.holla@arm.com>
 <CABb+yY1u5zdocgV=HhQcHWQa_R7ArtFqndU5_T=NsPHJ=jwseA@mail.gmail.com>
 <20190531165326.GA18115@e107155-lin>
MIME-Version: 1.0
In-Reply-To: <20190531165326.GA18115@e107155-lin>
X-Cookie: The other line moves faster.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_123954_681186_EE79DA9B 
X-CRM114-Status: GOOD (  15.55  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Arnd Bergmann <arnd@arndb.de>, Jassi Brar <jassisinghbrar@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Cristian Marussi <cristian.marussi@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7271049296881377722=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7271049296881377722==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="azskX66S5GHWoEK7"
Content-Disposition: inline


--azskX66S5GHWoEK7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, May 31, 2019 at 05:53:26PM +0100, Sudeep Holla wrote:
> On Fri, May 31, 2019 at 11:21:08AM -0500, Jassi Brar wrote:
> > On Fri, May 31, 2019 at 9:33 AM Sudeep Holla <sudeep.holla@arm.com> wrote:

> > > This is my another attempt to extend mailbox framework to support
> > > doorbell mode mailbox hardware. It also adds doorbell support to ARM
> > > MHU driver.

> > Nothing has really changed since the last time we discussed many months ago.
> > MHU remains same, and so are my points.

> Yes, I understand your concern.

> But as mentioned in the cover letter I did try the suggestions and have
> detailed reasoning why that's still an issue. In short I ended up
> re-inventing mailbox framework with all the queuing and similar APIs
> for this. Worse, we can't even add an extra node for that in DT to
> describe that. It can't be simple shim as we need to allow multiple
> users to access one physical channel at a time. We have use case
> where we can this for CPU DVFS fast switching in scheduler context.

Forgive me if I'm missing something here (this is partly based on
conversations from months ago so I may be misremembering things) but is
the issue here specifically the doorbell mode or is it the need to have
partly software defined mailboxes implemented using this hardware?  My
understanding is that the hardware is more a component that's intended
to allow potentially multiple more complex mailboxes to be tied to a
single hardware block than a complete mailbox in and of itself.  It
feels like the issues with sharing access to the hardware and with the
API for talking to doorbell hardware are getting tied together and
confusing things.  But like I say I might be missing something here.

--azskX66S5GHWoEK7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlz1d4EACgkQJNaLcl1U
h9DPCAf+JRiDUd1tJfCcPY+46Wimb3qwUoLm6PBxRtYDQ/MfUIDCdZqdlpdKdzep
91J7xUxiJOrKptekK211kp4CPPg9bH4feA0SSrCv5MPIt9miVaaFkM2POLhBqlPz
YHdsY96fpNWiJnDIh9vbRkcWP13HAjbMfuiXDTO/VOBsPzm5Dv+zOZ7K015cgcko
pxasNY1+ewxpQoahe7JAOtXv3pV4JG1TBe/ZxtH2ONxGKhgFphVEsTRqm0bwOJMi
c360aWgOB7laJEbFoGu+gfxXt0J3QzlRPFDVQfwphuzYPWJ78FaVYS0k46VN83rH
XWWjScjVo5dNpkb9dyUaDOXG4YVyBQ==
=L6Hk
-----END PGP SIGNATURE-----

--azskX66S5GHWoEK7--


--===============7271049296881377722==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7271049296881377722==--

