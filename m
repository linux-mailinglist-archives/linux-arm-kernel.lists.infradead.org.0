Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D9D614A102
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 10:43:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IEyAG3k6pkrmZ9LY0/9hwbI/9qV+ZIGiS7sOa40PSU4=; b=QUJApksnMg4+tK9IKy/emk/S7
	IRq7XPp2LLYoJv13sGFV7MKBIIgvsFD1Qm/9sTiKg4qMnddLdpDVNjCsEyV+wZE39OBLiN8bhSWiX
	aVrZi20o4OkZH/N+vOnTEfOVEIkiXcQ+ej/cyIXEo7FK18Khc5f4FWjxfM6aw1K6dJMt8EAaCgvSG
	5oGCOQZUqb5KyJ2Tl6XD7Xo764/F90kSVSfJvo3mPutS/F71fXj2Xi9C2kPsgWxs5hc9cFQeGiHvT
	HWzQVNEY793jim6mxHPLRFKk1HHDkGjxJIpQXSJMRbm/kQbCyu8fFoo6OO6460/mqp6hOMkAe3J9z
	RfEA2lJ+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw0vU-0006bo-Eu; Mon, 27 Jan 2020 09:43:24 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw0vK-0006ai-Hy
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 09:43:16 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id CB9F221AEF;
 Mon, 27 Jan 2020 04:43:06 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 27 Jan 2020 04:43:06 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=bshoA8LerED0wuEUEdmFMI+f7iF
 /vCx4mlFcm2okIV8=; b=YuM3SuKZ/qWIx8fc8/D8qwqXAozgbrwbsYJja2Zlv81
 XT9jImVbxwhcyHbuMkLglRtXIsEs1/zR+7npMRtE7MGNM+XvQ/8TEKgRJ82evN76
 bjwOzzxn+slwAJ+Obeb4eZlfD+6BmVqhknaxcPsZejPBvZiRMUo3eZ+Ycggkf/cG
 x8hjHaqKo44nSxBUSRFJXCEzBbwER9PxLBj1Hw5MQjfyAamM8hqU3xCKHe4kMA4p
 Cvy4lP5DzOdbs1dvcoFFS2pgH1qViYY3/zfqTYBsk8uMepkvTsqutsNKdlEpKfCi
 1uittLHkkwgPkxAbLi/5zd0eteGQSi4yavd6J55bNSQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=bshoA8
 LerED0wuEUEdmFMI+f7iF/vCx4mlFcm2okIV8=; b=fGXN3cXWrg4TI5NwQ4ptJR
 URUsqufC1EDh4HOHPzKq+2n4IcAPnXy9VcfdUIWK+ILio7WLonJd5tsPVZXmaQyz
 Azw4eipA4fsjtj/5yJnXutrB9VAr2HUt8EltWzdDhV+Z2uhfJ5qoX1yi5e5p/JmQ
 nkIFQ/KeFzxAhIEhsSfNDCabF90rJfJWXcZEFxhzyA52+8KdCmSOd6heJ7I/f+zK
 /FcbhfQaTLljF3E3lVDNOS4PdfQNKcZyg/umMdwLmiXNxFryeYEm0wFVqjc45SJj
 OlHNA7AEJiMZxfpItC5IV1Ibt99ufUVpceC6I8D3Zb4/TTlFHU71vOKCWLZzQD0g
 ==
X-ME-Sender: <xms:qbAuXpK-tYARlgxTRiGmjozSSUkbqvQpPgQ3TsXNSnVo88QF9j3ZUg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrfedvgddtjecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:qbAuXpZFVgKhv7lEooWFM4AOLgUnAkZpuCYz2B2UqnPNJvMmlHCrjQ>
 <xmx:qbAuXstRM30ZETJDUrA59elu9e8sy4kMimPKym8pjTw_0KeldMIDzg>
 <xmx:qbAuXus-eeriZAQJtHU6el6vhyDBpY-hV6U_3G7HPWG1MDb4WRZjFQ>
 <xmx:qrAuXp7tpbVK-vUDA1DnLpw5htIQ-MKHYeYWnIhmxTWI9TmLWT1zDQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id E78D4328005A;
 Mon, 27 Jan 2020 04:43:04 -0500 (EST)
Date: Mon, 27 Jan 2020 10:43:02 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH] Revert "drm/sun4i: drv: Allow framebuffer modifiers in
 mode config"
Message-ID: <20200127094302.f3s4caona5is7gd5@gilmour.lan>
References: <20200126065937.9564-1-jernej.skrabec@siol.net>
 <20200127081419.GA25668@aptenodytes>
MIME-Version: 1.0
In-Reply-To: <20200127081419.GA25668@aptenodytes>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_014314_740881_BBB02323 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.26 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Jernej Skrabec <jernej.skrabec@siol.net>, airlied@linux.ie,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, wens@csie.org,
 daniel@ffwll.ch, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4687483029519937263=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4687483029519937263==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="dboxkgv3c732tn6y"
Content-Disposition: inline


--dboxkgv3c732tn6y
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jan 27, 2020 at 09:14:19AM +0100, Paul Kocialkowski wrote:
> Hi Jernej,
>
> On Sun 26 Jan 20, 07:59, Jernej Skrabec wrote:
> > This reverts commit 9db9c0cf5895e4ddde2814360cae7bea9282edd2.
> >
> > Setting mode_config.allow_fb_modifiers manually is completely
> > unnecessary. It is set automatically by drm_universal_plane_init() based
> > on the fact if modifier list is provided or not. Even more, it breaks
> > DE2 and DE3 as they don't support any modifiers beside linear. Modifiers
> > aware applications can be confused by provided empty modifier list - at
> > least linear modifier should be included, but it's not for DE2 and DE3.
>
> Makes sense and it's apparently the norm to not report any modifier blob
> when only linear is supported, so let's stick to that.
>
> Note that when the reverted patch was applied, the core didn't set
> allow_fb_modifiers on its own yet. But it does now so let's rely on it instead.
>
> Reviewed-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>

Applied, thanks!
Maxime

--dboxkgv3c732tn6y
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXi6wpgAKCRDj7w1vZxhR
xavxAP4+7B2OvLts72lO+MlX4gW/ovZVA2uVk36MX4C/iIDjEwEA5luy/xFLJESN
/5djBA1bCYNq8JOCyHu+M8HYXgQ0DQE=
=qG/B
-----END PGP SIGNATURE-----

--dboxkgv3c732tn6y--


--===============4687483029519937263==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4687483029519937263==--

