Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49CCF14B908
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 15:32:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fnWu5wGmARilMwtfFb08xQUQqiO8c+4GWr6wgTi1ig0=; b=jQiv4f7LDFmTx6
	hmp0ZnuorVeiMDFNJCxlyW07FkwI03dZuS0izGARqlYOY33Tz+TcfTkvNI2RVxlqKOWgw5tNut99o
	g7bsO3L2UIKTG5+4cnl1QNpX1ryOpqOLBxWJtL/GNaTYaijbZwrsTjAvyc29ttwxkBOTShUMz+bBm
	4NjTzmGHLajCte3hSojE31HUPu+JP6/2WIllJqss2cw+KhsoguOmV89c6pc/SUIaJ+VlDyGSBKtIv
	XGpw2Qe3V5aBm8OtusySY9muT3vHR4Bc9qrkvU238Y88hJyZnwFQq2IVvDNZai33CHwZ3DvtY6KBb
	u4O3WHbdhpnAYAPI3rew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwRvC-0003U3-KL; Tue, 28 Jan 2020 14:32:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwRv3-0003TT-JI
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 14:32:47 +0000
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com
 [209.85.160.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B888921739
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Jan 2020 14:32:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580221964;
 bh=fA/B9G2d55+a4zcXyCidgiM1scGvdikipkUh8OpG4sQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=MLS7Zcg4zXSPe+6gNb2Cn5obrCxVmF5+KeRZagHBXY0a7BCv6kmpja/aD6LjRSn0s
 Y7Cg60PYjuZgJQvUayAb+2Tj2eq7yBOxq2AdFcCM358FOlrutYHzN4w4t0TN8U3tYf
 KGlRim/aP+H4VqkcQuw/qManASrFZ4ddbd+JXHNs=
Received: by mail-qt1-f173.google.com with SMTP id e25so10359589qtr.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 Jan 2020 06:32:44 -0800 (PST)
X-Gm-Message-State: APjAAAV24umI6dOO2307YyFkdClSlCtG4S9ldNj9HLXSKVq+Tx+ZF9eq
 xS3R75uc8RPdl3GJT7voOFasmhXHqG4SIhwvBw==
X-Google-Smtp-Source: APXvYqzxJnZDHkxRQDe9t+Eah8Fx57BBszoCD+dphD/GZrMOT/aXuj/TVsyJGpZsYv/1fLKoBTwELyq9kDRKgm/tJlU=
X-Received: by 2002:aed:2344:: with SMTP id i4mr21770697qtc.136.1580221963861; 
 Tue, 28 Jan 2020 06:32:43 -0800 (PST)
MIME-Version: 1.0
References: <20191229204421.337612-1-alexandre.belloni@bootlin.com>
 <20191229204421.337612-2-alexandre.belloni@bootlin.com>
In-Reply-To: <20191229204421.337612-2-alexandre.belloni@bootlin.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 28 Jan 2020 08:32:32 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+nQbZkY_oDhCCTGr02xWxUXvCVaWZ8KZHkDhsgawM_wA@mail.gmail.com>
Message-ID: <CAL_Jsq+nQbZkY_oDhCCTGr02xWxUXvCVaWZ8KZHkDhsgawM_wA@mail.gmail.com>
Subject: Re: [PATCH 2/9] dt-bindings: rtc: at91rm9200: convert bindings to
 json-schema
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_063245_678359_16DE0B5F 
X-CRM114-Status: GOOD (  16.27  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:REAL TIME CLOCK \(RTC\) SUBSYSTEM" <linux-rtc@vger.kernel.org>,
 Eugen Hristev <Eugen.Hristev@microchip.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Dec 29, 2019 at 2:45 PM Alexandre Belloni
<alexandre.belloni@bootlin.com> wrote:
>
> Convert Real Time Clock for Atmel/Microchip SoCs bindings documentation
> to json-schema.
>
> Cc: Rob Herring <robh+dt@kernel.org>
> Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> ---
>  .../bindings/rtc/atmel,at91rm9200-rtc.txt     | 17 --------
>  .../bindings/rtc/atmel,at91rm9200-rtc.yaml    | 42 +++++++++++++++++++
>  2 files changed, 42 insertions(+), 17 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/rtc/atmel,at91rm9200-rtc.txt
>  create mode 100644 Documentation/devicetree/bindings/rtc/atmel,at91rm9200-rtc.yaml
>
> diff --git a/Documentation/devicetree/bindings/rtc/atmel,at91rm9200-rtc.txt b/Documentation/devicetree/bindings/rtc/atmel,at91rm9200-rtc.txt
> deleted file mode 100644
> index 5d3791e789c6..000000000000
> --- a/Documentation/devicetree/bindings/rtc/atmel,at91rm9200-rtc.txt
> +++ /dev/null
> @@ -1,17 +0,0 @@
> -Atmel AT91RM9200 Real Time Clock
> -
> -Required properties:
> -- compatible: should be: "atmel,at91rm9200-rtc" or "atmel,at91sam9x5-rtc"
> -- reg: physical base address of the controller and length of memory mapped
> -  region.
> -- interrupts: rtc alarm/event interrupt
> -- clocks: phandle to input clock.
> -
> -Example:
> -
> -rtc@fffffe00 {
> -       compatible = "atmel,at91rm9200-rtc";
> -       reg = <0xfffffe00 0x100>;
> -       interrupts = <1 4 7>;
> -       clocks = <&clk32k>;
> -};
> diff --git a/Documentation/devicetree/bindings/rtc/atmel,at91rm9200-rtc.yaml b/Documentation/devicetree/bindings/rtc/atmel,at91rm9200-rtc.yaml
> new file mode 100644
> index 000000000000..55bd87e884d3
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/rtc/atmel,at91rm9200-rtc.yaml
> @@ -0,0 +1,42 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/rtc/atmel,at91rm9200-rtc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Atmel AT91 RTC Device Tree Bindings
> +
> +allOf:
> +  - $ref: "rtc.yaml#"
> +
> +maintainers:
> +  - Alexandre Belloni <alexandre.belloni@bootlin.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - atmel,at91rm9200-rtc
> +      - atmel,at91sam9x5-rtc
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    rtc@fffffe00 {
> +        compatible = "atmel,at91rm9200-rtc";
> +        reg = <0xfffffe00 0x100>;
> +        interrupts = <1 4 7>;
> +        clocks = <&clk32k>;

clocks is not documented.

Looks like this landed in linux-next now and breaks 'make dt_binding_check':

/builds/robherring/linux-dt-bindings/Documentation/devicetree/bindings/rtc/atmel,at91rm9200-rtc.example.dt.yaml:
rtc@fffffe00: 'clocks' does not match any of the regexes:
'pinctrl-[0-9]+'

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
