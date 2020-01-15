Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3963B13CA55
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 18:08:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LZ0KGtoJu1R4mjQAmCT+HhCtKrsD6QDdBOoaHNrY6Ts=; b=FnC5y1O0xXn03SLs86Kf8dFgy
	ACTHjOkxIk2pKpYgTSFrN5h3j2G+2MRSTdgsU0PZ2JC18O7CCtClJraSSO+nhK7RTVI84zCfGXvPa
	9YYo7junRLc3P1PpVsr0/3uJbOSJ114kg1XarE1B16L9hsEOY1vHoHXgcbepsRtwX4G0q99Tbgv55
	SVFQ/bFH92M6i1XMsHQHwq38uhcXDuTmoWFRjYW3f1Duh8BDvuTQ66PotUxGs5ME6Dv2N+Kr2rFtN
	Sa5sV2UMH+2XMyP5xkzfev9Gpxz/EXhqrttZOaqIWP5POV12qYu5jPsV5aXZqTJ6F+/CXaV24rOAb
	u9yUvzung==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irm95-0006JG-3b; Wed, 15 Jan 2020 17:07:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irm8l-0006GO-9A
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 17:07:43 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 70661214AF;
 Wed, 15 Jan 2020 17:07:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579108054;
 bh=bZgTE+sfDA4znuib9GfQPR/++LYJ+U/zkieRwUtQu7M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=po0oY3j2BHNes4mv3TqdkItqh5I3k0r89eERz/erPgkt2FX5ETzJ0L0K7OSCK4y+8
 //lAYPLI1jJnYZqoCprE7A5fzdog9uSvRK6O3f/kM30jRJGHfRyNASOGKFfeF/wE7t
 OXePKWBstOdbWX+jrYfM6YjAKRGeBM/R1jmyZ3DA=
Date: Wed, 15 Jan 2020 18:07:31 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH 1/2] dmaengine: sun4i: Add support for cyclic requests
 with dedicated DMA
Message-ID: <20200115170731.vt6twfhvuwjrbbup@gilmour.lan>
References: <20200110141140.28527-1-stefan@olimex.com>
 <20200110141140.28527-2-stefan@olimex.com>
 <20200115123137.GJ2818@vkoul-mobl>
MIME-Version: 1.0
In-Reply-To: <20200115123137.GJ2818@vkoul-mobl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_090736_355831_63F22391 
X-CRM114-Status: GOOD (  13.49  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Stefan Mavrodiev <stefan@olimex.com>, David Airlie <airlied@linux.ie>,
 linux-sunxi@googlegroups.com, open list <linux-kernel@vger.kernel.org>,
 "open list:DRM DRIVERS FOR ALLWINNER A10" <dri-devel@lists.freedesktop.org>,
 Chen-Yu Tsai <wens@csie.org>, Daniel Vetter <daniel@ffwll.ch>,
 "open list:DMA GENERIC OFFLOAD ENGINE SUBSYSTEM" <dmaengine@vger.kernel.org>,
 Dan Williams <dan.j.williams@intel.com>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============0062948670877598643=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0062948670877598643==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2bp5iwjkf7edbvmy"
Content-Disposition: inline


--2bp5iwjkf7edbvmy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jan 15, 2020 at 06:01:37PM +0530, Vinod Koul wrote:
> On 10-01-20, 16:11, Stefan Mavrodiev wrote:
> > Currently the cyclic transfers can be used only with normal DMAs. They
> > can be used by pcm_dmaengine module, which is required for implementing
> > sound with sun4i-hdmi encoder. This is so because the controller can
> > accept audio only from a dedicated DMA.
> >
> > This patch enables them, following the existing style for the
> > scatter/gather type transfers.
>
> I presume you want this to go with drm tree (if not let me know) so:
>
> Acked-by: Vinod Koul <vkoul@kernel.org>

There's no need for it to go through DRM, it can go through your tree :)

Maxime

--2bp5iwjkf7edbvmy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXh9G0wAKCRDj7w1vZxhR
xcYaAP9Ias1ypfUPOfaG/F7N9WB9I/ldnmBh5I24ez8A9pQPlQD/XUfJTn9Wh8iY
O3h8YeDStjv1z+kttwwWJ6ms4KlhIAU=
=r61M
-----END PGP SIGNATURE-----

--2bp5iwjkf7edbvmy--


--===============0062948670877598643==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0062948670877598643==--

