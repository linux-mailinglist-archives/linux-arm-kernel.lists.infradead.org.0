Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AB9F36EB7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 10:33:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DlKEWk9LkuP9WhUf+QpvCqpl8W5JGI9w0rxPVZRMOFc=; b=P4vRAxhrWOHGE2yOggGwBk4Uv
	d1I2pmYaJFvNbuKA9Ar7zPVCqf+apRanOrD+wZgDDghDPc2MVqvfHEZQ59gEtFFx2/nvWZha5dCfh
	lp12BV1CEe7qcatprvjbVI1PW/YJbFyI2H6ZkbVG0cojcKtVt10K2uv4kwu8qyD5JNVRDW5DSI80Y
	IPlaWGQfu9xaDT4jay+nA9jPLZVcwkfQgjn+SrUWx0YooqtvAB/MoVDQ8vE/WtaVTPsPzJbevzGgx
	9D+kuqCKbwi10quJQeCdRppBmBzxRoPiOIdzFTkELduzqkLLna9pZ5Nw1hI3aQ/oSGrJ4NfaX1Y1/
	hbpjvph+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYnpp-0006mv-HX; Thu, 06 Jun 2019 08:33:21 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYnpi-0006mY-5n
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 08:33:15 +0000
Received: from localhost (aaubervilliers-681-1-24-139.w90-88.abo.wanadoo.fr
 [90.88.144.139]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 6C6F510001B;
 Thu,  6 Jun 2019 08:33:08 +0000 (UTC)
Date: Thu, 6 Jun 2019 10:33:07 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@siol.net>
Subject: Re: [PATCH 6/7] media: cedrus: Add infra for extra buffers connected
 to capture buffers
Message-ID: <20190606083307.b5zpk4n6x3w6mtmb@flea>
References: <20190530211516.1891-1-jernej.skrabec@siol.net>
 <20190530211516.1891-7-jernej.skrabec@siol.net>
 <20190603121859.sbphcjy75kmed6oc@flea>
 <3029072.frl2UAsRGt@jernej-laptop>
MIME-Version: 1.0
In-Reply-To: <3029072.frl2UAsRGt@jernej-laptop>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_013314_369291_919F51C0 
X-CRM114-Status: GOOD (  11.90  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============2837513726108483395=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2837513726108483395==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="llwlg2xtnnijika2"
Content-Disposition: inline


--llwlg2xtnnijika2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 03, 2019 at 05:48:25PM +0200, Jernej =C5=A0krabec wrote:
> Dne ponedeljek, 03. junij 2019 ob 14:18:59 CEST je Maxime Ripard napisal(=
a):
> > > +static void cedrus_buf_cleanup(struct vb2_buffer *vb)
> > > +{
> > > +	struct vb2_queue *vq =3D vb->vb2_queue;
> > > +
> > > +	if (!V4L2_TYPE_IS_OUTPUT(vq->type)) {
> > > +		struct cedrus_ctx *ctx =3D vb2_get_drv_priv(vq);
> > > +		struct cedrus_buffer *cedrus_buf;
> > > +
> > > +		cedrus_buf =3D vb2_to_cedrus_buffer(vq->bufs[vb->index]);
> > > +
> > > +		if (cedrus_buf->extra_buf_size)
> > > +			dma_free_coherent(ctx->dev->dev,
> > > +					  cedrus_buf-
> >extra_buf_size,
> > > +					  cedrus_buf-
> >extra_buf,
> > > +					  cedrus_buf-
> >extra_buf_dma);
> > > +	}
> > > +}
> > > +
> >
> > I'm really not a fan of allocating something somewhere, and freeing it
> > somewhere else. Making sure you don't leak something is hard enough to
> > not have some non-trivial allocation scheme.
>
> Ok, what about introducing two new optional methods in engine callbacks,
> buffer_init and buffer_destroy, which would be called from cedrus_buf_ini=
t() and
> cedrus_buf_cleanup(), respectively. That way all (de)allocation logic sta=
ys
> within the same engine.

Yep, that would work for me.

Thanks!
Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--llwlg2xtnnijika2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXPjPwwAKCRDj7w1vZxhR
xfVpAQCOr8fs3rk1qqMT7K32xwhOKrfkpEzeOlKL8hYuHFgkPQEA+ZYtxUfOTSQu
8EDER1DVGqjSGhBpL356m0j1JSeHNgM=
=Hz+3
-----END PGP SIGNATURE-----

--llwlg2xtnnijika2--


--===============2837513726108483395==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2837513726108483395==--

