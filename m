Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 770801A0A55
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 11:42:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+BApj177wTNJIUkf2Yx4iwY/eW0ZqxiIN4uqEtlcZF4=; b=JIwD9Orwgq36+42Ydz2WgHhzo
	vi5fmyMFC0N94/TOLjq5DdPlGP3GXDTNuK2n8Ao0RxjKAikj6oCA51fxbb0wta3UeawG0t/teVUm8
	xG0lF7RJqgvehSAKZDYMBiV/nafFGKSZmOZehKaxEOZFXM6Rx/zuWIMqpgxbyCxzs54USrQorf+kG
	1E3nuNzGni1IxMpx4k/zhVmm0P9ELFIaszYrpuutcuF1Znzq1ci6x1r0MSNOs7NWsaEX4KmYNRWTX
	YuFi6u89VI1V5tuv2pXElJwk3eUEG416kHKEsNdU+V0KWi7kSKsns4oE/NJgKIckqwrRCrG/ca0ZA
	O3RX/RM7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLkkI-0004JN-Ls; Tue, 07 Apr 2020 09:42:14 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLkkA-0004IT-NX
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 09:42:08 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 8F18B580432;
 Tue,  7 Apr 2020 05:42:02 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Tue, 07 Apr 2020 05:42:02 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=CCbcFFDvgPRSxCF+8kZaaLO/1MA
 76diBRU97kO0B2Q8=; b=T5/TfczrwzeOgw6HFlUxIdyoSA/V0HhD7PYXgy/9TQ4
 ikbfway1Ve6eAIDB1YpuKG8qj8p0bt3ImtiS5pVw3wXumJRHeiWAuFM+0UCB+KNf
 jNkB4xLghBQLbrYfXDxqscKi7+Zd5C0e8otfoRQsR9J83FuaTZ51porehp1vuEIx
 27FTOX4iAFXHwRRQKZFXxlJhg/FVD0RcXh9vmzfub5Yc/D2TLRdWM92xAgXJWFre
 g5AooSA85ZbUkd3R0yR/wB16lhCJCscJRIUxoos4gqOUk7PFRjpf7A0VAr3/6Jij
 Vo/9sYx3ICBSkKgA4qG+jSXhS/rz7mt4yoyei538yIg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=CCbcFF
 DvgPRSxCF+8kZaaLO/1MA76diBRU97kO0B2Q8=; b=D8wY+GD4/i+PHJodUNJO57
 8imtIXeZcubk9ZyX7MWTkFSIlwKtdy9pezqcnMwb9f+Q/UWIgV8aqvjJ+kkzEv7V
 /dvqFuDOa3o5Gd1IoLrBvFUBc87+XSIyZAvpthaTuigqpH/wjPLycMqzY1/PmmPZ
 mnFMDp4yUSc8Ork+6KdpZr8Cj0kOc+b61fFDKWEbAjltSwPU9J4kder4tAu5bO7Q
 kuIXCEu23UEVOftL2fYnnHEvuPwT2z33SUQuJEjfJ3oZrfGQ6zJpnjUAwNJXDp4o
 AjKMMZjRqmnZ9oskDmQlGTyg5fRmjTa9AIqswuJJ4rQ6pPofwl+X4EQqzAeeZOoQ
 ==
X-ME-Sender: <xms:6UqMXrEESRaMA6LPL3tIrAKxumyafD9oInxTfyn0UYeMhbuq_F3qpg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudehgddulecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucffohhmrghinh
 epuggvvhhitggvthhrvggvrdhorhhgnecukfhppeeltddrkeelrdeikedrjeeinecuvehl
 uhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvse
 gtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:6UqMXjxTEDcTx1vL3tqsGbobBFxRNsbgWN30Nr0OrYnkWl2y1Vrdww>
 <xmx:6UqMXgps9meExFNY9FK8qVIHjUIRuKsKRFhApBpQRbNRfR8LRDGObA>
 <xmx:6UqMXtjiYQnYDtdnDJwlxdZOiIOoWsN6Bt76h6ENnjnYbJhLZR--ug>
 <xmx:6kqMXmjh6iiSCY83qIMll5ueTt-0nO1qmd6Z7Q-wNzHVP6hBGf0vIg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 19790328005A;
 Tue,  7 Apr 2020 05:42:01 -0400 (EDT)
Date: Tue, 7 Apr 2020 11:41:59 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Kamel Bouhara <kamel.bouhara@bootlin.com>
Subject: Re: [PATCH 2/3] Input: rotary-encoder-counter: add DT bindings
Message-ID: <20200407094159.xtbhtsxorvs2g22c@gilmour.lan>
References: <20200406155806.1295169-1-kamel.bouhara@bootlin.com>
 <20200406155806.1295169-3-kamel.bouhara@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20200406155806.1295169-3-kamel.bouhara@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_024207_178990_4C4BDF06 
X-CRM114-Status: GOOD (  23.35  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-input@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5029705540868326942=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5029705540868326942==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="japkdjzpcbcq3brx"
Content-Disposition: inline


--japkdjzpcbcq3brx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Kamel,

The prefix for device tree bindings is usually dt-bindings:
$framework: $title

So a title like "dt-bindings: input: Add a counter-based rotary
encoder binding" would be better.

On Mon, Apr 06, 2020 at 05:58:05PM +0200, Kamel Bouhara wrote:
> Add dt binding for the counter variant of the rotary encoder driver.
>
> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> ---
>  .../input/rotary-encoder-counter.yaml         | 67 +++++++++++++++++++
>  1 file changed, 67 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/input/rotary-encoder-counter.yaml
>
> diff --git a/Documentation/devicetree/bindings/input/rotary-encoder-counter.yaml b/Documentation/devicetree/bindings/input/rotary-encoder-counter.yaml
> new file mode 100644
> index 000000000000..a59f7c1faf0c
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/input/rotary-encoder-counter.yaml
> @@ -0,0 +1,67 @@
> +# SPDX-License-Identifier: GPL-2.0

Bindings are usually used by other OS's, so you should consider
putting it under a more permissive license, usually that would be GPL2
and the BSD-2-Clause

> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/input/rotary-encoder-counter.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rotary Encoder Counter
> +
> +maintainers:
> +  - Kamel Bouhara <kamel.bouhara@bootlin.com>
> +
> +description:
> +  Registers a Rotary encoder connected through a counter device.

You shouldn't really describe the action here, but more what the
binding is about. The registration will not depend on the presence of
the node following that binding, but rather on whether or not the OS
that uses it has support for it.

> +properties:
> +  compatible:
> +    const: rotary-encoder-counter
> +
> +  counter:
> +    description: Phandle for the counter device providing rotary position.

This should have a type

> +  linux-axis:
> +    description: The input subsystem axis to map to this rotary encoder.
> +    type: boolean
> +
> +  qdec-mode:
> +    description: |
> +      Quadrature decoder function to set in the counter device.
> +      3: x1-PHA
> +      4: x1-PHB
> +      5: x2-PHA
> +      6: x2-PHB
> +      7: x4-PHA and PHB

That range (even though it's a bit odd) should be expressed through an
enum so that you can check that the values are actually within that
range.

> +  steps:
> +    description: Number of steps in a full turnaround of the encoder.

Muli-line strings should have either quotes around them, or a | or >
like you did for the description. | will keep the \n, > will make that
a single string.

This should also have a type

> +      Only relevant for absolute axis.

This should be expressed through a if / then clause, or a dependencies one

>                                         Defaults to 24 which is a typical
> +      value for such devices.

This should be expressed through a default property.

> +  relative-axis:
> +    description: Register a relative axis rather than an absolute one.
> +    type: boolean
> +
> +  rollover:
> +    description: Automatic rollover when the rotary value becomes greater
> +      than the specified steps or smaller than 0. For absolute axis only.
> +    type: boolean

Same story than steps for the dependency. Also, what is is the
behaviour when this property isn't set?

> +  poll-interval:
> +    description: Poll interval at which the position is read from the counter
> +      device (default 500ms).

It should have a type too, and a default property

> +
> +required:
> +  - compatible
> +  - counter
> +  - qdec-mode
> +
> +examples:
> +  - |
> +    rotary@0 {
> +        compatible = "rotary-encoder-counter";

A unit-address (the part after @) only makes sense for a node if
there's a matching reg property in the node. This will trigger a DTC
warning, so you should remove the @0

Maxime

--japkdjzpcbcq3brx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXoxK5wAKCRDj7w1vZxhR
xV5PAP9oleLNJ1AEhCCnvJCT4zm5frzWFncYL0ZW4bzrBCNAgQD/VfmXTyrdhPL8
UoL54zIDj9ggENLCwxMqk6jdw/++/wM=
=QF+N
-----END PGP SIGNATURE-----

--japkdjzpcbcq3brx--


--===============5029705540868326942==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5029705540868326942==--

