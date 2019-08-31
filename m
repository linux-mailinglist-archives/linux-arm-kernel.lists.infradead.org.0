Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C96EFA43C7
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 31 Aug 2019 11:50:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SYxqGa7gQPuufwtt/l94E7yjCOBMmu0zNQleQNFn4Cw=; b=TcLG5r96qvh4XK0wi5RMnDjtN
	Nw4Qlqdlha3OHIi8tkOhAvGvPDuVz2uLwWArIdDGm2GwshEE/rY8L1g33wJgPCiJUH4xI4GtS32GT
	PtpiEbIqUHhyFbPb5R9Pfj9y4iGFs3HIgWqeFIqpjoVTclUZL/q1/CO2jiVejs3LbXR2Az3lyQxV9
	szJ/6TV6BKKqQxk0bcPnWfyaTGs8RXoWui1hAdvN4RanP0x7yr3vAigVWjeFtn1brK3ir/Fcb3e/x
	n3Pk9pL20eWVS6dH3xvdml+8KTxNkHN9/j3orq1S5rCWoNEtIEsBJuRnzW+DzeKCT2UF38sYnY1AW
	aQJOsgjAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i401F-0002cZ-8b; Sat, 31 Aug 2019 09:50:05 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i400v-0002bM-2J
 for linux-arm-kernel@lists.infradead.org; Sat, 31 Aug 2019 09:49:47 +0000
Received: from localhost (p5486C98B.dip0.t-ipconnect.de [84.134.201.139])
 by pokefinder.org (Postfix) with ESMTPSA id 649852C0093;
 Sat, 31 Aug 2019 11:49:41 +0200 (CEST)
Date: Sat, 31 Aug 2019 11:49:41 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Ray Jui <ray.jui@broadcom.com>
Subject: Re: [PATCH v1 1/1] i2c: iproc: Add i2c repeated start capability
Message-ID: <20190831094940.GA1138@kunai>
References: <1565150941-27297-1-git-send-email-rayagonda.kokatanur@broadcom.com>
 <20190830125626.GC2870@ninjato>
 <3e70fa7e-de13-4edd-2e17-b7c56e91d220@broadcom.com>
MIME-Version: 1.0
In-Reply-To: <3e70fa7e-de13-4edd-2e17-b7c56e91d220@broadcom.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190831_024945_253919_431D64A7 
X-CRM114-Status: GOOD (  10.28  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Lori Hikichi <lori.hikichi@broadcom.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Shivaraj Shetty <sshetty1@broadcom.com>,
 Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>,
 linux-kernel@vger.kernel.org, Icarus Chau <icarus.chau@broadcom.com>,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7752887759741897122=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7752887759741897122==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="AhhlLboLdkugWU4S"
Content-Disposition: inline


--AhhlLboLdkugWU4S
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Ray,

> > With all the limitations in place, I wonder if it might be easier to
> > implement an smbus_xfer callback instead? What is left that makes this
> > controller more than SMBus and real I2C?
> >=20
>=20
> Right. But what is the implication of using smbus_xfer instead of
> master_xfer in our driver?
>=20
> Does it mean it will break existing functions of the i2c app that our
> customers developed based on i2cdev (e.g., I2C_RDWR)?

If the customers uses I2C_RDWR (and it cannot be mapped to i2c_smbus_*
calls) then this is an indication that there is some I2C functionality
left which the HW can provide. I'd be interested which one, though.

>=20
> 1) Does

Maybe you wanted to describe it here and it got accidently cut off?

Regards,

   Wolfram


--AhhlLboLdkugWU4S
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl1qQrAACgkQFA3kzBSg
KbbmbQ/9E9Ts1/5jZMraYl7CNxsXtWMbdSUWQFyuZDJGvO7UvZz9v7O0Aq9ct/MB
mMb4lMVP4lLM/y1DMpVmoYoqVXyKPXzvMzGzsB0CMCs5e+XCbWKr1yCaDCLv0/Js
HNbEe7PC1fuNz/YklNtYvHEe1LjSxf81lFWoLDFGPZ4FkSDcbUAZQkUfe/VpcKbc
VVhYAQucc6GrBoJ12UMRSWSf3diIkR0CBqKhALZXCnrSLx9cXtTuqA0k7UnN9Piv
qPZs/I20tTu52RCHXTpjnwFpWMLNuswRIoCWcMR6Vl1Ix6v0TB4NiUpMStk4Pw45
KD6hdZSPBtFM4uQ04M7wbVFR634PF4mQx7wts+VjFXBe6rxEASwpIq3dMtxVFWgs
GwZ2tyZDQBT/jqdJi2QyUsKw4UW2R7su3D3+/idNTtoT1JkqwAfsFix283Bcbees
Kmx1W32dzB7p2G0k2vCWmNWx1CI+Mf/K16H0n2ffyD/5t4vCME7kLeIVcqkYNF7l
i98hRkYVJm3iecvg2iVr5/y6a7T/V248YJl59WTs7ycb3wqZJib5hQDOmMKeZbmS
DrKSbdHwlistLsHnatTQxOz8vlHG6ufoAXBy+x3PXs1b+HD21Zh94ugVqgoOHoSm
xqIQaulWFBYVg6xi2y9ZyEPyKo4KEwBBmNFs4eTCPmSgTvKT3lg=
=mcNR
-----END PGP SIGNATURE-----

--AhhlLboLdkugWU4S--


--===============7752887759741897122==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7752887759741897122==--

