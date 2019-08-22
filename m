Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E128A98B4C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 08:17:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GjYTWcjRwlXIXuG8XxeTuqZcoJz2UgbmvYbBYOhQ3CM=; b=aNLdKPuMQNM+iIeiRXISgwCq0
	PmcFWGWwaOUzDcKbUTwxrRhlC6bT0TmobEh2g84OEyjIKMzWm5d6JpUQ4pk76xUJyFiIcuIuVVpsH
	oa/EafY6Lc++CYMW4KKWMbhhgvVa7Q2JxPy7vdqsGNwUOrAneueQXuIKtexlw6p6JnCiBBLxCfzN9
	rPI914Q0DvLQkaSk+ga8h/wx2JwB/ZKWMyhiovHD+btSUup8mxZAtaz+gcSgmTnxiM2rmgwocLwt4
	cKIELNSVjs2U4jRWft0gtiv664ju+oRFl6XfwngnEjrHUcfLU21HimgVWOjhCid4Nk/Z/FxhbaOiT
	zZWBHrxCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0gPf-0005Eb-Km; Thu, 22 Aug 2019 06:17:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0gPR-0005EB-FJ
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 06:17:23 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 765A92082F;
 Thu, 22 Aug 2019 06:17:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566454641;
 bh=QWkVZTnE7TpfYPs/BbkIMDM7h34eTIN/1qjE1rfxHwo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BcfzdWD0XF0SvN09G3WsSZHnoDTZ83QxE8ZR1f16L256nUV/JVvpNPaiyzA+8OCtk
 c3zlzAvy7VGv7iaCj4ulKymKVJbvIbmf717l/WcghKB6uQeggpSclZyaOUf80zD9hs
 HAWzVixeMrx0mJ2IEtaZKFcHSAvnKY+pbEpx/VC8=
Date: Thu, 22 Aug 2019 08:17:17 +0200
From: Maxime Ripard <mripard@kernel.org>
To: codekipper@gmail.com
Subject: Re: [PATCH] ASoC: sun4i-i2s: incorrect regmap for A83t
Message-ID: <20190822061717.yjvnnr326psa4r4c@flea>
References: <20190821162320.28653-1-codekipper@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190821162320.28653-1-codekipper@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_231721_534927_36D85356 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: alsa-devel@alsa-project.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, lgirdwood@gmail.com, be17068@iperbole.bo.it,
 wens@csie.org, broonie@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2141387446122628068=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2141387446122628068==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="5ufzyzs2ggwjbupx"
Content-Disposition: inline


--5ufzyzs2ggwjbupx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Markus,

On Wed, Aug 21, 2019 at 06:23:20PM +0200, codekipper@gmail.com wrote:
> From: Marcus Cooper <codekipper@gmail.com>
>
> Fixes: 21faaea1343f ("ASoC: sun4i-i2s: Add support for A83T")
> Signed-off-by: Marcus Cooper <codekipper@gmail.com>

The patch is ok, but you should have a commit log here.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--5ufzyzs2ggwjbupx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXV4zbQAKCRDj7w1vZxhR
xfPfAP4zvSBPA7HpdlMc4iMU5KhOSpimaoOr1DymhZ0Xnazn6AD/aHTHKG9yy3Ej
6/fLGUWkpxamiWdf2Mz7J6d0XQjJuww=
=CDu6
-----END PGP SIGNATURE-----

--5ufzyzs2ggwjbupx--


--===============2141387446122628068==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2141387446122628068==--

