Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F06A1BFF76
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 17:02:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qwDgCYb/LWI+Z8L3zj1ZPd1Jj5IKfpy6T/YtClD5iXI=; b=L1KbZputjE198r/H9p4VyjEmw
	Ag2w2zgjhFMdFUWLWFQkTdFSQqupNjiZeWljQcOPn9WdKXBOd76gr2BjevXncX6GuLOV7BT+6yzAU
	kQppKI3HhjJYIH55iaFQqxpj16s7Hbh6ojq64Rx8doc2TCDG4SIqDZqfAm8uSeuceiNJEYK7OWb9N
	vqScCWNrUmgtTew6voZ/ibwykk/sSjh3K2qYdX1uZz00Mi+3WbEa+pcWlNa7H+B7IjOsoKUg9LgiV
	JxNV+e579+Ysipd7D9YLfiK5GnniJpKi+N80YBUFk8XUFmaS9PrjHqaK2mXIQl4htDKimPAtq/isf
	aExsdXjfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUAi3-0003kK-Fj; Thu, 30 Apr 2020 15:02:43 +0000
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUAgL-0003Q9-Ua
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 15:00:59 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id B10A78D5;
 Thu, 30 Apr 2020 11:00:50 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Thu, 30 Apr 2020 11:00:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=wL1V4tEUZLHoYkqrxr+Oa2YFwHa
 SxUnLHe2fYo122cQ=; b=eRjy/X/c9rApVN5yi3uYKaqPzwMsOtlHhuAPrrF9B0i
 iQHRl9Hq3IoeKZnDpKXdUVukJFX4edjbAyw+PrWeL72xFgDS3d0VnDgD8vRomIHk
 jHqHPb9GspYzXbr3/BFZykLjhgF85nlTBjs5l/y18Gw6PKaH2vp9kZCOjHZk+J/f
 R9980fuYOFWW9Bm7XzlDnGQn3k/8or+kEj/WABQZmjjPRSbrXCjAgvySy5eSIc51
 9roQF9ZR8AUC8j3NgSFrwg4dVBRFMGY9R5Qw8aC91OEv6jk3GTl0K8FqbtBmf/LF
 uijbza0qqx+UuXw3zUf6xhLY0I9rgdgKyePp0M2VI7Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=wL1V4t
 EUZLHoYkqrxr+Oa2YFwHaSxUnLHe2fYo122cQ=; b=F0Q4+cQNnzFq6/khK4e0qg
 /uk03HpDnjPjU69ImFsyOKvOUS5AT/EC3QOa+tZYvOBm3mp4t+wx9z4gzvDwl2LQ
 gZJJvJAopHBtdg+gkElykoUiHQpX2C7uJPicjRck/hinYcfmpCGGUHEx+peQabh2
 ZwAZ0kC60GiGdkbZkylblzzI/40ka8SI7jPpf0VkUv0MnhTn8+BwSDzfXJKl14fO
 Cnj5XVcE26Y/kPKjfgusmQnp0p/q0eEao12kMqXGmYlCmHe+4Ngr4vtPMC0pluxx
 HpscKjJZMHw/U/birRicLdmQXrbBku75D2qVzyBDRXf/dbQxdRyhLXgr3AFzyE2Q
 ==
X-ME-Sender: <xms:IOiqXstmmURRV0ZP7DmZQjTMi5sQQs2YJOKJg-9cVB14fX8rdv6YqQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrieehgdekfecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
 gvrhhnpeelkeeghefhuddtleejgfeljeffheffgfeijefhgfeufefhtdevteegheeiheeg
 udenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurf
 grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:IeiqXgSZ82gBjRU5ofAh50ol90uhIKkhV4SvCizrBlbVQHMBUTyJaw>
 <xmx:IeiqXo-y_KKfB6E-DGBL2WXPZ-FyCk90DGsGXLiFLt0W3Zdalko_ZA>
 <xmx:IeiqXs_b7h9AdXlQrkqHgOKF51RQ1HbbJQ_Xx1EGnyKu71VSFPy1lg>
 <xmx:IuiqXmZ0KdB4UONcdqNrdb_ratIO2QL61zscAKDpLU2RJwAOtLiPQw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id B2E543065F2B;
 Thu, 30 Apr 2020 11:00:48 -0400 (EDT)
Date: Thu, 30 Apr 2020 17:00:46 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Priit Laes <plaes@plaes.org>
Subject: Re: [PATCH v3 4/6] dt-bindings: net: sun7i-gmac: Add syscon support
Message-ID: <20200430150046.theqniqcrfjiokyo@gilmour.lan>
References: <20200430115702.5768-1-plaes@plaes.org>
 <20200430115702.5768-5-plaes@plaes.org>
MIME-Version: 1.0
In-Reply-To: <20200430115702.5768-5-plaes@plaes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_080058_035139_92C6E5E4 
X-CRM114-Status: GOOD (  13.74  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============9071058438554016447=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============9071058438554016447==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="efw2ihuaxv6irv3b"
Content-Disposition: inline


--efw2ihuaxv6irv3b
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 30, 2020 at 02:57:00PM +0300, Priit Laes wrote:
> Now that driver supports syscon-based regmap access, document also the
> devicetree binding.
>=20
> Signed-off-by: Priit Laes <plaes@plaes.org>
> ---
>  .../bindings/net/allwinner,sun7i-a20-gmac.yaml    | 15 +++++++++++++--
>  1 file changed, 13 insertions(+), 2 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gm=
ac.yaml b/Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.ya=
ml
> index 703d0d886884..c41d7c598c19 100644
> --- a/Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.yaml
> +++ b/Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.yaml
> @@ -29,17 +29,26 @@ properties:
>    clocks:
>      items:
>        - description: GMAC main clock
> +
> +      # Deprecated
>        - description: TX clock
> =20
>    clock-names:
>      items:
>        - const: stmmaceth
> +
> +      # Deprecated
>        - const: allwinner_gmac_tx

That would be deprecated: true

Also, you still require to have two clocks here?

> =20
>    phy-supply:
>      description:
>        PHY regulator
> =20
> +  syscon:
> +    $ref: /schemas/types.yaml#definitions/phandle
> +    description:
> +      Phandle to the device containing the GMAC clock register
> +
>  required:
>    - compatible
>    - reg
> @@ -48,6 +57,7 @@ required:
>    - clocks
>    - clock-names
>    - phy-mode
> +  - syscon

You can't do that though, this changes the binding in a non-backward compat=
ible
way

I guess you could add an if clause to require it if clocks has a single mem=
ber.

Maxime

--efw2ihuaxv6irv3b
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXqroHgAKCRDj7w1vZxhR
xaUUAP9VjkAn7iLXVy4t1HqW05/RoWbJVdFH3BGNDFaVLw0YZAD/Zj1MU1dV2h5E
VoTak9i1lQOKrH5HLCG+yUEjfZKZCQU=
=aG3C
-----END PGP SIGNATURE-----

--efw2ihuaxv6irv3b--


--===============9071058438554016447==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============9071058438554016447==--

