Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98ADF1614E8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 15:43:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7GHxmN9xFI/6kV7AShDXxxzle+j8qg3qww6xhGx42AE=; b=bgRAfdWR/VgNxgIKrT7NJsgpN
	ccrtc+ChqVSKSxOfsT2hTStCEQSRBqNRQoZqiTsxvkUHccGq45Fe7uslBIYiqFPrkfeRIsbvf+BMT
	D/c23jNAnV4ZQf2jLHgKsT33BOpT2Oh7ttze4eUbdAFqXtrfX0WXWJw4ZmoXKyXakdkRO24iAi5ET
	gfj9ueG1usr4hDGH6O/JEy/A1Qezxw4OhhB1B1RRcIIzR4UbJtkMmMxOdRSYSKIANkkIYmpNOSTm4
	s8Rf/AASXpSxr+pEkm03zOtbAvxzrC1NhQ94/TxgfAQBPxQbDqwbQ00tZa0HPi7b3B1I11ep1ZY41
	YqH7A/eRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3hcW-0007PG-6K; Mon, 17 Feb 2020 14:43:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3hcO-0007OT-88
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 14:43:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A28BC30E;
 Mon, 17 Feb 2020 06:43:24 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 257A83F703;
 Mon, 17 Feb 2020 06:43:24 -0800 (PST)
Date: Mon, 17 Feb 2020 14:43:22 +0000
From: Mark Brown <broonie@kernel.org>
To: Samuel Holland <samuel@sholland.org>
Subject: Re: [RFC PATCH 02/34] ASoC: sun8i-codec: LRCK is not inverted on A64
Message-ID: <20200217144322.GE9304@sirena.org.uk>
References: <20200217064250.15516-1-samuel@sholland.org>
 <20200217064250.15516-3-samuel@sholland.org>
MIME-Version: 1.0
In-Reply-To: <20200217064250.15516-3-samuel@sholland.org>
X-Cookie: There was a phone call for you.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_064328_335507_20CBE8DD 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
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
Content-Type: multipart/mixed; boundary="===============5511200599106108981=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5511200599106108981==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="uCPdOCrL+PnN2Vxy"
Content-Disposition: inline


--uCPdOCrL+PnN2Vxy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Feb 17, 2020 at 12:42:18AM -0600, Samuel Holland wrote:

> +	scodec->inverted_lrck = (uintptr_t)of_device_get_match_data(&pdev->dev);
> +

This is going to break the moment someone finds another quirk for some
variant of this device, it's not scalable.

--uCPdOCrL+PnN2Vxy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5KpokACgkQJNaLcl1U
h9ALhQf+KpZMG6XlWXOf5M+RQbrrlJ7G6eHlAz9WNWS6pBlAdaLNxekgK+nHQJos
xgRQQ+WfRPwkVwkQqQ78pknN7GNtJA47rvXZskBUGBiYErsA8awxR7NQ0MdVgHt7
IER95dS+HOIU9qzfu/qXPJzL7FYmNiBgxG2766bd5rboIqr3GXhAsYa7phl3XPZo
HBwmnZ8DP2xN4op0fRBwZ/L855fSoATnNyoSPMabDa530WwUYyiUk+2BXYk8TaRB
Ck+OXm50qHCp8JHXoQox+uQzIyqVjtjp4czaGJeMlHQ+7ocwLa8ltTMkCfDUlzU6
zdaJIgMVGilYkB59EaFQL0UQ8j1TmA==
=ggb0
-----END PGP SIGNATURE-----

--uCPdOCrL+PnN2Vxy--


--===============5511200599106108981==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5511200599106108981==--

