Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 160FEB1A56
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 10:59:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=59UQbIChz7fbZb3H3tLCjdATEY77c8/JEyRurET0trc=; b=PRc5IOmlFxwcua
	K10vD6ypHLMShIxZ1/HhPmZdOErP9Pt5RwtMwswfESdRvgGdWA1QpaMdl+SFsWZ88ZDarCoBcfrD7
	BXI3kn0M5XzJfPJjg4FyZuaiLMbm51UmEIH6RqJ+REmXZfgSVVTWe496Vvx2HvK+gzvMCIM40oD0l
	RfvINVUTj07FCX1xs4ONP5QX+3gx12T0P4fCcwGjN9pXPW8dAUYE4/8TH77aqP98KSBPKKzuKb5N8
	eNOgVVojxbHppyWjKfE+c8fSzL3Y6hI8XVt2DUNNseOOtKnqbIcvfJXMcxGUFT98XY4su5rDowfLp
	za+mdxclUkdcsJwcCDtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8hQc-0003cs-Db; Fri, 13 Sep 2019 08:59:42 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8hQJ-0003cH-Ew
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 08:59:25 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 5B55625AEB1;
 Fri, 13 Sep 2019 18:59:18 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id 545EF940513; Fri, 13 Sep 2019 10:59:16 +0200 (CEST)
Date: Fri, 13 Sep 2019 10:59:16 +0200
From: Simon Horman <horms@verge.net.au>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH v2] dt-bindings: arm: renesas: Convert 'renesas,prr' to
 json-schema
Message-ID: <20190913085915.jlsvhgmkmunsjxsy@verge.net.au>
References: <20190908120528.9392-1-horms+renesas@verge.net.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190908120528.9392-1-horms+renesas@verge.net.au>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_015923_807931_AAA90E3E 
X-CRM114-Status: GOOD (  19.65  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Yoshihiro Kaneko <ykaneko0929@gmail.com>, Magnus Damm <magnus.damm@gmail.com>,
 linux-renesas-soc@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Sep 08, 2019 at 01:05:28PM +0100, Simon Horman wrote:
> Convert Renesas Product Register bindings documentation to json-schema.
> 
> Signed-off-by: Simon Horman <horms+renesas@verge.net.au>

Apologies Geert,

this patch was supposed to be addressed to you rather than myself.

> ---
> Based on v5.3-rc1
> Tested using:
>   make dtbs_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/arm/renesas,prr.yaml
> 
> v2
> * Use simple enum for compat values
> * Drop "" from compat values
> * Only supply 'maxItems' property to 'reg'
> ---
>  .../devicetree/bindings/arm/renesas,prr.txt        | 20 -------------
>  .../devicetree/bindings/arm/renesas,prr.yaml       | 35 ++++++++++++++++++++++
>  2 files changed, 35 insertions(+), 20 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/renesas,prr.txt
>  create mode 100644 Documentation/devicetree/bindings/arm/renesas,prr.yaml
> 
> diff --git a/Documentation/devicetree/bindings/arm/renesas,prr.txt b/Documentation/devicetree/bindings/arm/renesas,prr.txt
> deleted file mode 100644
> index 08e482e953ca..000000000000
> --- a/Documentation/devicetree/bindings/arm/renesas,prr.txt
> +++ /dev/null
> @@ -1,20 +0,0 @@
> -Renesas Product Register
> -
> -Most Renesas ARM SoCs have a Product Register or Boundary Scan ID Register that
> -allows to retrieve SoC product and revision information.  If present, a device
> -node for this register should be added.
> -
> -Required properties:
> -  - compatible: Must be one of:
> -    "renesas,prr"
> -    "renesas,bsid"
> -  - reg: Base address and length of the register block.
> -
> -
> -Examples
> ---------
> -
> -	prr: chipid@ff000044 {
> -		compatible = "renesas,prr";
> -		reg = <0 0xff000044 0 4>;
> -	};
> diff --git a/Documentation/devicetree/bindings/arm/renesas,prr.yaml b/Documentation/devicetree/bindings/arm/renesas,prr.yaml
> new file mode 100644
> index 000000000000..7f8d17f33983
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/renesas,prr.yaml
> @@ -0,0 +1,35 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/renesas,prr.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Renesas Product Register
> +
> +maintainers:
> +  - Geert Uytterhoeven <geert+renesas@glider.be>
> +  - Magnus Damm <magnus.damm@gmail.com>
> +
> +description: |
> +  Most Renesas ARM SoCs have a Product Register or Boundary Scan ID
> +  Register that allows to retrieve SoC product and revision information.
> +  If present, a device node for this register should be added.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - renesas,prr
> +      - renesas,bsid
> +  reg:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +
> +examples:
> +  - |
> +    prr: chipid@ff000044 {
> +        compatible = "renesas,prr";
> +        reg = <0 0xff000044 0 4>;
> +    };
> -- 
> 2.11.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
