Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8BAC16C396
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 15:14:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3pgvzpsRhdvEs8oakgSQbkUIk7y62CKqYBD4UT9t+DE=; b=gXsuQTvXR4OSi76OweeMQKmEK
	2YnwX3sXonb7mZLk3e93O4bh80I9NJ5kt19SdskOTfJuBYwGhUOXOgJg2eWUR3eoo9OTCd+6ZRIcj
	wtDn61uIkJ6BeLf7Rb9S+QVQNanTKBCsOCwfGBRCGIR3QGX3C4zM0IfON1iQ3yzTLUN4ZdfyjIzUN
	rO3/YrL1z6UtOKIBmlvlSH/kyMOofGtrnHlo4+GZ1rNHXtk18jEqoU5OzX9wk8mPrClY5OkLYmYWm
	m5POCosOD2Z6P2HVKAGvq5gYoEkkDsBKYDgM6LqzjG2wEeW0hyvkqvRoy20DS+epdb1WweS/s/umN
	dlFtx2Fuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6ayQ-0003fb-UC; Tue, 25 Feb 2020 14:14:10 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6ayH-0003ej-FO
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 14:14:03 +0000
Received: from localhost (p5486CE6D.dip0.t-ipconnect.de [84.134.206.109])
 by pokefinder.org (Postfix) with ESMTPSA id B8B5B2C1F2E;
 Tue, 25 Feb 2020 15:13:57 +0100 (CET)
Date: Tue, 25 Feb 2020 15:13:57 +0100
From: Wolfram Sang <wsa@the-dreams.de>
To: Laine Jaakko EXT <ext-jaakko.laine@vaisala.com>
Subject: Re: [PATCH] i2c: xiic: Support disabling multi-master in DT
Message-ID: <20200225141357.GE3677@ninjato>
References: <20200218135627.24739-1-ext-jaakko.laine@vaisala.com>
 <481fe028-0ec6-eca3-7436-ebbb8527f3d8@xilinx.com>
 <AM0PR06MB518514EE9C057CB129079825D4ED0@AM0PR06MB5185.eurprd06.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <AM0PR06MB518514EE9C057CB129079825D4ED0@AM0PR06MB5185.eurprd06.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_061401_663729_A2A14823 
X-CRM114-Status: UNSURE (   5.98  )
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
Cc: Shubhrajyoti Datta <shubhraj@xilinx.com>,
 Michal Simek <michal.simek@xilinx.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============8458310470816237159=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8458310470816237159==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lteA1dqeVaWQ9QQl"
Content-Disposition: inline


--lteA1dqeVaWQ9QQl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


> I will make V2 without aligning new parameter as suggested
> if this is otherwise ok. This will reduce changed line count.

My favourite is to change alignment to be just one space. Then, we have
a bit of overhead now, but never again in the future.


--lteA1dqeVaWQ9QQl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl5VK6UACgkQFA3kzBSg
KbZkUA//dAN/MLjeOKdbi8owAIyuKyADUxV26MxP0p1Keir5/BrJ2hhfe8vpRgLQ
Dy/tX0L4Upf8lTlIFAbpMoROyD6Ube6CYDyfZyakD+o2YKJXe8KqVodvwgTXSKlI
uJ96n2D7Y2d46sq1bpZIcH/PuXAcpKhRpNwsP9Dwuf9yxLnar7o2ytw4XOihTWUv
tjRqr/bAnApBHdZN6s8BfPevEjW9i288xLPZh3harL2l+OJoMM+Et4HrTtAWBWoc
QAybhYWOmCd2LlP5WdvQs8da7XFm0ts262TdS2NtS0iN7rtkwLfsOChNVmdcdgVn
e2XP6ZTDzMotvVOsRwBX//rAyuuhXo0HhJFueN0UGi+yG87UXPAgH6YSd4n3Wwjb
ln0d/09gflPUSket35dJq6wldp411foeo5R5+6WmdPjc6J8nz74BcyXCm+E4Q8sC
N4EqArvGHApHKNEV5x8GhzL9G3ATKPGiqP0IVZj6FLS3T/uiIf0ZD0nXpEKbHbHy
9c28VoNOT/A6YCUk+zf4ZAO90RRZiFb6cv15Snpt9J23ZWacFruAnFRVwX/k/3q2
Z6bMWftl6/sZaRHVTDLSCG4pqxeOJfxe1zcAMg+Zo1IB+xuaei5zKTk4mg9ekzFV
WgqYdBM6X8VWz8tDPnOy4FNsxaZ2/Te5m/DFDFZKqwsaksL7M3M=
=g+c3
-----END PGP SIGNATURE-----

--lteA1dqeVaWQ9QQl--


--===============8458310470816237159==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8458310470816237159==--

