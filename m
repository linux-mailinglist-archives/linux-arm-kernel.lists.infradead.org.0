Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBE0B1A9B9A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 13:01:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Y2svfua92ezanOu9O94jFBy+ENCNJr3H3ZTg8jB+L/E=; b=lipUTXsnFhh9D7aE8GJ+M+sxi
	YdalucFJC90JQ+pA9WN6Hv9OKSGS8QiKiB0HxOovUrmNAkqzwIBmB+fmpoLG8upNDCcXbIFhi9oG5
	B74V5SBTy5P8NS+n9pp9yDDA76df/jNObTfmqVXE6UHylyXmn40QD9bd+qhoDEngVrL5Xw5xEBesA
	oP1UwrkZNANzZ22PAEHZZHAwCS0stkbQoRBP0XUs0U7kMZLnbRan5ri8K8qVG1rQHwRZFBokMIJKa
	EvsFagQqHwkNVf71spofi3YDx+SuEP7S3DOcTrDH45Ca7th0DagVrTB+ddVazHLACRY1mPh7MMX7a
	5juPZt9tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOfn5-00072F-Ui; Wed, 15 Apr 2020 11:01:12 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOfmx-00071g-I5
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 11:01:04 +0000
Received: from localhost (p54B33507.dip0.t-ipconnect.de [84.179.53.7])
 by pokefinder.org (Postfix) with ESMTPSA id 2CE8D2C1FF1;
 Wed, 15 Apr 2020 13:01:02 +0200 (CEST)
Date: Wed, 15 Apr 2020 13:01:01 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Alain Volmat <alain.volmat@st.com>
Subject: Re: [PATCH] i2c: i2c-stm32f7: improve nack debug message
Message-ID: <20200415110101.GM1141@ninjato>
References: <1584642115-15378-1-git-send-email-alain.volmat@st.com>
MIME-Version: 1.0
In-Reply-To: <1584642115-15378-1-git-send-email-alain.volmat@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_040103_746754_030C4658 
X-CRM114-Status: UNSURE (   6.32  )
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
Cc: alexandre.torgue@st.com, linux-kernel@vger.kernel.org,
 pierre-yves.mordret@st.com, linux-i2c@vger.kernel.org, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7229374071806173628=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7229374071806173628==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="oiL9LJXJsdjS5rzq"
Content-Disposition: inline


--oiL9LJXJsdjS5rzq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 19, 2020 at 07:21:55PM +0100, Alain Volmat wrote:
> From: Fabrice Gasnier <fabrice.gasnier@st.com>
>=20
> Add information on slave addr in the nack debug message.
>=20
> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
> Signed-off-by: Alain Volmat <alain.volmat@st.com>

Applied to for-next, thanks! (I'd drop the __func__, though; doesn't
add information, does it?)


--oiL9LJXJsdjS5rzq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl6W6W0ACgkQFA3kzBSg
KbbB7A/9EmAD4ef/5loAXglkahpH2UJci8WgDL5JIyHmGpZKPB2FhoVScwPzkz/B
DflvRJg4S7nQBvVe5o1ewFgNW5mH4M0QTAEA8tyE7irUfAxZR0FH7C6ub95v8JKs
eakWVl4yeoDOkQMJRQZEF5yq0ra0ASjFAt3b0YgxLGJ3TRuC1AGJ0Iwm9GyFAaK9
7jhntL11lD24Thyw+NhYbK4a4VZNFZMDemq4+5ZtlKVHUs6NjrhAY2E6panB5BBd
nANADQQv/hXHgxEscLqtGrCx5CTfVvYd3+v78q+ALi2Sj1pVBie4wUvT8Ev5EA35
t8V9MGWNS4R5K9+7qU78vkNzbm59xteR7zYJOzOQYFOofsbWR9t/l90w0vxT2VKv
7OyQ6S1V2doz+oaIGQaGXBdl9t9ObXAyZfOvyDpER4Ot6D8hToO7FavQJ15o0Rm0
uahzgFBdufsWy/ltSSIio0HdjNT9mWP2YWlc2HsLrx6GtzQ7epdTVCjQ72q33kDC
9QAeJ77rN/BVfZmKsaq1RjtP6A9LFSy/hVIqLnBl4uVDoHTx1bBCTexiVVXOROEu
TBEpcU57cwC1wZ39KfJh74lyV1JAnOhPw81e5C0Rd6wyEm07DBhvpAhcfzR5T4R/
NcF6tc6ANE8t8lGsPoYwwlcTgNrxh+BBKwy5yFERn6bHYOV71DI=
=52zH
-----END PGP SIGNATURE-----

--oiL9LJXJsdjS5rzq--


--===============7229374071806173628==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7229374071806173628==--

