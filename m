Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A77D4CF20E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 06:55:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+k7us5TcoTGP31KTt/SiJd/DK5Xh/+w//+YCYMCgdA0=; b=mIbeeeUs1LRtam
	V6iIBgXqPIWzZa+/116r9NnChk7OhiaLvf1v7wKJO6/k+83DPs492P9Xc7WnVE+Y9jlLVH2vaPUcQ
	92pt3s53T6V79qV7cHNEn9ISgLFjEbmJ45DMPB6Ledq0vJu0Nh4rCFDKBYwI31MfeXb5DVf93i7Rs
	Sqe6IOfNgB8WIhJiFVC31SEeAqDGFSlfUzgc87f4bxnC4xCMjrHPN7+lUYBzseqN3gUrW0SUy/3Rb
	lYa1eg4FwCyiBht/agZYdbeBo6HUOp27ck/LuJrsrzI/dYUxWe7Ktse4z0MhNiUiMeOps2QABffeT
	oBLp0El6rgyFO6Vfpuxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHhWi-0004q0-Sq; Tue, 08 Oct 2019 04:55:12 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHhWX-00046U-RG
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 04:55:03 +0000
Received: by mail-qt1-x841.google.com with SMTP id c21so23137490qtj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 07 Oct 2019 21:55:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NuipLPrWDOHTna4R81Ns0ysok+dpoazuekwN/UYksCI=;
 b=b1UAUxoBcI9azVyX+4fyfcr8QslbKfW+ZNjl72tAkSBp/Jy1YWJ+tFCP3v/iE6uGZo
 uFsmfF5NevYXiJYD5i7adKbaXEvLAmRipJapvNOvu3mvQmzrlB3fmOhmdHk3VfVgkcIQ
 vSxJM5Stk3ECN5ymfkv9mvlbQe33hpkkFLtxQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NuipLPrWDOHTna4R81Ns0ysok+dpoazuekwN/UYksCI=;
 b=YzhVPJXhP6ZRX4XsOUT8xexU4M9nP00hTp7VbVUZIEex+yEBCBoPTJhWgNr0w+wmZZ
 DC91KjbUsLolGMOmEygL2tYEq2/85fOLMZ3R/UhtcEP+EHNXCURmA0PxvSar+BnpyWAf
 S22VGm7+1vKE6aH0jYZmm/OlSm4UXFZiwuS28wfrneBa9Fr7Opm8jucx/Zdx2iImrDlv
 AIw6Go2zoM6nuxlt47Mx5KDnxaF6MFV/9sF5YgfqujVRZ4pih6DGyrMuXSkPwPdwAtLI
 tKQr3b924hMthDdJ0jEJdVwMtkDzJnCLT5HLZ+w0okMjtxqwX01H37n2LZD4vxWUCDV1
 GABA==
X-Gm-Message-State: APjAAAUGTmP3jBIZNwRZOEfRnZOVkShBcOR7uaIAKd2uMm3FRfPWfVRK
 ornnmU6oYRXg0KThU2X6BWBvTgePbnbtK22R4Kc=
X-Google-Smtp-Source: APXvYqz5wHXB1nmfXhmlr/qLAPDW3G+ziIzScyrrHSPrhN9j+O+3LkVT/JnM12/t9lcaqiMe59v/oRgpIA9UeoUtEwI=
X-Received: by 2002:ac8:670c:: with SMTP id e12mr33620565qtp.169.1570510499983; 
 Mon, 07 Oct 2019 21:54:59 -0700 (PDT)
MIME-Version: 1.0
References: <20191008044153.12734-1-andrew@aj.id.au>
In-Reply-To: <20191008044153.12734-1-andrew@aj.id.au>
From: Joel Stanley <joel@jms.id.au>
Date: Tue, 8 Oct 2019 04:54:47 +0000
Message-ID: <CACPK8XeKx_W0_b6ZLJzVdtQQOL8eZ3FcscB5TZT5NXMwRi4r6g@mail.gmail.com>
Subject: Re: [PATCH 0/7] pinctrl: Fixes for AST2600 support
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_215501_949910_728929FE 
X-CRM114-Status: GOOD (  15.38  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, johnny_huang@aspeedtech.com,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Ryan Chen <ryanchen.aspeed@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 8 Oct 2019 at 04:41, Andrew Jeffery <andrew@aj.id.au> wrote:
>
> Hello,
>
> This series resolves several issues found in testing by Johnny Huang from
> ASPEED, who also contributed the patches to fix them. We'll have more patches
> from him in the near future (which I'm pretty happy about).

For the series:

Reviewed-by: Joel Stanley <joel@jms.id.au>

These patches have been in the OpenBMC tree for a while and look good.

Cheers,

Joel

>
> The major issue resolved is the way I grouped the eMMC pins. What I had was
> ugly and I want to get rid of it before the binding is solidified with the 5.4
> release.
>
> The remaining fixes are minor issues that stem from lack of documentation or
> understanding on my part, and at least one brain-fart.
>
> Please review!
>
> Andrew
>
> Andrew Jeffery (4):
>   dt-bindings: pinctrl: aspeed-g6: Rework SD3 function and groups
>   pinctrl: aspeed-g6: Sort pins for sanity
>   pinctrl: aspeed-g6: Fix I2C14 SDA description
>   pinctrl: aspeed-g6: Make SIG_DESC_CLEAR() behave intuitively
>
> Johnny Huang (3):
>   pinctrl: aspeed-g6: Fix I3C3/I3C4 pinmux configuration
>   pinctrl: aspeed-g6: Fix UART13 group pinmux
>   pinctrl: aspeed-g6: Rename SD3 to EMMC and rework pin groups
>
>  .../pinctrl/aspeed,ast2600-pinctrl.yaml       |  86 ++++++------
>  drivers/pinctrl/aspeed/pinctrl-aspeed-g6.c    | 124 ++++++++----------
>  drivers/pinctrl/aspeed/pinmux-aspeed.h        |   3 +-
>  3 files changed, 98 insertions(+), 115 deletions(-)
>
> --
> 2.20.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
