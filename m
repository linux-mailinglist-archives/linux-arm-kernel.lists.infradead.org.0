Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25F8316159A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 16:09:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UcpKTFm1vxSdlkr5M62+DqSQeDlIftI98XJK+x4jNpI=; b=f10A3CCtIW/EVrLCqhKrZ+XJN
	wLWN/1WiO1QjhmoIq8IB0aX9nU4LyaSMveF8VTdY3eE/13fWUi3pvgzO8RVveotJQrQf6X5yF8wPm
	filEAyeI+PvhQ1tYh1afIwuFD4sTb1gvtBTXyz9mQ2m4WYWRSXMtOQohe5DH/w9OOHHyXF4EBBSzf
	q/CMkFPpzbp8Jq7vNpvEN4zZzWzJIrEnS827XOsCgJg71eDr4t/c1lTAqQF6aKtPA/hx4VMk6oezN
	fAgSL1N8EY9fENJMy6RBO/yyjYh3D4Fqzbby44ZWskDPaIKX9Jv0qQj16J8rfm6G3m4kUL6ACTwF5
	4dB73CZlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3i1s-0002ge-JO; Mon, 17 Feb 2020 15:09:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3i1i-0002gB-I6
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 15:09:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D841630E;
 Mon, 17 Feb 2020 07:09:37 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5B7BA3F703;
 Mon, 17 Feb 2020 07:09:37 -0800 (PST)
Date: Mon, 17 Feb 2020 15:09:35 +0000
From: Mark Brown <broonie@kernel.org>
To: Samuel Holland <samuel@sholland.org>
Subject: Re: [RFC PATCH 08/34] ASoC: sun8i-codec: Fix direction of AIF1 outputs
Message-ID: <20200217150935.GJ9304@sirena.org.uk>
References: <20200217064250.15516-1-samuel@sholland.org>
 <20200217064250.15516-9-samuel@sholland.org>
MIME-Version: 1.0
In-Reply-To: <20200217064250.15516-9-samuel@sholland.org>
X-Cookie: There was a phone call for you.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_070938_644629_6DB2FCCE 
X-CRM114-Status: GOOD (  12.24  )
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
Content-Type: multipart/mixed; boundary="===============6765492671683386174=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6765492671683386174==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4vpci17Ql0Nrbul2"
Content-Disposition: inline


--4vpci17Ql0Nrbul2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Feb 17, 2020 at 12:42:24AM -0600, Samuel Holland wrote:
> The naming convention for AIFs in this codec is to call the "DAC" the
> path from the AIF into the codec, and the ADC the path from the codec
> back to the AIF, regardless of if there is any analog path involved.

This renames widgets but does not update any DAPM routes from those
widgets which will break things if this patch is applied.

> Cc: stable@kernel.org

Why is this suitable for stable?  It's a random textual cleanup.

--4vpci17Ql0Nrbul2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5KrK8ACgkQJNaLcl1U
h9Ab9Af/b8sQj3zwynBYYxusscd9/aduwhw7qF+DAdPBw6PYNIA/g/Ts6oULrx9/
F9O4MHo55RlwYbfi8iuyYJ8LpLv4y7txkM5x5y5oauIL+soV6TB8bszuwBvk5jHu
qMxAhPDo6mD2D1QYL7GJeWvid+lBr7MGrlzbxg+0uW1jEw3pEJjXL4WTXu0e2l4T
cTZ4Am744vhS15WDE0s/wJSvB2rxPn6xVVi93LtdEE9+YgE4lE9Y7ruezZibMFQb
hrTkWC0l92y8sbIkHpAzlo5gh5qNn6UahJRlr+wCILtXuEJMgPEEmx0DoTciwQUr
su1mRVq9kOQOtpw4mjBq3iDo8MiP3A==
=UkmS
-----END PGP SIGNATURE-----

--4vpci17Ql0Nrbul2--


--===============6765492671683386174==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6765492671683386174==--

