Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B33BF92507
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 15:31:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YYXrKbrGhP2ygVALXturJyBNYykm1YtQPb8WW/PkozA=; b=fAyxVArvQLm7LhNjn9yyEDSke
	r9vxMqa0Yq05BK6idWBsw9oLf21ruVOqS+UwOvRLaUMO9bgYrULLwT3i5NBsv6rINgpyJVXPMCUKS
	H/8MgRVbXRdFOYt/mPeEzRHthEOVJrWuPd0P52P3a7sQ8zopVAD4ozYNXEN0Jq+/li4HEWiuIYA1S
	h0VgdJsb9l5SDMEgyW82Q+nrEetNMw12nkq7EvYPakFWCYy7YJu+wMc4hmLYnKB7qNG94jQ30LdCn
	vi3JkkSK8H7IE5ex6qp8XQdLJYzSgoru2qAvAnBxaiY/sGMrbD7XcT4NnTNxNudWZXre5ID2TIn3M
	TA0NV/RnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzhkh-0007N7-Af; Mon, 19 Aug 2019 13:31:15 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzhkT-0007DS-Bk
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 13:31:05 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 8E1D5240008;
 Mon, 19 Aug 2019 13:30:58 +0000 (UTC)
Date: Mon, 19 Aug 2019 15:30:58 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: Re: [PATCH 03/11] clocksource: sun4i: Add missing compatibles
Message-ID: <20190819133058.bujcawpw5rgsfp4g@flea>
References: <20190722081229.22422-1-maxime.ripard@bootlin.com>
 <20190722081229.22422-3-maxime.ripard@bootlin.com>
 <9df53981-d1b2-433c-e61f-7c000c71bc55@linaro.org>
 <20190812091631.j2pr7i2zeput3hrc@flea>
 <42ee55ee-258c-7588-fea3-db3c661a0156@linaro.org>
 <20190812112411.ty3npkq6ztbushhm@flea>
MIME-Version: 1.0
In-Reply-To: <20190812112411.ty3npkq6ztbushhm@flea>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_063101_565115_7584EA30 
X-CRM114-Status: GOOD (  12.55  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 tglx@linutronix.de, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0473390430561236406=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0473390430561236406==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="u5prx2f64eoqygbx"
Content-Disposition: inline


--u5prx2f64eoqygbx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Aug 12, 2019 at 01:24:11PM +0200, Maxime Ripard wrote:
> On Mon, Aug 12, 2019 at 11:21:50AM +0200, Daniel Lezcano wrote:
> > On 12/08/2019 11:16, Maxime Ripard wrote:
> > > Hi,
> > >
> > > On Mon, Aug 12, 2019 at 10:59:51AM +0200, Daniel Lezcano wrote:
> > >> On 22/07/2019 10:12, Maxime Ripard wrote:
> > >>> Newer Allwinner SoCs have different number of interrupts, let's add
> > >>> different compatibles for all of them to deal with this properly.
> > >>>
> > >>> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> > >>
> > >> Acked-by: Daniel Lezcano <daniel.lezcano@linaro.org>
> > >
> > > Thanks!
> > >
> > > Can you merge this through your tree (along with the bindings)? I'll
> > > merge the DT patches
> >
> > patches 1-4 then ?
>
> Yep, thanks!

Ping?

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--u5prx2f64eoqygbx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXVqkkgAKCRDj7w1vZxhR
xbepAQCWHgrNba54ySml5bNd587ZvZnP5TK5AjUaKHVhUVTzUAD+Li7sWvaQd0cZ
RqB2LELzNfW2VyjKXWSRctv1YsjZ6g4=
=fn3W
-----END PGP SIGNATURE-----

--u5prx2f64eoqygbx--


--===============0473390430561236406==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0473390430561236406==--

