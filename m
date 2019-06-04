Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FB5D3408F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 09:43:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=31OidhZhI+okQleuIthqXzBgMRVjs5oXVAqkszQkWV0=; b=gvmIl3gsMPRiML0WsQIUJkn2k
	XEpVwhdd8Oar795UaYRS0t/XfaDbT3exoJfC0x6QInoG1NZLN/UkQ49l/xBDxjtr3yrVNi7h1JhBT
	dJUwtJCSAG1+TCBuR9MHKu/khpj2wY9ESsAaCuvOUbW28VkH78WwsS0KnVNllPtn6s3ZRBZjbE+u/
	lcWrpAX6mthFcrYSHF34x9xwgO6FcuOpJqx8pIfHqJ6/wlnQ2oxAw7wgAMAN90eosEPl2GdqgWyR3
	yyNNe/DwFI7BGxuZz2JQEXyliQTuqLBFZ8GtGqqhwR3AxjQFxN8oT+CKj/kenbOva59IGlAAN7BrQ
	m3BllzKcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY46D-0000tn-F2; Tue, 04 Jun 2019 07:43:13 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY465-0000t0-LW
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 07:43:07 +0000
X-Originating-IP: 90.88.144.139
Received: from localhost (aaubervilliers-681-1-24-139.w90-88.abo.wanadoo.fr
 [90.88.144.139]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 5D1EF20007;
 Tue,  4 Jun 2019 07:43:02 +0000 (UTC)
Date: Tue, 4 Jun 2019 09:43:01 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: codekipper@gmail.com
Subject: Re: [PATCH v4 3/9] ASoC: sun4i-i2s: Add regmap field to sign extend
 sample
Message-ID: <20190604074301.p27e5towgehmraoy@flea>
References: <20190603174735.21002-1-codekipper@gmail.com>
 <20190603174735.21002-4-codekipper@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190603174735.21002-4-codekipper@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_004305_869288_1714EEDC 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: alsa-devel@alsa-project.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, lgirdwood@gmail.com, be17068@iperbole.bo.it,
 wens@csie.org, broonie@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5176746831746565322=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5176746831746565322==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="4iu232naw3x4dexg"
Content-Disposition: inline


--4iu232naw3x4dexg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jun 03, 2019 at 07:47:29PM +0200, codekipper@gmail.com wrote:
> From: Marcus Cooper <codekipper@gmail.com>
>
> On the newer SoCs this is set by default to transfer a 0 after

Which SoCs?

> each sample in each slot. However the platform that this driver

Which platform?

> was developed on had the default setting where it padded the audio
> gain with zeros. This isn't a problem whilst we have only support
> for 16bit audio but with larger sample resolution rates in the
> pipeline then it should be fixed to also pad. Without this the audio
> gets distorted.
>
> Signed-off-by: Marcus Cooper <codekipper@gmail.com>

Once the commit log fixed,
Acked-by: Maxime Ripard <maxime.ripard@bootlin.com>

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--4iu232naw3x4dexg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXPYhBQAKCRDj7w1vZxhR
xcVmAQDSGaycvO/U1wpX1Ai6mvSxxamMb37KG7EScFKOC3oa5gEAzJ68Gg6XPP/O
EBu14S2afGHTqLHHKTGeLzVHp5ZKHwU=
=1Yj6
-----END PGP SIGNATURE-----

--4iu232naw3x4dexg--


--===============5176746831746565322==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5176746831746565322==--

