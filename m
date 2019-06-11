Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 694CA3C701
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 11:07:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vh5KgRZ9+jM2E44WQ8a8pPcUNF+sgLn/P/7R1ojH1u4=; b=OHucSYSONSUIu//CnUxzYiGXe
	TOaZYbIKWpiCv8M8UeCRIkumTzXDfaoAPgnPzvexauTDHsSOHbnSXgfjyIw8KKvvRQDBYaIlwwTj8
	sYzMMpaJBt+tMMCcV8gdwuyJL1vi6gHzArSsbri3ktlsGY280ectNmxrSsAojxRto/4oC2V5o6RG6
	0n8ai/9iNhQlQqwxuli5yqb1lPXpy52r2qWDFI2/CIRhjy78u/stAN4fQLGMPXwgdWl7Z4xuh5FHJ
	P9B/iKxJxUF82/BRgrwWloCVKAmfXNG5gQ/KpomWeRRVWWXGncJGMV8qTRqIMtE4/tlQB0+lWgrww
	hkQWRA8/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hackn-00010L-RH; Tue, 11 Jun 2019 09:07:42 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hackY-0000z6-Vc
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 09:07:28 +0000
X-Originating-IP: 90.88.159.246
Received: from localhost (aaubervilliers-681-1-40-246.w90-88.abo.wanadoo.fr
 [90.88.159.246]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 32085E0024;
 Tue, 11 Jun 2019 09:07:14 +0000 (UTC)
Date: Tue, 11 Jun 2019 11:07:14 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v2 2/2] dt-bindings: i2c: mv64xxx: Add YAML schemas
Message-ID: <20190611090714.sjqyo4cqyh7l4li2@flea>
References: <20190605122936.11972-1-maxime.ripard@bootlin.com>
 <20190605122936.11972-2-maxime.ripard@bootlin.com>
 <CAL_JsqJczoTpq=8BS5FwL3TJmitZp9e4Mh4oXcvgOMdRmoURvQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAL_JsqJczoTpq=8BS5FwL3TJmitZp9e4Mh4oXcvgOMdRmoURvQ@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_020727_190331_82EC1ADF 
X-CRM114-Status: UNSURE (   8.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
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
 Wolfram Sang <wsa@the-dreams.de>,
 Gregory Clement <gregory.clement@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Linux I2C <linux-i2c@vger.kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============6313579398122538006=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6313579398122538006==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="i4ldgqqqixlfi53r"
Content-Disposition: inline


--i4ldgqqqixlfi53r
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jun 10, 2019 at 03:37:17PM -0600, Rob Herring wrote:
> > +examples:
> > +  - |
> > +    timer {
>
> timer?
>
> (and missing unit-address)

Yeah, sorry, this is a copy and paste issue..

I've fixed it in v3.

Thanks!
Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--i4ldgqqqixlfi53r
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXP9vQgAKCRDj7w1vZxhR
xVKXAP0RF4cYMBzsD/TKvd2+MSBUJprWGV+yr32Y+uRWTlAbRAD9EcJQoYoITgBA
6SZNHmYk4JttNkI5odc971TTyVX0UAw=
=XakM
-----END PGP SIGNATURE-----

--i4ldgqqqixlfi53r--


--===============6313579398122538006==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6313579398122538006==--

