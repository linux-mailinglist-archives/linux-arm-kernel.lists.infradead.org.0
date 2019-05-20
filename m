Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FDB922FDB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 11:09:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=w8xlpC95FlMgaGbC6iA4Am7deiyWHM0IKjLt8AsEquo=; b=RhdYqC//WHqktpkw1fNP6OHkl
	Y1k9chQgxsNWjMWs7QmtdmaIBbxkcOHbv7KlX2GaiszUMPmlhww6VWQ/sdi3fRbEWD9qvlqENeFX9
	rk3R+yr/Yr+5b8/rS7kfSC9gSeZrmuVKLtNJOKU+0jctDmVu6NTkG3HR3IhMYR8zT8maLQfxC0FlM
	OERa+bMiJnKouhXAGcLCiMN6NOXnxy41bCbJT/S+ZLTdm64RGsBdvCXZ2CHW5LmW/nc2CkjyGaV8A
	5O/JmKaSm0HuwX2AuGiK5JvIqP8sM3zSRNvADKdemE0Pa/pkaVS7lTcIMB426q/X04X3Cok6n9GYz
	TqJEsGmww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSeIC-0004MH-UR; Mon, 20 May 2019 09:09:12 +0000
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSeGt-0002zX-33
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 09:08:12 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id 8BC7080450; Mon, 20 May 2019 11:07:39 +0200 (CEST)
Date: Mon, 20 May 2019 11:07:49 +0200
From: Pavel Machek <pavel@denx.de>
To: Ran Wang <ran.wang_1@nxp.com>
Subject: Re: [PATCH V2 3/3] soc: fsl: add RCPM driver
Message-ID: <20190520090748.GB9748@amd>
References: <20190517033946.30763-1-ran.wang_1@nxp.com>
 <20190517033946.30763-3-ran.wang_1@nxp.com>
 <20190519213844.GH31403@amd>
 <AM5PR0402MB2865EC5E1EF12C6C1D3C5566F1060@AM5PR0402MB2865.eurprd04.prod.outlook.com>
 <20190520085647.GA9748@amd>
 <AM5PR0402MB2865F4574B19761848B001F9F1060@AM5PR0402MB2865.eurprd04.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <AM5PR0402MB2865F4574B19761848B001F9F1060@AM5PR0402MB2865.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_020751_449235_D1614012 
X-CRM114-Status: GOOD (  20.52  )
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
Content-Type: multipart/mixed; boundary="===============3500125862026621010=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3500125862026621010==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="8GpibOaaTibBMecb"
Content-Disposition: inline


--8GpibOaaTibBMecb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon 2019-05-20 09:03:50, Ran Wang wrote:
> Hi Pavel,
>=20
> On Monday, May 20, 2019 16:57, Pavel Machek wrote:
> >=20
> > Hi!
> >=20
> > > > > +static int rcpm_pm_prepare(struct device *dev) {
> > > > > +	struct device_node *np =3D dev->of_node;
> > > > > +	struct wakeup_source *ws;
> > > > > +	struct rcpm *rcpm;
> > > > > +	u32 value[RCPM_WAKEUP_CELL_MAX_SIZE + 1], tmp;
> > > > > +	int i, ret;
> > > > > +
> > > > > +	rcpm =3D dev_get_drvdata(dev);
> > > > > +	if (!rcpm)
> > > > > +		return -EINVAL;
> > > > > +
> > > > > +	/* Begin with first registered wakeup source */
> > > > > +	ws =3D wakeup_source_get_next(NULL);
> > > > > +	while (ws) {
> > > >
> > > > while (ws =3D wakeup_source_get_next(NULL)) ?
> > >
> > > Actually, we only pass NULL to wakeup_source_get_next() at very first
> > > call to get 1st wakeup source. Then in the while loop, we will fetch
> > > next source but not 1st, that's different. I am afraid your suggestion
> > > is not quite correct.
> >=20
> > Sorry, I seen your next version before seeing this explanation.
> >=20
> > You are right, but the current code is "interesting". What about
> >=20
> >     ws =3D NULL;
> >     while (ws =3D wakeup_source_get_next(NULL)) ...
> >=20
> > then?
>=20
> Did you mean:
>      ws =3D NULL;
>      while (ws =3D wakeup_source_get_next(ws)) ...
>=20
>    Yes, that will be the same to my original logic, do you recommend to c=
hange
> to this? :)

Yes please. It will be less confusing to the reader.

Thanks (and sorry for cross-talk),
								Pavel
--=20
DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany

--8GpibOaaTibBMecb
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAlzibmQACgkQMOfwapXb+vJOsgCgqGW6NAUYHlbtL2j5RhCyhuS2
zxMAn1WDZj1TbQDXI+hk99qNzljFSRtI
=XWgf
-----END PGP SIGNATURE-----

--8GpibOaaTibBMecb--


--===============3500125862026621010==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3500125862026621010==--

