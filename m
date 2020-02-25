Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96EA616BDF9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 10:55:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FZ9vaLSXI+osua2J7J3fmN9Gt3j1lgS2ajIRTQo/0ys=; b=jX43sb4EPkOzM/YOu3GmOShQo
	PrLYE5t4Go7OiosqGoOsNuXZQwaKmgF9Beksg0WTCibtHu0ojfHqaTuYKL2YSAPsBNFcAiiMLsqmP
	ISZPmI+U8DrmWZKGO4sSaV3/yoTHkd7SSU8XhfwTUX/slqgFJxbAuK+JnRKCWjCElK9OO/xChdOsu
	gpF5qCJU+MlETbVXmKHQBY9sRdvuPVcfSrBJhL58E0KwpQ8xqqXgeMzS0KHYwZUioa+v68+FFOtRX
	6kgS8w91XM1wLDJ6ophAAFdu1Ix+kb8xolLWSOxLizku1HDfIMPxk9SiziXtWAF2c1ZASqIn+RU2j
	1EX8rKHzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Wvq-00070B-3V; Tue, 25 Feb 2020 09:55:14 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6WvQ-0006zI-M8; Tue, 25 Feb 2020 09:54:52 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id BC9317EF;
 Tue, 25 Feb 2020 04:54:37 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Tue, 25 Feb 2020 04:54:38 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=JAYKQg/2/pReKqLMtOt2QZ5ljpW
 EB8Yt2uKvNb6wtl4=; b=TZaDZcAFLyFYVTbhFTg5Cbffetr0kG+aNiHfZsYtAYh
 4RHOt3ESWbp0UNA35oQ7ReHSvQ0O/FQ/FmFHcbp51NMSUrQFdRNDmrvpDH4AydvR
 1CAjZK24+51ZJIj+SItsUnVsUN5geJy5Ypvxr7dgcUznAsdM2QgN7MH5u/AHxtY1
 BUwoyLQKd1KDEnuLlbGPNIXQDF4Br/POSM0CTI/U+OvNNHlIEToNGZA23gHO0P4c
 0x9bREpdX150RzlELOr0kbsHzli7AmJNij9h5sOrWjaKlnChte7l/O/0Pw6ElgiH
 dM0yRoTkE7J+HpIyg5pGbg5rTNYOGpcO3jCMfBeyhXg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=JAYKQg
 /2/pReKqLMtOt2QZ5ljpWEB8Yt2uKvNb6wtl4=; b=uwmZqFGGyQlOvdxmlh2joF
 z5tZZLICEsG6PqP6+R+0WoHLsZM6w5HXH7k+AjBG17FxT/aIB+xOOaHD7YP7821O
 Uhnoj2X6uc2MCEs59S1X64Iye+PTF06qmsvesZKNN+EVU0HDhk+388h6acqLth7g
 fqx4gY3tcf4QM4/f1hwIGUTSBf4QhD6XObHpPoE8t8pKy5eyCBl0X7nNL8/Ihyha
 3NnMMNdvgmLSrfXzRDbZ/VDEdfj1M+SQYjld61JWI2j/OTEy9sZKxpBaUovOT7zS
 RQpGKUX4ch0kVgsYQk93xfvIHo7xfMGo6/MA8WwKg63jRXe1Wh4oxzC67a/3Yvcg
 ==
X-ME-Sender: <xms:2-5UXkC8pbDcvZ5FDf69OjgiYFoI35kQ2IzlibCGg3TLCSa0X5EDzw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledvgddtkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:2-5UXq9LqHD_2Q0ARIC9phWW_maXwIbZDgfXkmdwPHIhY-XpvcUmBg>
 <xmx:2-5UXkWr3XiMoId8kYw9dw-eCJtqobpS-Hb4u-tdZcUQZqsOBKmOXw>
 <xmx:2-5UXsu9oef_xyvfvVKU1Uf-BqsgRUl4vQmc6zg4V5znV7rUWvHytg>
 <xmx:3e5UXuPkmDgmvkdlUZQk5esXbnCn-kKH0e0QJOHXi7FjLJiyNJG875dgpyM>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id BF1173280068;
 Tue, 25 Feb 2020 04:54:34 -0500 (EST)
Date: Tue, 25 Feb 2020 10:54:33 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Stefan Wahren <stefan.wahren@i2se.com>
Subject: Re: [PATCH 16/89] clk: bcm: rpi: Add clock id to data
Message-ID: <20200225095433.tyxamibqyrgw5355@gilmour.lan>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
 <3028e04887c7b8a6ffc150c016aa63281461b434.1582533919.git-series.maxime@cerno.tech>
 <67855a10-f7cb-b6b3-7b9f-d9c9baa5f105@i2se.com>
MIME-Version: 1.0
In-Reply-To: <67855a10-f7cb-b6b3-7b9f-d9c9baa5f105@i2se.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_015448_766247_8CA395F0 
X-CRM114-Status: GOOD (  17.60  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.17 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org, Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Phil Elwell <phil@raspberrypi.com>, Eric Anholt <eric@anholt.net>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: multipart/mixed; boundary="===============3228783372563722378=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3228783372563722378==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="dyrskase4qcevtmb"
Content-Disposition: inline


--dyrskase4qcevtmb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Stefan,

On Mon, Feb 24, 2020 at 08:25:46PM +0100, Stefan Wahren wrote:
> Hi Maxime,
>
> Am 24.02.20 um 10:06 schrieb Maxime Ripard:
> > The driver has really only supported one clock so far and has hardcoded the
> > ID used in communications with the firmware in all the functions
> > implementing the clock framework hooks. Let's store that in the clock data
> > structure so that we can support more clocks later on.
>
> thank you for this series. I looked through it but i couldn't find an
> explanation why we need to expose firmware clocks via DT instead of
> extending clk-bcm2835. The whole pllb / clk-raspberrypi stuff was an
> exception to get cpufreq working. I prefer to keep it an exception.

Thanks for pointing this out, I indeed forgot to address it in my
cover letter or my commit log.

I'm not quite sure what the situation was with the previous
RaspberryPi, but the RPi4 firmware does a bunch of things under the
hood to make sure that everything works as expected:

 - The HSM (and V3D) clocks will be reparented to multiple PLLs
   depending on the rate being asked for.
 - Still depending on the rate, the firmware will adjust the voltage
   of the various PLLs.
 - Depending on the temperature of the CPU and GPU, the firmware will
   change the rate of clocks to throttle in case of the cores
   overheating, with all the fallout that might happen to clocks
   deriving from it.
 - No matter what we choose to do in Linux, this will happen so
   whether or not we want to do it, so doing it behind the firmware's
   back (or the firmware doing it behind Linux's back) will only
   result in troubles, with voltages too low, or the firmware trying
   to access the same register at the same time than the Linux driver
   would, etc.

So all in all, it just seems much easier and safer to use the firmware
clocks.

Maxime

--dyrskase4qcevtmb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXlTu2QAKCRDj7w1vZxhR
xRbDAQDg9duHVr6F1bLDyXu+fLq7M8EsNZkJLMHJvpIZct0OlgD/dqxz9PtiJncr
wQ4ig9zsvApmBo3OuJBAcmZ7CXYSLQA=
=nXkx
-----END PGP SIGNATURE-----

--dyrskase4qcevtmb--


--===============3228783372563722378==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3228783372563722378==--

