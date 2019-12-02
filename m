Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65C9E10EFB5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 20:03:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+z8Gf5eKsuPIiFGiA+WoAd8ZTo+FknnCtWd0iUyNs6w=; b=X+1meC+Kl46oAdRBF9RLk9VjN
	tjysq3ZgyU9kcLFbkDMZiS5+m+7+g+S7Sqk9LkPA0usiXopkJVpu6jU5ymUkd7XmN95zMb/VmWL1A
	cMmZWATzkdJpQq+YF42jNI1pSCnxHUVvkXIZ2iw690wo9fnFyQGiyFXWsLVO7bUEfzm4/H1yz+gUg
	qEUtWQ1oKK0BuwOzGHD+AEhpg+SAQqMfLNDrIma5cBagTBa/V6J5KjNWhBENpw6e8dwTyqthW4Ixk
	d1mRuUvkdoVzjweVsCc3tzExtrzk2err6P0G/T7Zn7PAwhD+U06yuiypkQA0E3bXm00k76qYnm+ME
	9Ka7stJ6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibqyg-0003Mo-Up; Mon, 02 Dec 2019 19:03:22 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibqyZ-0003J8-Nc
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 19:03:17 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 3CEA622091;
 Mon,  2 Dec 2019 14:03:07 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 02 Dec 2019 14:03:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=2vsm1/M5oTih6PJrh0YiOplzSPP
 8P4CXH6c05UTxHWg=; b=emEElaLYMa7YTVxguo6O1JQpmULBWsQ8tCKQT40jEed
 DPonOo/EJ6Qo1PQXi5UAxjQskTDGQ5GcZcORZgPSP+HRUODnb8IDqmei41DKQBf6
 4y/coegy6oy00NC15tf7OlQQ4dII7GMjYHNOAT3GaDLCrJmNTIaFlaO/nVIkzZYM
 XPAbbTQNDjVMI+ne9NAA0HNSGZkQekZjC2EUIu/Amga3TEWWy3varfZM8SHrNSk+
 3EKyFIzhH/pMO+TrfLGrAXnOxPRUiDHrzOkkNfFgWpGbFAQibZjwwXuDkVIBRI0Y
 YVGVZaj/tTTrsHQ+UoSY1IP++1+e3GShPvYgKDpB3Dw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=2vsm1/
 M5oTih6PJrh0YiOplzSPP8P4CXH6c05UTxHWg=; b=QHVRb8JkbRYNbW6TLzImSt
 DOQGijgw3aC3Zpy8GqUfo1yKSSw1b+oHfP4gdGqKOTSGaDnTX9x781kaZcJUpQjO
 C+8g5XaBynieIHbdCYmYnCtYicO1mjiTjSGaMxW+2R7P7T6sJaL7nvCqEpeh3kYZ
 m7s0/RRU26C4tqUwdrssN4Mu4xBw4KIXlMhkwDY+LzXCqFyQxUGGIRLhjWWKpyUf
 lpWFBiFhu7K+pTnhb/YFxARY2mH/8LunmoFvrCcPFrIOxpNBxBIsLKfrs3Zqcvuz
 3y7ITE0e3wx2ng8i1hUu3vgNIkTm/zzVsA4yVXABcEQ7EJoT7IggH5LOV2M03Y8Q
 ==
X-ME-Sender: <xms:6F_lXUYkjCDp7aUKrGmmwCMNBFzeAw81dUTdzhzpM-SRt-tsprW0kQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudejhedguddvfecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihi
 mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucffohhmrg
 hinhepuggvvhhitggvthhrvggvrdhorhhgnecukfhppeeltddrkeelrdeikedrjeeinecu
 rfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghhnecuve
 hluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:6F_lXTpL74kHEYUIPLaioHXFibx3i96q0k402yCDBXM5ROBaIhsVFw>
 <xmx:6F_lXZ8QnB85PrZ_qdEYnJiVaVC6UNOeSKfljlDgusDL5BWPmB-Gcg>
 <xmx:6F_lXS_39O-3u8Iccr2W8i_mdIx6Ewy4ilp_bAldYeS6UUWdPo3c-w>
 <xmx:61_lXSCv4qsCFuTtwGjN70SkTnAe13F5ACWRy4uqnIVBvvXksPekhg>
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 2FC1A80064;
 Mon,  2 Dec 2019 14:03:04 -0500 (EST)
Date: Mon, 2 Dec 2019 20:03:02 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Hugo Grostabussiat <bonstra@bonstra.fr.eu.org>
Subject: Re: [PATCH v4 1/3] dt-bindings: net: bluetooth: add DT bindings for
 Realtek controllers
Message-ID: <20191202190302.5rtv3p6wkyol4y4b@gilmour.lan>
References: <20191130202314.142096-1-bonstra@bonstra.fr.eu.org>
 <20191130202314.142096-2-bonstra@bonstra.fr.eu.org>
MIME-Version: 1.0
In-Reply-To: <20191130202314.142096-2-bonstra@bonstra.fr.eu.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_110316_089055_B1D60266 
X-CRM114-Status: GOOD (  15.47  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Johan Hedberg <johan.hedberg@gmail.com>, Marcel Holtmann <marcel@holtmann.org>,
 linux-bluetooth@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2080973276547440385=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2080973276547440385==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qkf2aoim2t2545gg"
Content-Disposition: inline


--qkf2aoim2t2545gg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Sat, Nov 30, 2019 at 09:23:12PM +0100, Hugo Grostabussiat wrote:
> The rtl_bt driver already supports some Realtek controllers on ACPI
> platforms.
> This commit adds bindings for DT-only platforms.
>
> Signed-off-by: Hugo Grostabussiat <bonstra@bonstra.fr.eu.org>
> ---
>  .../bindings/net/realtek-bluetooth.yaml       | 52 +++++++++++++++++++
>  1 file changed, 52 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/net/realtek-bluetooth.yaml
>
> diff --git a/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml b/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml
> new file mode 100644
> index 000000000000..6b62e5132c90
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml
> @@ -0,0 +1,52 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/net/realtek-bluetooth.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Realtek Bluetooth controllers device tree bindings
> +
> +description: |
> +  Device tree bindings for serial attached Realtek Bluetooth controllers.
> +
> +maintainers:
> +  - Marcel Holtmann <marcel@holtmann.org>
> +  - Johan Hedberg <johan.hedberg@gmail.com>
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: realtek,rt8723bs-bt

This can be
compatible:
  const: realtek,rt8723bs-bt

> +  powerdown-gpios:
> +    description: GPIO line controlling the power down (BT_DIS#) signal
> +    maxItems: 1
> +
> +  device-wake-gpios:
> +    description: GPIO line controlling the device wakeup (BT_WAKE) signal
> +    maxItems: 1
> +
> +  host-wake-gpios:
> +    description: GPIO line sampling the host wakeup (BT_HOST_WAKE) signal
> +    maxItems: 1
> +
> +  firmware-name:
> +    description: |
> +      Name of the configuration file to load in addition to firmware
> +    $ref: http://devicetree.org/schemas/types.yaml#/definitions/string
> +
> +required:
> +  - compatible

Setting additionalProperties to false would be great here too.

Thanks!
Maxime

--qkf2aoim2t2545gg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXeVf5gAKCRDj7w1vZxhR
xSZyAP9Jq4dzAGIuHEpsruCUumvqfk6iJEGz7e9fEM+G3oj0wwD+LgrZzvPLSgPc
NVwLv6OPXK2Cqo/tcGM7SAjNGX8VwAc=
=4oWJ
-----END PGP SIGNATURE-----

--qkf2aoim2t2545gg--


--===============2080973276547440385==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2080973276547440385==--

