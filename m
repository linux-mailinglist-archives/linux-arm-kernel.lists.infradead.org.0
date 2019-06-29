Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A5585AA72
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Jun 2019 13:32:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CrHjJSWP843QjjVC+qqdVnQTXyKPuKJJG9py/nyOYTY=; b=mLLVFvUqhp1G+WyPkgE1N+Sws
	cBM6sudZDH9Bx25Lu435guruXUoAETQqzRNRKSuR4qdyhjVO0XeL85+scr/UrdPWfnAdBNPr3nvOP
	NV7VPvRijNk5cUa6xUjzsT8N4Vme5NOCb/josqqK1e/XsAuMSUY/FmfLAeXx7jkn4r5D4bIOszsZS
	bfdgQaV2yUCqlR+9kGTZXLcCGxHR7y84Cn2W3SRskETlfgEmkMWkAWpwxrjMjWgvMRsjF2fohDTdP
	rnyFfgQROTJjtD6QzLDpYJL5gfwR4H1hEvrqCYDSy++7HbWxnGiEsKIgwuqdADso0nrGbXAhrowJM
	l7nRmGIRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhBb2-0003ud-Lj; Sat, 29 Jun 2019 11:32:44 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hhBas-0003th-M9
 for linux-arm-kernel@lists.infradead.org; Sat, 29 Jun 2019 11:32:36 +0000
Received: from localhost (p5486CA23.dip0.t-ipconnect.de [84.134.202.35])
 by pokefinder.org (Postfix) with ESMTPSA id 0A6B92C047A;
 Sat, 29 Jun 2019 13:32:30 +0200 (CEST)
Date: Sat, 29 Jun 2019 13:32:29 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: Re: [PATCH] i2c: i2c-stm32f7: Add I2C_SMBUS_I2C_BLOCK_DATA support
Message-ID: <20190629113229.GF1685@kunai>
References: <1559654451-26612-1-git-send-email-fabrice.gasnier@st.com>
MIME-Version: 1.0
In-Reply-To: <1559654451-26612-1-git-send-email-fabrice.gasnier@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_043234_875018_7CB2D5FF 
X-CRM114-Status: GOOD (  10.11  )
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
Cc: alexandre.torgue@st.com, linux-kernel@vger.kernel.org,
 pierre-yves.mordret@st.com, linux-i2c@vger.kernel.org,
 mcoquelin.stm32@gmail.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1024910321771776809=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1024910321771776809==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="w3uUfsyyY1Pqa/ej"
Content-Disposition: inline


--w3uUfsyyY1Pqa/ej
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 04, 2019 at 03:20:51PM +0200, Fabrice Gasnier wrote:
> This patch adds the support of I2C_SMBUS_I2C_BLOCK_DATA transaction type
> for the stm32f7 SMBUS Controller.
> Use emulated I2C_SMBUS_I2C_BLOCK_DATA transactions as there is no specific
> hardware in STM32 I2C to manage this (e.g. like no need for PEC here).
> Emulated transfer will fall back calling i2c transfer method where there's
> already support for DMAs for example.
> So, use the I2C_FUNC_SMBUS_I2C_BLOCK in stm32f7_i2c_func(), and rely on
> emulated transfer by returning -EOPNOTSUPP in the smbus_xfer() routine
> for such a case.
>=20
> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>

Applied to for-next, thanks!


--w3uUfsyyY1Pqa/ej
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl0XTE0ACgkQFA3kzBSg
KbYQPBAAnI6LSZiadL1Afn6Q3hTlf1gK/ZLwpBe9FuKUWv6nQzI/qdghchXuaaWl
Q2LMTuSWroSxSXQ/1vNwAJ8HcOx5vYsP+spOHkSuftyUJLqukklSbfRLtgeo+3kL
fXfTbNIYsVkIEmR5rg9VmLUS80c4eBq7owL9bfUVsD960Qr+tCbnfqHVJPN33TiE
7qW+mI/wvm8R7ToZU5W1J/bvKl0bN53g0qQi4Eu7XGFM3zRvtGS+0jyZ7EhDCQ00
xjnF4tjLCpL6gV5rPMoHW42qqnlc+sAKGwfD6GBAJXJO9Om3FQ2QC6CHmUmg1w0Z
nnSlLXVmTn7rutt7C/5j3cJPMoPhGKNOA7BIPM8S48fvlBBIlkvbC0n9EbzOT2Ww
L4AK0akwhzXa/zbbf8F44+PfYSoMpLz9uRnfzmBax5w2RfwypdKx+y75At5HM6Wl
elqhbmi7DPP20aTpwytaV9BdLW6En5MbHOAkxOJYWszAAXtqQdckQjZtfCZ9Gwzp
14k4Ll6MybldqBi0+efaAsm6ezESOSby98hPDqqqhLEydKCxfMaZ4/2YunF63UTt
EHhyI3pWjSwALJwO6e5Z9PH5mT0c6K/gXLJAlpNA2ap/6ThrUE+/HWL0EK4m6MPB
4ma+27a/n5zV94RlQFgxKbG9m72aKOmFOGOHQRuUs6yLfymGpow=
=grZh
-----END PGP SIGNATURE-----

--w3uUfsyyY1Pqa/ej--


--===============1024910321771776809==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1024910321771776809==--

