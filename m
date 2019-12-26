Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 946B812AB53
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Dec 2019 10:38:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bi5CvfIWYZBs83yaJx1gnEz2AAwzLI3kP0N4OTPHzxw=; b=anziMCGfHegrhnRoyREncmydU
	JlBXFIBmAUZdNdDo91b4UCNCNMW9JJbZ5XoOuUst4EJJgAGKX29Nj52gec0uVIRiCWe22Vq/X2z3N
	seVUZ3SavWVv4/xCjEfzepzqAqU8iKwdp1sY8kvYc15+f8BGjOurWeHSFv+L+f/uhv0E+JtdMikOJ
	kZs2uK/iNTz4klcuGyXKdbgF7Hy5lcT8gHN0pT55d+WXPduhuhWpNLjrI1NNLYBlRfAAq0V26l87H
	oqYqmiLg6a38ALG4w7jfaNWx/QYdz38gtAVp78+XVWW8eqasxqjdq6+8B4T3JHziejKBUMdVeFnYq
	HJHtbYp+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikPbO-0007Fs-NF; Thu, 26 Dec 2019 09:38:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikPbE-0007FX-MU
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Dec 2019 09:38:33 +0000
Received: from localhost (lfbn-lyo-1-633-204.w90-119.abo.wanadoo.fr
 [90.119.206.204])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 992F82075E;
 Thu, 26 Dec 2019 09:38:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577353112;
 bh=Mr8Uh6VVBiWsMxxVZI0L4qzbBIyfNz4dUgYhjdF9bxw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RNn9y+8DsUK/oQbFJLeb19DhGx54/xMLG77+3mm4kwDstHVH8cubfvxvJjvHaoLaf
 ydoXKFiFDeHUsNQW2DUVqLllBm0kDhSUgDxeXO40rw1G3cIkthez4HpOZzV2hpp2MK
 p30RNiOo5UZVYnBbGFPwcU2kyWYHhihg8TFOip7Y=
Date: Thu, 26 Dec 2019 10:39:52 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v14 0/7] drm/sun4i: Allwinner A64 MIPI-DSI support
Message-ID: <20191226093952.i2jttp7tr5hie6jl@hendrix.home>
References: <20191222132229.30276-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
In-Reply-To: <20191222132229.30276-1-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_013832_757018_F9A03321 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, linux-sunxi <linux-sunxi@googlegroups.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, michael@amarulasolutions.com,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: multipart/mixed; boundary="===============6860509800889328546=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6860509800889328546==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="h3pmpnueinecnwd2"
Content-Disposition: inline


--h3pmpnueinecnwd2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Dec 22, 2019 at 06:52:22PM +0530, Jagan Teki wrote:
> This is v14 version for Allwinner A64 MIPI-DSI support
> and here is the previous version set[1]

I applied the patches 1 to 6, and fixed checkpatch warnings in the
patch 5. Make sure to run it before sending patches.

Thanks,
Maxime

--h3pmpnueinecnwd2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXgR/6AAKCRDj7w1vZxhR
xbLvAQCJi7xi94JsmmvMc/qiv546VIdF1KVEM1HWgg4A2XFb1gD9GrsRw+V1QxTC
1yZ8gotcEiYivT+fUp5C9q8c/WwP6wU=
=zrYu
-----END PGP SIGNATURE-----

--h3pmpnueinecnwd2--


--===============6860509800889328546==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6860509800889328546==--

