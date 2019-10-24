Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73847E3B15
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 20:35:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=M/mh4J7UAME/XaSXWHoZXoJ8ue7d5Nv6TaAdl/qj4I0=; b=UXnRjixxmIjkQ6ciHHt7lgSwc
	D7KH4/vR1EVPPDM8lLvTGkhXJR13+aqwRLKBCBLE7twnhY+3QSO+9NZsFbedTBDuBePEyZiboM6QQ
	ptHa/chK+8rUvMbtnpmETV1dHnp+ndhUcEE+YsxgKuB41fnTeuEiBydvjVzDkg1Px4eabL+gNKbG1
	j8KB2ZU13HMxr5n8OpJ9+IZYG8CReapjJGYA/64zra1lLdl+l4V9n+p0q9NLcGta7TBd5Es3mtl0B
	OK40O3aMqdr/6Apw53mP9Nt9s0W+gn2LG5r2t4QoBfKzDE63cq89ZvG5lNpo2sVIH/l5bgZHTYJEe
	OfMO1yYsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNhxQ-0005hx-7f; Thu, 24 Oct 2019 18:35:36 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNhxH-0005hW-3l
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 18:35:28 +0000
Received: from localhost (x4d0bc9de.dyn.telefonica.de [77.11.201.222])
 by pokefinder.org (Postfix) with ESMTPSA id 5BDF02C04AE;
 Thu, 24 Oct 2019 20:35:26 +0200 (CEST)
Date: Thu, 24 Oct 2019 20:35:26 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Alain Volmat <alain.volmat@st.com>
Subject: Re: [PATCH] i2c: i2c-stm32f7: rework slave_id allocation
Message-ID: <20191024183525.GD1870@kunai>
References: <1571144589-3066-1-git-send-email-alain.volmat@st.com>
MIME-Version: 1.0
In-Reply-To: <1571144589-3066-1-git-send-email-alain.volmat@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_113527_303029_40F210C4 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, pierre-yves.mordret@st.com, robh+dt@kernel.org,
 linux-i2c@vger.kernel.org, mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0745415404078656807=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0745415404078656807==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rz+pwK2yUstbofK6"
Content-Disposition: inline


--rz+pwK2yUstbofK6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 15, 2019 at 03:03:09PM +0200, Alain Volmat wrote:
> The IP can handle two slave addresses. One address can either be
> 7 bits or 10 bits while the other can only be 7 bits.
> In order to ensure that a 10 bits address can always be allocated
> (assuming there is only one 7 bits address already allocated),
> pick up the 7-bits only address slot in priority when performing a 7-bits
> address allocation.
>=20
> Fixes: 60d609f3 ("i2c: i2c-stm32f7: Add slave support")
>=20
> Signed-off-by: Alain Volmat <alain.volmat@st.com>

Applied to for-next, thanks!


--rz+pwK2yUstbofK6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl2x7u0ACgkQFA3kzBSg
KbYt7RAAlOWKsmZkKq0ugHqSQYr08yUKywJd6XHETx5vGcJPNGSQMR/vdJlGlyWj
hEYV6ArZssUiQtgdzNOiFQqKj9D536DaomVrdluuQkY4JrJgffLl3aIBKw+cMubF
GAdg24aaCCgEWLk+Y1ZWN8MvKdzLNL0Fy4w78yZL5sTxUW2jRIvTnG+LzAnbkDWA
eJUP/xIjSNgbzjWsZ0ZxXx7gcFfokMgZdZCgln+az/3KAWHyTVSvfI18bXVuG3wi
yoM98jJIl12fqxkNI82c2vS/UvCUJVN7CMDO6rkg70IOQt2bsoteGsK1/URIREQM
ZXpjUSuxw6hAwuDQsXu2FmdDFjnpXBBgw71y+A3CLZoxV0g2FbITkGc+8t8Cn7zY
cfqPbqG0v/B7fXscy+tleE9NTcH9E/wNt36RnWP0/kyILBzHbsCu2U/vj782Ynr1
QfufwfRydQWuZaY1VxtZ6hC0ez4CDRD9kgDLjQrc9atpOilDDCU+Jxo3TboCRaQ9
RiS4POvlaawN+i9CjtDOFxBcoz9hafvrUYW6oAQvBVSrQP4/Tv4oPFf9f1yP69A6
jhdJrLjF7sF06ejko8Q4psTN2WxNkW4jtxlV4DlMwgC2cnCuEnfjXsAviUHOSDWa
7bE2j9nE4aYjieUAx6Jod2BXpToAjhV4uEOWYz2v9nFCnfHpuUA=
=EBnH
-----END PGP SIGNATURE-----

--rz+pwK2yUstbofK6--


--===============0745415404078656807==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0745415404078656807==--

