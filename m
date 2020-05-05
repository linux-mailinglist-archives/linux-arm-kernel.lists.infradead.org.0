Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 715541C5978
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 16:28:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Q7N4DXJ1TBCPMtWXenUjlsUYhMCf7lbiJrLpSWPvJwM=; b=gkcpxkMskFUgQR9ahj1MWhuHa
	wSFAL+PHSjjC0Xsh7/uslGujIpHjVJgoYX7HqR+4jSrDV15V9dypL/KkD9V2bqfOzqJ+AL7PrP3UT
	gwS6ofEGjzqD6vUaJMQ3RuoOS60+gfV8e3M6UuBD6HBfskdBGtrbw0/1L4Y9hS49oKUlCNZq+pzcz
	K8Wwn3gK+A/RmWbKUA5IT2G7QtS1C3mpHXzCqY7Jd9PE4AdAhDsNknwWqblCmzESTAWzuFM9v9Wjm
	8TmBAR/i/vF3edQ1Bg6C1oh45DtrLD8CsqY1cP7gAK+qRIc1WFEEnMxTvr26PZrh+oAMwzmKBrB8f
	QmKFqJZIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVyYi-0001R5-LT; Tue, 05 May 2020 14:28:32 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVyYa-0001Q8-Jj
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 14:28:26 +0000
Received: from localhost (p54B335A1.dip0.t-ipconnect.de [84.179.53.161])
 by pokefinder.org (Postfix) with ESMTPSA id 911B52C0892;
 Tue,  5 May 2020 16:28:20 +0200 (CEST)
Date: Tue, 5 May 2020 16:28:17 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Alain Volmat <alain.volmat@st.com>
Subject: Re: [PATCH] i2c: fix missing pm_runtime_put_sync in i2c_device_probe
Message-ID: <20200505142817.GC2468@ninjato>
References: <1588261401-11914-1-git-send-email-alain.volmat@st.com>
MIME-Version: 1.0
In-Reply-To: <1588261401-11914-1-git-send-email-alain.volmat@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_072824_803271_28F18556 
X-CRM114-Status: UNSURE (   8.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 linux-i2c@vger.kernel.org, mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3310110315473894254=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3310110315473894254==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7qSK/uQB79J36Y4o"
Content-Disposition: inline


--7qSK/uQB79J36Y4o
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 30, 2020 at 05:43:21PM +0200, Alain Volmat wrote:
> In case of the I2C client exposes the flag I2C_CLIENT_HOST_NOTIFY,
> pm_runtime_get_sync is called in order to always keep active the
> adapter. However later on, pm_runtime_put_sync is never called
> within the function in case of an error. This commit add this
> error handling.
>=20
> Fixes: 72bfcee11cf8 ("i2c: Prevent runtime suspend of adapter when Host N=
otify is required")
> Signed-off-by: Alain Volmat <alain.volmat@st.com>

Applied to for-current, thanks!


--7qSK/uQB79J36Y4o
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl6xeAAACgkQFA3kzBSg
KbYhiA//T+l0PEzPiaE6M7x6gAJ8psbfRCvstiVnIPTm05RkWxc6F5hPg/P3gCbJ
23pSTbYP2xAhWve343T6dn/OsD/oRphhcu1av5v0yMee5k4QQ7I3MbAvxZM99bfG
mfzQoZngIvCKgEA4PMl7Bq9JPIV0dS+6CpAl7OWOBjJGt6H6uJ+07MQNmyyGoz5e
S3esTcF/60pQzcl5/VHA6/OyXExbqOOq92zcnd5IMXoqWC6xtIJjVoCHje0gJTpI
bO87BHiDe5iK8tSzhLqUU/QRAvGBPgTNa4vjew9OhZgvoFsBI8GA9gAcJqYYoh3j
t0XXWIq5sUjcWNZSlalb2/WLOdDHvEbvGMzc1jphUjdklw9ZYbY7fqA/6QIUvz6+
NqF/j0wrBsj+dxyfxj5f82Q0672glf0Zqzt4n/QuPJ4QLf3qPVW3u96CRl0HPV1C
/AwGTLPZUIbAmYiHaODfMlZ/v83HybqVZoRzhBS0xK/T7o4uUriVWag7tLOHmMni
eswp+a+MsxyL+WrrC+Ug9PslANq0/VM83k0edA6MfwkHGM/DMFiDP0/ZAFGnKkjn
zb6Wx0utBOgT7EaxNYwqFWlPHNK3X0l1cIKr4uO3t5hzIjjrF5tYoAzfTyV2uvQJ
uT6/TtJbeWnxuW1lLmepPYYse4XDeWrHj8q/DnBVBsFJW+wnfAg=
=e2w7
-----END PGP SIGNATURE-----

--7qSK/uQB79J36Y4o--


--===============3310110315473894254==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3310110315473894254==--

