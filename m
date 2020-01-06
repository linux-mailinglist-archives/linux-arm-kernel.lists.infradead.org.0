Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 980151313BC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 15:35:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Wb2Ws6WICEj1lJfTX/gvQOKQiX92anvEvgvG8BwzKWM=; b=WNn1/HvEFageMml2qJXhk/pVJ
	po5FOB6Ff/zwv4J6BEpvFOHWdPsV/rW/epqsiVOXlO/VpQNGcJUOdjgDbaRTtDd36JujEKrGV85hB
	l5lGofdeJs7nxv0Y3oiFiW0Zx3I8efwEFdZtDTAnY5mpj0Fi/28MfX05nQgML6tqTU89EreLp8agV
	SRo+IIblckfPezpnVQ2QkmVKIeRudbQkO8sIgzfkh5on76lMtbefU/QCXamu0K8FwNVJXcxkdSAsR
	P43Qb5K1stuF6xE6X0y1Z4FabDrB+R6eOgFVXUF3lg4KqM0uadOeSzl75d8DlVb3N4x1xdzDT0l7Q
	eeO8Mh68g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioTTX-0005SO-Ou; Mon, 06 Jan 2020 14:35:23 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioTTR-0005S0-40
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 14:35:18 +0000
Received: from localhost (p54B338AC.dip0.t-ipconnect.de [84.179.56.172])
 by pokefinder.org (Postfix) with ESMTPSA id C0F512C0686;
 Mon,  6 Jan 2020 15:35:15 +0100 (CET)
Date: Mon, 6 Jan 2020 15:35:15 +0100
From: Wolfram Sang <wsa@the-dreams.de>
To: Eugen.Hristev@microchip.com
Subject: Re: [PATCH v3 2/4] i2c: at91: fix clk_offset for sam9x60
Message-ID: <20200106143515.GD1290@ninjato>
References: <1575886763-19089-1-git-send-email-eugen.hristev@microchip.com>
 <1575886763-19089-2-git-send-email-eugen.hristev@microchip.com>
MIME-Version: 1.0
In-Reply-To: <1575886763-19089-2-git-send-email-eugen.hristev@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_063517_311330_A2073768 
X-CRM114-Status: UNSURE (   8.10  )
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
Cc: robh@kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Ludovic.Desroches@microchip.com, linux-i2c@vger.kernel.org,
 Codrin.Ciubotariu@microchip.com, peda@axentia.se,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3096839292453836913=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3096839292453836913==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="BZaMRJmqxGScZ8Mx"
Content-Disposition: inline


--BZaMRJmqxGScZ8Mx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 09, 2019 at 10:20:02AM +0000, Eugen.Hristev@microchip.com wrote:
> From: Eugen Hristev <eugen.hristev@microchip.com>
>=20
> In SAM9X60 datasheet, FLEX_TWI_CWGR register description mentions clock
> offset of 3 cycles (compared to 4 in eg. SAMA5D3).
> This is the same offset as in SAMA5D2.
>=20
> Fixes: b00277923743 ("i2c: at91: add new platform support for sam9x60")
> Suggested-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
> Acked-by: Ludovic Desroches <ludovic.desroches@microchip.com>
> Reviewed-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>

Applied to for-current, thanks!


--BZaMRJmqxGScZ8Mx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl4TRZ8ACgkQFA3kzBSg
KbZD2g//eV3AhB8wlN/36GjEs1MJvsA2qKyPEJ3/JSCxkTKVzSmCKlaSI+1m+Tru
gN/sS4PgGkX3U6K77jkaSNALzKysK0cxjwcRThveO5sm6DxSsF3uckT7ZNoFDqlG
+etqwW0B82L8vwL4GoylkTt5VkeRm0QVwR+agvBiMYcU4FskcpUWf/jHtJrPd3eq
YasS3WIr0IDNxl62S3MNDUCYo9MnF/6HX8fS9oSnO0FwkeUiB+MthODPDTxt3GtZ
J+Mpmg4bvgJqcuMflVLfB28R0pijHnaIC6rUH2kHftCx7sq5qZmsU6LApkrFl2kL
b8YTlEvRlfDSB+f288W1eDsSAJmIQm2/EIDfPthoVUyHGkYos6yFDh9wwMgjS9Xp
6iiDAHiek4Rr8JKjVIo92lnFgs7X6Xmcjcw2IO0TsqltjgTsKimyDxscz+Bhn4MZ
Yv3uL6KxisenKoergopCx9U4LWIBFJEvcSJT+jBYf6p7/kwdRuQfGf1RsJU42d22
7mrp6Pc/zvJQ9xRGT8DtBWhdKFTc6rQ9rojMtBwsvbtUDzxgKCYJM0q68n0V8ito
p9HmfCvqoSU1KdLnaQdYPsmrIJ4siL8GR6ReXqffqspyRnnd4+/gTVt9235IbUpp
EUFcYCaguYrtSyWE8Y0Vc8DMmm38gDA6LyvGwIlsP2o864xlPjA=
=iI+X
-----END PGP SIGNATURE-----

--BZaMRJmqxGScZ8Mx--


--===============3096839292453836913==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3096839292453836913==--

