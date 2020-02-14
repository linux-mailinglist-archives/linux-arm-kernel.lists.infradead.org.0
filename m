Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32F8215D539
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 11:07:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l8zmE+u0Vn48c9frCX9m8/8cv1jsXuPgovyHMtKhGlo=; b=WueadGjefCXpZE
	awwySniP/4W5sh9xtw1q53fhnvBiDDoS2erqoAbKKj+tkXbySTuvTdYEBl7ons2ONxDQy+Qh5O9iD
	el1iR/V7J0cyCGvygPgnGY1CwgkjOAQdc09PYzOTydmHwG6wgWYdFGYBu/roBOS+0ab9MKwUfVniu
	Z5oHXWHyWVsGu9H9cBEyoAADrmOcB5sw7sfvI/oZMmPI8H1oroxQ6kQbVXyEs/a5qCKn8iFgiMpdE
	Ycn3ALZVd33KvxXjZEBSqBAiGA+2nOKs6WyDYHSGtkeTOSmaqHTCWUqWTH6xRXq6jAmcxPry3kodw
	EyCJfaZowwDdJR0h1a3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2XsP-0005A3-Kb; Fri, 14 Feb 2020 10:07:13 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2XsG-00058u-3f
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 10:07:06 +0000
Received: by mail-lf1-x143.google.com with SMTP id m30so6359489lfp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Feb 2020 02:07:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PF0NRy8tZyvvpgLnBQvTlSYjFAcSskLV9npM91USJ0s=;
 b=wqgfTzWWtdUB2tcvSjtus2pApE3NEoErHGmdjE8uqp7oNfwlkrgb4DdWCFnu72+KUX
 soLifCCg7wB2r6O9j4Hwv64jtw23T/yr8J1zEv5BBFu+LoI8UdhQejWTF6Y++vwfcRJQ
 kdLrBitmeLNwxXRSbLe4UWVQm3i1EbrG/QXzfaEryULXz35DXbF8DTEiE/I5UYOnaqGK
 APHGGSEXLkWjQiDdtnywj+g/mVT0J3K8IFJqC4hdk3/2s5X2dMRC11oStFntUlJ+Yxq5
 JDjHnsxvI1Z2qOAZyn68oFE6RdjCqZDXEA84i4QCQxOj23JytEAaX1cP5mNK2r0+EEC1
 rrSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PF0NRy8tZyvvpgLnBQvTlSYjFAcSskLV9npM91USJ0s=;
 b=OCUDgN2dUQVfUAk/+rs2eGLthw+n+q01ER1xk4xwoHt29ihO+S9Y3316HJdwaL5jeH
 5I334k1ybyL25zwaf4IymkvWnGf0kHK0wsninpytQBqPigOcf+mps/0AXNz5MxCOPQpg
 Rh+HVEg0PjQBph07wOXf4EubhlTFff6UqzVh+BJ5t4f7rVhmCgwf/v71LOR7HhsWnOAV
 KAePJj3L6sYu3C9YQ+TKWgLKDdcUCTJ/5Gyb4MAjx6v/wV73u7kd4DC+NLwCYd8Vay+f
 2o1QbnlU31ivjzRmEt7weuhF1CJyh+k3e7qr0BduajF+kl93uKEATuplFP90YRk5j+ET
 hbGg==
X-Gm-Message-State: APjAAAUdhe9xCEd0V5Y59HbSZ7IKGzdvswR6GpQH5Sr4l2yJcvqhbbZ8
 Ba3atpUeFG0snFTgv2EMCtLWFuSBaFVYtJFDjlJ+9Q==
X-Google-Smtp-Source: APXvYqwE618D6QwS2Ce8nucFnlwDx6s7EvaNXbOiSXAXTaOfY+ikeQ/Ec+btsxjmHTDjr3We9CqYZ1Swq0N8vcABlGI=
X-Received: by 2002:ac2:5499:: with SMTP id t25mr1304752lfk.194.1581674822115; 
 Fri, 14 Feb 2020 02:07:02 -0800 (PST)
MIME-Version: 1.0
References: <20200213025930.27943-1-jaedon.shin@gmail.com>
 <20200213025930.27943-3-jaedon.shin@gmail.com>
In-Reply-To: <20200213025930.27943-3-jaedon.shin@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 14 Feb 2020 11:06:51 +0100
Message-ID: <CACRpkdZ9A_SJzxQ__f0oani+A97N3yLT3=oJ8z3vNJ5Ucyo8vA@mail.gmail.com>
Subject: Re: [PATCH 2/3] PCI: brcmstb: Add regulator support
To: Jaedon Shin <jaedon.shin@gmail.com>, Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_020704_182577_7C2773B7 
X-CRM114-Status: GOOD (  14.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Florian Fainelli <f.fainelli@gmail.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 linux-pci <linux-pci@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Gregory Fong <gregory.0xf0@gmail.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jaedon,

thanks for your patch!

On Thu, Feb 13, 2020 at 3:59 AM Jaedon Shin <jaedon.shin@gmail.com> wrote:

> +#ifdef CONFIG_REGULATOR
> +       int                     num_regs;
> +       struct regulator        **regs;
> +#endif

Is this #ifdef:in necessary? Since the regulator framework provides
stubs if compiled out, I think you can just include all code
unconditionally and it will work fine anyway.

> +static void brcm_pcie_regulator_enable(struct brcm_pcie *pcie)
> +static void brcm_pcie_regulator_disable(struct brcm_pcie *pcie)
> +static void brcm_pcie_regulator_init(struct brcm_pcie *pcie)

I would replace the word "regulator" with "power" here to indicate
what it is about (easier to read).

> +       struct device_node *np = pcie->dev->of_node;
> +       struct device *dev = pcie->dev;
> +       const char *name;
> +       struct regulator *reg;
> +       int i;
> +
> +       pcie->num_regs = of_property_count_strings(np, "supply-names");
> +       if (pcie->num_regs <= 0) {
> +               pcie->num_regs = 0;
> +               return;
> +       }
> +
> +       pcie->regs = devm_kcalloc(dev, pcie->num_regs, sizeof(pcie->regs[0]),
> +                                 GFP_KERNEL);
> +       if (!pcie->regs) {
> +               pcie->num_regs = 0;
> +               return;
> +       }
> +
> +       for (i = 0; i < pcie->num_regs; i++) {
> +               if (of_property_read_string_index(np, "supply-names", i, &name))
> +                       continue;
> +
> +               reg = devm_regulator_get_optional(dev, name);
> +               if (IS_ERR(reg))
> +                       continue;
> +
> +               pcie->regs[i] = reg;
> +       }
> +}

So what this does is just grab any regulators, no matter what they are
named, and enable them? The swiss army knife used is the raw
of_* parsing functions.

I don't think that is very good practice.

First define very cleanly what regulators exist in the device tree bindings.
If the set of regulators differ between variants, then key that with the
compatible value.

Then explicitly grab the resources by name, using the
regulator_bulk_get() API, which will transparently grab the
regulators for you from the device tree.

Then use regulator_bulk_[enable|disable]
 to enable/disable the regulators.

git grep in the kernel tree for good examples!

Also involve the regulator maintainer in the review. (I added
him on the To: line.)

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
