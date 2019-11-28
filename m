Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B553510CE0E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 18:44:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5RffEaTrywy3FAsrM84g3dq24HxBY9ORe0H3KwoR1Ew=; b=ToWlrF9V/K9UbwK46cxHZdiGU
	2xkMn72rOvPlE1qaacXkkiWV+mkcPZm/QymPEGCbyLeOPx7ThIrkV6wvx4eYh1CR79uQ6Pg/mD2Xd
	SpujoGzJlEdI3McLcadSNKGnOw7Y8NTBhdRKCAwm2mXJa5CiioiO15eBQhVThqdnQpUf2yv0yOCEo
	Mp+lQudJyCfVzmxdR3sQbzdUawPRO1TEAh6ncyS9M5D7TmJUg5QpmxPJJdGb456djIN2g3FVk0RG2
	orhL2EpNleekmSbg/NmwkWbh3S2Qr9uiwb16+5atw2X71b42BeWza1kYNnJYS66BJhD2bPBF6ZQqv
	ajXZwDHSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaNqZ-0003b7-8e; Thu, 28 Nov 2019 17:44:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaNqR-0003aT-63
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 17:44:49 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6821821781;
 Thu, 28 Nov 2019 17:44:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574963086;
 bh=cz99d7VnCSzayawBtX02NKhGh1MPuM8LousFrM8rWO8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nur2kTuKF2C7fIttF4ho3dt9RM0yi9+NaXYXKdNq7XxeF2pbzA2KdoYM6VqgMX7mH
 tKEA7a6rMKCShzTVzzjd9b1tQXIl5+CJbrs/UNj1kV2YFed32ieOG73RxUBY1QvHFZ
 w/1FEW/Tl02O/oZmD0PQVbPPUzG2pubZ97z+02bU=
Date: Thu, 28 Nov 2019 18:44:44 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Yunhao Tian <18373444@buaa.edu.cn>
Subject: Re: [PATCH] clk: sunxi-ng: v3s: Fix incorrect number of hw_clks.
Message-ID: <20191128174444.ypkqrbsge7g3t6mg@gilmour.lan>
References: <20191125125833.8023-1-18373444@buaa.edu.cn>
MIME-Version: 1.0
In-Reply-To: <20191125125833.8023-1-18373444@buaa.edu.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_094447_247629_CE55E4A6 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: -3.7 (---)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-3.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.5 FROM_FMBLA_NEWDOM      From domain was registered in last 7 days
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
Cc: Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: multipart/mixed; boundary="===============7476295461899980975=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7476295461899980975==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2vgvz5ipypry7sum"
Content-Disposition: inline


--2vgvz5ipypry7sum
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Nov 25, 2019 at 08:58:32PM +0800, Yunhao Tian wrote:
> The hws field of sun8i_v3s_hw_clks has only 74
> members. However, the number specified by CLK_NUMBER
> is 77 (= CLK_I2S0 + 1). This leads to runtime segmentation
> fault that is not always reproducible.
>
> This patch fixes the problem by specifying correct clock number.
>
> Signed-off-by: Yunhao Tian <18373444@buaa.edu.cn>

Queued as a fix, thanks!
Maxime
>

--2vgvz5ipypry7sum
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXeAHjAAKCRDj7w1vZxhR
xZ9EAQD4x+F88mtI2oJSbsrjcUafFH0q/ESBzvhi8Ii8aB8kXgD9FkwUCrG7y4di
Qe+I/O7uhmYsoZBb8fRi+ku/eDY9ywE=
=FAhq
-----END PGP SIGNATURE-----

--2vgvz5ipypry7sum--


--===============7476295461899980975==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7476295461899980975==--

