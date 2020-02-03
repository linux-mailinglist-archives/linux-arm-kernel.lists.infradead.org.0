Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BB9415029D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 09:30:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mq2l9+qSuawd62ngThcsDWIJ3P5nHD1dXVhvm+SSuFc=; b=e/CJGO71rdGsQJ
	qOIUmG7RpeHyWoOYOK1t1Jl+Uj+aNzeohZrkv9m+z3MqBoykps5kAholaN+hYTwQQgW1ol9A2xYMQ
	5siicrZynS34Irmo7Z6MWVpFmLaxCkEnwyhtkA2g/SaZfaofpPFgeSQxL3hjxSCipMiUPTepKLNgx
	VJuI5wf87RfkKFvHajobwHWXpP7on0ndLQ/ND9QG0OhwFowm88JmKVKRL5phlbe+l1zQqSlC0zcmZ
	fE3/Q8jDDCfOE+BUEIDoaV7Zz8Tr0l+6/mrPvMJQGz946Uc+A1rL3N1RYL3hsz3fkpmsKPtSCDY71
	MUprTRmhnwTgCEJWsP9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyX7s-0000FQ-DQ; Mon, 03 Feb 2020 08:30:36 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyX7m-0000Ex-NT; Mon, 03 Feb 2020 08:30:32 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id D79996033;
 Mon,  3 Feb 2020 03:30:29 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Mon, 03 Feb 2020 03:30:29 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=5/m6d79XqC9vih4B9gJzt6EMAAq
 GOFeC4/ftf/InF74=; b=Wc9ETG5YTTVqP2mH7AArIOvpsRa4oqCDhVFHQ7ndmrj
 OKrRHmubRX1ZmMydSFd9fExYLWMF4tIDSZniv5mPq2/Sg/c/XwE0cBIIEd+64q/y
 7KFsjiCkSHFZEvDLa/q07IEDfFgHsr4RQ1GBWlyZ1oH3f1ED6OfDaCstbEm0WiMJ
 Q9BOtnSjJbqsAeuIBS2kAmL9tDfejt4Z+Uwiyf8KuVZ5l6G/S39wvYQPt+I4Bin+
 bjRNpd959xj7SmCVtN74hV7K1yivbwLnXSY2av8M9fzAE8wN1X3dwIUAuuhu9V6q
 OOyBBJgwXJhJFIzSdsdmkkBRaGVQKrlnSqamjRaaxrA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=5/m6d7
 9XqC9vih4B9gJzt6EMAAqGOFeC4/ftf/InF74=; b=e4SKOejaPuaElhEpZzf++6
 tDS39Yw9YlE9M0swTTtiAzAZYV2O16wAUWOHfCcZ5iBPANuAbsCE9wXZGqbQzFEc
 tDZj9vE7wU9+hlcqwuIkGCf4KHEz4pqi8LRnu8q69vmUFKy297Yf0sLPcJ1Bx5GT
 AwM3sW+dQTa8oFQN/ww3882DVFmnethZs9y9eDWmFTTm5gK5aFzCWrGUU0d9h22F
 ZsIbA/z/nLkQe2H6fay5UYhWt68bpoRoAnSJMJ4mNfk05Mw28pMT/GjDlRNbP1Pl
 u5JUUEIE6QNu41CfXs9t4/nohlyZ4hqrHKw4KvK/7cb1j/QrdW+h0FD8SvaSkxfQ
 ==
X-ME-Sender: <xms:Jdo3Xnu3y5Y5o6vYrJgS19KaqK89UoLXaf3jDvhyym23lzAiPxbUaQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrgeeigdduudelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuffhomhgrih
 hnpeguvghvihgtvghtrhgvvgdrohhrghenucfkphepledtrdekledrieekrdejieenucev
 lhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvg
 estggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:Jdo3XsuWHqy773o6GtBS5pRDDCsUHiroq-gm6Lcw5OnaXKCFkiAugg>
 <xmx:Jdo3XlyDT5P_uAaHslnEJvHh2391qPtgmNwsfJnQCE-8gOmH2y9-Fg>
 <xmx:Jdo3XqifrhjYa6UGH3hnidOFRzXW_6BNEWNF9R1N1AdjoN1RR98Z8w>
 <xmx:Jdo3XiWkI3DmgL0L1mvDLKDHpLzMLYlgY1DhKmd77sTnPU8k3am_Jg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 700D13060134;
 Mon,  3 Feb 2020 03:30:29 -0500 (EST)
Date: Mon, 3 Feb 2020 09:30:27 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH 06/12] dt-bindings: arm: bcm: Convert BCM21664 to YAML
Message-ID: <20200203083027.gdlrv7vcv5hir3g7@gilmour.lan>
References: <20200202211827.27682-1-f.fainelli@gmail.com>
 <20200202211827.27682-7-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200202211827.27682-7-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_003030_902018_2CB3F0A3 
X-CRM114-Status: GOOD (  15.59  )
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

On Sun, Feb 02, 2020 at 01:18:21PM -0800, Florian Fainelli wrote:
> Update the Broadcom BCM21664 SoC binding document for boards/SoCs to use
> YAML. Verified with dt_binding_check and dtbs_check.
>
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>  .../bindings/arm/bcm/brcm,bcm21664.txt        | 15 ------------
>  .../bindings/arm/bcm/brcm,bcm21664.yaml       | 23 +++++++++++++++++++
>  2 files changed, 23 insertions(+), 15 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm21664.txt
>  create mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm21664.yaml
>
> diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm21664.txt b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm21664.txt
> deleted file mode 100644
> index e0774255e1a6..000000000000
> --- a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm21664.txt
> +++ /dev/null
> @@ -1,15 +0,0 @@
> -Broadcom BCM21664 device tree bindings
> ---------------------------------------
> -
> -This document describes the device tree bindings for boards with the BCM21664
> -SoC.
> -
> -Required root node property:
> -  - compatible: brcm,bcm21664
> -
> -Example:
> -	/ {
> -		model = "BCM21664 SoC";
> -		compatible = "brcm,bcm21664";
> -		[...]
> -	}
> diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm21664.yaml b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm21664.yaml
> new file mode 100644
> index 000000000000..8a38a6b68f60
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm21664.yaml
> @@ -0,0 +1,23 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/bcm/brcm,bcm21664.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Broadcom BCM21664 device tree bindings
> +
> +maintainers:
> +  - Florian Fainelli <f.fainelli@gmail.com>
> +
> +properties:
> +  $nodename:
> +    const: '/'
> +  compatible:
> +    oneOf:
> +      - description: BCM21664 based boards
> +        items:
> +          - enum:
> +              - brcm,bcm21664-garnet
> +          - const: brcm,bcm21664

Do you really need the oneOf here?

Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
