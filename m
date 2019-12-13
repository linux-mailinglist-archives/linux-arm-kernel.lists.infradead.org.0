Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B2D11ED1C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 22:43:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IygrNwIaG48aCdZsw9ZWfJeDUFF95Mh8tbsfMjxIfjE=; b=SeZWOBKkYaxQ3I
	rCMDQgTSZ9hCMisG4nYulEowgbllzCOhFZbQM135e4VdJIA0Q8V0XyeKKUngZsdmRUK8Vza/3XVJ4
	thyK4jzlVLLsA1UOQhXIYvzJzHt1X8TCOyDkI2LaKtx28ywRkr9ax7riZ+zwR5ks4+Z/3uCfG8SiB
	Ihe2X+CS+tyV6ANmUDKfWa9PHOdsL3zA+77P8OU9RTADq1pOGAfdit/QgSVle7YI3m3gnnNTrLnnE
	bQKfYwCgE4hHLKkldVYKbTLws1Qmkmy7Lsz0gH++Wmo2Qg7QE9TaqlpIwH+pR4ydkRQksiQ74lUvC
	cJX5FIXfyi0YoQGOB7yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifsiN-0004Uw-5T; Fri, 13 Dec 2019 21:43:11 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifsiD-0004Ub-DP
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 21:43:02 +0000
Received: by mail-ot1-f66.google.com with SMTP id h20so754666otn.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 13:43:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=MQB7TjgV5T4jJMqF680Zx8rqtE1zr7TyNkD+NPMNF7I=;
 b=Flxh6FN6m8zh5uuOrkEG5COqyorPT4y/V+XMQGc3asCbhxczYrxYUddF7OjGX3di5o
 ciHTaQZxwLXIj6oBbVEcpHBfKRLsv+jqozt9phpQ237jjE+O4dtQBjnrP1WE0O4c/Nst
 nHkbwsT7v0H0tZeVbtQEwyEpH0BpKyEXyO7DePsMdsJxruKHswlx+UySNokAF6cf82yp
 jiTIkfxh08JPdHpukAvMT05lXAiW6VKM6NiIfnMbI03fMiYgNe4Ud0jFjCzJnLl43E6a
 EQhpFQufvPQMCobJ8S7jduAd9RBuB6Ni0MvdOOyF27Gy572j2benTyyIGMsudv98di6J
 iYeQ==
X-Gm-Message-State: APjAAAVtTCftnTiE7F4W4GGQPpTRxlgY63/S4W0t6hqKU4toQg/Y1Auu
 2w1VR0E/yhV3rHHpEaigdw==
X-Google-Smtp-Source: APXvYqx7rWl74CdJfig+1YJkGKx/BE+J3zlPUfgUhv++wHBmfMeBJCoKxZuNeUbMU8aCLoWVjqAXSg==
X-Received: by 2002:a9d:6a8f:: with SMTP id l15mr16522804otq.59.1576273380100; 
 Fri, 13 Dec 2019 13:43:00 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id s83sm3733871oif.33.2019.12.13.13.42.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 13:42:59 -0800 (PST)
Date: Fri, 13 Dec 2019 15:42:58 -0600
From: Rob Herring <robh@kernel.org>
To: Joel Stanley <joel@jms.id.au>
Subject: Re: [PATCH v2 1/2] dt-bindings: mfd: Add ast2600 to ASPEED LPC
Message-ID: <20191213214258.GA7625@bogus>
References: <20191129000827.650566-1-joel@jms.id.au>
 <20191129000827.650566-2-joel@jms.id.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191129000827.650566-2-joel@jms.id.au>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_134301_454109_B3BE3EDB 
X-CRM114-Status: GOOD (  15.57  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, Philipp Zabel <p.zabel@pengutronix.de>,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 29, 2019 at 10:38:26AM +1030, Joel Stanley wrote:
> The AST2600 has the same LPC layout as previous generation SoCs.
> 
> Signed-off-by: Joel Stanley <joel@jms.id.au>
> ---
> v2: Fix cut and paste error in reset bindings
> ---
>  Documentation/devicetree/bindings/mfd/aspeed-lpc.txt | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/aspeed-lpc.txt b/Documentation/devicetree/bindings/mfd/aspeed-lpc.txt
> index 86446074e206..a5d89aa9a3c1 100644
> --- a/Documentation/devicetree/bindings/mfd/aspeed-lpc.txt
> +++ b/Documentation/devicetree/bindings/mfd/aspeed-lpc.txt
> @@ -46,6 +46,7 @@ Required properties
>  - compatible:	One of:
>  		"aspeed,ast2400-lpc", "simple-mfd"
>  		"aspeed,ast2500-lpc", "simple-mfd"
> +		"aspeed,ast2600-lpc", "simple-mfd"
>  
>  - reg:		contains the physical address and length values of the Aspeed
>                  LPC memory region.
> @@ -64,6 +65,7 @@ BMC Node
>  - compatible:	One of:
>  		"aspeed,ast2400-lpc-bmc"
>  		"aspeed,ast2500-lpc-bmc"
> +		"aspeed,ast2600-lpc-bmc"
>  
>  - reg:		contains the physical address and length values of the
>                  H8S/2168-compatible LPC controller memory region
> @@ -128,6 +130,7 @@ Required properties:
>  - compatible:	One of:
>  		"aspeed,ast2400-lpc-ctrl";
>  		"aspeed,ast2500-lpc-ctrl";
> +		"aspeed,ast2600-lpc-ctrl";
>  
>  - reg:		contains offset/length values of the host interface controller
>  		memory regions
> @@ -168,6 +171,7 @@ Required properties:
>  - compatible:	One of:
>  		"aspeed,ast2400-lhc";
>  		"aspeed,ast2500-lhc";
> +		"aspeed,ast2600-lhc";
>  
>  - reg:		contains offset/length values of the LHC memory regions. In the
>  		AST2400 and AST2500 there are two regions.
> @@ -187,8 +191,11 @@ state of the LPC bus. Some systems may chose to modify this configuration.
>  
>  Required properties:
>  
> - - compatible:		"aspeed,ast2500-lpc-reset" or
> -			"aspeed,ast2400-lpc-reset"
> + - compatible:		One of:
> +			"aspeed,ast2400-reset";
> +			"aspeed,ast2500-reset";
> +			"aspeed,ast2600-reset";

Doesn't match what's in the driver.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
