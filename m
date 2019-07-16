Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46F9369FF4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 02:37:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XTS86vaQa8F/wU3icSRSbvLMg1uSYJvtH+mPdsDMR20=; b=icPWyrQZHMxZQn
	67MlfQPZzHaHo7EggRBd9Wd9Qr/fJe0sxNrTgfr8KWS4gRAvX+3HyJQ3VJ5/SMwgbNo1nZn0NNt75
	Wm0PUSe2MVy36hOvPTM25xgZHm7wD1ADON2FXsJAgdwu73LleJIhFCu71x57t6uGA6WA076U8Ir30
	IxIf0UgJqmGQSAUyecNmqq82oXPA6Q/5QZc81WeFJeq0hi+1gEzztKDNm/qGF7aE+WxqKaTGQokyI
	zaz+lTOyXLgZO1UqmpQ0oBa71MgjjO4kJUXpci+pjLZ5cejtt93ys5xbpy0w0w23Z+W30XsHZen+9
	d1ajZ3eVFFlRa6N3Yrlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnBSu-0005Hn-Ft; Tue, 16 Jul 2019 00:37:08 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnBSf-0005HG-9F
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 00:36:54 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 1E8482177A;
 Mon, 15 Jul 2019 20:36:52 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Mon, 15 Jul 2019 20:36:52 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm3; bh=XWZLz+txdqRGTGaK1dZN+f7z4rUZi4Y
 KqrDw0xfe4HM=; b=jjqyglpudjzsVZLhnWYx9xgxywyjAovUnur4o64PIiE6/oD
 bWfRfH8iiS9ycGEwevHjy+kbgjyu9pUpzn+mCUPRAaS1VhEZ73Lo+ujf3f4XpbzQ
 l4u05mmZ20sCCjd2+KqBwldWeIkTVKcqJIexOK34ChugLII8CANTvCdHKhc5+TFV
 S7+ivSTItRNt3VBS8XDvKhaKaCwXydCuvKZjY287WLETJw3O1eMYT82si4f2ynFv
 79nkZsIerPn6hR0FEwOYtO720zAgCJ0jvje2zHwbjNYCUXAe6yCXsn7QTO8XZhzR
 j2U/3I+V75KNy6/h5HPouB9xa/8o2tctdpUytLA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=XWZLz+
 txdqRGTGaK1dZN+f7z4rUZi4YKqrDw0xfe4HM=; b=W3Iw272ICRf0EDD/DryRQz
 M5dgPRk1xQvHrQs93w1bkKWbZgZn1vTF+9PV/ExXAAHxsN8N1Wx8lN8aJa4+WpuC
 fwbPfdOwBd56RcFprff+ERt8NK48SyNzd1nyJlkxcoqK1PA/gpKvjpb3FPwjHgBA
 5lUCnbumFehUxGcoKzUm7HDVPmzaf5fyCwCk5F3WddYYpDu1VC9tNfxrw9jELTjH
 1xuWAFeWWASs+ayB7EeABPtY+jAsZR4trJc0bpGh8rr9mMffRxDR09MZGHIkfxvN
 WiPdQEJAN4uaNvzSj85q5b/2V8joyK5I/zbIVsUUBmRnS0n7qB4syHO+LbTdGo6A
 ==
X-ME-Sender: <xms:IxwtXf77jaxpTbBAQIqoOaKT_tPfi6eUud37XX8Gz4Hh5OqWyYH6yQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrheelgdefgecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedftehnughr
 vgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucfrrghrrg
 hmpehmrghilhhfrhhomheprghnughrvgifsegrjhdrihgurdgruhenucevlhhushhtvghr
 ufhiiigvpedt
X-ME-Proxy: <xmx:IxwtXSYv0so1UDrxrgCP1PBLZvAeIFb_V_kjuVYMHzyqQstLt5UPCw>
 <xmx:IxwtXShNV6dv1iDjgpJ93yiW76yzP8ZaamiNxj9NBCBzLf8ltayVmA>
 <xmx:IxwtXdaxzh5FPwQrKjuHo-IzB93hG52ZGB7Uw84OjqtWpB0EgeUxXg>
 <xmx:JBwtXVuV7atOVYa2dOZe8UAscvlNOzzmLO_aKGt7mGM0b_WwnKk3qA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id D358CE00CC; Mon, 15 Jul 2019 20:36:51 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-731-g19d3b16-fmstable-20190627v1
Mime-Version: 1.0
Message-Id: <0b4f89e7-a60f-4978-ba9c-1e04c551b1f1@www.fastmail.com>
In-Reply-To: <20190715224841.6771-1-robh@kernel.org>
References: <20190715224841.6771-1-robh@kernel.org>
Date: Tue, 16 Jul 2019 10:07:01 +0930
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Rob Herring" <robh@kernel.org>, devicetree@vger.kernel.org,
 "Linus Walleij" <linus.walleij@linaro.org>
Subject: Re: [PATCH] dt-bindings: pinctrl: aspeed: Fix AST2500 example errors
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_173653_461002_1D9E0FC3 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org,
 Joel Stanley <joel@jms.id.au>, linux-aspeed@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Tue, 16 Jul 2019, at 08:18, Rob Herring wrote:
> The schema examples are now validated against the schema itself. The
> AST2500 pinctrl schema has a couple of errors:
> 
> Documentation/devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.example.dt.yaml: \
> example-0: $nodename:0: 'example-0' does not match 
> '^(bus|soc|axi|ahb|apb)(@[0-9a-f]+)?$'
> Documentation/devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.example.dt.yaml: \
> pinctrl: aspeed,external-nodes: [[1, 2]] is too short
> 
> Fixes: 0a617de16730 ("dt-bindings: pinctrl: aspeed: Convert AST2500 
> bindings to json-schema")
> Cc: Andrew Jeffery <andrew@aj.id.au>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Joel Stanley <joel@jms.id.au>
> Cc: linux-aspeed@lists.ozlabs.org
> Cc: linux-gpio@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> Signed-off-by: Rob Herring <robh@kernel.org>

Acked-by: Andrew Jeffery <andrew@aj.id.au>

> ---
>  .../devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.yaml  | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git 
> a/Documentation/devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.yaml 
> b/Documentation/devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.yaml
> index a464cfa0cba3..3e6d85318577 100644
> --- 
> a/Documentation/devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.yaml
> +++ 
> b/Documentation/devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.yaml
> @@ -76,9 +76,6 @@ required:
>  
>  examples:
>    - |
> -    compatible = "simple-bus";
> -    ranges;
> -
>      apb {
>          compatible = "simple-bus";
>          #address-cells = <1>;
> @@ -91,7 +88,7 @@ examples:
>  
>              pinctrl: pinctrl {
>                  compatible = "aspeed,g5-pinctrl";
> -                aspeed,external-nodes = <&gfx &lhc>;
> +                aspeed,external-nodes = <&gfx>, <&lhc>;
>  
>                  pinctrl_i2c3_default: i2c3_default {
>                      function = "I2C3";
> -- 
> 2.20.1
> 
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
