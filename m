Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B12C0899A0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 11:17:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aVJ34WvZc8WEddJYXVFUAt9enuMPawsFfQMffoetwAw=; b=hrfGLh+iyqJ92B3UxrjBrghb3
	aMCtOCfVun4B8X0h3wQva09gXQ28RAunpR+5iY5GktDE/SRlhewVsvinlMGPELkDJqcsSaaG6+xAF
	XJlPUMPcjusVE4BvDzPxlc1JKjyub0pYO1Il7VNVaTYHElyF7kmEs1ymUX8Zflk8GT+tWHXPBUAnV
	DrXQ71nwTAzbrD07aXA8QXAsmODe4Kn39dRTs2d+kRoOug//eUYeonoj5EV3dJGSPiVS/GvfHgKfI
	1SIQpHtkJDR6dDjh9S14FZ0TKynCAH84VxPGmJVUGNcFuFuDmMPG/ULMRga0PNOhohl8A56wT8f8p
	Q329U7ttw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx6Rt-0000B7-Fp; Mon, 12 Aug 2019 09:17:05 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx6RX-0000Ak-NS
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 09:16:45 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 731011BF203;
 Mon, 12 Aug 2019 09:16:31 +0000 (UTC)
Date: Mon, 12 Aug 2019 11:16:31 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: Re: [PATCH 03/11] clocksource: sun4i: Add missing compatibles
Message-ID: <20190812091631.j2pr7i2zeput3hrc@flea>
References: <20190722081229.22422-1-maxime.ripard@bootlin.com>
 <20190722081229.22422-3-maxime.ripard@bootlin.com>
 <9df53981-d1b2-433c-e61f-7c000c71bc55@linaro.org>
MIME-Version: 1.0
In-Reply-To: <9df53981-d1b2-433c-e61f-7c000c71bc55@linaro.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_021643_913233_20BE6F6D 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
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
Content-Type: multipart/mixed; boundary="===============0510354362183294010=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0510354362183294010==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="37oa6uis2vruvc4i"
Content-Disposition: inline


--37oa6uis2vruvc4i
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Mon, Aug 12, 2019 at 10:59:51AM +0200, Daniel Lezcano wrote:
> On 22/07/2019 10:12, Maxime Ripard wrote:
> > Newer Allwinner SoCs have different number of interrupts, let's add
> > different compatibles for all of them to deal with this properly.
> >
> > Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
>
> Acked-by: Daniel Lezcano <daniel.lezcano@linaro.org>

Thanks!

Can you merge this through your tree (along with the bindings)? I'll
merge the DT patches

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--37oa6uis2vruvc4i
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXVEubwAKCRDj7w1vZxhR
xSPiAQCGm7AfM7a9jZU20jV/mm4Uo+2m/txqIfeNeKqd6epxEgEAyI9mg/ROKQgY
ucdSpdv22wOrVWgTyo3+PHHv0QX2KgA=
=ZtgS
-----END PGP SIGNATURE-----

--37oa6uis2vruvc4i--


--===============0510354362183294010==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0510354362183294010==--

