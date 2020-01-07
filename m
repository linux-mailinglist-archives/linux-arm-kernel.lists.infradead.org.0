Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11CCA13299C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 16:06:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=h2HwkgsWpYlQWUgIW8ihoyDtAFEaAv94zsTg9mJ6YBk=; b=NHD7a2h2Syzxeh5CgSYn3MxU+
	kb8w4wvzqLv0Y8Ms9N86rXXiyTeYONplx9M7yKRbRwZMfBG/A7mLCgBINJu3o/Pqgz4VAyAFoabWN
	AloaLAXNCgbIvoKU5Zjc4jymU+MXON94H6kaqPOApCul2yGjVXkcmgptUFAkFTBC/JoBWCnu/wUv4
	iWydpT5wxBxmm0sMRgcy6dO900CYTPclKRow1V5c573cK7eiZIYg6WSX10EDEhv+gATwyQ3ASzQaU
	mGj8PjJPBbayrpeyGH8pTf8m0Jnh5B/yvO0XipR5+fiFZu6WtlRwUQJgUsFE0uacSjG/wxVJsVuCQ
	71P+eagYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioqRI-000532-5a; Tue, 07 Jan 2020 15:06:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioqRA-00052i-FY
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 15:06:29 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 83D012087F;
 Tue,  7 Jan 2020 15:06:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578409588;
 bh=+y+aWqsEqk2+D9Baxc1ravTEaKC6Hg6OrUKouQASJFI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aGcPyhZnC7+FqmaURKzkdbH8gwRkbCGrcv15/QY0sFaTSSpSdUJzt3yF0mMK/Qg3E
 EwdVYzY5dcdj451Mrzm/4tIYZK4MZvAqdm2+nCKxgG7wJSry8pui+CAxbpdkd4mW2v
 T28gft04vtvzuNXQCXdxGba1rPmhNJy7/DbrV5YY=
Date: Tue, 7 Jan 2020 16:06:25 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH] drm/sun4i: tcon: Set RGB DCLK min. divider based on
 hardware model
Message-ID: <20200107150625.sj6x4u67diac3v5p@gilmour>
References: <20200107070113.28951-1-wens@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20200107070113.28951-1-wens@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_070628_540332_DEE82CA6 
X-CRM114-Status: GOOD (  13.71  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Chen-Yu Tsai <wens@csie.org>,
 stable@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============9096883324890824459=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============9096883324890824459==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="xezwhxxbc3anpsth"
Content-Disposition: inline


--xezwhxxbc3anpsth
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jan 07, 2020 at 03:01:13PM +0800, Chen-Yu Tsai wrote:
> From: Chen-Yu Tsai <wens@csie.org>
>
> In commit 0b8e7bbde5e7 ("drm/sun4i: tcon: Set min division of TCON0_DCLK
> to 1.") it was assumed that all TCON variants support a minimum divider
> of 1 if only DCLK was used.
>
> However, the oldest generation of hardware only supports minimum divider
> of 4 if only DCLK is used. If a divider of 1 was used on this old
> hardware, some scrolling artifact would appear. A divider of 2 seemed
> OK, but a divider of 3 had artifacts as well.
>
> Set the minimum divider when outputing to parallel RGB based on the
> hardware model, with a minimum of 4 for the oldest (A10/A10s/A13/A20)
> hardware, and a minimum of 1 for the rest. A value is not set for the
> TCON variants lacking channel 0.
>
> This fixes the scrolling artifacts seen on my A13 tablet.
>
> Fixes: 0b8e7bbde5e7 ("drm/sun4i: tcon: Set min division of TCON0_DCLK to 1.")
> Cc: <stable@vger.kernel.org> # 5.4.x
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>

Applied, thanks

Maxime

--xezwhxxbc3anpsth
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXhSecQAKCRDj7w1vZxhR
xQFaAP9wLF9udsuevqjGAE3LAn6TCRsCdWejtoRRsX5mYATyzgEA6SE+BSoFd/Ct
dU/RYO3cR8I6jmK7T2SuD3yh1MdfgAE=
=Ruky
-----END PGP SIGNATURE-----

--xezwhxxbc3anpsth--


--===============9096883324890824459==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============9096883324890824459==--

