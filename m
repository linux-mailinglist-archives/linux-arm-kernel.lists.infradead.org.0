Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5976FE2A96
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 08:50:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VUorc77N8bkl6JQ6B5SMXlkVxbmUAitJkOzrRvUmnic=; b=VCWCfJpaXQNhm4
	ghIR9cTsTe5GezPCyICEyx1lzG1ffTboB6Cir1vkxNXctqq5Oh9kFE1IU4++PZ7p9Xg+fJi7hRlNm
	e06ru/itgAaXUZ0EgrFcHnTJbPC1rCT0bOaatEH0O0OVrX7H/UsJHy3PAaVQR15rj47POth0aa3gV
	hkEMpKeTtC2yh87oA9za9RxkG/yDO6Vai4bRXZuzVFy+G5VO//EpUfEtbRvuRxqmmzlRBGPzHg4qa
	J0Vm8FaF3iaDApnbZUVQS67X8Uiras53FJX0QV/QNGP5K3I5VUG/HSZ2hxlfx3NczhIUos2D2xwFw
	ttOjtRFcnh77vzZQ5RHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNWwt-00073d-4a; Thu, 24 Oct 2019 06:50:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNWwj-0006xW-AK
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 06:50:11 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 277AF20856;
 Thu, 24 Oct 2019 06:50:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571899808;
 bh=vwDg4QSnLPpz0IdyymC3+iUBe78FE7J5ogjvzY1gXeo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=d2OqChICAciMS2Otm1pRPt3j2bUApcX3Wd4AGCQdAHdYPsDJf6mDvkzJ18Yt5pl6g
 Hh3htj5C1ye5pjj++MCDdViPGeVj+ZGLbM186VaDZ4vGMIkN7nhePLxgARH+Q/y5Uk
 ppyycWTlrYS7dVW/cyv98/FuxuKmGhSSo5wCM0us=
Date: Thu, 24 Oct 2019 08:50:05 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Corentin Labbe <clabbe.montjoie@gmail.com>
Subject: Re: [PATCH v2 2/4] dt-bindings: crypto: Add DT bindings
 documentation for sun8i-ss Security System
Message-ID: <20191024065005.hdypdl2dgqsrry5i@gilmour>
References: <20191023201016.26195-1-clabbe.montjoie@gmail.com>
 <20191023201016.26195-3-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191023201016.26195-3-clabbe.montjoie@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_235009_391642_336AD90E 
X-CRM114-Status: GOOD (  15.80  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 herbert@gondor.apana.org.au, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, wens@csie.org, robh+dt@kernel.org,
 linux-crypto@vger.kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Wed, Oct 23, 2019 at 10:10:14PM +0200, Corentin Labbe wrote:
> This patch adds documentation for Device-Tree bindings of the
> Security System cryptographic offloader driver.
>
> Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
> ---
>  .../bindings/crypto/allwinner,sun8i-ss.yaml   | 64 +++++++++++++++++++
>  1 file changed, 64 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/crypto/allwinner,sun8i-ss.yaml
>
> diff --git a/Documentation/devicetree/bindings/crypto/allwinner,sun8i-ss.yaml b/Documentation/devicetree/bindings/crypto/allwinner,sun8i-ss.yaml
> new file mode 100644
> index 000000000000..99b7736975bc
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/crypto/allwinner,sun8i-ss.yaml
> @@ -0,0 +1,64 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/crypto/allwinner,sun8i-ss.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Allwinner Security System v2 driver
> +
> +maintainers:
> +  - Corentin Labbe <corentin.labbe@gmail.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - allwinner,sun8i-a83t-crypto
> +      - allwinner,sun9i-a80-crypto
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: Bus clock
> +      - description: Module clock
> +
> +  clock-names:
> +    items:
> +      - const: bus
> +      - const: mod
> +
> +  resets:
> +    maxItems: 1

The A83t at least has a reset line, so please make a condition to have
it required.

> +  reset-names:
> +    const: bus

You don't need reset-names at all in that binding.

Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
