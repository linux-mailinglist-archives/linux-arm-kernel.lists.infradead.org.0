Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3132C161547
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 15:57:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=s8gRQ992cPUAGObOHY0wZB9opdKlIovPdiWLjVTnw9I=; b=V8vGKQ+zTNVjFw1IwHgiZVTBN
	f8PZ46IT4gfELiaZiiyMzaqnBizol84FCKpn2WyKws4fOmHDuZEJIDSnSORise11byLzp4Uwd6X1Z
	0WzqdAg1v28Pb7oa4TaIQmd4MJr0u0+woX5fMmqDnAywkUgKmp+okA0NwziGliW+s2g4JMp2V9lKy
	Tc2Jvf5nCSieWbqw3BNEMZ7rLRuX3C2Ti0Fc2qbeMZMBzZauY6h1yQFCVroSTz0zRHmW0LDSxN85C
	F1DK3bv02XRd/Nds/EZKpWav1RAMcWZkzT4wMuHuYbQ42DRmsaAb5SkEEheS9eSDzTE0M0IMs1izm
	BLKlPCPLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3hpY-0005XI-AF; Mon, 17 Feb 2020 14:57:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3hpM-0005Vq-7E
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 14:56:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6E63430E;
 Mon, 17 Feb 2020 06:56:51 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E733B3F703;
 Mon, 17 Feb 2020 06:56:50 -0800 (PST)
Date: Mon, 17 Feb 2020 14:56:49 +0000
From: Mark Brown <broonie@kernel.org>
To: Samuel Holland <samuel@sholland.org>
Subject: Re: [RFC PATCH 03/34] arm64: dts: allwinner: a64: Fix the audio
 codec compatible
Message-ID: <20200217145649.GF9304@sirena.org.uk>
References: <20200217064250.15516-1-samuel@sholland.org>
 <20200217064250.15516-4-samuel@sholland.org>
MIME-Version: 1.0
In-Reply-To: <20200217064250.15516-4-samuel@sholland.org>
X-Cookie: There was a phone call for you.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_065652_301174_5B658A20 
X-CRM114-Status: GOOD (  12.10  )
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
Content-Type: multipart/mixed; boundary="===============0252161132854464817=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0252161132854464817==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xaMk4Io5JJdpkLEb"
Content-Disposition: inline


--xaMk4Io5JJdpkLEb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Feb 17, 2020 at 12:42:19AM -0600, Samuel Holland wrote:

> Cc: stable@kernel.org
> Fixes: ec4a95409d5c ("arm64: dts: allwinner: a64: add nodes necessary for analog sound support")
> Signed-off-by: Samuel Holland <samuel@sholland.org>

>  		codec: codec@1c22e00 {
>  			#sound-dai-cells = <0>;
> -			compatible = "allwinner,sun8i-a33-codec";
> +			compatible = "allwinner,sun50i-a64-codec";

This is an incompatible change in the ABI, it's going to break unless
it's applied at exactly the same time as the matching kernel update
adding the new compatible string.  That's not suitable for stable, you
need to keep the old compatible as a fallback.

--xaMk4Io5JJdpkLEb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5KqbAACgkQJNaLcl1U
h9CYUAf/ZCOyWpSkn3x5uej3JtTUW/4RmXdnFa/ZOH/PjJuGXBCc7m4ZbP2jo5t2
2XdicNuPW5JUz9kmdxNzfeyUOYprNoheZyy/5i1u8EM9Br/zyszZFkMoApsLKSdF
qPUhK51OvntU8eb4DFQAswJFw6HmKfGImygfRHvHSax37e5srjBSosR5ZeJv7lQO
ZyP3iUjWXb9b8P/akkgxhQRpGkugDsrqx4oXSzKCzsj3kMpw6rE7yWXS9rQSVoaw
amPYSjsE4prqOnOlHfR0/y+dU6HJGHfWIWZqeNIEXK+gf1flqLmqxlpwCNnFCtn0
8rreEBr8qPilxVdhA7LpTMvLOCE8Jw==
=uWDR
-----END PGP SIGNATURE-----

--xaMk4Io5JJdpkLEb--


--===============0252161132854464817==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0252161132854464817==--

