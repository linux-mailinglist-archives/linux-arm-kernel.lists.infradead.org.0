Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62F7719A6D2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 10:07:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dbsFF6qnjXG/QQez3n0+CWIi5l52xTNb9/KloqSba94=; b=fuYJszTRf0RAc48R6ujtzFOD5
	WeAT/k6/mfQcvzEcquvNsE4K70waBnPs8Miw3V/IbEqE0M3f3J2jHkA0K09rp6kP4UBWvZbwR8Oqs
	NmhcSaJMiWMewWwZjCJoP7g/FigCromPYXWzRp7ISDueEIlJ2GXI1TZY6fbjEuuKw6lSMQRjAyulY
	5vsTmetq4/83Ysg2AAd7FU/bGfaGdqjrN8cxWm4NlgxEG0rE6fu/wtQ65JGJH1CiUSQ0v1A5qdo10
	7fwmZxN+wGEkRZ7LgS5PyRcWNbcrnc2jCrndWFNHBbrlRxo2NTzKR8KQ6fFBaSMOkWklAZHywSxk6
	TeCNb/EOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJYPH-0002c3-Fh; Wed, 01 Apr 2020 08:07:27 +0000
Received: from out1-smtp.messagingengine.com ([66.111.4.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJYPA-0002b2-2b
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 08:07:22 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id E2CA65C00E9;
 Wed,  1 Apr 2020 04:07:14 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 01 Apr 2020 04:07:14 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=U3HCAcUKF+4c66Ou0occ9LnJ9Wv
 Y2iGisn3uD5htmxM=; b=SP8Uz1vciqkp36GeFFlYKm5l1CM5u6FW52ShX/5HesS
 Xz285oIrLNmML0H+fiTbXSl7K7rBbWpvjUtnTrua+SC+9zsij5R4WGNfKLFNyjMV
 fvQS79tXiPOe5g0ovgyuwgZuaCySGliBdOrYSdJjI5cC3G+PZo4ev1ZZv/oaOvtc
 5vclj4/19PwJosdDx3s0tV+pLSKCqwu/2HDkUj1YRiJglRupDfEV6jI7vlfXHg6B
 fzEr9QRnqVD/T9j3pKwH4WokVbC6ZvmXtAAKRPXnl69AcIZGeF+firlIUIw+ix7w
 j1yEq8MS9Y4LA10UZP+P7sEmJhEBkFdZw47AF87rVbw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=U3HCAc
 UKF+4c66Ou0occ9LnJ9WvY2iGisn3uD5htmxM=; b=g2ynUNoi+u1/rT/iuxTpd6
 TGYyqB1kHtAtI1Om1/l8EiaMbdBatD+0gsTdEQDmnGGmGVKNngLQSdGFcQg6LQtJ
 65ucXZJSW4F694KemOIKWEI1bh2MwsYfB3gkeWZVXR7D0beenMQv2VnAzoN1H1vW
 20OPP4RLRsz8TNV6W3Odtd1J2sggm/1bPvRYJAw5Goei8IVER5YiL3gPs/qbzI+q
 v2HB+UTQM8SSAscaMyN+6uH9FYgt4feiRy2nqmIZ5yAcYSI6u8jz34mlMPBBk/BC
 D5OcpKIb8p9h4CMMWygDCcJrfItPTzQ48p+7ZUJXgU00sV8i1Wc7xIphdI/dq4xA
 ==
X-ME-Sender: <xms:q0uEXveFL0TmZ44yoZ1LdFOMnYhr7b7siaObsJ12XDfWDqCLTADOqA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrtddvucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
 epfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhmvgcutfhi
 phgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuffhomhgrihhnpeguvg
 hvihgtvghtrhgvvgdrohhrghenucfkphepledtrdekledrieekrdejieenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrh
 hnohdrthgvtghh
X-ME-Proxy: <xmx:q0uEXlZ59TSToLe17Qqncknm6aKQApp9Zuirgx8jdOZV64JmmDbfhw>
 <xmx:q0uEXiBXb7P8Pyt2BI6LjG89adNT8k4_PRbAxtYyElXmBObVgIfIrg>
 <xmx:q0uEXgCOBraRlf-SR-5pbjQOgEEc7MxX3W4JsKhPogl12U3GjrdaUQ>
 <xmx:skuEXt0AyZkhqnukvpbd9P2rh_H7zwxwXzecpoQQoE6OGuIKHw_d0g>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 003A2328005A;
 Wed,  1 Apr 2020 04:07:06 -0400 (EDT)
Date: Wed, 1 Apr 2020 10:07:05 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Robert Foss <robert.foss@linaro.org>
Subject: Re: [PATCH v6 1/3] media: dt-bindings: ov8856: Document YAML bindings
Message-ID: <20200401080705.j4goeqcqhoswhx4u@gilmour.lan>
References: <20200331133346.372517-1-robert.foss@linaro.org>
 <20200331133346.372517-2-robert.foss@linaro.org>
MIME-Version: 1.0
In-Reply-To: <20200331133346.372517-2-robert.foss@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_010720_428169_049D8F6D 
X-CRM114-Status: GOOD (  20.50  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.25 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.25 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>, Sakari Ailus <sakari.ailus@iki.fi>,
 Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============2813110671823685157=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2813110671823685157==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="cyib43ljsdkuwwb5"
Content-Disposition: inline


--cyib43ljsdkuwwb5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Tue, Mar 31, 2020 at 03:33:44PM +0200, Robert Foss wrote:
> From: Dongchun Zhu <dongchun.zhu@mediatek.com>
>
> This patch adds documentation of device tree in YAML schema for the
> OV8856 CMOS image sensor.
>
> Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> Signed-off-by: Robert Foss <robert.foss@linaro.org>
> ---
>
> - Changes since v5:
>   * Add assigned-clocks and assigned-clock-rates
>   * robher: dt-schema errors
>
> - Changes since v4:
>   * Fabio: Change reset-gpio to GPIO_ACTIVE_LOW, explain in description
>   * Add clock-lanes property to example
>   * robher: Fix syntax error in devicetree example
>
> - Changes since v3:
>   * robher: Fix syntax error
>   * robher: Removed maxItems
>   * Fixes yaml 'make dt-binding-check' errors
>
> - Changes since v2:
>   Fixes comments from from Andy, Tomasz, Sakari, Rob.
>   * Convert text documentation to YAML schema.
>
> - Changes since v1:
>   Fixes comments from Sakari, Tomasz
>   * Add clock-frequency and link-frequencies in DT
>
>  .../devicetree/bindings/media/i2c/ov8856.yaml | 150 ++++++++++++++++++
>  MAINTAINERS                                   |   1 +
>  2 files changed, 151 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/i2c/ov8856.yaml
>
> diff --git a/Documentation/devicetree/bindings/media/i2c/ov8856.yaml b/Documentation/devicetree/bindings/media/i2c/ov8856.yaml
> new file mode 100644
> index 000000000000..beeddfbb8709
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/i2c/ov8856.yaml
> @@ -0,0 +1,150 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +# Copyright (c) 2019 MediaTek Inc.
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/i2c/ov8856.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Omnivision OV8856 CMOS Sensor Device Tree Bindings
> +
> +maintainers:
> +  - Ben Kao <ben.kao@intel.com>
> +  - Dongchun Zhu <dongchun.zhu@mediatek.com>
> +
> +description: |-
> +  The Omnivision OV8856 is a high performance, 1/4-inch, 8 megapixel, CMOS
> +  image sensor that delivers 3264x2448 at 30fps. It provides full-frame,
> +  sub-sampled, and windowed 10-bit MIPI images in various formats via the
> +  Serial Camera Control Bus (SCCB) interface. This chip is programmable
> +  through I2C and two-wire SCCB. The sensor output is available via CSI-2
> +  serial data output (up to 4-lane).
> +
> +properties:
> +  compatible:
> +    const: ovti,ov8856
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    description:
> +      Input clock for the sensor.
> +    items:
> +      - const: xvclk
> +
> +  clock-frequency:
> +    description:
> +      Frequency of the xvclk clock in Hertz.

We also had that discussion recently for another omnivision sensor
(ov5645 iirc), but what is clock-frequency useful for?

It seems that the sensor is passed in clocks, so if you need to
retrieve the clock rate you should use the clock API instead.

Looking at the driver, it looks like it first retrieves the clock, set
it to clock-frequency, and then checks that this is OV8856_XVCLK_19_2
(19.2 MHz).

The datasheet says that the sensor can have any frequency in the 6 -
27 MHz range, so this is a driver limitation and should be set in the
driver using the clock API, and you can always bail out if it doesn't
provide a rate that is not acceptable for the drivers assumption.

In any case, you don't need clock-frequency here...

> +  assigned-clocks:
> +    description:
> +      Input clock for the sensor.
> +
> +  assigned-clock-rates:
> +    description:
> +      Frequency of the xvclk clock in Hertz.

And you don't need assigned-clock-rates either.

Maxime

--cyib43ljsdkuwwb5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXoRLqAAKCRDj7w1vZxhR
xTZUAQD2jZuXcAGddgKgZVErUVHpj/2QR46aWWLx0qVUgCtlcQD/WJPvN3yt7iUv
JXfc3Ipii5CyHgWsqStgnqMYbiwUJQg=
=1zlr
-----END PGP SIGNATURE-----

--cyib43ljsdkuwwb5--


--===============2813110671823685157==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2813110671823685157==--

