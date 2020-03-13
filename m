Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20D5518491C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 15:18:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Dp8YbMe1BNQ1rAe8OjZ+2JsaWyGemBlIrMSdzaazgbU=; b=FlHEdIiaq+JJBy924HmocvrNu
	311bzk3nux6HsP58cohYRp4yuTQZFmdtfMfBLI2Bx6LjcRiEAeaB14nmsj4Li/pQ6RI47VVzTmYsZ
	Dc05NlTpD31tzvmoCPxFnTeaRKLsTBYZf8lTtdSgwaaQ+aac+kQRO1xI/SFs/57XPn00jVimny6RI
	6BAq2r52qCooZbSg6ucWKriRvx7dMjpDKoSSIiFk8b7wqXMbow0YenYzbPFaRZXR9P6EF/AjvyOYu
	lm/2lZUXW/cop/LWSj2iWI+bjFpxj6LPKA0jbNmYyhYni6yF8t4Ozc8JwupqDoTvldm1G8yZYWucD
	U5aCEzoyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCl8y-0003ib-F1; Fri, 13 Mar 2020 14:18:32 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCl8m-0003hx-2h
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 14:18:21 +0000
Received: from localhost (p54B3314F.dip0.t-ipconnect.de [84.179.49.79])
 by pokefinder.org (Postfix) with ESMTPSA id 046C02C1ED4;
 Fri, 13 Mar 2020 15:18:18 +0100 (CET)
Date: Fri, 13 Mar 2020 15:18:18 +0100
From: Wolfram Sang <wsa@the-dreams.de>
To: Alain Volmat <alain.volmat@st.com>
Subject: Re: [PATCH v2] i2c: stm32f7: do not backup read-only PECR register
Message-ID: <20200313141818.GB1852@ninjato>
References: <1583841521-27897-1-git-send-email-alain.volmat@st.com>
MIME-Version: 1.0
In-Reply-To: <1583841521-27897-1-git-send-email-alain.volmat@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_071820_275162_CAD603F9 
X-CRM114-Status: UNSURE (   6.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Content-Type: multipart/mixed; boundary="===============6710665681850322811=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6710665681850322811==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="DKU6Jbt7q3WqK7+M"
Content-Disposition: inline


--DKU6Jbt7q3WqK7+M
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 10, 2020 at 12:58:41PM +0100, Alain Volmat wrote:
> The PECR register provides received packet computed PEC value.=C2=A0
> It makes no sense restoring its value after a reset, and anyway,
> as read-only register it cannot be restored.
>=20
> Fixes: ea6dd25deeb5 ("i2c: stm32f7: add PM_SLEEP suspend/resume support")
> Signed-off-by: Alain Volmat <alain.volmat@st.com>
> Reviewed-by: Pierre-Yves MORDRET <pierre-yves.mordret@st.com>

Applied to for-next, thanks!


--DKU6Jbt7q3WqK7+M
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl5rlioACgkQFA3kzBSg
KbYrNg/+Ky++rxg6iPtXKX60q2EcDj4GouQCSEoXN0o6ROumzKEVs5unYfRuWk4Y
P2x4bw3MJxRNySfua/yY3ikdhrxbuRn3wIdsAFDQoWIP/bndenYB4sw524bGhz+y
7W3R8MvCV5LIaI2Cf11X1R6MXf6eFR62HMFT/7VI/b5yq5N26+gfyhSBEgoBNiDI
AI6av7tmDawPTDaN3U7x6RBycEy2LDTsUGE3Ys2p+F8QyRvvlBuwKt2CJIRBskH5
xeASbGRbySf4PM7Q/SKq9YtfHRVZqbF6r0OCZ85sM9npGSNIc5juakehBwlcj5Qa
a/hhL6mK46uKCEFG1/vvanzDB897rxjYYpIOnyqb5dRu7zjocm+AwGH6rxnWXVBW
hofMRS6I0u68oYjngddT0dtfZT1DtAoFM0/wFZbheRR+8XzOO3hciFTo/7L31ZFL
YidMKqk4FK7wAL6dnbYGImudUv5/Q+Nko/KIx9enLA9ojcsiPrbFgn1czR3/BxCU
3EdrYw6h1qQHAk1nh9urkcjroURMpHYcI3CEurM3MaRVXMIKlHLl/Gy+Z6EigVAr
EfcPavGIwNvO71TvoiOcZAkDz89JYUBf8qBjGtjpS+RYYFlUX8gQfCAHKuuJiOs7
q+FNCibSo7yMqO2bU70LzIbL9BdAZXeogMMpWpJxCNGIjz4U3rI=
=DECc
-----END PGP SIGNATURE-----

--DKU6Jbt7q3WqK7+M--


--===============6710665681850322811==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6710665681850322811==--

