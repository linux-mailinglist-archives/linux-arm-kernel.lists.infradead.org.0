Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6254143910
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 10:07:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BNn7aFzzmGTwTltv+cpXv8qFNwmYi0+9FTZlAYzwnAY=; b=SWCIufiQ5DVu9NGu2y2oNa9vU
	pcocALF6MUZ34dCZuflztCycFKxAExM1RQrIezi5gTZX89X8cvqfSbIrHGb/ZtC1ovgaYYsz+2C0w
	hgkzOsrl1kDxRo+FNpW2S/vfox/lB7CxA2szN+MrHPOvhl9K/VrZNbI+pnM/R1UZSTOQrvl50bY3v
	+I9KWXJRea74n1JalkFbwU4J/dJ2vZOwk3wWRn6M2YOrLWqd6yGlIUC1ONeyjvFrDy+vr3Y7nmrvP
	nPk2hDs9/89hgIymeLBn5N+ixae+gZafarVat+AvG2WjJ4qmcRxP63FJYZ1fgDyzv4n2iQddslTUZ
	T438xnPLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itpVG-0004mf-Jn; Tue, 21 Jan 2020 09:07:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itpUr-0004cu-Rw
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 09:07:01 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 44D9820882;
 Tue, 21 Jan 2020 09:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579597612;
 bh=uOFeO8+xSkz1g/WoZXXNCEctOGa57Vko3qDcP4KDO4M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=loe08d5GCQ4lGBv64K/gROUsh2slCFB19gmnXpLOgSysG42o9E9acH5vIPxpYxDgN
 j6gV3CfV0KOCxwwiLCCNY6A8ucsMNVVX1kahG04PxLJFbvPxMDogAXiy+sTI7T9qEK
 tOuQSvRyRSVKZ68vTRI37XgY+QzekyV0sVOwd8AM=
Date: Tue, 21 Jan 2020 10:06:50 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Samuel Holland <samuel@sholland.org>
Subject: Re: [PATCH 6/9] arm64: dts: allwinner: pinebook: Document MMC0 CD
 pin name
Message-ID: <20200121090650.2cgf7y2bs6twup27@gilmour.lan>
References: <20200119163104.13274-1-samuel@sholland.org>
 <20200119163104.13274-6-samuel@sholland.org>
MIME-Version: 1.0
In-Reply-To: <20200119163104.13274-6-samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_010654_143344_DD81FC94 
X-CRM114-Status: UNSURE (   9.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5574977160656490711=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5574977160656490711==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="f2ox7e6bc4u3a3iv"
Content-Disposition: inline


--f2ox7e6bc4u3a3iv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Jan 19, 2020 at 10:31:01AM -0600, Samuel Holland wrote:
> Normally GPIO pin references are followed by a comment giving the pin
> name for searchability. Add the comment here where it was missing.
>
> Signed-off-by: Samuel Holland <samuel@sholland.org>

Applied, thanks!
Maxime

--f2ox7e6bc4u3a3iv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXia/KgAKCRDj7w1vZxhR
xSHtAQD/Npxdkdc8Lip7lWDOEFQHZajpQGieBk3AWwrJVG47uAD9H/dQmjoKqsKM
+y3GQk+vPuFZuAxxSgSDoxLfUyk6fAg=
=3emx
-----END PGP SIGNATURE-----

--f2ox7e6bc4u3a3iv--


--===============5574977160656490711==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5574977160656490711==--

