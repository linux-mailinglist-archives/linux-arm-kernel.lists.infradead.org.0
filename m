Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7233F1E87E6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 21:33:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0w1U19Tu+ZyhEz+InFpBaMo5CfRJdgAiygIWnoQeYLE=; b=PdkhedOVar1XmV
	+/YiIv2iP+nHKRzovb5Wga0k3ODieCOWvQCWqrgT3CS7b2fJwV+dlVjqCAfd3lrJBIFwfTFbux4uq
	w/nH7XMyvi/cp4oCiNlbqLcCR2TV5YvkCP03SdzScg1lz2v0IFkVueseyyUQkvLZGOShP4TX2c63k
	o7FucYkIanT+NZbWeTaXMHrkHsGDFE8QVVl8ESPqW0gDTAzwHXJcxxUwT+qZmHF1gSY6mLqS+O3LG
	crp5oimi5IVoMQE6NDGP5Zf+94M4oQEjgM296y36Tt3issWqe09tMOadO1acj0/hGn92VVpKhrnzx
	/MAeWjauid3F3dpBt0jA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jekl1-0005us-FI; Fri, 29 May 2020 19:33:31 +0000
Received: from mail-il1-f195.google.com ([209.85.166.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jekko-0005s0-GX; Fri, 29 May 2020 19:33:19 +0000
Received: by mail-il1-f195.google.com with SMTP id q18so3635526ilm.5;
 Fri, 29 May 2020 12:33:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=HaHhSB17W/IlOTGOe08YGp7TtMhBgeaK7abHKzgcsJk=;
 b=DUSMT89P0/LtvPvBf8DygjbD1TpM1/qDJbwEqBVrtDh+HjedCZYUyhbJPgx6JVUP6j
 GOQ1/RqYgPkBStAYSD9fkDnNEIlUbGoW/8PbEIbLoBjC0gBX1zsUyeiHiWeGpL1jXSfT
 MDxYw5GNzZ9z6aYvOD5GioYIvIjBodfUf3dOsm1uQcqpi75S0rJLcaYAcUc87yKvMJRI
 KPX123qzrzYDWrrqxg/elFteILMjsUXpAWOLQogkl9H1jQF1sUHhJbRHoCBWBT+fcSxv
 7IZh2NYroqxMBGCuAtcIwAIuIAwqOcw3ZW24FfLU58sdfFnK5vSaCTKEVBrRcMLGejMN
 l4PQ==
X-Gm-Message-State: AOAM530A9j/XX46YcmbCPO1alXywAuUcQK2o6tyFi3v0m30dIDa3Ae+p
 /YhyRdSg7AA552Twi4CWEw==
X-Google-Smtp-Source: ABdhPJwGVdaivmdbooaEE6GOIo4lw23DLyUMNmBctT9PTU9ypysmC/lNyHdIIhPAdef7KLZQb4REwQ==
X-Received: by 2002:a92:507:: with SMTP id q7mr8789982ile.150.1590780797578;
 Fri, 29 May 2020 12:33:17 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id p69sm1807537ili.75.2020.05.29.12.33.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 May 2020 12:33:16 -0700 (PDT)
Received: (nullmailer pid 2809579 invoked by uid 1000);
 Fri, 29 May 2020 19:33:15 -0000
Date: Fri, 29 May 2020 13:33:15 -0600
From: Rob Herring <robh@kernel.org>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH 2/4] dt-bindings: pinctrl: Document optional BCM7211
 wake-up interrupts
Message-ID: <20200529193315.GA2807797@bogus>
References: <20200528192112.26123-1-f.fainelli@gmail.com>
 <20200528192112.26123-3-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200528192112.26123-3-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_123318_558842_5B0370C4 
X-CRM114-Status: GOOD (  13.24  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.195 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
 linux-kernel@vger.kernel.org,
 "open list:PIN CONTROL SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 28, 2020 at 12:21:10PM -0700, Florian Fainelli wrote:
> BCM7211 supports wake-up interrupts in the form of optional interrupt
> lines, one per bank, plus the "all banks" interrupt line.
> 
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>  .../devicetree/bindings/pinctrl/brcm,bcm2835-gpio.txt         | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/pinctrl/brcm,bcm2835-gpio.txt b/Documentation/devicetree/bindings/pinctrl/brcm,bcm2835-gpio.txt
> index dfc67b90591c..5682b2010e50 100644
> --- a/Documentation/devicetree/bindings/pinctrl/brcm,bcm2835-gpio.txt
> +++ b/Documentation/devicetree/bindings/pinctrl/brcm,bcm2835-gpio.txt
> @@ -16,7 +16,9 @@ Required properties:
>    second cell is used to specify optional parameters:
>    - bit 0 specifies polarity (0 for normal, 1 for inverted)
>  - interrupts : The interrupt outputs from the controller. One interrupt per
> -  individual bank followed by the "all banks" interrupt.
> +  individual bank followed by the "all banks" interrupt. For BCM7211, an
> +  additional set of per-bank interrupt line and an "all banks" wake-up
> +  interrupt may be specified.

Is 'all banks' the name? Generally 'wakeup' is used for a wake up irq.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
