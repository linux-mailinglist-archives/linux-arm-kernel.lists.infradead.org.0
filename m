Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 235961A9858
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 11:19:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZEG0rfq0RTqiqZSUCg8A059RYdKJeARZ7/BwmOPCykY=; b=NkxijYkYV9jZLQL4UWibJDwPn
	uSSlakaUbn150yPEZnDiYOjODL4X/FhYRFEHIMA5840iep10JzPVTWcE5emBjkFCVcGV7y/oEiSBV
	8e16V2TyVBZfoO16T0YTjd0QsB3XjxNvf4MXKExYSVcOjOXrB3DgAGR7u8orm8OgrypaIJZsTQjkf
	j1/LLG0X+gFQdULJY2WYbxLEq9+VyuUt5VubqZdWAMQcgSS3ZYMQHnLhepGmkQ9ynZulsl7+O4IIi
	sdU0IcNUMAsVjPqkUEq3Sgucqh26eZKbWsnY2sMCGPMTIaptP8e2qqGkj7+GkYK/pGzWlf1YH+3G4
	6aGwwLPSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOeCs-0001UI-O8; Wed, 15 Apr 2020 09:19:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOeCj-0001TX-TI
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 09:19:35 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1BC4D206A2;
 Wed, 15 Apr 2020 09:19:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586942373;
 bh=okUruJDPJKacfzZ0/FQ2AYhcvGKcB0ud1pJhEHMTmco=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BDYTulwRtubO/StyzvoxSGb4Z86eU025StVoxdQmaKKQdMWZuQ6VM4J01YUyn2odB
 guw1G6SfYFsGjxMWQ8oT6Nqc1trs/EnoFvRMkLU5kwx9t6UBowe5OQK4I7IPadnP4P
 wusKq93W4BME6BmLB0JXCok9AbgT0+cFAuA4en0U=
Date: Wed, 15 Apr 2020 10:19:31 +0100
From: Mark Brown <broonie@kernel.org>
To: Robin Gong <yibin.gong@nxp.com>
Subject: Re: [PATCH v7 00/13] add ecspi ERR009165 for i.mx6/7 soc family
Message-ID: <20200415091931.GA5265@sirena.org.uk>
References: <1583944596-23410-1-git-send-email-yibin.gong@nxp.com>
 <VE1PR04MB6638AE84CD338AE1CF26FDFD89DB0@VE1PR04MB6638.eurprd04.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <VE1PR04MB6638AE84CD338AE1CF26FDFD89DB0@VE1PR04MB6638.eurprd04.prod.outlook.com>
X-Cookie: Hire the morally handicapped.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_021933_986830_C92B145B 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "martin.fuzzey@flowbird.group" <martin.fuzzey@flowbird.group>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: multipart/mixed; boundary="===============1105986559231021095=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1105986559231021095==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gKMricLos+KVdGMg"
Content-Disposition: inline


--gKMricLos+KVdGMg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 15, 2020 at 08:41:17AM +0000, Robin Gong wrote:
> Ping....
> On 2020/03/11 16:35 Robin Gong <yibin.gong@nxp.com> wrote:
> > There is ecspi ERR009165 on i.mx6/7 soc family, which cause FIFO transf=
er to

Please don't send content free pings and please allow a reasonable time
for review.  People get busy, go on holiday, attend conferences and so=20
on so unless there is some reason for urgency (like critical bug fixes)
please allow at least a couple of weeks for review.  If there have been
review comments then people may be waiting for those to be addressed.

Sending content free pings adds to the mail volume (if they are seen at
all) which is often the problem and since they can't be reviewed
directly if something has gone wrong you'll have to resend the patches
anyway, so sending again is generally a better approach though there are
some other maintainers who like them - if in doubt look at how patches
for the subsystem are normally handled.

--gKMricLos+KVdGMg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl6W0Z8ACgkQJNaLcl1U
h9Cl5Af/RsVCkwJ2F2y85wo6iV4ieGbzZRxbI7skDohZNDOFRyf1i8kEXUex8Pyb
OHjSzFguwzTlhgg6PMkp8R929OiFE3Bu8vupFdNdaw2fKZTFNoHInLjcqOtuDwSW
N4+v2rbYrlGybSYpMvl8tDz3tu/eQl1cOmdSg/UWDUpStyCrzsAMcaKJA5kEJavD
NoAHcE2LKjVeo34XmpGWOI8xiAgGqDLm27zQ2JGt6nmZxR33BS3HDfz0Fc5kCnut
XVx7ggmvMMXvERR4naP/m/c9EkZ470SjZnwYtO71L9ncM62YJdHDogRS8t0ZWn3B
sNTl4T+hhMymPnKqvdtRch+txbGv0A==
=lwLW
-----END PGP SIGNATURE-----

--gKMricLos+KVdGMg--


--===============1105986559231021095==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1105986559231021095==--

