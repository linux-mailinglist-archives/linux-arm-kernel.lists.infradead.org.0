Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 412081707AD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 19:27:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4nu5WebUSHVhu2HMXVv+mASSgXt976X7cxHd5kTu0+Y=; b=SC/78QPYhlAC9l/AMR4Qss3y6
	A8F0nmrdWnqtkrZqBsjt7bSskKAI90p+OOEf3R5QyHufAB1b5xD5W8o9jKBecY0inHVlZ3bIah8px
	Ci1O2MibBS1lb0Od9f8FmGJ+ZPJ1kSvkke2VHUktmjrreDFLPNo8yQES3tlJ99t6PbfNeea+kaK/i
	5UvW4b+sVuUrycWNXcjPGgSRlxXrIkM8oI+qIWmV+KoR3eC00VJ/DZMFSGwlzOb5+pMDBHF1FSrFf
	H56uucUJN/pXEPEtjJZlpoCJF3hvCeqjbTTHRaJBXqI/ypzUZcyt4xNBDGhIA5ERL0bCGnIQmCZrz
	PtDk8abkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j71Oe-0007vy-0P; Wed, 26 Feb 2020 18:27:00 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j71OM-0007rw-Vq
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 18:26:44 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 173AE632B;
 Wed, 26 Feb 2020 13:26:39 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Wed, 26 Feb 2020 13:26:39 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=ZbZ/0vhYA4XlNPugmzBODvVTf7d
 FFmG6XFvRhLGolH0=; b=yus4oUi+lbkU/lwNVE6TDX8ieDC9TVA8FpmVnBLt1P+
 OsTic7vy/dVgroLf0b7OAAw/3lYFI0JZLxyXKu7pe7jy9a53tbxeLHS7ofYXZjSj
 bqC6ACh/4OIDfevHP8hALpBVaOXeOodHQlJ7TtAl4R1XR+ctVYlOHUyqMQybD3km
 2qTds6K4j9nSiE76euziI+tFHfyoTd8wnxd/g51L7zaW6GkKwDB1AHwpuUcd/AGJ
 fbHVmvHR1YqhILxII+4SAXQx8DGJ4YWAtWZETJ6Aqfvq2nhqp4wESGt1DRyKbJpC
 FT1FCadtbI0+s/wv69D78uhBxlYwwNMQnMdtNXNoUcw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=ZbZ/0v
 hYA4XlNPugmzBODvVTf7dFFmG6XFvRhLGolH0=; b=DX+HCmNKsFq4u4w+m8e8a2
 pWcir14pq4oC4O5Ka5wRR++NEUXNyD3FecpR2Sk78ACaYzQWA4prgCw1rZcfPatq
 F+y/Ys1XbTvny6eD1G8ekbIiIMjgHc9TrywQp0IR6xmYbPnkCnF/7BeXy6rJ7vpN
 kWnkTTqFmnetTcuPDp1jMC4gvLcGDC6N5mgRKgAGHdIU0p22r5NhgZrfQ3Z0DMSq
 SP+WF8rW1mSXjISjNgbDOQPU0PczS78zlX5+XbAZwyYM8v+UrekV0/fJcr7pMtg/
 kZEelN1/g+jwW9KBCXHO8vzxHspT2TnFZ4UVeRyjnFUtzy4AQriw/ECN8pz/NKmg
 ==
X-ME-Sender: <xms:XrhWXuygDzA1L9tYgfTFHqWYh75TPmxGRloq7x-cbEAWZ7S0uOeoKA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrleeggdduudegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuffhomhgrih
 hnpeguvghvihgtvghtrhgvvgdrohhrghenucfkphepledtrdekledrieekrdejieenucev
 lhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvg
 estggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:XrhWXg9eBwWqeIXp8Y3uxxVTcs-afyrSok5ktvFnYGwfFVzhpLS4RQ>
 <xmx:XrhWXkzbJlwj-TnoOTsGG_9OEsxcbb1ul6fLXUFBP_6Yrb-VYyrE_w>
 <xmx:XrhWXiv24Wo3K9LfBsgCj6CvBrni9YkKZ3BHJDEyK_1Oo4faKGmzRw>
 <xmx:X7hWXpY3l0pvbtwJdS0Aa8_zxgH_ji3YUaMVf-HyXXUiCrPj7Qiaww>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 7A24E3280065;
 Wed, 26 Feb 2020 13:26:38 -0500 (EST)
Date: Wed, 26 Feb 2020 19:26:37 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH 08/13] dt-bindings: phy: Convert Calxeda ComboPHY binding
 to json-schema
Message-ID: <20200226182637.npnurwcexvpgwmvo@gilmour.lan>
References: <20200226180901.89940-1-andre.przywara@arm.com>
 <20200226180901.89940-9-andre.przywara@arm.com>
MIME-Version: 1.0
In-Reply-To: <20200226180901.89940-9-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_102643_173556_8D4A86C5 
X-CRM114-Status: GOOD (  16.95  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.229 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Rob Herring <robh@kernel.org>, Jon Loeliger <jdl@jdl.com>,
 Mark Langsdorf <mlangsdo@redhat.com>, Robert Richter <rric@kernel.org>,
 devicetree@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, Eric Auger <eric.auger@redhat.com>,
 soc@kernel.org, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6635532291008136541=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6635532291008136541==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="le2zpoj6qhgy5u3q"
Content-Disposition: inline


--le2zpoj6qhgy5u3q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Feb 26, 2020 at 06:08:56PM +0000, Andre Przywara wrote:
> Convert the Calxeda ComboPHY binding to DT schema format using
> json-schema.
> There is no driver in the Linux kernel matching the compatible
> string, but the nodes are parsed by the SATA driver, which links to them
> using its port-phys property.
>
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  .../bindings/phy/calxeda-combophy.txt         | 17 -------
>  .../bindings/phy/calxeda-combophy.yaml        | 47 +++++++++++++++++++
>  2 files changed, 47 insertions(+), 17 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/phy/calxeda-combophy.txt
>  create mode 100644 Documentation/devicetree/bindings/phy/calxeda-combophy.yaml
>
> diff --git a/Documentation/devicetree/bindings/phy/calxeda-combophy.txt b/Documentation/devicetree/bindings/phy/calxeda-combophy.txt
> deleted file mode 100644
> index 6622bdb2e8bc..000000000000
> --- a/Documentation/devicetree/bindings/phy/calxeda-combophy.txt
> +++ /dev/null
> @@ -1,17 +0,0 @@
> -Calxeda Highbank Combination Phys for SATA
> -
> -Properties:
> -- compatible : Should be "calxeda,hb-combophy"
> -- #phy-cells: Should be 1.
> -- reg : Address and size for Combination Phy registers.
> -- phydev: device ID for programming the combophy.
> -
> -Example:
> -
> -	combophy5: combo-phy@fff5d000 {
> -		compatible = "calxeda,hb-combophy";
> -		#phy-cells = <1>;
> -		reg = <0xfff5d000 0x1000>;
> -		phydev = <31>;
> -	};
> -
> diff --git a/Documentation/devicetree/bindings/phy/calxeda-combophy.yaml b/Documentation/devicetree/bindings/phy/calxeda-combophy.yaml
> new file mode 100644
> index 000000000000..2ef68b95fae1
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/calxeda-combophy.yaml
> @@ -0,0 +1,47 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/calxeda-combophy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Calxeda Highbank Combination PHYs binding for SATA
> +
> +description: |
> +  The Calxeda Combination PHYs connect the SoC to the internal fabric
> +  and to SATA connectors. The PHYs support multiple protocols (SATA,
> +  SGMII, PCIe) and can be assigned to different devices (SATA or XGMAC
> +  controller).
> +  Programming the PHYs is typically handled by those device drivers,
> +  not by a dedicated PHY driver.
> +
> +maintainers:
> +  - Andre Przywara <andre.przywara@arm.com>
> +
> +properties:
> +  compatible:
> +    const: calxeda,hb-combophy
> +
> +  '#phy-cells':
> +    const: 1
> +
> +  reg:
> +    maxItems: 1
> +
> +  phydev:
> +    description: device ID for programming the combophy.
> +    $ref: /schemas/types.yaml#/definitions/uint32

I guess you can limit the range here, or does it cover the whole u32
range?

Maxime

--le2zpoj6qhgy5u3q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXla4XQAKCRDj7w1vZxhR
xcr0AP9Go6W67LY8iVw9+n5AaBx1stq75hwfJ7JhT21EiH7KngD+MDzNzsxx0KyP
E4dL+rbvbuh34GSh5uWm0X/T3hSjoQk=
=eJJp
-----END PGP SIGNATURE-----

--le2zpoj6qhgy5u3q--


--===============6635532291008136541==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6635532291008136541==--

