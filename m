Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8FF3168E9F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Feb 2020 12:55:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3uHd78TUu03RcnCMyjNu61/jUcCSKwrxXKPuWZFGs1E=; b=U1By5ceOiePkxyX2nA/9Ph6mL
	dM1yRcOt462vRDXewrQymcqSjMFbQ0V4xQYIMQv+FbyptwZndfDIspFvfjNfAZASTrYbWmGjfUFnt
	tCDWJ98EwSZMNksHA//48cIqsn0gldfwzhYGBBQjvf/j69VVK11k1MdP7bNa6ifcT0jFnpDpN+nkE
	638LgOU1svet67Zf1ANvWiaryqWm6C/9SmmzqMuaKypZ/qnvPVo5zsuo+0vc9j0A5to5SDA5ZGWrb
	tSWNc48+YpIJly26XyPr+/6XVzile0Xs8SdU7dZdWu0jx4mdXfTS5ZJjbL5npbz+m3eKOJhQvA9md
	HNbMXYv+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5TNm-00041u-LO; Sat, 22 Feb 2020 11:55:42 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5TNd-00041d-N9
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Feb 2020 11:55:35 +0000
Received: from localhost (p5486C6B7.dip0.t-ipconnect.de [84.134.198.183])
 by pokefinder.org (Postfix) with ESMTPSA id D139E2C07F9;
 Sat, 22 Feb 2020 12:55:32 +0100 (CET)
Date: Sat, 22 Feb 2020 12:55:32 +0100
From: Wolfram Sang <wsa@the-dreams.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: Re: [PATCH] i2c: imx: implement master_xfer_atomic callback
Message-ID: <20200222115532.GE1716@kunai>
References: <20200120093650.12911-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20200120093650.12911-1-m.felsch@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_035533_904316_DB975817 
X-CRM114-Status: UNSURE (   9.61  )
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
Cc: shawnguo@kernel.org, s.hauer@pengutronix.de, stefan@agner.ch,
 linux@rempel-privat.de, Oleksij Rempel <o.rempel@pengutronix.de>,
 linux-imx@nxp.com, kernel@pengutronix.de,
 Stefan Lengfeld <contact@stefanchrist.eu>, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============5983873423207827959=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5983873423207827959==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="FN+gV9K+162wdwwF"
Content-Disposition: inline


--FN+gV9K+162wdwwF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 20, 2020 at 10:36:50AM +0100, Marco Felsch wrote:
> From: Stefan Lengfeld <contact@stefanchrist.eu>
>=20
> Rework the read and write code paths in the driver to support operation
> in atomic contexts. To achieve this, the driver must not rely on IRQs
> and not call schedule(), e.g. via a sleep routine, in these cases.
>=20
> With this patch the driver supports normal operation, DMA transfers and
> now the polling mode or also called sleep-free or IRQ-less operation. It
> makes the code not simpler or easier to read, but atomic I2C transfers
> are needed on some hardware configurations, e.g. to trigger reboots on
> an external PMIC chip.
>=20
> Signed-off-by: Stefan Lengfeld <contact@stefanchrist.eu>
> [m.felsch@pengutronix.de: integrate https://patchwork.ozlabs.org/patch/10=
85943/ review feedback]
> [m.felsch@pengutronix.de: adapt commit message]
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> Acked-by: Oleksij Rempel <o.rempel@pengutronix.de>

Applied to for-next, thanks!


--FN+gV9K+162wdwwF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl5RFrQACgkQFA3kzBSg
KbYPkw/9Hi3Vx9RCtmCXXbRYJxXGiQbNjKeAxC3gOUFsMyMWGOOaM8QJTA3MgnV4
R8FBuv9oZ/aKU0kyIiphAEcSAYM4z7Il/vT/5T7Ko4fnhm9r2iuiKMC9jlgBrRrs
R6lIS/GnZMLomeTR1kPoVLLpq9Gq5Isj345ElhfdM5sEpb0ap7Elt6a1/QYoG8OQ
8xA9VyD2V5sfzbBbukESbScyfGmOpQzSP3SHZSuib5FBUAlrQNhWMhVLLR7Si+36
svVMjx1FbHLA3JX8gGhmA+XC+b/Yd3uVoRje1I3RtFEKiwJANKjKgyD6PR2wPlZS
jVCJ+3SBmv8Uclubnt7aDgXbewZpYnxzkTWtN3oDP2/UooCWS63TaIlCpbsJb/iu
HzDGIrpl6YGa1hcXCvkTEFZ9v/z81a3mzgDE0ZXyfr1Rb296Nw10TBXp1xA8ZKXV
kNvd/3JmcEpspaWrvtfmXSpJOecB02MgvLGeX+l4c0juHlZViUa7YDvbBb6Y9bIP
sgLPucEEPQ/jyfhXwrAIgoRJDjuVMxfRCTB8xtAJ4dgmwcqphCIJfSu1gdPN2P+j
biqjULPVFHoCVNDi4wev4PcKH3+ynG3ElTfh7syU4XOO4xT/3SbifUQM+OgZkP6b
14W1oKXeVPg7B6/64+8wxPpJ9LujjWtGSilsoqxglSMDEVXsRys=
=u/DY
-----END PGP SIGNATURE-----

--FN+gV9K+162wdwwF--


--===============5983873423207827959==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5983873423207827959==--

