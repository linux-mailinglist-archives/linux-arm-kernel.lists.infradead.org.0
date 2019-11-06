Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3491F0DC8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 05:24:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tw1caVe+vzFpvnetCGQKFAlEy6mzi52hTotYHQ8jHng=; b=tC/DRq+EcOVzho
	/0ATDCnmYgQwVSPJovfSG5jNtYUNJEyDiq/cl3E33Zii5lS4Gn8HykfL8LZ4YBHB+Fu5mEtpi3XMO
	gu4C+E6+nIv5HLID9ZiS/19j1a47RP3XkbU7bMi2ZPXbj2RJE36CYIevBijbzfO0IzWk2QHIBJ1c7
	dc0S6SyDEoz/JJ2b603/PiulvkSbWsYFgC417vrLMmeFp4DesFCDGAXopnQ+wN6sxL8QoBNuMf6G5
	aPRNLd2scLEXTEKz8ABga2vusGGkBD3wQGLt0yU6OdVKk/4KM1brJo+Qdfu8RZL6HTdad9cFQo2T+
	Oo0k46IVS5hZUKk8PX0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSCrR-0001uj-N1; Wed, 06 Nov 2019 04:24:01 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSCrK-0001uD-8R
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 04:23:55 +0000
Received: by mail-ot1-f67.google.com with SMTP id b16so19700997otk.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 20:23:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Y3DWYeqriebyJFdljdEg8brbxtOMqiGsmKQQNplT8xE=;
 b=UYEjyT7WBRf+hrTC9v8hNGAcJUJmlaUv82DcCkE5uNIzeQ1KsXy2u5z+/ZHmKTmYt5
 IXj463WXE8BQxuulUU1DlWWIeXpHydq9sq+c0lgWl04X3FT02WzmT6aMtLH5D2ck42n9
 BhYzEX+ed6qdap7JppxyJyRURUe/lnw8FmJ+szX0CK6gHIMLclWOqOIR1FFIk/h//aN1
 WBt+ylmFvPrDgzIqr3LvDqkhd0/itaK1cr9ZNugPYnJgzYyGooJlMJ6/pa9cyKJ59yzU
 wKEvCL3KBVL6Iyi0RjPsIOZTQa8zMARuXPCvKIkzyunBZYDjbmPb/RIqipDpKZIMvbDB
 52Zg==
X-Gm-Message-State: APjAAAWxBMrmQIADTnnbJUsCIi6zPyxkVYbn4k21O0NA5vTQf9vcdpPw
 jJJna0SMfP4Afz/zlXRbKA==
X-Google-Smtp-Source: APXvYqzQ+l/JcEI46WoYprObfXoM6iP7CyYkO456aCXMJEI/MIzZv/4G1PDLLfBo29MhM+ZkF2rCnw==
X-Received: by 2002:a9d:6285:: with SMTP id x5mr274924otk.267.1573014232412;
 Tue, 05 Nov 2019 20:23:52 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id j9sm6220801oij.15.2019.11.05.20.23.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 20:23:51 -0800 (PST)
Date: Tue, 5 Nov 2019 22:23:51 -0600
From: Rob Herring <robh@kernel.org>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH] dt-bindings: Remove FIXME in yaml bindings
Message-ID: <20191106042351.GA4131@bogus>
References: <20191101135808.259371-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191101135808.259371-1-maxime@cerno.tech>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_202354_299085_48C597C2 
X-CRM114-Status: GOOD (  12.85  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <maxime@cerno.tech>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri,  1 Nov 2019 14:58:08 +0100, Maxime Ripard wrote:
> Some binding that were introduced early on got a comment to enable
> additionalProperties, but we couldn't due to the generic properties being
> reported as errors.
> 
> The way we're dealing with this now is to use the draft-08's
> unevaluatedProperties (even though the tools doesn't do anything with it
> yet).
> 
> Let's convert those old bindings to it.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  .../devicetree/bindings/dma/allwinner,sun50i-a64-dma.yaml   | 4 +---
>  .../devicetree/bindings/i2c/allwinner,sun6i-a31-p2wi.yaml   | 4 +---
>  .../devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml        | 4 +---
>  .../interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml    | 4 +---
>  .../devicetree/bindings/media/allwinner,sun4i-a10-ir.yaml   | 4 +---
>  .../devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml    | 6 ++----
>  .../devicetree/bindings/net/allwinner,sun4i-a10-emac.yaml   | 6 ++----
>  .../devicetree/bindings/net/allwinner,sun4i-a10-mdio.yaml   | 6 ++----
>  .../devicetree/bindings/net/allwinner,sun7i-a20-gmac.yaml   | 6 ++----
>  .../devicetree/bindings/net/allwinner,sun8i-a83t-emac.yaml  | 6 ++----
>  .../devicetree/bindings/nvmem/allwinner,sun4i-a10-sid.yaml  | 4 +---
>  11 files changed, 16 insertions(+), 38 deletions(-)
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
