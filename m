Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1F46CA162
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 17:51:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GRVvg/q4gIJvlNaeAe8iJkcQhT9q3LGEh1VfrWgaquM=; b=UFB6tXFgIa1rYL
	pMXWe5FxLJByGjUijqEoRVOLW8XC2w9qMrHmzgVRNghjR72JyXMnWbcqyP651ZfrDpAR9fFW0/dST
	zHPqfzkNuqbhstBJJBAQqhD0HkXg+MnuqCifg5jueI9g5vTUx2oNAAd0qbU6c5li9W+m+v8AM9kvo
	giQ0x4TxBNJem2weEeYkQmA1kRGo6LyX243I7B30Ap+1mKGjLvlqcSotkh/hjHVr4/27bBWkd4kCW
	B7dE8aEczNUJ3FIgHMdj7b92yz10RmIYIPECWn2d+Mp0TGAK8yFAVZipZnZqD8z0CH5z9oBzto5KP
	U6pxIsFD1DOlllXe5vUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG3O3-0003wk-5Q; Thu, 03 Oct 2019 15:51:27 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG3Nu-0003w3-P4
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 15:51:20 +0000
Received: by mail-io1-f66.google.com with SMTP id q10so6745555iop.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 03 Oct 2019 08:51:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=o5FrpAENvkoWB6xTph/hv60pcl+ltBCsmirVDpopVIo=;
 b=mD1KkVFdIUsMgJXfclXYx822LxR3cULVkYqhH9qtRrWftGyuP/YEyzd9H7rewcPjVg
 YvwhLoaOrsrGtcCYjEMkf2BE6p3Rn5h/zSWIZEUTp8Q+6+7I6WhN4Nzn08Wohukpekbm
 1R+9WEMpWWW1Nn19AcTwx6KtvZWtLj8gEb8ow57ISmAuA42yrb8DimmUSY48a4ptpxvF
 Vnhix2YXoipZ6aMxD/8uNY0S90spxChiz/x0qdQeE0g6QtJAeEq4Ezrz7dO4US4Az4zE
 M4Y8lIkLbvz+dqijZszZUu9YWtITk6bj0RNFSLrkeksU0Ol2kp6hiUwVj8lA7qOp18kQ
 32VA==
X-Gm-Message-State: APjAAAU2sKvXDDhJ4HJbAQT/yXON4J+Aci3V1ldTNmoA3qknRbsxat0g
 u9bRGO8H+3iV3a0iOianfwUeyAy3Ny0=
X-Google-Smtp-Source: APXvYqxTiwO8igL82rZ9T7VZH4nwcmS5LcyzyOrWbX05Gr7ORZ7kB3LIMgbr17WXbz4rkeOStl1QkA==
X-Received: by 2002:a02:3f5c:: with SMTP id c28mr9636443jaf.103.1570117875560; 
 Thu, 03 Oct 2019 08:51:15 -0700 (PDT)
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com.
 [209.85.166.53])
 by smtp.gmail.com with ESMTPSA id s78sm2205624ila.40.2019.10.03.08.51.14
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 03 Oct 2019 08:51:15 -0700 (PDT)
Received: by mail-io1-f53.google.com with SMTP id w12so6604078iol.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 03 Oct 2019 08:51:14 -0700 (PDT)
X-Received: by 2002:a5d:9349:: with SMTP id i9mr8742455ioo.101.1570117874713; 
 Thu, 03 Oct 2019 08:51:14 -0700 (PDT)
MIME-Version: 1.0
References: <20191003154842.248763-1-mripard@kernel.org>
In-Reply-To: <20191003154842.248763-1-mripard@kernel.org>
From: Chen-Yu Tsai <wens@csie.org>
Date: Thu, 3 Oct 2019 23:51:05 +0800
X-Gmail-Original-Message-ID: <CAGb2v66az3uQnibudKai7ATfXh+w1Y+bJ=o258RVe9SCNRpGNQ@mail.gmail.com>
Message-ID: <CAGb2v66az3uQnibudKai7ATfXh+w1Y+bJ=o258RVe9SCNRpGNQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: media: sun4i-csi: Drop the module clock
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_085118_815011_ED6BF355 
X-CRM114-Status: GOOD (  19.42  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Thu, Oct 3, 2019 at 11:48 PM Maxime Ripard <mripard@kernel.org> wrote:
>
> It turns out that what was thought to be the module clock was actually the
> clock meant to be used by the sensor, and isn't playing any role with the
> CSI controller itself. Let's drop that clock from our binding.
>
> Fixes: c5e8f4ccd775 ("media: dt-bindings: media: Add Allwinner A10 CSI binding")
> Reported-by: Chen-Yu Tsai <wens@csie.org>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>  .../devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml | 7 ++-----
>  1 file changed, 2 insertions(+), 5 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml b/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml
> index 5dd1cf490cd9..d3e423fcb6c2 100644
> --- a/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml
> +++ b/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml
> @@ -27,14 +27,12 @@ properties:
>    clocks:
>      items:
>        - description: The CSI interface clock
> -      - description: The CSI module clock
>        - description: The CSI ISP clock
>        - description: The CSI DRAM clock
>
>    clock-names:
>      items:
>        - const: bus
> -      - const: mod
>        - const: isp
>        - const: ram
>
> @@ -89,9 +87,8 @@ examples:
>          compatible = "allwinner,sun7i-a20-csi0";
>          reg = <0x01c09000 0x1000>;
>          interrupts = <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
> -        clocks = <&ccu CLK_AHB_CSI0>, <&ccu CLK_CSI0>,
> -                 <&ccu CLK_CSI_SCLK>, <&ccu CLK_DRAM_CSI0>;
> -        clock-names = "bus", "mod", "isp", "ram";
> +        clocks = <&ccu CLK_AHB_CSI0>, <&ccu CLK_CSI_SCLK>, <&ccu CLK_DRAM_CSI0>;
> +        clock-names = "bus", "isp", "ram";

I believe what we thought was the ISP clock is actually the module clock
for the whole CSI subsystem. So we should still use the module clock entry,
and remove the ISP entry.

ChenYu

>          resets = <&ccu RST_CSI0>;
>
>          port {
> --
> 2.23.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
