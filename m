Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DAF223041
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 11:25:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dzCsTIq4taZEzQ5ST2fvQSAVzS8GulxH8Mwn0tnKf2A=; b=ki/lyAOnpax61rd81/WtNJW4v
	KMlSm1cKpODJo3R3JgFH5rMdQqjgsxEBlAd5LIatWEfyN7biMhePnoMVBzTelTfAjR7nj790osmcS
	nMv1z3O8+6tf9FGPbB8+N7CHjTMts/HAh30Yfm+Au17FahqRmlV2DONDdmMDCtZtct2VG4YK1pKLF
	nsKlJrYyKXLV17dCwvFiHOtF60L0DHZmLZm0LLxYzDyIH8E98r6/hfY2GyE2xU9g2BMw+fXm2y+Qi
	81shAyF6CN00G8EabHMAo0aJ+PfGVQV0Illo+Ma2BB3gg6v0Fx6kgpzM76xV37eS9aGgMmg7Ott9t
	IA1PuaXvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSeXg-0003aN-65; Mon, 20 May 2019 09:25:12 +0000
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSeXV-00037b-Bs
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 09:25:03 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id C27EA80450; Mon, 20 May 2019 11:24:49 +0200 (CEST)
Date: Mon, 20 May 2019 11:24:59 +0200
From: Pavel Machek <pavel@denx.de>
To: Ran Wang <ran.wang_1@nxp.com>
Subject: Re: [PATCH V2 3/3] soc: fsl: add RCPM driver
Message-ID: <20190520092459.GC9748@amd>
References: <20190517033946.30763-1-ran.wang_1@nxp.com>
 <20190517033946.30763-3-ran.wang_1@nxp.com>
 <20190519213844.GH31403@amd>
 <AM5PR0402MB2865EC5E1EF12C6C1D3C5566F1060@AM5PR0402MB2865.eurprd04.prod.outlook.com>
 <20190520085647.GA9748@amd>
 <AM5PR0402MB2865F4574B19761848B001F9F1060@AM5PR0402MB2865.eurprd04.prod.outlook.com>
 <20190520090748.GB9748@amd>
 <AM5PR0402MB2865E28B2E2296CB878ACEA2F1060@AM5PR0402MB2865.eurprd04.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <AM5PR0402MB2865E28B2E2296CB878ACEA2F1060@AM5PR0402MB2865.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_022501_848617_1692FE6E 
X-CRM114-Status: GOOD (  16.69  )
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
Content-Type: multipart/mixed; boundary="===============7063214081918781581=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7063214081918781581==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="0lnxQi9hkpPO77W3"
Content-Disposition: inline


--0lnxQi9hkpPO77W3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> > > > You are right, but the current code is "interesting". What about
> > > >
> > > >     ws =3D NULL;
> > > >     while (ws =3D wakeup_source_get_next(NULL)) ...
> > > >
> > > > then?
> > >
> > > Did you mean:
> > >      ws =3D NULL;
> > >      while (ws =3D wakeup_source_get_next(ws)) ...
> > >
> > >    Yes, that will be the same to my original logic, do you recommend
> > > to change to this? :)
> >=20
> > Yes please. It will be less confusing to the reader.
>=20
> OK, if no other comment, I will work out v4, fix this and extra ','
> =20
> > Thanks (and sorry for cross-talk),
>=20
> That's OK, thanks for your time.

You can add

Acked-by: Pavel Machek <pavel@ucw.cz>

to that version.

Best regards,
								Pavel
--=20
DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany

--0lnxQi9hkpPO77W3
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAlzicmsACgkQMOfwapXb+vI/kACfXfr5zSF0QsKLaIDUnn6ldYdL
9rUAn1IvhOf/+HglBb9Ro5uZKDJsTOI+
=fAL6
-----END PGP SIGNATURE-----

--0lnxQi9hkpPO77W3--


--===============7063214081918781581==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7063214081918781581==--

