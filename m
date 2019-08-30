Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B589A3A89
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 17:40:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DgHBLdxorQYmXRGTKfwqqNPxzefZSsjn0ZDplkU+5qc=; b=HhrjZjp6eXOB/N
	EHzMKqLl5YvE+qNCqcZS+T/VVq/Ei+LtOwwydUMIfQWSn9TjgOEAIZOav6SBptv44X6jzMEN6S98H
	wzPqNxchSDfN/r6YoXbn6VZWownt4saiW+XgC/Xnzpup6JyInpYIUQmyzrIlxNTu4Y7Q9O+y2D4r/
	UGyRiFDHKSW2acptr1SPi8cFwq9U3znS4UBytJvkNE1fLeNaS9my6vWe57xODjexc78xUb9YPnGUG
	+zfPcN8hN3yyXmo/4xq95f2uRDPdaTIdhZ3W2YCIatZOZySKm9CZYDIj/vd6tM2UDugsbCYCKUgFJ
	eOhhgRtkjZBl4i6JTdBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3j0h-0002at-Dt; Fri, 30 Aug 2019 15:40:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3j0W-0002aH-Mn
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 15:40:14 +0000
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com
 [209.85.222.171])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 417F223407
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 15:40:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567179612;
 bh=CUBbtf0vFE1nde+pP9wjLrp16M7oNNsE0ztDeDpMvyo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Q9KQy+YNdu84KhVBk69egisbxRYLE/HKPlOTSlqZe57iWo9vMXok3Nmyx+Idugazf
 uov3Haq9DUc0OtxaHeHBGe5ogz0Y8J9pO6LPBo/1lZFqnddceSidF0FScV55z/uHN4
 jpB3TKCjA5zLCiBX0VbnE/apd1nrB3bQSyCG3Tz4=
Received: by mail-qk1-f171.google.com with SMTP id u190so6523706qkh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 08:40:12 -0700 (PDT)
X-Gm-Message-State: APjAAAXA0peW3V8im8+1L4qKQ+YUCbckKMu2MWHb0rbZNIN/RSvBKxKN
 eMb9yOhnyVKUQiJdfejJd5+ZoPLjXEb3+GMSeg==
X-Google-Smtp-Source: APXvYqz2kJmiA9uqtucgQvwHXjcvlcKaTwpYdryTknADMy0ucjESEufasarQtlB0mHHN2UX16jnnn8whJSasvKnnXPA=
X-Received: by 2002:a37:8905:: with SMTP id l5mr16254270qkd.152.1567179611442; 
 Fri, 30 Aug 2019 08:40:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190828125209.28173-1-mripard@kernel.org>
 <20190828125209.28173-4-mripard@kernel.org>
In-Reply-To: <20190828125209.28173-4-mripard@kernel.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 30 Aug 2019 10:39:59 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLMvKUu0hp6rSGn=KtPHGe++r4dYyAZcDfLgy16pUi2Bg@mail.gmail.com>
Message-ID: <CAL_JsqLMvKUu0hp6rSGn=KtPHGe++r4dYyAZcDfLgy16pUi2Bg@mail.gmail.com>
Subject: Re: [PATCH v2 4/5] ASoC: dt-bindings: Convert Allwinner A23 analog
 codec to a schema
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_084012_786321_0D4F0E8C 
X-CRM114-Status: GOOD (  20.08  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Linux-ALSA <alsa-devel@alsa-project.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>, Mark Brown <broonie@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 28, 2019 at 7:52 AM Maxime Ripard <mripard@kernel.org> wrote:
>
> From: Maxime Ripard <maxime.ripard@bootlin.com>
>
> The Allwinner A23 SoC and later have an embedded audio codec that uses a
> separate controller to drive its analog part, which is supported in Linux,
> with a matching Device Tree binding.
>
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
>
> ---
>
> Changes from v1:
>   - Fix subject prefix
> ---
>  .../allwinner,sun8i-a23-codec-analog.yaml     | 38 +++++++++++++++++++
>  .../bindings/sound/sun8i-codec-analog.txt     | 17 ---------
>  2 files changed, 38 insertions(+), 17 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/sound/allwinner,sun8i-a23-codec-analog.yaml
>  delete mode 100644 Documentation/devicetree/bindings/sound/sun8i-codec-analog.txt
>
> diff --git a/Documentation/devicetree/bindings/sound/allwinner,sun8i-a23-codec-analog.yaml b/Documentation/devicetree/bindings/sound/allwinner,sun8i-a23-codec-analog.yaml
> new file mode 100644
> index 000000000000..832779389cbd
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/allwinner,sun8i-a23-codec-analog.yaml
> @@ -0,0 +1,38 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/allwinner,sun8i-a23-codec-analog.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Allwinner A23 Analog Codec Device Tree Bindings
> +
> +maintainers:
> +  - Chen-Yu Tsai <wens@csie.org>
> +  - Maxime Ripard <maxime.ripard@bootlin.com>
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      # FIXME: This is documented in the PRCM binding, but needs to be
> +      # migrated here at some point
> +      # - const: allwinner,sun8i-a23-codec-analog
> +      - const: allwinner,sun8i-h3-codec-analog
> +      - const: allwinner,sun8i-v3s-codec-analog

enum is nicer than oneOf+const.

> +
> +  reg:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    codec_analog: codec-analog@1f015c0 {
> +      compatible = "allwinner,sun8i-h3-codec-analog";
> +      reg = <0x01f015c0 0x4>;
> +    };
> +
> +...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
