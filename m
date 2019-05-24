Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97D5D2989C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 15:12:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cL81FaSTx+IIzuMblPR+m07bvl/W39TGTMlR23gP3vo=; b=IIZuy/Oq4Vkitq
	pFej4klpHmkSFR/9N5QSJaBCb4rMIH19UGB27oXS2zh7EIZxXdisyg7P67LnxWK21WGBZ91K6AklJ
	JYdPLi48zIj9eBj11AFF2ExSU+dleZ74zoAGmmdyITyZN6AZULIWDmCwupK4j0tbjQovLUwFGwYJ4
	R2voLg63EHqTogRZqZTWRc0R9QJ9EoWwj+QkWyW2qDZFyeMhxmNg2TOmWMdxmlPgL65ehdsOc4FuT
	w2PAKRr02vt0yi+L4icaWRRwTLh1jSNmsOH0/BWyYcVRE/dyPKNFso5/1lwMFqwBRpxBfAAMTzao1
	Z+JKgEik+qw5WaCQW6iQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUA04-0001db-RA; Fri, 24 May 2019 13:12:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU9zx-0001dC-Cy
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 13:12:38 +0000
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com
 [209.85.222.172])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8AB5E217F9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 13:12:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558703556;
 bh=tKhfPrX2dmO9ezZf6mxbxY2vAhUhNpSLsakl1Bxcyn8=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=JkcxGakF+Lt+HcMtxOk5+lb7xkkBqdRowf6VjuTwcxl8rgelrqzX3+h+Pg4MF64Ow
 WPZDmDyINebWgNQkuaR8vSw/H7FpvjepMI6DXpKdlxb5AOkorGd7vHnXsRO+d3onFg
 WBhSVQ7SVRSUIFbHsHgVZ/WzzkhsG8oQ8xPfrG80=
Received: by mail-qk1-f172.google.com with SMTP id o2so7130557qkb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 06:12:36 -0700 (PDT)
X-Gm-Message-State: APjAAAVmXLlX7s5vAbv/B1sE6a4WS4C+4jujN/GgMY5W6WRfmOI7xlbW
 Zrt8ayUvzrkmal5zIpYdS2GAMOZf4iIoU1xayw==
X-Google-Smtp-Source: APXvYqytTZgQGqqQMRjS9lXYbNOzAf9R1ZAcqfOe/G+YmoNDnkd6kBPF7aX7Hz/UmEwStEIVkTh/H4BaFIw2vsk6/AA=
X-Received: by 2002:ae9:c208:: with SMTP id j8mr7226668qkg.264.1558703555792; 
 Fri, 24 May 2019 06:12:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190430162910.16771-1-ard.biesheuvel@linaro.org>
 <20190430162910.16771-6-ard.biesheuvel@linaro.org>
In-Reply-To: <20190430162910.16771-6-ard.biesheuvel@linaro.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 24 May 2019 08:12:24 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLioethaQ2ekxyeG1QkCwPQKcE4daDMAJXtWwXOEABmGQ@mail.gmail.com>
Message-ID: <CAL_JsqLioethaQ2ekxyeG1QkCwPQKcE4daDMAJXtWwXOEABmGQ@mail.gmail.com>
Subject: Re: [PATCH 5/5] dt-bindings: add Atmel SHA204A I2C crypto processor
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_061237_460734_27A5E742 
X-CRM114-Status: GOOD (  16.41  )
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

On Tue, Apr 30, 2019 at 11:29 AM Ard Biesheuvel
<ard.biesheuvel@linaro.org> wrote:
>
> Add a compatible string for the Atmel SHA204A I2C crypto processor.
>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> ---
>  Documentation/devicetree/bindings/crypto/atmel-crypto.txt | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/crypto/atmel-crypto.txt b/Documentation/devicetree/bindings/crypto/atmel-crypto.txt
> index 6b458bb2440d..a93d4b024d0e 100644
> --- a/Documentation/devicetree/bindings/crypto/atmel-crypto.txt
> +++ b/Documentation/devicetree/bindings/crypto/atmel-crypto.txt
> @@ -79,3 +79,16 @@ atecc508a@c0 {
>         compatible = "atmel,atecc508a";
>         reg = <0xC0>;
>  };
> +
> +* Symmetric Cryptography (I2C)

This doesn't really seem to be related to the rest of the file which
are all sub-blocks on SoCs. You could just add this one to
trivial-devices.yaml.

> +
> +Required properties:
> +- compatible : must be "atmel,atsha204a".
> +- reg: I2C bus address of the device.
> +- clock-frequency: must be present in the i2c controller node.

That's a property of the controller and doesn't belong here.

> +
> +Example:
> +atsha204a@c0 {

crypto@c0

> +       compatible = "atmel,atsha204a";
> +       reg = <0xC0>;
> +};
> --
> 2.20.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
