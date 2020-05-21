Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 369D71DD1FB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 17:36:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xBP+bh+PjsUY4zPlQVqJSFeAEA+XQz1QXlIffz1nFMo=; b=A3nWZ6+xJdrNp/
	lCONXUtdTdhaKyMykbJnjmohv+Yi3z7vQiSbavCStv03KZ2M2lHYB5vo8u5aDYi1kjt7+dm4+BIGP
	LIELTsarPJWdnpmrEBChP2zTj6SXqqRJKFsbAZchBCzIbZh/fnwtBddBHoKsme5mpu8ouic7qRqGW
	6JgeZWthYhGonqKQAWigw2v1LIUVDeLqJJOm0k35eM/DiJ5G7+3K3N9O51uTx0nyIxtM/Ue0cx0Dz
	IbfBt2vyEY49asP/W7UhsNb6FsoBTQkkVVN/OQFXbU2rGy5s6OwSfonCCOLzo1soxtKWp8nz4SKkE
	ikVwuTQ9KEMyrqKrHO1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbnEr-0005nt-2t; Thu, 21 May 2020 15:36:05 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbnEe-0005mC-QL; Thu, 21 May 2020 15:35:54 +0000
Received: by mail-wr1-x442.google.com with SMTP id l18so7071730wrn.6;
 Thu, 21 May 2020 08:35:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=n2gJjxkUK6nHDlKFqj2NVOFc6rhrv1W1u6Tu7/bURLs=;
 b=jX6azSi8lLeCJSByGcl6ppBGHsDNTngag8vkM5TaGPIteoonZJoOKS/Ae6OMwEmX/e
 xyjGhFyktWIVfkjNsMOnEcqkfED5TIEm0V8wkUnmMELvVQ1cEZQcFOXlP+L69qWTKmGs
 nmwb5ULuSj4vlxzmDX5tlFDEjvgGvFV0BWyZ/sHtmesZ11k5W8NJrRbxb54IfAvn4C3x
 KvrjAVcNGLM+edvHhGI3qEo3QNEeZdzLFWNJ6PVdYhgiX7NwLslGSQYt3Zo6O30M+ACu
 UK50+wcjJu5fhXmTduah4ruCiV4C2d1WbIHD0+X1yY8T22XH8erTu3HnpuPYMH/TognV
 hIUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=n2gJjxkUK6nHDlKFqj2NVOFc6rhrv1W1u6Tu7/bURLs=;
 b=lonQznG4/njyepAvhm59MCwqQoxok0/BkwtD/F/ftWiLnQA/25ONt7zTQhTb6UqUB7
 y8tLlrGwmDANyJIQJlczAdIGu1WFYiVTUcXor9P4+Rv/IIpw+oAgiOsreuhQphW3uN03
 BSXs9E9fzMPpJpX1j6RqwH0RagA/8z3m/ajDZ2pwlaZsv2aNhqdCMp4sOKXN4NTuzf+Z
 RXBl4LYKMQo3uQxfpeFJ+/5QnQiMc9nt4Cbi+iKUuPtvbL5KJdOQUV/H4tgtDewrS8Zl
 fcqT4VRIBATHpBq2HY5ztx78nzKQGqoDi/x7984QQw9vPuYFmLOSEtO0Pe/bgVeRz6If
 CT7A==
X-Gm-Message-State: AOAM533qKFTeaZX3kqTB9ks4yOoHu/Mvk3tm2DhB4KrLx14l2EVHCEWQ
 mYCLgdrd0gklK+vAbbVK41c=
X-Google-Smtp-Source: ABdhPJxQv6L19PfWJIbQQOLvoFsqprtPoz/dqNLIS0aRW4qrEIlseUrfRwjV4532CKznJb1xKO6ZAw==
X-Received: by 2002:a5d:4b09:: with SMTP id v9mr8971941wrq.297.1590075350317; 
 Thu, 21 May 2020 08:35:50 -0700 (PDT)
Received: from ziggy.stardust ([213.195.113.243])
 by smtp.gmail.com with ESMTPSA id h15sm1879052wrt.73.2020.05.21.08.35.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 May 2020 08:35:49 -0700 (PDT)
Subject: Re: [PATCH 2/4] arm: dts: mt2712: add uart APDMA to device tree
To: Long Cheng <long.cheng@mediatek.com>, Vinod Koul <vkoul@kernel.org>,
 Randy Dunlap <rdunlap@infradead.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Ryder Lee <ryder.lee@mediatek.com>,
 Sean Wang <sean.wang@kernel.org>, Nicolas Boichat <drinkcat@chromium.org>
References: <1556336193-15198-1-git-send-email-long.cheng@mediatek.com>
 <1556336193-15198-3-git-send-email-long.cheng@mediatek.com>
From: Matthias Brugger <matthias.bgg@gmail.com>
Autocrypt: addr=matthias.bgg@gmail.com; prefer-encrypt=mutual; keydata=
 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
Message-ID: <5f3c955e-9b6b-9dff-75d1-8789528950a6@gmail.com>
Date: Thu, 21 May 2020 17:35:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <1556336193-15198-3-git-send-email-long.cheng@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_083552_872707_D01A5D32 
X-CRM114-Status: GOOD (  17.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [matthias.bgg[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Zhenbao Liu <zhenbao.liu@mediatek.com>, devicetree@vger.kernel.org,
 srv_heupstream@mediatek.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sean Wang <sean.wang@mediatek.com>, linux-kernel@vger.kernel.org,
 YT Shen <yt.shen@mediatek.com>, linux-mediatek@lists.infradead.org,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 dmaengine@vger.kernel.org, Yingjoe Chen <yingjoe.chen@mediatek.com>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 27/04/2019 05:36, Long Cheng wrote:
> 1. add uart APDMA controller device node
> 2. add uart 0/1/2/3/4/5 DMA function
> 
> Signed-off-by: Long Cheng <long.cheng@mediatek.com>

Queued now for v5.7-next/dts64

Thanks!

> ---
>  arch/arm64/boot/dts/mediatek/mt2712e.dtsi |   51 +++++++++++++++++++++++++++++
>  1 file changed, 51 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/mediatek/mt2712e.dtsi b/arch/arm64/boot/dts/mediatek/mt2712e.dtsi
> index 976d92a..f1e419e 100644
> --- a/arch/arm64/boot/dts/mediatek/mt2712e.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt2712e.dtsi
> @@ -300,6 +300,9 @@
>  		interrupts = <GIC_SPI 127 IRQ_TYPE_LEVEL_LOW>;
>  		clocks = <&baud_clk>, <&sys_clk>;
>  		clock-names = "baud", "bus";
> +		dmas = <&apdma 10
> +			&apdma 11>;
> +		dma-names = "tx", "rx";
>  		status = "disabled";
>  	};
>  
> @@ -369,6 +372,39 @@
>  			 (GIC_CPU_MASK_RAW(0x13) | IRQ_TYPE_LEVEL_HIGH)>;
>  	};
>  
> +	apdma: dma-controller@11000400 {
> +		compatible = "mediatek,mt2712-uart-dma",
> +			     "mediatek,mt6577-uart-dma";
> +		reg = <0 0x11000400 0 0x80>,
> +		      <0 0x11000480 0 0x80>,
> +		      <0 0x11000500 0 0x80>,
> +		      <0 0x11000580 0 0x80>,
> +		      <0 0x11000600 0 0x80>,
> +		      <0 0x11000680 0 0x80>,
> +		      <0 0x11000700 0 0x80>,
> +		      <0 0x11000780 0 0x80>,
> +		      <0 0x11000800 0 0x80>,
> +		      <0 0x11000880 0 0x80>,
> +		      <0 0x11000900 0 0x80>,
> +		      <0 0x11000980 0 0x80>;
> +		interrupts = <GIC_SPI 103 IRQ_TYPE_LEVEL_LOW>,
> +			     <GIC_SPI 104 IRQ_TYPE_LEVEL_LOW>,
> +			     <GIC_SPI 105 IRQ_TYPE_LEVEL_LOW>,
> +			     <GIC_SPI 106 IRQ_TYPE_LEVEL_LOW>,
> +			     <GIC_SPI 107 IRQ_TYPE_LEVEL_LOW>,
> +			     <GIC_SPI 108 IRQ_TYPE_LEVEL_LOW>,
> +			     <GIC_SPI 109 IRQ_TYPE_LEVEL_LOW>,
> +			     <GIC_SPI 110 IRQ_TYPE_LEVEL_LOW>,
> +			     <GIC_SPI 111 IRQ_TYPE_LEVEL_LOW>,
> +			     <GIC_SPI 112 IRQ_TYPE_LEVEL_LOW>,
> +			     <GIC_SPI 113 IRQ_TYPE_LEVEL_LOW>,
> +			     <GIC_SPI 114 IRQ_TYPE_LEVEL_LOW>;
> +		dma-requests = <12>;
> +		clocks = <&pericfg CLK_PERI_AP_DMA>;
> +		clock-names = "apdma";
> +		#dma-cells = <1>;
> +	};
> +
>  	auxadc: adc@11001000 {
>  		compatible = "mediatek,mt2712-auxadc";
>  		reg = <0 0x11001000 0 0x1000>;
> @@ -385,6 +421,9 @@
>  		interrupts = <GIC_SPI 91 IRQ_TYPE_LEVEL_LOW>;
>  		clocks = <&baud_clk>, <&sys_clk>;
>  		clock-names = "baud", "bus";
> +		dmas = <&apdma 0
> +			&apdma 1>;
> +		dma-names = "tx", "rx";
>  		status = "disabled";
>  	};
>  
> @@ -395,6 +434,9 @@
>  		interrupts = <GIC_SPI 92 IRQ_TYPE_LEVEL_LOW>;
>  		clocks = <&baud_clk>, <&sys_clk>;
>  		clock-names = "baud", "bus";
> +		dmas = <&apdma 2
> +			&apdma 3>;
> +		dma-names = "tx", "rx";
>  		status = "disabled";
>  	};
>  
> @@ -405,6 +447,9 @@
>  		interrupts = <GIC_SPI 93 IRQ_TYPE_LEVEL_LOW>;
>  		clocks = <&baud_clk>, <&sys_clk>;
>  		clock-names = "baud", "bus";
> +		dmas = <&apdma 4
> +			&apdma 5>;
> +		dma-names = "tx", "rx";
>  		status = "disabled";
>  	};
>  
> @@ -415,6 +460,9 @@
>  		interrupts = <GIC_SPI 94 IRQ_TYPE_LEVEL_LOW>;
>  		clocks = <&baud_clk>, <&sys_clk>;
>  		clock-names = "baud", "bus";
> +		dmas = <&apdma 6
> +			&apdma 7>;
> +		dma-names = "tx", "rx";
>  		status = "disabled";
>  	};
>  
> @@ -629,6 +677,9 @@
>  		interrupts = <GIC_SPI 126 IRQ_TYPE_LEVEL_LOW>;
>  		clocks = <&baud_clk>, <&sys_clk>;
>  		clock-names = "baud", "bus";
> +		dmas = <&apdma 8
> +			&apdma 9>;
> +		dma-names = "tx", "rx";
>  		status = "disabled";
>  	};
>  
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
