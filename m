Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49AD914107F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 19:12:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ikj7rIFGbqQ5N71v1p2dDqAd/Na+u7dnffOan3LkCbw=; b=bE6I4axHBM9BBc8VGzJQWBmZr
	CEWcqIdtheU3ccZ5FZVPTtGNmndZ5/1x6ljc3TInaiNNmfZLJK3Eql6EtPfRX6WsOkjno9yz8HpbW
	NypeT85UxK7sCDuEkfFpx912zsrHa9H3aickMz2Z6OMC8gSHk8gFs5AvrRNllwaEvSN/PNYId7PTp
	TcqAaHei7D52nJmo/lpgwJGOY+7r/+YZR1FRt42siurxZy6rEbwRuR6yfwHb4AUF4VY2+TW5VKGKi
	pmmdMQWBD0sdX2e4PmicWrFKAAlI8dOLqQ+x12LWRKZEZ4/HEASdwn312KDz0+dmU21NQQguLJdl+
	ac4DF9H4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isW6l-0002Xb-19; Fri, 17 Jan 2020 18:12:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isW6Z-0002Ww-UH
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 18:12:25 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CE02220748;
 Fri, 17 Jan 2020 18:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579284743;
 bh=IdyrMy2nrlmfkVGDIpnIS4HjWOBUiobj0MXhdDTQd80=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qn8SJYF+AS+5NobYCLPOms9TMfbOAaRLKRT/vF9O3TGrTA/TSz2xio4FkapxEPz75
 ddlusE4o2/5Y5ESlOgi6OjeXsjycbBuHKF0v1wIePlD9F9K4cLQ30MncZqSa7pMBI2
 naGnJwDelSv6i33seCm+qy64/LRjP4yCKeXIGxo0=
Date: Fri, 17 Jan 2020 19:12:20 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH] ARM: dts: sun8i: a83t: Fix incorrect clk and reset
 macros for EMAC device
Message-ID: <20200117181220.biryjou5zvqfxdnt@gilmour.lan>
References: <20200114094252.8908-1-wens@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20200114094252.8908-1-wens@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_101223_993271_93BA83FE 
X-CRM114-Status: GOOD (  13.12  )
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
Cc: devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2866255388723521663=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2866255388723521663==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="bzobas6k7fsnitoh"
Content-Disposition: inline


--bzobas6k7fsnitoh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jan 14, 2020 at 05:42:52PM +0800, Chen-Yu Tsai wrote:
> From: Chen-Yu Tsai <wens@csie.org>
>
> When the raw numbers used for clk and reset indices in the EMAC device
> node were converted to the new macros, the order of the clk and reset
> properties was overlooked, and thus the incorrect macros were used.
> This results in the EMAC being non-responsive, as well as an oops due
> to incorrect usage of the reset control.
>
> Correct the macro types, and also reorder the clk and reset properties
> to match all the other device nodes.
>
> Fixes: 765866edb16a ("ARM: dts: sunxi: Use macros for references to CCU clocks")
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>

Queued as a fix for 5.6, thanks!
Maxime

--bzobas6k7fsnitoh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXiH5BAAKCRDj7w1vZxhR
xaaXAQDsG2aEO1qdNIVRhFZfwLaBsqA68VlRWQyNaM9q4IclmgEApgHG16xb1DWI
RSmavsHC0ZQmsOTVpBI4SiaME4t3qw0=
=cMS9
-----END PGP SIGNATURE-----

--bzobas6k7fsnitoh--


--===============2866255388723521663==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2866255388723521663==--

