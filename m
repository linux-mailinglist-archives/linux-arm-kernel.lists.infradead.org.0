Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 816232BAA3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 21:21:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ihKpcw41kOPN3/I0bS8aUcLiFpkVqyyAqgO5cdEBjI4=; b=LW5c1mTP2/fpaZVOdpLkegA0k
	qhYh1ZHN0IsWl7iGEzzMoL4rXlmEE0N8gk0nka+mo52KDQWdknTzo5Hd5PqWjeNDIMBTjS0TpDzba
	XS2TkbjoY5/XTcCGgDNDKSSl3xHEH3CPeY2tLRwst3aqjN15hEh4SdTH5eoXJJh9qyc/auXSHW0ZU
	11hatha0vSAGdPztKAWiQiDGaB9i9k0p6SuINfp92Q68ODY6jaJdA38DFu2u6LWvAjUho4JlzcT4G
	Q/FZs10O93OJMcDCEV1xL1X2qPNu0C4SKAIjdtVrGWF5RBn74ugjQuW7t+JJHIL230L8mc8hhqtjZ
	Hy2xn9dKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVLBE-0002HF-9U; Mon, 27 May 2019 19:21:08 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVLB8-0002Go-2L
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 19:21:03 +0000
Received: from localhost (p5486CF59.dip0.t-ipconnect.de [84.134.207.89])
 by pokefinder.org (Postfix) with ESMTPSA id 3FDF32C04C2;
 Mon, 27 May 2019 21:21:01 +0200 (CEST)
Date: Mon, 27 May 2019 21:21:00 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
Subject: Re: [PATCH 1/1] i2c: iproc: Add multi byte read-write support for
 slave mode
Message-ID: <20190527192100.GE8808@kunai>
References: <1557375708-14830-1-git-send-email-rayagonda.kokatanur@broadcom.com>
MIME-Version: 1.0
In-Reply-To: <1557375708-14830-1-git-send-email-rayagonda.kokatanur@broadcom.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_122102_254196_018E8FB8 
X-CRM114-Status: UNSURE (   7.22  )
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 Srinath Mannam <srinath.mannam@broadcom.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Ray Jui <ray.jui@broadcom.com>,
 linux-i2c@vger.kernel.org, Michael Cheng <ccheng@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4694084905335517366=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4694084905335517366==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="a+b56+3nqLzpiR9O"
Content-Disposition: inline


--a+b56+3nqLzpiR9O
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 09, 2019 at 09:51:48AM +0530, Rayagonda Kokatanur wrote:
> Add multiple byte read-write support for slave mode.
>=20
> Signed-off-by: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
> Signed-off-by: Srinath Mannam <srinath.mannam@broadcom.com>

Applied to for-next, thanks!

But please quote only relevant parts of the message.


--a+b56+3nqLzpiR9O
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAlzsOJgACgkQFA3kzBSg
KbYZRw/8CG7Z1Z+wBxrrtn0OUKmMjvE9o6yvimMMlpJTX9+vVXBFIgCPOELjwRZI
ydW2rzDKmVA7ja8aVDAFvyihe4P5m3NoVlWcVVRT9bMalZ+mxKuz/zE08n6Ibfc6
Qz1yBDbA/Ruw9RtTvKDeEe9AHagPS4HU1THsxNUgZRX+tx+9gsfW+IgCme4Ny5VG
THgV1O+zuY2ot3ZYHURajeshnPu/n1IDamds/K9Tj9JXVtiheaFDjD64quytfmlN
J3VaQuddtrNUmf+bJqof2Rbcg01Kel15bJqgYYitbCB+nn1Tl/0jfR2gYg3LLUB6
uAyG3Qz0Dz4v/r+Vw/XyVzp2Iv30XLfH8TW6XAltIR2BIeG/GcyUKbD8eOsq7kU2
rrvbJP6FnA+M3PRF/CHdV0om9XswSwoLA/LqKYvu8uhFy9+pc9kvX97kMpMqh5tO
qj1Ds+u3usWz6BxIwkF86q7qsP9ysfrt96pkkkYPXZ4A5Kni48Dhr0GiBXDciq2p
CTztLh79Y72s3EK5L7VTwYWlqCMMmn4A8e1jWw74/+sQoK+1YPXAB+/1rPjaxSoq
VCCVHbYLTsorY9AocLTFcmZyhhvj/3Ia8wbaYfie8q7EI3EQKoTGhqi1yRZ/zv02
EXj3uz/p9PM5U0w+vlYpal+ptqSxP2UvavMRCxot250+cHDwtlc=
=uWM3
-----END PGP SIGNATURE-----

--a+b56+3nqLzpiR9O--


--===============4694084905335517366==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4694084905335517366==--

