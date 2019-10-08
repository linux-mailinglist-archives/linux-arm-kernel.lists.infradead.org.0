Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04BBFD0087
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 20:12:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zJwVXhLoab94PKHskdlk+j5qgABjpLXlHv5sWCZg7Ao=; b=Lrg99sku4/Co/O
	R+I+CPQrEdVBSOyVz5zJ94od1IiLZfn85J0wkLyRT76A1oiAFrWGUTm4/Yb9pFNttGjgp29nA6j4n
	8dc2vjYzqxpNSZzrlASJYdGnvYbS7nTWcxCk8XkapeTo2ApjnH4AfgNn56YQkYYvkm5FEaVBWII/P
	uV/iL65goVJW1jDHmxqhQu98NogA3yyLlQvCPWG1sjW2uOIDIp9YMcR7s05LolbINqOIFasp/qJ8I
	B+DxASWfnfXoJw73GZI+Go7qe6xbipo1tCy7oPFMf5gpfQKSDZB8IPJOZZVDmnYYUuWJZTurW2Tpg
	EMFc1yriDxgl+odjDzhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHtyJ-0001Wz-36; Tue, 08 Oct 2019 18:12:31 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHtyB-0001WG-Be
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 18:12:24 +0000
Received: by mail-pg1-x542.google.com with SMTP id t3so4860463pga.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 11:12:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ft4+jYN1dS8NqqiVNLlnlvcOgcl6TC5Rdjhw+oDRjeM=;
 b=fp/xUBWNRr3td/lzO69obrsv/blllnTc7YTOhUQOOc5uE3nOL+Da2ubPZCPl6MzSD8
 7bG8U48fBbMujprEET895v8OHtvgm+bQwX2ZYk1Dec/P1Zax53qJ8EQmKDmgAvG71A2t
 iolwRxV1MILEXICk6/fCgoJN4iZpMq94nxfhMbaxG2iugWflegBTW58ScZ/WZQi4MW2O
 AUmqpRWZ1Cf1QGYM495TsSmpBKT3r7HrLnaNyVAmb6pZBTFFqXHFe5PCrnpeBdzPJ5gM
 Q90Apo4k0GxuwlNEh6WVkJ2zksEhwoTfekOIgsIEMvGpEzRBQj7WujLqdBy5sSXNuKnH
 GKPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ft4+jYN1dS8NqqiVNLlnlvcOgcl6TC5Rdjhw+oDRjeM=;
 b=DcXb4U6MiPbdmKlaT5wwyMpF/7zgQiUfhjueDYPEbwJrdWufyNkA89XJRDhWLDlE0w
 gmrKYgAzLOMUDOCTV4g2+grlxVlzkZpvqBx/nSyufjuD9s8DNUVys+imR7fQ8r3rH5HT
 mqofzdRkR94heET4jvUC0l5OSYh6B5qMvwX+xK4xzTqEkaoyb0VS/TSVkHZsqa8jo7QW
 1uDZbLHt3tHzEB/xSTl2MChpY80W7u12EdNX9/RLMj1jVPGx3kWEdQZvAR5Ud40SohT2
 UbAIzUHIc8jpGROHDPuYDXm+RLBVtyM9WtMlWIyxlA+NZSl/dXubyLY+pVrLD7rIqIbQ
 HodQ==
X-Gm-Message-State: APjAAAWWxEaY9tEB2A1nHi4xJStmfhFLFh8B5/2cFihLQSwTCANtSuv+
 3ZqnYtfzZ5EW2duLUD9QSTcJEw==
X-Google-Smtp-Source: APXvYqwQY/d/4qF6Xf3ltUHZZdZHWBbFSe61lTeC1Lgsde2Fj5T5bc4/HzHq/Mq162NvzHwX2BH7bw==
X-Received: by 2002:a63:d30f:: with SMTP id b15mr37524174pgg.341.1570558339176; 
 Tue, 08 Oct 2019 11:12:19 -0700 (PDT)
Received: from google.com ([2620:15c:2cb:1:e90c:8e54:c2b4:29e7])
 by smtp.gmail.com with ESMTPSA id s5sm2343109pjn.24.2019.10.08.11.12.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Oct 2019 11:12:18 -0700 (PDT)
Date: Tue, 8 Oct 2019 11:12:13 -0700
From: Brendan Higgins <brendanhiggins@google.com>
To: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
Subject: Re: [PATCH 1/5] dt-bindings: i2c: aspeed: add buffer and DMA mode
 transfer support
Message-ID: <20191008181213.GB155928@google.com>
References: <20191007231313.4700-1-jae.hyun.yoo@linux.intel.com>
 <20191007231313.4700-2-jae.hyun.yoo@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191007231313.4700-2-jae.hyun.yoo@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_111223_400508_F780844A 
X-CRM114-Status: GOOD (  18.50  )
X-Spam-Score: -13.9 (-------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-13.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 1.8 FSL_HELO_FAKE          No description available.
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
 linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, openbmc@lists.ozlabs.org,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Tao Ren <taoren@fb.com>, linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 07, 2019 at 04:13:09PM -0700, Jae Hyun Yoo wrote:
> Append bindings to support buffer mode and DMA mode transfer.
> 
> Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
> ---
>  .../devicetree/bindings/i2c/i2c-aspeed.txt    | 67 +++++++++++++++++--
>  1 file changed, 60 insertions(+), 7 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/i2c/i2c-aspeed.txt b/Documentation/devicetree/bindings/i2c/i2c-aspeed.txt
> index 8fbd8633a387..e40dcc108307 100644
> --- a/Documentation/devicetree/bindings/i2c/i2c-aspeed.txt
> +++ b/Documentation/devicetree/bindings/i2c/i2c-aspeed.txt
> @@ -3,7 +3,10 @@ Device tree configuration for the I2C busses on the AST24XX and AST25XX SoCs.
>  Required Properties:
>  - #address-cells	: should be 1
>  - #size-cells		: should be 0
> -- reg			: address offset and range of bus
> +- reg			: Address offset and range of bus registers.
> +			  An additional SRAM buffer address offset and range is
> +			  optional in case of enabling I2C dedicated SRAM for
> +			  buffer mode transfer support.

Sorry, I am having trouble parsing this. This seems like the SRAM buffer
is global to all busses. Can you clarify? I expect I will probably have
some more questions elsewhere.

>  - compatible		: should be "aspeed,ast2400-i2c-bus"
>  			  or "aspeed,ast2500-i2c-bus"
>  - clocks		: root clock of bus, should reference the APB
> @@ -16,6 +19,18 @@ Optional Properties:
>  - bus-frequency	: frequency of the bus clock in Hz defaults to 100 kHz when not
>  		  specified
>  - multi-master	: states that there is another master active on this bus.
> +- aspeed,dma-buf-size	: size of DMA buffer (from 2 to 4095 in case of AST2500
> +			  or later versions).
> +			  Only AST2500 and later versions support DMA mode
> +			  under some limitations:
> +			  I2C is sharing the DMA H/W with UHCI host controller
> +			  and MCTP controller. Since those controllers operate
> +			  with DMA mode only, I2C has to use buffer mode or byte
> +			  mode instead if one of those controllers is enabled.
> +			  Also make sure that if SD/eMMC or Port80 snoop uses
> +			  DMA mode instead of PIO or FIFO respectively, I2C
> +			  can't use DMA mode. If both DMA and buffer modes are
> +			  enabled, DMA mode will be selected.

nit: I think it makes sense to break down the exceptions into a
bulleted list.

Cheers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
