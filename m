Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F323161608
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 16:24:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uxDZdjE6Bu44L8bQHTiOCIOh+UuHF4OIhAGml52siyM=; b=PhVa0Z5rZ8lBtqbKeq7wDc0gl
	CUV/YEBHdd/3j7IBTUl4zxEoD7e0rZQZBK/2X8wps6Gc9Ke2wm33g1WhZO/CGIHDsWDwTvaBT/vah
	s/nsTT8IHCp5s5ZDL7t2k3xk+DzF4psBxdrAtF/RDWUxDltMqp3JX7yMEho3WzTMg/W5V13ktaSmr
	37XpmBHRPRTo0HTOvyG0XzaewcSTVyAtpOEARPg2fz2CZ8Ksh3BcZ/EO5/RoUji+jxSo2WQmkn3ZQ
	0T22aRjCt0UyD9NzW1MmfwGHlUvnrcy4G/UW/DcqazmaAaTjpXyzGcsSUzF7UCyWIf9Gb+hsruXgj
	JYZWUPrUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3iG7-0001QD-F7; Mon, 17 Feb 2020 15:24:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3iFz-0001Pm-S2
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 15:24:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F112530E;
 Mon, 17 Feb 2020 07:24:22 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 74CEB3F703;
 Mon, 17 Feb 2020 07:24:22 -0800 (PST)
Date: Mon, 17 Feb 2020 15:24:20 +0000
From: Mark Brown <broonie@kernel.org>
To: Samuel Holland <samuel@sholland.org>
Subject: Re: [RFC PATCH 09/34] ASoC: sun8i-codec: Fix broken DAPM routing
Message-ID: <20200217152420.GK9304@sirena.org.uk>
References: <20200217064250.15516-1-samuel@sholland.org>
 <20200217064250.15516-10-samuel@sholland.org>
MIME-Version: 1.0
In-Reply-To: <20200217064250.15516-10-samuel@sholland.org>
X-Cookie: There was a phone call for you.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_072423_950253_71EF01BD 
X-CRM114-Status: GOOD (  12.18  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
 Takashi Iwai <tiwai@suse.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Maxime Ripard <mripard@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 =?iso-8859-1?Q?Myl=E8ne?= Josserand <mylene.josserand@free-electrons.com>,
 stable@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5323430374491070888=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5323430374491070888==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="opg8F0UgoHELSI+9"
Content-Disposition: inline


--opg8F0UgoHELSI+9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Feb 17, 2020 at 12:42:25AM -0600, Samuel Holland wrote:

> This commit provides the minimal necessary changes to the driver's
> device tree ABI, so that the driver can begin to describe the full
> hardware topology.

> Cc: stable@kernel.org

You're changing the ABI and trying to CC this to stable.  This is
obviously not at all OK, this would mean that if someone got a stable
update with this change the ABI break would mean that their existing
device tree would not work.  The code should be making every effort to
provide a stable ABI over new kernel releases, never mind within a
stable point release.

--opg8F0UgoHELSI+9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5KsCQACgkQJNaLcl1U
h9DlOQf/fnliV8i6hOsjjmuPNKhYpYFB0CpQahOVaYcseah4KRMxgLYafPDPCBFi
YOG1uPOnbNmX7j2Vk4tA4fobq2c9iAJjVUafUWsNm6qiftRtSKHw8NgpDcH/i5+A
hQpjcJoW+zdzoV3a/l0/lA0Ntot3eligdLNJZEukfJTWU5KndAo0k6jJH0WNj3zw
xjiw6WNJee1j6xkOZEWzHoIZNZ+eXQjebMa5KbArSwzBXVS3SeaYZ9eMCzph7OpI
CXcIBWJssHvQlSxZeCjB64bwsBCbzUuRW6doz1Ikjn/IdAfjudwjwODeRENTKykJ
JCEiaoF87UkEhPoF68ycyKTgcgrxRA==
=pmEj
-----END PGP SIGNATURE-----

--opg8F0UgoHELSI+9--


--===============5323430374491070888==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5323430374491070888==--

