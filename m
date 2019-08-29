Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F199A2A5E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 00:56:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yn37ZvA7TNh3HOpMVE1FPSkaRZ/XG89vhh/cSoiS5zI=; b=FEJu3wfY5U/GMv
	7oTAHXSvA/MuoReriHTcvgKlj+u41yQnOZ8V0SMH4yFjq8whd3vN55E7m6IDdnLriIbUTh9Q+/Nhe
	gbTo3/yWlibh+ol/2xd7yqFpZxvbTevo6fzjSmskxhjE8NON2xUu7Dbqq/nL9B0yHLt4zUP+3VUdd
	vJfx+val/CqzRO5EbpshSp4FusGRW21qqEgIwmHdqbnNVy7pAau/8wODfVWMleJvDucfsYtTAeyC7
	efx41+dFufIZu/KXIe/tjmFlYF1GJjRgtiMNdLcqpxlKrVmhU4os42V9g1Aw+9LVT3R74v6+4TcMz
	6FY9rBpwR7P1nNXo0qhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3TKv-00079Z-Jp; Thu, 29 Aug 2019 22:56:13 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3TKn-00078p-2e
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 22:56:06 +0000
Received: by mail-oi1-f195.google.com with SMTP id t24so3863729oij.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 15:56:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=AcqAKzCkm/gS75dDEccyBh6Oz2jirMULmsO7hRuPRrg=;
 b=QeYX+/9T3UDd9iiRua5IgExjFQOF00iSST4ZnS2FuxQLahB8yTjVoF2Yelr6wtPVkZ
 TEbEUyE1n3JQSEs7N40sspnGDxjIvq7CuO1HXtis6/i0ftNcCDCsZdfwTbUDa7Ytdxcz
 vLh69GJvl9k2QxsmKlBs6aZoK/GdxIeU07Z9Umeoii/csmJTcmmx8Xwt0UkET3yNRFiD
 P2vACmDjFNI1EqfEZ1OsqsnSrJPrDKPs6Z85PLb7J5mC4D2jx9z6lVHpXzJBhkMz/bem
 QWc7ACbK745kMDelSOb1pM4hmQ1h8dZCBPiiMvuqcJ2fSTg6a/qTATly1YdB1ly4LOt8
 Z0HA==
X-Gm-Message-State: APjAAAXAbZw3m+uctX8SL72xmywXnt1XUKCR2IZbabu55sokbU1gUy/l
 kEw1jAjVWcBdo8BzdJl9bw==
X-Google-Smtp-Source: APXvYqwkvLByG+E3adSffoHfKaAwsMfaOUgusko2o61o2oZkDP5FVCtM+58yL1hGvRelXT0PjmhLBg==
X-Received: by 2002:aca:f5c8:: with SMTP id t191mr8247459oih.61.1567119363695; 
 Thu, 29 Aug 2019 15:56:03 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id i22sm1253218oto.80.2019.08.29.15.56.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 15:56:02 -0700 (PDT)
Date: Thu, 29 Aug 2019 17:56:02 -0500
From: Rob Herring <robh@kernel.org>
To: Ivan Mikhaylov <i.mikhaylov@yadro.com>
Subject: Re: [PATCH v2 4/4] dt-bindings/watchdog: Add access_cs0 option for
 alt-boot
Message-ID: <20190829225602.GA15783@bogus>
References: <20190826104636.19324-1-i.mikhaylov@yadro.com>
 <20190826104636.19324-5-i.mikhaylov@yadro.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190826104636.19324-5-i.mikhaylov@yadro.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_155605_121326_A131ED0F 
X-CRM114-Status: GOOD (  16.98  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Alexander Amelkin <a.amelkin@yadro.com>, linux-watchdog@vger.kernel.org,
 linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 openbmc@lists.ozlabs.org, Guenter Roeck <linux@roeck-us.net>,
 linux-kernel@vger.kernel.org, Joel Stanley <joel@jms.id.au>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 26, 2019 at 01:46:36PM +0300, Ivan Mikhaylov wrote:
> The option for the ast2400/2500 to get access to CS0 at runtime.
> 
> Signed-off-by: Ivan Mikhaylov <i.mikhaylov@yadro.com>
> ---
>  Documentation/devicetree/bindings/watchdog/aspeed-wdt.txt | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/watchdog/aspeed-wdt.txt b/Documentation/devicetree/bindings/watchdog/aspeed-wdt.txt
> index c5077a1f5cb3..023a9b578df6 100644
> --- a/Documentation/devicetree/bindings/watchdog/aspeed-wdt.txt
> +++ b/Documentation/devicetree/bindings/watchdog/aspeed-wdt.txt
> @@ -34,6 +34,13 @@ Optional properties:
>                  engine is responsible for this.
>  
>   - aspeed,alt-boot:    If property is present then boot from alternate block.
> +                       At alternate side 'access_cs0' sysfs file provides:

What's sysfs?

Don't put Linux stuff in bindings.

> +                       ast2400: a way to get access to the primary SPI flash
> +                                chip at CS0 after booting from the alternate
> +                                chip at CS1.
> +                       ast2500: a way to restore the normal address mapping from
> +                                (CS0->CS1, CS1->CS0) to (CS0->CS0, CS1->CS1).
> +
>   - aspeed,external-signal: If property is present then signal is sent to
>  			external reset counter (only WDT1 and WDT2). If not
>  			specified no external signal is sent.
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
