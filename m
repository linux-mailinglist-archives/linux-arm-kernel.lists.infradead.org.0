Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A97668991A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 10:58:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iKFOJTN3NWPsX3JlKdMFYRuI23Vt/Tg1iI9ozqLvlvU=; b=m4jPMKiWxnk03+rJX0gUkmz4P
	8gdlfZ/D3tOmBiuvZrRIRsiSeizFTEHvsoJTeEDCUdmXtcTKEqTQf1DncttlNLzU0lYqaFZ7ixGYl
	uKi0sukhJkncEDk0NLdb+7JebUMQk6aOZwavIBD6gxs17K8dq+csgKbLwLfCGGaSun5eKBHmUr5na
	3gxEtv5uFo0Niq88677QwXe1tWvYj76oq0m+ZxV9GwCBtASd0wrmGavS5bBXLnpLmA/grQ0ybeRVS
	/bbzVtskC3kxbYSAB6+gVJUY8QMieCZVEin/1qfSZgts4yo4+0jL3gFoFxoQAY68W/tJviGmdD6Bf
	9msyYdVtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx69k-0006TD-A3; Mon, 12 Aug 2019 08:58:20 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx69Y-0006Sn-Q3
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 08:58:10 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 44C1660007;
 Mon, 12 Aug 2019 08:58:06 +0000 (UTC)
Date: Mon, 12 Aug 2019 10:58:05 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: daniel.lezcano@linaro.org, tglx@linutronix.de
Subject: Re: [PATCH 03/11] clocksource: sun4i: Add missing compatibles
Message-ID: <20190812085805.qwjbsms6kktjkf45@flea>
References: <20190722081229.22422-1-maxime.ripard@bootlin.com>
 <20190722081229.22422-3-maxime.ripard@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20190722081229.22422-3-maxime.ripard@bootlin.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_015808_996436_37168D7F 
X-CRM114-Status: UNSURE (   8.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
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
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3492413607852525166=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3492413607852525166==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ac53bymogihrt7bf"
Content-Disposition: inline


--ac53bymogihrt7bf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Daniel, Thomas,

On Mon, Jul 22, 2019 at 10:12:21AM +0200, Maxime Ripard wrote:
> Newer Allwinner SoCs have different number of interrupts, let's add
> different compatibles for all of them to deal with this properly.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

Ping?

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--ac53bymogihrt7bf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXVEqHQAKCRDj7w1vZxhR
xcoeAQDX2OPSnyQP6fMTStReVJ7LbtqbCcnDfcxvducn1Y65JAEArH9kGf+VdAsI
4xyZWrH+YOLr59ZbO6yyf/X1sDZ45wQ=
=Thbx
-----END PGP SIGNATURE-----

--ac53bymogihrt7bf--


--===============3492413607852525166==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3492413607852525166==--

