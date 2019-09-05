Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3096AA4A7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 15:38:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AFEfTPJdEzyD7so0BIrrY0g1xpnYSAOJtkfeD46wugw=; b=QV+idKldZVPdLWJHTC5vzye5p
	vzQvEZV5pFOyDVmNXGOeRVcMmjBnrmUKkeQvEwAmygKTRpaL0kXgSALIvjMoCUPvRveQRSNqf9Piu
	c6YKvnVIJG8lk51y0JZWvGqPfFt2Jzwt3t+hH1X5mJ0+cIZN9sfg6+pNT5XDmy2Xn/y+RrB9bDIdr
	Jpx5r9o4JEnrhT+qacWM4Jd8TbArBjsJFCqY21DTSmiOXdL9mAYBts+2zurSEWRZ8aAC3Zn+Nw95C
	2KAuVUj5o28pKRamabimbZ8XbRfItLpn9KH5YhhjttlU9HIoFXnBAX+nlsR4TKczegf+dla8VtsXx
	OPITNVpsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5rxY-0005OS-38; Thu, 05 Sep 2019 13:38:00 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i5rxM-0005NI-U7
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 13:37:50 +0000
Received: from localhost (p54B335F6.dip0.t-ipconnect.de [84.179.53.246])
 by pokefinder.org (Postfix) with ESMTPSA id 31A312C00C0;
 Thu,  5 Sep 2019 15:37:44 +0200 (CEST)
Date: Thu, 5 Sep 2019 15:37:43 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH 1/2] i2c: qcom-geni: Provide an option to select FIFO
 processing
Message-ID: <20190905133743.GE1157@kunai>
References: <20190904113613.14997-1-lee.jones@linaro.org>
 <20190904203548.GC580@tuxbook-pro> <20190904212337.GF23608@ninjato>
 <20190905071103.GX26880@dell> <20190905091617.GC1157@kunai>
 <20190905093444.GE26880@dell>
MIME-Version: 1.0
In-Reply-To: <20190905093444.GE26880@dell>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_063749_117582_78CF776C 
X-CRM114-Status: GOOD (  13.57  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, agross@kernel.org,
 robh+dt@kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 alokc@codeaurora.org, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6472864147567913146=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6472864147567913146==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gMR3gsNFwZpnI/Ts"
Content-Disposition: inline


--gMR3gsNFwZpnI/Ts
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


> > So, are there investigations running why this reboot happens?
>=20
> Yes, but they have been running for months, literally.

I see. This is good to know. Just so I also know where we are with this.

> > Which is a clear disadvantage of that solution. It won't fix older
> > kernels. My suggestion above should fix them, too.
>=20
> Not sure how this is possible.  Unless you mean LTS?

Why not? Using of_machine_is_compatible() makes the patch 100% self
contained (no extra binding needed). It will work wherever the machine
description fits.

> > Unless we know why the reboot happens on your platform, I'd be careful
> > with saying "work obviously well" on other platforms.
>=20
> Someone must have tested it?  Surely ... ;)

It seems to work mostly, I won't deny that. But we don't know if the
buggy situation can be triggered on these platforms as well by something
else later. We just don't know.

> > My suggestion:
> >=20
> > For 5.3, use of_machine_is_compatible() and we backport that. For later,
> > try to find out the root cause and fix it. If that can't be done, try to
> > set up a generic "disable-dma" property and use it.
> >=20
> > What do you think about that?
>=20
> Sounds okay to me.  Let me code that up.

Glad you like it.


--gMR3gsNFwZpnI/Ts
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl1xD6MACgkQFA3kzBSg
KbbjbRAAoIoQeZCMH5wLWkFBosilnEpvLFsBKQ9e1UoyHCK9wZiPoKduvpoo2g4R
RLSwko3R49cuGKCMy3e7WeX+bOekY7xaP4M79/b/jOp7JBm3rhbKj2NjHNl7hz2b
GRgIR9rCK7LbzfT47jf2p8rYGXTa2e4285Z6LqLwncf3E2ZGIntEE7Trc9hZbn2c
MI+dMDgRvUUotGXQ0H5+XVRLjpPLi2p4MJhSE1wQpsAl1q2vD3sOdnG1ewpj2akI
O3H+tupA5EU3MEMeWLN2LLhTAllw5uopqX74r4TCwfFl8QYOYZ/7Z4UfTsKLiY9q
I/VbXn8NmghJTbnFogH8Ne6fm/omHZDPzO44bznJeDKtfAc2P+LKQOjAXpA0Iaof
Qv6zBX7P6eILRJtxr6IeYbrmvaV85wyVeAf2Kxucxo5BIq5HwulcjX3Qxu6GGal8
9zhmaOu8RmL9DYHWXr5IaG8+Lx88ftTspUHD4AiYxDbMWkRTbrENV7m6lLWtDTgZ
VQ5hDBtx7HZEFb9I/ToOTBkL8zwiHRCKvAhtRNfMTBHixl5q5Hy68RI77Jywp3+G
ku1M7uMksLAgH7u8UGxWtxkimxcEcYGAvXwaffbqfQnswOSPD7l3iL6k9uv5hYC8
ZKwMfYXGXIcWI6l7qWcFkoTpIVsb3Sflshc1I7iHAGJov017tSI=
=0if5
-----END PGP SIGNATURE-----

--gMR3gsNFwZpnI/Ts--


--===============6472864147567913146==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6472864147567913146==--

