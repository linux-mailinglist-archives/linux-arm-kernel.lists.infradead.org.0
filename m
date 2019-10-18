Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF1DFDC32F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 12:57:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JfL4xTUecl44BYgaJIdwzvGzRlTVwgq3YMEvIIg+Xig=; b=fO4IxxipeVnOOB
	4/W1Rn6lX87TpIlyMpc1pRE8s1JPLSmYjPsvnZMJa+x/vroDRWsUH1eZa4hSYr+Ka8JGJV47GjyEl
	2ir2KMdVr/9+6ESRApxaEyRP8a6sTmMKjp4blCFxgYfWzk8rYXizFadH7xyHGSPqUMKfjKV57EN0Z
	kB4basKA7UFxs9qTliSLTYc+JBpUkp87H7pu+r5Iq15BWrqvzdztx3pCLZ/aQm1Fie4hcz+GsSM24
	yg4T9Z056FZQYMex4bfQ87fOEnE4jjX1Y7qUymh7Hn+/TRn0vHWk0T/qhypeMBhYpB38ABOLgE/Mi
	Yh/3LJZFuqlzn88yahRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLPwP-0007Ia-KI; Fri, 18 Oct 2019 10:57:05 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLPwD-0007Hu-0V
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 10:56:54 +0000
Received: by mail-ua1-x944.google.com with SMTP id r25so1592953uam.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 03:56:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QY7lFyrHaU8+oA6DvMJgP3Iv+qTUAFJEzk1GXAvtrx4=;
 b=HWwssPuPT5PifwSCD5NhcePRn2f+ZzbP6zPPhLLPIw3Ba+ZwsY64t93AV6ZDoVRf+P
 GtEcP6AxKbDhZb4aeAXhFJ7LKwzQy18X9mLZzFjg3l69TZM656yqgPbVJe1ph0apblOH
 zpiHBA9MxyOptlT/ckRWBqs5RnQS0ZwMk32fBgNNHtl1egCvgygXRKzP6q9FYY7GgH4j
 IX3HP7sAZxr/FF+mPkYQ0A12D/gQTFKYnOU0ckK1PLfd2gCx2OBeFOMah5fjPMGgeYQX
 s0CdcKW3PYDu6Y1SJvqyv1FCph7SFawKTy3IaAPV+spKaEG5gmDGe/DWTffb4AK+u2zd
 4lyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QY7lFyrHaU8+oA6DvMJgP3Iv+qTUAFJEzk1GXAvtrx4=;
 b=HEfp1xPrx7eJcJ/aDRn0YyJrj0JooxTZJT/THbjz9AbGyQ4TwxVSkCrZn0dnMXI6LA
 3Hn2h8XWbLU6lKkyIsospeE0z7W0QNUGUl19icirKnMXrAVWwMbfahINHucL5GFXxF3z
 yUE5TmKojL+NuODFhrubbr3XJMnAHXb0fqCcS07rywwaXTNtou0z8Ji+UMuO0LrV0pFt
 0A+bxLitriQV0pCfgB6Xex8SthoErY5xr8qugKsmU1Y/IsKhoE24TnYZG/7bRQXcCvL6
 OQvx810teHNNG4pHNLgyAjhqrqafXJX+CwbA5ToZ+lyrPt0vCxF1wYJCKVOTTeqF2TD5
 gOlw==
X-Gm-Message-State: APjAAAWozGl+wYGqdginn2AW5bhjBmxtegEkJT0JAOgtd1f6fo2k+/Qm
 16UmSsd0liwJu9PWeAMJoNiW2vWnmey+gAc+lDVblg==
X-Google-Smtp-Source: APXvYqz/SShoa3XTS8voTIAQNQnZDjh0ea7364t7jbf47xMWfss+qljtsOER3sxNNKKBAIJ9tpVLe1gvmh+l/LbdV7A=
X-Received: by 2002:ab0:310f:: with SMTP id e15mr5136065ual.19.1571396211823; 
 Fri, 18 Oct 2019 03:56:51 -0700 (PDT)
MIME-Version: 1.0
References: <20191011103340.26749-1-ludovic.desroches@microchip.com>
In-Reply-To: <20191011103340.26749-1-ludovic.desroches@microchip.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 18 Oct 2019 12:56:14 +0200
Message-ID: <CAPDyKFqxfBG-CDd_O9d8X89GZmNFXh=CoFE2QqptgtLtOU5=_Q@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: sdhci-of-at91: new compatible string
 and update properties
To: Ludovic Desroches <ludovic.desroches@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_035653_119032_B873CE77 
X-CRM114-Status: GOOD (  18.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Eugen.Hristev@microchip.com,
 Adrian Hunter <adrian.hunter@intel.com>, claudiu.beznea@microchip.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 11 Oct 2019 at 12:33, Ludovic Desroches
<ludovic.desroches@microchip.com> wrote:
>
> There is a new compatible string for the SAM9X60 sdhci device. It involves
> an update of the properties about the clocks stuff.
>
> Signed-off-by: Ludovic Desroches <ludovic.desroches@microchip.com>

This doesn't apply any more, can you please re-spin it?

Kind regards
Uffe


> ---
>
> Changes:
> - v2: remove the extra example and fix node label
>
> This patch conflicts with Nicolas' one: "dt-bindings: sdhci-of-at91: add
> the microchip,sdcal-inverted property". Let me know which one has to be
> rebased or you can handle it.
>
> Ludovic
>
>
>  .../devicetree/bindings/mmc/sdhci-atmel.txt       | 15 ++++++++++++---
>  1 file changed, 12 insertions(+), 3 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/mmc/sdhci-atmel.txt b/Documentation/devicetree/bindings/mmc/sdhci-atmel.txt
> index 1b662d7171a0..5d541ad4d4eb 100644
> --- a/Documentation/devicetree/bindings/mmc/sdhci-atmel.txt
> +++ b/Documentation/devicetree/bindings/mmc/sdhci-atmel.txt
> @@ -5,17 +5,26 @@ Documentation/devicetree/bindings/mmc/mmc.txt and the properties used by the
>  sdhci-of-at91 driver.
>
>  Required properties:
> -- compatible:          Must be "atmel,sama5d2-sdhci".
> +- compatible:          Must be "atmel,sama5d2-sdhci" or "microchip,sam9x60-sdhci".
>  - clocks:              Phandlers to the clocks.
> -- clock-names:         Must be "hclock", "multclk", "baseclk";
> +- clock-names:         Must be "hclock", "multclk", "baseclk" for
> +                       "atmel,sama5d2-sdhci".
> +                       Must be "hclock", "multclk" for "microchip,sam9x60-sdhci".
> +
> +Optional properties:
> +- assigned-clocks:     The same with "multclk".
> +- assigned-clock-rates The rate of "multclk" in order to not rely on the
> +                       gck configuration set by previous components.
>
>
>  Example:
>
> -sdmmc0: sdio-host@a0000000 {
> +mmc0: sdio-host@a0000000 {
>         compatible = "atmel,sama5d2-sdhci";
>         reg = <0xa0000000 0x300>;
>         interrupts = <31 IRQ_TYPE_LEVEL_HIGH 0>;
>         clocks = <&sdmmc0_hclk>, <&sdmmc0_gclk>, <&main>;
>         clock-names = "hclock", "multclk", "baseclk";
> +       assigned-clocks = <&sdmmc0_gclk>;
> +       assigned-clock-rates = <480000000>;
>  };
> --
> 2.23.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
