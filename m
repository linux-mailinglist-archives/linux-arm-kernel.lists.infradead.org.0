Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1027069F71
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 01:18:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FFicPgFJbWuhLVrXPs5bdNejZ4KeIZpPR3Ewj+mqNVI=; b=ICPQoU7iFWirW1
	XB5OMaQJEUdfFTzj7AvZlf88WTkWecZPly+DqLQdcFkIxd6ar7sUBBhecGURf5LseroP2Zfr5u/Xa
	FEslJJZ0RKLGVRY/Bo0P0aHpymjw/YCNceDdwr0ifzStAnG3ZWHMxkiSdvn0K3MzjAHhzdoDWqar0
	gesWOaJTJh7uKzomSA+TF8yw2ye56AC32QLq/N2tMhnodluDpiZ3NkRxcan8qWF2LiKBCZIYT0IEw
	ZVRZXAxEwHn+SV5eYkAtczd9aO5O2edlm2exFGyFYtUngaNccPLFd3YI4ZtIKeG/ody5KT3nmZtje
	6K70cBYxqU+RZAPM8ybw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnAEI-0005TN-Vp; Mon, 15 Jul 2019 23:17:59 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnADT-0005Pl-7u
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 23:17:09 +0000
Received: by mail-qt1-x843.google.com with SMTP id h21so17479307qtn.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 16:17:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pTNuKPARTwySyUt6RIFwHeD+C8HBpvsST+SWVc23gcE=;
 b=NciHeA2We081hI3Qkgy7AsZ4nH44Dn6IxDoqldO6ifze6wPVXdFKbE8AM5STJCFvLJ
 zAzk1MW5K+j1l8Hw0gXSwU/9hPTUGMVRTKzA8V0temLm9qvAZdpESJ2GASDYsk/AcpMS
 ueOHQEI6JDttZMhdVRPWTHypHdvviexml1ykc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pTNuKPARTwySyUt6RIFwHeD+C8HBpvsST+SWVc23gcE=;
 b=tfxaWxATr3507lZZrgmL1xEPHOJ8/+ncSol3gAyqncnNDXngztcmWyqJ8XIdFR8RIw
 Y1qNuAPW7whb1yDnB+0qcz/6d3s2ZADOc/0oLBE/+icPMkXMtGyFqggKTFlSsTNGhnX5
 oVbXkCfIR9N4aPi5DtF2AwqCv8uz9eLjTpGL9/HKkU685yZCG4sJBkVi6yri3zKNUU4e
 lDCqotSkZmbQy/DCbTLweDA0ByvWAjWhlk6mUeY7sg61WYdOQL3N7ScO/hw5vCH3Pxus
 BgzQ/Of1Qd9azxhe5d7E4cuGoaMVaNLelCnkTFiGps7H47Pq9BcDDSLd+Aw2TJfInR92
 mnxA==
X-Gm-Message-State: APjAAAVqczw7ioa7FVRtvt+I6ayEuzPTZt0uU+MCmpO8S5sU3p4glt/L
 MQrgLm3g2TG1jNxeL4S/CQg10maE6D9dZDngjgo=
X-Google-Smtp-Source: APXvYqxJc0v4ISkcLVlzLQuZxh/PhnbAl/t86nXT4ZSfAmxjOFMBAbcwYkAY/GLZVXs2nz+WYpc9JkkiXxXZDyNlGzw=
X-Received: by 2002:ac8:2d69:: with SMTP id o38mr20058126qta.169.1563232625324; 
 Mon, 15 Jul 2019 16:17:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190715223725.12924-1-robh@kernel.org>
In-Reply-To: <20190715223725.12924-1-robh@kernel.org>
From: Joel Stanley <joel@jms.id.au>
Date: Mon, 15 Jul 2019 23:16:54 +0000
Message-ID: <CACPK8Xdz98CQzgE2KCjz8eOhPtx=H8jTe1hVT7LvP77U_gGASQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: aspeed: Fix 'compatible' schema
 errors
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_161707_630410_7146C302 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree <devicetree@vger.kernel.org>, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, Linus Walleij <linus.walleij@linaro.org>,
 linux-gpio@vger.kernel.org, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 15 Jul 2019 at 22:37, Rob Herring <robh@kernel.org> wrote:
>
> The Aspeed pinctl schema have errors in the 'compatible' schema:
>
> Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.yaml: \
> properties:compatible:enum: ['aspeed', 'ast2400-pinctrl', 'aspeed', 'g4-pinctrl'] has non-unique elements
> Documentation/devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.yaml: \
> properties:compatible:enum: ['aspeed', 'ast2500-pinctrl', 'aspeed', 'g5-pinctrl'] has non-unique elements
>
> Flow style sequences have to be quoted if the vales contain ','. Fix
> this by using the more common one line per entry formatting.

>
>  properties:
>    compatible:
> -    enum: [ aspeed,ast2400-pinctrl, aspeed,g4-pinctrl ]
> +    enum:
> +      - aspeed,ast2400-pinctrl
> +      - aspeed,g4-pinctrl

Thanks for the fix. However, we've standardised on the first form for
all of our device trees, so we can drop the second compatible string
from the bindings.

I think Andrew already has a patch cooking to do this.

Cheers,

Joel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
