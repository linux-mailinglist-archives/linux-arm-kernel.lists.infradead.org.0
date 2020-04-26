Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB3341B8D99
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 09:44:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Y4WD0i2JjjMXmjaTQjqDPADP2r76yydd1aoBiLgiE6Y=; b=Sxz8RKL0LQZQI705mAbQyxkFL
	nqrrVPFIAJnim+uEcgJtJTjbVUpT1kaK3dNMEdBNxjKhdXCkMiMg5MM/lpZbxZXpnE2fDL83SGflG
	wQmi04NTpg/A98HjzAcnQByIs2ME8dF68sHYGWgXwWj4xJphXOGS2rdJAzGS7fvNOnGktW+X+V+r6
	+TUaNdCEo7tqVneX8zlmdM+cLnPkRMHG5W/LrurMFM6X0ACxsdqP5Q6QE3jkr+4LBIWGEfKrzILTT
	1VDy9a2B44C0iwcQvO7hCYR9rx9A3cl0DRSTSYA5s8LlGDqhJywaVJV7VNHul2U7uevwHKA/qQAJw
	hw6PLL5OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSbxz-0005kI-L4; Sun, 26 Apr 2020 07:44:43 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSbxp-0005ik-U5; Sun, 26 Apr 2020 07:44:35 +0000
Received: from localhost (p54B33954.dip0.t-ipconnect.de [84.179.57.84])
 by pokefinder.org (Postfix) with ESMTPSA id 80B422C01E8;
 Sun, 26 Apr 2020 09:44:30 +0200 (CEST)
Date: Sun, 26 Apr 2020 09:44:30 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH v2 01/91] i2c: brcmstb: Allow to compile it on BCM2835
Message-ID: <20200426074430.GB1262@kunai>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
 <c8c666eb5c82dcb73621930b3fedf5814792bf1a.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
In-Reply-To: <c8c666eb5c82dcb73621930b3fedf5814792bf1a.1587742492.git-series.maxime@cerno.tech>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_004434_122176_0AE6A2E9 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Kamal Dasu <kdasu.kdev@gmail.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-i2c@vger.kernel.org,
 Eric Anholt <eric@anholt.net>, bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2374011245394595297=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2374011245394595297==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="/NkBOFFp2J2Af1nK"
Content-Disposition: inline


--/NkBOFFp2J2Af1nK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 24, 2020 at 05:33:42PM +0200, Maxime Ripard wrote:
> The BCM2711, supported by ARCH_BCM2835, also has a controller by the
> brcmstb driver so let's allow it to be compiled on that platform.
>=20
> Cc: Kamal Dasu <kdasu.kdev@gmail.com>
> Cc: Wolfram Sang <wsa@the-dreams.de>
> Cc: bcm-kernel-feedback-list@broadcom.com
> Cc: linux-i2c@vger.kernel.org
> Acked-by: Florian Fainelli <f.fainelli@gmail.com>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

I reconsidered, and took it right away (as simple as it is). Applied to
for-next, thanks!


--/NkBOFFp2J2Af1nK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl6lO94ACgkQFA3kzBSg
KbZFhBAAs2bJNAZObDsII7NU9/pSPz0KOAuFHG4QW6TOM16OZ4b/lTSXaSkQ1HcL
LbLMUVilemyw437H86PJ2dcPM3a/aLzXkaWm2TNYJ3E5JkxFraucv7X3+ym40aKM
RH26F0CLpOg/MoMmJ1rtTP94l6hkesilTxRvJJbzHjJ2+oFzkN8esTPbAWjzu5Vv
4cmgbM/soxX7SLyeelpmLC5H1Ys6k4OU3sQGfaj3WKRAMAKKLU7rfSS7Cr8SHf0Q
QFNIAoTjWWJV8RvSozk5dLhkQUmaorBYb8Ur1ejFNMxPnmkbHfPw0ufa9Y8FTvLg
ts4gRnvW3VcTNhQ3leJ+D6inGrEWDrsHQL4B5D4ILTwO9VQkeEuEvhD9Y/Y2YDbq
27wH9bZP/JC7h2PeXEBKa+gHeXECD9jtkG55cqomc/y7P0qwEEktrsX3bPmSeCjD
5HFRF43j4Wx6dSZk4CHm+wtIjIGPVEY/BvKQuXQ5lqP2/19FZcuK6xWNoOOoal+5
VDLPRgcLYXWshddjwX7Ib1n/Ce5WI9QxxOwXQ3dvaw1scvnDVos4FX3eZx7qffod
2nvoesD3jLeBIEH2gj2oZATWqW0kK/pAeNcp6uudL6RfwgFVrfFwelsSJC3BS3L5
9k0AsAS55tnve9Ogh+WLlXSyDw1P+1WWh5rxO1Hiw+hO0nZz/GM=
=6889
-----END PGP SIGNATURE-----

--/NkBOFFp2J2Af1nK--


--===============2374011245394595297==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2374011245394595297==--

