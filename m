Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93CDD22F9C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 11:03:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=obMAftYXHgYgIrAYrgIxxAE2nwcp/k8HGFo+C7R36O4=; b=nYwBTDL47Etcu/JUofEcJeKFV
	5Yuxq9ZedrV4wgG2fsjaaM/rO2wqq6rIBqg5JRAne/rQwbFo4CN+Sjpfd/YPy+oPNqVc86hsLqFmJ
	ICJZBs3dO1hLI53uh8e7U+N2F5231zH9r/i/6bqGkKkf84oyR43rEpju3iwzhkwEHZzXSyOpjQ+cJ
	/fuj92FlqU0i5pgqkz7EIYBVdKyz9Us5sOi5Bdg7emTHTpG0u0603rEgSJhUAqpfnOjycd0zmHBT9
	9KL01iPvzC0pfb74hiiMjgkFHR1fNAFDRnxS/RiujFvMKneCjP/tWTSnvjV2W7luCnJ6J75keDOwU
	XYsxyQ8IA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSeCv-0008Ig-Gx; Mon, 20 May 2019 09:03:45 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSeCo-0008IG-KQ
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 09:03:40 +0000
X-Originating-IP: 90.88.22.185
Received: from localhost (aaubervilliers-681-1-80-185.w90-88.abo.wanadoo.fr
 [90.88.22.185]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 89B0960010;
 Mon, 20 May 2019 09:03:27 +0000 (UTC)
Date: Mon, 20 May 2019 11:03:27 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH 00/25] clk: sunxi-ng: clk parent rewrite part 1
Message-ID: <20190520090327.iejd3q7c3iwomzlz@flea>
References: <20190520080421.12575-1-wens@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20190520080421.12575-1-wens@kernel.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_020338_817164_EC830616 
X-CRM114-Status: GOOD (  19.93  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
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
Cc: Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2392338593319410789=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2392338593319410789==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2ypype76y25ofynl"
Content-Disposition: inline


--2ypype76y25ofynl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, May 20, 2019 at 04:03:56PM +0800, Chen-Yu Tsai wrote:
> From: Chen-Yu Tsai <wens@csie.org>
>
> Hi everyone,
>
> This is series is the first part of a large series (I haven't done the
> rest) of patches to rewrite the clk parent relationship handling within
> the sunxi-ng clk driver. This is based on Stephen's recent work allowing
> clk drivers to specify clk parents using struct clk_hw * or parsing DT
> phandles in the clk node.
>
> This series can be split into a few major parts:
>
> 1) The first patch is a small fix for clk debugfs representation. This
>    was done before commit 1a079560b145 ("clk: Cache core in
>    clk_fetch_parent_index() without names") was posted, so it might or
>    might not be needed. Found this when checking my work using
>    clk_possible_parents.
>
> 2) A bunch of CLK_HW_INIT_* helper macros are added. These cover the
>    situations I encountered, or assume I will encounter, such as single
>    internal (struct clk_hw *) parent, single DT (struct clk_parent_data
>    .fw_name), multiple internal parents, and multiple mixed (internal +
>    DT) parents. A special variant for just an internal single parent is
>    added, CLK_HW_INIT_HWS, which lets the driver share the singular
>    list, instead of having the compiler create a compound literal every
>    time. It might even make sense to only keep this variant.
>
> 3) A bunch of CLK_FIXED_FACTOR_* helper macros are added. The rationale
>    is the same as the single parent CLK_HW_INIT_* helpers.
>
> 4) Bulk conversion of CLK_FIXED_FACTOR to use local parent references,
>    either struct clk_hw * or DT .fw_name types, whichever the hardware
>    requires.
>
> 5) The beginning of SUNXI_CCU_GATE conversion to local parent
>    references. This part is not done. They are included as justification
>    and examples for the shared list of clk parents case.

That series is pretty neat. As far as sunxi is concerned, you can add my
Acked-by: Maxime Ripard <maxime.ripard@bootlin.com>

> I realize this is going to be many patches every time I convert a clock
> type. Going forward would the people involved prefer I send out
> individual patches like this series, or squash them all together?

For bisection, I guess it would be good to keep the approach you've
had in this series. If this is really too much, I guess we can always
change oru mind later on.

Thanks!
Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--2ypype76y25ofynl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXOJtXgAKCRDj7w1vZxhR
xQfkAQDQX2OO7NWM6Uc/mv7S2HQgLu755CMRobYRqL6EDMn5twD/WlNMYOlQibvH
Kk0T6Z3CVuTDEoh9v+fpo5OUWhc1qw4=
=G/SF
-----END PGP SIGNATURE-----

--2ypype76y25ofynl--


--===============2392338593319410789==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2392338593319410789==--

