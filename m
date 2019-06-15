Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD2C46F2B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 11:04:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Xlw+DNpAImqpD1qhhTIgtMgMRB+PgFRB6HGKkFLB3Xk=; b=EkERVJ2hx6hmOw8OVSCyR3I5H
	O4oq007YoWMH0LCfxnyYGE9uWiiHZhopKz7DT/sMg7j7RUtX0MPjgK2RtxqyTITgzFvsSqhWQQgRJ
	32p4NUFoIYEJJENtwbYvzM7O8dNqhlXQNHTDbkjmtPNQ2twz/Dj31YaixHKE269OEKXLsx+hPYAVM
	s8xRHvgnsx+S8NJfowpHJ8zi7aVLBV4N1bmiHfV5hsyo3tAW3KBkhDzLN8mZu0HoDNdhofgk6eBIj
	91zavhd5oa8OedZ3XcboNkvq+9HCLK4JpWIgo48j6b+x/hPyxIo+L2hc9hLk4vPO68Lr21sLp3Aon
	1J2vXX4Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hc4bo-0004ND-W6; Sat, 15 Jun 2019 09:04:25 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hc4bS-0004M6-Vr
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Jun 2019 09:04:04 +0000
Received: by mail-lj1-x241.google.com with SMTP id i21so4708758ljj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 15 Jun 2019 02:04:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=q5mZQFP+g8hphwb9WUWDqOBMM/numzNM18neebO4nCQ=;
 b=TKvbOvDCyXJ7QIhcAjzEBO/B5MJDBLcr6FovRgkpJYKud0J03MwhgTKTPkOjZi26OC
 w6y0buREBCG1c6uq3sPlr77/VjQzLCdgOghG9e/c5s8gS7g/L8AX8h3zdyE+oqlMe0uv
 2/GRYJIjEEw2aJ4tyvQAEzY/28rSFifUCYqKdX7G5G54vtZtwYTTTOaFWdOHS5oGYvQv
 w2sSVk7v/eZ/A5398oS0IY0/1qbcCYh0myKtRbJiNTvH4Rit3O8EVbfHFV6g1ix5jfjS
 ZS37CpScGQAeZSnQbIEHHqB3Pszv3fXHApUsSgg2x4SylV0uNWfh/9b/xGFGZDs3KNsl
 1xeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=q5mZQFP+g8hphwb9WUWDqOBMM/numzNM18neebO4nCQ=;
 b=My2Ftr9nVK7O8Fsm3CydXHzdl25zcUf1qEJThIBGYoABdlTxlnUPaDL/Mcx7TVYj4v
 gLeFRNKgTVUHp7AVNE3Eq5zR3LVtCHjDhVeieTb+ZMRnjsrKjC/CHqUCxzzjganPkPP2
 ihqvbUsOEE92yr6CcTm30wwmPdKXVeKDnjDlrDPWDd0WDGoQiPy8pr+ySYNTXUAdxok6
 4YrvYo18IuRjXzlUCq7cA+2ptP5JX1Pz8HYzbkpYFNN2AxAG6PYQLFgO8e1kP8GxdJcQ
 u/3XuBbFNtiupfJooQE/b8djkqF/yxQIZU1Ko1jYzVqx0fOA5L/295fpQFE6gYq2TuB3
 hz/A==
X-Gm-Message-State: APjAAAUc+gdnbl9moV6cv67NtKhqg8jymPWH9f5jIxzQbM+GKf90hP9n
 hPzwbucl7EC7SiPPLqOeG/cHMQ==
X-Google-Smtp-Source: APXvYqyPpxOV0FFgM82A++kc//QU4qjulO9oJY1P3TU1+ZG9i72C0q6wCY8EH7wur3qGZzMBXEUqUg==
X-Received: by 2002:a2e:1510:: with SMTP id s16mr24630515ljd.19.1560589440559; 
 Sat, 15 Jun 2019 02:04:00 -0700 (PDT)
Received: from [192.168.0.199] ([31.173.84.132])
 by smtp.gmail.com with ESMTPSA id l25sm814819lfk.57.2019.06.15.02.03.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 15 Jun 2019 02:04:00 -0700 (PDT)
Subject: Re: [PATCH v4 6/8] ARM: dts: imx7ulp: add imx7ulp USBOTG1 support
To: Peter Chen <peter.chen@nxp.com>, balbi@kernel.org, shawnguo@kernel.org
References: <20190614093544.11730-1-peter.chen@nxp.com>
 <20190614093544.11730-7-peter.chen@nxp.com>
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Message-ID: <0dbf01f9-7c5c-ce0b-4feb-378c9147f15a@cogentembedded.com>
Date: Sat, 15 Jun 2019 12:03:47 +0300
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190614093544.11730-7-peter.chen@nxp.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_020403_451573_E95E469C 
X-CRM114-Status: GOOD (  13.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: aisheng.dong@nxp.com, devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
 chunfeng.yun@mediatek.com, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, fabio.estevam@nxp.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 14.06.2019 12:35, Peter Chen wrote:

> Add imx7ulp USBOTG1 support.
> 
> Signed-off-by: Peter Chen <peter.chen@nxp.com>
> ---
>   arch/arm/boot/dts/imx7ulp.dtsi | 28 ++++++++++++++++++++++++++++
>   1 file changed, 28 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/imx7ulp.dtsi b/arch/arm/boot/dts/imx7ulp.dtsi
> index fca6e50f37c8..5115e47715c3 100644
> --- a/arch/arm/boot/dts/imx7ulp.dtsi
> +++ b/arch/arm/boot/dts/imx7ulp.dtsi
> @@ -30,6 +30,7 @@
>   		serial1 = &lpuart5;
>   		serial2 = &lpuart6;
>   		serial3 = &lpuart7;
> +		usbphy0 = &usbphy1;

    Is that really needed?

[...]
> @@ -133,6 +134,33 @@
[...]
> +		usbphy1: usbphy@0x40350000 {

    Name it "usb-phy@40350000" please.

> +			compatible = "fsl,imx7ulp-usbphy", "fsl,imx6ul-usbphy";
> +			reg = <0x40350000 0x1000>;
> +			interrupts = <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&pcc2 IMX7ULP_CLK_USB_PHY>;
> +			#phy-cells = <0>;
> +		};
> +
>   		usdhc0: mmc@40370000 {
>   			compatible = "fsl,imx7ulp-usdhc", "fsl,imx6sx-usdhc";
>   			reg = <0x40370000 0x10000>;
> 

MBR, Sergei

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
