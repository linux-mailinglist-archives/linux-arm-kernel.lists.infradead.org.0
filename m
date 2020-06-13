Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C67841F821A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jun 2020 10:43:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lY3HyRe56Q7INukq94Vd2fERcBkINMeEenCz/0jXhJ4=; b=IZmCrgqX1B+ErX
	K/Q13lhNg5V+/hFIg/T6T6Yg3T4oVfUXl98DPsoki2BaeJVOQHImtezMqmDUV8ngPwBQ0W7aVw391
	0MEFYqYTQF1ZJIixZKPMvTARoNdZbJz4sC3xy8S44aaJj2q/39EIO1DDec5sG1/aP8JKpIJ7bFHc1
	7ghl1ZnmBf0ylxNZeEoWhXG2jCyHHpH2xwFt9reLh3vFg7Pexz7PaWrrmWrOsbkVwhPQtgnY3XtWh
	GhLtY21iB2swUh8NocAYrPjLqId7NhHPnAN3vqcOQC/Tzd6bS5uvS+lqJMSgX4/7CWEeCt0UKqQkG
	XGMnP1B/cVky6j4lV3BQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jk1lI-0002VG-4P; Sat, 13 Jun 2020 08:43:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jk1l9-0002Uo-1X; Sat, 13 Jun 2020 08:43:28 +0000
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com
 [209.85.208.178])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7C8E920882;
 Sat, 13 Jun 2020 08:43:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592037805;
 bh=SyRgaHUOm/RP8zZ90+MyAGaRN4cSsWrzzNGHyfuBnCk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=BgrzEr0T3JoHmKZPf5JHHJjvygSMZGF5NKn+13GG7QHtIS/IBZ7akYkLuc0TbufY0
 IdI3tEBicGVpmTrhCjhPNSbLdEFx6l03HXU1AMn8ObSGPs2e5kB+GmV2Rt/rdkNQLA
 gC00pV5XYzyrAQW5/CPir6q3bWaJ154iM+O+UJ14=
Received: by mail-lj1-f178.google.com with SMTP id a9so13698113ljn.6;
 Sat, 13 Jun 2020 01:43:25 -0700 (PDT)
X-Gm-Message-State: AOAM53155bsBvM23yD0wMag+BbKOIo0jySC9c18JfJw90bV8ShhxyYBk
 GnDWuVID5hobQbQfZSQ5ZpmL9uFzWWoNpbfxMFg=
X-Google-Smtp-Source: ABdhPJwZ1ylOrBsd6XVZmYSQ3sLMGYqoTKujz2SwyQaUfONmAEP2kaw8s4sWs89ZwT6ZjZ3AWnilqqgnG/azc96C0bc=
X-Received: by 2002:a2e:2a42:: with SMTP id q63mr9000358ljq.265.1592037803689; 
 Sat, 13 Jun 2020 01:43:23 -0700 (PDT)
MIME-Version: 1.0
References: <20200611095804.22026-1-f.suligoi@asem.it>
In-Reply-To: <20200611095804.22026-1-f.suligoi@asem.it>
From: Guo Ren <guoren@kernel.org>
Date: Sat, 13 Jun 2020 16:43:11 +0800
X-Gmail-Original-Message-ID: <CAJF2gTTojGRnshstFwqu4xM_txeBOY=uFiWPTpXZPWv2uS6QqQ@mail.gmail.com>
Message-ID: <CAJF2gTTojGRnshstFwqu4xM_txeBOY=uFiWPTpXZPWv2uS6QqQ@mail.gmail.com>
Subject: Re: [PATCH] doc: devicetree: bindings: fix spelling mistake
To: Flavio Suligoi <f.suligoi@asem.it>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_014327_130240_777AC30D 
X-CRM114-Status: GOOD (  15.07  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Jason Cooper <jason@lakedaemon.net>,
 linux-gpio@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-csky@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Acked-by: Guo Ren <guoren@kernel.org>

On Thu, Jun 11, 2020 at 5:58 PM Flavio Suligoi <f.suligoi@asem.it> wrote:
>
> Fix typo: "triger" --> "trigger"
>
> Signed-off-by: Flavio Suligoi <f.suligoi@asem.it>
> ---
>  Documentation/devicetree/bindings/gpio/mediatek,mt7621-gpio.txt | 2 +-
>  .../devicetree/bindings/interrupt-controller/csky,mpintc.txt    | 2 +-
>  Documentation/devicetree/bindings/timer/csky,mptimer.txt        | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/gpio/mediatek,mt7621-gpio.txt b/Documentation/devicetree/bindings/gpio/mediatek,mt7621-gpio.txt
> index ba455589f869..e1c49b660d3a 100644
> --- a/Documentation/devicetree/bindings/gpio/mediatek,mt7621-gpio.txt
> +++ b/Documentation/devicetree/bindings/gpio/mediatek,mt7621-gpio.txt
> @@ -12,7 +12,7 @@ Required properties for the top level node:
>     Only the GPIO_ACTIVE_HIGH and GPIO_ACTIVE_LOW flags are supported.
>  - #interrupt-cells : Specifies the number of cells needed to encode an
>     interrupt. Should be 2. The first cell defines the interrupt number,
> -   the second encodes the triger flags encoded as described in
> +   the second encodes the trigger flags encoded as described in
>     Documentation/devicetree/bindings/interrupt-controller/interrupts.txt
>  - compatible:
>    - "mediatek,mt7621-gpio" for Mediatek controllers
> diff --git a/Documentation/devicetree/bindings/interrupt-controller/csky,mpintc.txt b/Documentation/devicetree/bindings/interrupt-controller/csky,mpintc.txt
> index e13405355166..e6bbcae4d07f 100644
> --- a/Documentation/devicetree/bindings/interrupt-controller/csky,mpintc.txt
> +++ b/Documentation/devicetree/bindings/interrupt-controller/csky,mpintc.txt
> @@ -10,7 +10,7 @@ Interrupt number definition:
>   16-31  : private  irq, and we use 16 as the co-processor timer.
>   31-1024: common irq for soc ip.
>
> -Interrupt triger mode: (Defined in dt-bindings/interrupt-controller/irq.h)
> +Interrupt trigger mode: (Defined in dt-bindings/interrupt-controller/irq.h)
>   IRQ_TYPE_LEVEL_HIGH (default)
>   IRQ_TYPE_LEVEL_LOW
>   IRQ_TYPE_EDGE_RISING
> diff --git a/Documentation/devicetree/bindings/timer/csky,mptimer.txt b/Documentation/devicetree/bindings/timer/csky,mptimer.txt
> index 15cfec08fbb8..f5c7e99cf52b 100644
> --- a/Documentation/devicetree/bindings/timer/csky,mptimer.txt
> +++ b/Documentation/devicetree/bindings/timer/csky,mptimer.txt
> @@ -8,7 +8,7 @@ regs is accessed by cpu co-processor 4 registers with mtcr/mfcr.
>   - PTIM_CTLR "cr<0, 14>" Control reg to start reset timer.
>   - PTIM_TSR  "cr<1, 14>" Interrupt cleanup status reg.
>   - PTIM_CCVR "cr<3, 14>" Current counter value reg.
> - - PTIM_LVR  "cr<6, 14>" Window value reg to triger next event.
> + - PTIM_LVR  "cr<6, 14>" Window value reg to trigger next event.
>
>  ==============================
>  timer node bindings definition
> --
> 2.17.1
>


-- 
Best Regards
 Guo Ren

ML: https://lore.kernel.org/linux-csky/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
