Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A95A1707AC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 19:26:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FNnXaCLkUraqulI7kEjjIPuirIkUe9Cl9IQ03RAluK8=; b=uoOBjU/i2gjSInpH99zatTbMT
	0eU3htc0H6Xp15FXm1zzvDqNELoaBBGAxuRHUeAjrcoIHaL+MwSakaguOCBTTSYnW7v8Fv+8ZhKqx
	RsPL4839wPxL44cpmLvxDRLCHOri5KV4vnWWPswCyPV1lHyOdnvPkE0RHBOERyWxHaBh7L9hp9yIo
	pcYhbxfSj9NiJ1boBtTxFCUQ1pNBGXCto1mFgkQiFi2/TvTN9/IVZlsF1bcTYTxpVoXxKFBReydzd
	CI7YcyleuNNfgX1fiaGcQO5l9PeoOgVg02F4Dz026eAoaicW3IkitOzJGQ2hixcUvzzRKaU2QBFVW
	nKVoPoN/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j71OL-0007ft-Q8; Wed, 26 Feb 2020 18:26:41 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j71Nq-0007Np-IB
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 18:26:12 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 132AC635E;
 Wed, 26 Feb 2020 13:26:09 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Wed, 26 Feb 2020 13:26:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=wnBprZHEG6nDIJqLZgAkT38k3aJ
 pvMwHLopX0q+7CUg=; b=n/kISboxwF8u4JH1yfzpU3qPWpiQy3X9QdS7nOC0kcW
 nsaGntcXO9cW+32GWIZEKVE9EgoLdC41AIy22JSq6wW5oET0Zz4hT0J5JPk81gmr
 D3Q1Lsep5g5h5C/0Cc+TWrVZ88KkYqczgvGhCW5QXdJAS1bMPB15s+gBS0SA4vv9
 NY0GK85Yu7FkaEXP+nD2EORa69DIZdMvKSDJjIOrg41T428tUfanfC0Ol/e2XbGQ
 x0hbvJ4CI+eyu8Gl8QaCcf9fAUYzrgjdNcyog3uAQKBoXY3fJjhSI1ywSvVGapeq
 4eDCDY/q5tQMHdxS04AWObHQBsLqVb0OrT5mkRbg8VQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=wnBprZ
 HEG6nDIJqLZgAkT38k3aJpvMwHLopX0q+7CUg=; b=vcamGQh3L/P2Oyds4b0Pn7
 90RlsUqvPBMPLrPPI9y0i3XTF0iSHW5HrgaE9JT79QW2GnFQGrmBHSIRoap9e7Wu
 fNhMWgjxbBnNj3QoefB1hv/xN1HywCo6wTPs7ML5Kig0l9iH41Vk5q8CGJ8tIlEq
 2+b0LtAHoCAbMj8pPxVuDPWbTwBWCRiEJqNyLEEE9G67WYuoQ5slVQk2b5nkl0Hu
 ccLWyAjLkiKLpgsEgyQVghvxLyhGx8DlyLwwNY8C4EsMBIF0N86wfIamPOvqed6n
 mNAF4r95Bx3WW9YhleFj+DjWsaSyXrUz+hoMWKEt2dNxAQqWunOEjTc72anaRLdA
 ==
X-ME-Sender: <xms:QLhWXji2o-u8iuK74SngV0QTBOImU4Hr5otLSF9ebnnyjXTWdir2LA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrleeggdduudegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuffhomhgrih
 hnpeguvghvihgtvghtrhgvvgdrohhrghenucfkphepledtrdekledrieekrdejieenucev
 lhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvg
 estggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:QLhWXtbcikz4tBc8w7mElocDtfPbINR723WthFGoElvYmaeRgnJ_mg>
 <xmx:QLhWXvE_sldPnxbCWdr_sLdlUI2n0LN9QaCxpd65iT7VIGf_uDhKxw>
 <xmx:QLhWXj9CTg57QYLVhu5LBnCQpZRZ7iDposufgz85lYMhfEVkQu5rBg>
 <xmx:QbhWXjyNud6zg69_zGzOxBNkOb0gPNoqcDhScX-bZTs_x-rm4ZNLQg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id A53BB3060FD3;
 Wed, 26 Feb 2020 13:26:08 -0500 (EST)
Date: Wed, 26 Feb 2020 19:26:07 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH 07/13] dt-bindings: net: Convert Calxeda Ethernet binding
 to json-schema
Message-ID: <20200226182607.zkmzja2g7smygbm6@gilmour.lan>
References: <20200226180901.89940-1-andre.przywara@arm.com>
 <20200226180901.89940-8-andre.przywara@arm.com>
MIME-Version: 1.0
In-Reply-To: <20200226180901.89940-8-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_102610_767543_F14CBFC5 
X-CRM114-Status: GOOD (  18.20  )
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
Content-Type: multipart/mixed; boundary="===============5884175191523212104=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5884175191523212104==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="vri7camk7hrxk6l3"
Content-Disposition: inline


--vri7camk7hrxk6l3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Feb 26, 2020 at 06:08:55PM +0000, Andre Przywara wrote:
> Convert the Calxeda XGMAC Ethernet device binding to DT schema format
> using json-schema.
>
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  .../devicetree/bindings/net/calxeda-xgmac.txt | 18 -------
>  .../bindings/net/calxeda-xgmac.yaml           | 47 +++++++++++++++++++
>  2 files changed, 47 insertions(+), 18 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/net/calxeda-xgmac.txt
>  create mode 100644 Documentation/devicetree/bindings/net/calxeda-xgmac.yaml
>
> diff --git a/Documentation/devicetree/bindings/net/calxeda-xgmac.txt b/Documentation/devicetree/bindings/net/calxeda-xgmac.txt
> deleted file mode 100644
> index c8ae996bd8f2..000000000000
> --- a/Documentation/devicetree/bindings/net/calxeda-xgmac.txt
> +++ /dev/null
> @@ -1,18 +0,0 @@
> -* Calxeda Highbank 10Gb XGMAC Ethernet
> -
> -Required properties:
> -- compatible : Should be "calxeda,hb-xgmac"
> -- reg : Address and length of the register set for the device
> -- interrupts : Should contain 3 xgmac interrupts. The 1st is main interrupt.
> -  The 2nd is pwr mgt interrupt. The 3rd is low power state interrupt.
> -
> -Optional properties:
> -- dma-coherent      : Present if dma operations are coherent
> -
> -Example:
> -
> -ethernet@fff50000 {
> -        compatible = "calxeda,hb-xgmac";
> -        reg = <0xfff50000 0x1000>;
> -        interrupts = <0 77 4  0 78 4  0 79 4>;
> -};
> diff --git a/Documentation/devicetree/bindings/net/calxeda-xgmac.yaml b/Documentation/devicetree/bindings/net/calxeda-xgmac.yaml
> new file mode 100644
> index 000000000000..77b8be9ebb20
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/calxeda-xgmac.yaml
> @@ -0,0 +1,47 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/net/calxeda-xgmac.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Calxeda Highbank 10Gb XGMAC Ethernet controller
> +
> +description: |
> +  The Calxeda XGMAC Ethernet controllers are directly connected to the
> +  internal machine "network fabric", which is set up, initialised and
> +  managed by the firmware. So there are no PHY properties in this
> +  binding. Switches in the fabric take care of routing and mapping the
> +  traffic to external network ports.
> +
> +maintainers:
> +  - Andre Przywara <andre.przywara@arm.com>
> +
> +properties:
> +  compatible:
> +    const: calxeda,hb-xgmac
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    description: |
> +      Can point to at most 3 xgmac interrupts. The 1st one is the main
> +      interrupt, the 2nd one is used for power management. The optional
> +      3rd one is the low power state interrupt.
> +    minItems: 2
> +    maxItems: 3
> +
> +  dma-coherent: true
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts

You probably want to add additionalProperties: false here?

--vri7camk7hrxk6l3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXla4PwAKCRDj7w1vZxhR
xW3oAP40y2RNRTvaMenRbqN/BK0cUt8YACLBncKsVhHXYtJeOwEApqwjz22BM18a
PRZ573KMDzG+AZHOpYXK6uUYAPIt/gc=
=qlWV
-----END PGP SIGNATURE-----

--vri7camk7hrxk6l3--


--===============5884175191523212104==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5884175191523212104==--

