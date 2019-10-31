Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C744EB0BD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 14:01:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lsrhdrfz9Yx/obi2TNDS90RT+dPfMLaamtnsf6wk4WY=; b=oXdHRXzuYRYUlFbWa2id4Frul
	97Zrbr23YV6h7NhSy9ymZHMjXdVITbpsAQ8lbK1XJGMkqAb3hhF+FUrUsuWLjL+/+rDh/tjqbonqG
	DiY6ZooLLa4BtmT3586KBcaxiWdyCUKfl0wpgthq9WN+yqObRKlbqaiYg6l/m7Jl79CMAaLEh4qoX
	i8GWGIBHdpyqfoZqFO42x4mi6tgU52Gzf2OG/9jnVuhuQCNCVaitacvtwk6PjRpuQYQHhfkZOcapd
	ibgK2gcWumx9eVBswWGE2vI5yqYks4rHsqjLdGDM+fpNv3f3KdIfCF3dKl4HL0kolo/oM0PUqwnJV
	OSiXpREdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQA4m-0003Cc-S3; Thu, 31 Oct 2019 13:01:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQA4a-0003Bc-Bc
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 13:01:11 +0000
Received: from localhost (lns-bzn-32-82-254-4-138.adsl.proxad.net
 [82.254.4.138])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3FF182080F;
 Thu, 31 Oct 2019 13:01:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572526867;
 bh=f8eRto+8exxLgWUVCKrmmM8ykoEw4tBZ+Sa1c7y0s1k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JPgWzUplTsqtsEfcET7zNSf9SFujmQQQiVz6ScjU8KqRhl7L8N21vc1eI4dpAwt8d
 A4w6TuYAOUBZ6qC6lBBSRdgVUCMXuY57ED265QOpQriUW3BfrSq5F8CfqEG9YWMPmD
 6aj56dA7bidFDsGO+7aha31rwXjoNoEwTJQX8qGY=
Date: Thu, 31 Oct 2019 13:51:00 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Torsten Duwe <duwe@lst.de>
Subject: Re: [PATCH v4 6/7] dt-bindings: Add ANX6345 DP/eDP transmitter binding
Message-ID: <20191031125100.qprbdaaysg3tmhif@hendrix>
References: <20191029153815.C631668C4E@verein.lst.de>
 <20191029153953.8EE9B68D04@verein.lst.de>
MIME-Version: 1.0
In-Reply-To: <20191029153953.8EE9B68D04@verein.lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_060108_446811_92258251 
X-CRM114-Status: GOOD (  21.44  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Andrzej Hajda <a.hajda@samsung.com>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, David Airlie <airlied@linux.ie>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Harald Geyer <harald@ccbib.org>,
 Sean Paul <seanpaul@chromium.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: multipart/mixed; boundary="===============2285199791463241665=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2285199791463241665==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="4cs2y66oqe25ixg3"
Content-Disposition: inline


--4cs2y66oqe25ixg3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Oct 29, 2019 at 01:16:57PM +0100, Torsten Duwe wrote:
> The anx6345 is an ultra-low power DisplayPort/eDP transmitter designed
> for portable devices.
>
> Add a binding document for it.
>
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Torsten Duwe <duwe@suse.de>
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---
>  .../bindings/display/bridge/anx6345.yaml           | 92 ++++++++++++++++++++++
>  1 file changed, 92 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/anx6345.yaml
>
> diff --git a/Documentation/devicetree/bindings/display/bridge/anx6345.yaml b/Documentation/devicetree/bindings/display/bridge/anx6345.yaml
> new file mode 100644
> index 000000000000..094e8e8a5faa
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/bridge/anx6345.yaml
> @@ -0,0 +1,92 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/bridge/anx6345.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Analogix ANX6345 eDP Transmitter Device Tree Bindings
> +
> +maintainers:
> +  - Torsten Duwe <duwe@lst.de>
> +
> +description: |
> +  The ANX6345 is an ultra-low power Full-HD eDP transmitter designed for
> +  portable devices.
> +
> +properties:
> +  compatible:
> +    const: analogix,anx6345
> +
> +  reg:
> +    maxItems: 1
> +    description: base I2C address of the device
> +
> +  reset-gpios:
> +    maxItems: 1
> +    description: GPIO connected to active low reset
> +
> +  dvdd12-supply:
> +    maxItems: 1
> +    description: Regulator for 1.2V digital core power.
> +
> +  dvdd25-supply:
> +    maxItems: 1
> +    description: Regulator for 2.5V digital core power.
> +
> +  ports:
> +    anyOf:
> +      - port@0:
> +        description: Video port for LVTTL input
> +      - port@1:
> +        description: Video port for eDP output (panel or connector).
> +                     May be omitted if EDID works reliably.
> +    required:
> +      - port@0

Have you tried to validate those two ports in a DT?

I'm not quite sure what you wanted to express with that anyOf, but if
it was something like port@0 is mandatory, and port@1 is optional, it
should be something like this:

properties:

  ...

  ports:
    type: object

    properties:
      port@0:
        type: object
        description: |
	  Video port for LVTTL input

      port@1:
        type: object
        description: |
	  Video port for eDP output (..)

    required:
      - port@0

This way, you express that both port@0 and port@1 must by nodes, under
a node called ports, and port@0 is mandatory.

You should even push this a bit further by adding
additionalProperties: false to prevent a DT from having undocumented
properties and children for the main node and ports node.

Maxime

--4cs2y66oqe25ixg3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXbrYtAAKCRDj7w1vZxhR
xV1dAQC5514CdqdwGVxKBgHABRr2w2ucyLWqPk68wp3r0weRTAEA1E4SCm2To1Xt
ZnSJZF6aVIy6kDrJXQRDNT9vWD9JOwY=
=TzGz
-----END PGP SIGNATURE-----

--4cs2y66oqe25ixg3--


--===============2285199791463241665==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2285199791463241665==--

