Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C21C48B48
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 20:06:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3Xc8bjGPPUwwcRl5CIpsyM3HLt/36n6uDAvscZSkK0U=; b=gbw+Nfv/IH/DdPdH7Rik6BeSy
	WoaJR0IP/qD0EESvz9CABx9ZZ7FBKOaQc9UMZCFCBVz5+T49tKoIRbVXBGLm8q8m+d/YFPBNDECaw
	BdJu+lCmUO0BXzhKMTF8dEOwq7NEWqC7o8/iOxrBn0E8usbTQMaFwqrZ8M4yXd0YJzDgYVkJlx6F0
	m6F4hi7E7/JnPvJrMVKHq7KKExe1rkmq1UGbms+M0AAyHtSubiIjhTuZ00cOXO756/GzsLm0Ehh1I
	xLz0obngPE7YLURQSX9TI5Hk+k7wFH+DJXeEgdqspaqK22LQddm+kqfPMbj0VRxBJnOTXqQvDoFr1
	LoasZItiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcw1P-00075s-1G; Mon, 17 Jun 2019 18:06:23 +0000
Received: from anholt.net ([50.246.234.109])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hcw1D-00075K-Er
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 18:06:12 +0000
Received: from localhost (localhost [127.0.0.1])
 by anholt.net (Postfix) with ESMTP id B6ABF10A1174;
 Mon, 17 Jun 2019 11:06:08 -0700 (PDT)
X-Virus-Scanned: Debian amavisd-new at anholt.net
Received: from anholt.net ([127.0.0.1])
 by localhost (kingsolver.anholt.net [127.0.0.1]) (amavisd-new, port 10024)
 with LMTP id 8PYuFXakEulv; Mon, 17 Jun 2019 11:06:07 -0700 (PDT)
Received: from eliezer.anholt.net (localhost [127.0.0.1])
 by anholt.net (Postfix) with ESMTP id E6DD610A2D57;
 Mon, 17 Jun 2019 11:06:06 -0700 (PDT)
Received: by eliezer.anholt.net (Postfix, from userid 1000)
 id 3E5A42FE21CE; Mon, 17 Jun 2019 11:06:04 -0700 (PDT)
From: Eric Anholt <eric@anholt.net>
To: Maxime Ripard <maxime.ripard@bootlin.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sean Paul <seanpaul@chromium.org>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Daniel Vetter <daniel.vetter@intel.com>, David Airlie <airlied@linux.ie>
Subject: Re: [PATCH v5 12/12] drm/vc4: hdmi: Set default state margin at reset
In-Reply-To: <44e24172e300be6a41578517021ef6a6e90ed682.1560783090.git-series.maxime.ripard@bootlin.com>
References: <cover.5190d070d1439d762d7ab273f4ae2573087fee20.1560783090.git-series.maxime.ripard@bootlin.com>
 <44e24172e300be6a41578517021ef6a6e90ed682.1560783090.git-series.maxime.ripard@bootlin.com>
User-Agent: Notmuch/0.22.2+1~gb0bcfaa (http://notmuchmail.org) Emacs/26.1
 (x86_64-pc-linux-gnu)
Date: Mon, 17 Jun 2019 11:06:01 -0700
Message-ID: <87h88ojddi.fsf@anholt.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_110611_526960_0C087152 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [50.246.234.109 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: eben@raspberrypi.org, dri-devel@lists.freedesktop.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>, noralf@tronnes.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============9101597748404901543=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============9101597748404901543==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Maxime Ripard <maxime.ripard@bootlin.com> writes:

> Now that the TV margins are properly parsed and filled into
> drm_cmdline_mode, we just need to initialise the first state at reset to
> get those values and start using them.
>
> Reviewed-by: Noralf Tr=C3=B8nnes <noralf@tronnes.org>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

Acked-by: Eric Anholt <eric@anholt.net>

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE/JuuFDWp9/ZkuCBXtdYpNtH8nugFAl0H1okACgkQtdYpNtH8
nugSWBAAoWCP++Qwww0swu4BB53GOfyec6uZPvNui6Kyv639kpWntni3RiFigbwS
xEFlhRj4Cu/QqfHuyUS/qucK1TFBOHVm7UUpFqYMrwhUAsZfISrNVCX4cjudgbko
0a6EUps/1dtSfmnL8JIwHDKj2N+2nSNSqJan92NWs8zmykb7IUSXA0U7Gh7rmaoJ
aUgb6qhJBx4ogSTrQJBgHIHiq+QB5iQ/KPgBJNM760SbHHcSlkAfDqSOAWLJCAZF
mYBjmQXWzxByirAObw1m8VI+btCvwvNTMVZNCZN3MJf9q1RkKUm9s1sr0i/6PpQc
1Tli/VVkKZckDZx4EYh3FaLEYKgnko7J0bJuucHobpLeV6+OHEma7i3aSRSpCBwF
VKWUq9XYvrEtK3I4rL8We9CQ/s1d/VqaDU0K3TvLWM6VM8xIqQl30KlYGwF+e6Sx
IJE7bDkz/JFfgZUJxUDxzcVvxn8fGfmKL2wKy7lE+1zb1gpY1IHWBSrkrHjmT4Xu
SMsjujbN/18fzKs2UwVDt43jL/LYFkTrEnZ0wmkiLIYkNWic2cgUeda2tfZ4c2wR
CYJudsLZ+pparV+rCxG8ZOtQmmhdVrm5O797p9ccpbBrPu+37jg/1+jCDA7U0GtW
QTV5i5n2/g9CUHQ05I63ZX0yW8cEujXWO5zLiYotV2xMX8wvutI=
=MWY+
-----END PGP SIGNATURE-----
--=-=-=--


--===============9101597748404901543==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============9101597748404901543==--

