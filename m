Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D1037279
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 13:07:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dTBIvL7Sko0jqC0mbfNbX70bzaN+Z9iwPCtrCId9blg=; b=EZAtxnT/V99U7o+x7IsokeOdq
	ASlWJK8ThwQKjXTbtXD96u43GaIQn4xWmdcHkdRY1LTcmpSzwcVr/Dr9UpkRKSoBDZQChfS+In4iw
	4XqBi0gFA4DRktHkfCOEaBtfyBQTUOTbk4Q2Ug5+Ze+/OZtDJYWHdQRH7fJQYs4s5WM2wqsFQou3w
	TkW8kQR1mLEcCTFZYaMpG6eTXuBMq7O2AotPeuyzVSJ6EwI6Xi0psfB/J4n/KRSXx2Szm8xxAjrv5
	CqQkN/3s560xhp+5jQ6AjkwEeekshXQGQ3k1jgYFEh3kPdL/LjmvA0A3TNbyK7LJ7zqwSWsy9sLUi
	CcaWbOW3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYqF6-0007px-7r; Thu, 06 Jun 2019 11:07:36 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYqF1-0007pb-0p
 for linux-arm-kernel@bombadil.infradead.org; Thu, 06 Jun 2019 11:07:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iSaXMRbQ5jJ6NHj1cXT0w3eh1yEBlnfiaQcRMiMSu4k=; b=TZXR1sKHZAcVItvUqHrnvuvJf
 F4RAX64bcyvW2B9H882peBk8yYSxDSj4pxvuD7sThPKfOf5RmPTtjuFD7IaxxXW083sTzbaDseoag
 L4mV4qRns0CkNVYnBGIGg4E53q1kMlLR5pwIgjiMi7qE0pSNRXBFAXxebmoFRQsoLuFfEF7keEtA/
 tWKlDKPcm+nyCfKgmT5L5xbtUiRB2tXR3NrZ78JLDoeAhXipq9P+NU9R9CeCrwRUirwlaYo7XSgk0
 n9WaQWRVW82J2GBINj4L9eh12RJ3a6X49yhb8D192Rby5yBVSaDG+y6TMDVzn+U0qffxjy0SUuhLS
 CUKPrBDVg==;
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYqEx-0007jF-Qu
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 11:07:28 +0000
X-Originating-IP: 90.88.144.139
Received: from localhost (aaubervilliers-681-1-24-139.w90-88.abo.wanadoo.fr
 [90.88.144.139]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 2F512E000F;
 Thu,  6 Jun 2019 11:06:47 +0000 (UTC)
Date: Thu, 6 Jun 2019 13:06:47 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: "Rojewski, Cezary" <cezary.rojewski@intel.com>
Subject: Re: [alsa-devel] [PATCH v2] ASoC: sun4i-i2s: Change SR and WSS
 computation
Message-ID: <20190606110647.iojplb27mdo276xk@flea>
References: <20190605100801.2488-1-maxime.ripard@bootlin.com>
 <3BD9CEE4EBD5E74B98FE2D277EB60E0B38FF8117@IRSMSX104.ger.corp.intel.com>
MIME-Version: 1.0
In-Reply-To: <3BD9CEE4EBD5E74B98FE2D277EB60E0B38FF8117@IRSMSX104.ger.corp.intel.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_070727_968621_5A2A59A6 
X-CRM114-Status: GOOD (  13.94  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Marcus Cooper <codekipper@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Mark Brown <broonie@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============1645152245780739438=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1645152245780739438==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="o7dxdhneu2w5lbt5"
Content-Disposition: inline


--o7dxdhneu2w5lbt5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Wed, Jun 05, 2019 at 04:36:28PM +0000, Rojewski, Cezary wrote:
> >+static s8 sun4i_i2s_get_sr(const struct sun4i_i2s *i2s, int width)
> >+{
> >+	if (width < 16 || width > 24)
> >+		return -EINVAL;
> >+
> >+	if (width % 4)
> >+		return -EINVAL;
> >+
> >+	return (width - 16) / 4;
> >+}
> >+
> >+static s8 sun4i_i2s_get_wss(const struct sun4i_i2s *i2s, int width)
> >+{
> >+	if (width < 16 || width > 32)
> >+		return -EINVAL;
> >+
> >+	if (width % 4)
> >+		return -EINVAL;
> >+
> >+	return (width - 16) / 4;
> >+}
> >+
> >+static s8 sun8i_i2s_get_sr_wss(const struct sun4i_i2s *i2s, int width)
> >+{
> >+	if (width % 4)
> >+		return -EINVAL;
> >+
>
> In the two above you start with boundary check before mod yet in
> this one the order is reversed.  Keeping the same order should prove
> more cohesive.

Indeed, I'll fix this.

>
> >+	if (width < 8 || width > 32)
> >+		return -EINVAL;
> >+
> >+	return (width - 8) / 4 + 1;
> >+}
> >+
>
> Other, probably less welcome suggestion is introduction of unified
> function which ones listed here would simply invoke. All of these
> "computations" differ in fact only in: min and max boundary. The +1
> for _sr_wss is negligible, you can append it on return.

It's not just about the min and max boundaries. It's also the offset
at which to start with (16 vs 8), and the offset to apply to the
result (0 vs 1).

That's 4 parameters out of 5 that are different. For something that
trivial, I don't think it's worth it to put it in common.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--o7dxdhneu2w5lbt5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXPjzxwAKCRDj7w1vZxhR
xU5ZAQDqFqCGgErcrAi4FdZbvdZZ+e5HA8TXh3Adj2HYz68TGAEAnsOVcPT4sWAS
/Bvn0cG01lOSXngr19W99FolGay/Lgk=
=cTma
-----END PGP SIGNATURE-----

--o7dxdhneu2w5lbt5--


--===============1645152245780739438==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1645152245780739438==--

