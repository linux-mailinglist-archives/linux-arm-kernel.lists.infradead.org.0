Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F695128526
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 23:45:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S0Vq70s1j5iuxRP6fbl0gr9d5+IHje9jX4jscFrFdyM=; b=DS1xNa8Uk/YCRJ
	5t/4tgfNP7lgbLTaXgmL3eQKNA5egcKvOj9tHU05V2P2bl3WKwCaIaAVMEFr0xbJaxM3LGLPJZlB0
	KD7hnKMJXvNYsT0p28n11mMaQBVfOVop+NC80wFdMEOhxFBNLPKi6wbqHVkJJ6og115cJZhYS79ht
	li3CE16MXf8s1PlNx8nko+q/Xy+qFzdE+Mm/iqdq0GMB0/GSVEL+F+h/qeWrv7dKkOctgpt8rAjyu
	8q8nGCTSipSob1EvVuRwD2zXnZyZ+CrqIW6IMrqjI8mO4I6k8BH+iTmZ9rU90EW0kuL4yb6fc07ge
	yrKoYMz9LFcbtko3ZRig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiR1G-0008Ta-QR; Fri, 20 Dec 2019 22:45:14 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiR10-0008T2-8I
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 22:44:59 +0000
Received: by mail-io1-f65.google.com with SMTP id c16so7388431ioo.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Dec 2019 14:44:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=7WksmJcfldBGfJZrpiFcVuuuNcslqmFm7JaA1MXSRJw=;
 b=C78U6nwZC2NSmfXqblv7owluKwMwNIiG/Umc242ub1TTCs8CzBXQ+wz8OAwylOQTjx
 j/b4w+S7z4j+1xmUrWCeA5S8Q9gaaLTsKBUq0tvAhVV2onjXT60uBdY1mhQDv5lRo5Vt
 j4xt7ImRt9nzKIeFGcwdzzMRWazgYNwemxksT9KEMbK25MypFl2GBzQ8TCbhJcAJ/t7u
 rToywoyqBjRcmhRnG/Tlvl14N4wMNnDAvWTv0hOJW4ggpKViHz3LTP6fPS827kEzeKdg
 sVrKI/BiGyiUiUyPe2/CNj0v8piB1m0JiPIUl07bNe2oBxqcpaqM6BwcxudJjAqZm9me
 qYsA==
X-Gm-Message-State: APjAAAUgzwQ3iLUTyxCzEpCEh4aoOQJ4YvZR4pxverDCgl/hTSSERf5L
 Ej390vJg2GjO4nUZQs4pYQ==
X-Google-Smtp-Source: APXvYqwtuXnxyLzSziWitzIzubl3H2AMh1E7q6ytM/gh5JGmnxiN9pRqFX6kE1zi5VLp9PQSEdPfJg==
X-Received: by 2002:a02:a309:: with SMTP id q9mr14248125jai.141.1576881897182; 
 Fri, 20 Dec 2019 14:44:57 -0800 (PST)
Received: from localhost ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id e85sm5472679ilk.78.2019.12.20.14.44.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Dec 2019 14:44:56 -0800 (PST)
Date: Fri, 20 Dec 2019 15:44:55 -0700
From: Rob Herring <robh@kernel.org>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 1/3] dt-bindings: clocks: Convert Allwinner legacy clocks
 to schemas
Message-ID: <20191220224455.GA18967@bogus>
References: <20191219090712.947490-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191219090712.947490-1-maxime@cerno.tech>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_144458_298349_CD93CDD8 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.65 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 Frank Rowand <frowand.list@gmail.com>,
 Mike Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@codeaurora.org>,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
 p.zabel@pengutronix.de, lee.jones@linaro.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 19 Dec 2019 10:07:10 +0100, Maxime Ripard wrote:
> The Allwinner SoCs have a legacy set of bindings (and a framework to
> support it in Linux) for their clock controllers.
> 
> Now that we have the DT validation in place, let's split into separate file
> and convert the device tree bindings for those clocks to schemas, and mark
> them all as deprecated.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  .../clock/allwinner,sun4i-a10-ahb-clk.yaml    | 108 +++++++++
>  .../clock/allwinner,sun4i-a10-apb0-clk.yaml   |  50 ++++
>  .../clock/allwinner,sun4i-a10-apb1-clk.yaml   |  52 ++++
>  .../clock/allwinner,sun4i-a10-axi-clk.yaml    |  61 +++++
>  .../clock/allwinner,sun4i-a10-cpu-clk.yaml    |  52 ++++
>  .../allwinner,sun4i-a10-display-clk.yaml      |  57 +++++
>  .../clock/allwinner,sun4i-a10-gates-clk.yaml  | 152 ++++++++++++
>  .../clock/allwinner,sun4i-a10-mbus-clk.yaml   |  63 +++++
>  .../clock/allwinner,sun4i-a10-mmc-clk.yaml    |  87 +++++++
>  .../clock/allwinner,sun4i-a10-mod0-clk.yaml   |  80 +++++++
>  .../clock/allwinner,sun4i-a10-mod1-clk.yaml   |  57 +++++
>  .../clock/allwinner,sun4i-a10-osc-clk.yaml    |  51 ++++
>  .../clock/allwinner,sun4i-a10-pll1-clk.yaml   |  71 ++++++
>  .../clock/allwinner,sun4i-a10-pll3-clk.yaml   |  50 ++++
>  .../clock/allwinner,sun4i-a10-pll5-clk.yaml   |  53 +++++
>  .../clock/allwinner,sun4i-a10-pll6-clk.yaml   |  53 +++++
>  .../allwinner,sun4i-a10-tcon-ch0-clk.yaml     |  77 ++++++
>  .../clock/allwinner,sun4i-a10-usb-clk.yaml    | 166 +++++++++++++
>  .../clock/allwinner,sun4i-a10-ve-clk.yaml     |  55 +++++
>  .../clock/allwinner,sun5i-a13-ahb-clk.yaml    |  52 ++++
>  .../clock/allwinner,sun6i-a31-pll6-clk.yaml   |  53 +++++
>  .../clock/allwinner,sun7i-a20-gmac-clk.yaml   |  51 ++++
>  .../clock/allwinner,sun7i-a20-out-clk.yaml    |  52 ++++
>  .../allwinner,sun8i-h3-bus-gates-clk.yaml     | 103 ++++++++
>  .../clock/allwinner,sun9i-a80-ahb-clk.yaml    |  52 ++++
>  .../clock/allwinner,sun9i-a80-apb0-clk.yaml   |  63 +++++
>  .../clock/allwinner,sun9i-a80-cpus-clk.yaml   |  52 ++++
>  .../clock/allwinner,sun9i-a80-gt-clk.yaml     |  52 ++++
>  .../allwinner,sun9i-a80-mmc-config-clk.yaml   |  68 ++++++
>  .../clock/allwinner,sun9i-a80-pll4-clk.yaml   |  50 ++++
>  .../allwinner,sun9i-a80-usb-mod-clk.yaml      |  60 +++++
>  .../allwinner,sun9i-a80-usb-phy-clk.yaml      |  60 +++++
>  .../devicetree/bindings/clock/sunxi.txt       | 225 ------------------
>  33 files changed, 2163 insertions(+), 225 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-ahb-clk.yaml
>  create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-apb0-clk.yaml
>  create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-apb1-clk.yaml
>  create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-axi-clk.yaml
>  create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-cpu-clk.yaml
>  create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-display-clk.yaml
>  create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-gates-clk.yaml
>  create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-mbus-clk.yaml
>  create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-mmc-clk.yaml
>  create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-mod0-clk.yaml
>  create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-mod1-clk.yaml
>  create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-osc-clk.yaml
>  create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-pll1-clk.yaml
>  create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-pll3-clk.yaml
>  create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-pll5-clk.yaml
>  create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-pll6-clk.yaml
>  create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-tcon-ch0-clk.yaml
>  create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-usb-clk.yaml
>  create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun4i-a10-ve-clk.yaml
>  create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun5i-a13-ahb-clk.yaml
>  create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun6i-a31-pll6-clk.yaml
>  create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun7i-a20-gmac-clk.yaml
>  create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun7i-a20-out-clk.yaml
>  create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun8i-h3-bus-gates-clk.yaml
>  create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-ahb-clk.yaml
>  create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-apb0-clk.yaml
>  create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-cpus-clk.yaml
>  create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-gt-clk.yaml
>  create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-mmc-config-clk.yaml
>  create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-pll4-clk.yaml
>  create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-usb-mod-clk.yaml
>  create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-usb-phy-clk.yaml
>  delete mode 100644 Documentation/devicetree/bindings/clock/sunxi.txt
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
