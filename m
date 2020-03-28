Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C49B8196379
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Mar 2020 05:03:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=f7JzeaiMnMHdArpvlDFMSs2/Ld41kHGLO8T1kXAQNKs=; b=F1g+PN3AW0FtKm2DExpbjs8qQ
	JdE7EvAhb16S8cBn5GMKjxlSTZuQlzUryLR3e2eBfoOxJ8mRhVaAAtTsVmD0aKmI16n44hJU72JnX
	ztb2loM4fhPyP+b6KEY+IMP/Wj284WXxLYf2/cqt5fdBAG0VM8nfJTe6sGSBoMxpOnrplqJoBgEzh
	BrMTREvFDIU1pTOsyr0k1VyFh49Tt72bi28Pam8m3srqxteWzWCjoOYisDxO8R20JFzfuo8bcqk7N
	m0oQ5WBFuQFzbOMQJK5a1uWV78ts2LUzmAKPycBX1JyOTJGPfqs95Qz3qIhUySsnv6pWMOM+vkgn+
	hZIgt8GiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jI2ga-0007Jt-AT; Sat, 28 Mar 2020 04:03:04 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jI2gQ-0007Jc-Pq
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Mar 2020 04:02:56 +0000
Received: from localhost (p5486CEA0.dip0.t-ipconnect.de [84.134.206.160])
 by pokefinder.org (Postfix) with ESMTPSA id F17042C1F87;
 Sat, 28 Mar 2020 05:02:53 +0100 (CET)
Date: Sat, 28 Mar 2020 05:02:53 +0100
From: Wolfram Sang <wsa@the-dreams.de>
To: Alain Volmat <avolmat@me.com>
Subject: Re: [PATCH] i2c: i2c-st: fix missing struct parameter description
Message-ID: <20200328040253.GB1017@kunai>
References: <20200326212243.17363-1-avolmat@me.com>
MIME-Version: 1.0
In-Reply-To: <20200326212243.17363-1-avolmat@me.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_210254_985600_9519EE67 
X-CRM114-Status: UNSURE (   6.60  )
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
Cc: linux-kernel@vger.kernel.org, Patrice Chotard <patrice.chotard@st.com>,
 linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============4899330471574824645=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4899330471574824645==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="61jdw2sOBCFtR2d/"
Content-Disposition: inline


--61jdw2sOBCFtR2d/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 26, 2020 at 10:22:43PM +0100, Alain Volmat wrote:
> Fix a missing struct parameter description to allow
> warning free W=3D1 compilation.
>=20
> Signed-off-by: Alain Volmat <avolmat@me.com>

Applied to for-current, thanks! Please note that the 'i2c-' prefix of
the driver is dropped because it is redundant in $ubject.


--61jdw2sOBCFtR2d/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl5+zG0ACgkQFA3kzBSg
KbaZLQ//WVJmHFBdAbvHLNhIzPekQipZ/5fg8My9p15tb2DgQEeQj/6OIvj6aDSf
hq1fZ70fi9lzHAnvHZA60G32TXaq86qd3JPDaVtMCssDyfIzw33vbFe2SCJ9yR8i
cag28YevGk1SPShruPVjdMOW+MV9/a8wC4CD8qgadW5qJjd+O00pW9xSrygXk8JQ
s3WgQmJYNOuitS4vx282niWOOC948PUm3bqpby1taGq7knyhxW+M/Kp7Tln2LJ+r
x4wP0VRZcRCo/LgfXw7xv0F4OTk1Nn4rLv1SFHZ7yJZQn4XIbdmddtu8mpaMvHdq
LtG7snqpK1LlY/JLHzc2eBioK2dIYc88R7+GeUQAyxibdzuRMaZ0D20H9JGAG2Qr
NwQ56bhg50ugv4Hy4RO7JDMulcgBOmFTtOpW8/EgALOmaELXU+2qoaOhAUNiNOuC
Fk+cqV4slzUqg7vjs97krR43B43TnKW2kwqyxR0ffbFXQrlYyLFYuSBOj/Qk4qyy
9audI17Tbv5Ak8HuoQjyYzHAdg8GSA7qVPLIST9aRBgS+7lFBy7rBsEWpAmyrlGS
vtvXZ3cOO9GHSa1ZhetyzbSsokLnXSM7dv9P9WWie3Zs/5eO3wxr1yGrX32KCavR
/BC/BAonzKU9dGrf8WidPCyABqF897bN7FZikH0Dzl1E5RpYU1s=
=ocy+
-----END PGP SIGNATURE-----

--61jdw2sOBCFtR2d/--


--===============4899330471574824645==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4899330471574824645==--

