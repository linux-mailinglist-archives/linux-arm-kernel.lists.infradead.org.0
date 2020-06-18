Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF271FFB2E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 20:37:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iWP9rO53OKo9ZiIuQ2MmVNLCrkTUYxD+onHUxVvaVc4=; b=k7e4mnzv4qExnS
	tYD8AI84BdxZ6lE+LcoPtSUxSYMn3YIAIIJSTpU6b41Ay019kFWTrALjn7BphUyEe4mm5kxayL69O
	UUoQuQZpywEAJPoJP98xJZDGLvI3KS0pmS3VZxGkTzmxfE8M2Elk2iiAzX/4ZEIhf8NdBXCZoXNAh
	bMtmMMBER9YIajD+9T2jNNr81lQH3CObjNhiKsGvF3k5RNOHVDjl/7ghccj81n6glmak2w3z/plfL
	e27LeR2oRArb/kPppIa3z3CTcMsCyq8n3JHajur9TeLjDOGQZMrJ2zd6g/sl652+w5OTAf4psVh9P
	e1htjbybTLNtNSgjejqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlzPV-0000B4-HB; Thu, 18 Jun 2020 18:37:13 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlzPL-0000Aj-Ci; Thu, 18 Jun 2020 18:37:04 +0000
Received: by mail-io1-f67.google.com with SMTP id u13so8220941iol.10;
 Thu, 18 Jun 2020 11:37:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=wygYqTNT6G3QvAJfF7oyk+ZOc5oZNOBZOOgIykuzly8=;
 b=VnzUDE8sPW983ym+XEmn+dgYjyr5wdROVlgXofNGHzZWIljh/4wI9cKis/jVglw17G
 1j9C2MZyLborvmJzQgD1Pq5R448KD7vfER+8/eWSEgnbzbWTJF26kxBXYfdgr7w/DcXu
 4Oue4RE1V7Ym0Lhqfky4CS8lyi61Hs4x6VBef52qUMrm7CUEqgQDrYoms1ETlEcPXnpL
 wQ8pYcwRZks2OfECWWUY9I0lxgQZI2h2KEhVf4ijOdvYIJGeWjO2kOiybC21devHLYoe
 cd8Yycn5SBsDDJ8ZjIwITwSJ9AmkyDSx5G6E6fg3TSZcwufAppxw5F9o5ytW8nYLdGU3
 htQw==
X-Gm-Message-State: AOAM531A+xeurnXfK0ooFVIE4GH0F/1kRWpE3nzBIdLHT4Gr9hE18H5F
 hvj3STA7A1hlWZ39uehWwQ==
X-Google-Smtp-Source: ABdhPJx7xeR3+HQ8b4NxOi/J+ZFJIhmbXIg3/1OQ2uZoV0cZx8iWwPc1ZPoV9VCjHN+gnoYYhdUOlw==
X-Received: by 2002:a02:844d:: with SMTP id l13mr5723498jah.105.1592505422376; 
 Thu, 18 Jun 2020 11:37:02 -0700 (PDT)
Received: from xps15 ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id b8sm2065295ior.35.2020.06.18.11.37.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 11:37:01 -0700 (PDT)
Received: (nullmailer pid 679615 invoked by uid 1000);
 Thu, 18 Jun 2020 18:36:59 -0000
Date: Thu, 18 Jun 2020 12:36:59 -0600
From: Rob Herring <robh@kernel.org>
To: Flavio Suligoi <f.suligoi@asem.it>
Subject: Re: [PATCH v1] doc: devicetree: bindings: fix spelling mistake
Message-ID: <20200618183659.GA679453@bogus>
References: <20200615075835.15202-1-f.suligoi@asem.it>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200615075835.15202-1-f.suligoi@asem.it>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_113703_431308_5FA14FA7 
X-CRM114-Status: UNSURE (   8.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.67 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Jason Cooper <jason@lakedaemon.net>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, Marc Zyngier <maz@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 linux-csky@vger.kernel.org, linux-gpio@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Guo Ren <guoren@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 15 Jun 2020 09:58:35 +0200, Flavio Suligoi wrote:
> Fix typo: "triger" --> "trigger"
> 
> Signed-off-by: Flavio Suligoi <f.suligoi@asem.it>
> Acked-by: Guo Ren <guoren@kernel.org>
> ---
> 
> v1: add Acked-by: Guo Ren <guoren@kernel.org>
> 
>  Documentation/devicetree/bindings/gpio/mediatek,mt7621-gpio.txt | 2 +-
>  .../devicetree/bindings/interrupt-controller/csky,mpintc.txt    | 2 +-
>  Documentation/devicetree/bindings/timer/csky,mptimer.txt        | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
> 

Applied, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
