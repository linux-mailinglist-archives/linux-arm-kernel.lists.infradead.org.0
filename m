Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BC2411F2F0
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Dec 2019 18:48:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=10+LLkZCQsS6QTjdOcm4hqwFs7naTONpKKlrZartUR4=; b=bp/wpWJ1AdkDZOhrqO6b4NEjs
	Wnn41b3ntC0diot0g9lC2RmEIPtDGVI8sKcnBNVZTHf+1SKd13fLjHtuWOm+a/8Zz/s6d8xfZtybD
	nOQb3c+QEERc03HD7o5SwYOJfsGmuDylynxK/bT65QWly1B/K+WtKuFmXu+dWAl0Sj7AGrvuINBdK
	JY2kHnh33NPHRB51hPBnuCNO6YjSdzb5bSYTZQ/IaIXJPI2GnTIWsuzggDAIiVXfajddaGgS/UOWY
	pbd0wKF4WhVT6GtntBWoXRH6mIG72XAgc2ygg7Ld7n6VHMSit2zJqOX9Wh81IZ0y3y3VTAs9uBKb6
	cJLPWZiVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igBWx-0001VG-Ts; Sat, 14 Dec 2019 17:48:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igBWq-0001UT-6q
 for linux-arm-kernel@lists.infradead.org; Sat, 14 Dec 2019 17:48:34 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 688DE206B7;
 Sat, 14 Dec 2019 17:48:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576345709;
 bh=j0cVVduqPZlIJCt7KdsAChcBm98KlrgSj7LuGXfADtQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nRlUD67SsC3no5wZ2NmSP4n5VDMdh1W4oz9RpVBJ6Trchp7SF2sLUqgfZ75O+aP5g
 NSIqc9z359ro1N0EEVIQTRZUTyYGWl19SKWNpSeJ2RXsJV9anNpZSoLhD7gGvFmtHH
 qznE+LN5YjFEKs7o+211O29uI1CXRjcXTyrra02E=
Date: Sat, 14 Dec 2019 18:48:27 +0100
From: Maxime Ripard <mripard@kernel.org>
To: zhengbin <zhengbin13@huawei.com>
Subject: Re: [PATCH 0/2] drm/sun4i: Remove unneeded semicolon
Message-ID: <20191214174827.2ua36bdyd4cruany@gilmour.lan>
References: <1576317091-24968-1-git-send-email-zhengbin13@huawei.com>
MIME-Version: 1.0
In-Reply-To: <1576317091-24968-1-git-send-email-zhengbin13@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191214_094832_271411_5A3EB09A 
X-CRM114-Status: UNSURE (   7.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
Cc: jernej.skrabec@siol.net, airlied@linux.ie, dri-devel@lists.freedesktop.org,
 wens@csie.org, daniel@ffwll.ch, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1649080174865659253=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1649080174865659253==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="wq4asypllxoogmjg"
Content-Disposition: inline


--wq4asypllxoogmjg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Dec 14, 2019 at 05:51:29PM +0800, zhengbin wrote:
> zhengbin (2):
>   drm/sun4i: Remove unneeded semicolon in sun8i_mixer.c
>   drm/sun4i: Remove unneeded semicolon in sun4i_layer.c

Applied both, thanks
Maxime

--wq4asypllxoogmjg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXfUgawAKCRDj7w1vZxhR
xX5gAP4xFduplod+4goMNhuN53JJWcWKrNm3JMooYCbn+X57lwD/RxUI2b++7rwH
wFMmW+jkpz3dH1UwM163irZWST9Y7wc=
=NZ1P
-----END PGP SIGNATURE-----

--wq4asypllxoogmjg--


--===============1649080174865659253==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1649080174865659253==--

