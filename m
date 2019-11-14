Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C161EFCFCE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 21:44:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GoG73M6QizkAQnzHBAmaq0dV7Y/okoOvjKjohUqLDNI=; b=ISA6akydluB2+HxynjYk3v4La
	qh4mQPLALs5I1JfeCr5g+I45x2lUz5oTpKM79o0Id0cm7HZ4vOKaJ3fPc4yH/qqHfRCunoL7zy4Xp
	K6GPHCTpF0VRwZt5wfr3c+ZOPkkT+c+I54jDxBLXqUFdY4BXXVL6SZ7NjyYmzJDR2vTTcSBidvZHm
	6FXXfbshmQRjnp7ApOWPcyItoVxSltmRgBXG2RbpV9HXKlZJtKnuZuPKQqYiYNL3zVzGlgYu+ghpm
	YvZY7RprjJo+HdxYFxtCH6+EWQVtSxhfs4HGmFp2f94LTdePAdgD4xpyWAxZuhi7hA67ZWFmutNY2
	uBu1QsyEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVLyE-0004Cx-PV; Thu, 14 Nov 2019 20:44:02 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVLy6-0004CF-BA
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 20:43:56 +0000
Received: from localhost (x4dbf5278.dyn.telefonica.de [77.191.82.120])
 by pokefinder.org (Postfix) with ESMTPSA id 190892C03EE;
 Thu, 14 Nov 2019 21:43:48 +0100 (CET)
Date: Thu, 14 Nov 2019 21:43:47 +0100
From: Wolfram Sang <wsa@the-dreams.de>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH 0/4] i2c: Use dma_request_chan() directly for channel
 request
Message-ID: <20191114204347.GB7213@kunai>
References: <20191113092235.30440-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
In-Reply-To: <20191113092235.30440-1-peter.ujfalusi@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_124354_534589_D51FBB08 
X-CRM114-Status: UNSURE (   7.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: alexandre.belloni@bootlin.com, bjorn.andersson@linaro.org,
 linux-arm-msm@vger.kernel.org, vkoul@kernel.org, linux-kernel@vger.kernel.org,
 wsa+renesas@sang-engineering.com, ludovic.desroches@microchip.com,
 agross@kernel.org, ldewangan@nvidia.com, linux-i2c@vger.kernel.org,
 linux-tegra@vger.kernel.org, thierry.reding@gmail.com, digetx@gmail.com,
 jonathanh@nvidia.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1967453832442293420=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1967453832442293420==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="oC1+HKm2/end4ao3"
Content-Disposition: inline


--oC1+HKm2/end4ao3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 13, 2019 at 11:22:31AM +0200, Peter Ujfalusi wrote:
> Hi,
>=20
> I'm going through the tree to remove dma_request_slave_channel_reason() a=
s it
> is just:
> #define dma_request_slave_channel_reason(dev, name) \
> 	dma_request_chan(dev, name)
>=20
> Regards,
> Peter

Applied to for-next, thanks!


--oC1+HKm2/end4ao3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl3NvIMACgkQFA3kzBSg
KbZ4KhAAqSIoupVPNUTy5EUS3aRgDo8MVkiIW1UWgvqLUQ0Zf1I1wOJg39JEPMg9
mNEvOCYkNOI7W85SarY869oxjmFsKlXjyMk9791x+8cHwNqtMQ/5WW/8oxaPM4FW
H936eUEkiqDivyXszx0lUbc/Df3a8nz71vSEyTfltMQ4ypIrOeRYHbvqmd/3lxpK
YIkVGF2RO76ddQOMJEA7GY1o3CpBJDUDYMiziMuLSgxEdcv+LfiHTE4eqAnSbOFW
nNkC++LLjSPNUl9OqiZTKT5R+umlMXgdRcTAOLxkOb9bYci6ETiTVtjihcLy86e4
Zt1DQIZbyxc0bWkYUB0JpKgHfUxk7s7jk6zFMJtBdF5bpOJWSDl3yc6LNHBimeBK
5AO042p6KsJw6ZCMpuQudrZyAn827OQd0qjffPG74fyj4nA8r1Wa3M+jcy/RnNUp
tp/2l605JpN47LW4qJ8W23MrcTReoeJTHv/xyKQQxAclfiM7yEN7XvHOmegS/I4k
4ehvvUvmlIV5CCB712Ci7sGJcafe7AD3aTZ/VL/up2GsakvJ0HrpSSkk3wrqW5ju
lSf73hxh62sD6o6eZXwt8Jp1FtYCrQKkPCBXXi322d7dgzrQ+8O9T/ffkxGxNYoN
9V420J1qtUXCWoLB+DUHE+IUPOQ5kSbn3R27WALZ4wxrAI2jfNQ=
=LdkV
-----END PGP SIGNATURE-----

--oC1+HKm2/end4ao3--


--===============1967453832442293420==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1967453832442293420==--

