Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7704F1EBA0A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 13:05:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=A+rbVO1FJ0t+tcdU2aUb0w7lELo8OXnMV64O56gJK0I=; b=HjQhAFHDTVarq/f4377Ke1+yO
	x3tpJXetmmuMPBDRqW7Dh+SqpRet7xKdZx9/LdFETtMsvRut7erGl9LrrYjTPzHIUSNJ1weBjSSVa
	iVm1xT1DKviJI/6kFpG6hiERUg3lpwdCge0z2Hna8UH64RHnxKj7Px6/npyTUWkJQXhcTbwT0cwTr
	fbm/wxZ9uW7L7AOUjmNd3ohyqqgGlAnCsCKGucCHseD/OefpFOYVKmGGzQTOz1NLTVxafVaByIqcu
	n+6moQGbfpXQ01oCtMm3FJRV1C2ayXGNTv5HzNumAApZqwM6qFkP2hk7mi1j+inCPQr+MqfCbdYT/
	x8m/E1BMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg4j6-0000gX-4T; Tue, 02 Jun 2020 11:05:00 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg4iz-0000fw-4E; Tue, 02 Jun 2020 11:04:55 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id EB8E4580358;
 Tue,  2 Jun 2020 07:04:46 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Tue, 02 Jun 2020 07:04:46 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm3; bh=7HHu7QfhHPpbXmDpTyynkqVQP/G
 clpO7AEZNhrh18AI=; b=aIy8vP+KnWZJ7Wf1/SCoo6xVtD/CybIu+f41jnVDctk
 mghK2ZoehPVR/pBqde7vP0EIuI09trWMcuDBV5yhQ0ruBKPsi1tvT2SvU2w7+nRJ
 lYDb7rahyhtbta0Vz4UF7afYtPQuwvGdNQZxnsiqTgJ2lr6z9iWkHvI6hicVh615
 ryawe7MLMKCYqZEnYAzx3dQWaNmCRPgk0bzU2b8Z6uXrGVMg0dduLlPUztqjp4r7
 GGLIodDa0N/EU3pdjrQZ63y53q+3JkTjyaNmQloVFY6w/d4wqFNpHwN7K7BaX7VT
 Nsl/HEOYUXQxfFXvoSrBmVqc2p8QMVP8YDXGFhiqb6g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=7HHu7Q
 fhHPpbXmDpTyynkqVQP/GclpO7AEZNhrh18AI=; b=ALBmZRsP1UmYVWy5MGtSX/
 yVQJSgV67x/vocs6vTLBI11RLGNu2ddAB4vBj9hTsw0bDRYjALwxL5H1nCp01vAw
 PDhl76FpRx/wFK/Qp6xfesrGx3wBpGvpvJLQ5+ZFJ/kTO8GI3Fijy+6Q+kBEBY9T
 MMszDb1OA2htuqQdYU3EMfKc68O+VWSG9vf9rhjVG+QVFhYmnpJOe1downiocJRr
 ift3puUverNRaH3bvINmX0nQkK/N179dawyAJNS2L/ew7C2VTjxXI8kc2gq9oKWn
 OxGtZPTr8k5QCj1GPsUcofcuCQtRML1lzycZ3GeHDwL8rnArwXKzQUou/gnMy7eg
 ==
X-ME-Sender: <xms:TDLWXvVzsNCTt5urJTCaPct8dQOyGp4jvMqZx4vP7MtXFq8mfIWxFw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudefjedgvdehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttdejnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepheelgfehhfefiefgfeegteeuveeigffhffdvtdeuffffleekgeefudejfefh
 veelnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghdpghhithhhuhgsrdgtohhmnecukf
 hppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghm
 pehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:TDLWXnmZIQf_q2O5GHzhfmsRyX8opdaSiINEdBhnYs3ohpunkfczUA>
 <xmx:TDLWXrZmHZoIiIAYPEyOEdi5d7gXXqaW4qH0LG6k8KTuGoZ7W4zh0A>
 <xmx:TDLWXqWrd9F80PBtbW7KN9lv6aiumBHrs8RQVnmnC8uWl_p9bnKpLQ>
 <xmx:TjLWXqj_kuI4y1vFcu1864cESgkisqX6bLB-F4M2AxdbEU0hfi2nPA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id C46EF30624E4;
 Tue,  2 Jun 2020 07:04:43 -0400 (EDT)
Date: Tue, 2 Jun 2020 13:04:42 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Jian-Hong Pan <jian-hong@endlessm.com>
Subject: Re: [PATCH v2 00/91] drm/vc4: Support BCM2711 Display Pipelin
Message-ID: <20200602110442.2ceuymhwuomvjj6i@gilmour>
References: <CAPpJ_efvtVzb_hvoVOeaePh7UdE13wOiiGaDBH38cToB-yhkUg@mail.gmail.com>
 <20200507172158.cybtakpo6cxv6wcs@gilmour.lan>
 <CAPpJ_efxenmSXt2OXkhkQ1jDJ59tyWBDUvmpyOB-bfPMDENQZg@mail.gmail.com>
 <CAPpJ_ed9TMJjN8xS1_3saf5obQhULJSLNgQSAFxgiWM2QX9A7Q@mail.gmail.com>
 <20200526102018.kznh6aglpkqlp6en@gilmour.lan>
 <CAD8Lp467DiYWLwH6T1Jeq-uyN4VEuef-gGWw0_bBTtmSPr00Ag@mail.gmail.com>
 <20200527091335.7wc3uy67lbz7j4di@gilmour.lan>
 <CAD8Lp45ucK-yZ5G_DrUVA7rnxo58UF1LPUy65w2PCOcSxKx_Sg@mail.gmail.com>
 <20200528073055.znutrhkryzu3grrl@gilmour.lan>
 <CAPpJ_ec1KRwUrHGVVZrReaDPz4iga-Nvj5H652-tTKmkXL=Xmg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAPpJ_ec1KRwUrHGVVZrReaDPz4iga-Nvj5H652-tTKmkXL=Xmg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_040453_539704_1AA1C4EB 
X-CRM114-Status: GOOD (  17.40  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [66.111.4.224 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-arm-kernel@lists.infradead.org,
 devicetree <devicetree@vger.kernel.org>,
 Linux Kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Daniel Drake <drake@endlessm.com>,
 Eric Anholt <eric@anholt.net>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org,
 Linux Upstreaming Team <linux@endlessm.com>, linux-clk@vger.kernel.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, linux-i2c@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============2124519247181113454=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2124519247181113454==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="5pdc5mmeqmvo6ueh"
Content-Disposition: inline


--5pdc5mmeqmvo6ueh
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Jun 01, 2020 at 03:58:26PM +0800, Jian-Hong Pan wrote:
> Maxime Ripard <maxime@cerno.tech> =E6=96=BC 2020=E5=B9=B45=E6=9C=8828=E6=
=97=A5 =E9=80=B1=E5=9B=9B =E4=B8=8B=E5=8D=883:30=E5=AF=AB=E9=81=93=EF=BC=9A
> >
> > Hi Daniel,
> >
> > On Wed, May 27, 2020 at 05:15:12PM +0800, Daniel Drake wrote:
> > > On Wed, May 27, 2020 at 5:13 PM Maxime Ripard <maxime@cerno.tech> wro=
te:
> > > > I'm about to send a v3 today or tomorrow, I can Cc you (and Jian-Ho=
ng) if you
> > > > want.
> > >
> > > That would be great, although given the potentially inconsistent
> > > results we've been seeing so far it would be great if you could
> > > additionally push a git branch somewhere.
> > > That way we can have higher confidence that we are applying exactly
> > > the same patches to the same base etc.
> >
> > So I sent a new iteration yesterday, and of course forgot to cc you... =
Sorry for
> > that.
> >
> > I've pushed my current branch here:
> > https://git.kernel.org/pub/scm/linux/kernel/git/mripard/linux.git/log/?=
h=3Drpi4-kms
>=20
> Thanks to Maxime!
>=20
> I have tried your repository on branch rpi4-kms.  The DRM VC4 is used!
> But got some issues:
> 1. Some weird error message in dmesg.  Not sure it is related, or not
> [    5.219321] [drm:vc5_hdmi_init_resources] *ERROR* Failed to get
> HDMI state machine clock
> https://gist.github.com/starnight/3f317dca121065a361cf08e91225e389

That's a deferred probing. The first time the HDMI driver is being
probed, the firmware clock driver has not been probed yet. It's making
another attempt later on, which succeeds.

> 2. The screen flashes suddenly sometimes.
>=20
> 3. The higher resolutions, like 1920x1080 ... are lost after hot
> re-plug HDMI cable (HDMI0)

I'm not sure on how to exactly reproduce those issues (or what they are)
though, can you expand on this?

Maxime

--5pdc5mmeqmvo6ueh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXtYySgAKCRDj7w1vZxhR
xfUBAP46Th1pk7x3jxfXvrbbwj1VxBv4kbEOV1Bu98RJiU1LywD/RjzWHXndJXmh
fEI26r6ziCy/1OpEIZxssHX9I6WnfQ4=
=suuo
-----END PGP SIGNATURE-----

--5pdc5mmeqmvo6ueh--


--===============2124519247181113454==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2124519247181113454==--

