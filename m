Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E82A711E228
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 11:39:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=V6HkScj8JHW07xeH9NsGcIoLUdSDNENMQmiQl7ekhG0=; b=XJClTaDxtS48m07icfbnj0wKs
	XJkbJUnmLtCzX9db8vFLWx1KRZkgG+Fp7QNbb6HOd1tdRho5hvfKuqJtZXSzM6Msq4QBZSeaP7ki7
	JBrYTdbFG/eR8z34T+z9G4W6UdBMzZG1mtvR/H9fIUiVD8RUraHXHLOSHGY9kd12upotfvWfztjTr
	TczNauiknksrmDLKm/1Gr1EYXn0EAeNMyJtcUPOQbIe83wwSxCUa/OeiEqzR65XGMtSSrEGDo0nxS
	F8eNfJ9OYQFvnD2hRFwzudMPGeOD1gf4aql3WLb0ltsyVkeYxeYDk7wz4UeyVC4G4XoxhJg2trf7E
	itbZX5xMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifiLr-00024Q-Pt; Fri, 13 Dec 2019 10:39:15 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifiLd-00022v-CD; Fri, 13 Dec 2019 10:39:05 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id C1DEE61CD;
 Fri, 13 Dec 2019 05:38:59 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Fri, 13 Dec 2019 05:38:59 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=OFLMYUJQRntH92DcW9hNVdTnxB5
 r5T3CVZUfgI5FQn4=; b=QHDINjIrZXXk5J6lmOgGbzCh2IXf4nTciC6rBLRgz3S
 xcO6T9oDfo1sYHp67eyywjFsZ5WfvjxlGpmDdYK5DC2KAis1UXcaMtH39Qp+tcuN
 5NS8cCQ/njpLfm9Cxu+Krc51Gh/wS44nLWYgP1kODjWFOy4+MxAwFgEwbThTR9pk
 mAl7eclxSC6p7DGQnLFuf5oFthQwN6ReZ7kRu12NpOmkxyzPBYWRCQuqQw5j3cva
 jmmKUjA3cQzrmHUhHga2m5BQT6/fmISIq2kiE8fBMboi+yV6X7GOP4N016Y2sEew
 ehjnFRFDYkLE4aFm8fU8Rz1aK3yvYSLXF4maTcw0Ueg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=OFLMYU
 JQRntH92DcW9hNVdTnxB5r5T3CVZUfgI5FQn4=; b=asgqDt7uZu8BOxSsEa2v7T
 JowPq8yCUHb/3S8UgYd2Jc7Z/VYlcZH+4UXCrZ5646cbBVlwchr+LFC2cklJ/58f
 XXjE+V22ypLhcIpAa9LueqzwyGka/+Ylp1SwQC9R3R7pIEUhEZa8nTLCFEryGM50
 od7QCkHqXHS1YrRHcUlH0BZIVihD9DImQS9KJz6AIx/BrrKnVTfwdXR0ocPIPE7V
 BKkkFIihbG18jsq6ZWk9jTv2t2rWryXQhT1zDsFMDV74FPWvJtVs4jvdQylxFvYL
 5QSKfriPmwzRICBLm8PaNLg/Bu2/AfC1wO907I3cBpUitatuCaSveEfzWmdWTxQw
 ==
X-ME-Sender: <xms:Q2rzXUhVUy5YAlSnFzgpAIJZKG_2lcDSc05oMDouc_VRV-p5Zk89mg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudelledgudekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuffhomhgrih
 hnpeguvghvihgtvghtrhgvvgdrohhrghdphhhurdgtohhmnecukfhppeeltddrkeelrdei
 kedrjeeinecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrth
 gvtghhnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:Q2rzXYYyZ0O9FoCwc8xMG2PhFHXIQTsSc1zcS9_eW6Fvu_SFYC4L1Q>
 <xmx:Q2rzXZ3pREFwehwkkWoV3OETw1uU9rouuYPqx_P7wJa18et7p-ABMw>
 <xmx:Q2rzXby8JQWmjYqMaOeEleqCSHWVVYW1BDkrQVMc0NOLhptBofYI8w>
 <xmx:Q2rzXaAOsx9D7wRCdl2gz9FaiP_phsSCYkneQd3QJHWsKDlEsA3wZw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id D794780063;
 Fri, 13 Dec 2019 05:38:58 -0500 (EST)
Date: Fri, 13 Dec 2019 11:38:56 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Jian Hu <jian.hu@amlogic.com>
Subject: Re: [PATCH v4 1/6] dt-bindings: clock: meson: add A1 PLL clock
 controller bindings
Message-ID: <20191213103856.qo7vlnuk4ajz3vq5@gilmour.lan>
References: <20191206074052.15557-1-jian.hu@amlogic.com>
 <20191206074052.15557-2-jian.hu@amlogic.com>
MIME-Version: 1.0
In-Reply-To: <20191206074052.15557-2-jian.hu@amlogic.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_023901_554620_1AA2F1AE 
X-CRM114-Status: GOOD (  14.41  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Rob Herring <robh@kernel.org>, Victor Wan <victor.wan@amlogic.com>,
 Jianxin Pan <jianxin.pan@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, devicetree@vger.kernel.org,
 Qiufang Dai <qiufang.dai@amlogic.com>, Chandle Zou <chandle.zou@amlogic.com>,
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: multipart/mixed; boundary="===============0338730508100016888=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0338730508100016888==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rosr3cxhl5siv7sy"
Content-Disposition: inline


--rosr3cxhl5siv7sy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Fri, Dec 06, 2019 at 03:40:47PM +0800, Jian Hu wrote:
> Add the documentation to support Amlogic A1 PLL clock driver,
> and add A1 PLL clock controller bindings.
>
> Signed-off-by: Jian Hu <jian.hu@amlogic.com>
> ---
>  .../bindings/clock/amlogic,a1-pll-clkc.yaml   | 59 +++++++++++++++++++
>  include/dt-bindings/clock/a1-pll-clkc.h       | 16 +++++
>  2 files changed, 75 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/amlogic,a1-pll-clkc.yaml
>  create mode 100644 include/dt-bindings/clock/a1-pll-clkc.h
>
> diff --git a/Documentation/devicetree/bindings/clock/amlogic,a1-pll-clkc.yaml b/Documentation/devicetree/bindings/clock/amlogic,a1-pll-clkc.yaml
> new file mode 100644
> index 000000000000..7feeef5abf1b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/amlogic,a1-pll-clkc.yaml
> @@ -0,0 +1,59 @@
> +/* SPDX-License-Identifier: (GPL-2.0+ OR MIT) */
> +/*
> + * Copyright (c) 2019 Amlogic, Inc. All rights reserved.
> + */
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/clock/amlogic,a1-pll-clkc.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Amlogic Meson A/C serials PLL Clock Control Unit Device Tree Bindings
> +
> +maintainers:
> +  - Neil Armstrong <narmstrong@baylibre.com>
> +  - Jerome Brunet <jbrunet@baylibre.com>
> +  - Jian Hu <jian.hu@jian.hu.com>
> +
> +properties:
> +  compatible:
> +    - enum:
> +        - amlogic,a1-pll-clkc

I'm not sure this works, compatible shouldn't contain a list.

You can write this like:
compatible:
  const: amlogic,a1-pll-clkc

> +  "#clock-cells":
> +    const: 1
> +
> +  reg:
> +    maxItems: 1
> +
> +clocks:
> +  minItems: 2
> +  maxItems: 2

This is redundant, it will be added automatically by the tools ...

> +  items:
> +   - description: Input xtal_fixpll
> +   - description: Input xtal_hifipll

... When you have a list of items :)

> +
> +clock-names:
> +  minItems: 2
> +  maxItems: 2
> +  items:
> +     - const: xtal_fixpll
> +     - const: xtal_hifipll

Same story here

Maxime

--rosr3cxhl5siv7sy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXfNqQAAKCRDj7w1vZxhR
xd/wAQDsoznX44ibe0uCLaFPCOdrFkUP48DCrvyPmdP3KkeSoAEAqcgJwk/1XeqC
famgLadEPF6JXGccjcYncc1mLjCARA0=
=lykG
-----END PGP SIGNATURE-----

--rosr3cxhl5siv7sy--


--===============0338730508100016888==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0338730508100016888==--

