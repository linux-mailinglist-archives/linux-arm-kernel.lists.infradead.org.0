Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E66CC1CD246
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 09:17:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FG/kQD2KKZ2BgSvNDjCJpC1bmI3rZvM1Gz086ntzkX8=; b=FMmSiHFLm/QB0sadolZjHQmJ7
	4DQRXyQ+79O/ngIVJwvchaCxj7TPtGIo+6YQw51JdRZQa7Hmovwvve9X8cWv71dsXDJFI3nhqk2T9
	cLotCG9z3dymA/A0jqRWelH6hSMretErQeI6mGkAQfKiBwE8dacxD6pxTJILeIT4Y13rxqUSY4o/1
	q1Rvm2VmXpJuiuk/xtrKIcbUWye6dkRTtpqvIcIyRZx38ojIXoBwjktRleaoJEgtraLYH5lx53CNy
	lK20jgcpChy0h/25DdBW7d+h/xqO0yG4q3Mnh6pZcnOC4DNUsQ7A5yd7dYkSU+vImhTkeVxbgsqWW
	ddby7IaFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY2gw-0005Le-DM; Mon, 11 May 2020 07:17:34 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY2go-0005Ky-GL
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 07:17:28 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04B78D68004239; Mon, 11 May 2020 09:17:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=7EjOxTddIIOGD46hGzyLSFcZQlrJHNVdlCjYIFYnon4=;
 b=yxOsCse5c5VAFj9hUoZ/WDw5yoX4uYk9bARejnXCNca0T9dxLT/ZukAlETjjliEtMiRC
 v9GOvjRa2bZ0KbgBJeswfSRkCZC+yyIVW5WHWyzxEDIda6A+u+qnK0S9X++1VRTJvQ1p
 wdWuEkRuM9DU0L8SQdLCKnCmqQEL1BOn15XuZduKUAVv5cE9Ew2ddTIt+LvtdcYZa4iU
 xf8MuUntXrTgGc6YHIe+SJ4YyII+uXs3j16vXJb3NsPFhAD5QY71icyWZfxDdIrHjqkR
 7t35lFn/G2nAJI+5iNv7/uuP9/JuqCXFmMYz7EtpTBv7G3rbv1wC1+wMgXehEn/JVxhF qw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30whn98tuc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 11 May 2020 09:17:15 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id AE992100034;
 Mon, 11 May 2020 09:17:11 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 96B222AC585;
 Mon, 11 May 2020 09:17:11 +0200 (CEST)
Received: from lmecxl0912.tpe.st.com (10.75.127.46) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 11 May
 2020 09:17:06 +0200
Subject: Re: [PATCH 2/3] ARM: dts: stm32: enable l3gd20 on stm32429-disco board
To: <dillon.minfei@gmail.com>, <robh+dt@kernel.org>,
 <mcoquelin.stm32@gmail.com>, <broonie@kernel.org>, <p.zabel@pengutronix.de>
References: <1589007503-9523-1-git-send-email-dillon.minfei@gmail.com>
 <1589007503-9523-3-git-send-email-dillon.minfei@gmail.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <404e7f47-9c0f-44b1-aedb-a8d3af832d40@st.com>
Date: Mon, 11 May 2020 09:16:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <1589007503-9523-3-git-send-email-dillon.minfei@gmail.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG8NODE2.st.com (10.75.127.23) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.676
 definitions=2020-05-11_02:2020-05-11,
 2020-05-11 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_001727_015677_A87D6B72 
X-CRM114-Status: GOOD (  17.30  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, dillonhua@gmail.com,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi

On 5/9/20 8:58 AM, dillon.minfei@gmail.com wrote:
> From: dillon min <dillon.minfei@gmail.com>
> 
> Enable l3gd20 on stm32429-disco board.

You could add some words about l3gd20

> 
> Signed-off-by: dillon min <dillon.minfei@gmail.com>
> ---
>   arch/arm/boot/dts/stm32f429-disco.dts | 24 ++++++++++++++++++++++++
>   1 file changed, 24 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/stm32f429-disco.dts b/arch/arm/boot/dts/stm32f429-disco.dts
> index 30c0f67..d365358 100644
> --- a/arch/arm/boot/dts/stm32f429-disco.dts
> +++ b/arch/arm/boot/dts/stm32f429-disco.dts
> @@ -49,6 +49,8 @@
>   #include "stm32f429.dtsi"
>   #include "stm32f429-pinctrl.dtsi"
>   #include <dt-bindings/input/input.h>
> +#include <dt-bindings/interrupt-controller/irq.h>
> +#include <dt-bindings/gpio/gpio.h>
>   
>   / {
>   	model = "STMicroelectronics STM32F429i-DISCO board";
> @@ -127,3 +129,25 @@
>   	pinctrl-names = "default";
>   	status = "okay";
>   };
> +
> +&spi5 {
> +	status = "okay";
> +	pinctrl-0 = <&spi5_pins>;
> +	pinctrl-names = "default";
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +	cs-gpios = <&gpioc 1 GPIO_ACTIVE_LOW>;
> +	dmas = <&dma2 3 2 0x400 0x0>,
> +	       <&dma2 4 2 0x400 0x0>;
> +	dma-names = "rx", "tx";

Insert blank line here.

> +	l3gd20: l3gd20@0 {
> +		compatible = "st,l3gd20-gyro";
> +		spi-max-frequency = <10000000>;
> +		st,drdy-int-pin = <2>;
> +		interrupt-parent = <&gpioa>;
> +		interrupts = <1 IRQ_TYPE_EDGE_RISING>,
> +				<2 IRQ_TYPE_EDGE_RISING>;
> +		reg = <0>;
> +		status = "okay";
> +	};
> +};
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
