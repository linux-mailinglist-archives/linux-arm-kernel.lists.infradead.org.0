Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F3CF1D720B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 09:40:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dSMQ3C0PbbLlQqZMDaiSRjmEf4LUkdtknodbBXveFaw=; b=WIOjO4thzM3AX4
	Akf6zLr405W94Ex5UIqHp1EZdpj3fjPdocpM8232p+4lOEQuJ/e25IYOheWyeOu+8HWJWJRXx5i/j
	Mb3wKje/kkqurnmigbW5Dv9WwhIK526Ufx32P+HRHXP2MsB6PmJKNQFhq7TdzTnB4zfPLn662J8+e
	gXtbjn2zsR7RMTQwtFGsOOdxco3rvzXW8OhW/XJTDMa0LvakVQbHIkY1iYcu14s1o2ZG84K0gPoul
	g8JqqqUOhcXSAV2az+klnpXuJrNFvMM+YwuSZmjVR26rdWgaaMhzEuEcg+6vKZDdGtwoeM+mXhbV5
	ACppH+7nBbnXUmm6uL9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaaO4-00009J-8e; Mon, 18 May 2020 07:40:36 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaaNv-00008g-4D
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 07:40:28 +0000
Received: by mail-lf1-x141.google.com with SMTP id 82so7163144lfh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 00:40:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mbNo2bO8UT/NFEvCqltEb1Sgxiq57A9y9mhkDWjZGSA=;
 b=aK+zuEJG4robhm4skrw9lQNXp7D7AJSechYuPi13f1BmzrJUmpTkyQylwz0URbvJLt
 7Cdcro5gNOORmzH0rJCovjXjSk+ZIFt8jMV7hsiCF1BLk+AKvv1bEnwxAphyNvWJo1Oy
 Zgz3Esz1YYsCEbGWg5OAAbyclu6DQLuJPFnE5tp7nLRwqAOLMAvvuPyeyxckFcHXYfSS
 i3+mBKWz2GgyRpDw/BdYs0ZpOhWHD8v2dW/mc6YEr00sH/zxDPzEa3L7iopeXyRcQ8Xl
 i5hrG3E+IcMMe2MIZ90GFX9NqyZCTOSqMRpY05fav78/Pc7HAZu2Jy3l1y3tXnYsZQez
 ObgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mbNo2bO8UT/NFEvCqltEb1Sgxiq57A9y9mhkDWjZGSA=;
 b=iUz9MCsOy0znwgfagKElKWWdp1hdXLaQWmVGrqGGGY8+QXm6kBdzWKL350e8FHvTj8
 r91hthKUppo4rkMgB+DtYhW81nQ5tYnEGw8G0ewOW4LKldzgxIwjB5v2I47s4xozcEuy
 bka8+ZhSD5RML3XXt3QxNkUDXoHNY+Y/x4nkeliMHYjRAl8OZF34G3zawSs4ThPGDM7R
 pd1bju1VaqfVRoJmI+5ALstx8fjJ2YX7x2vM40bNIUPeYj7+engbiDIkwDJYkoMguIRx
 6778xK5krbo2VgZ0SAbkLQmworVwsp+2gnvSME0FiDrQ3PeR0ZqTvnDYNSl9Eh70sdal
 1lsw==
X-Gm-Message-State: AOAM532wUUEBsCluQyAL9wKUko9+VIEneR1sp0CmVqC+g6db5y33B6/B
 o4kR9ga0AEArdNINMaTf7gP2aRfs32MiSjY4fWuvYA==
X-Google-Smtp-Source: ABdhPJyzpxA/jPQ4m8GVMOhz93WPaHbW4zXids0G1ejXAyNHf7LdEoJ/7wtEq0WWnsDkRrcVjUxYEX0ptm1k0s0Iwa4=
X-Received: by 2002:ac2:414c:: with SMTP id c12mr10660804lfi.47.1589787625454; 
 Mon, 18 May 2020 00:40:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200513141134.25819-1-lars.povlsen@microchip.com>
 <20200513141134.25819-2-lars.povlsen@microchip.com>
In-Reply-To: <20200513141134.25819-2-lars.povlsen@microchip.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 18 May 2020 09:40:14 +0200
Message-ID: <CACRpkdZa7OM3bqB+zRprEQ3M4m9hG3uPCoYxrdH_O=oxD8zi8Q@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: pinctrl: Add bindings for mscc,
 ocelot-sgpio
To: Lars Povlsen <lars.povlsen@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_004027_170069_94718AE9 
X-CRM114-Status: GOOD (  12.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 SoC Team <soc@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 4:11 PM Lars Povlsen <lars.povlsen@microchip.com> wrote:

> This adds DT bindings for the Microsemi SGPIO controller, bindings
> mscc,ocelot-sgpio and mscc,luton-sgpio.
>
> Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>

> +  microchip,sgpio-ports:
> +    description: This is a 32-bit bitmask, configuring whether a
> +      particular port in the controller is enabled or not. This allows
> +      unused ports to be removed from the bitstream and reduce latency.
> +    $ref: "/schemas/types.yaml#/definitions/uint32"

I don't know about this.

You are saying this pin controller can have up to 32 GPIO "ports"
(also known as banks).

Why can't you just represent each such port as a separate GPIO
node:

pinctrl@nnn {
    gpio@0 {
        ....
    };
    gpio@1 {
        ....
    };
    ....
    gpio@31 {
        ....
    };
};

Then if some of them are unused just set it to status = "disabled";

This also makes your Linux driver simpler because each GPIO port
just becomes a set of 32bit registers and you can use
select GPIO_GENERIC and bgpio_init() and save a whole
slew of standard stock code.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
