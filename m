Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D108B6D66
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 22:16:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tla/HbMpnGvlLtNh/mVwYQ7oBp0VxhEq87Em7rEFYlg=; b=Na8X77DCIVePExUXkEHpXRqu2
	AQnRXxORUtPZtFWqhEq4/a+hzEB0G3TFcqaxKXbfjE/A4oQOCK7OI9RfKYI1dVZhkXmkubRzUegX2
	bWZRR13QgSQ/ujcyWBRA4QO9QKo6kjDlxHGQpcIOOAtPSXjqEeNPK9+FlHFY0VNalaXvbVTIozPCQ
	JdV4cuQlVkJ6YEVQimGQqBXiikXwwToOXYSskUCUC1AmPtjBZF4Nxozs9nZ1RUEwLmnfrTtGYrw5e
	YSt6INRR4ig1fZAtwNXrchvaq7/1pums/kbSD+BY6wCWJTI4SofOH2LDnplMgrmoWBSceNlk5ncT+
	mkGmX7lpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAgNP-0003oR-MX; Wed, 18 Sep 2019 20:16:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAgNA-0003ns-FS
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 20:16:21 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9B2B321927;
 Wed, 18 Sep 2019 20:16:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568837780;
 bh=0jWrdETYu7QZ6nLUVrv66CQvk9+vFSveR8OObhBCino=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=EFgyMRfQj+z7INZY4gk4LkQGc+RqodGEvpbG64mfh86DvbU+un9q2XvuNyMSJF19y
 e7Ms4hV+8A+0wJ156gguMKhnJ0q197TzBP95/NqDL3Q7DmZbXJH85EiV1q6ETqnWB0
 xuMTzwPMSHKmqEeyaaPIfA8e1RwymHwPmxOuWJ/4=
Date: Wed, 18 Sep 2019 22:16:17 +0200
From: Maxime Ripard <mripard@kernel.org>
To: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Chen-Yu Tsai <wens@csie.org>, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] drm: sun8i-ui/vi: Fix layer zpos change/atomic modesetting
Message-ID: <20190918201617.5gwzmshoxbcxbmrx@gilmour>
References: <20190914220337.646719-1-megous@megous.com>
 <20190918141734.kerdbbaynwutrxf6@gilmour>
 <20190918152309.j2dbu63jaru6jn2t@core.my.home>
MIME-Version: 1.0
In-Reply-To: <20190918152309.j2dbu63jaru6jn2t@core.my.home>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_131620_561633_011038CB 
X-CRM114-Status: GOOD (  21.37  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Content-Type: multipart/mixed; boundary="===============6995690123631621504=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6995690123631621504==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="tk4bbuln473dg4yq"
Content-Disposition: inline


--tk4bbuln473dg4yq
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 18, 2019 at 05:23:09PM +0200, Ond=C5=99ej Jirman wrote:
> Hi,
>
> On Wed, Sep 18, 2019 at 04:17:34PM +0200, Maxime Ripard wrote:
> > Hi,
> >
> > On Sun, Sep 15, 2019 at 12:03:37AM +0200, megous@megous.com wrote:
> > > From: Ondrej Jirman <megous@megous.com>
> > >
> > > There are various issues that this re-work of sun8i_[uv]i_layer_enable
> > > function fixes:
> > >
> > > - Make sure that we re-initialize zpos on reset
> > > - Minimize register updates by doing them only when state changes
> > > - Fix issue where DE pipe might get disabled even if it is no longer
> > >   used by the layer that's currently calling sun8i_ui_layer_enable
> > > - .atomic_disable callback is not really needed because .atomic_update
> > >   can do the disable too, so drop the duplicate code
> > >
> > > Signed-off-by: Ondrej Jirman <megous@megous.com>
> >
> > It looks like these fixes should be in separate patches. Is there any
> > reason it's not the case?
>
> Bullet points just describe the resulting effect/benefits of the change t=
o fix
> the pipe control register update issue (see the referenced e-mail).

It's definitely ok to have multiple patches needed to address a single
perceived issue.

A commit is not about what you're fixing but what you're changing. And
the fact that you have tha bullet list in the first place proves that
you have multiple logical changes in your patch.

And even then, your commit log mentions that you're fixing multiple
issues (without explaining them).

> I can maybe split off the first bullet point into a separate patch. But
> I can't guarantee it will not make the original issue worse, because it m=
ight
> have been hiding the other issue with register updates.
>
> The rest is just a result of the single logical change. It doesn't work
> individually, it all has the goal of fixing the issue as a whole.
>
> If I were to split it I would have to actually re-implement .atomic_disab=
le
> callback only to remove it in the next patch. I don't see the benefit.

Your commit log says that you remove atomic_disable. Why would you
remove it, to add it back, to remove it again?

Maxime

--tk4bbuln473dg4yq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXYKQkQAKCRDj7w1vZxhR
xf8DAP9GfuXKiu3V08w0e+632ZjU7AktNEcXwFiyue0LwCXXDQEAhgjDhYaEmgtB
PS6Q2gQ7ymKhYKJ1fiSUPtE0JM/QOQA=
=Yn7Q
-----END PGP SIGNATURE-----

--tk4bbuln473dg4yq--


--===============6995690123631621504==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6995690123631621504==--

