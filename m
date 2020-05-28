Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12BA61E53D1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 04:18:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AIWDbACeuOxupWZbOdy8L6JBU8whBjDifne6ay4oREI=; b=ojCLC7kNJPFrRw
	qvhjZgSStrdcaLswQG+TSwCX/HH9qyUUar/+FQf4AdklA3wN3K/bDRfqhR6lMVh2i0enSPUuWg7bg
	gC3zx5cbI7Rnjyz81wVvlfCXoUF8qRbeYEdcac/z3L0LjL0upbFiAlKb3SuhvLMe4x9l1oAw1mv8E
	HCp7sHcr+ZJU74WknPlpmnfMY2PSnKdD6pkL7Y/y7ApEsTwISbNEAyu/1NxFvbZL/Ss1ReXMU228W
	jx6hLwNL8ORQs8mWovujiVHyx80SiwIfmTq986WvcX5u0T/f3dU3a2ayZnexAS9fvIb1lEwQRFeSm
	sTj2O/v97EyC/kLaFbpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je881-0001mO-C0; Thu, 28 May 2020 02:18:41 +0000
Received: from mail-il1-f194.google.com ([209.85.166.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je87p-0001lg-Eh
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 02:18:31 +0000
Received: by mail-il1-f194.google.com with SMTP id a14so26136096ilk.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 19:18:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=kltOMpJbIDHqgiVTyTHUiwKcDlpFvBKVIUzBWkM4zNU=;
 b=LPNykEN8gdm68G8uc6lG6Ry+Yg/qRiAXpeco9/vdMIFj38TbRr7U8yQyQTTX5/Cfuv
 KamWNLDQe0o9HFg5UHZ75hCwzLH3M37b7FH5aiSniSZ43V2HhrKORI5Su20TDaDwdJgb
 0kSw7P3LYXz2Qv+twYHfRt8rg/GokDz7ZYDzWCtNEoawS4++7y9Fch2O1qYE4C3UVuA2
 6IkjlXqjRJkaIgofWRb+/LgFayMoWYJcVZcxOCQLvB6oLTCs7J09sQrOcyIQdyLsCVZJ
 gIp2p1wBwdevIjzwzW7zhW31FOIuIGoBbzB2h9C8oFOj+YlfgZ+MoEBVtAXBB9BUmcSU
 w4Ow==
X-Gm-Message-State: AOAM533qXHt5/kJwjV1483CpjOJ+qUKuy9QcTv6KHw4mzpRQA7bo4Toa
 HTcd8PTnAAv5JB7HggJi30Vd6nM=
X-Google-Smtp-Source: ABdhPJyQklBA7zhhBevQrvYgoJ+/iCs+760GP/ErwqCeqexJ7KvCqkPZY0e8thS5U2igqZQbCPbZng==
X-Received: by 2002:a92:9f82:: with SMTP id z2mr950652ilk.59.1590632307912;
 Wed, 27 May 2020 19:18:27 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id s71sm2536741ilc.32.2020.05.27.19.18.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 19:18:27 -0700 (PDT)
Received: (nullmailer pid 3229541 invoked by uid 1000);
 Thu, 28 May 2020 02:18:26 -0000
Date: Wed, 27 May 2020 20:18:26 -0600
From: Rob Herring <robh@kernel.org>
To: Lars Povlsen <lars.povlsen@microchip.com>
Subject: Re: [PATCH 10/14] dt-bindings: clock: sparx5: Add Sparx5 SoC DPLL
 clock
Message-ID: <20200528021826.GA3221035@bogus>
References: <20200513125532.24585-1-lars.povlsen@microchip.com>
 <20200513125532.24585-11-lars.povlsen@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513125532.24585-11-lars.povlsen@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_191829_494153_C0497952 
X-CRM114-Status: GOOD (  15.63  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.194 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Arnd Bergmann <arnd@arndb.de>, linux-gpio@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Steen Hegelund <Steen.Hegelund@microchip.com>,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 Michael Turquette <mturquette@baylibre.com>, SoC Team <soc@kernel.org>,
 Olof Johansson <olof@lixom.net>, Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 02:55:28PM +0200, Lars Povlsen wrote:
> This add the DT bindings documentation for the Sparx5 SoC DPLL clock
> 
> Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
> ---
>  .../bindings/clock/microchip,sparx5-dpll.yaml | 46 +++++++++++++++++++
>  1 file changed, 46 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/microchip,sparx5-dpll.yaml
> 
> diff --git a/Documentation/devicetree/bindings/clock/microchip,sparx5-dpll.yaml b/Documentation/devicetree/bindings/clock/microchip,sparx5-dpll.yaml
> new file mode 100644
> index 0000000000000..594007d8fc59a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/microchip,sparx5-dpll.yaml
> @@ -0,0 +1,46 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/clock/microchip,sparx5-dpll.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Microchip Sparx5 DPLL Clock
> +
> +maintainers:
> +  - Lars Povlsen <lars.povlsen@microchip.com>
> +
> +description: |
> +  The Sparx5 DPLL clock controller generates and supplies clock to
> +  various peripherals within the SoC.
> +
> +  This binding uses common clock bindings
> +  [1] Documentation/devicetree/bindings/clock/clock-bindings.txt
> +
> +properties:
> +  compatible:
> +    const: microchip,sparx5-dpll
> +
> +  reg:
> +    items:
> +      - description: dpll registers

For a single entry, just:

maxItems: 1

> +
> +  '#clock-cells':
> +    const: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - '#clock-cells'
> +
> +additionalProperties: false
> +
> +examples:
> +  # Clock provider for eMMC:
> +  - |
> +    clks: clks@61110000c {

clock-controller@1110000c {

> +         compatible = "microchip,sparx5-dpll";
> +         #clock-cells = <1>;
> +         reg = <0x1110000c 0x24>;

Looks like this is a sub-block in some other h/w block. What's the 
parent device? That should be described and this should be part of it 
either as a single node or a child node. Without a complete view of what 
this block has I can't provide any guidance.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
