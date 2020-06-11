Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30F131F6167
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 07:52:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1b6s5OY3w9bGYRXN0fgJREPsoo8v+51k5c21pQMZwT4=; b=rbLEya4OXwsiAe
	8D29xeEKA2Jr/0uIl7TrwFDTPKA/IrMCfkSRvIEaLxi3bM0cX4l38D+4w7Zm22gD7UAGN+zFg1HQ3
	JYIpB0vt+zdI+XAFPiNSuUbHrAfcxiSfLmrAfJNiP0nBPNCZseHrXqTaCERD8pq1q1AuuEQqFOZJY
	DcpxynDhc/kpM6fsr6RRKu9Q0Ce+9r4Wg94z64K6rGEN+XL+uHbl5PN/VW1wbWi0fSF2N7zmJYUB5
	TuKD0ElD4TqkaQ0VJkcF5U4wEYQmUMpyJQXHnx2otAAl8ClOU+nwgPCq+Pq9TzZ7ORAIx1Fq69XO6
	USpiOUKnI+xgrrpgA2oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjG8n-0007sl-5D; Thu, 11 Jun 2020 05:52:41 +0000
Received: from mail-ej1-x642.google.com ([2a00:1450:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjG8e-0007r7-So; Thu, 11 Jun 2020 05:52:34 +0000
Received: by mail-ej1-x642.google.com with SMTP id y13so5206925eju.2;
 Wed, 10 Jun 2020 22:52:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=PRWwHPfTqqS0ILVaBf+JQrfe5m2txu4W6HO5QlFL/zw=;
 b=k8h5UghrpX8qqfqQfTXDXbRUQ3lwmJ03yuZEbGljcGormhpmoe9NFsLfVUu0w5t6mD
 AkfGcB1P9L7ETCUf72TAX5SQlVChhYCvbl+oaoCCAuGc6aKT3vnbpwNmgek7JM34xhTL
 +WC2/Jr8Rg2GwlbOESl//4/dpp5DVZOdLghIBel5uU6iQsNtD+gIMH33KzzoMclj+U7N
 o6u6syj5XkVeRhAVDq+xTinoHaKoPDp8nICfhgXV8l89hziD73XiYQADUTaZ+MFjpw00
 dq3xy1hpGQcGFEI3ujYIh35gG1Z94zPS0fafe4cr1ihXSZbmG1g9MVFr0OXjbgM2gJW9
 jZ9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=PRWwHPfTqqS0ILVaBf+JQrfe5m2txu4W6HO5QlFL/zw=;
 b=ngh/YdJfQ4KYzYqnSH3tRkEqoQ0CapEePra2GPzC3nfQuFi7CLdFwQPwJrVFG63lGE
 t73ZEvtxmqzCeYdfRZnjU1L/CYcllVRsaQ+llrfrlYfDPPhhA/aHxv0/mWZHVymAGxyv
 oa2eeb86vnVYJnGzknTjyjjbuLjfcHQiLlPGU+X/iOXxMnea/5BQ1uhnt9wh3LnlwIQw
 EALjj8EUDyU5smIt3NnYbvBKwJdqwqRm812fQvQcL1vBZss8nbqwOtKYlNNKf43shaIF
 Vu7r3bFYoCd/wqSTMAMyWjESw52qToLVUb24bbX1923Ga9n5FqOoNzr1/G8bmJoggQUQ
 2WDQ==
X-Gm-Message-State: AOAM531CIZGAi+65E+UYbBldDjrQ2CNfKDY0b0F/IOW+naWfo6g+vS5l
 q/gEjCmhjnYgSR/8x1ExPKdlVBaQ
X-Google-Smtp-Source: ABdhPJwOc06qpbKD2caI7O+S/BmvO/YYwrTuc3E0nlZCiwVqofBpsif1N3NCfj5o2uOym87oy/iKZg==
X-Received: by 2002:a17:906:f913:: with SMTP id
 lc19mr6719703ejb.286.1591854743743; 
 Wed, 10 Jun 2020 22:52:23 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id k23sm1270159ejg.89.2020.06.10.22.52.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 10 Jun 2020 22:52:23 -0700 (PDT)
Subject: Re: [PATCH] ARM: dts: rockchip: Add marvell BT irq config
To: Abhishek Pandit-Subedi <abhishekpandit@chromium.org>, heiko@sntech.de,
 linux-rockchip@lists.infradead.org
References: <20200610190622.1.I66864be898aa835ccb66b6cd5220d0b082338a81@changeid>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <4d989400-0a2c-e6c8-8c83-d6d15464a10d@gmail.com>
Date: Thu, 11 Jun 2020 07:52:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200610190622.1.I66864be898aa835ccb66b6cd5220d0b082338a81@changeid>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_225232_932057_16D2123B 
X-CRM114-Status: GOOD (  19.43  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, chromeos-bluetooth-upstreaming@chromium.org,
 dianders@chromium.org, Rob Herring <robh+dt@kernel.org>,
 linux-kernel@vger.kernel.org, linux-bluetooth@vger.kernel.org,
 mka@chromium.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/11/20 4:06 AM, Abhishek Pandit-Subedi wrote:
> Veyron Jaq and Mighty both use the Marvel 8897 WiFi+BT chip. Add wakeup
> and pinctrl block to devicetree so the btmrvl driver can correctly
> configure the wakeup interrupt.
> 
> Signed-off-by: Abhishek Pandit-Subedi <abhishekpandit@chromium.org>
> Reviewed-by: Reviewed-by: Douglas Anderson <dianders@chromium.org>
> ---
> The Veyron Mighty Chromebook (rk3288 based board) is missing the wake
> configuration for Bluetooth. Without this change, the wake irq was not
> configurable and wake on Bluetooth was broken.
> 
> I verified this change with additional changes in the Bluetooth driver
> (the series is at https://patchwork.kernel.org/cover/11599101/). The
> driver changes are not necessary for this dts change and shouldn't block
> it.
> 
> 
>  arch/arm/boot/dts/rk3288-veyron-jaq.dts | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/rk3288-veyron-jaq.dts b/arch/arm/boot/dts/rk3288-veyron-jaq.dts
> index 171ba6185b6d39..976c0c17a71199 100644
> --- a/arch/arm/boot/dts/rk3288-veyron-jaq.dts
> +++ b/arch/arm/boot/dts/rk3288-veyron-jaq.dts
> @@ -51,6 +51,21 @@ &sdmmc {
>  			&sdmmc_bus4>;
>  };
>  

> +&sdio0 {

For nodes:
Sort things without reg alphabetical first,
then sort the rest by reg address.

&sdio0 goes above &sdmmc.

> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +
> +	btmrvl: btmrvl@2 {
> +		compatible = "marvell,sd8897-bt";
> +		reg = <2>;
> +		interrupt-parent = <&gpio4>;
> +		interrupts = <RK_PD7 IRQ_TYPE_LEVEL_LOW>;
> +		marvell,wakeup-pin = /bits/ 16 <13>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&bt_host_wake_l>;
> +	};
> +};
> +
>  &vcc_5v {
>  	enable-active-high;
>  	gpio = <&gpio7 RK_PC5 GPIO_ACTIVE_HIGH>;
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
