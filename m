Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A75491B8DA5
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 09:52:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=w091m2oL4etwje1YDpSS94K8eRkZxICB5WZN/1e1x8Q=; b=G2NEc6vzya0IGOM1EAmT6Pfnt
	kQ7rbpk9oRjOYhTbces92kdGUeuX1JGdFn3XYmO153lhdPRgyLoeqbyRc/Hz6hV87RnWY7oAQusFQ
	0DRPJ5Idf7WdPIWEr1PFgfJgk3X4bFS0VWO/wjvMnDCgIB28I9j+NxmeWfaTw6JJl7VOsEbxNASfm
	/iOJYbEr0qU33ND9cvXO+wgPql8i1wfh5UzapxssxwWPvYtOnoiWMunXGxsp7Vvar1hOlgHs48o3A
	8a5KDLNX81rtZmH4N611nnfuVKieWQFUqSSw7MNk+BcPqZjx6OnFm4oK+dGfBugKe8n9UciWmWd+8
	0EaizY/KA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSc4x-0003m3-K8; Sun, 26 Apr 2020 07:51:55 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSc4o-0003lY-Pg
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 07:51:47 +0000
Received: from localhost (p54B33954.dip0.t-ipconnect.de [84.179.57.84])
 by pokefinder.org (Postfix) with ESMTPSA id 0653C2C01E8;
 Sun, 26 Apr 2020 09:51:45 +0200 (CEST)
Date: Sun, 26 Apr 2020 09:51:45 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Alain Volmat <alain.volmat@st.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: i2c: i2c-stm32f7: allow
 clock-frequency range
Message-ID: <20200426075145.GD1262@kunai>
References: <1587394677-6872-1-git-send-email-alain.volmat@st.com>
 <1587394677-6872-2-git-send-email-alain.volmat@st.com>
MIME-Version: 1.0
In-Reply-To: <1587394677-6872-2-git-send-email-alain.volmat@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_005146_981433_6168AF76 
X-CRM114-Status: UNSURE (   6.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, pierre-yves.mordret@st.com, robh+dt@kernel.org,
 linux-i2c@vger.kernel.org, mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2354252646900346265=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2354252646900346265==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="XvKFcGCOAo53UbWW"
Content-Disposition: inline


--XvKFcGCOAo53UbWW
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 20, 2020 at 04:57:56PM +0200, Alain Volmat wrote:
> For STM32F7, STM32H7 and STM32MP1 SoCs, if timing parameters
> match, the bus clock frequency can be from 1Hz to 1MHz.
>=20
> Signed-off-by: Alain Volmat <alain.volmat@st.com>
> Reviewed-by: Rob Herring <robh@kernel.org>

Applied to for-next, thanks!


--XvKFcGCOAo53UbWW
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl6lPZEACgkQFA3kzBSg
KbaBtxAAmZcSVuGnytANdDwjJyW5rIZSw1STm4/hxAphX4OZ3O4zfhaQFGson4PB
+t3aWsB+pIFibUCucE17n5WIpPao0wY5FqOtBFOn99DRTDJAniCpk0GmTu4E8tXY
ekC1GXsS4gv1zkcc5urFk3anYs2xetAaxcueEh/twLoj3xrzOIM0OaGOghNB5J/+
hwc31h2RZArl2Rfb9Ek84t576Z5OkY+FAsWrWy3585qKMlSlyoUpYBlfFrIKy/Mn
YmM+xD4hF1CBOe/eF8MsOd3EUOvH2284cv1+P8uCpqdmukWn3V9g0fA9K959MQNn
o6UbTZLxngkgdxVCTEWuSd4V39yn7yId55/BOwLi9QLmXwmAOvOjRSWce6Qlhp7Y
YEuenclYMHLb7B73iBehEfeW3ClBJOm5WoNndpNB/RArIAgAbPeWgNcTq8iD9JsK
QdJ5t1i4ivB+s/Sb3EiHVfyfYfjw63qwMiyXFKvyUTwJMI8+WC8ZPqbEpOnUSPGp
jz1JfSVjjCZQCy4aVLyV8wUZkC5y+CigP7KViC1g5QRGGpP9c1Bbu7Vgu6+n9Tt7
zMKwvsZuXFoBpvUjIRfV63kwpJJay9Hw5NeIMUMBEbECyZwLPQIUA1+IAoO24o0w
rv/Lx9e3z2bpJz7WXjSXKCmBLQGiV3lxEAc2VY8Mq8rE3VGg9Ko=
=Wu/5
-----END PGP SIGNATURE-----

--XvKFcGCOAo53UbWW--


--===============2354252646900346265==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2354252646900346265==--

