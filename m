Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93EC51BD6C5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 10:02:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1D1WhfSCvmvU06EF3dFGdI/KZW7i+AOzxUZ1/fZvJMI=; b=bQhMgLuhYEB1pUrm7TJ00YAD+
	4UpATe0F88XW4Zw5IwmJ1/H7ji4flZtGFobEoXRTFUsLuR5FIFTXMMFmU/u43wBZEc+WAJ4RqhbZd
	eg7xGtfKBH+taJ9MKm1AZXEVwzEqW7+Br61tJGGNZbHOw/x3ihB723eQ3YEzqCX71gW/zpcz3i5/G
	UEEUwgYdRlkR4D+y+JUzPpeWSidh5R35du6cDG0P2GeLsAptKPHIjftQSjw4hNZDxc+HXRASxJzOR
	CeeRMxhxFA1rMNQj8fW/lsHKMNrW7HWK8aUV8qAdpXMejMpFJQ8KEVUjeDFgfE/tHrqzDOsl4VqlM
	oemTQRdRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jThg6-00038X-NB; Wed, 29 Apr 2020 08:02:46 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jThfx-00037q-00
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 08:02:38 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03T82Tc2000920; Wed, 29 Apr 2020 10:02:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=xAKjtR7pf94l044PtIdkC1ZExxD4NPo7DesKo4PrcN0=;
 b=ECJAvqakrfmc6W3Gk6rr/m6ljTZDc5CCcVoECs20CuUENnn9eh2yq74yVHTyJ1Q08jQo
 D0yuJtLf65sJCPYqpssUQc23oDo7FUNBwGEZlJSgmYaP1movHgXD2QnIval1xsMtN7xO
 WzDamNRELBsJNjqQ6HmeRYlwTawwIBAoN//VKGqJhsTLLTMyGq6EqHPKcKlzU+Ep5x/v
 Ujo/MgmnKuVlcAP6nDS9R84FfP4zMui5+Vc14DQu/8Bzk69FREzTp7i5fPsU1o7uLe0h
 D+fqCN7H1CL29MKuYLj8xwWf4PP7NhwjPFCKQORuNK+OcPTLCnqHfcTljeZIRpctsqfL 9w== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30mhjwvwd6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 29 Apr 2020 10:02:33 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 1213410002A;
 Wed, 29 Apr 2020 10:02:31 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 003F1206653;
 Wed, 29 Apr 2020 10:02:30 +0200 (CEST)
Received: from lmecxl0912.tpe.st.com (10.75.127.51) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 29 Apr
 2020 10:02:27 +0200
Subject: Re: [PATCH 6/6] ARM: dts: stm32mp1: Add IoT Box board support
To: <mani@kernel.org>, <robh+dt@kernel.org>, <mcoquelin.stm32@gmail.com>
References: <20200420173124.27416-1-mani@kernel.org>
 <20200420173124.27416-7-mani@kernel.org>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <210a98b3-feea-8faf-316c-d45e1697ea21@st.com>
Date: Wed, 29 Apr 2020 10:02:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200420173124.27416-7-mani@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.75.127.51]
X-ClientProxiedBy: SFHDAG3NODE2.st.com (10.75.127.8) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-29_02:2020-04-28,
 2020-04-29 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_010237_321397_8E3D4779 
X-CRM114-Status: GOOD (  23.47  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mani

On 4/20/20 7:31 PM, mani@kernel.org wrote:
> From: Manivannan Sadhasivam <mani@kernel.org>
> 
> IoT Box is an IoT gateway device based on Stinger96 board powered by
> STM32MP1 SoC, designed and manufactured by Shiratech Solutions. This
> device makes use of Stinger96 board by having it as a base board with
> one additional mezzanine on top.
> 
> Following are the features exposed by this device in addition to the
> Stinger96 board:
> 
> * WiFi/BT
> * CCS811 VOC sensor
> * 2x Digital microphones IM69D130
> * 12x WS2812B LEDs
> 
> Following peripherals are tested and known to work:
> 
> * WiFi/BT
> * CCS811
> 
> More information about this device can be found in Shiratech website:
> https://www.shiratech-solutions.com/products/iot-box/
> 
> Signed-off-by: Manivannan Sadhasivam <mani@kernel.org>
> ---
>   arch/arm/boot/dts/Makefile                |  1 +
>   arch/arm/boot/dts/stm32mp157a-iot-box.dts | 92 +++++++++++++++++++++++
>   2 files changed, 93 insertions(+)
>   create mode 100644 arch/arm/boot/dts/stm32mp157a-iot-box.dts
> 
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index 966b81dfffd6..455ec6eb6303 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -1030,6 +1030,7 @@ dtb-$(CONFIG_ARCH_STM32) += \
>   	stm32h743i-disco.dtb \
>   	stm32mp157a-avenger96.dtb \
>   	stm32mp157a-dk1.dtb \
> +	stm32mp157a-iot-box.dtb \
>   	stm32mp157a-stinger96.dtb \
>   	stm32mp157c-dhcom-pdk2.dtb \
>   	stm32mp157c-dk2.dtb \
> diff --git a/arch/arm/boot/dts/stm32mp157a-iot-box.dts b/arch/arm/boot/dts/stm32mp157a-iot-box.dts
> new file mode 100644
> index 000000000000..fa1c006ce531
> --- /dev/null
> +++ b/arch/arm/boot/dts/stm32mp157a-iot-box.dts
> @@ -0,0 +1,92 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (C) 2020 Manivannan Sadhasivam
> + */
> +
> +/dts-v1/;
> +#include "stm32mp157a-stinger96.dtsi"
> +
> +/ {
> +	model = "Shiratech STM32MP157A IoT Box";
> +	compatible = "shiratech,stm32mp157a-iot-box", "st,stm32mp157";
> +
> +	wlan_pwr: regulator-wlan {
> +		compatible = "regulator-fixed";
> +
> +		regulator-name = "wl-reg";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +
> +		gpios = <&gpiog 3 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +	};
> +};
> +
> +&i2c2 {
> +	ccs811@5b {
> +		compatible = "ams,ccs811";
> +		reg = <0x5b>;
> +		wakeup-gpios = <&gpioa 12 GPIO_ACTIVE_LOW>;
> +		reset-gpios = <&gpioa 11 GPIO_ACTIVE_LOW>;
> +	};
> +};
> +
> +&pinctrl {

Currently all pinmux definition are done in stm32mp15-pinctrl.dtsi file.
Can you move it ?

Otherwise (except commit title) it is ok for me.

thanks
alex

> +	/*
> +	 * Note: The SDMMC2 pins lack external pullups on data lines. Hence,
> +	 * we need to enable it in the SoC.
> +	 */
> +	sdmmc2_b4_pins_pull: sdmmc2-b4-pull {
> +		pins1 {
> +			pinmux = <STM32_PINMUX('B', 14, AF9)>, /* SDMMC2_D0 */
> +				 <STM32_PINMUX('B', 15, AF9)>, /* SDMMC2_D1 */
> +				 <STM32_PINMUX('B', 3, AF9)>, /* SDMMC2_D2 */
> +				 <STM32_PINMUX('B', 4, AF9)>, /* SDMMC2_D3 */
> +				 <STM32_PINMUX('G', 6, AF10)>; /* SDMMC2_CMD */
> +			slew-rate = <1>;
> +			bias-pull-up;
> +		};
> +		pins2 {
> +			pinmux = <STM32_PINMUX('E', 3, AF9)>; /* SDMMC2_CK */
> +			slew-rate = <2>;
> +			drive-push-pull;
> +			bias-disable;
> +		};
> +	};
> +};
> +
> +/* WiFi */
> +&sdmmc2 {
> +	pinctrl-names = "default", "opendrain", "sleep";
> +	pinctrl-0 = <&sdmmc2_b4_pins_pull>;
> +	pinctrl-1 = <&sdmmc2_b4_od_pins_b>;
> +	pinctrl-2 = <&sdmmc2_b4_sleep_pins_a>;
> +	broken-cd;
> +	non-removable;
> +	st,neg-edge;
> +	bus-width = <1>;
> +	vmmc-supply = <&wlan_pwr>;
> +	status = "okay";
> +
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +	brcmf: bcrmf@1 {
> +		reg = <1>;
> +		compatible = "brcm,bcm4329-fmac";
> +	};
> +};
> +
> +/* Bluetooth */
> +&uart4 {
> +	/* Note: HW flow control is broken, hence using custom CTS/RTS gpios */
> +	/delete-property/st,hw-flow-ctrl;
> +	cts-gpios = <&gpioa 15 GPIO_ACTIVE_LOW>;
> +	rts-gpios = <&gpiob 0 GPIO_ACTIVE_LOW>;
> +	status = "okay";
> +
> +	bluetooth {
> +		shutdown-gpios = <&gpiog 2 GPIO_ACTIVE_HIGH>;
> +		compatible = "brcm,bcm43438-bt";
> +		max-speed = <115200>;
> +	};
> +};
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
