Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E37B8181DD1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 17:28:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=l0WAcxKwXHL1u30Zl09XUxpR4dbrd27sUXfvg0BYw58=; b=rwFy4Cd3atKd/U/q0pU/G2Lls
	nmi7NW+vH0ciPqcmJW/wZ44aJWn6Az9bRid3q1YhPKFTMgJBfSAPIroWId0YiAQeF/3MelVT45MFs
	bnxjKE+ef/oM1VALMnbnQoaiEDZEA1N1LwuwgWAUaeABRBZUWtbJYZI9j6MepkDp/dwZmiecpCrWW
	roC4nR0PrKHeuK5/n7RH7FZ6QGdhHnAufaDcilfLSaFI+PstmCr5B7lnUejTyYdqnuMxH+XztDb5g
	MGeLZVqkRzTKtpX0IGD70S6rjnCUAI09geMaUkCDOuxSg8s5dj7t6646U4H/aq5qa+ri9FjTT/kSf
	gek/ZixFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC4Dr-0008Oy-Rh; Wed, 11 Mar 2020 16:28:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC4Dj-0008Nh-E4
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 16:28:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 74F8C31B;
 Wed, 11 Mar 2020 09:28:32 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EB3443F6CF;
 Wed, 11 Mar 2020 09:28:31 -0700 (PDT)
Date: Wed, 11 Mar 2020 16:28:30 +0000
From: Mark Brown <broonie@kernel.org>
To: Olivier MOYSAN <olivier.moysan@st.com>
Subject: Re: [PATCH v3] ASoC: dt-bindings: stm32: convert spdfirx to
 json-schema
Message-ID: <20200311162830.GG5411@sirena.org.uk>
References: <20200117170352.16040-1-olivier.moysan@st.com>
 <d792a2b8-3b59-f04e-c24d-06185d60c734@st.com>
MIME-Version: 1.0
In-Reply-To: <d792a2b8-3b59-f04e-c24d-06185d60c734@st.com>
X-Cookie: I'm a Lisp variable -- bind me!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_092835_515931_79972574 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "robh@kernel.org" <robh@kernel.org>,
 "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "tiwai@suse.com" <tiwai@suse.com>, "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "perex@perex.cz" <perex@perex.cz>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============2066939700472305178=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2066939700472305178==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="w/VI3ydZO+RcZ3Ux"
Content-Disposition: inline


--w/VI3ydZO+RcZ3Ux
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 11, 2020 at 03:37:01PM +0000, Olivier MOYSAN wrote:
> Hi,
> Kind reminder for this patch.

Please don't send content free pings and please allow a reasonable time
for review.  People get busy, go on holiday, attend conferences and so=20
on so unless there is some reason for urgency (like critical bug fixes)
please allow at least a couple of weeks for review.  If there have been
review comments then people may be waiting for those to be addressed.

Sending content free pings adds to the mail volume (if they are seen at
all) which is often the problem and since they can't be reviewed
directly if something has gone wrong you'll have to resend the patches
anyway, so sending again is generally a better approach though there are
some other maintainers who like them - if in doubt look at how patches
for the subsystem are normally handled.

--w/VI3ydZO+RcZ3Ux
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5pEa0ACgkQJNaLcl1U
h9DdKAf/RDfG02WXRCBnnFoaoVDDhiXfiLY3E3cosFMFo8a7Gmv/wb6FwPPevsyq
MiA+WtsBBa8juOJ6PlmQ7IWC84GpUDFMpoeW7HkEMzGJ+CxF5su7kQCQfCG0XeR7
xiTK0cF1l+zLaKcz2gkyO4P0pAu0eQbHF5MC9sEX7HsYd6qZd26GU4gpLOGqqZBN
eMzdoSHCY8tJpZqbT0f9JnU5+el6wwfo8c3LPEmbzTBT6b6oCxc9fhXi8BIsTWsi
64G1cgZIzc34qeX4JeAtb2lPBAKYd9Fm9bJOhGhf1XkIq8SOWlONePAb454reMOZ
kiJO+xOE40GqCY82X5SD8I5A7DU4Og==
=F+uO
-----END PGP SIGNATURE-----

--w/VI3ydZO+RcZ3Ux--


--===============2066939700472305178==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2066939700472305178==--

