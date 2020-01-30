Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BDFB14D7DC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 09:39:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tV8WxTpYdPpC7XPcqB24WhtFDluvl9Od/BgTY9aVOA4=; b=GKAGso7zfp8hcxKfeKn0kXYC0
	MubTpRmpAyJwPjaRmPaFCSUrjoqlEetr7XjbgD9SXnqpZe1tt03z54R1bUg8Kws2qjBTJp4By7w2c
	jxNNYukEeexAplxnXyHtxcq1KnRmzGaDw5y3LoHDhMvGlbbzkYCrFCwz9XQuozYfsltfDjOIEVPMp
	b80KPRMxAwCqi47ZA3LLh4TM9NtflNwwmNOIM4nD6Xe9XnAUBKROHm4T1d/pMq2FdU3kuBXcJvQ/6
	AuQCegWT1lG8Nl045gI2Qb0FNn3NZh3NGgOatRMRHezYDATI8bUIowpUptCKJlgn7IlqjCbWZ/9JK
	qBn8f+2OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ix5MS-0002Hs-43; Thu, 30 Jan 2020 08:39:40 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ix5MG-0002HY-8z
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 08:39:29 +0000
Received: from localhost (p54B33261.dip0.t-ipconnect.de [84.179.50.97])
 by pokefinder.org (Postfix) with ESMTPSA id 943C62C0697;
 Thu, 30 Jan 2020 09:39:27 +0100 (CET)
Date: Thu, 30 Jan 2020 09:39:27 +0100
From: Wolfram Sang <wsa@the-dreams.de>
To: Alain Volmat <alain.volmat@st.com>
Subject: Re: [PATCH 5/6] i2c: i2c-stm32f7: allow controller to be wakeup-source
Message-ID: <20200130083927.GH2208@ninjato>
References: <1578317314-17197-1-git-send-email-alain.volmat@st.com>
 <1578317314-17197-6-git-send-email-alain.volmat@st.com>
MIME-Version: 1.0
In-Reply-To: <1578317314-17197-6-git-send-email-alain.volmat@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_003928_645107_9E9EA90D 
X-CRM114-Status: UNSURE (   8.68  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, pierre-yves.mordret@st.com, robh+dt@kernel.org,
 linux-i2c@vger.kernel.org, mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1496259775734258773=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1496259775734258773==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qM81t570OJUP5TU/"
Content-Disposition: inline


--qM81t570OJUP5TU/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 06, 2020 at 02:28:33PM +0100, Alain Volmat wrote:
> Allow the i2c-stm32f7 controller to become a wakeup-source
> of the system. In such case, when a slave is registered to the
> I2C controller, receiving a I2C message targeting that registered
> slave address wakes up the suspended system.
>=20
> In order to be able to wake-up, the I2C controller DT node
> must have the property wakeup-source defined and a slave
> must be registered.
>=20
> Signed-off-by: Alain Volmat <alain.volmat@st.com>

Applied to for-next, thanks!

> +static void stm32f7_i2c_enable_wakeup(struct stm32f7_i2c_dev *i2c_dev,
> +				      bool enable)
> +{
> +	void __iomem *base =3D i2c_dev->base;
> +	u32 mask =3D STM32F7_I2C_CR1_WUPEN;

=2E..

I wondered why we can't move this more up to avoid the forward
declaration?


--qM81t570OJUP5TU/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl4ylj8ACgkQFA3kzBSg
Kbb0+Q//eaBISWaovu0/fjF7dgoFWHYguEvUxYTzaNb1jIXCpTrU12BTSrrZOLFc
h6iAjfi0aCQYqlbLomSoHp1n3PgcbdB+tTTbdZ5wjNllQmnsHnDrSh8ybp+mejOp
kG/vpYXrWE130JwFsY/iYAsJ5BSHMb2MoYv/5KYvV8iRlmI+s2tg3GU4fy2QUlpQ
CfOB5AcHT7IYm014VVqkhjrChUVVNbmmxque4UXs2YZnB8UU1TJ1kQfkoTtvfCkc
iK/11FS5XmPzls6f5910QqmaYiT8zEAky9SFXCxWw62D41/1cYO/TkN7gOMC4mOl
X0uWutwDU3OCOdFyj0BRXwuWTB61CZ0zF//j6Fhq2cCdgw6PDjU18XHXIj8OHZtj
RfWic1AJREBjlNTrfQhzEC2gmdT6OTjTxSVJKF3+w++zf2kDDFAGO0YF4QuP1JLV
EcggXX5rFHxDJlMSL9Xn4n0GPg0YhJj6tGmfEbWZGx++TZ2C2cNs98sdtXHcoyCY
l8PNu4GqYkcFyEwtl2WN3WGR4aIH9Wg5UaHt8PU+AILcg2lG0hX6aROuAhOsackv
h71zxFIm4QQ/mZKc5TQ11l5+GUIGhhdhKHv9jNwVA//fI2VNzH/SQIm+i8RRofle
qpoIdShu+NtY4n3OPkLb40egkG1SbD9yUpz09ua13Gj4xYwFU60=
=G8QU
-----END PGP SIGNATURE-----

--qM81t570OJUP5TU/--


--===============1496259775734258773==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1496259775734258773==--

