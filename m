Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E15A7F19E7
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 16:21:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=059x3VyY2Vz3rryHfoh483FavHOq3xyKbE3JKHjfaVU=; b=hVj5ria5jqO0GkLDxGojq+RhX
	gZOWYHL84/y8g2wQysb29EWu32ON7NQuG9LAe8ZQHLhY2AKXWXoORAgVn51G5tEhWplmR+8IQx+lq
	D9BDZEx8jltJFcxx6fgmgZB8QaQv/u8sYqoBug80AlIDkDvKVPRpCMLk/JInV3/elIlxNh970uMri
	Hg71Y5g6fFvQCIpehAlg71U57UEZUN5D0GDDXQ3iJNiEvO0FBFgma9/iWcwM76p6GSB5fAqJDIsyZ
	CZUR2IZCJJLsVx9m7BnW8zAToxPsvF3exNr/yaj3CrkumyDx4itTy1hhq1VozIodyb8n3j4ryDBbH
	oKKiG9ByA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSN87-0000Wg-QY; Wed, 06 Nov 2019 15:21:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSN7y-0000VR-Go
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 15:21:47 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 85F712166E;
 Wed,  6 Nov 2019 15:21:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573053706;
 bh=Z5uRUEYMHnBMAkQQBIKbi4YuTu5BKSlKgXYE8gT6Bec=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=xKVvy8T7SQJv8gsuGyvvTQw5ONXKSc54BOSU448ev64QRk472PQZFFT/nTB1gGfTm
 HRd4abZ6Xa7XqWJMo9HkBoVMefaUGGv+B1N4aOjiFIldwk1TT+GQZckyJ9+VsuL24s
 agEi5bAJHcKcE/67YTYJsBFrzLGsfB8dA+5fwHKE=
Date: Wed, 6 Nov 2019 16:21:31 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Torsten Duwe <duwe@lst.de>
Subject: Re: [PATCH v5 2/7] drm/bridge: split some definitions of ANX78xx to
 dedicated headers
Message-ID: <20191106152131.GD8617@gilmour.lan>
References: <20191104110400.F319F68BE1@verein.lst.de>
 <20191104110605.F012268BFE@verein.lst.de>
 <20191105104126.GC3876@gilmour.lan> <20191105173332.GA11570@lst.de>
MIME-Version: 1.0
In-Reply-To: <20191105173332.GA11570@lst.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_072146_586304_435B67A8 
X-CRM114-Status: GOOD (  17.98  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Andrzej Hajda <a.hajda@samsung.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Harald Geyer <harald@ccbib.org>,
 Sean Paul <seanpaul@chromium.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: multipart/mixed; boundary="===============7405737303980231652=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7405737303980231652==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="6WlEvdN9Dv0WHSBl"
Content-Disposition: inline


--6WlEvdN9Dv0WHSBl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi

On Tue, Nov 05, 2019 at 06:33:32PM +0100, Torsten Duwe wrote:
> From: Icenowy Zheng <icenowy@aosc.io>
>
> Some definitions currently in analogix-anx78xx.h are not restricted to
> the ANX78xx series, but also applicable to other DisplayPort
> transmitters by Analogix.
>
> Split out them to dedicated headers, and make analogix-anx78xx.h include
> them.
>
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
> Signed-off-by: Torsten Duwe <duwe@suse.de>
> Reviewed-by: Andrzej Hajda <a.hajda@samsung.com>
>
> ---
>
> On Tue, Nov 05, 2019 at 11:41:26AM +0100, Maxime Ripard wrote:
> >
> > This one doesn't apply on drm-misc-next. The fix doesn't look really
> > obvious to me, can you rebase and resend it?
>
> Sure.
> The set was based on 5.4-rc5, which lacks 025910db8057f from drm-misc-next
> You'll also have to
> diff -r anx6345-v5/v5-0005-drm-bridge-Add-Analogix-anx6345-support.patch anx6345-v5a/v5-0005-drm-bridge-Add-Analogix-anx6345-support.patch
> 116,117c116,117
> < +     [I2C_IDX_DPTX]  = ANALOGIX_I2C_DPTX,
> < +     [I2C_IDX_TXCOM] = ANALOGIX_I2C_TXCOMMON,
> ---
> > +     [I2C_IDX_DPTX]  = 0x70,
> > +     [I2C_IDX_TXCOM] = 0x72,
>
> To make it compile, with the changed coding style of 025910db8057f.
> Can you change that on the fly in 5/7 or shall I resend that, too?

Please resend the whole series rebased on top of either linux-next or
drm-misc-next.

Maxime

--6WlEvdN9Dv0WHSBl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXcLk+wAKCRDj7w1vZxhR
xbUHAQDw1ZTTedeTOWdyiLtw5dPLgY1kNJLxyuWvOWpHnLkvfwEAtl4uNwJQytsL
qdyuTkhCiUtsu2g+nFxjoWkC/bEU0Q0=
=JKza
-----END PGP SIGNATURE-----

--6WlEvdN9Dv0WHSBl--


--===============7405737303980231652==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7405737303980231652==--

