Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBF4429917
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 15:36:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LJqzlIZDXcr6ApcVlpIJ58jM+LYpDcF2SN80hZ6Wys4=; b=qhia3Ksiwnxyd0
	R7zQYT21SqPgb7kCPnoq3uG+Ng0gNJDhvyjkp5zsZyOmimlSkJSiMl7Vq7zsbHr7JPy2+VrJbwzF4
	FBWjWRm7b/1x9X1yaKr9xB/yy5mIIHqbSZxfFwYdSWnssMyJx8SXwqI+V+YLVsBAnYzoE8thg86Tg
	W6/lnw4sOCyKdt7kXf5gMVUlVpe57kUJclj793WmNT+2vGbdBV3HcTlqWYf/Hx/x7Slo1PfolpNsl
	9Hq/9v6EUe768ZxALJWKIAaESaM+WKGIo2GMffnp7GSiwVZpYAI9xCBqtnZhrYU550rVXTcmEeNfn
	9LmvA8fqG7h6jdpj0BXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUANM-0004qQ-Rt; Fri, 24 May 2019 13:36:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUANE-0004pX-Pd
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 13:36:42 +0000
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com
 [209.85.222.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 63C8B21851
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 13:36:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558705000;
 bh=tMBECbiBS4GeoIN2QdWttyV14DSkMjIwIZ/HSg2Q84U=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=LumGEaPFodLNRDIkJbwtxOQRllCWgShXM8+qzkOK+Ni3o4sYZfMnhUOe/gR4dkkhw
 gV60MWootRXVlod34UxYtYXjshnADlFDmcdBbY7zq9IuSAg6JD9PknJRhUFEF1Hgn/
 2ik0nXGzGxaJ/MHJT2iI4Po8UguGa3Zi2IB/B8Jw=
Received: by mail-qk1-f175.google.com with SMTP id p26so5006450qkj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 06:36:40 -0700 (PDT)
X-Gm-Message-State: APjAAAXYkKWNtLRz6kl4HFAbS/UECgJ7lg36CoSCYdQNFpcD/J3eLgqA
 l4xrE8/LUR/aclVSNidAg77SRtcyQEeC7A0M1g==
X-Google-Smtp-Source: APXvYqxi31jvwVnuoPYdTSkbUOepa7ShFSTbIUTj/vbeGx8mToTz3KIi5CJt8R/7dYqqEkH90BLcKawOmgOCrK8tmzU=
X-Received: by 2002:ac8:6b14:: with SMTP id w20mr65181261qts.110.1558704999637; 
 Fri, 24 May 2019 06:36:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190430162910.16771-1-ard.biesheuvel@linaro.org>
 <20190430162910.16771-6-ard.biesheuvel@linaro.org>
 <CAL_JsqLioethaQ2ekxyeG1QkCwPQKcE4daDMAJXtWwXOEABmGQ@mail.gmail.com>
 <CAKv+Gu-55A=WCx+9He1rc52KKuQ53fMP8efw6DO+wkfr3K+Rdw@mail.gmail.com>
In-Reply-To: <CAKv+Gu-55A=WCx+9He1rc52KKuQ53fMP8efw6DO+wkfr3K+Rdw@mail.gmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 24 May 2019 08:36:28 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLMubawNufJySC-iS0ELwRC4hk+yMNZMVuMD3FbJPQYWw@mail.gmail.com>
Message-ID: <CAL_JsqLMubawNufJySC-iS0ELwRC4hk+yMNZMVuMD3FbJPQYWw@mail.gmail.com>
Subject: Re: [PATCH 5/5] dt-bindings: add Atmel SHA204A I2C crypto processor
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_063640_871863_BFA41BF6 
X-CRM114-Status: GOOD (  19.68  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
 Linus Walleij <linus.walleij@linaro.org>, Joakim Bech <joakim.bech@linaro.org>,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 24, 2019 at 8:16 AM Ard Biesheuvel
<ard.biesheuvel@linaro.org> wrote:
>
> On Fri, 24 May 2019 at 15:12, Rob Herring <robh+dt@kernel.org> wrote:
> >
> > On Tue, Apr 30, 2019 at 11:29 AM Ard Biesheuvel
> > <ard.biesheuvel@linaro.org> wrote:
> > >
> > > Add a compatible string for the Atmel SHA204A I2C crypto processor.
> > >
> > > Cc: Rob Herring <robh+dt@kernel.org>
> > > Cc: Mark Rutland <mark.rutland@arm.com>
> > > Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> > > ---
> > >  Documentation/devicetree/bindings/crypto/atmel-crypto.txt | 13 +++++++++++++
> > >  1 file changed, 13 insertions(+)
> > >
> > > diff --git a/Documentation/devicetree/bindings/crypto/atmel-crypto.txt b/Documentation/devicetree/bindings/crypto/atmel-crypto.txt
> > > index 6b458bb2440d..a93d4b024d0e 100644
> > > --- a/Documentation/devicetree/bindings/crypto/atmel-crypto.txt
> > > +++ b/Documentation/devicetree/bindings/crypto/atmel-crypto.txt
> > > @@ -79,3 +79,16 @@ atecc508a@c0 {
> > >         compatible = "atmel,atecc508a";
> > >         reg = <0xC0>;
> > >  };
> > > +
> > > +* Symmetric Cryptography (I2C)
> >
> > This doesn't really seem to be related to the rest of the file which
> > are all sub-blocks on SoCs. You could just add this one to
> > trivial-devices.yaml.
> >
> > > +
> > > +Required properties:
> > > +- compatible : must be "atmel,atsha204a".
> > > +- reg: I2C bus address of the device.
> > > +- clock-frequency: must be present in the i2c controller node.
> >
> > That's a property of the controller and doesn't belong here.
> >
>
> Both comments apply equally to the ECC508 above it, which I
> duplicated.

Okay, I only quickly scanned it. The problem for this file will be
when converting to schema, it's generally 1 binding per file.

> Would you like me to move that one into
> trivial-devices.yaml as well? (and drop the clock-freq property)

If you want, but that can be a separate patch.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
