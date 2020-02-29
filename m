Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F3871744D8
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Feb 2020 05:14:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vjwWxb0ywtGcXRBQOqH/Eib3EDVGqgcs5ngFH8U5G1E=; b=QRMSSW8/sXjOb0
	TiCtocYH4w3IUQQ3qCOlKCX64+CQxQ5mPIykM1ZrA+u4wOxogrtrzhL1FWNEbELVmuHP70VRSKJyv
	SbPdTwQm6g1cf2P4zXxM4/Kj6U7Lj9AymVouqAS9udvJFGQaKs9knapBmiHVgn9whfwjDad9P1Nxb
	cHYuRCPGPecXqj9ZmEjIfKjRlF2/TXcqWrMJcAXQADRW8KOMPkcGdUIfXR3GPxH6zNi4r9lzGAfzE
	wDY2OjgmLTy9MBxMu0w8a3SuBZuCLLSWn3E0a1Hc4qZZKnVFNDHkQIwwhjGUAWSOINs8e7/5kT75D
	QiJqGAqEvZYYiLKkKnOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7tVk-0004k8-I0; Sat, 29 Feb 2020 04:13:56 +0000
Received: from conssluserg-03.nifty.com ([210.131.2.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7tVR-0004jT-1c
 for linux-arm-kernel@lists.infradead.org; Sat, 29 Feb 2020 04:13:38 +0000
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com
 [209.85.217.48]) (authenticated)
 by conssluserg-03.nifty.com with ESMTP id 01T4D4Ow018173
 for <linux-arm-kernel@lists.infradead.org>; Sat, 29 Feb 2020 13:13:05 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 01T4D4Ow018173
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1582949585;
 bh=a0pOxn4yBaf/CY6aaFvzsHrraptkGWxpAnq3v9ZlKRY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=fOA7El3gUZ+0vookKfso5oCJGJGXdyvfax5sR2I/8GpIokf76DL8pZ24WAfMfeSsr
 U7g4VUlvoWMwe1QlKJpl07c3DuxJ/MGi0QDqFrqw6n0JpWMNuoLETbC07BHzdeAItd
 MTQLLRf2TjHMAKc/3tbB7Meg8Bk2AHfj+eeqIC3P+Qr4p1rWTzJ8zuBuapk70KdDKh
 UM/w7Twnn9o3Ak63xkR61NljF9Zv95d9dv0KWFD3oEATkysMmFDXXO2EO88kCU9Hmv
 qfPybMSMqk+vbkeDzepC1vTHr+Byx7sq7FNW+a9XY6bWhiE2oUUqJNYSbl3XJmHi+E
 +zHW1cnleh1kw==
X-Nifty-SrcIP: [209.85.217.48]
Received: by mail-vs1-f48.google.com with SMTP id h5so2352724vsc.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Feb 2020 20:13:05 -0800 (PST)
X-Gm-Message-State: ANhLgQ1jZxF/oMYXAvLJ2Qc6CogzomYnCRO7cD3IjfcQ90LiETEysr1b
 PK7qm60d3ZWKbdMNRL0US2goh7B+Blf9c6J+yvE=
X-Google-Smtp-Source: ADFU+vvxO1CRnyMOWLQZldeIlAa6RWJEku0VkeJX/ZGM7zhqt+hXfohIi/gRZqN4pvVQXSryjtSgwIaIwyqYdEqkVts=
X-Received: by 2002:a05:6102:3102:: with SMTP id
 e2mr4205619vsh.179.1582949583909; 
 Fri, 28 Feb 2020 20:13:03 -0800 (PST)
MIME-Version: 1.0
References: <20200221021002.18795-1-yamada.masahiro@socionext.com>
 <20200221021002.18795-3-yamada.masahiro@socionext.com>
 <CACRpkdbrowXC-Awy_N1gq+LxuEMhgLNf81cCZ=bwZwFdJXLWDA@mail.gmail.com>
In-Reply-To: <CACRpkdbrowXC-Awy_N1gq+LxuEMhgLNf81cCZ=bwZwFdJXLWDA@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sat, 29 Feb 2020 13:12:27 +0900
X-Gmail-Original-Message-ID: <CAK7LNASMn_xMtBa8sCj0AW2LTpSEMpv=haDhWrfkZrrKbwSeug@mail.gmail.com>
Message-ID: <CAK7LNASMn_xMtBa8sCj0AW2LTpSEMpv=haDhWrfkZrrKbwSeug@mail.gmail.com>
Subject: Re: [PATCH 3/3] dt-bingings: pinctrl: Convert UniPhier pin controller
 to json-schema
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_201337_310226_50EE6421 
X-CRM114-Status: GOOD (  23.60  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.82 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.82 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

On Sat, Feb 29, 2020 at 7:13 AM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Fri, Feb 21, 2020 at 3:10 AM Masahiro Yamada
> <yamada.masahiro@socionext.com> wrote:
>
> > Convert the UniPhier pin controller binding to DT schema format.
> >
> > Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
>
> Nice!
>
> > In the original .txt file, there is a description:
> > The UniPhier pinctrl should be a subnode of a "syscon" compatible node
> >
> > I did not figure out how to represent (or check) it in dt-schema.
> > I just moved it to a comment line in 'examples'.
> > If there is a better way, please let me know.
>
> There is no way to do that AFAICT, we are checking nodes from
> one node and downwards, never upwards. The syscon needs to
> have its own binding file: if it has another specific compatible
> such as compatible = "foo", "syscon"; then for the DT bindings
> for foo, make sure to add this subnode as optional/compulsory
> if you want to tie up the whole thing.


Thanks for your advice.


Documentation/devicetree/bindings/mfd/syscon.yaml

already contains sunxi-specific compatibles, but
I hesitate to add more and more platform-specific stuff
in this file.

Maybe, I can add

Documentation/devicetree/bindings/mfd/socionext,uniphier-soc-glue.yaml

and then, check 'reg' and compulsory sub-nodes.



> > -Required properties:
> > -- compatible: should be one of the following:
> > -    "socionext,uniphier-ld4-pinctrl"  - for LD4 SoC
> > -    "socionext,uniphier-pro4-pinctrl" - for Pro4 SoC
> > -    "socionext,uniphier-sld8-pinctrl" - for sLD8 SoC
> > -    "socionext,uniphier-pro5-pinctrl" - for Pro5 SoC
> > -    "socionext,uniphier-pxs2-pinctrl" - for PXs2 SoC
> > -    "socionext,uniphier-ld6b-pinctrl" - for LD6b SoC
> > -    "socionext,uniphier-ld11-pinctrl" - for LD11 SoC
> > -    "socionext,uniphier-ld20-pinctrl" - for LD20 SoC
> > -    "socionext,uniphier-pxs3-pinctrl" - for PXs3 SoC
>
> But:
>
> > +    soc-glue@5f800000 {
> > +        compatible = "socionext,uniphier-pro4-soc-glue", "simple-mfd", "syscon";
> > +        reg = <0x5f800000 0x2000>;
> > +
> > +        pinctrl: pinctrl {
> > +            compatible = "socionext,uniphier-pro4-pinctrl";
> > +        };
> > +    };
>
> It looks like you want to check also for "simple-mfd" and "syscon"
> following after the enum (two consts)
>
> It seems you want to check that reg is there.


Documentation/devicetree/bindings/mfd/syscon.yaml

already checks the 'reg' by the 'contains syscon' pattern,
but I can repeat it in my yaml file.

Thanks.


> It seems the subnode pinctrl is also compulsory.
>
> All of this have examples in example-schema.yaml IIRC.
>
> Yours,
> Linus Walleij



-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
