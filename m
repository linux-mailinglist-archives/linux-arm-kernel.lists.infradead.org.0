Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 924F910906D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 15:51:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EMoVO9EX+tgYC0c5oU0+7gVTU7Jgi1OTxU6OvRSjXSI=; b=IYBp2Zy8wVTnnPJnu9FK/tAyx
	M+VEF0rMNdRuXg3MY/BATuusT7m1x0l9fy3rFuzOk73gasc7ifkWHObwdgxiJgf1DZli4UGJnP+G5
	N4W+qbU76VE0j0pSWZvnEdsoVLF6ddQTzzV/URqFPhibcSas7ETMhiUk7p05eSTJiINrHWd9yoEEl
	hYvHtpWddhHmVILyNFAzgBGuhOSMU1pZSlFEmIlCuvX4eKrat2KFTKv97r+0VdVzvZp5Mv82xlLds
	CT7StO+ys/YhAldqR2XeYEOiebHXIlzcYE5A9JvTQxwJ8yQWu8m5obyKCH28KIWp0hzjbS1YR+syP
	CV2JUXjeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZFiU-00011P-LU; Mon, 25 Nov 2019 14:51:54 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZFhq-0000Yk-2k
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 14:51:16 +0000
Received: from localhost (x4e37056e.dyn.telefonica.de [78.55.5.110])
 by pokefinder.org (Postfix) with ESMTPSA id AED5E2C0456;
 Mon, 25 Nov 2019 15:51:10 +0100 (CET)
Date: Mon, 25 Nov 2019 15:51:10 +0100
From: Wolfram Sang <wsa@the-dreams.de>
To: Alain Volmat <alain.volmat@st.com>
Subject: Re: [PATCH] i2c: i2c-stm32f7: fix 10-bits check in slave free id
 search loop
Message-ID: <20191125145110.GB2412@kunai>
References: <1573546784-28182-1-git-send-email-alain.volmat@st.com>
MIME-Version: 1.0
In-Reply-To: <1573546784-28182-1-git-send-email-alain.volmat@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_065114_281249_2C9C270A 
X-CRM114-Status: UNSURE (   9.93  )
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
Cc: alexandre.torgue@st.com, linux-kernel@vger.kernel.org,
 pierre-yves.mordret@st.com, linux-i2c@vger.kernel.org, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8729709194375750317=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8729709194375750317==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="EuxKj2iCbKjpUGkD"
Content-Disposition: inline


--EuxKj2iCbKjpUGkD
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 12, 2019 at 09:19:44AM +0100, Alain Volmat wrote:
> Fix a typo in the free slave id search loop. Instead of I2C_CLIENT_PEC,
> it should have been I2C_CLIENT_TEN. The slave id 1 can only handle 7-bit
> addresses and thus is not eligible in case of 10-bit addresses.
> As a matter of fact none of the slave id support I2C_CLIENT_PEC, overall
> check is performed at the beginning of the stm32f7_i2c_reg_slave function.
>=20
> Fixes: 60d609f30de2 ("i2c: i2c-stm32f7: Add slave support")
>=20
> Signed-off-by: Alain Volmat <alain.volmat@st.com>

Applied to for-next (i.e. for 5.5.), thanks!


--EuxKj2iCbKjpUGkD
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl3b6l4ACgkQFA3kzBSg
KbbUUQ//XkHOnT0T9vDE7Y8UovQXc5YR15+7wcv4op1hXnAEnmpmlaTBwWPjHtWB
QQYri2zbtXiGGY9qrbe1l0fPNdDYJ3U2VpFbYZhpEMfjQoMgFaEykk5GTtkhlDnS
mOrQaHcQSMAznRqMUHT5LE0AnBDyflctVv85ZNgi2Ri/FXvrzq4CIMQlE6OL3VeT
Vi4cNJhPYJ2Wa0gdDBAqTiNF+mKN46aRGiIhP+ldQx2YWAwC5id1+ENaw8gQR+jk
koyxGKQppQ7aHHQvHm+0amaKULeWTG8Gh1K3h2NmwrQt6NxIIJRFKT0XE9FVZvIn
GKIrTea2r9FJrA+s3js5moVyT0cjBBXKOqWBAoLmm0ULe5y2WHXzz3J/uE2qQFBU
TAqz8irHuZquvVyvU9YVfFI+Wkoi67oRS1URjLdiAmbOgkOpQgRQzHmHvLWfveZg
k2Y9QkYfoT0fGzH7CJfBjbWrsCb19Vo7lP6JvY7+yJy7IP5J7Icrosnv5n5o4IhJ
2pobV+n1ziuZvDOAibeLBsGfXt2qjcFjkGjXeKSudsDuRSf0x0qpdH2l6zGfHKcv
WdsTM2+Eu8vXrBzhC6/Xj2IrTVcDA/7aONu7QSkPOLV2fo1nEZWfL8Ecm/lvYiXT
eKTKaGtlJIiLt7VIierHt7/xL3oDaseO7hFbGl5+h60aejhg1ys=
=SNme
-----END PGP SIGNATURE-----

--EuxKj2iCbKjpUGkD--


--===============8729709194375750317==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8729709194375750317==--

