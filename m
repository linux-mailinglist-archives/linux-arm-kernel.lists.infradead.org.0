Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB3DA22F83
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 10:57:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TWXLvIIDR8axIv9boFT91OVkubk3auU1fN2woNXvu2I=; b=qmTYJE+R/2IvNseMYuk4s0JSH
	6me7I2Ng89PLVYgTdV9xDXrzEnf/Rl3bPRZjN4x/xd+L15xE96c1FojfMEOh3awlBHReYLfQa2P4g
	94nRO8Td3Vi+Rrnrejq1XnO75bZGDwV/nerJxmuqHQJw3J1skRZWE8kdvfXt698Ge6TjM5NOiCfWo
	DMmdUrFhPWNpHSWJsz8Br7//UyIA33qHN9L8k+JRuTGCvG1k5FJs7ugqFd/O2hUu9KYvnIYDA/oli
	PHR8dppL7cFd3bTn0uXshXa8qr5XCHnXXwkz8CsLIJwnGdvUqA3c5D+7GjIQNTYmQlM4ttq6w301d
	qSWYAf5YQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSe6S-0005tW-CU; Mon, 20 May 2019 08:57:04 +0000
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSe6I-0005qV-Vp
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 08:56:58 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id 197348021D; Mon, 20 May 2019 10:56:38 +0200 (CEST)
Date: Mon, 20 May 2019 10:56:47 +0200
From: Pavel Machek <pavel@denx.de>
To: Ran Wang <ran.wang_1@nxp.com>
Subject: Re: [PATCH V2 3/3] soc: fsl: add RCPM driver
Message-ID: <20190520085647.GA9748@amd>
References: <20190517033946.30763-1-ran.wang_1@nxp.com>
 <20190517033946.30763-3-ran.wang_1@nxp.com>
 <20190519213844.GH31403@amd>
 <AM5PR0402MB2865EC5E1EF12C6C1D3C5566F1060@AM5PR0402MB2865.eurprd04.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <AM5PR0402MB2865EC5E1EF12C6C1D3C5566F1060@AM5PR0402MB2865.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_015655_187133_C8C7C9E7 
X-CRM114-Status: GOOD (  16.10  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.113.26.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, Len Brown <len.brown@intel.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Pavel Machek <pavel@denx.de>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============4913204668120495652=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4913204668120495652==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="nFreZHaLTZJo0R7j"
Content-Disposition: inline


--nFreZHaLTZJo0R7j
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> > > +static int rcpm_pm_prepare(struct device *dev) {
> > > +	struct device_node *np =3D dev->of_node;
> > > +	struct wakeup_source *ws;
> > > +	struct rcpm *rcpm;
> > > +	u32 value[RCPM_WAKEUP_CELL_MAX_SIZE + 1], tmp;
> > > +	int i, ret;
> > > +
> > > +	rcpm =3D dev_get_drvdata(dev);
> > > +	if (!rcpm)
> > > +		return -EINVAL;
> > > +
> > > +	/* Begin with first registered wakeup source */
> > > +	ws =3D wakeup_source_get_next(NULL);
> > > +	while (ws) {
> >=20
> > while (ws =3D wakeup_source_get_next(NULL)) ?
>=20
> Actually, we only pass NULL to wakeup_source_get_next() at very first
> call to get 1st wakeup source. Then in the while loop, we will fetch
> next source but not 1st, that's different. I am afraid your suggestion
> is not quite correct.

Sorry, I seen your next version before seeing this explanation.

You are right, but the current code is "interesting". What about

    ws =3D NULL;
    while (ws =3D wakeup_source_get_next(NULL)) ...

then?

Best regards,
								Pavel
--=20
DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany

--nFreZHaLTZJo0R7j
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAlzia88ACgkQMOfwapXb+vLCHQCdEiZVnts+sVGDltC60TnL3F9y
ltIAn0M2k/oHNFq1zm74JskvAw6PG/L7
=/fdT
-----END PGP SIGNATURE-----

--nFreZHaLTZJo0R7j--


--===============4913204668120495652==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4913204668120495652==--

