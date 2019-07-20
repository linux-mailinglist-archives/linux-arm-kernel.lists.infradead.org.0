Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 621376EE99
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jul 2019 11:24:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aLdX86a9bX8FZ2YHIrdkqURH3eFIefBHc5FdFtR0+Is=; b=YrV8Y++dGKjGzu3mOG76vzsHc
	VYNHuGHnTKJdejIAb6r0sKo3kWFc2pyDi+u/7+EFxkoOKX1F8oHTshBPxvFjiwz/JbozgjqyWPwZs
	5YhIUaxqtm4HMraNfErzoxzfNUMTsP/JfIZZiPNbe/tVFR0MUlfAYzAjlxyhkFQFt7hHIBDVDBWD9
	tp7zqXo8uFONTxLTW6BcjQox9O0ws9Q0KibdAdttFs7ge0mpezD+f7DX1wec5qbUy4kOlo44R4zSt
	zaKuHK9ORLpSC2JEXEkiJXENQLu+EOjfpX8N3wyX3H9xrSz/wXE1kDIIn8mwKEHgRyaFgUexLa4a+
	OP3AYaiDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1holbm-000337-8K; Sat, 20 Jul 2019 09:24:50 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1holbV-00032X-Dk
 for linux-arm-kernel@lists.infradead.org; Sat, 20 Jul 2019 09:24:35 +0000
X-Originating-IP: 91.163.65.175
Received: from localhost (91-163-65-175.subs.proxad.net [91.163.65.175])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id C3495C0005;
 Sat, 20 Jul 2019 09:24:21 +0000 (UTC)
Date: Sat, 20 Jul 2019 11:24:21 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH 1/3] dt-bindings: dma: Add YAML schemas for the generic
 DMA bindings
Message-ID: <20190720092421.bqbsyrk3atejqgsf@flea>
References: <20190720064123.15411-1-maxime.ripard@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20190720064123.15411-1-maxime.ripard@bootlin.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190720_022433_624155_3144DF6B 
X-CRM114-Status: GOOD (  18.44  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: dmaengine@vger.kernel.org, devicetree@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, linux-arm-kernel@lists.infradead.org,
 Peter Ujfalusi <peter.ujfalusi@ti.com>
Content-Type: multipart/mixed; boundary="===============2476322633009275244=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2476322633009275244==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="s3wrpdsnzbasx2vv"
Content-Disposition: inline


--s3wrpdsnzbasx2vv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Jul 20, 2019 at 08:41:21AM +0200, Maxime Ripard wrote:
> The DMA controllers and consumers have a bunch of generic properties that
> are needed in a device tree. Add a YAML schemas for those.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
>
> ---
>
> Changes from v1:
>   - Dropped the dma consumer schemas
>   - Fixed the node name of the examples
>   - Enhanced a bit the description for dma-requests in case of a router
>   - Split the bindings in two to handle the router and controller case
>     separately
>   - Made #dma-cells required
> ---
>  .../devicetree/bindings/dma/dma-common.yaml   |  43 +++++++
>  .../bindings/dma/dma-controller.yaml          |  35 ++++++
>  .../devicetree/bindings/dma/dma-router.yaml   |  50 ++++++++
>  Documentation/devicetree/bindings/dma/dma.txt | 114 +-----------------
>  4 files changed, 129 insertions(+), 113 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/dma/dma-common.yaml
>  create mode 100644 Documentation/devicetree/bindings/dma/dma-controller.yaml
>  create mode 100644 Documentation/devicetree/bindings/dma/dma-router.yaml
>
> diff --git a/Documentation/devicetree/bindings/dma/dma-common.yaml b/Documentation/devicetree/bindings/dma/dma-common.yaml
> new file mode 100644
> index 000000000000..422fd6c8b0ce
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/dma/dma-common.yaml
> @@ -0,0 +1,43 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/dma/dma-common.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: DMA Engine Generic Binding
> +
> +maintainers:
> +  - Vinod Koul <vkoul@kernel.org>
> +
> +description:
> +  Generic binding to provide a way for a driver using DMA Engine to
> +  retrieve the DMA request or channel information that goes from a
> +  hardware device to a DMA controller.
> +
> +properties:
> +  "#dma-cells":
> +    minimum: 1
> +    # Should be enough
> +    maximum: 255
> +    description:
> +      Used to provide DMA controller specific information.

We need a select statement here, otherwise it will try to validate
every node and report dma-cells as missing. I'll send a v3.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--s3wrpdsnzbasx2vv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXTLdvgAKCRDj7w1vZxhR
xdEIAP9SpwDUkxDQ+DapyYxUkorj6+UJDJBYRlJBNOXYMiAgfQEAxr4NNseBz5i8
bXSG0DZSuo0iCBaU3l1PDEiGg26h2Qo=
=aOju
-----END PGP SIGNATURE-----

--s3wrpdsnzbasx2vv--


--===============2476322633009275244==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2476322633009275244==--

