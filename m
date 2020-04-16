Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A0D91AC51A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 16:12:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AwP+eMyWOqAh2iVoUHkhrL4b50pju+XO5GK+m4GxUYI=; b=WeccSiaJqsZ6FJo6BcKpRNeLH
	WNAIxGhQGFmFJUYSCLBD9UtUjQKAx0qBuyQiRIetoOHJWhdciQPCGnwRpyVZGS7upBtY+o56PiUvA
	ZeXQkCETb1nYL58BqnGvKCff8FR3LK/czguZamgshULA/O2T+N5+rafkTNBXrAMvn0ur6GQ1KRj6+
	64HRXbqPRCJBcjg7BXBC5VSwETimfE2LV0RNZOG1wmldYZZAwGQrZWzja9tapgM8Z35GekYaNCa57
	YFFTi2yPJasP+022bifkQB0aXOCq0z/qxmCGVJ11WSeY5F7knfy51jIzzEhCv6kcaz3kris0dOU1j
	wyqn7RJuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP5FG-0000G6-Hn; Thu, 16 Apr 2020 14:11:58 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP5F6-0000Dr-BJ
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 14:11:50 +0000
Received: from localhost (p54B33393.dip0.t-ipconnect.de [84.179.51.147])
 by pokefinder.org (Postfix) with ESMTPSA id C6CFC2C1F4B;
 Thu, 16 Apr 2020 16:11:44 +0200 (CEST)
Date: Thu, 16 Apr 2020 16:11:44 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Tang Bin <tangbin@cmss.chinamobile.com>
Subject: Re: [PATCH] i2c:imx-lpi2c: Omit superfluous error message in
 lpi2c_imx_probe()
Message-ID: <20200416141144.GB1142@ninjato>
References: <20200416140529.20036-1-tangbin@cmss.chinamobile.com>
MIME-Version: 1.0
In-Reply-To: <20200416140529.20036-1-tangbin@cmss.chinamobile.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_071148_533470_E333B26D 
X-CRM114-Status: UNSURE (   8.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============6833908933553005201=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6833908933553005201==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ZoaI/ZTpAVc4A5k6"
Content-Disposition: inline


--ZoaI/ZTpAVc4A5k6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 16, 2020 at 10:05:29PM +0800, Tang Bin wrote:
> In the function lpi2c_imx_probe(), when get irq failed, the function
> platform_get_irq() logs an error message, so remove redundant message
> here.
>=20
> Signed-off-by: Tang Bin <tangbin@cmss.chinamobile.com>

Please make only one patch for all the drivers in the i2c subsystem.


--ZoaI/ZTpAVc4A5k6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl6YZ6AACgkQFA3kzBSg
KbZ4uA//a/dPITOlzgSHI6tPELR5gpZC0xTGuSky3954hG+aV8ceV2fh0as+wGYJ
MOR4LdDFbHHG7EUGuQvMwjGxKvY/6aeHFQj9okzvc47PQvJeMEHay1PL8qIESUBe
7L2v1LMDIwxK+/ymaYytvFhqwTwEPmmB8n9bB+H04yn67CyXXrpRxm++EsKHZomP
fDtmo0L4Zmp9f5OOHFrPrOepbSJdtAV3nXnqgJDr/WaUxkvcrp9LZOhPDsZL2N9S
mPEFMP41cxemrVms2b1/FlhSMjjKr2bgFv1rj7tjHyVnUrtEsHKPYLCnIk+xr7WO
/FPLMxogTj6g27LPza5BpeFzw9WYW8dM/E9NVMb5K3kpjtlRYBNocH2kfs6E+kBU
H4gs0HS3tpzscRLWyCGZKgQMA3WF+axfH8BK0N0TShLw+9wCoZ0waLWzsyUVBM3G
XpVCjNjpVhIknjePazD94UYFT9Ck+m/s/hZB+GL1AtjW7CA+q63qQ7v6O7oDoOHx
aMBnCJZ1ldAfRovuiaMApNv5Aa2OvajULWNfikviKRJOgsGCTMyxqFqCyWZ7Nxcq
d9idpbEGojF5kzPWApZIxGy4pHZRwYmJ3YYd28Gb5ucEWo+qNZN3xd4byFFiOgUh
p90MnmDjz6hiK/MnmuQtQ2thKAHmuB+CiKrMUCxo5yVuIE12wjI=
=NVdq
-----END PGP SIGNATURE-----

--ZoaI/ZTpAVc4A5k6--


--===============6833908933553005201==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6833908933553005201==--

