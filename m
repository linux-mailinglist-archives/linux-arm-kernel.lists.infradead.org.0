Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2088B6AB59
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 17:05:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2KAXZdjJ9cAzwmlMwtyvpUhmnEtCbOEoOQapGzklLTU=; b=eerQHldHpbHvBM
	3m1PaB4H664PATzvlQWMc+xN6SFoeduhbcxYer9//sIfeSp1V5sfpXe/9A5Dl66nNiQrDz/1Ng9Aw
	Uy+azzbmak7KY4c6n8LBhwK1JvOhwk7kniS9tmUtyAX65Va/ww7EfADcf4FxtBSoaWKhSxHm5ufaU
	igt+jmDteM1SMzy184pm2/eySGgVVSXZYNVReqaIUAd3RfLDNfCFH88VZLRqUM03M86euYvTza4An
	F64NjXVDrlVuMd6xduKHCWHSWhsBt9rM+v30HAG/rZ42zb/Cr9XHax+0w72djO/ydhpSMawr5Uxtd
	QaX7aeJzGzMovp6ZoHSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnP12-0006aL-6u; Tue, 16 Jul 2019 15:05:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnP0m-0006Vc-7O
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 15:05:01 +0000
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com
 [209.85.222.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9E8DC20693
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 15:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563289499;
 bh=qMHT4LhKbcv+81uzP1b96TgMB2OKJqjrClLOLrRU3oY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=oaUfITiv0hgNcoMzLW5x0E3tl1bFDM+0lhBpP6AXrQwJVWslnjSba/YecYFcrrIHJ
 RAs7GpHEICPg/7+qPj5o9FC4PnFzSWAMw+CpiOTO4IQ1JqpquMsCTlhLGhy24nWOjQ
 HYDDRSSPyYlI+2cI5N6rp8YSJpJQNE0bf6WvVQJk=
Received: by mail-qk1-f182.google.com with SMTP id v22so14821967qkj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 08:04:59 -0700 (PDT)
X-Gm-Message-State: APjAAAWhFEZXnDFuQ57FJ8/fFJy5/NtA2yXFmmDrf2Zr1ez5Bt3wKPPd
 C2XGtfLT/sO9P0753VLnXZm9dfAM/jdf+BtSqg==
X-Google-Smtp-Source: APXvYqzc1lGEIRKUk6W2DI5gAbyEEw14Pfpx9QFeFOfiGi6kMZ0tKAfX5GbQ1wOWhsE111TtrPjFiaJgvs+cASy4LFY=
X-Received: by 2002:a37:a44a:: with SMTP id n71mr21002339qke.393.1563289498889; 
 Tue, 16 Jul 2019 08:04:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190715223725.12924-1-robh@kernel.org>
 <CACPK8Xdz98CQzgE2KCjz8eOhPtx=H8jTe1hVT7LvP77U_gGASQ@mail.gmail.com>
In-Reply-To: <CACPK8Xdz98CQzgE2KCjz8eOhPtx=H8jTe1hVT7LvP77U_gGASQ@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 16 Jul 2019 09:04:47 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+AJDNZ-676iP=vv6G-pjWqBJyZ3bJ26o7i=c=KWbozSw@mail.gmail.com>
Message-ID: <CAL_Jsq+AJDNZ-676iP=vv6G-pjWqBJyZ3bJ26o7i=c=KWbozSw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: pinctrl: aspeed: Fix 'compatible' schema
 errors
To: Joel Stanley <joel@jms.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_080500_286273_3FBB5FB3 
X-CRM114-Status: GOOD (  13.81  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree <devicetree@vger.kernel.org>, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, Linus Walleij <linus.walleij@linaro.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 15, 2019 at 5:17 PM Joel Stanley <joel@jms.id.au> wrote:
>
> On Mon, 15 Jul 2019 at 22:37, Rob Herring <robh@kernel.org> wrote:
> >
> > The Aspeed pinctl schema have errors in the 'compatible' schema:
> >
> > Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.yaml: \
> > properties:compatible:enum: ['aspeed', 'ast2400-pinctrl', 'aspeed', 'g4-pinctrl'] has non-unique elements
> > Documentation/devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.yaml: \
> > properties:compatible:enum: ['aspeed', 'ast2500-pinctrl', 'aspeed', 'g5-pinctrl'] has non-unique elements
> >
> > Flow style sequences have to be quoted if the vales contain ','. Fix
> > this by using the more common one line per entry formatting.
>
> >
> >  properties:
> >    compatible:
> > -    enum: [ aspeed,ast2400-pinctrl, aspeed,g4-pinctrl ]
> > +    enum:
> > +      - aspeed,ast2400-pinctrl
> > +      - aspeed,g4-pinctrl
>
> Thanks for the fix. However, we've standardised on the first form for
> all of our device trees, so we can drop the second compatible string
> from the bindings.

Doing that would introduce validation warnings until the dts file is
updated. So we still need this change until that happens.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
