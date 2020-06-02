Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 315FF1EB8F1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 11:56:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AP1AuC6eTssvOfa9ZprmBbVIwxLEDq/JhTyDG0YXJGg=; b=F0Ia8qXUAYG2ALUr8lZ8dLVId
	FBxiADAn63EEzj6kUKNi17wQypJWitQAbwLFomD4386KRg62CwZhuP+o2uersbj3tB1Wz9qXYqlHR
	BQ8kFrc/YJasBtZ6fF+P4oRenM9xhsDg3BQS+RqrWoD6tepIjXiJhJIccN/ewtFV7W9vVvXt6iZGZ
	t+l/IjeQlZlRDp48/Ut5ANWou5Bmy1ymVXz5HjCTFPAfM2tU6e6mFros/ARzck+qveRTgINdejIJq
	my0N9+o37WG3NjQD1lbh930HrsGzvEbfeZp7iSgO/vqbDzVucWR7BCDO3i6Ts/P9QN8ItS8r+uFkR
	pdjvintYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg3ez-0001cz-L2; Tue, 02 Jun 2020 09:56:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg3es-0001cg-KK
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 09:56:35 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6415E206C3;
 Tue,  2 Jun 2020 09:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591091793;
 bh=fDizAbNFGLCx/NnC0ZM79uv4ubw6ye802K/b+MFfXcw=;
 h=Date:From:To:List-Id:Cc:Subject:References:In-Reply-To:From;
 b=MRTsjuWjgN+8q1/cSiBTVaDZ77F0v2ukC7EbAJrtAei4QGgwMEzRTp8g1mnva/DF4
 CG043Pot1OcEZYw2Vjt+UgayVlyC1FoXRXaQcrstsA0EyUThO/FZp4WxLIyFOhR6dU
 qNCeDUEyR6x0J7qRKCST37+bi1GAS7OE67l4+sQg=
Date: Tue, 2 Jun 2020 10:56:31 +0100
From: Mark Brown <broonie@kernel.org>
To: Lars Povlsen <lars.povlsen@microchip.com>
Subject: Re: [PATCH 00/10] spi: Adding support for Microchip Sparx5 SoC
Message-ID: <20200602095631.GC5684@sirena.org.uk>
References: <20200513140031.25633-1-lars.povlsen@microchip.com>
 <20200529162130.hsjcde27xhohl6jl@mobilestation>
 <87img9q3sb.fsf@soft-dev15.microsemi.net>
MIME-Version: 1.0
In-Reply-To: <87img9q3sb.fsf@soft-dev15.microsemi.net>
X-Cookie: We are not a clone.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_025634_691019_EAFB8590 
X-CRM114-Status: UNSURE (   9.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Serge Semin <fancer.lancer@gmail.com>, linux-spi@vger.kernel.org,
 Serge Semin <Sergey.Semin@baikalelectronics.ru>, SoC Team <soc@kernel.org>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8417830983327810605=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8417830983327810605==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="O3RTKUHj+75w1tg5"
Content-Disposition: inline


--O3RTKUHj+75w1tg5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jun 02, 2020 at 10:18:28AM +0200, Lars Povlsen wrote:

> I think I would be able to work on the SPI patches this week. Should I
> base it on the current spi-next or 5.7? Then address the comments and
> send out a new revision?

At this point any new patches should be sent against -next, the merge
window is open and -next has already been merged by Linus.

--O3RTKUHj+75w1tg5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7WIk4ACgkQJNaLcl1U
h9DIwwf9HGz68tzdNfktA2bLk1/S9k/OXDnqT1s+FHY3FwGFsCZ2FmB/pR9B3NkQ
zs8nIt/oS3uvO8ZLFR2t9f/y2UuvRdF5/8LpjHHOxdnf/mB2xntBmAyp1SeSVASV
10F4V1FIWGhajfDvjxHxXTla+Nnu5J2Tiiqn2n+k5pXBnuvweRqw3UO+EakLXW7c
DLGgyVty65BxXpu0SPp68YFaZUOI0CcVF57n9LRQd7C1z8x09yaPhD/LEni0UAPk
RIIcHxaEhjb+c/CV2FLTCXYTSPNuMXxJMzBptQ0jDZziGl8+fo+hMfoOQ+QmcL7p
dtL1o7RhdLXDjksprFStB/Qxj9Hgew==
=QPP+
-----END PGP SIGNATURE-----

--O3RTKUHj+75w1tg5--


--===============8417830983327810605==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8417830983327810605==--

