Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BE2763E12
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 00:57:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CSSSXXhPvKctV2R/BvK1LLyBGluMFWSX7yghbj7gyL4=; b=tb4YqgEGpkfD+y
	ThGTlOMn8Z8fPIbleZUOlFXoRKkHjB864hVuX5FnlUD1hitC1nLjtRHknbSE7O1TmL+idNBa+5Sl7
	jW+N/Z5Vd0pBYEbo/Q6wv7PQpUqwse/RHsBtNTe2F8zP5uOUThc0nfvF7ZWZFOSenWI2GJaK4tzSr
	Vy4AaOxmaYyudkpjiAn0nBekjecdfukRC/lcxYUZOGsHAO33hWKl4twOYjY9hd9pdKQ6dY7/hXQB1
	dSHSZQfRnF0QAupciNK4jepAY8bGcVRvV8cQ1xNlhsdUOUqx8qdp00htRjw70p4T2l63xBJ8CWsDf
	63RxlM8Ohz8bPIrLkobw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkz2l-0001Go-Rp; Tue, 09 Jul 2019 22:57:03 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkz2a-0001Fk-IM
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 22:56:53 +0000
Received: by mail-io1-f68.google.com with SMTP id k20so510838ios.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 15:56:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=9BNTOCR0FAJ2g4YYe8k6aNoK5Zx/TmcNqpSKDP9NSpM=;
 b=cDDIuneptnWHq0hAa9j5VmTA95GlqBSZgygBVkGsVUvFVdeMmGpvif3/HeWbwDd6lg
 78c549WY257P8nvelGBFE4Bty1glidJ2Izy1ZppO2eb+pKR/PNI7SzpXbGna6FB9rUO7
 PERKapk7e9Y1oRSMV4NAJSRrTImQccS3tX9jR98QBBgDydgzw77U4a92eya0khgX6zxq
 Zp20dQLW4bUVOlDec8N96Zl9D0ahR80sIMeFLwE1gH+4FTpgmZOqiZ7DgsI8pIIUOo/1
 MzJWz6y/CECJO9AaKTL0bM4mg9CaB0pn0zSi12MwDg4b4ziROmi+juj4N0wo4y0UiG1Z
 SC4g==
X-Gm-Message-State: APjAAAUTqmZjDs5tLKvUnwu6SAHLmaHXeNNcmU1d+CnOYqUh0mJIZiR1
 uRfw3RfsC6IQYsRRw2BRPQ==
X-Google-Smtp-Source: APXvYqz+xwp1piJzrTHGP/QMIunspYfZSL/+DEFIMhBsaktuEIuhUeLCHzrMlf2OFmjZyQikva4G0g==
X-Received: by 2002:a02:8663:: with SMTP id e90mr23520924jai.98.1562713009260; 
 Tue, 09 Jul 2019 15:56:49 -0700 (PDT)
Received: from localhost ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id n2sm304558ioa.27.2019.07.09.15.56.48
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 15:56:48 -0700 (PDT)
Date: Tue, 9 Jul 2019 16:56:47 -0600
From: Rob Herring <robh@kernel.org>
To: Icenowy Zheng <icenowy@aosc.io>
Subject: Re: [PATCH v3 4/9] clk: sunxi-ng: v3s: add Allwinner V3 support
Message-ID: <20190709225647.GA12966@bogus>
References: <20190623043801.14040-1-icenowy@aosc.io>
 <20190623043801.14040-5-icenowy@aosc.io>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190623043801.14040-5-icenowy@aosc.io>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_155652_610505_BBBFCCA2 
X-CRM114-Status: GOOD (  13.84  )
X-Spam-Score: 2.0 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: devicetree@vger.kernel.org, Maxime Ripard <maxime.ripard@bootlin.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jun 23, 2019 at 12:37:56PM +0800, Icenowy Zheng wrote:
> Allwinner V3 has the same main die with V3s, but with more pins wired.
> There's a I2S bus on V3 that is not available on V3s.
> 
> Add the V3-only peripheral's clocks and reset to the V3s CCU driver,
> bound to a new V3 compatible string. The driver name is not changed
> because it's part of the device tree binding (the header file name).
> 
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> ---
> No changes in v3/v2.
> 
>  drivers/clk/sunxi-ng/ccu-sun8i-v3s.c      | 225 +++++++++++++++++++++-
>  drivers/clk/sunxi-ng/ccu-sun8i-v3s.h      |   2 +-

>  include/dt-bindings/clock/sun8i-v3s-ccu.h |   4 +
>  include/dt-bindings/reset/sun8i-v3s-ccu.h |   3 +

Acked-by: Rob Herring <robh@kernel.org>

>  4 files changed, 231 insertions(+), 3 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
