Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFADE1710A1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 06:52:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1VuiaZV8+SkVgwMq/7etr1f5tJ7L8Pf0jj/Vqmzq09I=; b=IlvEXNMEZvzRE+
	+7oHFiL/KaLI1PSC/42vSFsl48szZj7Kgp2gTEbRud3oohyhGe8aZPg3TbofbTKiNdu8HgD+L1yaQ
	dRS5xixxG25lXbA7s8e8qMOUo0vAlrDlFXr7FFc8nf3F+xRZj/nxDfXYPfj0sbbIish0SSP9wfuqh
	16l8vOv06c961uA+bBvxCk1c9sQEo2u4Nr4gSQGy77TlWIJGgR/iSmgP9qItvE2SP6HgCrZBaGy4/
	so3YAgqEpbsRIMB5Ydezi7qxvtXRttPK0V0utyM9yNsdVhcbaUXCq/4NTCK0zLh4VS99+ToWk8Ui0
	SXZ9FjgRShQEh+GU5lnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7C67-0002ZC-TO; Thu, 27 Feb 2020 05:52:35 +0000
Received: from mail-qv1-xf41.google.com ([2607:f8b0:4864:20::f41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7C5y-0002YX-4z
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 05:52:28 +0000
Received: by mail-qv1-xf41.google.com with SMTP id dc14so999392qvb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 21:52:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sZQu+WBBvLP640mqKaU+qwV+X4smFrhhy0xX3FBTYWc=;
 b=lShIY13VzpvHtTzPD6VrWaYV6473ZNIIuGmSg6PtSGvQ+II/6GxiDCcX538DTWsUgQ
 sK0OOHwsYSLXqHQKkImNQ0CS09g2Pg2VezCrhHNnqEMZkoOLtV/p30D+MDGZeivvop1b
 cRvcb+He1yh0TWeC3qySOQ0/O3n7jsDvRiZAs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sZQu+WBBvLP640mqKaU+qwV+X4smFrhhy0xX3FBTYWc=;
 b=NLvPyyU4OzynIS0w5+W+pLvla0PgqD/WioC92/pbjWL4wntLne15UmKIpKVvY7aWec
 nydvrBye1KJK+heA3LWuhsw9p8oup92HFlTJFGrPd6duwD6Vtni4cqvAWHHkTFubcE7+
 xkU1mEDasK9k/0y6YvMR20CecsIX69HAcSmWCp496xUdzSfrwiR13RDf+asWywh1ydcu
 awGPUWCqtZEVWSI7PF5Y9MinFCNmIoBdk+B3dEPGmHq5I85avv9Z3iJHM62F3BVFxrfO
 nKV3FN8cO6/ubmkPi25SxouRMZi8xLUnl39TWVCV5CleJzX4bYg/A6D+TXp2qJl7cDxE
 iSRg==
X-Gm-Message-State: APjAAAVAX+Vmg+6kyvsXU5yBD0UXWXvlgWhbtvVEvA7kcjWKeL4GmJJv
 B2FE6sOEsxKWQQTrt1kUfLjtK+wF5xpep1w7CC0=
X-Google-Smtp-Source: APXvYqwy3wpzuLJo5yRO455kyQWeqLzrSaqVEDmh4g+F+ElnODT6EPqMVWP/Za8h8FVesx/hSV479+TkYYh+x6B/Hhk=
X-Received: by 2002:a0c:f6cd:: with SMTP id d13mr3059012qvo.20.1582782744480; 
 Wed, 26 Feb 2020 21:52:24 -0800 (PST)
MIME-Version: 1.0
References: <20200226230346.672-1-rentao.bupt@gmail.com>
 <20200226230346.672-8-rentao.bupt@gmail.com>
In-Reply-To: <20200226230346.672-8-rentao.bupt@gmail.com>
From: Joel Stanley <joel@jms.id.au>
Date: Thu, 27 Feb 2020 05:52:12 +0000
Message-ID: <CACPK8XfSHSFG2vkHnosDvBUw-FvVFvGuTCiA_HwAzor-LJ-YhQ@mail.gmail.com>
Subject: Re: [PATCH v4 7/7] dt-bindings: usb: add documentation for aspeed
 usb-vhub
To: Tao Ren <rentao.bupt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_215226_388836_74E8A6E9 
X-CRM114-Status: GOOD (  20.77  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [joel.stan[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>, Felipe Balbi <balbi@kernel.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 devicetree <devicetree@vger.kernel.org>, Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>, linux-usb@vger.kernel.org,
 Tao Ren <taoren@fb.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stephen Boyd <swboyd@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Colin Ian King <colin.king@canonical.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 26 Feb 2020 at 23:04, <rentao.bupt@gmail.com> wrote:
>
> From: Tao Ren <rentao.bupt@gmail.com>
>
> Add device tree binding documentation for aspeed usb-vhub driver.

A nitpick: the bindings are supposed to describe hardware, so we would
say this patch adds documentation for the hardware

>
> Signed-off-by: Tao Ren <rentao.bupt@gmail.com>

Reviewed-by: Joel Stanley <joel@jms.id.au>

> ---
>  No change in v2/v3/v4:
>    - the patch is added to the patch series since v4.
>
>  .../bindings/usb/aspeed,usb-vhub.yaml         | 71 +++++++++++++++++++
>  1 file changed, 71 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/usb/aspeed,usb-vhub.yaml
>
> diff --git a/Documentation/devicetree/bindings/usb/aspeed,usb-vhub.yaml b/Documentation/devicetree/bindings/usb/aspeed,usb-vhub.yaml
> new file mode 100644
> index 000000000000..6ebae46641e5
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/usb/aspeed,usb-vhub.yaml
> @@ -0,0 +1,71 @@
> +# SPDX-License-Identifier: GPL-2.0-or-later
> +# Copyright (c) 2020 Facebook Inc.
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/usb/aspeed,usb-vhub.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: ASPEED USB 2.0 Virtual Hub Controller
> +
> +maintainers:
> +  - Felipe Balbi <balbi@kernel.org>
> +
> +description: |+
> +  The ASPEED USB 2.0 Virtual Hub Controller implements 1 set of USB Hub
> +  register and several sets of Device and Endpoint registers to support
> +  the Virtual Hub's downstream USB devices.
> +
> +  Supported number of devices and endpoints vary depending on hardware
> +  revisions. AST2400 and AST2500 Virtual Hub supports 5 downstream devices
> +  and 15 generic endpoints, while AST2600 Virtual Hub supports 7 downstream
> +  devices and 21 generic endpoints.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - aspeed,ast2400-usb-vhub
> +      - aspeed,ast2500-usb-vhub
> +      - aspeed,ast2600-usb-vhub
> +
> +  reg:
> +    maxItems: 1
> +    description: Common configuration registers
> +
> +  clocks:
> +    maxItems: 1
> +    description: The Virtual Hub Controller clock gate
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  aspeed,vhub-downstream-ports:
> +    description: Number of downstream ports supported by the Virtual Hub
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +
> +  aspeed,vhub-generic-endpoints:
> +    description: Number of generic endpoints supported by the Virtual Hub
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - interrupts
> +  - aspeed,vhub-downstream-ports
> +  - aspeed,vhub-generic-endpoints
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/aspeed-clock.h>
> +    vhub: usb-vhub@1e6a0000 {
> +            compatible = "aspeed,ast2500-usb-vhub";
> +            reg = <0x1e6a0000 0x300>;
> +            interrupts = <5>;
> +            clocks = <&syscon ASPEED_CLK_GATE_USBPORT1CLK>;
> +            pinctrl-names = "default";
> +            pinctrl-0 = <&pinctrl_usb2ad_default>;
> +    };
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
