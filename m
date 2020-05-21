Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8685A1DD963
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 23:22:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BhMu8CgrrOKBdBYH02KdUCt9JuE2u9neRRVxcolZGQM=; b=eJBsvihndjbVUe3jlcGWs45jf
	lryg3iVgcqQAefonxqYyAmlahGOtTx4FhnRbXQ+SJ7BdR/Nq0r9OThAJBp0aLid+YP8UxmRCOOb+0
	NFPY7iQ6o54cLfwKnU8OstOOBs8/1uVJi/d4psdIg1DHVZWMh5sHlEbqg+uovzqBkHtkKdQlvU7sR
	3iSm9TySQHCsO3PqurDwtWDbpZ4DEKHI3LreSNDLzL8JSUSSCkekHf8ltlgRtnhO3D3uWU0oPBTvP
	PQAmKBDRq4RLXsYTnImDWMq5WOs1UfY1lhyPirbcxK+gAP+rL8edDXUw7/+ODv+gSibel/3mxvRr8
	OmatRFc9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbsdc-0004q6-P2; Thu, 21 May 2020 21:22:00 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbsdT-0004pS-Sy
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 21:21:53 +0000
Received: from localhost (p5486ce13.dip0.t-ipconnect.de [84.134.206.19])
 by pokefinder.org (Postfix) with ESMTPSA id DF02A2C1FCF;
 Thu, 21 May 2020 23:21:49 +0200 (CEST)
Date: Thu, 21 May 2020 23:21:49 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: Re: [PATCH v12 2/3] i2c: npcm7xx: Add Nuvoton NPCM I2C controller
 driver
Message-ID: <20200521212149.GB20150@ninjato>
References: <20200521110910.45518-1-tali.perry1@gmail.com>
 <20200521110910.45518-3-tali.perry1@gmail.com>
 <20200521142340.GM1634618@smile.fi.intel.com>
 <20200521143100.GA16812@ninjato>
MIME-Version: 1.0
In-Reply-To: <20200521143100.GA16812@ninjato>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_142152_084311_03AFB877 
X-CRM114-Status: UNSURE (   6.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 tmaimon77@gmail.com, yuenn@google.com, avifishman70@gmail.com,
 venture@google.com, openbmc@lists.ozlabs.org, brendanhiggins@google.com,
 ofery@google.com, Tali Perry <tali.perry1@gmail.com>, kfting@nuvoton.com,
 robh+dt@kernel.org, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, benjaminfair@google.com
Content-Type: multipart/mixed; boundary="===============3881251421093691188=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3881251421093691188==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7ZAtKRhVyVSsbBD2"
Content-Disposition: inline


--7ZAtKRhVyVSsbBD2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


> From a glimpse, this looks good to go. I will have a close look later
> today.

Phew, this driver is huge. I won't finish my review today, but I am
working on it and am maybe 2/3 through.


--7ZAtKRhVyVSsbBD2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl7G8OkACgkQFA3kzBSg
KbYcCw/9H7oWUrWBWy5C49NVa1N+n9JHdtx5KFE40DwXAwm2mRCSuoMr1JP9Rq5M
IFVgQp7Kk1mZ0jDR178dMQSYKuwDuFkOMDrewvQyOGPbGtn38FyInpJ6Te+uVyBS
HNJMGTluuvvM6840KdZSkRYZ9ynptA/JwSfvKoBk9/UAL6W/4C1LR97a4AEb/JFT
1To5HWdtArLvqSdfwvAaZyRghNLM2bjrp46NUFsfcXvxbZoiRZJBlmqBPJqkO4sw
wyVdSW16rdxMrAa6sFlcCjnCCZWusEgf5hdUtm3dRqnELLYH87iLqZpdfpMyOA8E
YJSLRpRBj2GUlmvG2S2Kd2H03UUyfspn9Qxe5T7MOpYDuoQQoOXrjH88kqTyEVty
3pkQ0z/oo62JsfgfjJQW5cBxbRhIiwP/rvMai1eXo303chCA2ieP9cT1bPbw8BXY
uJ3Xl2Botr7hgj7VywLHN6cp4S5m4iWJVbjUZfM2vAmSKTSKvBcIR1mVVzfZgWJD
vE9PsxfHtt0EOAU8WE9iseFJPOvzK7tuuaibHaD6gVAaNLr0Nv4adcM1MwSCicum
PqkDvXWuP+n6HdQ9+L/FA63xAtbT5SRQIFYhMBxots9hOYAUxK5gOnoHJYbAqB5R
TY2mr5I/NekkgzmBbh0ZRWTRdCmgfQCXmzMku6xaM4D57Weuauk=
=vjY8
-----END PGP SIGNATURE-----

--7ZAtKRhVyVSsbBD2--


--===============3881251421093691188==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3881251421093691188==--

