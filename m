Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97414168CB5
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Feb 2020 06:33:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x4oIgxUQS0DQe+TgHk0oZF9QUMpCFqJmIL8fALik8qg=; b=hzyBwl51be1RxP
	s6xyXT1twDH4wczuZrR8akIjy6ajziuNsyIUAZR7s57UvWssYR2SBEFiNfhWVQikda/ROt3jMxyDA
	rJV3ZIYTL/bJG2tYoUgGr/ekSC6VepLt+kMwp6qfOvJLQl3tm30tmmUIg2cpTyGhjh5qHBxumspnC
	THTg0ZBeBHuw3s+V6/Hgqqjy2q2RcKN9uGMCNPNBuLA2ejWQ7xZc/YitytiJpYierUTQA5e2FFq5S
	ui/DG2t3yA7tY+r5m6D+pA+0/aFlFI0uercqaB3uFyGqpwi1goYu96N33Iqm/fHlwWZN1mRf/75a0
	iiCNC1MzPjfaQmyaJg1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5NQK-0008JR-T5; Sat, 22 Feb 2020 05:33:56 +0000
Received: from conssluserg-01.nifty.com ([210.131.2.80])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5NQ8-0008IZ-FG
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Feb 2020 05:33:46 +0000
Received: from mail-vk1-f178.google.com (mail-vk1-f178.google.com
 [209.85.221.178]) (authenticated)
 by conssluserg-01.nifty.com with ESMTP id 01M5XDL0023033
 for <linux-arm-kernel@lists.infradead.org>; Sat, 22 Feb 2020 14:33:14 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com 01M5XDL0023033
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1582349594;
 bh=kfkRB8NqTSB8RfnnWhYO851m+pZCn26htPS02MwccbU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=jGpTyMmaQFCA/yAC8SI4sEY5rRsGwV7n37iHBsYx0Tf7yhCGxJurnEkRnYv7mXkEJ
 JsG/XgCkElNDfWpzULElIwahEskifFcCgfbfMXCevqXYv/LoxA47zlm0vQm2c+wXks
 9sU0GorFjzp+hiEZTdTagyKsg7jPMB0IirRAzwYH6j1ZvpUe4A//reJSJZAgZdootB
 2g7WnMlVvqwRfef0X7RYd/XXHwhTzr55mpoceajykax0eZUJhKShxiuBLuEbqxsn9r
 23cnn4NQdvEhPKtWkgxQp/tWiyQ7DXLBQ2ZGCkxLv13OY12pHAVXycTmv8OGqxec2N
 bHWw0f1u66WqQ==
X-Nifty-SrcIP: [209.85.221.178]
Received: by mail-vk1-f178.google.com with SMTP id m195so1185878vkh.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Feb 2020 21:33:13 -0800 (PST)
X-Gm-Message-State: APjAAAULQpav9FNktg2r7dfXPZiYZaTjGZ2amZhr/UxnLNC9Tz//RDDi
 ZpfdEZk288wBDF7KPcvEW+y2BpCOBpZkLENBzp8=
X-Google-Smtp-Source: APXvYqw0koqWOvytLQ0hXmAEc9eS7xUecajG9z93OX8duyLUDb6bva5IL7M/xtzmqsUqDWyYc6mF9iWEJjnMvLa+UjA=
X-Received: by 2002:a1f:1bc3:: with SMTP id b186mr19356263vkb.96.1582349592746; 
 Fri, 21 Feb 2020 21:33:12 -0800 (PST)
MIME-Version: 1.0
References: <20200221021002.18795-1-yamada.masahiro@socionext.com>
 <20200221021002.18795-2-yamada.masahiro@socionext.com>
 <20200221153215.GA9815@bogus>
In-Reply-To: <20200221153215.GA9815@bogus>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sat, 22 Feb 2020 14:32:36 +0900
X-Gmail-Original-Message-ID: <CAK7LNARhXbyUwMwXK=afXLnBVzg_MPv2D=oyn5qWkZtv12zmRg@mail.gmail.com>
Message-ID: <CAK7LNARhXbyUwMwXK=afXLnBVzg_MPv2D=oyn5qWkZtv12zmRg@mail.gmail.com>
Subject: Re: [PATCH 2/3] dt-bindings: gpio: Convert UniPhier GPIO to
 json-schema
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_213344_739095_DB538F3B 
X-CRM114-Status: GOOD (  23.60  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.80 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_L3      RBL: Low reputation (-3)
 [210.131.2.80 listed in bl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On Sat, Feb 22, 2020 at 12:32 AM Rob Herring <robh@kernel.org> wrote:
>
> On Fri, 21 Feb 2020 11:10:01 +0900, Masahiro Yamada wrote:
> > Convert the UniPhier GPIO controller binding to DT schema format.
> >
> > I omitted the 'gpio-ranges' property because it is defined in the
> > dt-schema project (/schemas/gpio/gpio.yaml).
> >
> > As of writing, the 'gpio-ranges-group-names' is not defined in that
> > file despite it is a common property described in
> > Documentation/devicetree/bindings/gpio/gpio.txt
> > So, I defined it in this schema.
> >
> > Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> > ---
> >
> > I have a question about the range about 'ngpio'.
> >
> >   ngpios:
> >     minimum: 0
> >     maximum: 512
> >
> > The 'ngpio' property is already defined as 'uint32' in the dt-schema tool:
> > https://github.com/robherring/dt-schema/blob/master/schemas/gpio/gpio.yaml#L20
> >
> > 'uint32' is unsigned, so 'minimum: 0' looks too obvious.
> >
> > I cannot omit the minimum because minimum and maximum depend on each other.
> > I just put a sensible number, 512, in maximum.
> >
> > If this range is entirely unneeded, I will delete it.
>
> This property is generally for when you can have some number less
> than a maximum number implied by the compatible string.
>
> If there is really no max (e.g. 2^32 - 1 is valid), then just do
> 'ngpios: true'


What does ': true' mean?


If it is documented somewhere,
could you point me to the reference?

Even if I remove the 'ngpio' entirely
from my dt-schema, the 'ngpio' is checked
correctly.




>
> >
> >
> >  .../bindings/gpio/gpio-uniphier.txt           | 51 -----------
> >  .../gpio/socionext,uniphier-gpio.yaml         | 89 +++++++++++++++++++
> >  MAINTAINERS                                   |  2 +-
> >  3 files changed, 90 insertions(+), 52 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/gpio/gpio-uniphier.txt
> >  create mode 100644 Documentation/devicetree/bindings/gpio/socionext,uniphier-gpio.yaml
> >
>
> My bot found errors running 'make dt_binding_check' on your patch:
>
> Documentation/devicetree/bindings/display/simple-framebuffer.example.dts:21.16-37.11: Warning (chosen_node_is_root): /example-0/chosen: chosen node must be at root node
> Error: Documentation/devicetree/bindings/gpio/socionext,uniphier-gpio.example.dts:38.34-35 syntax error
> FATAL ERROR: Unable to parse input tree
> scripts/Makefile.lib:300: recipe for target 'Documentation/devicetree/bindings/gpio/socionext,uniphier-gpio.example.dt.yaml' failed
> make[1]: *** [Documentation/devicetree/bindings/gpio/socionext,uniphier-gpio.example.dt.yaml] Error 1
> Makefile:1263: recipe for target 'dt_binding_check' failed
> make: *** [dt_binding_check] Error 2
>
> See https://patchwork.ozlabs.org/patch/1241747
> Please check and re-submit.

OK, I will.



-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
