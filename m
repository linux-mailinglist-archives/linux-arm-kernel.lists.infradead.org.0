Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B49EA1B8DA1
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 09:47:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xJcGVzeMYiJChYYpVs/xPbsqh6bVs/X6lchqwipKGbU=; b=U3X4yonuQj3iuDDfRWqX4W4Jo
	VPAgKUFjdOLvb6KFaPX7MhTk4dR2+4NNfZbPuxA1+T24ppHrHhuFrsvHCFv7qtoNTeQ/WyusylxfK
	F1CaQvtRxgHHIB+F5logMsyDOd163eFVaO7mh8getu+7o2LjwJ2h227Bf07LzBePzwV5GQ2ysByv0
	+1vsK0lrpHS9yGjslv5iOyiIJexoyFVqAGevY0yTYG9UQVHpipuRqrrWeMrlyUpikPk0c+Do6dNhT
	Nw2Dp9uiZqiPcdQ5yiIfoP91IKv58ciKjDMc1JLuHB+w6HH5SHuVUWijmYORWaCrZauvo8OQJXPDx
	jN6mdfiww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSc0T-0000X1-RP; Sun, 26 Apr 2020 07:47:17 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSc0L-0000WI-9c
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 07:47:10 +0000
Received: from localhost (p54B33954.dip0.t-ipconnect.de [84.179.57.84])
 by pokefinder.org (Postfix) with ESMTPSA id 982322C01E8;
 Sun, 26 Apr 2020 09:47:08 +0200 (CEST)
Date: Sun, 26 Apr 2020 09:47:08 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Alain Volmat <alain.volmat@st.com>
Subject: Re: [PATCH v2] i2c: stm32: don't print an error on probe deferral
Message-ID: <20200426074708.GC1262@kunai>
References: <1587395826-17541-1-git-send-email-alain.volmat@st.com>
MIME-Version: 1.0
In-Reply-To: <1587395826-17541-1-git-send-email-alain.volmat@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_004709_481140_A415BA0F 
X-CRM114-Status: UNSURE (   6.84  )
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
Cc: alexandre.torgue@st.com, linux-kernel@vger.kernel.org,
 pierre-yves.mordret@st.com, linux-i2c@vger.kernel.org, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5297587987025597904=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5297587987025597904==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3siQDZowHQqNOShm"
Content-Disposition: inline


--3siQDZowHQqNOShm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 20, 2020 at 05:17:06PM +0200, Alain Volmat wrote:
> From: Etienne Carriere <etienne.carriere@st.com>
>=20
> Do not print an error trace when deferring probe for some resource.
> Fix as well the error message in case of tx dma_request_chan failure.
>=20
> Signed-off-by: Etienne Carriere <etienne.carriere@st.com>
> Signed-off-by: Alain Volmat <alain.volmat@st.com>
> Reviewed-by: Pierre-Yves MORDRET <pierre-yves.mordret@st.com>

Applied to for-next, thanks!


--3siQDZowHQqNOShm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl6lPHwACgkQFA3kzBSg
KbZqCg//Th0HgzDJWiYiEqK4xlVz2HKw6oqfYM+z5t09khlnmxL09D75I8FjU4sx
DzKZe+ATTWw6MNROZyyUtDby3lvZgxxiFCiKcju4LscgmgOKwkNu+PxxbKHkUrQR
1bvQJ8DuMlIVHe2fXPH65f/7EV0Th7AjltoLLSZDSFu34tIa+rOe6liQVJOSjgFS
tMA11Cm9Eb4hlbKQbtTrPB7OVpVAoQT/Tg5P5nEmAa/DbTZhyNYNbmQJKq8I8HN1
L2FO/19K0e2h/wqB15OSrjNY6gi/VMlCjCww7IIYjZTZAT1k6lohCQEAb0USRQ03
fFvCrf5PrBBA6Df2OYwNQBe44fH/BW9xUfj7qjm1DB7DdSEkFmMoO4OQZ7AJ1f/U
DaT0PkU8tFHvIkvTve2oR9WpizWbC9yGkuOPG6/C/ABMcOCU9du0fAexfOBkYqxN
57+xI21/U5Km80Kz4JNK2tx6yWoegetGoE50r+nsWtqT1gHT5sA1r9auccrHbZ6P
byyBbw8MXX7r2P9sMXkUzkN9eg2xIar3WaBOCrq5Py6cmY1z9VanJC5dOWs3Brke
+BY43Lx6e3r73zjPQPQt0siDrfffumnR8RY6OKaiCwM+R4RLt0jmDlXJd4Pk7uwH
4Fs9CeYgaq7ZKiBhrhwACUax6hxqgxep5OZR3GJhncsUCwBAqR8=
=TgHS
-----END PGP SIGNATURE-----

--3siQDZowHQqNOShm--


--===============5297587987025597904==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5297587987025597904==--

