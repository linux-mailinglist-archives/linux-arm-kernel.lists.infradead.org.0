Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61F885AA74
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Jun 2019 13:33:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fMjthXu996i/P4eQW/c2i6GCKvVLk4VnHpzKTbSemzc=; b=UDj4d+4cYOhY19cg2nU2rD91B
	ToBTLvrbv1DuuaaOHX9kWrVAd/juQRmNNe9ZjbRKDlCXQSN8BjhnCnNHVQRTYQsgoc06pfahQG2I+
	X3dntpnohDvUPwLL1Fkm954Kse8yO1SDW8aPZcyXFSQj/MzuMTqGsosXJwxNUkfGBxftb12Y+jwZL
	OW+YZBqAjSmxFwU4M8V8HPqZOHzwqYI06IAhu3/H18F8PpKHWhjaTLFeZUsurwM11S9GgRYimXPBw
	bwVkg4h/V4hBMQaDzH/pr4dysW8q+qqAziNpo5mNK3J+11OZ4uvTQwNQW224xeeg2kjbzWZMqS+FO
	4CRNmBqjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhBby-0004By-4a; Sat, 29 Jun 2019 11:33:42 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hhBau-0003uK-Me
 for linux-arm-kernel@lists.infradead.org; Sat, 29 Jun 2019 11:32:37 +0000
Received: from localhost (p5486CA23.dip0.t-ipconnect.de [84.134.202.35])
 by pokefinder.org (Postfix) with ESMTPSA id D849B3E43C6;
 Sat, 29 Jun 2019 13:32:35 +0200 (CEST)
Date: Sat, 29 Jun 2019 13:32:35 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: Re: [PATCH] dt-bindings: i2c-stm32: document optional dmas
Message-ID: <20190629113235.GG1685@kunai>
References: <1559655253-27008-1-git-send-email-fabrice.gasnier@st.com>
MIME-Version: 1.0
In-Reply-To: <1559655253-27008-1-git-send-email-fabrice.gasnier@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_043236_893024_E7838976 
X-CRM114-Status: UNSURE (   6.89  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, pierre-yves.mordret@st.com, robh+dt@kernel.org,
 linux-i2c@vger.kernel.org, mcoquelin.stm32@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2283658469025414566=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2283658469025414566==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Qf1oXS95uex85X0R"
Content-Disposition: inline


--Qf1oXS95uex85X0R
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 04, 2019 at 03:34:13PM +0200, Fabrice Gasnier wrote:
> Add missing documentation for "dmas" and "dma-names" properties that can =
be
> used on i2c-stm32.
>=20
> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>

Applied to for-next, thanks!


--Qf1oXS95uex85X0R
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl0XTFMACgkQFA3kzBSg
Kba1Uw//Z9FKUMwchGR8MkpSsz1F6e5FkOb3MsnEAyXHrXNW9muX2GEbkEWYgYEl
ArkjPGXaoCeOaf5zKRi1enmAa/XU8wYDZ5lRFG1onmzneFlRdHe2tEHWob6Z208n
xaizWUyhE/mmMWMMsGMB7g/VCYuAjomn0/j4qUxUoRMiPf2W/xSzn3eIgDerCBuR
wm+5rVPqN/O1C7JXKsUg35bqBioEhZSqWHAuz3MNnThc3YEgEqEGnWJPm3hPfOnn
mHfb3Q6dpuzVcuQFQbf8fmwcSW2fJyNLV220Qk8z7t6LkAv1e67BghnAWL9DUv9l
0kypkamIy45XbZoZ5ga4rCoPBmwmW7flpy6sjTre3vgrwDHUgf5F85EH3uJ8ahe0
gLWv9YBrxngDLIEzzeHKCURXJI0KQaRHXCYpIEQLF0iIKHmpsV4szxzk8yw1YsvR
p6yD6AwnOG2f5qc87+xd01SJVnSKU2/dwKbG9tI8IooTtnWt6kMaeBks6oUxl8/u
494OXDL341x/blvNxOzVsuySL3bz3NCTEw25iSpX0pe0nd/LgMOjVW4sUZYim+MD
uFcLiKLSbTDr2jkH0edVIbQmElJgIzd7HTkWe6GMzsgesJ/XK/eLU555j3luuuKi
6v1KOb3rE+vKsc2QPfADJkp+tGiVeeF81u+bx0hbqmyDSzvbu/A=
=QtOX
-----END PGP SIGNATURE-----

--Qf1oXS95uex85X0R--


--===============2283658469025414566==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2283658469025414566==--

