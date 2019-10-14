Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22643D657A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 16:45:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aCa/WSFOC0diqWg0JR+I5rjcWQF5hPI+pEsg1YFCO3k=; b=VA3MIO5dr4bXwy
	9yojqHNzrg5W2j4QKkU1yi1ZDbF8eVjIH0PyVMOYFVy5ZMsiDreK2zJ/cvwSRKq/O45mAkg3HXXfp
	ZV9bmddSld4YtZxINNuhDw9CmyXU/U+GcVgs3q3FcIL8/skn912BFYAbHAg+NiEpGHQpNciCq14Lf
	qtQcgxm9TE8dHiKuIFitnW9c3GRjjkg7HrYCklRIXHY24ppipfhBaNwMFjAIGL0ezHFrFiZSWjgoZ
	ngeTBWFZ3+Cc7BYwKcFD8iUXUuSYJtyzrRFwc5jqYbof4UfYl00RKLMbhGs+C5Iz+ykFL/G/APmJE
	c6OUQDZuUta4cntLUwzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK1af-0005uN-3e; Mon, 14 Oct 2019 14:44:53 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK1aV-0005tL-5v
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 14:44:44 +0000
Received: by mail-pf1-x442.google.com with SMTP id y72so10512670pfb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 07:44:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=bNRsloUe1+m4c9HwAHy8LRzIsaF4TY0K3ozGxhA8oJE=;
 b=EwxHdjjNsqta9UkaQIFxIfnG0B6BAXf96vujfejhhkvHxVRBeQJgGrK9iYGgytgIEp
 9jm7sveUEd3k0Of2wyL6yDBybU1TWyg5lKWEjTIIelCia+RL1q6CrR0ZTmYBbAFRr46R
 82EZYjy6E2P2VFQAk+sZ0NkdG4Bmy1z3VzmSgaBqAhbMIPSgFUXiwirEu2ePF5hq8scJ
 bR47FX/znhoRxEHlW6LjlbtkjQD/8jKZwFjqomoa+4FY973w7sHWCxRFpMhxD67LbH9U
 0dZibsYhA/CwgcIkSqFv/IQIkeFjp6PDfUZcseqBC+qIr+hmerTNNTaFbRj27GitbON7
 0DUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=bNRsloUe1+m4c9HwAHy8LRzIsaF4TY0K3ozGxhA8oJE=;
 b=FY+OncJq4Kh1/l3sFziBxR9rFSEhUeqQ597cm738O4MCk+ZPr4TV/vd7nl2JagjmOQ
 TnFbYcNU/XpwPIzyJKMy1Nzua2nJrOV7ejDsIWiZIlJ4zMbtLBjyuHfQFuJIrgIvl9q9
 SvP0Y/0SMpl0B2Qhqlhx7aey2vq/q/NV/0WGUffT5vzHhatZ8MvSk9FIyvkPl0OnpgZv
 lBpJFHG3bHdR9rIzQiAxm3LWaVn/YTJ+eSOZHOeKWiYAIi4QppX4a8rUk78sNIOPxLpp
 GSi3XaYkL7sgk6igx2Er9+R242GNujAxWidKuyze42SxDQ3UCvHKYnCrVm5Ii7ppci/T
 ghIA==
X-Gm-Message-State: APjAAAVNWKZZPglX+y0eLe2WqkPOETfGpn8AfA1WuerbcyZRttWPBcmP
 EdHh2TABBRus4EDeJ+hXgEg6
X-Google-Smtp-Source: APXvYqyaDf+8FJSPKt0DRGHMoHpd4vlbdM2vJwLkBbOx/vnNENq1hbKjckJw85Fgl07ugMHoEKf38Q==
X-Received: by 2002:a63:5423:: with SMTP id i35mr34670105pgb.128.1571064281958; 
 Mon, 14 Oct 2019 07:44:41 -0700 (PDT)
Received: from mani ([103.59.133.81])
 by smtp.gmail.com with ESMTPSA id y8sm14852113pgs.34.2019.10.14.07.44.37
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 14 Oct 2019 07:44:41 -0700 (PDT)
Date: Mon, 14 Oct 2019 20:14:32 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: ulf.hansson@linaro.org, afaerber@suse.de, robh+dt@kernel.org,
 sboyd@kernel.org
Subject: Re: [PATCH v4 3/7] arm64: dts: actions: Add MMC controller support
 for S900
Message-ID: <20191014144432.GA8583@mani>
References: <20190916154546.24982-1-manivannan.sadhasivam@linaro.org>
 <20190916154546.24982-4-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190916154546.24982-4-manivannan.sadhasivam@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_074443_250460_6C5F5FF5 
X-CRM114-Status: GOOD (  14.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-mmc@vger.kernel.org,
 linus.walleij@linaro.org, linux-actions@lists.infradead.org,
 linux-kernel@vger.kernel.org, thomas.liau@actions-semi.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 16, 2019 at 09:15:42PM +0530, Manivannan Sadhasivam wrote:
> Add MMC controller support for Actions Semi S900 SoC. There are 4 MMC
> controllers in this SoC which can be used for accessing SD/MMC/SDIO cards.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Applied for v5.5.

Thanks,
Mani

> ---
>  arch/arm64/boot/dts/actions/s900.dtsi | 45 +++++++++++++++++++++++++++
>  1 file changed, 45 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/actions/s900.dtsi b/arch/arm64/boot/dts/actions/s900.dtsi
> index df3a68a3ac97..eb35cf78ab73 100644
> --- a/arch/arm64/boot/dts/actions/s900.dtsi
> +++ b/arch/arm64/boot/dts/actions/s900.dtsi
> @@ -4,6 +4,7 @@
>   */
>  
>  #include <dt-bindings/clock/actions,s900-cmu.h>
> +#include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>  #include <dt-bindings/reset/actions,s900-reset.h>
>  
> @@ -284,5 +285,49 @@
>  			dma-requests = <46>;
>  			clocks = <&cmu CLK_DMAC>;
>  		};
> +
> +		mmc0: mmc@e0330000 {
> +			compatible = "actions,owl-mmc";
> +			reg = <0x0 0xe0330000 0x0 0x4000>;
> +			interrupts = <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&cmu CLK_SD0>;
> +			resets = <&cmu RESET_SD0>;
> +			dmas = <&dma 2>;
> +			dma-names = "mmc";
> +			status = "disabled";
> +		};
> +
> +		mmc1: mmc@e0334000 {
> +			compatible = "actions,owl-mmc";
> +			reg = <0x0 0xe0334000 0x0 0x4000>;
> +			interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&cmu CLK_SD1>;
> +			resets = <&cmu RESET_SD1>;
> +			dmas = <&dma 3>;
> +			dma-names = "mmc";
> +			status = "disabled";
> +		};
> +
> +		mmc2: mmc@e0338000 {
> +			compatible = "actions,owl-mmc";
> +			reg = <0x0 0xe0338000 0x0 0x4000>;
> +			interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&cmu CLK_SD2>;
> +			resets = <&cmu RESET_SD2>;
> +			dmas = <&dma 4>;
> +			dma-names = "mmc";
> +			status = "disabled";
> +		};
> +
> +		mmc3: mmc@e033c000 {
> +			compatible = "actions,owl-mmc";
> +			reg = <0x0 0xe033c000 0x0 0x4000>;
> +			interrupts = <GIC_SPI 62 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&cmu CLK_SD3>;
> +			resets = <&cmu RESET_SD3>;
> +			dmas = <&dma 46>;
> +			dma-names = "mmc";
> +			status = "disabled";
> +		};
>  	};
>  };
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
