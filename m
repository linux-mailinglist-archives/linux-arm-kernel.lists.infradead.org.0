Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9924A89C8F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 13:24:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CroCOO88FIu2XVBXaYgHuEnU2jmajWebKrGSk2r2Mt4=; b=TwWcODNBUaHmV3CtjAy1SWnDK
	MH69OZEkSWpkAVSDaELFMGf5jkBTl2Zg8Ofm2bW5yQz7S1RSiG3XnuXfGENxnnUS/2xUPWS9P5+We
	d8qYA/g9lsuoe/AZBSLuGebzvBE+IN0QPKzpAU8eqTeitFNrznEBoYVwFOJeAjmBzwiYF8yYSEmui
	cvR0tCDmWF7y1lIwN6APSKwGF9/woyzVAmAg1WRa8iVDIfcJtrUAgGyhpml8DLtmb8jJdkKrfMuyY
	wGhz3i9sEFzzb7Yn2NNm21Bbf7mbsdnzeABjKbkImt5HMU0sF5kX5zbdOwB33UQWXsRiA2YgaI9l6
	zrhnxfe/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx8RO-00061k-7j; Mon, 12 Aug 2019 11:24:42 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx8R5-00060d-TQ
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 11:24:25 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id D35D31C0002;
 Mon, 12 Aug 2019 11:24:11 +0000 (UTC)
Date: Mon, 12 Aug 2019 13:24:11 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: Re: [PATCH 03/11] clocksource: sun4i: Add missing compatibles
Message-ID: <20190812112411.ty3npkq6ztbushhm@flea>
References: <20190722081229.22422-1-maxime.ripard@bootlin.com>
 <20190722081229.22422-3-maxime.ripard@bootlin.com>
 <9df53981-d1b2-433c-e61f-7c000c71bc55@linaro.org>
 <20190812091631.j2pr7i2zeput3hrc@flea>
 <42ee55ee-258c-7588-fea3-db3c661a0156@linaro.org>
MIME-Version: 1.0
In-Reply-To: <42ee55ee-258c-7588-fea3-db3c661a0156@linaro.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_042424_129169_AD2073D0 
X-CRM114-Status: GOOD (  11.69  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
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
Content-Type: multipart/mixed; boundary="===============2267208261649099083=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2267208261649099083==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="chbync4osl7cj5bo"
Content-Disposition: inline


--chbync4osl7cj5bo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Aug 12, 2019 at 11:21:50AM +0200, Daniel Lezcano wrote:
> On 12/08/2019 11:16, Maxime Ripard wrote:
> > Hi,
> >
> > On Mon, Aug 12, 2019 at 10:59:51AM +0200, Daniel Lezcano wrote:
> >> On 22/07/2019 10:12, Maxime Ripard wrote:
> >>> Newer Allwinner SoCs have different number of interrupts, let's add
> >>> different compatibles for all of them to deal with this properly.
> >>>
> >>> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> >>
> >> Acked-by: Daniel Lezcano <daniel.lezcano@linaro.org>
> >
> > Thanks!
> >
> > Can you merge this through your tree (along with the bindings)? I'll
> > merge the DT patches
>
> patches 1-4 then ?

Yep, thanks!
Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--chbync4osl7cj5bo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXVFMWwAKCRDj7w1vZxhR
xRg7AP9AGyLnuIz1tKYeJZXcdHCdmVcPwADY+KkLmegiEm4mkwD/R7lwmli2RLhK
8NMsjP1LNwEklTeR3aMbTsfrI1uvTw4=
=0T8v
-----END PGP SIGNATURE-----

--chbync4osl7cj5bo--


--===============2267208261649099083==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2267208261649099083==--

