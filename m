Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B57B1E87E0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 21:32:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O2Q2/4SBdx2U6khioJEidNYcY0bPHwKJBXIJEP7PYBE=; b=ryBJ3b3LLHTHgo
	zNfsX0dDIvjQ3EM5M46y46yXhOmsnkjrtD9/SrV/4u3fUY2jHwiPE/kFrpmixcpNhnwZAAAAVW+cG
	7BEtRGETdBuGfPvMxipvFsUpjm9WZ4PA8VRcd9OoAh+w7cIGP6EpVPl6KonXklMD5SownYdH7Ciu5
	l5XQ5e7AP553PWIUgo45c6SHjMLc+LNlqvWm6/RXdir7lDZvej6WJEK085zWKBQnCr+7eE6ko/BG6
	Rd9j2GCSk5XB+QwPXC+mVBXdjLgHpwUqsuaP89YMYtSV5YFVGX4ygPLsK/Sr3qIm1hcdWc5gITFfS
	C/fKUtnnvMVUnGmAYRGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jekjr-0005Om-Lz; Fri, 29 May 2020 19:32:19 +0000
Received: from mail-il1-f194.google.com ([209.85.166.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jekjg-0005OE-GF; Fri, 29 May 2020 19:32:09 +0000
Received: by mail-il1-f194.google.com with SMTP id t8so3095233ilm.7;
 Fri, 29 May 2020 12:32:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=WLIXs+NotcPvB/2nb4x3iCIqRLOdwgpWw+TVrHgQ7j0=;
 b=ByrIoLI4DjEpKdWR8ifXCYOrzELsW3qgDmsooUsyTwFhMiNDxihSanWRGisRyDK2yy
 fc4flHFMbO3vIPujRqj73BOqj9NvyNfcl+8gYGl0Mkd2uBINq9ygBY64VHAMXZEnNt3l
 QIzM1ccVhZsAoDvBjzwcf0Nz66bjI1ufLeDlaWtcf8Naj5yPUtIh29rKtCQmaOTKyyaB
 5uE2qzXcZsRV+uCnPaW1qk2TB8lnMjhVSku50CuRfprpFy/hYMTOXNaAusDC1t+3888E
 svdk01APxHWNeFSrJLllNO9CrjrwMgM/LZaj4IWiZvjlzUaTHU6OfxT7vAbijCkpP5Tk
 RESQ==
X-Gm-Message-State: AOAM5309IIX3pNwRPg+0Yvf8Pnu3+WSVW/g2zcXitObuI+rLkKv8EImi
 8aqShAfkYwsoQcstBiSaZQ==
X-Google-Smtp-Source: ABdhPJzLV4Nh06NDTo1GqYtMBGKgDfGEco5yimV1fqmE6f7qX9jUhDGQjrePOOMW9O2eVU9uMOmh5A==
X-Received: by 2002:a92:c9c6:: with SMTP id k6mr9282512ilq.192.1590780727627; 
 Fri, 29 May 2020 12:32:07 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id f26sm2734253ion.23.2020.05.29.12.32.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 May 2020 12:32:06 -0700 (PDT)
Received: (nullmailer pid 2807651 invoked by uid 1000);
 Fri, 29 May 2020 19:32:05 -0000
Date: Fri, 29 May 2020 13:32:05 -0600
From: Rob Herring <robh@kernel.org>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH 1/4] dt-bindings: pinctrl: Document 7211 compatible for
 brcm, bcm2835-gpio.txt
Message-ID: <20200529193205.GA2807600@bogus>
References: <20200528192112.26123-1-f.fainelli@gmail.com>
 <20200528192112.26123-2-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200528192112.26123-2-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_123208_537849_8894D037 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.194 listed in wl.mailspike.net]
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
 <devicetree@vger.kernel.org>, Scott Branden <sbranden@broadcom.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, Ray Jui <rjui@broadcom.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
 linux-kernel@vger.kernel.org,
 "open list:PIN CONTROL SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 28 May 2020 12:21:09 -0700, Florian Fainelli wrote:
> Document the brcm,bcm7211-gpio compatible string in the
> brcm,bcm2835-gpio.txt document.
> 
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>  Documentation/devicetree/bindings/pinctrl/brcm,bcm2835-gpio.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
