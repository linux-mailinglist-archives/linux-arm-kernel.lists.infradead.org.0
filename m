Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 112E8E9231
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 22:38:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yW3IFwsZf5WxdTefo1apBk0agOzdM3bet3XO6Gb9VDQ=; b=j2r3e/p3d7M7aX
	bv0cgfE5BrH0LGJEra8RNp7z+6f7y+HStJx7A68ie/3PS7gsQfPT6I6DT9FUeFWW9M+enyfJ2VIUd
	IC4a5p7TTruXSpZwgcvfMiL176kICLP4TdAlCjSSYMMZttC1EJP78UNhhQISukKNPw4ZcUfrAdJdc
	xaedCQiwoghvGZ7KQ1O8JnApYQ8vw8puiTeRWNK5hNdDXAMh0OtdtVKHtcykAggfgZuNmr8Xf2G0m
	CP6DpKewu79jHrNT8MAYvW1rRqSIevBUUX0T5KNiYOJlw5ObWpL7xgdTzip+/OaZ9lnkmgBJDRbnr
	YbbkSSMQEIjxe7gQ2+9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPZBq-0003qm-IY; Tue, 29 Oct 2019 21:38:10 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPZBg-0003pp-57
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 21:38:01 +0000
Received: by mail-ot1-f65.google.com with SMTP id b16so239923otk.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 14:37:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=HPk/5F3b4dwjuAgfQmnttu0kTaOON9LgkQM/V749G3U=;
 b=FFbbCkhiKJ24/WZTGqjwvy+LbSL2ovnfi8E0r7aAMhPcLRFwvTfBvju8SlabnUAK49
 +8SkIYoMDdDgoR8zLS9odNQG2x/uBvDAeddwEZ7+EaA4qY8vuU5cxoZ5locnVbqawdUO
 AwMYu18+XYieSsqbadE7xsAfcC0wOC9U3sJX8WcOVvgjdrMAIpcopXQj373+AUlknUmP
 bCWkImnLVHpIUGUMQkob4dx5knDYCSTEH8N1pwoybYN/EYzERT6eJhCSBatRb6i1Z38p
 f/lnRZHHWqf0uG2Pi4XKw4zzzvL7Ns21XVAq0incr8Eu/wtaboYV4MhhekTPesAxhunO
 TkSg==
X-Gm-Message-State: APjAAAWmb3j5a1JBy/OEoEkE9/rJyrqmUSubqmJh8P2CscJzBRV/H4TA
 PPAVSsd1T7IXIt4h1GGb4g==
X-Google-Smtp-Source: APXvYqy7vhLoX8SU0VKqi+P/9oYgBPX9zkqE7WV/iDYFf8wu0E5QI6Ui9HTTqSZxoCU6ChBhHps5bQ==
X-Received: by 2002:a9d:6655:: with SMTP id q21mr16322722otm.47.1572385079003; 
 Tue, 29 Oct 2019 14:37:59 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id k10sm4175oig.25.2019.10.29.14.37.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 14:37:58 -0700 (PDT)
Date: Tue, 29 Oct 2019 16:37:57 -0500
From: Rob Herring <robh@kernel.org>
To: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
Subject: Re: [PATCH] pinctrl: at91: Enable slewrate by default on SAM9X60
Message-ID: <20191029213757.GA8829@bogus>
References: <20191024172234.5267-1-codrin.ciubotariu@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191024172234.5267-1-codrin.ciubotariu@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_143800_197059_427C402E 
X-CRM114-Status: GOOD (  14.92  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, alexandre.belloni@bootlin.com,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, ludovic.desroches@microchip.com,
 claudiu.beznea@microchip.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 24, 2019 at 08:22:34PM +0300, Codrin Ciubotariu wrote:
> On SAM9X60, slewrate should be enabled on pins with a switching frequency
> below 50Mhz. Since most of our pins do not exceed this value, we enable
> slewrate by default. Pins with a switching value that exceeds 50Mhz will
> have to explicitly disable slewrate.
> 
> Suggested-by: Ludovic Desroches <ludovic.desroches@microchip.com>
> Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
> ---
>  drivers/pinctrl/pinctrl-at91.c     | 4 ++--
>  include/dt-bindings/pinctrl/at91.h | 4 ++--
>  2 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/pinctrl/pinctrl-at91.c b/drivers/pinctrl/pinctrl-at91.c
> index 117075b5798f..c135149e84e9 100644
> --- a/drivers/pinctrl/pinctrl-at91.c
> +++ b/drivers/pinctrl/pinctrl-at91.c
> @@ -85,8 +85,8 @@ enum drive_strength_bit {
>  					 DRIVE_STRENGTH_SHIFT)
>  
>  enum slewrate_bit {
> -	SLEWRATE_BIT_DIS,
>  	SLEWRATE_BIT_ENA,
> +	SLEWRATE_BIT_DIS,
>  };
>  
>  #define SLEWRATE_BIT_MSK(name)		(SLEWRATE_BIT_##name << SLEWRATE_SHIFT)
> @@ -669,7 +669,7 @@ static void at91_mux_sam9x60_set_slewrate(void __iomem *pio, unsigned pin,
>  {
>  	unsigned int tmp;
>  
> -	if (setting < SLEWRATE_BIT_DIS || setting > SLEWRATE_BIT_ENA)
> +	if (setting < SLEWRATE_BIT_ENA || setting > SLEWRATE_BIT_DIS)
>  		return;
>  
>  	tmp = readl_relaxed(pio + SAM9X60_PIO_SLEWR);
> diff --git a/include/dt-bindings/pinctrl/at91.h b/include/dt-bindings/pinctrl/at91.h
> index 3831f91fb3ba..e8e117306b1b 100644
> --- a/include/dt-bindings/pinctrl/at91.h
> +++ b/include/dt-bindings/pinctrl/at91.h
> @@ -27,8 +27,8 @@
>  #define AT91_PINCTRL_DRIVE_STRENGTH_MED			(0x2 << 5)
>  #define AT91_PINCTRL_DRIVE_STRENGTH_HI			(0x3 << 5)
>  
> -#define AT91_PINCTRL_SLEWRATE_DIS	(0x0 << 9)
> -#define AT91_PINCTRL_SLEWRATE_ENA	(0x1 << 9)
> +#define AT91_PINCTRL_SLEWRATE_ENA	(0x0 << 9)
> +#define AT91_PINCTRL_SLEWRATE_DIS	(0x1 << 9)

This is an ABI. You can't just change the definition.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
