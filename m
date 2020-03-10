Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABFEC17F461
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 11:07:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dSaZ4HU501+VpH+5kuXdc4Gszns0Hd6QKUrPKkxR8Tw=; b=OBZTlfryTyd/V3RX3AuDCAx/b
	lkGJKYMMVdkafsq1fMapEhALlhs4mHWbGfq+iF+fkoTeVncBMJfWCPtowe4BYOly7I0ezLEAJOr3s
	s9iHEyIfva7+aKVOwSsoO7atuSOXHYbNOXNk2fiYdHHZWEKoT9//wO95O3NuA20y0UwM68glyo66D
	UBgLfrIhruQ45D01ZKWwBuDFine4bKyi33QCnjL7d36X90SJ8bSLbfS6XY0klRtUL/CEuuEVTwRPV
	JFfarE6Bx1sbZ0INajUG9MkpF1Ngg/unHWMKWbUSS55IfZ4oPceXlidNlIRDpoQ0DbMcVUVZ5v3Xo
	wYKqtPIMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBbnH-0006o2-SO; Tue, 10 Mar 2020 10:07:23 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBbn5-0006ml-6Z; Tue, 10 Mar 2020 10:07:13 +0000
Received: from localhost (p54B33196.dip0.t-ipconnect.de [84.179.49.150])
 by pokefinder.org (Postfix) with ESMTPSA id A5EBD2C1EB6;
 Tue, 10 Mar 2020 11:07:04 +0100 (CET)
Date: Tue, 10 Mar 2020 11:07:04 +0100
From: Wolfram Sang <wsa@the-dreams.de>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 01/89] dt-bindings: i2c: brcmstb: Convert the BRCMSTB
 binding to a schema
Message-ID: <20200310100704.GJ1987@ninjato>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
 <6649111e9c585f267762bb6c6dd96128e5cfb4ba.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
In-Reply-To: <6649111e9c585f267762bb6c6dd96128e5cfb4ba.1582533919.git-series.maxime@cerno.tech>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_030711_393606_AC2DD6A5 
X-CRM114-Status: UNSURE (   8.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Kamal Dasu <kdasu.kdev@gmail.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-i2c@vger.kernel.org,
 Eric Anholt <eric@anholt.net>, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8044493647317210755=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8044493647317210755==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="QnBU6tTI9sljzm9u"
Content-Disposition: inline


--QnBU6tTI9sljzm9u
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 24, 2020 at 10:06:03AM +0100, Maxime Ripard wrote:
> Switch the DT binding to a YAML schema to enable the DT validation.
>=20
> Cc: Kamal Dasu <kdasu.kdev@gmail.com>
> Cc: Florian Fainelli <f.fainelli@gmail.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Wolfram Sang <wsa@the-dreams.de>
> Cc: bcm-kernel-feedback-list@broadcom.com
> Cc: linux-i2c@vger.kernel.org
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

I didn't get the cover letter, so I assume I shall pick the I2C patches.
Please let me have the cover letter next time.


--QnBU6tTI9sljzm9u
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl5nZsgACgkQFA3kzBSg
KbbQ9Q/9GTVZf8R/GtAv29DgISJ/YjMp58JVs7OU6+mBQE0j7tiCJ6PLhm23VGiU
cdjdeDr1WnNxjFJVz4odMqLO3I6OQ1D5492m9JoDPyulYLf977dEiSMq+k3m50sp
Fjtmc2wfaeQD3IEdkDtNcFJkFpj90z3u7lQdT3g+HjnVXLMzQqPCKMNJ86uV+Bch
S5zkZy+T5cNq8ddDKy9pFKtLO5RtVsaJb4voFeCAn3mxvW768XGv6zH0p0YUDeXI
O+l3CwwFe8V1eqvQceTRu8eSq6k7XD0/EnH9eu0LVee+ou5gWUNgOI5oVyqee1mv
h9lJ/m4Dwnw5vwRb1Eo3yloQ5laK5Qoacj+PC1ywwQD6VajDelfa67qhjmGBVoMu
pu5gguaOFKTHsKDodTv3eKkupQmTeSvN50spne+/y8dZk1hth5k9mf6hfahKZYT5
NLyaSwsgCDnQ7cvJBHE4WkuCBx9yTyVVOTQB4TdtHwvk0NdhQSq8v3cCQeoe73IH
PipJrkHNeQrag1t/2WQwNQEViKoomxVK/n7zp8AbXfxiarzAmVnNvJi7WHoLotaM
LKnth/eRoerOtXeF1Owk54u+/V6kJE6mlNcl7RVvHauIANEG5k9p2cmPaXRFGnh0
n2qmm1mj0HCYrQxIkKJ+qtFeaieY1IQU1op1flY5kftD5ZzqRUk=
=EeaW
-----END PGP SIGNATURE-----

--QnBU6tTI9sljzm9u--


--===============8044493647317210755==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8044493647317210755==--

