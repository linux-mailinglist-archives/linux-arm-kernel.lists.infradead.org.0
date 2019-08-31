Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0A53A4468
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 31 Aug 2019 14:19:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=b8/ww4edrAaIlqYTLwRJk12cqGr3ADw+SgdlPvPXsY0=; b=Kcr7LVM/2UKU9NGNFPo5SEtMV
	Wg/nFt1dZgw5licGis1rpax/Ovo/cKPhLTZFuRMhpynQw7A0yqSAInbGfyX8ZCAnA4SUX+nFlzQuD
	Qt1DM/25Hq42TLqsRVbA1zdgNNy2Le1wjTyNh0dOdjPr26lILJ/3Ej1wL6ncl65V32efIMd/7yinL
	lb9fAVXkCFMi4Xp8HrhCn/JR3R0FJugCHF3epesHeMVOTkyp6Eb37R+s6y67CBKXAgbffA3MZr/gc
	eu5Qz+uK/cFW9513uBHVgIoVUaKaOiNkCTqUBb21a0SBJKUhb3y+3dztdVRXbs4cRxvDppEd0YG+K
	1Q1GRiJLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i42MB-0005LC-Ct; Sat, 31 Aug 2019 12:19:51 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i42Lx-0005Ks-IJ
 for linux-arm-kernel@lists.infradead.org; Sat, 31 Aug 2019 12:19:38 +0000
Received: from localhost (p5486C98B.dip0.t-ipconnect.de [84.134.201.139])
 by pokefinder.org (Postfix) with ESMTPSA id CF5272C0093;
 Sat, 31 Aug 2019 14:19:36 +0200 (CEST)
Date: Sat, 31 Aug 2019 14:19:36 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Eugen.Hristev@microchip.com
Subject: Re: [PATCH v3 0/9] i2c: add support for filters
Message-ID: <20190831121936.GD1032@ninjato>
References: <1562678049-17581-1-git-send-email-eugen.hristev@microchip.com>
 <20190712082044.6eteunzehyptsibk@M43218.corp.atmel.com>
 <867070c3-02c8-da1b-04d9-0a1b628577de@microchip.com>
 <20190829202817.GT3740@ninjato>
MIME-Version: 1.0
In-Reply-To: <20190829202817.GT3740@ninjato>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190831_051937_758829_DEBC2C52 
X-CRM114-Status: UNSURE (   7.43  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 alexandre.belloni@bootlin.com, linux-kernel@vger.kernel.org,
 pierre-yves.mordret@st.com, robh+dt@kernel.org, linux-i2c@vger.kernel.org,
 peda@axentia.se, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5554252711344374912=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5554252711344374912==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sXc4Kmr5FA7axrvy"
Content-Disposition: inline


--sXc4Kmr5FA7axrvy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


> > What is the plan for this patch series?
>=20
> I hope to review it this weekend and my hope it is good to go for 5.4.

Series looks good basically. Just a few comments for some patches. See
there.

Thanks!


--sXc4Kmr5FA7axrvy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl1qZdgACgkQFA3kzBSg
KbZsZA//f78QF1bYvAot77Sdun9f88jzno8Z7dYA6QF/uU2GL7npsGzJilGHp0bX
18ft7DNi86YVPNglhutCWhlLDicMZOTe2fZkqrSX/w574Kq9TKadW4aCaVBkIyhj
lvFP5lDSVQo9lHaXv+ocopAcFkKLlZ7KivZAXbOCAW9AwYF0l2bSC7FqVyJVYQOY
8LEfUB0T4ZANnMuN2xn4S3OyTlidykhOy5rF+oppjpesIJ21zjSKwKLKKqz0eD2p
vP4RcoEYvP+UvswkfMFeQ/nW8sSOOVi0lIpWPkRUwog9rHtZfVov8qd63r4/ftQK
IEkQDXCmB+0oK5Dgz+FeIS7Hty6oJluLSpxLG1TTZ3W/716j2BrcrcTX7V0EoHGv
YutKi0SD855I2bSWrk/O+P5Vor13a0oBVsu4WjRFbhO/Fzd3bIcZghILe3ty7um/
US6WEMXpn0HRFPA2wdeBHfYWwGheN67Eovuxu24aPLF3G9GkTsaN38q4HCLfEZaf
ofK5L+b2Tmb9O40aaXWIIZ5BwsI8STpT0LA0HS5zUh/j6y+3WRmKAaGA8tjDQUNz
5GlQwcdvyBe8bsXSAqdFwR3r1mX3G9bC30hm2PX8DyCxQfgV7FJQjns44p3NKfHn
5wPMNxUVEU2VsilefWifVBUwpdq8UxmPPJamPdY4sygrxOq+GK4=
=4j4B
-----END PGP SIGNATURE-----

--sXc4Kmr5FA7axrvy--


--===============5554252711344374912==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5554252711344374912==--

