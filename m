Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DE61B1559
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 22:22:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CAV6iBGPQ9GwyxVFEYGCwsb36ZicwBkCMkMtPp2zwxI=; b=DI08lqMIFZFp1J
	U9RmUVcaivRYoSdLxi+Fht1I0+1QNNHprXHYPal5HNnBDWENA3cUmjZmrdFdUbCA2E5Th0V6/i/ha
	q6LGTGtAl8btOLbDnSBFPHjDV7r9RBK5kSkxiqh1CuKCga7y4nzoD57phh0IYIXR52xImG+tFC+4e
	sg19ed9U6ejpAEMMs8BV8L38xwvENBDqXOpG05VHjP1XEd6TQRHyNeApd4AvGWNab39AKAicEJ9P9
	4dM+MttpceeUSaVxwf61fENhDtaoXHebQ70lX0mP+tsJIn0LBVORfsIRXbSU06yrBJv/Iwf7B/iKX
	DdgfoYGhFQE627pOjRIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8Vbo-000603-Ps; Thu, 12 Sep 2019 20:22:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8Vbb-0005zN-LO
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 20:22:17 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CCA6020830;
 Thu, 12 Sep 2019 20:22:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568319735;
 bh=BwW5ZiZNxIZ35K8u4ts+t57OyUjjLd6ycUYf3HCyazE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fqF+mzmlGe0LaAtKLvp8xByYqBHhnlrXlUa6J6tfTKSXIBBL/OYhRIE30QRCMXkei
 HHEhMe8wHovnA88dVr/DyCFw/lrqdMYvyXU17NKO9iSEmyDV/FAJMNP+FTm1KkY4t9
 gm3SyZY1xqKW6g/dmkijJJn7/GGHdfERpHvp1vOY=
Date: Thu, 12 Sep 2019 22:22:12 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH 4/6] dt-bindings: media: Add Allwinner H3 Deinterlace
 binding
Message-ID: <20190912202212.wkdipjx2bspfupem@localhost.localdomain>
References: <20190912175132.411-1-jernej.skrabec@siol.net>
 <20190912175132.411-5-jernej.skrabec@siol.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190912175132.411-5-jernej.skrabec@siol.net>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_132215_720262_AE628B51 
X-CRM114-Status: GOOD (  15.05  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, hverkuil@xs4all.nl,
 wens@csie.org, robh+dt@kernel.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Thu, Sep 12, 2019 at 07:51:30PM +0200, Jernej Skrabec wrote:
> Allwinner H3 Deinterlace core is used for deinterlacing interlaced video
> content. Core can also be found on some later SoCs, like H5 and R40.
> 
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> ---
>  .../media/allwinner,sun8i-h3-deinterlace.yaml | 76 +++++++++++++++++++
>  1 file changed, 76 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/allwinner,sun8i-h3-deinterlace.yaml
> 
> diff --git a/Documentation/devicetree/bindings/media/allwinner,sun8i-h3-deinterlace.yaml b/Documentation/devicetree/bindings/media/allwinner,sun8i-h3-deinterlace.yaml
> new file mode 100644
> index 000000000000..31c0ac427442
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/allwinner,sun8i-h3-deinterlace.yaml
> @@ -0,0 +1,76 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/allwinner,sun8i-h3-deinterlace.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Allwinner H3 Deinterlace Device Tree Bindings
> +
> +maintainers:
> +  - Chen-Yu Tsai <wens@csie.org>
> +  - Maxime Ripard <maxime.ripard@bootlin.com>

mripard@kernel.org please

> +
> +description: |-
> +  The Allwinner H3 and later has a deinterlace core used for
> +  deinterlacing interlaced video content.
> +
> +properties:
> +  compatible:
> +    const: allwinner,sun8i-h3-deinterlace
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: Deinterlace interface clock
> +      - description: Deinterlace module clock
> +      - description: Deinterlace DRAM clock
> +
> +  clock-names:
> +    items:
> +      - const: bus
> +      - const: mod
> +      - const: ram
> +
> +  resets:
> +    maxItems: 1
> +
> +  interconnects:
> +    maxItems: 1
> +
> +  interconnect-names:
> +    items:
> +      - const: dma-mem

You can define it as:

interconnect-names:
    const: dma-mem

There's no need for the items here.

Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
