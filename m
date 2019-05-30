Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4DA02E9BB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 02:34:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W88dy+aKjKDB/N6dprxYyQQQQFP2NAdzDG5KSR40dVQ=; b=Lj96PFxDqu5G6p
	wxzsbHg7vUUGlaGxe6ONyXF3Ecd5nC+8m69I0WUT0NjoMYLWBFnAS7rgeRyyFSJ755M+o0HYefpYG
	rTQA9oJDPQZKVoebL7PHPHwPLUgAbhyuOy3OAafHpqz9LHx4BVte7KpW2RpMx2hOuFTeN7O+i6P9C
	w+Mrp56IqI24Gz/UrTtHhFhMRyZvdzNXMLlRgLIhYrtcvv6KW0RCDrnf4GUr0VknJVsQiY/Jh0TP+
	syD9kBSx2wGK0m5lzu9Nm3z4hWdcSv2oQcJfuRwZgOb6ydjATworyWjzeVSlsk0DEC/haygY8nL0m
	WihQEDkdVTPWGhuY6pfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW91c-0003JI-0p; Thu, 30 May 2019 00:34:32 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW91V-0003IX-1j
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 00:34:26 +0000
Received: by mail-qk1-x743.google.com with SMTP id t64so2785370qkh.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 17:34:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KHD+sHVUPLQmygDU5dgl8aDe2PTeVVrxe8ejiYsJbzA=;
 b=nW0+RjTgr112JeSC0qx2gUZmFr6cGCDqdl+BpCHWqJuE+d78Bs5iJJebC6syz05H1g
 APITCHaqFOtnhiPTw51uDWFk0zRdcaug6U0SqwHUL+FX62RpIXyMwquSehD4D9wCa9Nz
 DjkgdB2ypi/hj1qa/QKZLnb8qvc1wkMBkifao=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KHD+sHVUPLQmygDU5dgl8aDe2PTeVVrxe8ejiYsJbzA=;
 b=mEhy28dI91yaU+cd//Vp76es73z1rQY9Udw0du5zYnd31h9cY+sDC6ECUTyzc8unaj
 3RajvA+4pYp7WWmEKKFNzeJl9aEvuXq5UtlgUi8xqjOQ/O9pXVAO4jCNw7MBzJidLBt0
 4lQi/IHqnjfoABcx9VcwCZeUau4Ncb3JfpWvDJhSeVS+ojzT7vxrSwH7w/P2Lp78Ou+2
 GdAPnksGIcosoL9rS6dt6vVNUqX28skg1yrVuj7L5k6NAkwUP23X5l8sf+LYESzM4OXx
 lcfRROZcMCIKxMMrQpP3O2B3EeHEOk5Xwtk58caNunaOCtFBpi3JmmgsmoaYLGsUZi9O
 yJxw==
X-Gm-Message-State: APjAAAVr29CerMti1S9uDHE/XMk4K20EGvDLFQcEF7YdNMMrBNkbZqR0
 MkZWTVa4IOmtRuFP1hkLc74pjuCpvFAwcmaWAj8=
X-Google-Smtp-Source: APXvYqxYyCeKyYUztJa3DHENKeZigts1pQtuupR+90lPSZNjZI5bKFuOpg4mU0O5bqKNHFmvb0879Dook4z1MhjB/qo=
X-Received: by 2002:a37:a10b:: with SMTP id k11mr713236qke.76.1559176459320;
 Wed, 29 May 2019 17:34:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190527112753.1681-1-a.filippov@yadro.com>
In-Reply-To: <20190527112753.1681-1-a.filippov@yadro.com>
From: Joel Stanley <joel@jms.id.au>
Date: Thu, 30 May 2019 00:34:04 +0000
Message-ID: <CACPK8XeXh8uiQ6f5LWJRBJ=VwMAvdPHOo34uHhWZyMFBG2HVqw@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: aspeed: g4: add video engine support
To: Alexander Filippov <a.filippov@yadro.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_173425_094834_B1FEA31B 
X-CRM114-Status: GOOD (  17.63  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Alexander,

On Mon, 27 May 2019 at 11:28, Alexander Filippov <a.filippov@yadro.com> wrote:
>
> Add a node to describe the video engine and VGA scratch registers on
> AST2400.

The scratch registers are unrelated to the video engine. As Andrew
pointed out, the bindings are not upstream either.

Can you re-spin this patch wit just the video engine changes?

We also need a platform to enable and test this on. Can you submit the
device tree for your system?

>
> These changes were copied from aspeed-g5.dtsi
>
> Signed-off-by: Alexander Filippov <a.filippov@yadro.com>
> ---
>  arch/arm/boot/dts/aspeed-g4.dtsi | 62 ++++++++++++++++++++++++++++++++
>  1 file changed, 62 insertions(+)
>
> diff --git a/arch/arm/boot/dts/aspeed-g4.dtsi b/arch/arm/boot/dts/aspeed-g4.dtsi
> index 6011692df15a..adc1804918df 100644
> --- a/arch/arm/boot/dts/aspeed-g4.dtsi
> +++ b/arch/arm/boot/dts/aspeed-g4.dtsi
> @@ -168,6 +168,10 @@
>                                         compatible = "aspeed,g4-pinctrl";
>                                 };
>
> +                               vga_scratch: scratch {
> +                                       compatible = "aspeed,bmc-misc";
> +                               };
> +
>                                 p2a: p2a-control {
>                                         compatible = "aspeed,ast2400-p2a-ctrl";
>                                         status = "disabled";
> @@ -195,6 +199,16 @@
>                                 reg = <0x1e720000 0x8000>;      // 32K
>                         };
>
> +                       video: video@1e700000 {
> +                               compatible = "aspeed,ast2400-video-engine";
> +                               reg = <0x1e700000 0x1000>;
> +                               clocks = <&syscon ASPEED_CLK_GATE_VCLK>,
> +                                        <&syscon ASPEED_CLK_GATE_ECLK>;
> +                               clock-names = "vclk", "eclk";
> +                               interrupts = <7>;
> +                               status = "disabled";
> +                       };
> +
>                         gpio: gpio@1e780000 {
>                                 #gpio-cells = <2>;
>                                 gpio-controller;
> @@ -1408,6 +1422,54 @@
>         };
>  };
>
> +&vga_scratch {
> +       dac_mux {
> +               offset = <0x2c>;
> +               bit-mask = <0x3>;
> +               bit-shift = <16>;
> +       };
> +       vga0 {
> +               offset = <0x50>;
> +               bit-mask = <0xffffffff>;
> +               bit-shift = <0>;
> +       };
> +       vga1 {
> +               offset = <0x54>;
> +               bit-mask = <0xffffffff>;
> +               bit-shift = <0>;
> +       };
> +       vga2 {
> +               offset = <0x58>;
> +               bit-mask = <0xffffffff>;
> +               bit-shift = <0>;
> +       };
> +       vga3 {
> +               offset = <0x5c>;
> +               bit-mask = <0xffffffff>;
> +               bit-shift = <0>;
> +       };
> +       vga4 {
> +               offset = <0x60>;
> +               bit-mask = <0xffffffff>;
> +               bit-shift = <0>;
> +       };
> +       vga5 {
> +               offset = <0x64>;
> +               bit-mask = <0xffffffff>;
> +               bit-shift = <0>;
> +       };
> +       vga6 {
> +               offset = <0x68>;
> +               bit-mask = <0xffffffff>;
> +               bit-shift = <0>;
> +       };
> +       vga7 {
> +               offset = <0x6c>;
> +               bit-mask = <0xffffffff>;
> +               bit-shift = <0>;
> +       };
> +};
> +
>  &sio_regs {
>         sio_2b {
>                 offset = <0xf0>;
> --
> 2.20.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
