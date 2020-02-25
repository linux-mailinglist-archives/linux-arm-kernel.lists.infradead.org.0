Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0FB116C458
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 15:48:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AwJWvD2xDwzQc/Z4hpOBlivNWQikmjKory0+1/KSmxs=; b=D6yPwCq/ddQ4ApoaQX4IDS4AL
	IRtKo7Ti4Lwer6jU/riby4KXweEppOx99vIVlAGf7fNP/f7aEeCX9ezhV4PgmmLfsZOmrw859cBvN
	YLLXX9U+wKTsDdI6HxR1Y5nBuW9yf9UIshc0F/TeCvj2mcSsO5sYzHbzKLxRzkl94VBsN/j31f0bc
	ruaYodIkfbHm9KcehlxBvv5V5LOlEuxPcDiewlUL0xY8xIpX3qHULthGbZjAcCPzPdWcZbNea/RJe
	HmtwM5f+IaG8XkvystEucceBkEU73NKWjiWUP0boaGru6JzGp/AWz4SRi+hCPa9LlcbqBx0bpVXKL
	vlIb+enZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6bVm-00083N-Ey; Tue, 25 Feb 2020 14:48:38 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6bVW-00081F-Mk
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 14:48:24 +0000
Received: from localhost (p5486CE6D.dip0.t-ipconnect.de [84.134.206.109])
 by pokefinder.org (Postfix) with ESMTPSA id D6A922C1F2F;
 Tue, 25 Feb 2020 15:48:21 +0100 (CET)
Date: Tue, 25 Feb 2020 15:48:21 +0100
From: Wolfram Sang <wsa@the-dreams.de>
To: Michal Simek <michal.simek@xilinx.com>
Subject: Re: [PATCH] i2c: xiic: Support disabling multi-master in DT
Message-ID: <20200225144821.GH3677@ninjato>
References: <20200218135627.24739-1-ext-jaakko.laine@vaisala.com>
 <481fe028-0ec6-eca3-7436-ebbb8527f3d8@xilinx.com>
 <AM0PR06MB518514EE9C057CB129079825D4ED0@AM0PR06MB5185.eurprd06.prod.outlook.com>
 <20200225141357.GE3677@ninjato>
 <AM0PR06MB5185341478B6919A9CC22271D4ED0@AM0PR06MB5185.eurprd06.prod.outlook.com>
 <20200225143245.GF3677@ninjato>
 <431d520b-24a1-687c-1f4b-4ebe95181a2b@xilinx.com>
 <20200225144146.GG3677@ninjato>
 <4557a127-833d-d829-1490-e76912f099dd@xilinx.com>
MIME-Version: 1.0
In-Reply-To: <4557a127-833d-d829-1490-e76912f099dd@xilinx.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_064822_898351_996BE2EE 
X-CRM114-Status: UNSURE (   5.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Laine Jaakko EXT <ext-jaakko.laine@vaisala.com>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Shubhrajyoti Datta <shubhraj@xilinx.com>
Content-Type: multipart/mixed; boundary="===============5142804164801099914=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5142804164801099914==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qM81t570OJUP5TU/"
Content-Disposition: inline


--qM81t570OJUP5TU/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


> >> Wolfram: Any option about that multi-master property?
> >=20
> > Not yet.
>=20
> What does that mean? Do you need time to dig into it or you don't mind?

Need more time.


--qM81t570OJUP5TU/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl5VM7UACgkQFA3kzBSg
KbZgiBAAqB98meLh2mfZKZNoHhyfAsvidvosFAieRPv9MjaJ2U0Qms0Ffy1uWyC2
92RMYczi8KCA5pX+z+53rNZZVsUARC9CMwx6YF0h9NLjdhowYijWjQP8TYxj1+4O
rXoB091eUPQuGtqg3ltHCZBso3+Nm2FvSCMly2fZRSDjH6bsxpJCZllu59CCdbMC
pb9J+E/e7qHtV5eQR5aRe4NIqGKwN93ugJL8J949gHWloi90doZfnFY2EeyQeae4
t/2sqI3OFSUjI+B9+GaU4R0CLsy9AkTxEypGRf2UYqBpqHldf376Lfozw7o2BZ9Z
qWzOUhj4RxjV8ZzRHMt2c47rcO1tmwVFsoj1Oyoz9pLlvida3BAWWJjZl6PAc3zD
pyzqZs7YB/HKIS2QYsCulQ4f9QbbOVxSmr+bEJEBfFkJWQ/4cEu5y71JzrpgYEgv
J7lC9lWczJTFm69W73lAyLuvea+ZNcfP2HFcUslLC+ZvdUL9Q44dkvrLR6g2YCD0
l9+2wW5wqabWZI/GFZ2eqVgoYejCQqX048M5SoWyWc+lZGCqT1mKxaBuin3+W3Wg
47jG8cci6BmWAIFI+9EmJbrPIA/If22/d1QfFzrZs8wCT7LYFUyT+XZ8jSzDKn5S
sD51U6awtbhQXb+yC6qBjM+Luqr3OL3ssl9IQya1ZUQRMa9S8Bs=
=t2R2
-----END PGP SIGNATURE-----

--qM81t570OJUP5TU/--


--===============5142804164801099914==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5142804164801099914==--

