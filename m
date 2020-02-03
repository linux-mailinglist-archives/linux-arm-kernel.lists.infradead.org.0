Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BD8F1502A3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 09:32:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gYh/EfA/Mc/SSUJBA1SlwdvpgGRTkRX+QSZVuxfCR38=; b=VmVI+N3gJ8cQq4
	Q3LJRge8ac0lS6PIAx/t3lTOmhJixtHtHivRv7BcRPL70W1GN7P7v0QGh6r4CZ2PKSEP7O5kHH7hE
	C9DN+pVds5sL59kS0JgFXLCCxXiiDYDlDjC0HuNCCRf3AmK6+2zOcVHvlUcHwrVlUzaXAWDXwn18U
	RCQ61FSJAFVA4lTcvFsoXy3AFvPhWVAL3VWRYHefqG7/IhAtwWZ0B1xIiAuk6uCuFEwzrvYiTTQ3K
	gKhY0RHxe4P+BISuSGyjfeLiRnp1GItmuY7ghtFPHhgswBcKxR1l0DjgQPOzDf9kft7+w3/+HPgJg
	hKtuc14JVXLzOoguC+cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyX9H-0000hv-8O; Mon, 03 Feb 2020 08:32:03 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyX98-0000hR-Cb; Mon, 03 Feb 2020 08:31:56 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 7F91B3AF2;
 Mon,  3 Feb 2020 03:31:53 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 03 Feb 2020 03:31:53 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=OmLQiTU7CIJEgfH4BB0wpQ3U+xt
 6/6j/9KiOYhlqIRI=; b=NeBaOOmMgJ9dMRzU9MQWb7FnVH2O1iR3oWG3dIkQNHr
 0VR1nWZ+Kp0r4TW9ohHc0xfq0itNqE9ySjyuiTkB3UYvEs8bzblFdIkgGGM4xMs6
 2iyaqjLIMf0+YnsDehiPvbTBMdO8wbQan0IJM8Ed6m46Eaf0u0901yKe3q/FWWHY
 u5oo6mCjIiJetYEaFqaJFb/pHUbNtdAfLKdClmB+Q9d8kxhIopLQde2+Am3vTlPn
 SKFxRjjiSWKaukgmqtDtuVNH2yDN/ak81PYJvdeXOGUx37pTHrFwkcsPKnlGYpUt
 IaEQLlREdQh/Wvu+DbnNO6CR60T2oLkbYP6uddpg3XA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=OmLQiT
 U7CIJEgfH4BB0wpQ3U+xt6/6j/9KiOYhlqIRI=; b=uRJSVjHMbnfxpTHFBeSXO6
 /MM5JJ0f+DFb7XObhwADxy0P8yWHENTV7pjn2gw9ixtpARHAzb3YU+1nRGQcpZil
 DvNbSJJFs5pXHKRuCJqyXS9rGHT5ihlWM704Y6Cn6CHgxXUAifYgZjvqIm/5kE1z
 s3dkrFIP0x39LQqlBQrh0mv/3WqXSqt0gfwyNkThecc6IrGIDXkSp6JOjfoyshgO
 MjM0ym3Uoo7rk55W3II5pTKTgcv6HyzG9URWd01t+Z3V0gl6pSnI1019IPI4azVL
 ekVO73tGTyUYMlCbqRAHVsClnrtpTYEyctomSTUikkrfoi8sW8S62+sV6fp16GsQ
 ==
X-ME-Sender: <xms:eNo3XnYvH8QHn9S7Z_7jd3m1xpbcaOQ02zwQMGc9Eq50xSoakXKamw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrgeeigdduudelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuffhomhgrih
 hnpeguvghvihgtvghtrhgvvgdrohhrghenucfkphepledtrdekledrieekrdejieenucev
 lhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvg
 estggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:eNo3XugKssXinG4YxJDa03RwjmEGDZYbLD3-vd0NB8kaFj-fMOdl9A>
 <xmx:eNo3XpciFCpgMIo921RcMDgOEE12ZCl5HvVF-ROCj5LHK2p824V7Xg>
 <xmx:eNo3XtniRCmBDq_aH8FLq89JKsot7iokNR-pB5mJoJ55Q0OZO7EMOA>
 <xmx:edo3XhZ0wx7z1uH6IVv0Vf2cVJhJcRCc6o9xr7dEfGigKDfauvt7EA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 6BBF1328005A;
 Mon,  3 Feb 2020 03:31:52 -0500 (EST)
Date: Mon, 3 Feb 2020 09:31:51 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH 08/12] dt-bindings: arm: bcm: Convert BCM4708 to YAML
Message-ID: <20200203083151.ghg57pgjlci4y7in@gilmour.lan>
References: <20200202211827.27682-1-f.fainelli@gmail.com>
 <20200202211827.27682-9-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200202211827.27682-9-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_003154_568259_EE885776 
X-CRM114-Status: GOOD (  15.97  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
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

Hi,

On Sun, Feb 02, 2020 at 01:18:23PM -0800, Florian Fainelli wrote:
> Update the Broadcom BCM4708 SoC family binding document for boards/SoCs
> to use YAML. Verified with dt_binding_check and dtbs_check.
>
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>  .../bindings/arm/bcm/brcm,bcm4708.txt         | 15 ----
>  .../bindings/arm/bcm/brcm,bcm4708.yaml        | 88 +++++++++++++++++++
>  2 files changed, 88 insertions(+), 15 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.txt
>  create mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.yaml
>
> diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.txt b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.txt
> deleted file mode 100644
> index 8608a776caa7..000000000000
> --- a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.txt
> +++ /dev/null
> @@ -1,15 +0,0 @@
> -Broadcom BCM4708 device tree bindings
> --------------------------------------------
> -
> -Boards with the BCM4708 SoC shall have the following properties:
> -
> -Required root node property:
> -
> -bcm4708
> -compatible = "brcm,bcm4708";
> -
> -bcm4709
> -compatible = "brcm,bcm4709";
> -
> -bcm53012
> -compatible = "brcm,bcm53012";
> diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.yaml b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.yaml
> new file mode 100644
> index 000000000000..d48313c7ae45
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.yaml
> @@ -0,0 +1,88 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/bcm/brcm,bcm4708.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Broadcom BCM4708 device tree bindings
> +
> +description:
> +  Broadcom BCM4708/47081/4709/47094/53012 Wi-Fi/network SoCs based
> +  on the iProc architecture (Northstar).
> +
> +maintainers:
> +  - Florian Fainelli <f.fainelli@gmail.com>
> +  - Hauke Mehrtens <hauke@hauke-m.de>
> +  - Rafal Milecki <zajec5@gmail.com>
> +
> +properties:
> +  $nodename:
> +    const: '/'
> +  compatible:
> +    oneOf:
> +      - description: BCM4708 based boards
> +        items:
> +          - enum:
> +              - asus,rt-ac56u
> +              - asus,rt-ac68u
> +              - buffalo,wzr-1750dhp
> +              - linksys,ea6300-v1
> +              - linksys,ea6500-v2
> +              - luxul,xap-1510v1
> +              - luxul,xwc-1000
> +              - netgear,r6250v1
> +              - netgear,r6300v2
> +              - smartrg,sr400ac
> +              - brcm,bcm94708
> +          - const: brcm,bcm4708

I'm under the impression that while the SoC compatible description in
your other bindings is obvious enough, if anything, you should have a
description of the boards. But it's up to you :)

Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
