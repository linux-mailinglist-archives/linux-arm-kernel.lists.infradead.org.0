Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F9E042296
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 12:35:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Vbpj5Sepho4EdrNW0YFsYeD5ssf8zMWsVe6+RJOfsQM=; b=meKgszwA/VGQAYhIcrpJilEQm
	TBrF6ZsxdDNnW2PYQz0y1fEIGdcAc2VJzyOt8FRk3M1eOXn5NWqA8FBV1fZAixufzHRizWzrp5cxq
	oBC/4MMXIL/Rr4CMDoAR0iuiqC18HPkgxX6LeUFMcCPVMjtUYLNLSipc3pqxkEHIRVcAKOvEoIiep
	PJPsDDqRgkoblRhvbqgvnu6kxOUXBTeniwZTnhAiNp77VMp68YuCqUSByN4M2yuU/PNhAR0PD9Hni
	Yp3zNMqW3Hy3nLK3chYqe2ximMTDCu6kth9t6Zt6PYLMrjvvGuwvWWV/71Kzz54OyWVjzLucrKGSz
	Q9BJplHPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb0az-0000ns-7r; Wed, 12 Jun 2019 10:35:09 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hb0ak-0000nK-Md
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 10:34:56 +0000
Received: from localhost (p5486CACA.dip0.t-ipconnect.de [84.134.202.202])
 by pokefinder.org (Postfix) with ESMTPSA id D42842C54BC;
 Wed, 12 Jun 2019 12:34:53 +0200 (CEST)
Date: Wed, 12 Jun 2019 12:34:53 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v3 1/8] i2c: i2c-qcom-geni: Provide support for ACPI
Message-ID: <20190612103453.ccet2pneairnlpcc@ninjato>
References: <20190610084213.1052-1-lee.jones@linaro.org>
MIME-Version: 1.0
In-Reply-To: <20190610084213.1052-1-lee.jones@linaro.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_033454_889587_82CAA28E 
X-CRM114-Status: UNSURE (   8.85  )
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
Cc: balbi@kernel.org, linux-usb@vger.kernel.org,
 wsa+renesas@sang-engineering.com, gregkh@linuxfoundation.org,
 linus.walleij@linaro.org, ard.biesheuvel@linaro.org,
 linux-kernel@vger.kernel.org, bjorn.andersson@linaro.org,
 david.brown@linaro.org, alokc@codeaurora.org, linux-i2c@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 andy.gross@linaro.org, jlhugo@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5829541328941561870=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5829541328941561870==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="o2p7l3jstr6cxok3"
Content-Disposition: inline


--o2p7l3jstr6cxok3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 10, 2019 at 09:42:06AM +0100, Lee Jones wrote:
> Add a match table to allow automatic probing of ACPI device
> QCOM0220.  Ignore clock attainment errors.  Set default clock
> frequency value.
>=20
> Signed-off-by: Lee Jones <lee.jones@linaro.org>

Sadly, there is no cover-letter describing if there is a dependency or
not. I assume there is, otherwise I would get the I2C patches only? But
what is the suggested way upstream then?

Also, the current maintainer entry for this driver looks like:

drivers/i2c/busses/i2c-qcom-geni.c:
        Andy Gross <agross@kernel.org> (maintainer:ARM/QUALCOMM SUPPORT)
        David Brown <david.brown@linaro.org> (maintainer:ARM/QUALCOMM SUPPO=
RT)
        Alok Chauhan <alokc@codeaurora.org> (supporter:QUALCOMM GENERIC INT=
ERFACE I2C DRIVER)

I didn't hear from those people yet, would be great to have their acks.


--o2p7l3jstr6cxok3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl0A1U0ACgkQFA3kzBSg
KbaoxBAAhggdoyYJ7Ory41uJZnpyS7E81TmUKsmVqsSij9MOr2pAO6ksoixVcsKJ
o+uoFROtUHSJfi/0ZzdMkt9qn50fRBn525tiT+IirJnXotAS8f9eTtzZwl14wBCS
+yVDItXLHA5jJqBwgGQeGAzn+/PuGOdp4NxsATnAOEh9QJyVjHppT7nUQGBv6yrH
qEgQCLKuywZbsg/GSwwyZ0TfWFbVgenGRiVCWyYNEMQeGntZWG9/JF6ad0C+x7+P
GYPM83p0krqDMIfWCh/P1M02Tu++P+IB68u4cHwZvDDpKFTqgthSENVPdZYJ4RB4
irJUfrFJPOV+JNit85YZfAqV8gkt4bPWXm6+h/sOD2LyK2P5A7+X9+l5pyb7EJl6
t6YPDfHl1Z7dP8rgKzbBkyhPS0KJS0XoC5JyPm7YsYWYywMAOIqd4GDP869ZQGD8
FTbgmw9hsU9KA+j78B7DmgasSRUutFQLoSAKZLK+HTXPg8Zsa/XWA4m6zN1xH1Dp
KEo+IF0ioEhbhSNqN8PzfKr1OJcaW07Fw61syO497VS5d2JXml4mseeUGRBSXOwG
hD4R3Jv30x/U9HzyYVmjV5qS+P9hIcwrIKKWNIND0+kXwGsWYBD/pl4BQZfcufA8
qvL2wQs5sTFynh8ZgAvv6vczs7Nlsb/08XrEJjRm8hYpXu+8s9U=
=xlPb
-----END PGP SIGNATURE-----

--o2p7l3jstr6cxok3--


--===============5829541328941561870==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5829541328941561870==--

