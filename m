Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E656EE66
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jul 2019 10:13:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E3P1sqsXBNkBJRjLV5Fm5feaxh23JTVy3hVzdIE6zPQ=; b=b+I6FDSdK+E9v+
	VVN8ie0N4X128IjSokCTxSb884hhVrdUWjihV7buI1HA3a3D1P9S5gV99hH8R2f618PojzM57b9p+
	AOwqnMjuqCg6ieeXUokU1ABGMuJGxxWVIfdoLRqFZRIU/i526nwB6QVT+Iy4ddTane95rTJNWp7bD
	RqFHFToW5t2iNuPtpEDRJlzcO9EoUiI+QlnV/p4SdKkFmRLrQp0y42WS5PaRhKPUfvgghIyDxKtTs
	RWTk1/AmHWgin6HjU4w+54q066WrMp7I4nxzeCZYpF9o9H3AbLLxBcTCvwu6kfpaeFjv8Zc6QHBeN
	i8k3YIPcAZptYW3ZKPsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hokUo-0006Hr-CF; Sat, 20 Jul 2019 08:13:34 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hokUR-00068v-8X
 for linux-arm-kernel@lists.infradead.org; Sat, 20 Jul 2019 08:13:12 +0000
Received: by mail-lj1-x244.google.com with SMTP id d24so32862913ljg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 20 Jul 2019 01:13:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Z0jjqiEWK8ZwPUy1E/hBEFEfeUX6fZKXUCvS400AT+E=;
 b=yPSEvpAhtbj/j09qHG2JWZfrDA4ejU9evwOJais+pJ0lGCPO05Gns70r4+pQNpZ4xK
 lDKoKVvkmiGIDLP+l/FkDXc1fKJsf9Uk4CdBZeUDu+IsFD4fs/jH9Vh+YJrDGixb3HJ3
 Ue7R1TwHlXHvmgyfmDJqycCgkmTCbjCHYxmEh2EdRFsmKmntYBYBfVUhRjzsgZeVPYb+
 8K4202ecZU1xhmPNMkuAY7dkNXe1ab5LPwhjlJnovA4AmK+Wz/yOz1qlHoDUXr4Yj0SC
 kiaxocC37eF3GwefxCq3OJiGqjz7iJVeDnWpJnKKiO4nhTokU6iSmnvj/ddVQoxSY787
 XpcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Z0jjqiEWK8ZwPUy1E/hBEFEfeUX6fZKXUCvS400AT+E=;
 b=R4F+J+Qry5Co5hS71BMuSWK+Rh+LSKb8iZG3sh7uIy+CIMkfX34x7mqjRDurd/B0Tw
 hb3Gyc3JZbRlESgDH/E7zwGM98DRK1VAq4bUQrmz2c1DQVRl586JkpaBWl4y7z3RQ/+U
 5sZkAM0cQ0RdrqxZzdK9SjfyzRd7RPY6Ak/FDRnfZTsvxyb+dfywvZx5SvpOZpa1Znsl
 E3HoECgthz3Iu4EKMdZGzIlL/vh33qhnl+XaUMMd5alR6o/xXDPm1ZRZfYaL615zYWwW
 pdzCzrALDur4JIcb7uaKqGBWhCN2V2dO/fCn+u1RnlUPVxIvqaKvoNCp5BKC569TR8vy
 ebUQ==
X-Gm-Message-State: APjAAAUDtX0dLRVh/i6RqO9CKtZP8ckaQflZR1O72pj8OtmbhC3qjcJT
 6wOYSELVqq8AbqfeqK7UWneajftmg5Ib0YcW29vSOQ==
X-Google-Smtp-Source: APXvYqxPq0egzZ9v6Hlqgi5GtM0dh5ZLA6APWqqK+dAf0wl4ZE3tiHWf4L7DfCkkNOMh235amVo0TuFZXRekFrjKVAc=
X-Received: by 2002:a2e:2c14:: with SMTP id s20mr12432277ljs.54.1563610388042; 
 Sat, 20 Jul 2019 01:13:08 -0700 (PDT)
MIME-Version: 1.0
References: <1563564291-9692-1-git-send-email-hongweiz@ami.com>
 <1563564291-9692-2-git-send-email-hongweiz@ami.com>
In-Reply-To: <1563564291-9692-2-git-send-email-hongweiz@ami.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 20 Jul 2019 10:12:56 +0200
Message-ID: <CACRpkdYhVoP75ZDfASW+DH5yf-a5diitiXsh7eLsJx5hsTC9sQ@mail.gmail.com>
Subject: Re: [v5 1/2] dt-bindings: gpio: aspeed: Add SGPIO support
To: Hongwei Zhang <hongweiz@ami.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190720_011311_364901_225A50EC 
X-CRM114-Status: GOOD (  17.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 <devicetree@vger.kernel.org>, linux-aspeed@lists.ozlabs.org,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Andrew Jeffery <andrew@aj.id.au>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Hongwei,

after looking close at the driver and bindings I have this feeback:

On Fri, Jul 19, 2019 at 9:25 PM Hongwei Zhang <hongweiz@ami.com> wrote:

+- reg                  : Address and length of the register set for the device

This 0x100 range may look simple but in the driver it looks like
this:

+static const struct aspeed_sgpio_bank aspeed_sgpio_banks[] = {
+       {
+               .val_regs = 0x0000,
+               .rdata_reg = 0x0070,
+               .irq_regs = 0x0004,
+               .names = { "A", "B", "C", "D" },
+       },
+       {
+               .val_regs = 0x001C,
+               .rdata_reg = 0x0074,
+               .irq_regs = 0x0020,
+               .names = { "E", "F", "G", "H" },
+       },
+       {
+               .val_regs = 0x0038,
+               .rdata_reg = 0x0078,
+               .irq_regs = 0x003C,
+               .names = { "I", "J" },
+       },
+};

So first break this into up to 10 different instances with one device
per bank instead.

For each device:

reg = <0x1e780200 4>, <x1e780204 ..>, <0x1e780270 ..>;
reg-names = "val", "irq", "rdata";

This way you use the device tree features for locating the
register offsets instead of hard-coding it into the driver,
which will make the driver simpler.

> +- ngpios               : number of GPIO pins to serialise.
> +                         (should be multiple of 8, up to 80 pins)

This is wrong. This should be split into 10 different devices providing
8 GPIO lines each. The "ngpios" is not intended to subdivide
banks, but for the case where you use say bits 0..11 of 32 bits in
a register by setting ngpios to 12.

I see that they use the same clock divider and the same interrupt,
but this is better to partition into a separate clock divider driver
and up to 10 instances of GPIO devices with 8 GPIOs each.

I also see that they use the same interrupt. This is fine, in your
driver just grab a shared IRQ and all the IRQ handlers will be
traversed. This is a well known pattern for all operating systems.

> +- clocks                : A phandle to the APB clock for SGPM clock division
> +
> +- bus-frequency                : SGPM CLK frequency

I see that there is a common clock control register in offset 0x54.

Split this out to a separate clock driver that provides a divided clock
that all GPIO blocks can get, no matter if you use 1, 2 .. 10 of these
blocks.

The fact that these GPIO banks and the clock register is in the same
memory range does not really matter. Split up the memory range in
on reg = per GPIO chip and one reg for the clock.

> +  Example:
> +       sgpio: sgpio@1e780200 {
> +               #gpio-cells = <2>;
> +               compatible = "aspeed,ast2500-sgpio";
> +               gpio-controller;
> +               interrupts = <40>;
> +               reg = <0x1e780200 0x0100>;
> +               clocks = <&syscon ASPEED_CLK_APB>;
> +               interrupt-controller;
> +               ngpios = <8>;
> +               bus-frequency = <12000000>;
> +       };

Splitting this up into a clock controller and 1-10 instances of sgpio
will make things simpler, because it will closer reflect what the hardware
people are doing: they have just created 10 instances of the same
block, and added a clock divider.

You can put the 1-10 instances and the clock divider inside a collected
node "simple-bus" in the device tree:

{
    compatible = "simple-bus";

    sgpio0: sgpio {
        compatible = "aspeed,ast2500-sgpio";
        reg = <0x1e780200 ...> ...;
        clk = <&sgpioclk>;
    };
    sgpio1: sgpio {
        ...
    };
    ...
    sgpioclk: clock {
          compatible = "aspeed,sgpio-clock";
          reg = 0x1e780254 4>;
    };
};

This is a better fit with the actual hardware and will make it much
easier to write drivers.

Admittedly DT device partitioning of SoC devices is a grey area,
but here I think the DT infrastructure helps you to break things
down and make it easier, I am thinking in a divide-and-conquer
way about it.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
