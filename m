Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF9FD16A8D6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 15:52:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QDUqjJoy6WA1YlFulE2S5zfaq7bPeBmU+xRZkdlrW2I=; b=vEPyyY2ezAgsRu
	eFsT7gq0t8eh1QkKPNlSncw477sufWlRjRszXqZxdD7qSfsVp3Wox6NU1pt+Z265CBl39UyKbcOnf
	CYpUtj2Mm7MsJ0w7Ok/HveezRkR51Ijon2LPFP3CMUZ5ZR/Qf8q7FUPG5oneQYlVLjUe5B4O1QPkw
	jHfHXL+LKKV1syxwyq97bUJb9vK9aAc61gNO5CLfMD4bdvCwcmy9DoitWLgxKPdPd1TQCKkyB7Iss
	CxS1kt1wz3nU/4J+vtdM/850eWg71NFMLa7f4gozfCmZ4CEJb5V7/MLLJtwiExP/hb9wZ0ym55eos
	HCPMU4eh7zzTUMOJl4AQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6F5h-0001vB-TD; Mon, 24 Feb 2020 14:52:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6F5Z-0001up-2L
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 14:52:06 +0000
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com
 [209.85.222.178])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EB49D20880
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 14:52:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582555924;
 bh=XRi0OmHVHDee1GTej+sJ5OKiNNLB45ifwcR2vnGTriE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=emz3wz7Ro5hhDbUK45uRjE/GOzzpc3xgdSqBISPZkQrYw3cmsSjhpNfSPlXBLnwdE
 kcewki6VbecIyeDD3mBAJWecySt85yvGUT+/ld/07q6kFoFqVchCtenkjF8QsZxBSo
 HHcfEWbBHf1CqUCwoNQSK5oHdp8sVjA8IRaRgBf4=
Received: by mail-qk1-f178.google.com with SMTP id b7so8882038qkl.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 06:52:03 -0800 (PST)
X-Gm-Message-State: APjAAAX44nH5rJXbSk0+tO2aK9223A/4/DtXqfr8ibQO7EFEYVqRA4GS
 iv2UaXiNmw5ivojmcqkanoZkZFCXQB3whrXfCQ==
X-Google-Smtp-Source: APXvYqy3i2A/uaXUUl5KAquMuTkYSOzGwGzbCUu+blbmGe2ksR6g/Clz7i7XiWQ/ps6CvMEUu/w8BbbZd1N4Q9aboto=
X-Received: by 2002:ae9:f205:: with SMTP id m5mr50756836qkg.152.1582555922990; 
 Mon, 24 Feb 2020 06:52:02 -0800 (PST)
MIME-Version: 1.0
References: <20200221021002.18795-1-yamada.masahiro@socionext.com>
 <20200221021002.18795-2-yamada.masahiro@socionext.com>
 <20200221153215.GA9815@bogus>
 <CAK7LNARhXbyUwMwXK=afXLnBVzg_MPv2D=oyn5qWkZtv12zmRg@mail.gmail.com>
In-Reply-To: <CAK7LNARhXbyUwMwXK=afXLnBVzg_MPv2D=oyn5qWkZtv12zmRg@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Mon, 24 Feb 2020 08:51:50 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+za-2VQ3uaLK0bUoziTyoNeL4T48F+hVv1Wy4b+5rAGA@mail.gmail.com>
Message-ID: <CAL_Jsq+za-2VQ3uaLK0bUoziTyoNeL4T48F+hVv1Wy4b+5rAGA@mail.gmail.com>
Subject: Re: [PATCH 2/3] dt-bindings: gpio: Convert UniPhier GPIO to
 json-schema
To: Masahiro Yamada <masahiroy@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_065205_167637_EAF58E5F 
X-CRM114-Status: GOOD (  25.43  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Fri, Feb 21, 2020 at 11:33 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> Hi Rob,
>
> On Sat, Feb 22, 2020 at 12:32 AM Rob Herring <robh@kernel.org> wrote:
> >
> > On Fri, 21 Feb 2020 11:10:01 +0900, Masahiro Yamada wrote:
> > > Convert the UniPhier GPIO controller binding to DT schema format.
> > >
> > > I omitted the 'gpio-ranges' property because it is defined in the
> > > dt-schema project (/schemas/gpio/gpio.yaml).
> > >
> > > As of writing, the 'gpio-ranges-group-names' is not defined in that
> > > file despite it is a common property described in
> > > Documentation/devicetree/bindings/gpio/gpio.txt
> > > So, I defined it in this schema.
> > >
> > > Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> > > ---
> > >
> > > I have a question about the range about 'ngpio'.
> > >
> > >   ngpios:
> > >     minimum: 0
> > >     maximum: 512
> > >
> > > The 'ngpio' property is already defined as 'uint32' in the dt-schema tool:
> > > https://github.com/robherring/dt-schema/blob/master/schemas/gpio/gpio.yaml#L20
> > >
> > > 'uint32' is unsigned, so 'minimum: 0' looks too obvious.
> > >
> > > I cannot omit the minimum because minimum and maximum depend on each other.
> > > I just put a sensible number, 512, in maximum.
> > >
> > > If this range is entirely unneeded, I will delete it.
> >
> > This property is generally for when you can have some number less
> > than a maximum number implied by the compatible string.
> >
> > If there is really no max (e.g. 2^32 - 1 is valid), then just do
> > 'ngpios: true'
>
>
> What does ': true' mean?

It's a schema that always passes validation. It's purpose here is just
to say you are using this common property for this binding.

>
> If it is documented somewhere,
> could you point me to the reference?

https://github.com/devicetree-org/dt-schema/blob/master/schemas/gpio/gpio.yaml

>
> Even if I remove the 'ngpio' entirely
> from my dt-schema, the 'ngpio' is checked
> correctly.

Yes, if you change it to a string value for example, it should fail.
(Only if DT_SCHEMA_FILES is not set without my kbuild changes)

You should also add 'additionalProperties: false' at the top level of
your schema and then it will also fail if you don't list ngpios in
properties.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
