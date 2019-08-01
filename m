Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C01327DBEE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 14:50:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=W3h048YfojffYp3sXsmoisfjzWMIQa8ceLqhTIGrVT4=; b=uUV1JjnRmBNrS8aaK9jB8eVuV
	Yx+aFTREQB4IhC/NvvS0h0VaKts5RRD1dVYzgXFlN/60nKq8nKsSXAIYimU9unY1XLG1YP/wsHOny
	hijI58piX9U/WfqG2Kl6XdinkfvKFp+AkLvG2mMdeIDqYmldTNq9yNH+y17pP0HpSiO2z+GodESQO
	0IdHrYlm7X6xm06f+Y9k9C/J01FeoeGV0+0Kt5l3w5PP4bSzapO+Ut+wUwJY0qTCaHZ9cF0XKCM+h
	j1ruM8rEJNinvqE6ieFrBXdCupwbXSZKmtLyPIIxaY0pFb8JqvQUSva0cbAD2TaRvNatOrj2sHMpO
	ChvUnPmyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htAXU-00071J-GH; Thu, 01 Aug 2019 12:50:36 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1htAXJ-00070p-6S
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 12:50:26 +0000
Received: from localhost (p54B333D2.dip0.t-ipconnect.de [84.179.51.210])
 by pokefinder.org (Postfix) with ESMTPSA id 62C102C2817;
 Thu,  1 Aug 2019 14:50:24 +0200 (CEST)
Date: Thu, 1 Aug 2019 14:50:24 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Anson.Huang@nxp.com
Subject: Re: [PATCH 1/2] i2c: mxs: use devm_platform_ioremap_resource() to
 simplify code
Message-ID: <20190801125023.GH1659@ninjato>
References: <20190717084017.30987-1-Anson.Huang@nxp.com>
MIME-Version: 1.0
In-Reply-To: <20190717084017.30987-1-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_055025_383117_315D3AD4 
X-CRM114-Status: UNSURE (   7.27  )
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
Cc: aisheng.dong@nxp.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, wsa+renesas@sang-engineering.com,
 linux-i2c@vger.kernel.org, kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org, Linux-imx@nxp.com
Content-Type: multipart/mixed; boundary="===============8614506101359413462=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8614506101359413462==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cfJ13FhsvNR/yOpm"
Content-Disposition: inline


--cfJ13FhsvNR/yOpm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 17, 2019 at 04:40:16PM +0800, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
>=20
> Use the new helper devm_platform_ioremap_resource() which wraps the
> platform_get_resource() and devm_ioremap_resource() together, to
> simplify the code.
>=20
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Applied to for-next, thanks!


--cfJ13FhsvNR/yOpm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl1C4A8ACgkQFA3kzBSg
KbbuCQ/+Jh3jQy7mSWoI1drhM0j9+MC/Kq5i599BC0Fr4mV3KNiHW9aKVRPpNKnm
PPe6xTh0GiT8TetvzKh0k8snQi0xhZOB4NagfqVK3sZ1zKgQFLX2420Gf1V6rF9+
e7OqfHEkIbJDfn4649lJCjpjfkDFBrOgItFISc7in0APZjhlFVFeNyErUe4xIaqu
XdBZ3s5hJNdvF8l759DZEf8Ue77+RkjOFjjM5elGRz3qCEjCsSXVgs2x0toozBd4
mAxgRx3r7eBWSeuhyWqJSNEVo24rwS7Aw1UUR5vPWLWfVkJLqdxPEdirywXtIW3d
3GPu/D6W8YK63Mg7ncs+ryD3giFfNz5IFhGFKm7kFPvwju7IR2kzIjZTrMo92vTO
O780yEYiDnnqLTJrVBBYEXMu7xJB6U+IbiCC+2r1eJg4mgJo1eHYxIK7PxBSCZs4
pdwFNeSzJJRXJgM4+bMb253AJVtVmkkxFbsv+UXc//8hFqvIWnqg2Jn7NKncFkjh
wZK1gRASN1uEE79J1Z3P7RdMElW2a6LRSqErfOduznRQUlo5bdSX/u4bxJdv3qLY
Y37hMgqJnrP5Nf4yktdfTXJIa76Z+eNkfhRihK23Nr4mXxYey06lRvRsqjsO8Fam
kP9TB/6L5ENQ4zn9MASaLP9MhA6dekax5msNYj97Ww0oXG8Fy0U=
=niRb
-----END PGP SIGNATURE-----

--cfJ13FhsvNR/yOpm--


--===============8614506101359413462==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8614506101359413462==--

