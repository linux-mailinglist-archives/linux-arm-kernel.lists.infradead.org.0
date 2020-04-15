Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D250F1A9BC8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 13:09:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8lxM5yxbyt2aFp7zSuksuf4my4KjaDqMvGPnOgWmqa4=; b=ZEHLIVvdB9EGPoP5qmH2PL5Ns
	RqdUroJ1gywV5xnsCDONcyCt0fiIUihCup3u8pAXGeJKcI8Cj3mBzoRKunVhda/Sl21VLkmeJy4S6
	4hszXcye+ywshrPMIUdQr0Vpij5SxVnBipN8zQX6YSj1Y7r11XkWuLb8G5OHipEBvgr4Xj1gIa5mT
	hcB6L3wSdGArHe/DiLArffbLZU7DP9kdz/Z7D+gG9Cal2FnDjMayW3oKijlaTeIuNRLNWQP0O4X0z
	xExjgcKWxlpJGzK1ixUNqz7nzmMmglgSGYMfwaBewiOoDDibVo3CXimnpJtRqYjOkOmrLsjx95OrP
	vRVlPD3tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOfv3-0002Fr-HP; Wed, 15 Apr 2020 11:09:25 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOfuv-0002FS-Qr
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 11:09:19 +0000
Received: from localhost (p54B33507.dip0.t-ipconnect.de [84.179.53.7])
 by pokefinder.org (Postfix) with ESMTPSA id 958422C1FF1;
 Wed, 15 Apr 2020 13:09:16 +0200 (CEST)
Date: Wed, 15 Apr 2020 13:09:16 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Alain Volmat <alain.volmat@st.com>
Subject: Re: [PATCH v2 2/2] i2c: i2c-stm32f7: allows for any bus frequency
Message-ID: <20200415110916.GO1141@ninjato>
References: <1585226661-26262-1-git-send-email-alain.volmat@st.com>
 <1585226661-26262-3-git-send-email-alain.volmat@st.com>
MIME-Version: 1.0
In-Reply-To: <1585226661-26262-3-git-send-email-alain.volmat@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_040918_017863_2B4B771B 
X-CRM114-Status: UNSURE (   9.72  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, pierre-yves.mordret@st.com, robh+dt@kernel.org,
 linux-i2c@vger.kernel.org, mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2949993646248705411=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2949993646248705411==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Iys0Un1O+0sigPHU"
Content-Disposition: inline


--Iys0Un1O+0sigPHU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alain,

On Thu, Mar 26, 2020 at 01:44:21PM +0100, Alain Volmat wrote:
> Do not limitate to the 3 (100KHz, 400KHz, 1MHz) bus frequency but
> instead allows any frequency (if it matches timing requirements).
> Depending on the requested frequency, use the spec data from either
> Standard, Fast or Fast Plus mode.
>=20
> Hardcoding of min/max bus frequencies is removed and is instead computed.
>=20
> The driver do not use anymore speed identifier but instead handle
> directly the frequency and figure out the spec data (necessary
> for the computation of the timing register) based on the frequency.

Useful improvement!

> +static struct stm32f7_i2c_spec *get_specs(u32 rate)

This is quite a generic namespace. Can we prefix stm32f7_<sth> here?

> +		if (rate <=3D i2c_specs[i].rate)
> +			return &i2c_specs[i];

Same for i2c_specs here?

> +static u32 get_lower_rate(u32 rate)

Here, too.

Rest looks good to me.

Regards,

   Wolfram


--Iys0Un1O+0sigPHU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl6W61wACgkQFA3kzBSg
KbZhDA//QrjQyZGByv+sQkmvBPGnIsAXz2Nca2UGy56ln4/UAfHo1NvwTx3mqBJ3
ovBURYObhG5pCwDi0hi/T0jQTXjTHy5KsA/F/OoF/KnJwruXcUa+vLGfcWztPc3c
B/n22uncMOcZ84AadcTWe6wBQOQojeV25sEjfkSMMuFvfzRM/r5NXARqxDdIqsV0
lEtTPBe6ol9wwAZJwYZR3ErrDkic3GBE9aMP8TQzfvsvmMgN/qBWlSEI5Sp9930e
XSVymfMPebXhdUH6cbfTUZ8S+0+c5i/l3KA/BpV1weltc/EueYz9HH/fCsF2FHNW
5RNWV9XHSzkhe0f9ryVPmuNuTFNz9/GRzR1TIio3n/VTemC7cZxCVUQo5VURHWc0
D87DMgOz5dFL48zHLessi8n8/vOpOpweDgMHtPfYzEsIfZIRCjJxXEO+QIMD7cSp
PT26ks9/zK36lqydCx6Jpo1TLTDNlr/dJY8ag6iQjjSWgxQxm354yFTavOds15Ua
i1bGeKwYXkhFyH/TsnzX0I503nQpebW+StiPCIUOnKWS5pWA/8YvDVOAdAULOp0s
pJags5YBAv0Bd8v/mCVnbbzUKXbTuZDIT2f1rbQxl2T4//AfeLhMJ5UPVmczr4DH
08VuS7rAy0VGCvxXrWnoBgcR99qkXG8jHyecTgZzVVPHLVLT5uo=
=rnTO
-----END PGP SIGNATURE-----

--Iys0Un1O+0sigPHU--


--===============2949993646248705411==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2949993646248705411==--

