Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81DF64F05C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 23:14:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oHciR1vNaT1Zwo+GR/k7c0WAPL7QAAL23i5yWrXmbsY=; b=JCcBgCAsSAejlCo1ln4YomTP6
	rATWstIL24Z8tM9YWReDTJEhvaknapdQzmLZ9pTaxMqne8M3eLkcvkrIq5z0CBTYQe/yew5IJq6jB
	TqgZEDB1ME5ie8OuCgwNZYMC5OmqZC+IN39SGpegrGs7v59tkv5d1nIgtHgyC0o1gVrEiWJElRTzK
	iRAx8LLIGk1Hj8GqwynM089jf22lz8Gy3Y51e+uSDTJAsZOuzusRrlPU0VUyqS4U+oLNMoBGmX22g
	mrkbYXIQpsPQ7A2zF6Ih7NUqfOWMz++hcNNYd1zj3MngYp0W831ZyKHJ2NQctmGlHxJjh5WbUFoh7
	Z8fQFELHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heQra-0007GB-7V; Fri, 21 Jun 2019 21:14:26 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heQrJ-000797-G6
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 21:14:11 +0000
Received: from localhost (p5486CF54.dip0.t-ipconnect.de [84.134.207.84])
 by pokefinder.org (Postfix) with ESMTPSA id 583FB2C077A;
 Fri, 21 Jun 2019 23:14:03 +0200 (CEST)
Date: Fri, 21 Jun 2019 23:14:02 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: Re: [PATCH v3] i2c: i2c-stm32f7: fix the get_irq error cases
Message-ID: <20190621211402.GB950@kunai>
References: <1560757981-10532-1-git-send-email-fabrice.gasnier@st.com>
MIME-Version: 1.0
In-Reply-To: <1560757981-10532-1-git-send-email-fabrice.gasnier@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_141409_707835_A6B3735F 
X-CRM114-Status: UNSURE (   8.44  )
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
Cc: alexandre.torgue@st.com, marc.w.gonzalez@free.fr,
 linux-kernel@vger.kernel.org, pierre-yves.mordret@st.com,
 linux-i2c@vger.kernel.org, mcoquelin.stm32@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 fabien.dessenne@st.com
Content-Type: multipart/mixed; boundary="===============7584636720749162597=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7584636720749162597==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="l76fUT7nc3MelDdI"
Content-Disposition: inline


--l76fUT7nc3MelDdI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 17, 2019 at 09:53:01AM +0200, Fabrice Gasnier wrote:
> During probe, return the "get_irq" error value instead of -EINVAL which
> allows the driver to be deferred probed if needed.
> Fix also the case where of_irq_get() returns a negative value.
> Note :
> On failure of_irq_get() returns 0 or a negative value while
> platform_get_irq() returns a negative value.
>=20
> Fixes: aeb068c57214 ("i2c: i2c-stm32f7: add driver")
>=20
> Reviewed-by: Pierre-Yves MORDRET <pierre-yves.mordret@st.com>
> Signed-off-by: Fabien Dessenne <fabien.dessenne@st.com>
> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>

Applied to for-next, thanks!


--l76fUT7nc3MelDdI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl0NSJoACgkQFA3kzBSg
KbaKLg/+IDVBZI+FWBpYna0/CpvmO5Uyzx0xj2RFArNr4l7IySOTfA79vSKuZ+cx
VB+ap4ihOQ5gta95Jt7ZFgHj1h81yy/5ER2C8yCbn9NNkv5NjF3HvVSNaolQuU4q
LIDq5JjlKMOExTBuRFfDvDC4jnTAPZcIv9KfxsC98tK4u47jzh2GIAnrX/BjIydl
khpnpg1KwbS52qFfm6OxxKtZBZrIJg42kEt7IH7AYG3IqpE52zO0Xg92e5HVdRJV
KP/E13T5YZXONCzT8ZB4vYiPC0lpl3QFCEO1VpwVCTM/AqxTA573L9GOmoFurPra
6vkNeUgZdfBXvTvIQo1Qteuuim8NfpZMy/Q44WZUDNVG5VEGzlDFli3j3z5GON9r
c0N1SbA9ev+U+4Lrw+6N+RLG3VKNiEAKLILKWzP3Kc4KOlRZDa6mxgTdHL3E9i86
stVEayxqkOZPiTtmb8AaJz513cWFMIlnqolWZqgl5hXL80JHE7lmebA7xC0GzN6z
o8V33npjYNMPH8vaS4Fm+2Huo3q95A1DccuN3xqhx6WClG3vrpkImyBOKEla15NT
Ox70qsmBi2q+rXdqcM/g5gaedc/568Le2FT/whNDxr3mJ8o6lGfwRDupZFKGN8Vm
8LJRUVAA5fokwSR9C1IJfHHJgGi47RA8dBJy3pLJWV4BbjrbGtg=
=etZv
-----END PGP SIGNATURE-----

--l76fUT7nc3MelDdI--


--===============7584636720749162597==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7584636720749162597==--

