Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3BD69AA2C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 10:19:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vsb92a4/JpTpfSRwpbRMjGaujoHsKfo7wDI1rS+E6Z4=; b=VsFNERNjUtigkOba/PRwJJWN8
	2sKVjv2VdmAWLyi19AvPtKl+NwRukTdDvYKwL74WzvZS/wo+96gYB+ybSQffJtw4Uxble/h0o1epy
	ilTnwsKUgjXVt5OY0gcmuNJHA7nflq3ovPFcDiHOUSJLqINI/Se/cLeiJktsEGnbakFhAC1JtGVNV
	7VtVNlCpfcl2jEqmQZNeZ4BF93luKPy8rYbIZGHM+30YqWT7YPygJSh2rsHkkO4VZlv4nwk0pKxdh
	2uEwfMVDoX+0rNFx/DX+aDNhpzVF08Z1yp4YeBJwC6nFljo6RhJsVz1kh1tQ2KAXvJRTWyCV3AaMc
	iHeHamUAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i14nS-0004Jh-Gs; Fri, 23 Aug 2019 08:19:46 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i14nE-0004In-BN
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 08:19:33 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 8809F60007;
 Fri, 23 Aug 2019 08:19:20 +0000 (UTC)
Date: Fri, 23 Aug 2019 10:19:20 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: megous@megous.com
Subject: Re: [PATCH v2 3/3] arm64: dts: sun50i-h6: Add support for RTC and
 fix the clock tree
Message-ID: <20190823081920.xxqg6w7tlnvvkzlx@flea>
References: <20190820151934.3860-1-megous@megous.com>
 <20190820151934.3860-4-megous@megous.com>
MIME-Version: 1.0
In-Reply-To: <20190820151934.3860-4-megous@megous.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_011932_542198_ED262E19 
X-CRM114-Status: GOOD (  13.39  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============0497362193022960548=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0497362193022960548==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="bvvuqig3adpl6wgr"
Content-Disposition: inline


--bvvuqig3adpl6wgr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Aug 20, 2019 at 05:19:34PM +0200, megous@megous.com wrote:
> From: Ondrej Jirman <megous@megous.com>
>
> This patch adds RTC node and fixes the clock properties and nodes
> to reflect the real clock tree.
>
> The device nodes for the internal oscillator and osc32k are removed,
> as these clocks are now provided by the RTC device. Clock references
> are fixed accordingly, too.
>
> Signed-off-by: Ondrej Jirman <megous@megous.com>

The prefix should be "arm64: dts: allwinner: h6:"

I've fixed it up and applied it.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--bvvuqig3adpl6wgr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXV+hiAAKCRDj7w1vZxhR
xQlxAP9kdMuf4hAYTBGWFaQzFVjFmqRMRi1y/pCcJ+PHKLK3TAD8DZOSzZhHJZFE
oscKRT3ZVaryNY1pphYVt0LlyyDu2Q0=
=Ngr3
-----END PGP SIGNATURE-----

--bvvuqig3adpl6wgr--


--===============0497362193022960548==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0497362193022960548==--

