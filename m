Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA8C8125652
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 23:10:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3p1BBpvPe+szfwcG3ytlXjIzN0NkMQeDx+CGmYaTVg0=; b=N2PT3QkLycCsaguuneIbRh1hm
	41DGHijaRSrLzjM389T7rJeafZHyaRIoCj/F2VZHLquvE/BPElROc9hlbfuTBrpxvPZzzymfRkVSG
	WuPzsqGb3C9jhDV7p78/GqYZqQmnAuotepWNeTXAw1piB1ecS5GOOSXx6PP5XIBTus8T9aLPAUNts
	dGDzzdYVkr+a/i8s6xzMNAlH6Mcf18StqGgodEb5eVTRwtXZsBeVB2OtpYpzwlubK6d9cWv5l69pQ
	vUru75GiEkj1Pr16Dw3bO1hMwcoiHiA5hK3PIckFcfiVUrTuEC+0zr5ArQPF2wvSMhDvV4pjIXAeH
	Kfujk99GQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihhWX-0004Ge-T1; Wed, 18 Dec 2019 22:10:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihhTE-0000oP-CG
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 22:07:05 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 39F8C218AC;
 Wed, 18 Dec 2019 22:07:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576706823;
 bh=SzpvZpyTVQUJYzggrXL+zJuJn0/MFcL+DAfkgMbri6c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=a4HKB5mZXnBgm305LdZj8p6o/RPgeqiiAz27Eu/w3X6HvnuAUdAnjaDJ2iDFcm95Q
 ng1JPT98N+m8zKZE1Bhzw6h0vLU8HQE5atpzP4bLKp8sR9eBLdcX5/a428Wh9wqBOI
 nbLmcTeojL/KNAvsWnUbo915zoEH9HVBqDGHxo5s=
Date: Wed, 18 Dec 2019 23:07:01 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH] clk: sunxi-ng: r40: Allow setting parent rate for
 external clock outputs
Message-ID: <20191218220701.43zdbknygwwun466@gilmour.lan>
References: <20191218030431.14578-1-wens@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20191218030431.14578-1-wens@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_140704_506955_902BAE24 
X-CRM114-Status: GOOD (  11.04  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 stable@kernel.org, Chen-Yu Tsai <wens@csie.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4480528107951339544=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4480528107951339544==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="xvkou3vzvj43berm"
Content-Disposition: inline


--xvkou3vzvj43berm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Dec 18, 2019 at 11:04:31AM +0800, Chen-Yu Tsai wrote:
> From: Chen-Yu Tsai <wens@csie.org>
>
> One of the uses of the external clock outputs is to provide a stable
> 32768 Hz clock signal to WiFi and Bluetooth chips. On the R40, the RTC
> has an internal RC oscillator that is muxed with the external crystal.
>
> Allow setting the parent rate for the external clock outputs so that
> requests for 32768 Hz get passed to the RTC's clock driver to mux in
> the external crystal if it isn't already muxed correctly.
>
> Fixes: cd030a78f7aa ("clk: sunxi-ng: support R40 SoC")
> Fixes: 01a7ea763fc4 ("clk: sunxi-ng: r40: Force LOSC parent to RTC LOSC output")
> Cc: <stable@kernel.org>
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>

Applied, thanks!
Maxime

--xvkou3vzvj43berm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXfqjBQAKCRDj7w1vZxhR
xRJeAQC1MebiUGSLkV/RhOb0whjdTggJMMda81WZOUUmTHudkQEA33OOy8QL7O6u
F8LFxhExb2qFBAWDGnRSUZcT3DyKhg8=
=8cW5
-----END PGP SIGNATURE-----

--xvkou3vzvj43berm--


--===============4480528107951339544==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4480528107951339544==--

