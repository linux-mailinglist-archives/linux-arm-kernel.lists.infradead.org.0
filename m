Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FDE01681AD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 16:32:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ehF2m/nU+qZqOafOuTYMkjawWsIyXNr3SVxA/FzdvLU=; b=YjdHWtXGf5tghK
	7EwRcj0pXylI5BBS2/S1N1VJgwVm1y5RC+zQghoay3DTlUN/BipYZzke+/P8B8Ty+Xr81Sjxbmir+
	rHtsH1gB5EVOPVmayiBy10qgWknmARFt4Gf1jN1CLEGCa+/ppQdJDknxdq5VULXm1Ox4OyCdcDFWg
	oAQITMCXowK9qvslwEDdDxk8F3myV7UtlNF/T38zX4940qvh8y1pvKerPhIGdugF4jY1+KIw1y19J
	EMT8z9oi5C9fdH4gUWxES0XzSzEJAO5Km89iQ4hNGaH2zZ/2DESAn8AGF9w6m+766TH7/TGZhntuS
	O2HqkLGOwJea+clbyiwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5AI1-00041B-VT; Fri, 21 Feb 2020 15:32:29 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5AHs-00040f-3h
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 15:32:21 +0000
Received: by mail-ot1-f68.google.com with SMTP id b3so2341598otp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Feb 2020 07:32:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=5jRzIkWfQ+0gox1TYbOKZYWDKTNe51R7eEKfAaND2e8=;
 b=HD70APxV6w+AfCwMGWqOerVdNHbAcFXYbtHPwA9ScHW785K+vPsu7BPBXccW36w/Hu
 deSrZ5yqYi48YK9LoARMmxf+/Loao4n30zamG7bRf41vQ/T0tLC8FBmRcekolfSPzs4H
 GObOYLr0FBvLIdvMqaNKSbHLDblcbV30v5Fu4baLI1c7q1gSgSR6UASYD2iqiQwE8NQQ
 4Z1a4/9S4PMsG38FmAIy3zuyqGK9uDTQzSBD72Q0nM3brwf00g/Sbt8uPeDx/0ZBdsHj
 ve/+nNFWCnAWWbdHYd9C+yYFsBey444ToJlgk90CS9yUymJKahQQNyKG6QdoC5tIpDNP
 d28Q==
X-Gm-Message-State: APjAAAXHYVFgycn5kOUk48xr6MQgmsGXuN6XJjNBF0zPibxIpvsHRIFu
 J+Ftp9zjnB7JqnK7lKkC1InSXW0=
X-Google-Smtp-Source: APXvYqyIi7otPk4YqJ66riR/MI9UiSp8vpqQOhiJlly3+GQnLyt8fa9IB1l62IViMdRSA1KiKTCn5w==
X-Received: by 2002:a9d:6f0a:: with SMTP id n10mr29655564otq.54.1582299137818; 
 Fri, 21 Feb 2020 07:32:17 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id t9sm1108521otm.76.2020.02.21.07.32.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 Feb 2020 07:32:16 -0800 (PST)
Received: (nullmailer pid 14335 invoked by uid 1000);
 Fri, 21 Feb 2020 15:32:15 -0000
Date: Fri, 21 Feb 2020 09:32:15 -0600
From: Rob Herring <robh@kernel.org>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH 2/3] dt-bindings: gpio: Convert UniPhier GPIO to
 json-schema
Message-ID: <20200221153215.GA9815@bogus>
References: <20200221021002.18795-1-yamada.masahiro@socionext.com>
 <20200221021002.18795-2-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200221021002.18795-2-yamada.masahiro@socionext.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_073220_153379_5A674B37 
X-CRM114-Status: GOOD (  20.83  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, linux-gpio@vger.kernel.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 21 Feb 2020 11:10:01 +0900, Masahiro Yamada wrote:
> Convert the UniPhier GPIO controller binding to DT schema format.
> 
> I omitted the 'gpio-ranges' property because it is defined in the
> dt-schema project (/schemas/gpio/gpio.yaml).
> 
> As of writing, the 'gpio-ranges-group-names' is not defined in that
> file despite it is a common property described in
> Documentation/devicetree/bindings/gpio/gpio.txt
> So, I defined it in this schema.
> 
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> ---
> 
> I have a question about the range about 'ngpio'.
> 
>   ngpios:
>     minimum: 0
>     maximum: 512
> 
> The 'ngpio' property is already defined as 'uint32' in the dt-schema tool:
> https://github.com/robherring/dt-schema/blob/master/schemas/gpio/gpio.yaml#L20
> 
> 'uint32' is unsigned, so 'minimum: 0' looks too obvious.
> 
> I cannot omit the minimum because minimum and maximum depend on each other.
> I just put a sensible number, 512, in maximum.
> 
> If this range is entirely unneeded, I will delete it.

This property is generally for when you can have some number less 
than a maximum number implied by the compatible string. 

If there is really no max (e.g. 2^32 - 1 is valid), then just do 
'ngpios: true'

> 
> 
>  .../bindings/gpio/gpio-uniphier.txt           | 51 -----------
>  .../gpio/socionext,uniphier-gpio.yaml         | 89 +++++++++++++++++++
>  MAINTAINERS                                   |  2 +-
>  3 files changed, 90 insertions(+), 52 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/gpio/gpio-uniphier.txt
>  create mode 100644 Documentation/devicetree/bindings/gpio/socionext,uniphier-gpio.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

Documentation/devicetree/bindings/display/simple-framebuffer.example.dts:21.16-37.11: Warning (chosen_node_is_root): /example-0/chosen: chosen node must be at root node
Error: Documentation/devicetree/bindings/gpio/socionext,uniphier-gpio.example.dts:38.34-35 syntax error
FATAL ERROR: Unable to parse input tree
scripts/Makefile.lib:300: recipe for target 'Documentation/devicetree/bindings/gpio/socionext,uniphier-gpio.example.dt.yaml' failed
make[1]: *** [Documentation/devicetree/bindings/gpio/socionext,uniphier-gpio.example.dt.yaml] Error 1
Makefile:1263: recipe for target 'dt_binding_check' failed
make: *** [dt_binding_check] Error 2

See https://patchwork.ozlabs.org/patch/1241747
Please check and re-submit.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
