Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51A38150297
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 09:30:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fFfMuBQ2iL6Ho6C4wRMbpN/0dsN5YIQODTfSNVHfQBs=; b=AdMetm6frnXM+L
	VYbAgumuzPGQMM9dk5WDUW6GWeRotez/RUkZKeI881OzMcwnJLvjiplg9anQINBLSARSesqBsseO2
	r0p3lyGbvn2juK72DJ/GnxjpYUCfq8Ct1qs5CdasLF5uXCaIgzCEVmZOZ94qsH/o/IVXCEtt9upjm
	cav7JllwMM3FCLDPtbMaY9MLpKdqB/b91//UOtb9qc6ZNKO06XZ2FPz4p22xCV0DX3RXTxsfMVjtM
	9G7DNDQP5bVAxciCopSmaxmIuvj/hEH4DjsuaAlZxs0OTGl7BdHfThRzGDk4pBSRtSxjXyBz/aIR+
	OMeNwSb5EFa2qfY+rNLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyX7I-0007Bz-Sz; Mon, 03 Feb 2020 08:30:00 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyX7C-00079a-2c; Mon, 03 Feb 2020 08:29:56 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 3AD526205;
 Mon,  3 Feb 2020 03:29:42 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 03 Feb 2020 03:29:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=iQ/ikpIbJ5P9FgOE6AgwAzVNlDM
 fzKU2pcHWjtIVj7g=; b=m1jlfJmENyRlxcyCXEJE3uTVm7HqOR7ONRKBBv2Npf8
 XqrLBjKlVJv0nvC5+vr1MmqCeqaSndPDbcCWMEmBVSArIGLvU/I2ypC5mHo5QmRt
 aacqCgaxopKpFGekpgjNEuvori2LVXVI6xgKPbNoC8AU7Dnzg1bFCqEf0B6sxJZN
 E9MIUyO/F2vvqaJaTjb3qAQoxCEeM64Iv461Gkqr92c+OmnQzcblm6tYGW7a+UH3
 tYrrF6E9M7UAs1YghdYJiBCMs6wbSgZPN42vtELvFqdF0QBZs2Be/dhO2XN4qmze
 5+038c906DDj57qpsd/w4jg6uj57fM/xhzZgX9LXi5w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=iQ/ikp
 IbJ5P9FgOE6AgwAzVNlDMfzKU2pcHWjtIVj7g=; b=qZ5egCBpAwIljWiIEiZ4tG
 OzpEtWoIVt3Z3sumZKtm8rrbm404G7BZhHLgxRLx6xtPQbgKFdtWhvMXU769icZf
 i+SRuNVbabeWMxVIfHxjRQJPFQwi5Alxp86+Y2tC7gSoqfu6YLPQhEPGSP9SOF/w
 USIIcmBEjdc6ua1hDYoZiEq5qDaquob5cyDb9WbdxYjd/wGIr9kWMrmNCN5qkRhr
 CqDANzCnnEqZ4Oh/VLL6CCpzQT+hJ+3xUErCafGXElBn7Gk5zp/Gb0g1DvE2vlb2
 439VEPyt5/YEn8KZ8EnPrLj2lUeuMuqyPv5c6wNwafmxckjGuW5Q9nxb7nXLjAjQ
 ==
X-ME-Sender: <xms:9Nk3XglH6jGRQQrKr1X2zjCYT6pYqpYXDuIof0B2pzyZGKg37gKqRA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrgeeigdduudejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuffhomhgrih
 hnpeguvghvihgtvghtrhgvvgdrohhrghenucfkphepledtrdekledrieekrdejieenucev
 lhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvg
 estggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:9Nk3Xs9qUxHKSs4k81Jh4fD5IpqD3pNZFGhGcxiC7E7y-C-E7m2X_w>
 <xmx:9Nk3XvFbv-lGdOm0yRpEjg7Z_K1kpj9tFqecVNpuG9kET6x3QuViWA>
 <xmx:9Nk3XtksGs-4jPa7-57MCzbMNXkKpkDOlvnGnvBctC7fE-OHZd62Yw>
 <xmx:9tk3Xl1NgDdaOOyy4hB9U9I-oUhabl-kFXNyeFaxTHPziO0E4FvJfg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 6E5BA328005A;
 Mon,  3 Feb 2020 03:29:40 -0500 (EST)
Date: Mon, 3 Feb 2020 09:29:38 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH 01/12] dt-bindings: arm: bcm: Convert Cygnus to YAML
Message-ID: <20200203082938.hulyzd3klqq2xqz3@gilmour.lan>
References: <20200202211827.27682-1-f.fainelli@gmail.com>
 <20200202211827.27682-2-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200202211827.27682-2-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_002954_260533_7C92C53E 
X-CRM114-Status: GOOD (  14.83  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>, Scott Branden <sbranden@broadcom.com>,
 Lubomir Rintel <lkundrak@v3.sk>, Sugaya Taichi <sugaya.taichi@socionext.com>,
 Ray Jui <rjui@broadcom.com>, open list <linux-kernel@vger.kernel.org>,
 Andrew Jeffery <andrew@aj.id.au>, Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM IPROC ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Olof Johansson <olof@lixom.net>, linux-arm-kernel@vger.kernel.org,
 "moderated list:BROADCOM IPROC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Florian,

On Sun, Feb 02, 2020 at 01:18:16PM -0800, Florian Fainelli wrote:
> Update the Broadocom Cygnus SoC binding document for boards/SoCs to use
> YAML. Verified with dt_binding_check and dtbs_check.
>
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>  .../bindings/arm/bcm/brcm,cygnus.txt          | 31 ---------
>  .../bindings/arm/bcm/brcm,cygnus.yaml         | 66 +++++++++++++++++++
>  2 files changed, 66 insertions(+), 31 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,cygnus.txt
>  create mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,cygnus.yaml
>
> diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,cygnus.txt b/Documentation/devicetree/bindings/arm/bcm/brcm,cygnus.txt
> deleted file mode 100644
> index 4c77169bb534..000000000000
> --- a/Documentation/devicetree/bindings/arm/bcm/brcm,cygnus.txt
> +++ /dev/null
> @@ -1,31 +0,0 @@
> -Broadcom Cygnus device tree bindings
> -------------------------------------
> -
> -
> -Boards with Cygnus SoCs shall have the following properties:
> -
> -Required root node property:
> -
> -BCM11300
> -compatible = "brcm,bcm11300", "brcm,cygnus";
> -
> -BCM11320
> -compatible = "brcm,bcm11320", "brcm,cygnus";
> -
> -BCM11350
> -compatible = "brcm,bcm11350", "brcm,cygnus";
> -
> -BCM11360
> -compatible = "brcm,bcm11360", "brcm,cygnus";
> -
> -BCM58300
> -compatible = "brcm,bcm58300", "brcm,cygnus";
> -
> -BCM58302
> -compatible = "brcm,bcm58302", "brcm,cygnus";
> -
> -BCM58303
> -compatible = "brcm,bcm58303", "brcm,cygnus";
> -
> -BCM58305
> -compatible = "brcm,bcm58305", "brcm,cygnus";
> diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,cygnus.yaml b/Documentation/devicetree/bindings/arm/bcm/brcm,cygnus.yaml
> new file mode 100644
> index 000000000000..2606ca956caf
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/bcm/brcm,cygnus.yaml
> @@ -0,0 +1,66 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/bcm/brcm,cygnus.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Broadcom Cygnus device tree bindings
> +
> +maintainers:
> +   - Ray Jui <rjui@broadcom.com>
> +   - Scott Branden <sbranden@broadcom.com>
> +
> +properties:
> +  $nodename:
> +    const: '/'
> +  compatible:
> +    oneOf:
> +      - description: BCM11300 based boards
> +        items:
> +          - enum:
> +              - brcm,bcm11300
> +          - const: brcm,cygnus
> +
> +      - description: BCM11320 based boards
> +        items:
> +          - enum:
> +              - brcm,bcm11320
> +          - const: brcm,cygnus

This applies to other patches in your series too, but this can be
simplified to either (removing the description to make the example
simpler):

oneOf:
  - items:
    - const: brcm,bcm11300
    - const: brcm,cygnus
  - items:
    - const: brcm,bcm11320
    - const: brcm,cygnus

Or

items:
  - enum:
    - brcm,bcm11300
    - brcm,bcm11320
  - const: brcm,cygnus

The latter will provide more meaningful errors, so you should probably
pick this one over the former.

Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
