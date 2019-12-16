Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2700A1207CC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 15:00:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nhDopihH32hbJpOQpFdsAoXyo6ZriTlTlpHnk3r1+Tg=; b=CpnpnwmZ4C0xn1fxsQk9j+ZdG
	jY2X/sNmICCbHb4P0wIj10frzeRdT6JUerHBj+M/4tYwrfXYPlro5GKk+5Furp7UppBfx1jlGFaUG
	B3Iy0EGS4h3eQXHsLp86lpGNcYqDvVutbOistbCMn8w6Yo1RnQRDAT2tKqlCJYDeVx3Vf6IlLdFZ9
	jwViuy/kMtOQAt7UZp2QByTXRFPct3XVINmXJOUIqEyXVaKS+vMCw55FCX7/ISGEVvt8du7B1OKeL
	PPStGMKwJ8Q9YJQUkfWmP3PYBzPXnXt/2y9X78zsI87BjIxYGhExiPozi4PTyd3GnBFdQG6QBOyg7
	vaLEKpH9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igqvP-0007di-GU; Mon, 16 Dec 2019 14:00:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igqvE-0007d5-GT
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 14:00:29 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B6FF220684;
 Mon, 16 Dec 2019 14:00:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576504828;
 bh=jdFxBKgT93c3jWBHm8m4ZNJqE+g91z3/HhdnxSdPqNs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2MtKvPzn98o3Zde83TLKGVd+xDbArRelFftBwc4hJgoFOq4ZUxwNBRDKkPUuUB/9G
 c2GG1mAcpt/gchMK2fkzpckK2B1hcMkqg/W2NL/BoDoZTjZPpkfBaWosvLXSyWaS4O
 nJcWWO3X8ePpccLyO9K5a+audJq7aT6i7koZLXsA=
Date: Mon, 16 Dec 2019 15:00:25 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Samuel Holland <samuel@sholland.org>
Subject: Re: [PATCH v5 1/8] clk: sunxi-ng: Mark msgbox clocks as critical
Message-ID: <20191216140025.6sfmqneiyxjqe6v7@gilmour.lan>
References: <20191215042455.51001-1-samuel@sholland.org>
 <20191215042455.51001-2-samuel@sholland.org>
MIME-Version: 1.0
In-Reply-To: <20191215042455.51001-2-samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_060028_570129_E753A87D 
X-CRM114-Status: GOOD (  18.07  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ondrej Jirman <megous@megous.com>,
 linux-sunxi@googlegroups.com, devicetree@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Jassi Brar <jassisinghbrar@gmail.com>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Sudeep Holla <sudeep.holla@arm.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4720548871480642910=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4720548871480642910==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="orhnilvx6yyc5lzw"
Content-Disposition: inline


--orhnilvx6yyc5lzw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Dec 14, 2019 at 10:24:48PM -0600, Samuel Holland wrote:
> The msgbox clock is critical because the hardware it controls is shared
> between Linux and system firmware. The message box may be used by the
> EL3 secure monitor's PSCI implementation. On 64-bit sunxi SoCs, this is
> provided by ARM TF-A; 32-bit SoCs use a different implementation. The
> secure monitor uses the message box to forward requests to power
> management firmware running on a separate CPU.
>
> It is not enough for the secure monitor to enable the clock each time
> Linux performs a SMC into EL3, as both the firmware and Linux can run
> concurrently on separate CPUs. So it is never safe for Linux to turn
> this clock off, and it should be marked as critical.
>
> At this time, such power management firmware only exists for the A64 and
> H5 SoCs.  However, it makes sense to take care of all CCU drivers now
> for consistency, and to ease the transition in the future once firmware
> is ported to the other SoCs.
>
> Signed-off-by: Samuel Holland <samuel@sholland.org>

This is pretty much the same case than for the AR100 clock though,
right?

I'm still not sure about why we should enable it that clock all the
time, even if you're not using the ARISC.

Maxime

--orhnilvx6yyc5lzw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXfeN+QAKCRDj7w1vZxhR
xZBuAP9Ia+0yr/oIdBQG1t+E3BzWwHMnlV5Sjd2kxueCGpo/HQD/bOzlGVC7h/lX
e+NB4e8WsigEdVU31jCtR+QPP4lVzQo=
=bWXY
-----END PGP SIGNATURE-----

--orhnilvx6yyc5lzw--


--===============4720548871480642910==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4720548871480642910==--

