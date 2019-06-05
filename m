Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27B4F364E8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 21:46:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ef9Ff8AAqh65gs1em51+J7fjXOmXpFQ/zGkpIkOpYWc=; b=m51CtiQZFs6SxjmfTF3HEOVm/
	AxIGlp1T4B1kWvA5LMhc7buGc6MxqdSClij7mYKOxpgPcVwOXWS8tzviyEk9HVCKv7uOk/RSQ3s/E
	+m/xc/+txnB1jN5rChJVJZq6BIKhqxKCXsXRdX6egwUlbP4RZsvXuw82IAX1/AeEO4d7L8SLm+89A
	wJl/Gbr1MlkzEltdc1PQxVutSQzpKPYi29KGd3QAaFkUBcqs/HfDISheZ9e5lWK0Ya2G2gMPqzVbU
	0Y39U0R70aPJa4sNwb2R/iDrIuS2PR8wQ9Bn4gio1/Y95iezhN9R7UscoZBY+DOPQYit8vf/NB/ed
	fsY72d5qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYbs0-00054g-So; Wed, 05 Jun 2019 19:46:48 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYbrt-000549-MW
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 19:46:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kZOzUUZ1da7mPtdEIr5pBNywzNIi07uBPLrGLgK0d5Q=; b=tVdH1grPqhyZ6eMQy0JywOyu1
 oxuYOmt0jEzsT+tK0qeH10zU3cNaGmrJe9/RmXC0bVgr5rzNqd6iFqx1GoPFdnw6JU0tK4+LzkWzF
 1Zm1xvMIrZgOmSwzrlW/wQPpWqgEPR/TMWNQ1uvGsUjK48q/dMuyAMe5CjZ3aQkMsHudE=;
Received: from [2001:470:1f1d:6b5:7e7a:91ff:fede:4a45]
 (helo=finisterre.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hYbrp-0001PF-B6; Wed, 05 Jun 2019 19:46:37 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
 id 9A9B0440046; Wed,  5 Jun 2019 20:46:36 +0100 (BST)
Date: Wed, 5 Jun 2019 20:46:36 +0100
From: Mark Brown <broonie@kernel.org>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH 0/6] mailbox: arm_mhu: add support to use in doorbell mode
Message-ID: <20190605194636.GW2456@sirena.org.uk>
References: <20190531143320.8895-1-sudeep.holla@arm.com>
 <CABb+yY1u5zdocgV=HhQcHWQa_R7ArtFqndU5_T=NsPHJ=jwseA@mail.gmail.com>
 <20190531165326.GA18115@e107155-lin>
 <20190603193946.GC2456@sirena.org.uk>
 <20190604093827.GA31069@e107533-lin.cambridge.arm.com>
MIME-Version: 1.0
In-Reply-To: <20190604093827.GA31069@e107533-lin.cambridge.arm.com>
X-Cookie: The other line moves faster.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_124641_886508_BCCB2A4A 
X-CRM114-Status: GOOD (  14.39  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: multipart/mixed; boundary="===============8005842912659444244=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8005842912659444244==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="O/1O6NUaCrlCPhw5"
Content-Disposition: inline


--O/1O6NUaCrlCPhw5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 04, 2019 at 10:44:24AM +0100, Sudeep Holla wrote:
> On Mon, Jun 03, 2019 at 08:39:46PM +0100, Mark Brown wrote:

>=20
> > It feels like the issues with sharing access to the hardware and with t=
he
> > API for talking to doorbell hardware are getting tied together and
> > confusing things.  But like I say I might be missing something here.

=2E..

> So what I am trying to convey here is MHU controller hardware can be
> used choosing one of the  different transport protocols available and
> that's platform choice based on the use-case.

> The driver in the kernel should identify the same from the firmware/DT
> and configure it appropriately.

> It may get inefficient and sometime impossible to address all use-case
> if we stick to one transport protocol in the driver and try to build
> an abstraction on top to use in different transport mode.

Right, what I was trying to get at was that it feels like the discussion
is getting wrapped up in the specifics of the MHU rather than
representing this sort of controller with multiple modes in the
framework.  It's important for establishing the use case but ultimately
a separate issue.

--O/1O6NUaCrlCPhw5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlz4HBsACgkQJNaLcl1U
h9ByUgf/UsJL7ity8FKfFJ8RCFQnmEJwwqTPF2rr5baP6c9jYRf2nJx1ZEL8CBQQ
NbUfRcVcpQG2901CsRWwzKGEQ6ISkphLyaissRoh2FVJEJkeZkMkt89BD0O5h3/G
NRuofyB0qDaX2uMC81S+EQgpu/oB8uFgIOQ0Hp7tpz116b50qf7tb0c+ww6OYlTD
CQJK8XRRLfA+eQ1NgF6mLYiWWda6+xSs79QsrFsypRLgAChputP3NkM4lDFQPYeH
X2zMWOqPnQ0S8y5Nc8uIxkUMaQ8v4rN8xYjLjE8dTNjn62omGAo6wJFavlozdn6X
vC4syRan227VJQuJ+YZ83T29+f5TUQ==
=POCs
-----END PGP SIGNATURE-----

--O/1O6NUaCrlCPhw5--


--===============8005842912659444244==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8005842912659444244==--

