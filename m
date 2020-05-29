Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC8621E8A4C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 23:45:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OuVGWhn+leke7uXLYK2CfsybSAwLROjZzRB5B5iaoxk=; b=Vy0kIsPGoAujjb
	jPYc7S2kDl+nmUGPERqe1nQNfutK3qKjxjGKodj5AVTVQ8/a8wHI9T30ZZAbyUPHh1KMXczPA0awm
	XPYVabyumxWn5tJNdHy//J5ZEojPh9jVhYq9rF9cOCh0rH0FiCv3gPdd3dIgEsgJbkCH0Nos2LY+t
	f4ruCrT/repn7zJAh/cCM/d4rtf51iMVASTsjU05ekjzjUBfQ3GS7htKHQ6J4LEfnK3mg1YrNp3ti
	2pKTBNIQ5f5sF/Ne/2WQG5MgD+fXMTh3Iq2yeWd8zqPcHkkMxVa2lz1UBUeEYhlh70V7oqco1jZgV
	6v8kqv2ezIDQnXU2sEVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jemom-0000eU-IA; Fri, 29 May 2020 21:45:32 +0000
Received: from mail-il1-f193.google.com ([209.85.166.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jemod-0000do-JT; Fri, 29 May 2020 21:45:24 +0000
Received: by mail-il1-f193.google.com with SMTP id 17so3983313ilj.3;
 Fri, 29 May 2020 14:45:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=gr0zXVVEplEEw2j9ufWrSiyQP2XN9MvxyfVD2I7gbHQ=;
 b=TUFN6cvs98vo4mjKYknmRN7sJpTM4loD6nyANIJZkWPVI6QiESfwJO+bWwe969I/jU
 LrQIKcBWFszqpJ1cx/iqlIG5a+C7RMFgO9ha7zTY72+UnSs0N2sdfwD2qJAWa9UeVWkM
 cTkEy8RmmkdTNegNSphvE2RBzrUUsiAKEPoLklrLGl56xL7Z7pFwZ2rBzlwbo7e7a3lY
 2avKzRf5rm4Pg3D00AUlZ+se4p8ZUQDnGKSMUMIKTYN18dwg2YBqeN6WFSQit6myiFhH
 Pcb4OcYCJLxszSY708cdn+/Ab6S9UfrMRnmw/M3jnEou4io54JFomAuMnf7T3j4ONaIM
 1QhA==
X-Gm-Message-State: AOAM531B+TZnLpzTe8FioHpyNBUzIxsJ7ZxDe5TbqAaRAM2htlyv3jdj
 +XyxfBv08ZUJ/ZC1UuwRPw==
X-Google-Smtp-Source: ABdhPJzjdTgPakR313ticbx9ElFMdis/0s2/gMfV5CG62ElhWJEG0x+1MYzSLCe7d3QknAKFV0d7CQ==
X-Received: by 2002:a92:c68c:: with SMTP id o12mr8480896ilg.96.1590788722523; 
 Fri, 29 May 2020 14:45:22 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id g4sm5334133ilj.45.2020.05.29.14.45.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 May 2020 14:45:21 -0700 (PDT)
Received: (nullmailer pid 3036995 invoked by uid 1000);
 Fri, 29 May 2020 21:45:19 -0000
Date: Fri, 29 May 2020 15:45:19 -0600
From: Rob Herring <robh@kernel.org>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: pinctrl: Document 7211 compatible
 for brcm, bcm2835-gpio.txt
Message-ID: <20200529214519.GA3036732@bogus>
References: <20200529191522.27938-1-f.fainelli@gmail.com>
 <20200529191522.27938-2-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200529191522.27938-2-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_144523_641336_FE131065 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.193 listed in wl.mailspike.net]
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
 Scott Branden <sbranden@broadcom.com>,
 "open list:PIN CONTROL SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Ray Jui <rjui@broadcom.com>, Linus Walleij <linus.walleij@linaro.org>,
 Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
 linux-kernel@vger.kernel.org, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 29 May 2020 12:15:19 -0700, Florian Fainelli wrote:
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
