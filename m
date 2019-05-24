Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54B33298B4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 15:16:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SluikEDmIEbw6zDXtHc/y+kbYJo5lUekr6Zh57qZdgk=; b=QhVqPb3aP+yHif
	CQM4B+E8Ni4A/Aw4mvZqGvfsznanSXpgw0Ak2QuNJ9/yToxU7ZW8MvIh5xSij1KV7HPhYRPKGvP5G
	hG4v7Scb31wWNj7By1X5JjhYj7d2Os+/1b9p7fhzNrzBNevAPs56RX50QyZ4t7sUhOUkTraq8ND06
	oy9G6Oj+ENjXf7Eaa3dSYQOoNxKyezPj9GNzM6haVv/O5f5KzGkW71oUznYVDZYn7JDWSQlRygoJA
	uHaEy5Qrn3tc8dn1PJdAm+2q/AkwYu5Tv/t6O8K5Vnb5is8HCWb6J25+8yFS7MVNyGrDE9dL+Mgh9
	ikeGUHwP6hg/i4VgYPKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUA3b-0003VH-90; Fri, 24 May 2019 13:16:23 +0000
Received: from mail-it1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUA3T-0003Uq-PL
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 13:16:17 +0000
Received: by mail-it1-x141.google.com with SMTP id a186so5760952itg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 06:16:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=78fXlxCLXUHV0mjrAafvvRbvxn0nsYUXrTLP8yA2eqo=;
 b=mYMsq9JrQAt5KkVasB3MUtIYQ+ThUfSBcc71PpfgCO7VACFZSgOB+KFW1JYUoNWLUe
 Lxwpo6CB/6CwVWKO4NFF9uA6nRmaRy0RkCDuit/QnTLQ7cq6F7dpabCkZ9U5ITlv0XN9
 ntXUKrtGa3CY+6h0VpEvVI6AH/5V8DGbC6aWyL6KXrJIk3Y2j0IGwittttU7vkaEO5AK
 +0xJ6rdgMMIuH8u4+ZIeaKAqk0nzn0kZaSr45/zrAokEIGbmvLkGE1ThDKu5Ro4n3Isz
 t/uoBzdcavSOsj0L3hQ1pvrrz4hCqBr4oHHQtcwqvJavsYlVk+urVWldu4ThNPv5UnRP
 zG8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=78fXlxCLXUHV0mjrAafvvRbvxn0nsYUXrTLP8yA2eqo=;
 b=q1mu7pODyMiiVns4fjQyayMrSZEReiboSP2+TeSnoDQZ35AuHLu3rHDsY6V6UKUjME
 Rc72yvCTdEb752xhR5DEwhD2gR58viFcqUX173K1KpOLmR0y5S68R6DLEm6a5Zls+zGM
 WdMmYaYC6OImdQeykCpY0ze4MZNE0eAxPF0lOjOSaMknHmpYSVggZ29vLzY8kesH11kR
 y/5ZXXxLTnzfT8YfQPGPPfqWREJ2tfYpaLEchhzL6aEU9OuUVJertHXlAGYhsNMsbuCu
 YLmcKIBfqP6YqzqUp23Y/bJUDPBNtTcFEbX2S5G5nR/iNyCzwnBJsGkk8Ofe2MRb2HdE
 02QA==
X-Gm-Message-State: APjAAAWiJIpt/GU1Y0CCilha9B8tyZmce/LWzIgIdHbWY71pz+HYKnC2
 cpaJdZgNnWROdwnph5hwsVJFAupJ5GhsaXihOvN3bg==
X-Google-Smtp-Source: APXvYqwTR+tkWWRgVjsoxQLTHJvXCJCd/XIOde87VElhf7eh2aJ3GbcdBZ3OxVgreGRWMctVFJQ8SI5EQEIIyMhyu6U=
X-Received: by 2002:a02:a494:: with SMTP id d20mr3261224jam.62.1558703772728; 
 Fri, 24 May 2019 06:16:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190430162910.16771-1-ard.biesheuvel@linaro.org>
 <20190430162910.16771-6-ard.biesheuvel@linaro.org>
 <CAL_JsqLioethaQ2ekxyeG1QkCwPQKcE4daDMAJXtWwXOEABmGQ@mail.gmail.com>
In-Reply-To: <CAL_JsqLioethaQ2ekxyeG1QkCwPQKcE4daDMAJXtWwXOEABmGQ@mail.gmail.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Fri, 24 May 2019 15:15:59 +0200
Message-ID: <CAKv+Gu-55A=WCx+9He1rc52KKuQ53fMP8efw6DO+wkfr3K+Rdw@mail.gmail.com>
Subject: Re: [PATCH 5/5] dt-bindings: add Atmel SHA204A I2C crypto processor
To: Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_061615_828442_3AB2AC96 
X-CRM114-Status: GOOD (  16.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Fri, 24 May 2019 at 15:12, Rob Herring <robh+dt@kernel.org> wrote:
>
> On Tue, Apr 30, 2019 at 11:29 AM Ard Biesheuvel
> <ard.biesheuvel@linaro.org> wrote:
> >
> > Add a compatible string for the Atmel SHA204A I2C crypto processor.
> >
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Cc: Mark Rutland <mark.rutland@arm.com>
> > Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> > ---
> >  Documentation/devicetree/bindings/crypto/atmel-crypto.txt | 13 +++++++++++++
> >  1 file changed, 13 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/crypto/atmel-crypto.txt b/Documentation/devicetree/bindings/crypto/atmel-crypto.txt
> > index 6b458bb2440d..a93d4b024d0e 100644
> > --- a/Documentation/devicetree/bindings/crypto/atmel-crypto.txt
> > +++ b/Documentation/devicetree/bindings/crypto/atmel-crypto.txt
> > @@ -79,3 +79,16 @@ atecc508a@c0 {
> >         compatible = "atmel,atecc508a";
> >         reg = <0xC0>;
> >  };
> > +
> > +* Symmetric Cryptography (I2C)
>
> This doesn't really seem to be related to the rest of the file which
> are all sub-blocks on SoCs. You could just add this one to
> trivial-devices.yaml.
>
> > +
> > +Required properties:
> > +- compatible : must be "atmel,atsha204a".
> > +- reg: I2C bus address of the device.
> > +- clock-frequency: must be present in the i2c controller node.
>
> That's a property of the controller and doesn't belong here.
>

Both comments apply equally to the ECC508 above it, which I
duplicated. Would you like me to move that one into
trivial-devices.yaml as well? (and drop the clock-freq property)

> > +
> > +Example:
> > +atsha204a@c0 {
>
> crypto@c0
>

OK.

> > +       compatible = "atmel,atsha204a";
> > +       reg = <0xC0>;
> > +};
> > --
> > 2.20.1
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
