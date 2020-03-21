Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AB2218E3D5
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Mar 2020 19:56:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cV5mzueuWZ+iT+KaDhOQ236jClBf/Rj+yYJqzb9fhJ4=; b=tWk6isDMB1rnX7cvYvQk9dpXA
	km/d7gq83Goo6uyAWLVPIJGVYor3S3QIttlU6aGpGqaEq4xfRleUav/Z6+M7Xegj/wqYLipsoqKFg
	sJ2FK9o0KjdU+tXWV5E08MlrlMTfa692S1qPL2uil44TAhqVd/Wiq45hOvkcZMhC8qDnoR4eFl4Px
	EFhzd+ksc8Vm61mxMs9vh5ZjIJmFCZ72DSicCLYuzbgoJ0z3PzaOB5qDPdIZ0JcQrqaEOqJlTMH+V
	j6jHHu2urckj0RQYjt5zugOXHlDVdeyUXStDTdFJxxCS2B5YF/fW6oBYbZtGgnZJWX1+7ZDXZNHIG
	UilfQzteQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFjIB-0003sK-6o; Sat, 21 Mar 2020 18:56:19 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFjI2-0003qx-4G
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Mar 2020 18:56:12 +0000
Received: from localhost (p54B33C59.dip0.t-ipconnect.de [84.179.60.89])
 by pokefinder.org (Postfix) with ESMTPSA id 7E72D2C1ECA;
 Sat, 21 Mar 2020 19:56:04 +0100 (CET)
Date: Sat, 21 Mar 2020 19:56:04 +0100
From: Wolfram Sang <wsa@the-dreams.de>
To: Tang Bin <tangbin@cmss.chinamobile.com>
Subject: Re: [PATCH] drivers/i2c/busses/i2c-imx.c:remove duplicate print
 after platform_get_irq()
Message-ID: <20200321185604.GE5632@ninjato>
References: <20200318100748.17540-1-tangbin@cmss.chinamobile.com>
MIME-Version: 1.0
In-Reply-To: <20200318100748.17540-1-tangbin@cmss.chinamobile.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200321_115610_321842_2FC29C20 
X-CRM114-Status: UNSURE (   6.35  )
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
Cc: s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 linux@rempel-privat.de, linux-i2c@vger.kernel.org, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3516701059234775063=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3516701059234775063==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="J4XPiPrVK1ev6Sgr"
Content-Disposition: inline


--J4XPiPrVK1ev6Sgr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 18, 2020 at 06:07:48PM +0800, Tang Bin wrote:
> We don't need dev_err() message because when something goes wrong,
> platform_get_irq() has print an error message itself, so we should
> remove duplicate dev_err().
>=20
> Signed-off-by: Tang Bin <tangbin@cmss.chinamobile.com>

Applied to for-next, thanks! But please use a proper prefix in the
subject next time ("i2c: imx: ...")


--J4XPiPrVK1ev6Sgr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl52Y0MACgkQFA3kzBSg
KbYXfw/8D/9Dj1vwAHP0HpumkxNAAq+jVkt8f/v6BDRnfCjDLebfJ94ltbCjQ2ZW
jOBrltt3uJo0vnWtUzaE9OlHzw/UxO+9wrZ8MsfHZBmCGxIywISuV18DecnmbQY9
5yqW1RBNwzSCcqRH5wzRKOssKtDoE5u2sd5Wl/2Rp4OmsLFOm2YW2Zf8rOvRc+j2
5jlg8etLqD4yx6s2fGh+tOnxFb854BdPGlQqs4wPEzRcZsXVmexsbqt1/IiQG9ST
rcvbav3nA1JNM4VFzreRnXzWgt1rx49vCVHOmS1oj2k9vTeD94tL7dFaOIc+wZHg
v8enumJtue/GJHxUoEO8l0YgnVSlUmKMl484+cm0qQSkfx9tN/w7SObdzQ8Q6MUY
wC3Og0IJosL5f7vsbHwVTwCwSZGQ1/jVI3NrjjkUhXDhirq+zIH2Bh5/1PX58PEz
ficd5P10YsSk7dn7CgiXGVo6ahz0SwWNGXC3ZWGg/QMpWq4ly7n2ft0OInEnd4ty
eS2grMVnJBvB2GVRO1mlLeeFHn8U43Xe2FOmoZddDOoj0+ZDlZlqYj3n3IRJTcyX
qbxEBlaIgeN2VtxWVYcIjYFAK7kz6IJNwp7+OdLK3SqHr/Y5avdx6G1PfKpiZ970
wXGQpikrqWYRrCu6/oa2b8F8OskUVVrsbIDiW6ykErvJRTbTOPU=
=Ma4i
-----END PGP SIGNATURE-----

--J4XPiPrVK1ev6Sgr--


--===============3516701059234775063==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3516701059234775063==--

