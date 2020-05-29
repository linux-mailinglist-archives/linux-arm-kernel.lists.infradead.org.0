Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D0BF1E8B41
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 May 2020 00:22:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Eyo5pjLC5rV8abqlJmOId1fkawW7j7ULX+EECXGVV6o=; b=ILIpQJ6zHNrz4l
	7Xi9JUgNj5yZ86KCIYemnTsMvL6bDp11piTgyw1kUYkxAoun4hGmS1uc0n0QAYL3QITgwRAMNs9WV
	WZHz8JuP1TU3BpzCBO/tRmjvjkuibdYmkoveRhjk82RTc+XHma6nPRmJ+0leAmw3SpuHPsb0F28al
	wiRRW/qwP9R9ZW0z8So/eBLIBUH1zAFGfaIXKQgm5IbQYZuiFbTx4SI77lcvn3dJgPG83/qiT5oPM
	JqCtx3IquCXRlFjSBtWv48bD1sgupqQewLQzL0RBhnI3WLvBfqlGIU5NlAyVH4DjeWk4JvvMW+Z7K
	PdEeqMfxu1mPp0qYBBsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jenOo-0006Mm-6P; Fri, 29 May 2020 22:22:46 +0000
Received: from mail-il1-f196.google.com ([209.85.166.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jenOf-0006MQ-Ey; Fri, 29 May 2020 22:22:38 +0000
Received: by mail-il1-f196.google.com with SMTP id r2so4035757ila.4;
 Fri, 29 May 2020 15:22:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Wc0UZ31C0R3iMEWNK6qgINTbfHE6rJcur/PJ3R+10SA=;
 b=N9ebn8+XfeiGe4D7PA4HxxLjzD85OXbh+G+mAfUgMOnyrV0/sYxfyhBlNs1y92J7y2
 LKv6ulOw/xTYFzMN6YMHb6WkESGpSGJLZdVESeBJv/yTa8wmZYh0RO0pQ4UXUTAjZ2ND
 PJpplubCNkf139jrh5sDuNVb/lG54k4oMIAHpz1b7DPh5hWBS1HKrhhjBaN1lww3g+wq
 l5D7ogPlIsZH6hUOw4KPNMJahjiNXJgv/j4CwFG9ff0erTjeSsR5WWeHRmOd/CvojIew
 wqhsqM2ddvhlON8DBoBDf1RffRg3b6tsICoghGto8XnVvZPu6DyDTB+Qfj0oUVvtlCS4
 xaow==
X-Gm-Message-State: AOAM530XQ/tAkpcVvcPQmS+dTkTt/7GTi4ZxXR2UuROPC0hS/uQSKo6p
 gFkxnZYnbpJ+kqOe4UhZfA==
X-Google-Smtp-Source: ABdhPJyW7aiqVBA3hBYuboTheA0HD4gSduG5P8ca7spP8PYPak05yBl+9zeFg6CIcYzK5ANh312zbg==
X-Received: by 2002:a92:9ac7:: with SMTP id c68mr9620013ill.53.1590790956445; 
 Fri, 29 May 2020 15:22:36 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id h23sm4349826ioj.39.2020.05.29.15.22.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 May 2020 15:22:35 -0700 (PDT)
Received: (nullmailer pid 3095678 invoked by uid 1000);
 Fri, 29 May 2020 22:22:33 -0000
Date: Fri, 29 May 2020 16:22:33 -0600
From: Rob Herring <robh@kernel.org>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH v2 2/4] dt-bindings: pinctrl: Document optional BCM7211
 wake-up interrupts
Message-ID: <20200529222233.GA3095594@bogus>
References: <20200529191522.27938-1-f.fainelli@gmail.com>
 <20200529191522.27938-3-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200529191522.27938-3-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_152237_500087_428C9479 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.196 listed in wl.mailspike.net]
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
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 29 May 2020 12:15:20 -0700, Florian Fainelli wrote:
> BCM7211 supports wake-up interrupts in the form of optional interrupt
> lines, one per bank, plus the "all banks" interrupt line.
> 
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>  .../devicetree/bindings/pinctrl/brcm,bcm2835-gpio.txt         | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
