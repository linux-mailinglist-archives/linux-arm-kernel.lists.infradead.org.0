Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8E87120271
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 11:29:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1isTKLDFeg5MdlUyWD09i4nT+hscZQqGwAtdw17ZHhs=; b=ZcCPQsO3sNjJfIxBWtpHV1IiN
	RZFZivhQ5f8OzkXFAnJGiek1E+/SpEgFTbBRLAkF1/SLjBKBqykmukRK1F5ynauRb7Vt4jisebmDf
	yIRYfq4rT6EupwvDFRATaLdpcmISz0syNYWK5/lSJwB1XLNnQ6X7BV/YL5Tz0EcJtfCNh8A8OCKW1
	ZOpq9wsJFdpUdc5/bCQokzKeAyJGloVxYplXivhKOyLLKNRudPmn+fhzmSHxj3CglVlu7ZfsNuo2E
	cA/UiQdHrUrWSFVmigtK3/SqEbWoW/XIbSX5K73BF7VXw/tlg4hAXkyoZFjm9gxhRvlbHZOEr2Bya
	G1OITvkSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ignd9-0005o4-Cm; Mon, 16 Dec 2019 10:29:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ignd0-0005nM-NA
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 10:29:27 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CD8D9206CB;
 Mon, 16 Dec 2019 10:29:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576492166;
 bh=h4X6AHfGqH1fcCYhsVZLrhBRQ9DB10RQK53ZRJEGw10=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IvVcuSHVLYGMmXZVmzWjp42//mldx+pzhw6/n2ye4z+xgib3qOgAuff+SDPb42z/R
 wfXre21OOpLxB2OAOi4I2vyhOQHvnESfd1wKswN24x4L31iE3E04U4ynLnDGD25sbv
 V042YBfc8kD87odpp3NQW1egVmAu9toKR/kAdgAU=
Date: Mon, 16 Dec 2019 11:29:23 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH 09/14] ARM: dts: sun8i: r40: Add I2C pinmux options
Message-ID: <20191216102923.nezpk2cqastyfpsd@gilmour.lan>
References: <20191215165924.28314-1-wens@kernel.org>
 <20191215165924.28314-10-wens@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20191215165924.28314-10-wens@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_022926_774839_CC9A3507 
X-CRM114-Status: GOOD (  10.14  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============2964310649151232662=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2964310649151232662==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="6lkmrciahlk4lydl"
Content-Disposition: inline


--6lkmrciahlk4lydl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Dec 16, 2019 at 12:59:19AM +0800, Chen-Yu Tsai wrote:
> From: Chen-Yu Tsai <wens@csie.org>
>
> The R40 has five I2C controllers. Currently only I2C0 has its pinmux
> option defined.
>
> Add the options for the remaining four, and set them as the default,
> since each controller has only one possible pinmux configuration.
>
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>

Applied, thanks!
Maxime

--6lkmrciahlk4lydl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXfdcgwAKCRDj7w1vZxhR
xaLdAP9tc7Nm4GYFEAyZVooyptZNGjG4NOL1T9S7EiBgQ3Pz1AEAtO6crXWEEVFr
ich4eYyroylJ+xW31k+yFo8klXVkSwg=
=rMnm
-----END PGP SIGNATURE-----

--6lkmrciahlk4lydl--


--===============2964310649151232662==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2964310649151232662==--

