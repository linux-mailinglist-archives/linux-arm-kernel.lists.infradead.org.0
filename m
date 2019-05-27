Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D8E72B4D2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 14:18:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Me7u4NgM8q3Vh+0nZ3VcKROz/9zY0XqsJ/6KnsaeTOw=; b=uXpnVKRC/t5RoLc/cN49qSQpz
	9F6VAT9bPjvmtK+X8pxG5PHo8b8+fmiadHm3OqIqBijtGFNiGnUwftkGVsis9QsKvFgDWRwYowYFQ
	uITrx0+WeRCyCEpyc8nAFqQaMSpTaOIOKXAIlrXn7Y0uWdDtGBff5QKXZzxsW8K1U6hSaocMPiLHH
	IaRcoEG7LVlbeYPl+mWQ/ALFQcetwsC/3pQJwFpH3tugUyNpVwArSIwygYHvLUZIJhDhR8sWPgYSw
	riCIJalmez4YJtVRLZNp6ctLQ2Q94vCCjtE40XobGNWbvBs3G8U0RzmbswT2Y2tlwspGfML8Wm9CN
	US/Xl1lsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVEaR-00006M-VX; Mon, 27 May 2019 12:18:43 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVEaK-00005u-78
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 12:18:37 +0000
X-Originating-IP: 90.88.147.134
Received: from localhost (aaubervilliers-681-1-27-134.w90-88.abo.wanadoo.fr
 [90.88.147.134]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 0F5FCE0017;
 Mon, 27 May 2019 12:18:32 +0000 (UTC)
Date: Mon, 27 May 2019 14:18:32 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH 01/10] dt-bindings: rtc: Move trivial RTC over to trivial
 devices
Message-ID: <20190527121832.lui2n6vhlemlqy2z@flea>
References: <290402405a34506997fd2fab2c4c1486dbe6b7e5.1558958381.git-series.maxime.ripard@bootlin.com>
 <20190527120626.GM3274@piout.net>
MIME-Version: 1.0
In-Reply-To: <20190527120626.GM3274@piout.net>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_051836_402130_843A6E45 
X-CRM114-Status: GOOD (  12.49  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-rtc@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============6556917812857835536=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6556917812857835536==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="lkvgcmvusuvyrlvg"
Content-Disposition: inline


--lkvgcmvusuvyrlvg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Alex,

On Mon, May 27, 2019 at 02:06:26PM +0200, Alexandre Belloni wrote:
> On 27/05/2019 14:00:33+0200, Maxime Ripard wrote:
> > The RTC generic bindings has a bunch of devices that have a pretty simple
> > binding, with just compatible, reg and optional interrupts properties.
> >
>
> This is not true, they all also support the star-year property, this is
> why they are not in the trivial-devices file anymore.

Ok, I misunderstood the binding then.

Should we create a separate file for the trivial RTC, on the model of
the trivial-devices but supporting all the RTC properties?

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--lkvgcmvusuvyrlvg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXOvVmAAKCRDj7w1vZxhR
xR4EAP4zT5mvMhjADSiQtWNQoHhx4O3WIXNxDlmF2Y/IklLfggEA2KCa9zYz9Tkj
BndNt8yFYR4V5e2m/WBFWOstF9vzFwM=
=E1rs
-----END PGP SIGNATURE-----

--lkvgcmvusuvyrlvg--


--===============6556917812857835536==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6556917812857835536==--

