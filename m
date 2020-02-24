Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5628316AA9C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 17:01:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r+0UjGfdZaPoZ4bEgHPbwt4ZfAhI52t/Mw33/VAS5vA=; b=jllf9XkeEThFL8
	GfCQiBm+hrMj0DxP0k5p9nnHXqcG1hrI5w7+bL9nhVO3gbZ0sOyZGzzFWYvdvCwkkd86nypy1o3dA
	ttH8C9VwDqM+Y1VpxgZ9KMOi0aEDfDtZWGopwT2Tk+tkksPAnqMY4HrsSzRCJvBSeAuFmATXVSBX/
	OvxGDbsbqf82RqDPWtAom7fnGxNUHfbNGB+8t5A4KzFPfOz1+Yk3K5xoROUXKgUGYG49jEyxKIqiT
	xnPVYjjtEyntvl53m2GyMZ+ns9NURu57wrFUTY4oJOqnmI+0zCz3OlNog50ubPT5QOhtookAL9sI9
	zGUR8b0cY+tm5FyeLu3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6GAg-0005ya-RE; Mon, 24 Feb 2020 16:01:26 +0000
Received: from conssluserg-02.nifty.com ([210.131.2.81])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6GA8-0005vA-QY
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 16:00:56 +0000
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com
 [209.85.217.44]) (authenticated)
 by conssluserg-02.nifty.com with ESMTP id 01OG0UVZ005431
 for <linux-arm-kernel@lists.infradead.org>; Tue, 25 Feb 2020 01:00:31 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com 01OG0UVZ005431
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1582560031;
 bh=rh6OBdUNfww3vfiDk7WD78TGBu735cgnzCKrnQQSFwk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=frP9VDGV+IdXmi+d2H1VLwqNi9TOUHIUpDWaGV0WsA9WBVGXo82zaO7VQ9ZV7l7lB
 cNqERuRmFO09j53hlRurJ0XJlIsdtcWE7jKsB5bLXjjxush2tHAF9DtHSnvzcD6Twb
 tfW7AnOy8BNvd+nN+Drt2gopc8j1zZZRrPTuiB8+VmO005XNNQDsqRzsRan/r29dp2
 FzopPo/MpG/p5iMhHqrK7o9Bw0Og+koZWMhRfasK0aOLol+6Gm1E1ceEAVb4pHplCe
 tonTF8rzDZBl8mHk/8qSJPQ4XB0+IcKvR39Ojwue3IKWhISkDYYqVdJa0SNdtPesZg
 qYM+IR2xN68+A==
X-Nifty-SrcIP: [209.85.217.44]
Received: by mail-vs1-f44.google.com with SMTP id p14so5970619vsq.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 08:00:30 -0800 (PST)
X-Gm-Message-State: APjAAAVK7ZpfBO9OyNQHvArvDxiW/hiGe7Dqho6kqHyDlqNZBaGZbv4P
 yUFfgwKxa3uhTRZAjr75Z8iV7Swsxe/eR5udSUA=
X-Google-Smtp-Source: APXvYqxrUculoOzlOLP1qyhLbdIH9BNbNU6LljUdGNKtFWdx+eGRpP3R6f5HAN/+ktdJA4PyOAMI8Mb0oQ0eTgUkzOM=
X-Received: by 2002:a67:fa4b:: with SMTP id j11mr27414888vsq.155.1582560029807; 
 Mon, 24 Feb 2020 08:00:29 -0800 (PST)
MIME-Version: 1.0
References: <20200221021002.18795-1-yamada.masahiro@socionext.com>
 <20200221021002.18795-2-yamada.masahiro@socionext.com>
 <20200221153215.GA9815@bogus>
 <CAK7LNARhXbyUwMwXK=afXLnBVzg_MPv2D=oyn5qWkZtv12zmRg@mail.gmail.com>
 <CAL_Jsq+za-2VQ3uaLK0bUoziTyoNeL4T48F+hVv1Wy4b+5rAGA@mail.gmail.com>
In-Reply-To: <CAL_Jsq+za-2VQ3uaLK0bUoziTyoNeL4T48F+hVv1Wy4b+5rAGA@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 25 Feb 2020 00:59:53 +0900
X-Gmail-Original-Message-ID: <CAK7LNASLaEX_Ocph88ZYMyi03KPQmr6-3mMhrZeAZCoAgUrEtQ@mail.gmail.com>
Message-ID: <CAK7LNASLaEX_Ocph88ZYMyi03KPQmr6-3mMhrZeAZCoAgUrEtQ@mail.gmail.com>
Subject: Re: [PATCH 2/3] dt-bindings: gpio: Convert UniPhier GPIO to
 json-schema
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_080053_091285_34C50EB2 
X-CRM114-Status: GOOD (  27.27  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.81 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Mon, Feb 24, 2020 at 11:52 PM Rob Herring <robh@kernel.org> wrote:
>
> On Fri, Feb 21, 2020 at 11:33 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > Hi Rob,
> >
> > On Sat, Feb 22, 2020 at 12:32 AM Rob Herring <robh@kernel.org> wrote:
> > >
> > > On Fri, 21 Feb 2020 11:10:01 +0900, Masahiro Yamada wrote:
> > > > Convert the UniPhier GPIO controller binding to DT schema format.
> > > >
> > > > I omitted the 'gpio-ranges' property because it is defined in the
> > > > dt-schema project (/schemas/gpio/gpio.yaml).
> > > >
> > > > As of writing, the 'gpio-ranges-group-names' is not defined in that
> > > > file despite it is a common property described in
> > > > Documentation/devicetree/bindings/gpio/gpio.txt
> > > > So, I defined it in this schema.
> > > >
> > > > Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> > > > ---
> > > >
> > > > I have a question about the range about 'ngpio'.
> > > >
> > > >   ngpios:
> > > >     minimum: 0
> > > >     maximum: 512
> > > >
> > > > The 'ngpio' property is already defined as 'uint32' in the dt-schema tool:
> > > > https://github.com/robherring/dt-schema/blob/master/schemas/gpio/gpio.yaml#L20
> > > >
> > > > 'uint32' is unsigned, so 'minimum: 0' looks too obvious.
> > > >
> > > > I cannot omit the minimum because minimum and maximum depend on each other.
> > > > I just put a sensible number, 512, in maximum.
> > > >
> > > > If this range is entirely unneeded, I will delete it.
> > >
> > > This property is generally for when you can have some number less
> > > than a maximum number implied by the compatible string.
> > >
> > > If there is really no max (e.g. 2^32 - 1 is valid), then just do
> > > 'ngpios: true'
> >
> >
> > What does ': true' mean?
>
> It's a schema that always passes validation. It's purpose here is just
> to say you are using this common property for this binding.



OK, I see two useful cases:

[1]
Documenting purpose in order to clarify
that you are using this property

[2]
You need to explicitly specify ': true'
if you have 'additionalProperties: false' .
Otherwise, the following warning is displayed:
... do not match any of the regexes: 'pinctrl-[0-9]+'



For [1], it is already clear that this binding
is using ngpios from 'require'


require:
  - ngpios



> >
> > If it is documented somewhere,
> > could you point me to the reference?
>
> https://github.com/devicetree-org/dt-schema/blob/master/schemas/gpio/gpio.yaml
>
> >
> > Even if I remove the 'ngpio' entirely
> > from my dt-schema, the 'ngpio' is checked
> > correctly.
>
> Yes, if you change it to a string value for example, it should fail.
> (Only if DT_SCHEMA_FILES is not set without my kbuild changes)
>
> You should also add 'additionalProperties: false' at the top level of
> your schema and then it will also fail if you don't list ngpios in
> properties.

Hmm, I am confused.

'require: - ngpios' will warn if you don't list ngpios.

'additionalProperties: false' will warn if you list
other properties than what is explicitly specified.



BTW, I will not add 'additionalProperties: false'
in this binding.


The real DT files have

 interrupt-parent = <&aidet>;
(arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi line 324)

but, commit 791d3ef2e11100449837dc0b6fe884e60ca3a484
removed interrupt-parent from bindings.





--
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
